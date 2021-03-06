\docType{methods}
\name{Report-methods}
\alias{Report}
\alias{Report,ContactTrace-method}
\alias{Report,list-method}
\alias{Report-methods}
\title{Generate a contact tracing \code{Report}}
\arguments{
  \item{object}{the object}

  \item{format}{the format to use, can be either 'html' or
  'pdf'. The default is 'html'}

  \item{template}{the Sweave template file to use. If none
  is provided, the default is used.}
}
\description{
  EpiContatTrace contains report templates to generate pdf-
  or html reports for the farm specific contacts. These
  reports can be useful for hands-on disease tracing in the
  field. The templates are used by Sweave and can be
  adapted by the end user. However, in the default setting
  the report has the following layout; first the contacts
  are visualised graphically in a plot, as to give an
  immediate signal to the reader of the report of the
  number of contacts. In the following, the contact data
  are presented with different levels of detail split by
  ingoing and outgoing contacts. The first includes
  collapsed data and the sequential contact structure at
  group level (i.e. no information on individuals or
  dates). In this summary, the sequential structure of each
  part of the chain is included, and a holding that appears
  in several different parts of the chain can therefore be
  included more than once in the summary. The reason for
  this is to facilitate sequential tracing and getting an
  overview of each part of the chain. After the summary all
  details of all contacts included in the contact chains is
  presented, i.e. date of contact and data on individual
  level when available. To generate pdf files a TeX
  installation must exist to compile the latex file. The
  report is saved in the working directory with the name of
  the root as filename.
}
\note{
  Plots are not supported in version 0.8.6 since igraph0
  has been archived. We intend to resolve the issue in a
  future version. Install version 0.8.5 and igraph0
  manually from the archive if plots are required. See
  section 6.3 in 'R Installation and Administration' on how
  to install packages from source.
}
\section{Methods}{
  \describe{

  \item{\code{signature(object = "ContactTrace")}}{
  Generate a report for a \code{ContactTrace} object.  }

  \item{\code{signature(object = "list")}}{ Generate
  reports for a list of \code{ContactTrace} obejcts.  } }
}
\examples{
\dontrun{

## Load data
data(transfers)

## Perform contact tracing
contactTrace <- Trace(movements=transfers,
                      root=2645,
                      tEnd='2005-10-31',
                      days=90)

## Generate an html report showing details of the contact tracing for
## root 2646.
## Note: Creates the files 2645.html and 2645.png in the working
## directory.
Report(contactTrace)

## It's possible to generate reports for a list of ContactTrace objects.
## Perform contact tracing for ten of the included herds
root <- sort(unique(c(transfers$source, transfers$destination)))[1:10]

## Perform contact tracing
contactTrace <- Trace(movements=transfers,
                      root=root,
                      tEnd='2005-10-31',
                      days=90)

## Generate reports
## Note: Creates the files 1.html, 2.html, ..., 10.html and
## 1.png, 2.png, ..., 10.png in the working directory
Report(contactTrace)
}
}
\references{
  \itemize{ \item Dube, C., et al., A review of network
  analysis terminology and its application to
  foot-and-mouth disease modelling and policy development.
  Transbound Emerg Dis 56 (2009) 73-85, doi:
  10.1111/j.1865-1682.2008.01064.x

  \item Noremark, M., et al., Network analysis of cattle
  and pig movements in Sweden: Measures relevant for
  disease control and riskbased surveillance.  Preventive
  Veterinary Medicine 99 (2011) 78-90, doi:
  10.1016/j.prevetmed.2010.12.009

  \item Friedrich Leisch. Sweave: Dynamic generation of
  statistical reports using literate data analysis. In
  Wolfgang Hardle and Bernd Ronz, editors, Compstat 2002 -
  Proceedings in Computational Statistics, pages 575-580.
  Physica Verlag, Heidelberg, 2002. ISBN 3-7908-1517-9.
  \url{http://www.statistik.uni-muenchen.de/~leisch/Sweave/}
  }
}
\seealso{
  Sweave, R2HTML, texi2pdf.
}
\keyword{methods}

