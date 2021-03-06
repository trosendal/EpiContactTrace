\name{build_tree}
\alias{build_tree}
\title{Build a graph tree from the NetworkStructure}
\usage{
  build_tree(network_structure)
}
\arguments{
  \item{network_structure}{a data.frame from the call
  \code{NetworkStructure} with a \code{ContactTrace}
  object}
}
\value{
  A \code{list} with the two fields \code{ingoing} and
  \code{outgoing}. The fields are \code{NULL} or contain a
  \code{data.frame} with the tree. The fields are
  \code{NULL} if there are no in- or outgoing contacts.
}
\description{
  Build a graph tree from the NetworkStructure
}
\keyword{internal}

