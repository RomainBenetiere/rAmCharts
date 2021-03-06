% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/AmBalloon.R, R/AmGraph.R, R/AmLegend.R, R/AmObject.R, R/AmStockChart.R, R/AxisBase.R, R/CategoryAxis.R, R/ChartCursor.R, R/ChartScrollbar.R, R/DataSet.R, R/GaugeArrow.R, R/GaugeAxis.R, R/GaugeBand.R, R/Guide.R, R/Label.R, R/PeriodSelector.R, R/StockEvent.R, R/StockPanel.R, R/Title.R, R/TrendLine.R, R/ValueAxis.R
\docType{methods}
\name{listProperties,AmBalloon-method}
\alias{listProperties}
\alias{listProperties,AmBalloon-method}
\alias{listProperties,AmGraph-method}
\alias{listProperties,AmLegend-method}
\alias{listProperties,AmObject-method}
\alias{listProperties,AmStockChart-method}
\alias{listProperties,AxisBase-method}
\alias{listProperties,CategoryAxis-method}
\alias{listProperties,ChartCursor-method}
\alias{listProperties,ChartScrollbar-method}
\alias{listProperties,DataSet-method}
\alias{listProperties,GaugeArrow-method}
\alias{listProperties,GaugeAxis-method}
\alias{listProperties,GaugeBand-method}
\alias{listProperties,Guide-method}
\alias{listProperties,Label-method}
\alias{listProperties,PeriodSelector-method}
\alias{listProperties,StockEvent-method}
\alias{listProperties,StockPanel-method}
\alias{listProperties,Title-method}
\alias{listProperties,TrendLine-method}
\alias{listProperties,ValueAxis-method}
\title{List attributes of an S4 object}
\usage{
\S4method{listProperties}{AmBalloon}(.Object)

\S4method{listProperties}{AmGraph}(.Object)

\S4method{listProperties}{AmLegend}(.Object)

listProperties(.Object)

\S4method{listProperties}{AmObject}(.Object)

\S4method{listProperties}{AmStockChart}(.Object)

\S4method{listProperties}{AxisBase}(.Object)

\S4method{listProperties}{CategoryAxis}(.Object)

\S4method{listProperties}{ChartCursor}(.Object)

\S4method{listProperties}{ChartScrollbar}(.Object)

\S4method{listProperties}{DataSet}(.Object)

\S4method{listProperties}{GaugeArrow}(.Object)

\S4method{listProperties}{GaugeAxis}(.Object)

\S4method{listProperties}{GaugeBand}(.Object)

\S4method{listProperties}{Guide}(.Object)

\S4method{listProperties}{Label}(.Object)

\S4method{listProperties}{PeriodSelector}(.Object)

\S4method{listProperties}{StockEvent}(.Object)

\S4method{listProperties}{StockPanel}(.Object)

\S4method{listProperties}{Title}(.Object)

\S4method{listProperties}{TrendLine}(.Object)

\S4method{listProperties}{ValueAxis}(.Object)
}
\arguments{
\item{.Object}{any class object of the package}
}
\description{
Attributes of an AmGraph object.

Attributes of an AmLegend object.

List attributes of an S4 object
}
\examples{
amBalloon(adjustBorderColor = TRUE)
listProperties(amGraph(balloonText = "toto", type = "type", valueField = "valueField"))
listProperties(amGraph(balloonText = "toto", type = "type"))
listProperties(amLegend(useGraphSettings = TRUE))
amChart(type = "serial")
listProperties(amStockChart(test = 1))
# ---
\dontshow{
library(pipeR)
categoryAxis(ignoreAxisWidth = TRUE) \%>>\% listProperties() \%>>\% class
categoryAxis(ignoreAxisWidth = TRUE) \%>>\% listProperties() \%>>\% length
categoryAxis(ignoreAxisWidth = TRUE) \%>>\% setGridPosition("start") \%>>\% listProperties()
}
new("ChartCursor", oneBalloonOnly = TRUE)
listProperties(chartScrollbar(enabled = TRUE))
lapply(list(gaugeArrow(alpha = .4, value = 1), gaugeArrow(alpha = .5)), listProperties)
listProperties(gaugeAxis())
lapply(list(gaugeBand(fillAlpha = .4, value = 1), gaugeBand(fillAlpha = .5)), listProperties)
lapply(list(guide(fillAlpha = .4, value = 1), guide(fillAlpha = .5)), listProperties)
listProperties(label(text = "balloonText"))
listProperties(periodSelector(fillAlpha = .4, value = 1))
listProperties(stockEvent())
stockPanel(drawnOnAxis = "axis1")
title(text = "foo")
trendLine(initialValue = 1, valueAxis = valueAxis(axisTitleOffset = 12, tickLength = 10))
library(pipeR)
\dontshow{
valueAxis(axisTitleOffset = 12, tickLength = 10) \%>>\% listProperties \%>>\% class
}
valueAxis(axisTitleOffset = 12, tickLength = 10, axisTitleOffset = 12) \%>>\%
addGuide(fillAlpha = .4, adjustBorderColor = TRUE, gridThickness = 1) \%>>\% listProperties
}

