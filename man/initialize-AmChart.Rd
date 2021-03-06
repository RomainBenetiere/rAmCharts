% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/AmChart.R, R/AmChart_constructors.R, R/AmChart_setters.R
\docType{methods}
\name{initialize,AmChart-method}
\alias{addArrow}
\alias{addArrow,AmChart,GaugeArrowOrMissing-method}
\alias{addAxe}
\alias{addAxe,AmChart,GaugeAxisOrMissing-method}
\alias{addGraph}
\alias{addGraph,AmChart,AmGraphOrMissing-method}
\alias{addGuide,AmChart,GuideOrMissing-method}
\alias{addLabel}
\alias{addLabel,AmChart,LabelOrMissing-method}
\alias{addSegment}
\alias{addSegment,AmChart,numeric-method}
\alias{addSubData}
\alias{addSubData,AmChart,numeric,data.frame-method}
\alias{addTitle}
\alias{addTitle,AmChart,TitleOrMissing-method}
\alias{addTrendLine}
\alias{addTrendLine,AmChart,TrendLineOrMissing-method}
\alias{addValueAxes}
\alias{addValueAxes,AmChart,ValueAxisOrMissing-method}
\alias{amAngularGaugeChart}
\alias{amChart}
\alias{amFunnelChart}
\alias{amGanttChart}
\alias{amPieChart}
\alias{amRadarChart}
\alias{amSerialChart}
\alias{amXYChart}
\alias{initialize,AmChart-method}
\alias{setAllLabels}
\alias{setAllLabels,AmChart,list-method}
\alias{setArrows}
\alias{setArrows,AmChart-method}
\alias{setAxes}
\alias{setAxes,AmChart,list-method}
\alias{setBalloon,AmChart,AmBalloonOrMissing-method}
\alias{setCategoryAxis}
\alias{setCategoryAxis,AmChart-method}
\alias{setCategoryField}
\alias{setCategoryField,AmChart,character-method}
\alias{setChartCursor}
\alias{setChartCursor,AmChart,ChartCursorOrMissing-method}
\alias{setChartScrollbar}
\alias{setChartScrollbar,AmChart,ChartScrollbarOrMissing-method}
\alias{setCreditsPosition}
\alias{setCreditsPosition,AmChart,character-method}
\alias{setDataProvider,AmChart,data.frame,logicalOrMissing-method}
\alias{setExport}
\alias{setExport,AmChart-method}
\alias{setGraph,AmChart,AmGraphOrMissing-method}
\alias{setGraphs}
\alias{setGraphs,AmChart,list-method}
\alias{setGuides}
\alias{setGuides,AmChart,list-method}
\alias{setLegend}
\alias{setLegend,AmChart,AmLegendOrMissing-method}
\alias{setSubChartProperties}
\alias{setSubChartProperties,AmChart-method}
\alias{setTitles}
\alias{setTitles,AmChart,list-method}
\alias{setTrendLines}
\alias{setTrendLines,AmChart,list-method}
\alias{setType,AmChart,character-method}
\alias{setValueAxes}
\alias{setValueAxes,AmChart,list-method}
\alias{setValueAxis,AmChart,ValueAxisOrMissing-method}
\title{Create an AmChart}
\usage{
\S4method{initialize}{AmChart}(.Object, allLabels, arrows, axes, balloon,
  categoryAxis, categoryField, chartCursor, chartScrollbar, creditsPosition,
  dataProvider, graphs, graph, guides, legend, segmentsField, theme, titles,
  trendLines, type, valueAxes, valueAxis, ...)

amChart(allLabels, arrows, axes, balloon, categoryAxis, categoryField,
  chartCursor, chartScrollbar, creditsPosition, dataProvider, graph, graphs,
  guides, legend, segmentsField, theme, titles, trendLines, type, valueAxes,
  valueAxis, ...)

amAngularGaugeChart(arrows, titles, axes, ...)

amFunnelChart(dataProvider, ...)

amRadarChart(allLabels, balloon, categoryField, creditsPosition, dataProvider,
  graphs, guides, legend, titles, valueAxes, ...)

amSerialChart(allLabels, balloon, categoryAxis, categoryField, chartCursor,
  chartScrollbar, creditsPosition, dataProvider, graphs, guides, legend, titles,
  trendLines, valueAxes, ...)

amPieChart(allLabels, balloon, creditsPosition, dataProvider, legend, titles,
  ...)

amGanttChart(categoryField, dataProvider, graph, segmentsField, valueAxis, ...)

amXYChart(creditsPosition, dataProvider, graphs, ...)

setAllLabels(.Object, allLabels)

\S4method{setAllLabels}{AmChart,list}(.Object, allLabels)

addLabel(.Object, label = NULL, ...)

\S4method{addLabel}{AmChart,LabelOrMissing}(.Object, label = NULL, ...)

setArrows(.Object, arrows = NULL)

\S4method{setArrows}{AmChart}(.Object, arrows = NULL)

addArrow(.Object, arrow = NULL, ...)

\S4method{addArrow}{AmChart,GaugeArrowOrMissing}(.Object, arrow = NULL, ...)

setAxes(.Object, axes, ...)

\S4method{setAxes}{AmChart,list}(.Object, axes)

addAxe(.Object, axe = NULL, ...)

\S4method{addAxe}{AmChart,GaugeAxisOrMissing}(.Object, axe = NULL, ...)

\S4method{setBalloon}{AmChart,AmBalloonOrMissing}(.Object, amBalloon = NULL,
  ...)

setCategoryAxis(.Object, categoryAxis = NULL, ...)

\S4method{setCategoryAxis}{AmChart}(.Object, categoryAxis = NULL, ...)

setCategoryField(.Object, categoryField)

\S4method{setCategoryField}{AmChart,character}(.Object, categoryField)

setChartCursor(.Object, chartCursor = NULL, ...)

\S4method{setChartCursor}{AmChart,ChartCursorOrMissing}(.Object,
  chartCursor = NULL, ...)

setChartScrollbar(.Object, chartScrollbar = NULL, ...)

\S4method{setChartScrollbar}{AmChart,ChartScrollbarOrMissing}(.Object,
  chartScrollbar = NULL, ...)

setCreditsPosition(.Object, creditsPosition)

\S4method{setCreditsPosition}{AmChart,character}(.Object, creditsPosition)

\S4method{setDataProvider}{AmChart,data.frame,logicalOrMissing}(.Object,
  dataProvider, keepNA = TRUE)

setExport(.Object, enabled = TRUE, ...)

\S4method{setExport}{AmChart}(.Object, enabled = TRUE, ...)

setGraphs(.Object, graphs)

\S4method{setGraphs}{AmChart,list}(.Object, graphs)

addGraph(.Object, amGraph = NULL, ...)

\S4method{addGraph}{AmChart,AmGraphOrMissing}(.Object, amGraph = NULL, ...)

\S4method{setGraph}{AmChart,AmGraphOrMissing}(.Object, graph = NULL, ...)

setGuides(.Object, guides)

\S4method{setGuides}{AmChart,list}(.Object, guides)

\S4method{addGuide}{AmChart,GuideOrMissing}(.Object, guide = NULL, ...)

setLegend(.Object, amLegend = NULL, ...)

\S4method{setLegend}{AmChart,AmLegendOrMissing}(.Object, amLegend = NULL, ...)

addSegment(.Object, categoryIDs, sgts)

\S4method{addSegment}{AmChart,numeric}(.Object, categoryIDs, sgts)

addSubData(.Object, categoryIDs, data)

\S4method{addSubData}{AmChart,numeric,data.frame}(.Object, categoryIDs, data)

setSubChartProperties(.Object, .subObject = NULL, ...)

\S4method{setSubChartProperties}{AmChart}(.Object, .subObject = NULL, ...)

setTitles(.Object, titles)

\S4method{setTitles}{AmChart,list}(.Object, titles)

addTitle(.Object, title = NULL, ...)

\S4method{addTitle}{AmChart,TitleOrMissing}(.Object, title = NULL, ...)

setTrendLines(.Object, trendLines)

\S4method{setTrendLines}{AmChart,list}(.Object, trendLines)

addTrendLine(.Object, trendLine = NULL, ...)

\S4method{addTrendLine}{AmChart,TrendLineOrMissing}(.Object, trendLine = NULL,
  ...)

\S4method{setType}{AmChart,character}(.Object, type)

setValueAxes(.Object, valueAxes)

\S4method{setValueAxes}{AmChart,list}(.Object, valueAxes)

addValueAxes(.Object, valueAxis = NULL, ...)

\S4method{addValueAxes}{AmChart,ValueAxisOrMissing}(.Object, valueAxis = NULL,
  ...)

\S4method{setValueAxis}{AmChart,ValueAxisOrMissing}(.Object, valueAxis = NULL,
  ...)
}
\arguments{
\item{.Object}{\linkS4class{AmChart}.}

\item{allLabels}{\code{list} of \linkS4class{Label}.
Example of label object, with all possible properties:
label(x = 20, y = 20, text = "this is label", align = "left", size = 12, color = "#CC0000",
      alpha = 1, rotation = 0, bold = TRUE, url = "http=//www.amcharts.com")
Run \code{api("Label")} for more information.}

\item{arrows}{\code{list} of \linkS4class{GaugeArrow}. Only valid for gauge charts.
Run \code{api("GaugeArrow")} for more information.}

\item{axes}{\code{list} of \linkS4class{GaugeAxis} properties.
Only valid for gauge charts.
Run \code{api("GaugeAxis")} for more information.}

\item{balloon}{\linkS4class{AmBalloon}.
Creates the balloons (tooltips) of the chart,
It follows the mouse cursor when you roll-over the data items.
The framework generates the instances automatically you only need to adjust
the appearance to your needs.
Run \code{api("AmBalloon")} for more information.}

\item{categoryAxis}{\linkS4class{CategoryAxis}.
Read-only. Chart creates category axis itself.
If you want to change some properties,
you should get this axis from the chart and set properties to this object.}

\item{categoryField}{\code{character}.
Category field name tells the chart the name of the field in your dataProvider object
which will be used for category axis values.}

\item{chartCursor}{\linkS4class{ChartCursor}.
Cursor of a chart.
Run \code{api("ChartCursor")} for more information.}

\item{chartScrollbar}{\linkS4class{ChartScrollbar}.
Chart's scrollbar.
Run \code{api("ChartScrollbar")} for more information.}

\item{creditsPosition}{\code{character},
specifying position of link to amCharts site.
Allowed values are: "top-left", "top-right", "bottom-left" and "bottom-right".}

\item{dataProvider}{\code{data.frame}, containing the data.}

\item{graphs}{\code{list} of \linkS4class{AmGraph}.
Creates the visualization of the data in following types: line, column, step line,
smoothed line, olhc and candlestick.}

\item{graph}{\linkS4class{AmGraph}.
Only valid for Gantt charts.
Gant chart actually creates multiple graphs (separate for each segment).
Properties of this graph are passed to each of the created graphs
- this allows you to control the look of segments.
Run \code{api("AmGraph")} for more information.}

\item{guides}{\code{list} of \linkS4class{Guide}.
Instead of adding guides to the axes, you can push all of them to this array.
In case guide has category or date defined, it will automatically will be assigned to the category axis.
Otherwise to first value axis, unless you specify a different valueAxes for the guide.
Run \code{api("Guide")} for more information.}

\item{legend}{\linkS4class{AmLegend}.
Legend of a chart.
Run \code{api("AmLegend")} for more information.}

\item{segmentsField}{\code{character}.
Segments field in your data provider.
Only valid for Gantt Charts.}

\item{theme}{\code{character}.
Theme of a chart. Config files of themes can be found in amcharts/themes/ folder.
See \url{http://www.amcharts.com/tutorials/working-with-themes/}.}

\item{titles}{\code{list} of \linkS4class{Title}.
Run \code{api("Title")} for more information.}

\item{trendLines}{\code{list} of \linkS4class{TrendLine} objects added to a chart.
You can add trend lines to a chart using this list or access already existing trend lines.}

\item{type}{\code{character}.
Possible types are: "serial", "pie", "radar", "xy", "radar", "funnel", "gauge", "stock".
See details about using argument type.
(type map is in development).}

\item{valueAxes}{\code{list} of \linkS4class{ValueAxis}.
Chart creates one value axis automatically,
so if you need only one value axis, you don't need to create it.
Run \code{api("ValueAxis")} for more information.}

\item{valueAxis}{\linkS4class{ValueAxis}.
Only valid for Gantt Charts.
Set it's type to "date" if your data is date or time based.}

\item{...}{In case of constructor \code{new("AmChart")} or \code{amChart()}
Dots represent other properties to set to the \linkS4class{AmChart} object.
See \url{http://docs.amcharts.com/3/javascriptstockchart/AmChart}.
In case of setters, dots represent properties of the object to add.
See examples.}

\item{label}{(optional) \linkS4class{Label}.
Argument of method \code{addLabel}.}

\item{arrow}{(optional) \linkS4class{GaugeArrow}.
Argument of method \code{addArrow}.}

\item{axe}{(optional) \linkS4class{GaugeAxis}.
Argument of method \code{addAxe}.}

\item{amBalloon}{\linkS4class{AmBalloon}, argument of method 'setBalloon'.}

\item{keepNA}{object of class \code{logical}, default \code{TRUE}.
Indicates if \code{NULL} values have to be kept or ignored.}

\item{enabled}{\code{logical}, default \code{TRUE}.
Should the export button be shown ?}

\item{amGraph}{(optional) \linkS4class{AmGraph}.}

\item{guide}{(optional) \linkS4class{Guide}.
Argument of method \code{addGuide}.}

\item{amLegend}{(optional) \linkS4class{AmLegend}.}

\item{categoryIDs}{\code{numeric}, see details.}

\item{sgts}{\code{data.frame}
( or \code{list} of \code{data.frame} for multiple add ).}

\item{data}{\code{data.frame}. Data to draw at the second level,
after clicking on the column.}

\item{.subObject}{\linkS4class{AmChart}.}

\item{title}{(optional) \linkS4class{Title}, argument of method \code{addTitle}.}

\item{trendLine}{(optional) \linkS4class{TrendLine}.
Argument of method \code{addTrendLine}.}
}
\value{
(updated) \linkS4class{AmChart} with given properties.
}
\description{
Method for initializing any S4 class provided by the package.

Add subData for drilldrown
}
\details{
amAngularGaugeChart is a shortcut for instantiating AmChart of type \code{gauge}

amFunnelChart is a shortcut
for instantiating AmChart of type \code{funnel}

amRadarChart is a shortcut
for instantiating AmChart of type \code{radar}

amSerialChart is a shortcut constructor
for instantiating AmChart of type \code{serial}

amPieChart is a shortcut constructor
for instantiating AmChart of type \code{pie}

amGanttChart is a constructor
for instantiating AmChart of type \code{gantt}

amXYChart is a shortcut constructor
for instantiating AmChart of type \code{xy}

Method \code{setGraph} is only valid for Gantt Charts.

'addSubData' allows to add subdata for a chart with drilldown.
In this case, categoryIDs indicates corresponding indice(s)
of the \code{dataProvider} where to add the data.

For method \code{addValueAxes}: valueAxis is optional.

Method \code{setValueAxis} is only valid for Gantt charts.
}
\section{Functions}{
\itemize{
\item \code{amChart}: 

\item \code{amAngularGaugeChart}: 

\item \code{amFunnelChart}: 

\item \code{amRadarChart}: 

\item \code{amSerialChart}: 

\item \code{amPieChart}: 

\item \code{amGanttChart}: 

\item \code{amXYChart}: 
}}
\examples{
new("AmChart", valueField = "value")
amChart(type = "pie")
amAngularGaugeChart()
amFunnelChart(marginLeft = 15)
amRadarChart()
amSerialChart(creditsPostion = "top-right")
amPieChart()
amGanttChart(segmentsField = "segments")
amXYChart()
allLabels <- list(label(text = "balloonText"), label(text = "column"))
print(setAllLabels(.Object = amSerialChart(), allLabels = allLabels))
# equivalent to:
print(amSerialChart(allLabels = allLabels))
# ---
print(addLabel(.Object = amSerialChart(), text = "balloonText"))
# equivalent to:
label_obj <- label(text = "balloonText")
print(addLabel(.Object = amSerialChart(), label = label_obj))
\dontrun{
# Error use cases:
 addLabel(.Object = amChart())
 addLabel(.Object = amChart(), label = "another class")
}
# ---
arrows_ls <- list(gaugeArrow(value = 130), gaugeArrow(value = 150) )
print(setArrows(.Object = amAngularGaugeChart(), arrows = arrows_ls))
# equivalent to:
print(amAngularGaugeChart(arrows = arrows_ls))
# ---
print(addArrow(.Object = amAngularGaugeChart(), value = 10))
# equivalent to:
gaugeArrow_obj <- gaugeArrow(value = 10)
print(addArrow(.Object = amAngularGaugeChart(), arrow = gaugeArrow_obj))
\dontrun{
# Error use cases:
addArrow(.Object = amAngularGaugeChart())
addArrow(.Object = amAngularGaugeChart(), arrow = "error")
}
# ---
axes_ls <- list(gaugeAxis(value = 130), gaugeAxis(value = 150))
setAxes(.Object = amAngularGaugeChart(), axes = axes_ls)
# equivalent to:
amChart(axes = axes_ls)
# ---
print(addAxe(.Object = amAngularGaugeChart(), startValue = 0, enValue = 100, valueInterval = 10))
# equivalent to:
gaugeAxis_obj <- gaugeAxis(startValue = 0, enValue = 100, valueInterval = 10)
print(addAxe(.Object = amAngularGaugeChart(), axe = gaugeAxis_obj))
\dontrun{
# Error use cases:
addAxe(.Object = amAngularGaugeChart())
addAxe(.Object = amAngularGaugeChart(), axe = "error")
}
# ---
print(setBalloon(.Object = amSerialChart(), adjustBorderColor = TRUE, fillColor = "#FFFFFF",
                 color = "#000000", cornerRadius = 5))
# equivalent to:
amBalloon_obj <- amBalloon(adjustBorderColor = TRUE, fillColor = "#FFFFFF",
                           color = "#000000", cornerRadius = 5)
print(setBalloon(.Object = amSerialChart(), amBalloon = amBalloon_obj))
\dontrun{
# Error use cases:
setBalloon(.Object = amSerialChart())
setBalloon(.Object = amSerialChart(), amBalloon = "error")
}
# ---
print(setCategoryAxis(.Object = amSerialChart(), gridPosition = "start"))
# equivalent to:
categoryAxis_obj <- categoryAxis(gridPosition = "start")
print(setCategoryAxis(.Object = amSerialChart(), categoryAxis = categoryAxis_obj))
\dontrun{
# The argument categoryAxis must be an object of class CategoryAxis
setCategoryAxis(.Object = amSerialChart(), categoryAxis = "error")
}
# ---
print(setCategoryField(.Object = amSerialChart(), categoryField = "country"))
# with default value, nor argument needed
print(setChartCursor(.Object = amSerialChart()))
# other example
print(setChartCursor(.Object = amSerialChart(), oneBallOnly = TRUE))
# equivalent to
chartCursor_obj <- chartCursor(oneBallOnly = TRUE)
print(setChartCursor(.Object = amSerialChart(), chartCursor = chartCursor_obj))
\dontrun{
Error use case:
setChartCursor(.Object = amSerialChart(), chartCursor = "error")
}
# ---
# Add the default scrollbar
print(setChartScrollbar(.Object = amSerialChart()))
# equivalent to:
chartScrollbar_obj <- chartScrollbar(updateOnReleaseOnly = FALSE)
print(setChartScrollbar(.Object = amSerialChart(), chartScrollbar = chartScrollbar_obj))
\dontrun{
setChartScrollbar(.Object = amSerialChart(), chartScrollbar = list(updateOnReleaseOnly = FALSE))
}
# ---
print(setCreditsPosition(.Object = amPieChart(), creditsPosition = "top-right"))
\dontrun{
Error use case:
setCreditsPosition(.Object = amPieChart(), creditsPosition = "top-center")
}
# ---
dataProvider_obj <- data.frame(key = c("FR", "US", "GER", "ENG", "IT" ),
                               value = round(runif(5, max = 100)))
print(setDataProvider(.Object = amPieChart(), dataProvider = dataProvider_obj))
# ---
print(setExport(.Object = amSerialChart()))
# ---
graphs_ls <- list(amGraph(balloonText = "balloonText"), amGraph(type = "column"))
print(setGraphs(.Object = amChart(), graphs = graphs_ls))
\dontrun{
graphs_ls <- list(list(balloonText = "balloonText"), list(type = "column"))
setGraphs(.Object = amChart(), graphs = graphs_ls)
}
# ---
print(addGraph(.Object = amSerialChart(), balloonText = "balloonText", "type" = "column"))
# equivalent to
amGraph_obj <- amGraph(balloonText = "balloonText", "type" = "column")
print(addGraph(.Object = amSerialChart(), amGraph = amGraph_obj))
# ---
print(setGraph(.Object = amGanttChart(), id = "amGraph-1"))
# equivalent to
amGraph_obj <- amGraph(id = "amGraph-1")
print(setGraph(.Object = amGanttChart(), amGraph = amGraph_obj))
# ---
guides_ls <- list(guide(fillAlpha = .1), guide(fillAlpha = .5))
print(setGuides(.Object = amSerialChart(), guides = guides_ls))
# or...
amSerialChart(guides = guides_ls)
# ---
print(addGuide(.Object = amSerialChart(), fillAlpha = .1, value = 0, toVAlue = 10))
# equivalent to
guide_obj <- guide(fillAlpha = .1, value = 0, toVAlue = 10)
print(addGuide(.Object = amSerialChart(), guide = guide_obj))
# ---
print(setLegend(.Object = amChart(), amLegend = amLegend(useGraphSettings = TRUE)))
# equivalent to:
print(setLegend(.Object = amChart(), useGraphSettings = TRUE))
# ---
pipeR::pipeline(
  amGanttChart(segmentsField = "segments"),
  setDataProvider(data.frame(category = c( "John", "Julia"))),
  addSegment(1, data.frame(start = 7, duration = 2:3, task = c("Task #1", "Task #2"))),
  addSegment(2, data.frame(start = 10, duration = 2:3, task = c("Task #1", "Task #2")))
)
# ---
ls <- list(data.frame(start = 7, duration = 2:3, task = c("Task #1", "Task #2")),
           data.frame(start = 10, duration = 2:3, task = c("Task #1", "Task #2")))
pipeR::pipeline(
  amGanttChart(segmentsField = "segments"),
  setDataProvider(data.frame(category = c( "John", "Julia"))),
  addSegment(1:2,  ls)
)
# ---
amChart_obj <- amChart(dataProvider = data.frame(a = 1:5, b = 6:10))
print(addSubData(.Object = amChart_obj, categoryIDs = 3, data = data.frame(a = 1:10, b = 11:20)))
# ---
print(setSubChartProperties(.Object = amSerialChart(), type = "serial"))
# ---
titles_ls <- list(title(text = "balloonText"), title(text = "column"))
print(setTitles(.Object = amXYChart(), titles = titles_ls))
# or...
print(amChart(titles = titles_ls))
# ---
print(addTitle(.Object = amPieChart(), text = "balloonText", size = 15))
# equivalent to
title_obj <- title(text = "balloonText", size = 15)
print(addTitle(.Object = amPieChart(), title = title_obj))
# ---
trendLines <- list(trendLine(initialValue = 1, finalValue = 5),
                   trendLine(initialValue = 7, finalValue = 19))
print(setTrendLines(.Object = amChart(), trendLines = trendLines))
# or...
print(amChart(trendLines = trendLines)) # Equivalent
addTrendLine(.Object = amSerialChart(), initialValue = 1, initialXValue = 1,
             finalValue = 11, finalXValue = 12)
# equivalent to:
trendLine_obj <- trendLine(initialValue = 1, initialXValue = 1, finalValue = 11, finalXValue = 12)
addTrendLine(.Object = amSerialChart(), trendLine = trendLine_obj)
setType(.Object = amChart(), type = "pie")
# equivalent to:
amPieChart()
valueAxes <- list(valueAxis(axisTitleOffset = 12, tickLength = 10),
                  valueAxis(axisTitleOffset = 10, tickLength = 10))
setValueAxes(.Object = amSerialChart(), valueAxes = valueAxes)
# or...
amSerialChart(valueAxes = valueAxes)
# ---
addValueAxes(.Object = amSerialChart(), axisTitleOffset = 12, tickLength = 10)
# equivalent to:
valueAxis_obj <- valueAxis(axisTitleOffset = 12, tickLength = 10)
addValueAxes(.Object = amSerialChart(), valueAxis = valueAxis_obj)
# ---
print(setValueAxis(.Object = amGanttChart()))
print(setValueAxis(.Object = amGanttChart(), type = "date"))
}

