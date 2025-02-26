/*
Master do-file for replication of:
"Cycles of Deforestation? Politics and Forest Burning in Indonesia"
Authors: Clare Balboni, Robin Burgess, Anton Heil, Jonathan Old, Ben Olken
*/

/*----------------------------------------------------
[>   1.  Global settings   <]
PLEASE CHANGE "user" FILE PATH TO YOUR LOCAL FOLDER DIRECTORY
----------------------------------------------------*/
global user "/Users/jonathanold/Dropbox/_Predoc Research/Forest Fires/P&P paper/Replication files/"
global data "${user}/data"
global output "${user}/output"

cap mkdir "${user}/code"
cap mkdir "${user}/data"
cap mkdir "${user}/output"
cap mkdir "${user}/output/tables"
cap mkdir "${user}/output/figures"

set scheme s2color
graph set window fontface "Palatino Linotype"

clear all
set more off
set matsize 10000


local packages poi2hdfe hdfe reg2hdfe		
foreach p of local packages {
	cap which `p'.ado
	if _rc==111 ssc install `p'
	}


set seed 987654321															 

 
/*----------------------------------------------------*/
   /* [>   2.  Run replication do-files   <] */ 
/*----------------------------------------------------*/
/* [> Run replication of main paper figure <] */ 
do "${user}/code/main.do"

/* [> Run replication of online appendix materials <] */ 
do "${user}/code/appendix.do"

/*------------------------------------ End of file ------------------------------------*/
