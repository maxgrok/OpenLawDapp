pragma solidity ^0.5.0;

contract BillOfSale {
    address payable public seller;
    address payable public buyer;
    string public descr;
    uint public price;
    bool public confirmed;

    function recordContract(string memory _descr, uint _price, address payable _seller, address payable _buyer) public { // takes in description for item, purchase price, buyer and seller ETH addresses
        descr = _descr;
        price = _price;
        seller = _seller;
        buyer = _buyer;
    }

function () external payable { }

function confirmReceipt() public payable { // allows the buyer to confirm receipt of their item and release funds stored in the contract to the seller
    require(msg.sender == buyer, "only buyer can confirm");
    require(address(this).balance == price, "purchase price must be funded");
    address(seller).transfer(address(this).balance);
    confirmed = true;
    }
}