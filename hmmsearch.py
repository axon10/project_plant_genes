import requests

parameters = {
    'algo':'hmmsearch',
    'seqdb':'uniprotrefprot',
    'file':"@muscle.fasta'",
    'tax_included':2,
    'output':'json'
}

r = requests.get("https://www.ebi.ac.uk/Tools/hmmer/search/hmmsearch", params=parameters)
print(r.url
#print(r.text)

# modify the range, format and presence of alignments in your results here
res_params = {
    'output': 'json',
    'range': '1,10'
}
