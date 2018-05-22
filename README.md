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

## Docker Compose

### Stream Logs

To stream the logs of a running docker container.

```
$ docker-compose logs -f
nodeos    | 1073001ms thread-0   producer_plugin.cpp:585       block_production_loo ] Produced block 000053e2799c0925... #21474 @ 2018-05-22T15:17:53.000 signed by eosio [trxs: 0, lib: 21473, confirmed: 0]
nodeos    | 1073501ms thread-0   producer_plugin.cpp:585       block_production_loo ] Produced block 000053e347c76632... #21475 @ 2018-05-22T15:17:53.500 signed by eosio [trxs: 0, lib: 21474, confirmed: 0]
nodeos    | 1074001ms thread-0   producer_plugin.cpp:585       block_production_loo ] Produced block 000053e4aad85d0b... #21476 @ 2018-05-22T15:17:54.000 signed by eosio [trxs: 0, lib: 21475, confirmed: 0]
nodeos    | 1074501ms thread-0   producer_plugin.cpp:585       block_production_loo ] Produced block 000053e506e4cb3e... #21477 @ 2018-05-22T15:17:54.500 signed by eosio [trxs: 0, lib: 21476, confirmed: 0]
```

## Remove Logs

To clear the logs from your container.

```
$ truncate -s 0 /var/lib/docker/containers/*/*-json.log
```

## Network Speed Test

```
$ curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python -
Retrieving speedtest.net configuration...
Testing from <PROVIDER> (<IP>)...
Retrieving speedtest.net server list...
Selecting best server based on ping...
Hosted by <ISP> (Toronto, ON) [3.45 km]: 3.477 ms
Testing download speed................................................................................
Download: 679.24 Mbit/s
Testing upload speed................................................................................................
Upload: 566.43 Mbit/s
```

## Hardware Properties

### CPU

```
$ sudo lshw -class processor
  *-cpu:0                   
       description: CPU
       product: Intel(R) Xeon(R) CPU E5-2650L v3 @ 1.80GHz
       vendor: Intel Corp.
       physical id: 401
       bus info: cpu@0
       slot: CPU 1
       size: 2GHz
       capacity: 2GHz
       width: 64 bits
       capabilities: fpu fpu_exception wp vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush mmx fxsr sse sse2 ss syscall nx pdpe1gb rdtscp x86-64 constant_tsc arch_perfmon rep_good nopl cpuid pni pclmulqdq vmx ssse3 fma cx16 pcid sse4_1 sse4_2 x2apic movbe popcnt tsc_deadline_timer aes xsave avx f16c rdrand hypervisor lahf_lm abm invpcid_single pti tpr_shadow vnmi flexpriority ept vpid fsgsbase tsc_adjust bmi1 avx2 smep bmi2 erms invpcid xsaveopt
```

### Number of processing units

```
$ sudo nproc
4
```

### RAM

```
$ sudo cat /proc/meminfo
MemTotal:        8168000 kB
MemFree:         2694480 kB
MemAvailable:    7610724 kB
```
