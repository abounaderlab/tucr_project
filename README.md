# tucr_project
Code repository for the TUCR project, This document explains what each file in this repository represents. Any additional questions should be sent to the corresponding author.

Corresponding author: Roger Abounader, University of Virginia, PO Box 800168, 
Charlottesville VA 22908, USA, Phone: (434) 982-6634, Fax: 434-243-6843 
E-mail: ra6u@virginia.edu.  

# Version History
R (4.3.1), RStudio (2023.12.1+402), UBuntu (2204.3.49.0), bowtie (2.2.9), salmon (1.5.1), bedtools (2.29.2), samtools (1.12), macs2 (2.2.7.1), sratoolkit (2.10.5). Custom code is available upon request.

# Installation Guide

The following items are stored under Github's Large File Storage (LFS), as they are too large for standard storage:
Inputs/generalfiles/wgcnafiles/TUCR-01-dataInput.rdata
Inputs/generalfiles/wgcnafiles/allprelims.rdata
TinyTex.zip
Outputs_example.tar.gz
TUCR_Database.tar.gz

# Inputs 

Input files for project organized by figure

# .gitattributes

Used to declare changes to file handling and display. For this project, specifically designates the LFS files from the installation guide section above as being tracked by LFS.

[Git definition](https://docs.gitlab.com/ee/user/project/repository/files/git_attributes.html)

# .gitignore

(Git definiton) A gitignore file specifies intentionally untracked files that Git should ignore. Files already tracked by Git are not affected.

[Git definiton](https://git-scm.com/docs/gitignore)

# Outputs_example.tar.gz

A compressed example output directory with completed data, including the TUCR Database.

# README.md

This document

# Extracting Outputs_example and the TUCR_Database
tar -xvzf Outputs_example.tar.gz 
tar -xvzf TUCR_Database.tar.gz

# TUCR_Database.tar.gz

A compressed directory containing expression, survival, and weighted gene correlation data for all 481 TUCRs. 

# TinyTeX.zip

Latex compiler that can be used to assist with regenerating the codebook

# colorcodelist

A list of hex codes used in this project and their colloquial names.

# tucr_project
R project file for the TUCR project

# tucr_project_markdown

R Markdown file containing code used to generate all figures, with workflows included. Can be used to regenerate the "TUCR Database" as well, which is stored to the output directory assigned in the setup section of this document.

# tucr_project_codebook

PDF File of tucr_project_markdown with appropriate section headers





