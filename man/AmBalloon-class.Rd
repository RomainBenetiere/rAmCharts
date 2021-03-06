% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/AmBalloon.R
\docType{class}
\name{AmBalloon-class}
\alias{AmBalloon-class}
\title{AmBalloon class}
\description{
Creates the balloons (tooltips) of the chart.
It follows the mouse cursor when you roll-over the data items.
The framework generates the instances automatically you only need to adjust the appearance to your needs.
}
\details{
Run \code{api("AmBalloon")} for more information and all avalaible properties.
}
\section{Slots}{

\describe{
\item{\code{adjustBorderColor}}{\code{logical}.
If this is set to TRUE, border color instead of background color will be changed when
user rolls-over the slice, graph, etc.}

\item{\code{color}}{\code{character}.
Color of text in the balloon.}

\item{\code{cornerRadius}}{\code{numeric}.
Balloon corner radius.}

\item{\code{fillColor}}{\code{character}.
Balloon background color. Usually balloon background color is set by the chart.
Only if "adjustBorderColor" is "true" this color will be used.}

\item{\code{listeners}}{\code{list} containining the listeners to add to the object.
The list must be named as in the official API. Each element must a character string.
See examples for details.
Inherited from \code{\linkS4class{AmObject}}.}

\item{\code{otherProperties}}{\code{list},
containing other avalaible properties non coded in the package yet.
Inherited from \code{\linkS4class{AmObject}}.}

\item{\code{value}}{\code{numeric}.
Inherited from \code{\linkS4class{AmObject}}.}
}}
\author{
DataKnowledge
}

