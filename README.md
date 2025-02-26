# Replication guide for: Cycles of Fire? Politics and Forest Burning in Indonesia

This folder contains data and do-files necessary to reproduce the tables and figures included in
the paper *Cycles of Fire? Politics and Forest Burning in Indonesia*, by Clare Balboni, Robin Burgess,
Anton Heil, Jonathan Old, and Ben Olken, AEA Papers and Proceedings, Vol. 111, May 2021.

The authors are making the dataset used in this paper publicly available. Information on how
this dataset is compiled is included in the online appendix to the paper.

## Files
The unzipped folder contains the following files:
* ```README.pdf```: This file.
* ```replication_tables.tex```: This file adds table headings and footers and generates the
tables in the layout of the online appendix.
* In folder data: This folder contains one file:
  - ```data/data_cycles_of_fire.dta```: This is the district-year level dataset used for all
analyses.
* In folder code: This folder contains three files:
  - ```code/master.do```: sets up file paths, installs necessary additional programs (.ado-
files), and runs the other .do-files
  - The file ```code/main.do```: this do-file replicates the analyses and produces the figure
for the main text
  - The file ```code/appendix.do```: This do-file replicates the analyses and produces tables
and figures for the online appendix.

## Instructions for replication
* In ```code/master.do```, adjust the path to the user’s working directory (```global "user"```, code
line 11)
* ```code/master.do``` automatically creates a third subfolder, output, in which the output fig-
ures and tables will be stored.
* The table body of the appendix tables are generated and stored in the ```.tex``` file format.

After the do-files have run, compile the file ```replication_tables.tex``` in pdftex. This adds
table headings and footers, and generates the tables in the layout of the online appendix.
