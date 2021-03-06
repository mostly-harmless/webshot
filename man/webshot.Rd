% Generated by roxygen2 (4.0.2): do not edit by hand
\name{webshot}
\alias{webshot}
\title{Take a screenshot of a URL}
\usage{
webshot(url = NULL, file = "webshot.png", vwidth = 920, vheight = 600,
  cliprect = NULL, selector = NULL, delay = 0.2)
}
\arguments{
\item{url}{A URL to visit.}

\item{file}{Name of output file. Should end with \code{.png}.}

\item{vwidth}{Viewport width. This is the width of the browser "window".}

\item{vheight}{Viewport height This is the height of the browser "window".}

\item{cliprect}{Clipping rectangle. If \code{cliprect} and \code{selector}
are both unspecified, the clipping rectangle will contain the entire page.
This can be the string \code{"viewport"}, in which case the clipping
rectangle matches the viewport size, or it can be a four-element numeric
vector specifying the top, left, width, and height. This option is not
compatible with \code{selector}.}

\item{selector}{A CSS selector specifying a DOM element to set the clipping
rectangle to. A screenshot of just this DOM element will be taken. If the
selector has more than one match, only the first one will be used. This
option is not compatible with \code{cliprect}.}

\item{delay}{Time to wait before taking screenshot, in seconds. Sometimes a
  longer delay is needed for all assets to display properly.}
}
\description{
Take a screenshot of a URL
}
\examples{
\donttest{
# Whole web page
webshot("http://www.rstudio.com/")

# Might need a longer delay for all assets to display
webshot("http://www.rstudio.com/", delay = 500)

# Clip to the viewport
webshot("http://www.rstudio.com/", "rstudio-viewport.png",
        cliprect = "viewport")

# Manual clipping rectangle
webshot("http://www.rstudio.com/", "rstudio-clip.png",
        cliprect = c(510, 5, 290, 350))

# Using CSS selectors to pick out regions
webshot("http://www.rstudio.com/", "rstudio-header.png", selector = "#header")

# If multiple matches for a selector, it uses the first match
webshot("http://www.rstudio.com/", "rstudio-block.png", selector = "article.col")
webshot("https://github.com/rstudio/shiny/", "shiny-stats.png",
         selector = "ul.numbers-summary")
}
}
\seealso{
\code{\link{webshot}} for taking screenshots of Shiny applications.
}

