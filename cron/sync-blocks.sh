#!/bin/sh
# EOS Scholar Testnet - Scheduled Scripts
# Sync/Update EOS Blocks to AWS S3 bucket
rm -f /tmp/blocks.tar.gz
tar -zcvf /tmp/blocks.tar.gz /home/ubuntu/data-dir/blocks
/usr/local/bin/aws s3 cp /tmp/blocks.tar.gz s3://scholar.eosnation.io/blocks.tar.gz --acl public-read
