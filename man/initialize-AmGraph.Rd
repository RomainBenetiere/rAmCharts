% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/AmGraph.R
\docType{methods}
\name{initialize,AmGraph-method}
\alias{amGraph}
\alias{initialize,AmGraph-method}
\alias{setBalloonText}
\alias{setBalloonText,AmGraph,character-method}
\alias{setTitle,AmGraph,character-method}
\alias{setType,AmGraph,character-method}
\alias{setValueField}
\alias{setValueField,AmGraph,character-method}
\title{Initialize an AmGraph}
\usage{
\S4method{initialize}{AmGraph}(.Object, animationPlayed = FALSE, balloonText,
  title, type, valueField, ...)

amGraph(animationPlayed = FALSE, balloonText, title, type, valueField, ...)

setBalloonText(.Object, balloonText)

\S4method{setBalloonText}{AmGraph,character}(.Object, balloonText)

\S4method{setTitle}{AmGraph,character}(.Object, title)

\S4method{setType}{AmGraph,character}(.Object, type)

setValueField(.Object, valueField)

\S4method{setValueField}{AmGraph,character}(.Object, valueField)
}
\arguments{
\item{.Object}{\linkS4class{AmGraph}.}

\item{animationPlayed}{\code{logical}.}

\item{balloonText}{\code{character}.
Balloon text. You can use tags like [[value]], [[description]], [[percents]], [[open]], [[category]]
or any other field name from your data provider. HTML tags can also be used.}

\item{title}{\code{character}. Graph title.}

\item{type}{\code{character}.
Type of the graph. Possible values are: "line", "column", "step", "smoothedLine", "candlestick", "ohlc".
XY and Radar charts can only display "line" otherArguments graphs.}

\item{valueField}{\code{character}.
Name of the value field in your dataProvider.}

\item{...}{Other properties.}
}
\value{
An object of class \linkS4class{AmGraph} with the properties given.
}
\description{
To create an AmGraph, you can use the usual methode
Initialize or the constructor.
You can update properties with setters.

Constructor

Setter for balloonText.

Setter for title.

Setter for type.

Setter for valueField
}
\section{Functions}{
\itemize{
\item \code{amGraph}: 
}}
\examples{
new("AmGraph", valueField = "value")
amGraph(balloonText = "balloonText", "type" = "column",
        valueField = "value", animationPlayed = TRUE)
setBalloonText(.Object = amGraph(), balloonText = "performance")
setTitle(.Object = amGraph(), title = "Power")
setType(.Object = amGraph(), type = "type")
setValueField(.Object = amGraph(), valueField = "score")
}

