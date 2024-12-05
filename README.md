Hello there! Thank you for visiting my GitHub page!

If you are here, you might be wondering how to run the simulations. Here is the explanation:

To run the simulations, you first need to produce the input files. To do so, run the script "input_production.sh".

"input_production.sh" will make a copy of the reference file (OSR master) and edit it to create a customized input 
file with the desired design. The design parameters are found in "OSR_parameterization_landraces_####.csv". 
This parameterization file includes information for the root phenotype, soil, and atmosphere. Each figure has a 
different parameterization file.

Once you have produced the desired input files, you need to run the simulations using OpenSimRoot git version 9621150b6f. 
You can also find the OSR engine in the folder "OSRv2". You just need to compile it on your computer/cluster, 
and you should be ready to go!

If you have any questions, please send me an email at valdivia@gatersleben.de.

Thank you, and good luck with your simulations!

Ivan Lopez Valdivia
