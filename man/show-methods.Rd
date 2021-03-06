\docType{methods}
\name{show-methods}
\alias{show}
\alias{show,Contacts-method}
\alias{show,ContactTrace-method}
\alias{show-methods}
\title{Show}
\description{
  Shows information of the time-window used for contact
  tracing and summary of network parameters. It also
  visualize the contact structure.
}
\section{Methods}{
  \describe{

  \item{\code{signature(object = "Contacts")}}{ Show
  information for the Contacts object.  }

  \item{\code{signature(object = "ContactTrace")}}{ Show
  information for the ingoing and outgoing \code{Contacts}
  of a \code{ContactTrace} object.  } }
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

show(contactTrace)
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
  10.1016/j.prevetmed.2010.12.009 }
}
\keyword{methods}

