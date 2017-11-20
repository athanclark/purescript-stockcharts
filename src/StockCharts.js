"use strict";

var stockCharts = require('react-stockcharts');
var axes = require('react-stockcharts/lib/axes');


exports.chartCanvasImpl = stockCharts.ChartCanvas;
exports.chartImpl = stockCharts.Chart;
exports.xAxisImpl = axes.xAxis;
exports.yAxisImpl = axes.yAxis;
