<?php
/*
 *   TTM is a web application to manage data collected by community organizations.
 *   Copyright (C) 2014, 2015  Local Initiatives Support Corporation (lisc.org)
 *
 *   This program is free software: you can redistribute it and/or modify
 *   it under the terms of the GNU Affero General Public License as published by
 *   the Free Software Foundation, either version 3 of the License, or
 *   (at your option) any later version.
 *
 *   This program is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *   GNU Affero General Public License for more details.
 *
 *   You should have received a copy of the GNU Affero General Public License
 *   along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/
?>
<?php
include $_SERVER['DOCUMENT_ROOT'] . "/include/dbconnopen.php";
include $_SERVER['DOCUMENT_ROOT'] . "/core/include/setup_user.php";

user_enforce_has_access($Bickerdike_id, $DataEntryAccess);

/*
 * Add new store information.
 * Add sales data and a date for a certain corner store (uses corner store ID, which is
 * dependent on another table).
 */
include "../include/dbconnopen.php";
$store_sqlsafe=mysqli_real_escape_string($cnnBickerdike, $_POST['store']);
$date_sqlsafe=mysqli_real_escape_string($cnnBickerdike, $_POST['date']);
$money_sqlsafe=mysqli_real_escape_string($cnnBickerdike, $_POST['money']);

$add_sales_data = "INSERT INTO Funded_Organization_Records_Stores (Store_ID, Date, Sales_Data) VALUES
                    ('" . $store_sqlsafe ."',
                     '" . $date_sqlsafe . "',
                     '" . $money_sqlsafe . "')";
echo $add_sales_data;
include "../include/dbconnopen.php";
mysqli_query($cnnBickerdike, $add_sales_data);
include "../include/dbconnclose.php";
?>
