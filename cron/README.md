# Scheduled Scripts

Here are some possible scripts which could be executed on a schedule using `crontab -e`.

## Syncing Block

Updating blocks on a long chain could take several hours,
quickly having access to a S3 bucket with the latest blocks will greatly speed up that procedure.

- [`sync-blocks.sh`](sync-blocks.sh)

## Set up Crontab

Using the following configurations, you can quickly set up your cron jobs.

- [`crontab`](crontab)

## AWS CLI

Amazon Web Services offer many great services such as S3 buckets, get started with AWS CLI tools:

https://aws.amazon.com/cli
