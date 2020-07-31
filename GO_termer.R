install.packages("splitstackshape")


install.packages("orgs.Hs.eg.db")

install.packages("convert2EntrezID")

source('https://bioconductor.org/biocLite.R')
BiocManager::install('org.Hs.eg.db')

if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install(version = "3.11")


BiocManager::install("GO.db")

BiocManager::install("limma")

library('org.Hs.eg.db')
library(splitstackshape)
library(tidyverse)
library(limma)
library(GO.db)

filenames <- list.files("correlations_LGG")

if(!dir.exists(paste(outputdir,"/GO_terms",sep=""))){
  dir.create(paste(outputdir,"/GO_terms",sep=""))
}

if(!dir.exists(paste(outputdir,"/GO_terms_bp",sep=""))){
  dir.create(paste(outputdir,"/GO_terms_bp",sep=""))
}

if(!dir.exists(paste(outputdir,"/GO_terms_mf",sep=""))){
  dir.create(paste(outputdir,"/GO_terms_mf",sep=""))
}

if(!dir.exists(paste(outputdir,"/GO_terms_cc",sep=""))){
  dir.create(paste(outputdir,"/GO_terms_cc",sep=""))
}


allgo <- data.frame(matrix(ncol=5,nrow=0, dimnames=list(NULL, c("GO Term","Ont","N","DE","P.DE"))))

allgo_bp <- data.frame(matrix(ncol=5,nrow=0, dimnames=list(NULL, c("GO Term","Ont","N","DE","P.DE"))))

allgo_mf <- data.frame(matrix(ncol=5,nrow=0, dimnames=list(NULL, c("GO Term","Ont","N","DE","P.DE"))))

allgo_cc <- data.frame(matrix(ncol=5,nrow=0, dimnames=list(NULL, c("GO Term","Ont","N","DE","P.DE"))))


i = 1

for(i in 1:length(filenames)){
  print(i)
  skip_to_next <- FALSE
  df <- read.csv(paste("correlations_LGG/",filenames[i],sep=""))
  
  if(length(df[,1] > 0)){
  
  df2 <- cSplit(df, 'partner', sep="___", type.convert=FALSE)
  
  df2 <- df2 %>% arrange(desc(cor))
  
  IDs <- df2$partner_1
  
  entrezIDs <- tryCatch(mapIds(org.Hs.eg.db, IDs, 'ENTREZID', 'SYMBOL'), error = function(e) { skip_to_next <<- TRUE})
  
  if(skip_to_next) { next } 

  df2$entrez <- entrezIDs
  
  Genes<-entrezIDs
  g <- goana(Genes)
  topGO <- topGO(g)
  write.csv(topGO,paste(outputdir,"/GO_terms/",filenames[i],sep=""))
  topGO_bp <- topGO %>%
    filter(Ont == "BP")
  write.csv(topGO_bp,paste(outputdir,"/GO_terms_bp/",filenames[i],sep=""))
  topGO_mf <- topGO %>%
    filter(Ont == "MF")
  write.csv(topGO_mf,paste(outputdir,"/GO_terms_mf/",filenames[i],sep=""))
  topGO_cc <- topGO %>%
    filter(Ont == "CC")
  write.csv(topGO_cc,paste(outputdir,"/GO_terms_cc/",filenames[i],sep=""))
  
  
  }else{}
  allgo <- rbind(allgo,topGO)
  allgo_bp <- rbind(allgo_bp,topGO_bp)
  allgo_mf <- rbind(allgo_mf,topGO_mf)
  allgo_cc <- rbind(allgo_cc,topGO_cc)
}

write_csv(allgo,paste(outputdir,"/GOterm_all_summary_TUCRs.csv",sep=""))

write_csv(allgo_bp,paste(outputdir,"/GOterm_bp_summary_TUCRs.csv",sep=""))

write_csv(allgo_mf,paste(outputdir,"/GOterm_mf_summary_TUCRs.csv",sep=""))

write_csv(allgo_cc,paste(outputdir,"/GOterm_cc_summary_TUCRs.csv",sep=""))