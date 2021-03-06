\name{gage.height}

\alias{gage.height}

\docType{data}

\title{Daily Mean Gage Height at Streamgages}

\description{
The daily mean gage height at streamgages in the Big Wood River Valley, Idaho.
Gage height records bracket the 1987-2014 and are based on records with quality assurance codes of working (\sQuote{W}), in review (\sQuote{R}), and approved (\sQuote{A}).

}

\usage{gage.height}

\format{
A \code{data.frame} object with 9,980 records and the following variables:
\describe{
  \item{Date}{is the date during which gage height was averaged.}
  \item{13135500}{is the daily mean gage height in meters, recorded at the USGS \href{http://waterdata.usgs.gov/id/nwis/uv/?site_no=13135500}{13135500} Big Wood River near Ketchum streamgage.}
  \item{13139510}{is the daily mean gage height in meters, recorded at the USGS \href{http://waterdata.usgs.gov/id/nwis/uv/?site_no=13139510}{13139510} Big Wood River at Hailey streamgage.}
  \item{13140800}{is the daily mean gage height in meters, recorded at the USGS \href{http://waterdata.usgs.gov/id/nwis/uv/?site_no=13140800}{13140800} Big Wood River at Stanton Crossing near Bellevue streamgages.}
}
}

\source{
Data queried from the National Water Information System (\href{http://waterdata.usgs.gov/nwis}{NWIS}) database on December 15, 2014, by Ross Dickinson (USGS).
Records recorded on May 26-28, 1991 and March 15-22, 1995 were reassigned quality assurance codes of \sQuote{I} because of assumed ice build-up.
Missing data at the Big Wood River near Ketchum gage was estimated using a linear regression model based on recorded gage-height data at the Big Wood River at Hailey and Near Ketchum streamgages.
Missing data at the Stanton Crossing near Bellevue gage was replaced with average gage-height values recorded at this gage.
}

\examples{
str(gage.height)

col <- c("red", "blue", "green")
ylab <- paste("Gage height in", c("meters", "feet"))
PlotGraph(gage.height, ylab = ylab, col = col, lty = 1:3, conversion.factor = 3.28084)
leg <- sprintf("USGS \%s", names(gage.height)[-1])
legend("topright", leg, col = col, lty = 1:3, inset = 0.02, cex = 0.7,
       box.lty = 1, bg = "#FFFFFFE7")

graphics.off()
}

\keyword{datasets}
