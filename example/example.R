# 
# source("./R/fitSparseLMM.R")
# sourceCpp("./src/innerProd.cpp")
# sourceCpp("./src/sparseLMM_OMP.cpp")

library("sparseLMM")



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