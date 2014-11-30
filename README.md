ants
====

Notebook for ant projects at Harvard Forest.
Matthew K. Lau


Questions:
- Ant genetic (SNP) bioeographic pattern analysis
- Genetic correlation with climate (past, present, future)
- Genetic networks?

30nov2014
SNP analysis outline
- Spatial SNP patterns
- Climate/environmental covariates covariates
- Trees?
- Model papers?
- Gene flow networks?

17nov2014

Harvard Odyssey
Training on 09dec2014
https://rc.fas.harvard.edu/resources/odyssey-quickstart-guide/
https://rc.fas.harvard.edu/resources/access-and-login/
https://rc.fas.harvard.edu/resources/running-jobs/

Mason Server Information
https://kb.iu.edu/d/bbhh#software
https://kb.iu.edu/d/bcwy ###Saving software
https://kb.iu.edu/d/bcxp  ###Using modules to save software environments
https://kb.iu.edu/d/bakh ###On XSEDE, how do I manage my software 

Processing FASTA files posted on Mason. 

They have not been filtered in any way, just demultiplexed. 

The first steps will be to remove the restriction site (first 4 bases
of every sequence) with fastq-trimmer and remove sequences with 3' end
problems in quality (not quite sure what quality cutoffs we want to
keep a sequence, may have to troubleshoot this) with
fastq-quality-filter.  These are just what I tend to use, but I'm open
to other software to do these tasks. I don't actually see fastx-tools
on the available module list, so you may need to install in your home
directory.

