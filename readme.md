This is the Twosides dataset for the paper "HDN-DDI: a novel framework for predicting drug-drug interactions using hierarchical molecular graphs and enhanced dual-view representation learning" (Paper | [Code](https://github.com/jcsun-00/HDN-DDI.git))

The Twosides dataset was originally proposed by [Tatonetti et al.](https://doi.org/10.1126/scitranslmed.3003377)

The version used in the HDN-DDI paper is derived by [Zitnik et al.](https://doi.org/10.1093/bioinformatics/bty294) and it is the same as that used in the [DSN-DDI](https://doi.org/10.1093/bib/bbac597) and other papers. Specifically, the Twosides used here includes 645 drugs with 963 types of interactions and 4,576,287 positive DDI instances.

Note that: Since the `CSV` file is too large, we use `7z` to compress it. If you want to use it, please install `7z` first and then execute `decompress.sh` as follow:
```bash
sudo apt update
sudo apt-get install p7zip-full
sh decompress.sh
```

If you want to use this dataset to verify the performance of HDN-DDI, please download the dataset and place the files according to the following structure:
```
- twosides_test /
    - twosides /
        - fold0 /
            - train.csv
            - test.csv
        - fold1 /
            - train.csv
            - test.csv
        - fold2 /
            ...
        - fold3 /
            ...
        - fold4 /
            ...
        - ddis.csv
        - drug_smiles.csv
        - id_data_dict_dsn_full_connect.pkl
    - transductive_test.py
    - inductive_test.py
    - ...
```
