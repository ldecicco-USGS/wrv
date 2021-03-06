\name{seepage.study}

\alias{seepage.study}

\docType{data}

\title{Stream Seepage Study}

\description{
A Wood River Valley stream seepage study with streamflow measurements made during the months of August 2012, October 2012, and March 2013.
}

\usage{seepage.study}

\format{
An object of \code{SpatialPointsDataFrame} class containing 82 points with the following variables:
\describe{
  \item{Order}{an index used to preserve the downstream order of measurement sites.}
  \item{Name}{a local name for the measurement site.}
  \item{SiteNo}{a unique identifier for the measurement site within the National Water Information System (NWIS).}
  \item{Type}{the type of measurement site:
    \dQuote{Big Wood River}, \dQuote{Willow Creek}, \dQuote{Spring fed creeks}, \dQuote{Silver Creek}, \dQuote{Diversion}, \dQuote{Exchange well inflow}, \dQuote{Return}, and \dQuote{Tributary}.}
  \item{Comments}{an abbreviated site name.}
  \item{Aug}{the volumetric flow rate measured during August 2012, in cubic meters per day.}
  \item{Oct}{the volumetric flow rate measured during October 2012, in cubic meters per day.}
  \item{Mar}{the volumetric flow rate measured during March 2013, in cubic meters per day.}
}
Geographic coordinates are in units of meters, in conformance with the North American Datum of 1983 (NAD 83), and placed in the
Idaho Transverse Mercator projection (\href{https://www.idwr.idaho.gov/GIS/IDTM/}{IDTM}).
}

\source{
Derived from Bartolino (2014) seepage study, Idaho Department of Water Resources, Water District 37 and 37M flow records.
}

\references{
Bartolino, J.R., 2014, Stream seepage and groundwater levels, Wood River Valley, south-central Idaho, 2012--13: U.S. Geological Survey Scientific Investigations Report 2014-5151, 34 p., \url{http://dx.doi.org/10.3133/sir20145151}.
}

\examples{
plot(seepage.study)
str(seepage.study@data)
}

\keyword{datasets}
