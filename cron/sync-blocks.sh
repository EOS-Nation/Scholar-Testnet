#!/bin/sh
# EOS Scholar Testnet - Scheduled Scripts
tar -zcvf /tmp/blocks.tar.gz /home/ubuntu/data-dir/blocks
aws s3 cp /tmp/blocks.tar.gz s3://scholar.eosnation.io/blocks.tar.gz --acl public-read
