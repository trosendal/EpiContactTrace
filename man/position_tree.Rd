\name{position_tree}
\alias{position_tree}
\title{Position nodes in a tree}
\usage{
  position_tree(tree, x = 0, y = 0,
    orientation = c("North", "South", "East", "West"),
    sibling_separation = 4, subtree_separation = 4,
    level_separation = 1, left_size = 1, right_size = 1,
    top_size = 1, bottom_size = 1)
}
\arguments{
  \item{tree}{}

  \item{x}{The x coordinate of the root node}

  \item{y}{The y coordinate of the root node}

  \item{orientation}{The orientation of the tree.
  \code{North}, the root is at the top. \code{South}, the
  root is at the bottom. \code{East}, the root is at the
  left. \code{West}, th root is at the right.}

  \item{sibling_separation}{The minimum distance between
  adjacent siblings of the tree}

  \item{subtree_separation}{The minimum distance between
  adjacent subtrees of a tree.}

  \item{level_separation}{The fixed distance between
  adjacent levels of the tree.}

  \item{left_size}{The left size of a node.}

  \item{right_size}{The right size of a node.}

  \item{top_size}{The top size of a node.}

  \item{bottom_size}{The bottom size of a node.}
}
\description{
  This function determines the coordinates for each node in
  a tree.
}
\references{
  \itemize{ \item John Q. Walker II, A node positioning
  algorithm for general tress.\cr
  \url{http://www.cs.unc.edu/techreports/89-034.pdf} }
}
\keyword{internal}

