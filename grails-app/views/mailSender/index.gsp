<%--
  Created by IntelliJ IDEA.
  User: adriana
  Date: 2/23/14
  Time: 3:56 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <script src="http://d3js.org/d3.v3.min.js" charset="utf-8"></script>

    <title></title>
</head>

<body>
<style>

.chart div {
    font: 10px sans-serif;
    background-color: steelblue;
    text-align: right;
    padding: 3px;
    margin: 1px;
    color: white;
}

</style>
<div class="chart"></div>
<script>
    var data = [4, 8, 15, 16, 23, 42];

    var x = d3.scale.linear()
            .domain([0, d3.max(data)])
            .range([0, 420]);

    d3.select(".chart")
            .selectAll("div")
            .data(data)
            .enter().append("div")
            .style("width", function(d) { return x(d) + "px"; })
            .text(function(d) { return d; });
</script>

</body>
</html>