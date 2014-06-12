
<script language="javascript" type="text/javascript" src="/include/jquery.jqplot.1.0.4r1121/jquery.min.js"></script>
<script language="javascript" type="text/javascript" src="/include/jquery.jqplot.1.0.4r1121/jquery.jqplot.min.js"></script>
<link rel="stylesheet" type="text/css" href="/include/jquery.jqplot.1.0.4r1121/jquery.jqplot.css" />
<script type="text/javascript" src="/include/jquery.jqplot.1.0.4r1121/plugins/jqplot.barRenderer.min.js"></script>
<script type="text/javascript" src="/include/jquery.jqplot.1.0.4r1121/plugins/jqplot.categoryAxisRenderer.min.js"></script>
<script type="text/javascript" src="/include/jquery.jqplot.1.0.4r1121/plugins/jqplot.pointLabels.min.js"></script>

<script type="text/javascript">
$(document).ready(function(){
    var s2 = [[1,4], [5,5], [3,4], [4,90], [5,7], [6,60], [7,1], [8,5], [9,60], [10,3], [11,1], [12,0], [13,1], [14,1], [15,1]];
    var s3 = [4, 5, 4, 90, 7, 60, 1, 5, 60, 3, 1, 0, 1, 1, 1];
   // var answers3 = [{"1":"2","2":"6","3":"2","4":"2","5":"5","6":"4","7":"3","8":"1","9":"1","10":"3","11":"6"}];
    var answers2=[[1, 1],[2, 4],[3, 2],[4, 2],[5, 0],[6, 1],[7, 0],[8, 1]];
//    var ticks = ['How important is diet and nutrition to you personally?', 'How many servings of fruits and vegetables do you eat in an average day?',
//    'How many days per week do you do strenuous physical activity for at least 10 minutes at a time?', 'How many hours on those days?',
//    'How many days per week do you do light to moderate physical activity for at least 10 minutes at a time?'];
    var ticks = ['May', 'June', 'July']
    // For horizontal bar charts, x an y values must will be "flipped"
    // from their vertical bar counterpart.
    var plot2 = $.jqplot('chart2', [answers2],
//    [[[2,1], [4,2], [6,3], [3,4]], 
//        [[5,1], [1,2], [3,3], [4,4]], 
//        [[4,1], [7,2], [1,3], [2,4]]], 
    {
        
        seriesDefaults: {
            renderer:$.jqplot.BarRenderer,
            // Show point labels to the right ('e'ast) of each bar.
            // edgeTolerance of -15 allows labels flow outside the grid
            // up to 15 pixels.  If they flow out more than that, they 
            // will be hidden.
            pointLabels: { show: true, location: 'e', edgeTolerance: -15 },
            // Rotate the bar shadow as if bar is lit from top right.
            shadowAngle: 135,
            // Here's where we tell the chart it is oriented horizontally.
            rendererOptions: {
                barDirection: 'vertical',
                barMargin: 10,
                barWidth: 15
            }
        },
        axes: {
            xaxis: {
                renderer: $.jqplot.CategoryAxisRenderer
            }
        }
    });
});
</script>
<div id="chart2"></div>