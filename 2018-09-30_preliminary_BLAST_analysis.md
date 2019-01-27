#Preliminary Blast Analysis

*Emre Ovet*

*eovet@dons.usfca.edu*

By looking at the QC checks we ran with Fatqc files, it is possible to say that the sequences look to
be sufficient quality since none of them flagged as poor quality in the basic statistics section and
also all the samples got a high score in per sequence quality. However ,1/4 of them have a significant 
decrease in their per sequence quality starting from 210-214 bps which tells us that there is something
unusual going on through the ends of those sequences. Another remarkable abnormality about the sequences
is that all of them have a very high content of T, G and C between 1-9 bps and also the overall G-C
content in each sequence is way higher than the theorethical content. This might be explained as a 
techical problen of Illumina sequencers as they tend to exhibit a bias when sequencing G-C rich 
regions, but this still doesn't explain why we had such a high T concentration at the beginning 
of each sequence. Moreover, we observe that the sequence CTGGGCCGTGTCTCAGTCCCAGTGTGGCTGATCATCCTCTCAGACCAGCT
is highly repeated in each file. This number of this repeated sequence is 2 to 130 times
higher then the second most repeated sequence. It contains a high amount of G,T and C which is
relevant to our previous abnormality. Another unusual feature of our sequences is that there is a sharp
increase in sequence length distributions between ~200-250 bps.   

The top 5 organisms hit from the BLAST are
 635 Aquitalea sp.
 750 Acinetobacter haemolyticus
 1164 Bacteroidetes endosymbiont of Metaseiulus occidentalis
 1583 Bartonella washoeensis
 2371 Solemya pervernicosa gill symbiont

By a quick research, we found out that the Aquitalea sp. is a a rod-shaped, gram-negative bacterium with
high sequence identity to Aquitalea magnusonii based on 16S rRNA gene analysis and also that Aquitalea sp.
possessed a PHA synthase gene (phaC), which had amino acid sequence identity of 77-78% to the PHA synthase
of Chromobacterium violaceum ATCC12472 and Pseudogulbenkiania sp.. We further found out that Acinetobacter
haemolyticus is a clinically important pathogen with widespread resistance to various antibiotics, that
Bacteroidetes endosymbiont of Metaseiulus occidentalis contains multiple genomes, including the genomes of
several microbial symbionts as well as its own mitochondrial and nuclear genomes and also it has a
parahaploid genetic system, tolerates inbreeding, and has a haploid chromosome number of 3. For Bartonella
washoeensis, we learned that it can cause meningitis in humans and for Solemya pervernicosa gill symbiont,
we learned that it can produce energy by oxidizing hydrogen sulfide, which is used to fix carbon dioxide 
via the Calvin Cycle.
