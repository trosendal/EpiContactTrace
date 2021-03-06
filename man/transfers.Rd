\docType{data}
\name{transfers}
\alias{transfers}
\title{Movement Example Data}
\format{A data frame with 70190 observations on the following 6 variables.
\describe{
  \item{source}{
    a numeric vector with the holding identifier of the source
  }

  \item{destination}{
    a numeric vector with holding identifier of the destination.
  }

  \item{id}{
    a character vector with the identity of the animal.
    In this dataset an 5 character hexadecimal vector.
  }

  \item{t}{
    a Date of the transfers
  }

  \item{n}{
    a numeric vector with the number of animals moved.
    Always 1 in this dataset.
  }

  \item{category}{
    a factor describing the category of the animal.
    Always \code{Cattle} in this dataset.
  }
}}
\description{
  Movement data included in the package. The data contains
  fictitious example data of cattle movements during the
  period 2005-08-01 -- 2005-10-31.
}
\examples{
\dontrun{
data(transfers)

contactTrace <- Trace(movements=transfers,
                      root=2645,
                      tEnd='2005-10-31',
                      days=90)

show(contactTrace)
}
}
\keyword{datasets}

