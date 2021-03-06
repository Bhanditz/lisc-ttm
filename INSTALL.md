TTM Installation
================

Table of contents:

 * Introduction
 * Requirements
 * Installation
 
Note: You should consider looking in ansible/README.org for a more
"automated" deployment-for-hacking setup.  The more manual steps (also
usable for deploying to a server, since we aren't *yet* using ansible
for that) below.

Introduction
------------

TBD.  Note these instructions assume Debian GNU/Linux 7.0.

Requirements 
-------------

TTM's dependencies are pretty simple:

 * GNU/Linux or similar operating system
 * PHP 5.3 or higher
 * MySQL 5.0.15 or higher (<http://www.mysql.com/>
   We have not tested with a drop-in replacement such as MariaDB
   <https://mariadb.org/> but would be interested to know if it works.
   We'd also like to know if you get TTM running on PostgreSQL.
 * Apache HTTPD 2.0 or higher
 * OpenSSL

Installation
------------

We assume that a GNU/Linux server with LAMP stack is installed.
See https://wiki.debian.org/LaMp.

The following assumptions are also made about the installation:

 * The webroot is `/var/www/ttm`.
   (It could be somewhere else; `/var/www/ttm` is just the location
   we use in these instructions.)

Steps to install:

1.  Make sure the right ports are open on your server.

    Ports 80 and 443 will need to be opened.  If you plan to SSH in to
    the server to do the rest of this installation, you'll also need
    port 22 open for SSH.

    (Note that if you're deploying on Amazon Web Services, port 22 may
    not be open by default; you would typically open it up via the AWS
    security group.)

2.  Ensure you have the necessary dependencies installed.

    On Debian GNU/Linux 7.0 distribution as of 2014-05-27, that looks
    like this:

        $ sudo apt-get update
        $ sudo apt-get install mysql-server mysql-client
        $ sudo apt-get install apache2 apache2-doc
        $ sudo apt-get install openssl
        $ sudo apt-get install git
        $ sudo apt-get install php5 php5-mysql libapache2-mod-php5

3.  Download the latest version of the TTM code:
   
        $ git clone https://github.com/OpenTechStrategies/lisc-ttm.git ttm

4.  Configure Apache to serve the site.

    Define an httpd configuration block for the site like this:

        <VirtualHost *:443>
          ServerName ttm.example.com:443
          ServerAdmin ttmadmin@example.com
          
          # Just a serving suggestion -- you can put it wherever you want:
          DocumentRoot "/var/www/ttm"
          
          # Log format is also up to you:
          LogFormat "%h %l %u %t \"%r\" %>s %b" common
          LogFormat "%{Referer}i -> %U" referer
          LogFormat "%{User-agent}i" agent
          CustomLog ${APACHE_LOG_DIR}/ttm_access.log common
          ErrorLog ${APACHE_LOG_DIR}/ttm_error.log
          LogLevel warn
          # Further log customization that apparently some sites use:
          # CustomLog "${APACHE_LOG_DIR}/ssl_request_log" \
          #           "%t %h %{SSL_PROTOCOL}x %{SSL_CIPHER}x \"%r\" %b"
          
          SSLEngine on
          
          # You'll need to adjust these for your cert details, of course:
          SSLCertificateFile "/etc/ssl/certs/local/ttm/ttm_example_com.crt"
          SSLCertificateKeyFile "/etc/ssl/certs/local/ttm/ttm.example.com.key"
          SSLCertificateChainFile "/etc/ssl/certs/local/ttm/DigiCertCA.crt"
          
          # Disable directory indexes.  One example is no one should
          # be able to see a list of files in an export directory.
          <Directory /var/www/ttm>
            Options -Indexes
          </Directory>

          <FilesMatch "\.(cgi|shtml|phtml|php)$">
              SSLOptions +StdEnvVars
          </FilesMatch>
          
          BrowserMatch "MSIE [2-5]" \
                   nokeepalive ssl-unclean-shutdown \
                   downgrade-1.0 force-response-1.0
          # Assuming your DocumentRoot is "/var/www/ttm", you should
          # add your robots.txt alias there for each VirtualHost
          Alias /robots.txt /var/www/ttm/robots.txt
        </VirtualHost>
          
        # Redirect port 80 plain http:// traffic to port 443 https://.
        <VirtualHost *:80>
           RewriteEngine On
           RewriteCond %{HTTPS} off
           RewriteRule ^/(.*) https://%{HTTP_HOST}/$1 [NC,R,L]
           ## Doing it the way below didn't work for some reason.  Pages
           ## like "http://ttm.example.com/include/add_staff.php" would
           ## redirect to the corresponding "https://" properly, but the
           ## root page "http://ttm.example.com/" (with or without trailing
           ## slash) did not redirect -- instead it served up the default
           ## apache2 "It works!" web page.
           #
           # ServerName ttm.example.com
           # Redirect permanent / https://ttm.example.com/
           # Assuming your DocumentRoot is "/var/www/ttm", you should
           # add your robots.txt alias there for each VirtualHost
           Alias /robots.txt /var/www/ttm/robots.txt
        </VirtualHost>

    On Debian, the standard is to put that in a file named (e.g.)
    `/etc/apache2/sites-available/ttm.conf`, and then install it like
    this:

        $ cd /etc/apache2/sites-enabled/
        $ sudo rm 000-default  # old default site not interesting to us now
        $ sudo ln -s ../sites-available/ttm.conf 000-ttm.conf

    Make sure that the appropriate Apache2 PHP modules are enabled, by
    creating symlinks as needed to achieve results like these:

        $ cd /etc/apache2/
        $ ls -l mods-enabled/php*
        (output trimmed on the left for brevity)
        mods-enabled/php5.conf -> ../mods-available/php5.conf
        mods-enabled/php5.load -> ../mods-available/php5.load
        $ ls -l mods-enabled/ssl*
        mods-enabled/ssl.conf -> ../mods-available/ssl.conf
        mods-enabled/ssl.load -> ../mods-available/ssl.load
        $ ls -l mods-enabled/rewrite*
        mods-enabled/rewrite.load -> ../mods-available/rewrite.load

        ### You may or may not need to enable the following too: ###
        mods-enabled/php5_cgi.conf -> ../mods-available/php5_cgi.conf
        mods-enabled/php5_cgi.load -> ../mods-available/php5_cgi.load
        mods-enabled/socache_dbm.load -> ../mods-available/socache_dbm.load
        mods-enabled/socache_memcache.load -> ../mods-available/socache_memcache.load
        mods-enabled/socache_shmcb.load -> ../mods-available/socache_shmcb.load

    Finally, don't forget to restart Apache:

        $ sudo service apache2 restart

5.  Load the MySQL stored procedures:

        $ cd /var/www/ttm
        $ for name in core bickerdike enlace lsna swop trp; do        \
            mysql -u root -p < ${name}/sql/ttm-${name}_routines.sql;  \
          done

6.  Set up authentication / authorization for the MySQL databases. These users will be used for executing the SQL stored procedures:

        $ mysql -u root -p
        Password: ********
        mysql> grant all on `ttm-core`.* to ttmcorerw@localhost             \
               identified by 'PASSWORD';
        mysql> grant all on `ttm-lsna`.* to ttmlsnarw@localhost             \
               identified by 'PASSWORD';
        mysql> grant all on `ttm-swop`.* to ttmswoprw@localhost             \
               identified by 'PASSWORD';
        mysql> grant all on `ttm-bickerdike`.* to ttmbickerdikerw@localhost \
               identified by 'PASSWORD';
        mysql> grant all on `ttm-trp`.* to ttmtrprw@localhost               \
               identified by 'PASSWORD';
        mysql> grant all on `ttm-enlace`.* to ttmenlacerw@localhost         \
               identified by 'PASSWORD';
        mysql> quit;
        $ 

7.  Put the database passwords you entered in step 5 and the database server name, 
    database names, and usernames from step 6 into the web tree, by first 
    copying `dbconnopen.php.tmpl` to `dbconnopen.php` in the appropriate places, 
    and then editing each of the new files:

        $ cd /var/www/ttm
        $ for name in `find . -name dbconnopen.php.tmpl`; do         \
            cp ${name} `dirname ${name}`/`basename ${name} .tmpl`;   \
            ${EDITOR} `dirname ${name}`/`basename ${name} .tmpl`;    \  
          done
        $

8. Make sure the export data directories are writeable by the web
   server.  The `chown` step below is probably redundant, because
   presumably you installed the web tree with ownership by the web
   server user anyway, but the `chmod` may be important:

        $ for name in                             \
            bickerdike/data/downloads             \
            enlace/reports/export_container       \
            lsna/reports/export_data              \
            swop/reports/downloads                \
            swop/reports/export_holder            \
            trp/reports/data                      \
          ;                                       \
          do                                      \
            chown www-data.www-data ${name};      \
            chmod ug+rwx ${name};                 \
          done

9. Load the sample data (or live data, if you have it).  Either:

        $ mysql -u root -p < data/lisc-ttm-sample-data.sql

   or:

        $ for name in core bickerdike enlace lsna swop trp; do        \
             mysql -u root -p ttm-${name} < ttm-${name}-backup-*.sql; \
          done
 
10. Verify that your site is set up correctly by logging into the site
    using either:

        Username: admin 
        Password: password 
 
    or one of the other usernames and passwords documented in:

        [where should this be documented?]

11. Set up backups.  Read `maintenance/backup-ttm.tmpl`, then run
   `maintenance/make-backup-script` to create a backup script that is
   customized for your site.
