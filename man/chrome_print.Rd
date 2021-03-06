% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/chrome.R
\name{chrome_print}
\alias{chrome_print}
\title{Print a web page to PDF using the headless Chrome}
\usage{
chrome_print(input, output = xfun::with_ext(input, "pdf"), wait = 2, 
    browser = "google-chrome", options = list(printBackground = TRUE, 
        preferCSSPageSize = TRUE), work_dir = tempfile(), timeout = 30, 
    extra_args = c("--disable-gpu"), verbose = FALSE)
}
\arguments{
\item{input}{A URL or local file path to an HTML page, or a path to a local
file that can be rendered to HTML via \code{rmarkdown::\link{render}()}
(e.g., an R Markdown document or an R script).}

\item{output}{The (PDF) output filename. For a local web page
\file{foo/bar.html}, the default PDF output is \file{foo/bar.pdf}; for a
remote URL \file{https://www.example.org/foo/bar.html}, the default output
will be \file{bar.pdf} under the current working directory.}

\item{wait}{The number of seconds to wait for the page to load before
printing to PDF (in certain cases, the page may not be immediately ready
for printing, especially there are JavaScript applications on the page, so
you may need to wait for a longer time).}

\item{browser}{Path to Google Chrome or Chromium. This function will try to
find it automatically via \code{\link{find_chrome}()} if the path is not
explicitly provided.}

\item{options}{A list of page options. See
\url{https://chromedevtools.github.io/devtools-protocol/tot/Page#method-printToPDF}
 for the full list of options. Note that we have changed the defaults of
\code{printBackground} and \code{preferCSSPageSize} in this function.}

\item{work_dir}{Name of headless Chrome working directory. If the default
temporary directory doesn't work, you may try to use a subdirectory of your
home directory.}

\item{timeout}{The number of seconds before canceling the document
generation. Use a larger value if the document takes longer to build.}

\item{extra_args}{Extra command-line arguments to be passed to Chrome.}

\item{verbose}{Whether to show verbose websocket connexion to headless
Chrome.}
}
\value{
Path of the output file (invisibly).
}
\description{
Print an HTML page to PDF through the Chrome DevTools Protocol. Google Chrome
(or Chromium on Linux) must be installed prior to using this function.
}
\references{
\url{https://developers.google.com/web/updates/2017/04/headless-chrome}
}
