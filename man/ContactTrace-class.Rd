\docType{class}
\name{ContactTrace-class}
\alias{ContactTrace-class}
\title{Class \code{"ContactTrace"}}
\description{
  Class to handle contact tracing.
}
\details{
  The \code{ContactTrace} class holds information for the
  ingoing and outgoing contact chain for a specific root
  within the time window used for contact tracing.
}
\section{Slots}{
  \describe{ \item{root}{ A \code{character} vector of
  length one with the identifier of the root.  }
  \item{ingoingContacts}{ A \code{Contacts} object with the
  contacts for the ingoing contact chain.  }
  \item{outgoingContacts}{ A \code{Contacts} object with
  the contacts for the outgoing contact chain.  } }
}

\section{Objects from the Class}{
  Objects can be created by calls of the form
  \code{new("ContactTrace",root, ingoingContacts,
  outgoingContacts,...)}
}
\examples{
## Load data
data(transfers)

## Perform contact tracing
contactTrace <- Trace(movements = transfers,
                      root = 2645,
                      tEnd = '2005-10-31',
                      days = 90)

## Show structure
str(contactTrace)
}
\keyword{classes}

