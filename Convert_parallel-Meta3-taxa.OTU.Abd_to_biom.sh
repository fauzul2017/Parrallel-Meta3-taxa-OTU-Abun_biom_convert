psc -r < taxa.OTU.Abd | sc -W% - > OTU_bugbase.txt
sed -i -e 's/\tSampleID/#OTU ID/g' OTU_bugbase_tab.txt
sed -i '1s/^/# Constructed from biom file\n/' OTU_bugbase_tab.txt 
sed 's/^\t//g' OTU_bugbase_tab.txt >> OTU.txt
biom convert -i OTU.txt -o table.from_txt_json.biom --table-type="OTU table" --to-json
biom add-metadata -i table.from_txt_json.biom -o final_otu.biom --sample-metadata-fp meta.txt
#biom convert -i final_otu.biom -o final_otu_json.biom  --table-type="OTU table" --to-json


