# EOS Scholar Testnet

## Install EOS.IO Software

Follow the install instructions from [EOS.IO GitHub repo](https://github.com/EOSIO/eos).

## Release Tag

- `SuperDawn-2018-03-04`

## Website

https://scholartestnet.github.io/

![website](https://user-images.githubusercontent.com/550895/37928288-5d44eaee-310a-11e8-92f4-7b10d2a1a4d7.png)

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

**New Application**

1. Join the Telegram group: [t.me/ScholarTestnet](https://t.me/ScholarTestnet)
2. Announce on Telegram you would like to join
3. [Submit your server credentials](https://docs.google.com/forms/d/1wUrzzyyzqQAPIGaikxrJEKq9iDnICO9bw4mkaXalu0Y).
4. You will be appointed a `producer-name` by one of the community members.

**Update Info**

1. Update [`producers.js`](https://github.com/ScholarTestnet/ScholarTestnet.github.io/blob/master/producer.js) by submitting a Pull Request.

### Install SSL with LetsEncrypt

Please only add HTTPS (SSL) servers to the list of producer.js, the P2P port doesn't have to be using SSL, but at least the incoming HTTP server.

https://medium.freecodecamp.org/going-https-on-amazon-ec2-ubuntu-14-04-with-lets-encrypt-certbot-on-nginx-696770649e76

## Scheduled Scripts

Here are some possible scripts which could be executed on a schedule using `crontab -e`.

### Syncing Block

Updating blocks on a long chain could take several hours,
quickly having access to a S3 bucket with the latest blocks will greatly speed up that procedure.

- [`sync-blocks.sh`](cron/sync-blocks.sh)

### Set up Crontab

Using the following configurations, you can quickly set up your cron jobs.

- [`crontab`](cron/crontab)

## Network

EOS.IO Software is designed as a `distributed` network.

![network](https://cdn.buttercms.com/oihuotblToORkNDsbJqd)
