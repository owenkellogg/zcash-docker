# Zcash Docker

Zcash is an encrypted blockchain, a fork of bitcoin that uses
zero-knowledge cryptography to hide the details of private transactions
between two parties.

## Usage

Docuemntation for running a node is in the [Public Alpha Guide](https://github.com/zcash/zcash/wiki/Public-Alpha-Guide).

### Start the daemon

````
docker run -d --name zcashd stevenzeiler/zcashd
````

### Interact with the Zcash CLI
Once the zcashd program is running in your container you can use the
zcash-cli program to manage your money and the blockchain

````
docker exec zcashd ./src/zcash-cli getinfo
````

### Generate a new address to receive payment

````
docker exec zcashd ./src/zcash-cli getnewaddress
````

