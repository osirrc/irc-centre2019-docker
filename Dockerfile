FROM python:3

WORKDIR /work/

RUN mkdir data/ data/raw data/clean \
    data/clean/wapo/ data/raw/wapo/ \
    data/clean/times/ data/raw/times/ \
    data/clean/robust/ data/raw/robust/ \
    data/clean/aquaint/ data/raw/aquaint/ \
    data/clean/union_wapo_robust/ data/clean/union_wapo_robust_aquaint/ \
    data/raw/union_times_robust/ data/clean/union_times_robust_aquaint/ \
    data/clean/union_robust_aquaint/ data/raw/union_robust_aquaint/ \
    tmp_extract/ tmp/ artifact/ \
    artifact/runs/ artifact/feat/ \
    artifact/tfidf/ artifact/score/ \
    artifact/feat/topic-based/ artifact/runs/single/ \
    /output

COPY init /
COPY index /
COPY search /
