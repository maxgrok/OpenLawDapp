# OpenLawDapp
OpenLaw Dapp for Funding Bill of Sale Contract

Requirements: Nvm, node (8.9.1), Truffle (5.1), Metamask account and test ether, React ^16.0.0

First, run 'npm install' inside the root directory. <br/>
Second, create your .env file with MNEMONIC="Enter MetaMask Mnemonic here" and INFURA_API_KEY="Enter Infura Project ID here" 
for environment variables. <br/>
Third, run 'truffle migrate --network rinkeby'.<br/>
Fourth, grab the contract address of the BillOfSale deployed on Rinkeby. <br/>
Fifth, sign and create the Bill of Sale in OpenLaw site as seller and buyer. <br/>
Sixth, run 'npm run start' within the client/ directory. <br/>

Click "Fund Contract" and Metamask will pop up, then click "Confirm Receipt" and the balance of the contract will be transferred to the seller. <br/>

To get test ether for rinkeby, go to faucet.rinkeby.io if you don't have any on Rinkeby. <br/>





