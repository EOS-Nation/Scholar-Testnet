# EOS Scholar Testnet

## Install EOS.IO Software

Follow the install instructions from [EOS.IO GitHub repo](https://github.com/EOSIO/eos).

## Release Tag

- `dawn-v3.0.0`

## Configuration Files

- [config.ini](config.ini)
- [genesis.json](genesis.json)

## Telegram - Live Chat

https://t.me/ScholarTestnet

## Block Producers

**New Application**

- Join the Telegram group: [t.me/ScholarTestnet](https://t.me/ScholarTestnet)
- Announce on Telegram you would like to join
- Submit your server credentials:
  - [Google Docs](https://docs.google.com/forms/d/1wUrzzyyzqQAPIGaikxrJEKq9iDnICO9bw4mkaXalu0Y)
  - [GitHub Pull Request](https://github.com/ScholarTestnet/scholar-block-producers)

# systemd

> System and Service Manager for booting EOS

1. Save `*.service` files in `/lib/systemd/system/`
2. Enable service `systemctl enable nodeos.service`
3. Start service `systemctl start nodeos.service`
