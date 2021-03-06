\name{land.surface}

\alias{land.surface}

\docType{data}

\title{Topography of Land Surface}

\description{
The Wood River Valley (WRV) is a geologic feature located in south-central Idaho.
This dataset gives the topography of the land surface in the WRV and vicinity.
}

\usage{land.surface}

\format{
An object of \code{SpatialGridDataFrame} class.
Each cell on the surface grid represents an elevation in meters above the North American Vertical Datum of 1988 (NAVD 88).
Geographic coordinates are in units of meters, in conformance with the North American Datum of 1983 (NAD 83), and placed in the
Idaho Transverse Mercator projection (\href{https://www.idwr.idaho.gov/GIS/IDTM/}{IDTM}).
The spatial grid is composed of 565 rows and 429 columns, and has cell sizes that are constant at 100 meters by 100 meters.
}

\source{
The National Elevation Dataset (\href{http://ned.usgs.gov/}{NED}) 1/3-arc-second raster (Gesch, 2007; Gesch and others, 2002), accessed on December 1, 2015.
This dataset can be downloaded in a Esri ArcGRID format using the \href{http://viewer.nationalmap.gov/viewer/}{National Map Viewer}.
NED data are distributed in geographic coordinates in units of decimal degrees, and in conformance with the NAD 83.
Elevation values are in meters above the NAVD 88.
The west, east, south, and north bounding coordinates for this dataset are -115, -114, 43, and 44 decimal degrees, respectively.
Post-processing includes:
(1) project the values of the NED dataset into the \code{\link{alluvium.thickness}} spatial grid using bilinear interpolation, and
(2) set values in cells where the elevation of the alluvium bottom is missing to \code{NA}.
}

\references{
Gesch, D.B., 2007, The National Elevation Dataset, in Maune, D., ed., Digital Elevation Model Technologies and Applications: The DEM Users Manual, 2nd Edition: Bethesda, Maryland, American Society for Photogrammetry and Remote Sensing, p. 99-118.

Gesch, D., Oimoen, M., Greenlee, S., Nelson, C., Steuck, M., and Tyler, D., 2002, The National Elevation Dataset: Photogrammetric Engineering and Remote Sensing, v. 68, no. 1, p. 5-11.
}

\examples{
image(land.surface)
summary(land.surface)
}

\keyword{datasets}
