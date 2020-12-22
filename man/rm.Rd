\name{random_machines}
\alias{random_machines}

\title{
Random Machines
}
\description{
Support vector ensemble based on random kernel space
}
\usage{
random_machines(formula, train, test,
                boots_size=100, cost=1,
                seed.bootstrap=NULL,
                automatic_tuning=FALSE,
                poly_scale=1,
                gamma_rbf=1, gamma_lap=1,
                degree=2, offset=0
)
}

\arguments{
  \item{formula}{formula,
  Formula that will be used
  }
  \item{train}{matrix,
  The Training set
  }
  \item{test}{matrix,
  The Test set
  }
  \item{boots_size}{integer,
  B correspoding to the number of bootstrap samples
  }
  \item{cost}{double,
  Cost parameter of SVM
  }
  \item{seed.bootstrap}{interger,
  Random seed bootstrap
  }
  \item{automatic_tuning}{logical,

  }
  \item{poly_scale}{integer,

  }
  \item{gamma_rbf}{integer,

  }
  \item{gamma_lap}{integer,

  }
  \item{degree}{integer,

  }
  \item{offset}{integer,

  }

}
\details{

}
\value{
      \item{models}{All bootstrap trained models}
      \item{boots_sample}{The bootstrap samples}
      \item{out_of_bag}{Out of the bag samples}
      \item{kernels}{}
      \item{accuracy}{}
      \item{lambda_values}{}
      \item{formula}{}
}
\references{
Ara, Anderson, et al. "Random Machines Regression Approach: an ensemble support vector regression model with free kernel choice." arXiv preprint arXiv:2003.12643 (2020). [ArXiV Link](https://arxiv.org/abs/2003.12643)

Ara, Anderson, et al. "Random Machines: A bagged-weighted support vector model with free kernel choice." arXiv preprint arXiv:1911.09411 (2019). [ArXiV Link](https://arxiv.org/abs/1911.09411)
}
\author{
https://learningfromdata.netlify.com/
}
\seealso{
Support Vector Machines
author : alexandros karatzoglou
updated : 08.02.06
https://github.com/cran/kernlab/pulls
}
\examples{
mod_classification<-random_machines(formula=Species~.,
                  train=iris,
                  test=iris,
                  boots_size=100,
                  cost=1,
                  seed.bootstrap=NULL,
                  automatic_tuning=FALSE,
                  poly_scale=1,
                  gamma_rbf=1,
                  gamma_lap=1,
                  degree=2,
                  offset=0)
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory (show via RShowDoc("KEYWORDS")):
% \keyword{ ~kwd1 }
% \keyword{ ~kwd2 }
% Use only one keyword per line.
% For non-standard keywords, use \concept instead of \keyword:
% \concept{ ~cpt1 }
% \concept{ ~cpt2 }
% Use only one concept per line.
