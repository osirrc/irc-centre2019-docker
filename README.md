# Running

Download the [jig](https://github.com/osirrc2019/jig) and prepare [trec_eval](https://github.com/usnistgov/trec_eval).
Use the commands below to get the runs for WCRobust04 and WCRobust0405 as they were
replicated in the course of our participation in [CENTRE@CLEF19](http://www.centre-eval.org/clef2019/).

## Prepare

Specify the paths to the three required corpora Robust04, Robust05 and Core17.
The run argument has to be either "wcrobust04" or "wcrobust0405".

```
python run.py prepare \
    --repo breuert/wcrobust0405 \
    --collections robust04=/path/=trectext \
                  robust05=/path/=trectext \
                  core17=/path/=trectext \
    --opts run="wcrobust04"
```

## Search

Depending on specified run in the previous step, an output file named "wcrobust04" or "wcrobust0405" will be dumped into the output directory.

```
python run.py search \
    --repo breuert/wcrobust0405 \
    --collection core17 \
    --topic topics/topics.core17.txt \
    --output /path/to/output/ \
    --qrels qrels/qrels.core17.txt
```
