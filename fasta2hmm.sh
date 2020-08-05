#!/bin/bash
echo $1
return
root=https://www.ebi.ac.uk/Tools/hmmer/
fasta=args from cmd
prank -d=$fasta -o=output.fas -translate

# align the fasta using 

curl -L -H 'Expect:' -H 'Accept:text/xml' -F range=1,10 -F taxFilterType=search -F tax_included=2 
-F seqdb=uniprotrefprot -F seq='<muscle.fasta' ${root}search/hmmsearch -o hits.json

# open the json file and then get the UUD
# get top 100 most significant sequences
curl -L -H 'Expect:' -H 'Accept:text/xml' ${root}results/$UUID?output=text&ali=1&range=1,100 -o sig_hits.json

# parse each hit in the json, add it to the raw fasta
#magic with cat
prank -d=$fasta -o output
hmm build -output


