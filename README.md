#Prerequisite
#All required setup like git, node, npm, truffle installed

#create a new folder
> mkdir myERC20

#change directory
> cd myERC20

#Initialize a truffle project
> truffle init

#Skeleton structure of a truffle project should be created

#Launch your code editor (You can lauch Visual Studio Code, if rightly intalled from the prompt , like this)
> code .

#Intialize the project as a npm project for managing project dependencies
> npm init --your

#package.json file with default project details is seen and created

#Download the required project dependecy
#For openzeppelin contracts
> npm install --save @openzeppelin/contracts

#You shoudl see node_modules folder created and it contains all the contracts from the @openzeppelin/contracts github repo

#Under the contracts folder, create a file MyERC20.sol, Copy paste the code to your file

#Change compiler version in truffle-config.js file to the one of your choice as in your solidity file.
#Recomended is 0.6.12 , latest supported as of date writing this project

#compile the contracts
> truffle compile

#make sure you have no errors

#Add the migration script. Create a file with increasing interger number in migrations folder.
#Created 2_token_migration.js
#this is tell truffle that you want to migrate the token contract aswell when you want migrate the contracts to the chain

#Start your dev blockchain simulator
> truffle develop

#you should see it creating 10 address and a new node JS console is seen for interaction with chain
truffle (develop)>

#migrate /deploy your contracts, they are just aliases
truffle (develop)> migrate

#your contracts should get deployed
______________________________________

#interact with the deployed contract
truffle(develop)> let myerc = await MyERC20.deployed()
undefined

#undefined is fine. Its expected

#check a few token contract functions
truffle(develop)> myerc.symbol()
'MY'

#the blockchain simulator comes with 10 supported address for testing
truffle(develop)> accounts
[
  <you will see addresses here>
]

#check the token balance of the token deployer
truffle(develop)> myerc.balanceOf(accounts[0])
BN {
  negative: 0,
  words: [ 2000, <1 empty item> ],
  length: 1,
  red: null
}

#check the token balance of another account
truffle(develop)> myerc.balanceOf(accounts[1])
BN {
  negative: 0,
  words: [ 0, <1 empty item> ],
  length: 1,
  red: null
}

#tranfer the token to another address
truffle(develop)> myerc.transfer(accounts[1], 1)
{
  tx: '<tx hash here>',
  receipt: {
		<receipt of the transaction here>
  },
  logs: [
    {
		<event information of the contract here>
    }
  ]
}

#recheck the balances as in the previous step and you can check that the token transfer is complete.
