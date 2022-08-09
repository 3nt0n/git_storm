# Practical Course - Recent Advances in Model Checking

##Group 4 - Correct Probabilistic Model Checking with Floating-Point Arithmetic

This folder contains all files that were used for this project.
It contains following folders:

-benchmarks
-Other Files and Tests
-paper_tests
-plots
-presentation
-storm_files

##Folder - benchmarks

This folder contains all the benchmarks that were used.
The 3 algorithms "vanilla storm with interval-iteration", "storm with our modified interval-iteration" and
"storm with option --exact" were run on the benchmarks.
The storm algorithms were the same as the one used on the benchmarks,only slightly modified (see https://qcomp.org/benchmarks/ - click on 'SHOW' for a storm benchmark to see the storm command)

The file 0_all_infos_benchmarks contains the output for each of the benchmarks, first the file name of the benchmark is displayed, then the algorithm for it.
The first output is from the modified interval-iteration (eg. storm --jani beb.3-4.v1.jani --janiproperty --constants N=3  --timemem --minmax:method interval-iteration),
the second output (below the xxxxxxxx) is the vanilla/standard interval-iteration (eg. storm --jani beb.3-4.v1.jani --janiproperty --constants N=3  --timemem --minmax:method interval-iteration ; same algorithm as first one, but improvedIntervalIteration is set to false in the code).
The third output (below the +++++++++) is the algorithm provided from the benchmarks (eg. storm --jani beb.3-4.v1.jani --janiproperty --constants N=3  --timemem --exact)

Not all benchmarks were fully tested on, also only a few benchmarks made it into the plots and final presentation due to the too large number of benchmarks.


##Folder - Other files and texts

This folder contains the relevant papers and the less relevant code used to play around with the fesetround function


##Folder - paper_tests

This folder contains the tests to reproduce the examples mentioned in the paper.
The property was shortened from the code in the paper ( P<=0.5 [s=1 | s=2 | s=5 | s=6 U s=3] instead of P=? [s=8 U (P<=0.5 [s=1 | s=2 | s=5 | s=6 U s=3])]) because the property in the paper couldn't be run in Prism.

The commands are listed in terminal.txt. The file locations are probably different than what we used, so the commands need to be modified accordingly


##Folder - plots

This folder contains the relevant data on the benchmarks we used in the endterm presentation as well as the plots we created.


##Folder - presentation

This folder contains both Midterm and Endterm presentations and some additional images we used in them


##Folder - storm_files

This folder contains the file with the modified algorithm used. To use it, replace the file (after making a backup) IterativeMinMaxLinearEquationSolver.cpp in the folder storm > src > storm > solver > IterativeMinMaxLinearEquationSolver.cpp with this file. Afterwards run 'make' in the storm > build folder to make it work with your installation of storm.
Afterwards you should be able to run the algorithm by adding '--minmax:method interval-iteration' to your storm command.

The relevant algorithm starts at line 551.
You can turn on/off the modified algorithm and output intermediate values by changing the boolean variables 'bool improvedIntervalIteration' and 'bool print_intermediate_results' to true or false, before running 'make'.
