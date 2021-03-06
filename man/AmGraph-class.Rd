% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/AmGraph.R
\docType{class}
\name{AmGraph-class}
\alias{AmGraph-class}
\title{AmGraph class}
\description{
Creates the visualization of the data in following types:
line, column, step line, smoothed line, olhc and candlestick.
}
\details{
Run \code{api("AmGraph")} for more details and all avalaible properties.
}
\section{Slots}{

\describe{
\item{\code{balloonText}}{\code{character}.
Balloon text. You can use tags like [[value]], [[description]], [[percents]], [[open]], [[category]]
or any other field name from your data provider. HTML tags can also be used.}

\item{\code{title}}{\code{character}. Graph title.}

\item{\code{type}}{\code{character}.
Type of the graph. Possible values are: "line", "column", "step", "smoothedLine", "candlestick", "ohlc".
XY and Radar charts can only display "line" otherArguments graphs.}

\item{\code{valueField}}{\code{character}.
Name of the value field in your dataProvider.}

\item{\code{listeners}}{\code{"list"} containining the listeners to add to the object.
The list must be named as in the official API. Each element must a character string.
See examples for details.}

\item{\code{otherProperties}}{\code{"list"},
containing other avalaible properties non coded in the package yet}

\item{\code{value}}{\code{numeric}.}
}}
\author{
DataKnowledge
}

