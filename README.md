# CryptoMiner_tvOS
A Monero miner written in swift for tvOS
## About
CryptoMiner_tvOS is a ported version of Tendigi's XMRMiner (https://github.com/TENDIGI/XMRMiner) meant to run on tvOS. This was a simple project to see if I could a crypto-miner running on tvOS and it works!

## How to run
First set your monero wallet address:
```let miner = Miner(destinationAddress: "your_monero_address")```
Then run the sample project. If it's mining very slow then everything is working correctly 😂 I've noticed, unsurprisingly, that it runs significantly faster on an Apple TV 4k than a first-gen Apple TV. Happy mining!
