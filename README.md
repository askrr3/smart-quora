# SmartQuora

**SmartQuora** is an application that enables knowledge sharing among participants while incentivizing answers that are meaningful and well-explained. *Inquirers* pose questions with a reward for the best answers and a due-date by which they are looking for an answer. *Responders* compete with each other to provide the best answers. Participants can like or dislike answers. When the due-date arrives the answers are tallied and the reward is shared proportionately among the responders such that the best answers gets the most earnings.  To avoid abuse of the platform, inquirers cannot answer their own questions and respondents cannot vote for their own answers.

Technically speaking, SmartQuora is a *DApp* (Decentralized Application) built on top of the HLF - Hyperledger Fabric Blockchain decentralized peer-to-peer network. It uses Smart Contracts built using HLF Composer API to represent Questions and Answers which contains rules to manage the process and payout. 

SmartQuora uses a Javascript-based front-end web application to communicate withe the Blockchain platform on which the Smart Contracts reside using a RESTful interface. It uses Passport for authentication of participants using OAuth protocol and allows maintenance of their digital wallets through which the participants can manage their Digital Identities. These Digital Identities are generated and managed using the Hyperledger Fabric platform.

## Audience
You are a Developer or Solutions Architect wanting to learn and build robust, secure and scaleable decentralized applications using open source framework such as Hyperledger Fabric to take full advantage of the autonomy point that a blockchain protocol provides without a central point of failure.

As you are building this application, you will learn about the Hyperledger Fabric blockchain framework, Hyperledger Fabric Composer API, Passport authentication middleware, Docker containerization and various development scaffolding frameworks such as Yeoman, Loopback etc. discussed below.

## Architecture
The Hyperledger Fabric blockchain platform that SmartQuora uses for this demonstration is built on top of AWS EC2 platform. It uses Docker containers to host various parts of the Hyperledger Fabric components such as the endorser, committer, ledger  (store) , orderer (consensus service) and the chain-code.

The following diagram provides a high-level component diagram of the SmartQuora DApp. 

![SmartQuora Component Diagram](https://github.com/skarlekar/smart-quora/blob/master/images/smartquora-components.png)

As such, the blockchain is a distributed system consisting of many nodes that communicate with each other. The blockchain runs programs called chaincode, which holds state and ledger data, and executes transactions. The chaincode is the central element as transactions are operations invoked on the chaincode. Transactions have to be “endorsed” and only endorsed transactions may be committed and have an effect on the state. 

DApps such as SmartQuora consists of Smart Contracts that are translated to chaincode. This chaincode is then deployed into the blockchain. Storage of state information differs across blockchain platforms. The default mechanism of persistent state storage in Hyperledger Fabric is CouchDB which is a JSON store.

Aside from storage, a DApp requires a service layer to communicate with the chaincode on the blockchain and a front-end for user interaction. SmartQuora takes advantage of the Hyperledger Composer REST server which uses Loopback to generate a REST server and maps it to the transactions and queries on the DApp.

SmartQuora DApp uses the OAuth authentication strategy of the Passport authentication middleware to secure the app. Specifically, it uses the Passport Google OAuth delegated authentication strategy allowing users to authenticate them

The following diagram depicts a single-node view of the SmartQuora DApp.
![single node view](https://github.com/skarlekar/smart-quora/blob/master/images/smartquora-arch-single-node-view.png)


> Written with [StackEdit](https://stackedit.io/).
<!--stackedit_data:
eyJoaXN0b3J5IjpbODA2NTI1MjYwLC02MTAzNzQwMCwtMTUzMj
QwOTcyNiwxMjE0NTE2NjYsLTE3NDcyMTQyNTQsMjExNTQ0NzU1
NCwxNjM2ODkxMzk5LC0xNzY4MjQ4MTQ5LC0yMTMyNTU1ODYzXX
0=
-->