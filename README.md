# PCAP-Feature-Extraction

There are two scripts in this repository - convert_PCAP_to_JSON.sh and parse_Streams.sh

The Script to parse streams take in a packet capture as input, and outputs multiple files, per TCP and UDP flow. When the Conversion Script is run however, all files in the directory with a PCAP extension will be converted to JSON. 

Use cases of the output files include:
  - Analysis for Big Data
  - Extract features for prediction in a Machine Learning algorithm
