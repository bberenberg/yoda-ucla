FROM ubuntu
RUN apt-get update && apt-get install -y python3 python3-pip wget git
RUN pip3 install install biopython
RUN pip3 install --user git+https://github.com/katholt/Kaptive
RUN mkdir ~/genome-data ~/kaptive ~/output
RUN wget http://http.us.debian.org/debian/pool/main/n/ncbi-blast+/ncbi-blast+_2.10.1+ds-1_amd64.deb
RUN apt-get install -y ./ncbi-blast+_2.10.1+ds-1_amd64.deb
RUN wget https://github.com/katholt/Kaptive/raw/master/reference_database/Acinetobacter_baumannii_k_locus_primary_reference.gbk -P ~/kaptive/
