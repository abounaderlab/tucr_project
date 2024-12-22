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
Outputs_example.zip
TUCR_Database.zip

# Inputs 

Input files for project organized by figure.  Do not modify the contents of this subdirectory without careful consideration.

# .gitattributes

Used to declare changes to file handling and display. For this project, specifically designates the LFS files from the installation guide section above as being tracked by LFS.

[Git definition](https://docs.gitlab.com/ee/user/project/repository/files/git_attributes.html)

# .gitignore

(Git definiton) A gitignore file specifies intentionally untracked files that Git should ignore. Files already tracked by Git are not affected.

[Git definiton](https://git-scm.com/docs/gitignore)

# Outputs_example.zip

A compressed example output directory with completed data, including the TUCR Database. 

This folder must first be extracted before being accessed, using one of the linked methods below:
- Windows [Click Here](https://support.microsoft.com/en-us/windows/zip-and-unzip-files-8d28fa72-f2f9-712f-67df-f80cf89fd4e5)
- Mac [Click Here](https://support.apple.com/guide/mac-help/zip-and-unzip-files-and-folders-on-mac-mchlp2528/mac)


# README.md

This document

# TUCR_Database.zip

A compressed directory containing expression, survival, and weighted gene correlation data for all 481 TUCRs. 

This folder must first be extracted before being accessed, using one of the linked methods below:
- Windows [Click Here](https://support.microsoft.com/en-us/windows/zip-and-unzip-files-8d28fa72-f2f9-712f-67df-f80cf89fd4e5)
- Mac [Click Here](https://support.apple.com/guide/mac-help/zip-and-unzip-files-and-folders-on-mac-mchlp2528/mac)

# TinyTeX.zip

Latex compiler that can be used to assist with regenerating the codebook

This folder must first be extracted before being accessed, using one of the linked methods below:
- Windows [Click Here](https://support.microsoft.com/en-us/windows/zip-and-unzip-files-8d28fa72-f2f9-712f-67df-f80cf89fd4e5)
- Mac [Click Here](https://support.apple.com/guide/mac-help/zip-and-unzip-files-and-folders-on-mac-mchlp2528/mac)

# colorcodelist

A list of hex codes used in this project and their colloquial names.

# tucr_project
R project file for the TUCR project

# tucr_project_markdown

R Markdown file containing code used to generate all figures, with workflows included, by clicking "run all chunks" in RStudio. Can be used to regenerate the "TUCR Database" as well, which will be contained within the output directory assigned in the setup section of this document.

To "run all chunks," follow this linked example from RStudio:
- https://forum.posit.co/t/run-all-chunks-below-shortcut/3729

![Run All Chunks Example (Image Form)]("./Inputs/general_files/runchunks_example.png")


# tucr_project_codebook

PDF File of tucr_project_markdown with appropriate section headers





