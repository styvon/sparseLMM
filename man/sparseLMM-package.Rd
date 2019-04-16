\name{sparseLMM-package}
\alias{sparseLMM-package}
\alias{sparseLMM}
\docType{package}
\title{
\packageTitle{sparseLMM}
}
\description{
\packageDescription{sparseLMM}
}
\details{



The DESCRIPTION file:
\packageDESCRIPTION{sparseLMM}
\packageIndices{sparseLMM}
SparseLMM is an R package integrated with C++ Armadillo library and OpenMP API with a modified version of SAIGE's `fitNULLGLMM()` function, which enables the flexibility to use non-genetic variance component information while yielding feasible computation and memory efficiency.  
}
\author{
\packageAuthor{sparseLMM}

Maintainer: \packageMaintainer{sparseLMM}
}
\references{
[1] Chen, Han, Chaolong Wang, Matthew P Conomos, Adrienne M Stilp, Zilin Li, Tamar Sofer, Adam A Szpiro, et al. 2016. “Control for Population Structure and Relatedness for Binary Traits in Genetic Association Studies via Logistic Mixed Models.” The American Journal of Human Genetics 98 (4). Elsevier: 653–66.

[2] OpenMP Architecture Review Board. 2013. “OpenMP Application Program Interface Version 4.0.” https://www.openmp.org/wp-content/uploads/OpenMP4.0.0.pdf.

[3] Zhou, Wei, Jonas B Nielsen, Lars G Fritsche, Rounak Dey, Maiken E Gabrielsen, Brooke N Wolford, Jonathon LeFaive, et al. 2018. “Efficiently Controlling for Case-Control Imbalance and Sample Relatedness in Large-Scale Genetic Association Studies.” Nature Genetics 50 (9). Nature Publishing Group: 1335.  
}

\keyword{ package }

\examples{
  #=== set params for test ===#
  plinkFile="./example/sampledata"
  phenoFile="./example/sampledata_pheno.txt"
  phenoCol="PheCode1"
  covarColList="x1,sex"
  covarColList <- strsplit(covarColList,",")[[1]]
  sampleIDColinphenoFile="IID"
  traitType="binary"
  outputPrefix="./example/testoutput"
  nThreads=1
  LOCO=FALSE
  memoryChunk=0.2
  invNormalize = FALSE
  qCovarCol = NULL
  tol=0.02
  maxiter=20
  tolPCG=1e-5
  maxiterPCG=500
  Cutoff = 2 
  numMarkers = 100
  skipModelFitting = FALSE
  tauInit = c(0,0)
  traceCVcutoff = 1
  ratioCVcutoff = 1
  kinFile = "./example/sampledata.kmatsp"
  nThreadsOMP = 2
  
  # run main function
  fitNULLGLMM(plinkFile=plinkFile,
              phenoFile = phenoFile,
              phenoCol = phenoCol,
              traitType = traitType,
              covarColList = covarColList,
              sampleIDColinphenoFile = sampleIDColinphenoFile,
              nThreads = nThreads,
              LOCO = LOCO,
              outputPrefix = outputPrefix,
              memoryChunk = memoryChunk,
              invNormalize =invNormalize,
              qCovarCol = qCovarCol,
              tol = tol,
              maxiter = maxiter,
              Cutoff = Cutoff,
              numMarkers = numMarkers,
              skipModelFitting = skipModelFitting,
              tauInit = tauInit,
              traceCVcutoff = traceCVcutoff,
              ratioCVcutoff = ratioCVcutoff,
              kinFile = kinFile,
              sparse_kin = TRUE,
              nThreadsOMP = nThreadsOMP
  )
}
