pragma solidity ^0.4.24;

import "./NakamonstaUtils.sol";
import "./NakamonstaBase.sol";


contract NakamonstaMating is NakamonstaBase {
//*  uint128 public matingPrice = 10000000000000000; //* in wei
  uint128 public matingPrice = 0.01 ether;

  // --------------------------------
  // Admin functions (onlyOwner)
  // --------------------------------
  function setMinimumPrice(uint128 _matingPrice) public onlyOwner {
    matingPrice = _matingPrice;
  }

  // --------------------------------
  // Public methods
  // --------------------------------
  //*function mate(uint _tokenIdMother, uint _tokenIdFather) public
  //*isOwnerOf(_tokenIdMother) isOwnerOf(_tokenIdFather) payable{
  //*  return;
  //*} 

//*  function mate(uint _tokenIdMother, uint _tokenIdFather) public isOwnerOf(_tokenIdMother) isOwnerOf(_tokenIdFather) payable returns(uint) {
//*    require(msg.value == matingPrice, "matingPrice isn't met");
//*    return _mate(_tokenIdMother, _tokenIdFather);
//*  }

  // --------------------------------
  // Utils
  // --------------------------------
//*  function _mate(uint _tokenIdMother, uint _tokenIdFather) internal
//*  isReady(_tokenIdMother) isReady(_tokenIdFather)
//*  returns(uint) {

//*  function _mate(uint _tokenIdMother, uint _tokenIdFather) internal returns(uint) {

//*    require(_tokenIdMother != _tokenIdFather, "Mother and father must be different");

//*    Nakamonsta storage mother = nakamonstas[_tokenIdMother];
//*    Nakamonsta storage father = nakamonstas[_tokenIdFather];

//*    Nakamonsta memory mother = nakamonstas[_tokenIdMother];
//*    Nakamonsta memory father = nakamonstas[_tokenIdFather];

    // Calculate new genes
//*    uint babyGenes = NakamonstaUtils._mixGenes(father.genes, mother.genes);
//*    uint babyGenes = NakamonstaUtils._mixGenes(0x0001000000000000000000000000000000000000000000000000000000000000, 0x0001000100000000000000000000000000000000000000000000000000000000);    
//*    uint babyGenes = NakamonstaUtils._mixGenes(nakamonstas[_tokenIdFather].genes, nakamonstas[_tokenIdMother].genes);

    // Create new nakamonsta,
//*    uint babyNakamonstaId = _createNakamonsta(ownerOf(_tokenIdMother), "Baby", babyGenes, uint64(_tokenIdMother), uint64(_tokenIdFather));

    // After mating/giving birth, both parents must rest for 2 days
//*    mother.readyDate = uint64(now + 2 days);
//*    father.readyDate = uint64(now + 2 days);

    // Baby becomes adult after 7 days
//*    nakamonstas[babyNakamonstaId].readyDate = uint64(now + 7 days);
//*    return babyNakamonstaId;
//*    return;
//*  }



//*//*     function mate(uint _tokenIdMother, uint _tokenIdFather) public isOwnerOf(_tokenIdMother) isOwnerOf(_tokenIdFather) isReady(_tokenIdMother) isReady(_tokenIdFather) payable returns(uint) {
//*     function mate(uint _tokenIdMother, uint _tokenIdFather) public payable returns(uint) {       
//*//*       require(msg.value == matingPrice, "matingPrice isn't met");
//*//*       require(_tokenIdMother != _tokenIdFather, "Mother and father must be different");

//*             Nakamonsta storage mother = nakamonstas[_tokenIdMother];
//*             Nakamonsta storage father = nakamonstas[_tokenIdFather];
//*//*             uint babyGenes = NakamonstaUtils._mixGenes(0x0001000000000000000000000000000000000000000000000000000000000000, 0x0001000100000000000000000000000000000000000000000000000000000000);
//*//*             uint babyGenes = NakamonstaUtils._mixGenes(nakamonstas[_tokenIdFather].genes, nakamonstas[_tokenIdMother].genes);
//*             uint babyGenes = NakamonstaUtils._mixGenes(father.genes, mother.genes);
//*//*             uint babyNakamonstaId = _createNakamonsta(ownerOf(_tokenIdMother), "Baby", babyGenes, uint64(_tokenIdMother), uint64(_tokenIdFather));
//*             uint babyNakamonstaId = _createNakamonsta(0x28605DabE0013C1F3d90237889a86D67a237CEBb, "Baby", babyGenes, uint64(_tokenIdMother), uint64(_tokenIdFather));
//*//*             uint babyNakamonstaId = _createNakamonsta(ownerOf(5), "Baby", babyGenes, 5, 4);
//*             uint babyNakamonstaId = _createNakamonsta(0x28605DabE0013C1F3d90237889a86D67a237CEBb, "Baby", babyGenes, 5, 4);             
//*//*   0x28605DabE0013C1F3d90237889a86D67a237CEBb
//*//*   0x0001000000000000000100010000000000000000000000000000000000000000
//*//*       return _mate(_tokenIdMother, _tokenIdFather);
//*//*       mother.readyDate = uint64(now + 2 days);
//*//*       father.readyDate = uint64(now + 2 days);

    // Baby becomes adult after 7 days
//*             nakamonstas[babyNakamonstaId].readyDate = uint64(now    + 7 days);
//*       return;
//*  }

      function mate(uint _tokenIdMother, uint _tokenIdFather) public isOwnerOf(_tokenIdMother) isOwnerOf(_tokenIdFather) payable returns(uint) {
        require(msg.value == matingPrice, "matingPrice isn't met");
        return _mate(_tokenIdMother, _tokenIdFather);
      }

      function _mate(uint _tokenIdMother, uint _tokenIdFather) internal
      isReady(_tokenIdMother) isReady(_tokenIdFather)
      returns(uint) {
        require(_tokenIdMother != _tokenIdFather, "Mother and father must be different");


       Nakamonsta storage mother = nakamonstas[_tokenIdMother];
       Nakamonsta storage father = nakamonstas[_tokenIdFather];


       // Calculate new genes
       uint babyGenes = NakamonstaUtils._mixGenes(father.genes, mother.genes);


       // Create new nakamonsta,
       uint babyNakamonstaId = _createNakamonsta(ownerOf(_tokenIdMother), "Baby", babyGenes, uint64(_tokenIdMother), uint64(_tokenIdFather));

       // After mating/giving birth, both parents must rest for 2 days
       mother.readyDate = uint64(now + 2 days);
       father.readyDate = uint64(now + 2 days);

       // Baby becomes adult after 7 days
       nakamonstas[babyNakamonstaId].readyDate = uint64(now + 7 days);
       return babyNakamonstaId;
   }
}
