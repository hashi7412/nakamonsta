const NakamonstaAuction = artifacts.require("./NakamonstaAuction.sol");
//*const utils = web3.utils;

async function createAnAuctionFor(nakamonstaId, account) {
  var contract = await NakamonstaAuction.deployed();
  //*const startPrice = web3.utils.toWei("1", "ether");
  const startPrice = web3.utils.toWei("1", "ether");
  console.log("Create an auction on: (*) " + nakamonstaId);
//*  var startPricePrime = 2 * startPrice;
//*  await contract.createAuction(nakamonstaId, startPrice, startPrice, 1000000);
//*  console.log("Create an auction on: " + nakamonstaId);

//*  var contract = await NakamonstaAuction.deployed();
//*  const startPrice = web3.toWei("1", "ether");
//*  await contract.createAuction(nakamonstaId, startPrice, startPrice, 100000, {from:web3.eth.getaccounts[account]});
  await contract.createAuction(nakamonstaId, startPrice, startPrice, 100000);  
//*  let accounts1 = await web3.eth.getaccounts();
//*  await contract.createAuction(nakamonstaId, startPrice, startPrice, 100000, {from:accounts1[account]});  
//*  await contract.createAuction(nakamonstaId, startPrice, startPrice, 100000, {from:web3.eth.getaccounts().then( function (results) {return results[1]})});

  console.log("Create an auction on: " + nakamonstaId);
}

module.exports = function(callback) {
  createAnAuctionFor(1, 0);
  createAnAuctionFor(2, 1);
  createAnAuctionFor(3, 1);
  createAnAuctionFor(4, 0);
  createAnAuctionFor(5, 0);
  createAnAuctionFor(6, 1);
  createAnAuctionFor(7, 1);
  createAnAuctionFor(8, 0);
  createAnAuctionFor(9, 0);
  createAnAuctionFor(10, 0);
  createAnAuctionFor(11, 1);

/*  createAnAuctionFor(1, 0);
  createAnAuctionFor(2, 1);
  createAnAuctionFor(3, 1);
  createAnAuctionFor(4, 0);
  createAnAuctionFor(5, 0);
  createAnAuctionFor(6, 1);
  createAnAuctionFor(7, 1);
  createAnAuctionFor(8, 0);
  createAnAuctionFor(9, 0);
  createAnAuctionFor(10, 0);
  createAnAuctionFor(11, 1);*/
};
