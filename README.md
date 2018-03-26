# EOS Scholar Testnet

## Install EOS.IO Software

Follow the install instructions from [EOS.IO GitHub repo](https://github.com/EOSIO/eos).

## Release Tag

- `SuperDawn-2018-03-04`

## Website

Web Development is being developed here: https://github.com/meet-one/eos-scholar-testnet

## Configuration Files

- [config.ini](eos/data-dir/config.ini)
- [genesis.json](eos/genesis.json)

## Resync Blocks

For faster syncing, an S3 bucket hosts the latest blocks created from the Block Producers. Download these blocks into your `data-dir` folder.

```bash
$ wget https://s3.amazonaws.com/scholar.eosnation.io/blocks.tar.gz
$ tar -zxvf blocks.tar.gz
$ rm -r /path/user-dir/blocks
$ mv blocks /path/user-dir/blocks
$ eosiod --replay
```

### Download via AWS CLI

If your connection stops or timesouts, it would be recommend to use AWS's Command Line Interface to download the S3 Bucket.

**Install**

```bash
$ pip install awscli
$ aws configure (optional - needed for upload)
```

**Download**
```
$ aws s3 cp s3://scholar.eosnation.io/blocks.tar.gz blocks.tar.gz
(Should see a download progress)
```

## Telegram - Live Chat

https://t.me/ScholarTestnet

## Block Producers

Add yourself to the list by submitting your credentials [HERE](https://docs.google.com/forms/d/1wUrzzyyzqQAPIGaikxrJEKq9iDnICO9bw4mkaXalu0Y).

| Block Producer                       | Domain             | HTTP | P2P  | Producer Name  |
|--------------------------------------|--------------------|------|------|----------------|
| [EOS Nation](https://eosnation.io)   | testnet.eosn.io    | 443  | 9876 | einstein, tesla, oppenheimer, campbell, hawking, plato
| [EOSoCal](https://eosocal.io)        | testnet.eosocal.io | 443  | 9876 | descartes, socrates, neitzche, aquinas, locke, marx
| [Meet.one](https://meet.one/en)      | testnet.meet.one   | 443  | 9876 | kant, sartre, epicurus, kierkegaard, rand, hypatia
| [ByStake](http://bystake.com/)       | 52.80.130.81	      | 9989 | 9999 | edison
| [CryptoLions](http://cryptolions.io) | scholartestnet.cryptolions.io | 8912 | 9900 | aristotle
| [Coinstakes](https://coinstakes.io)  | eos.coinstakes.io  | 443  | 9876 | suntzu

## Scheduled Scripts

Here are some possible scripts which could be executed on a schedule using `crontab -e`.

### Syncing Block

Updating blocks on a long chain could take several hours,
quickly having access to a S3 bucket with the latest blocks will greatly speed up that procedure.

- [`sync-blocks.sh`](cron/sync-blocks.sh)

### Set up Crontab

Using the following configurations, you can quickly set up your cron jobs.

- [`crontab`](cron/crontab)

### AWS CLI

Amazon Web Services offer many great services such as S3 buckets, get started with AWS CLI tools:

https://aws.amazon.com/cli


## Network

EOS.IO Software is designed as a `distributed` network.

![network](https://cdn.buttercms.com/oihuotblToORkNDsbJqd)

## BP Security Toolkit

To-Do...
