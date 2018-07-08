pragma solidity ^0.4.13;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/SupplyChain.sol";

contract TestSupplyChain {
    /*address expectedOwner = this;
    uint skuCount = 0;
    Item item1 = Item('chocolate', 1, 10, ForSale, expectedOwner, '0x0000000000000000000000000000000000000000');
    items[0] = item1;*/
    SupplyChain sp1 = SupplyChain(DeployedAddresses.SupplyChain());
    string name1 = 'chocolate';
    uint price = 10;



    function testAddItem() public {
      sp1.addItem(name1, price);
      string expectedName = sp1.items[0].name;
      Assert.equal(name1, expectedName, 'Name of item is not the name passed in.');
    }
    //sp1.addItem(name1, 10);
  //  addItem(water, 20);
    //addItem(salt, 30)
    // Test for failing conditions in this contracts
    // test that every modifier is working

    //buyItem
    /*function testBuyItem() public {
      sp1.buyItem(10);
      //sp1.State currentState = sp1.items[0].state;
      //expectedBuyer = msg.sender;

      Assert.equal(currentState, sp1.State.Sold);
    }*/

    // test for failure if user does not send enough funds
    // test for purchasing an item that is not for Sale


    // shipItem

    // test for calls that are made by not the seller
    // test for trying to ship an item that is not marked Sold

    // receiveItem

    // test calling the function from an address that is not the buyer
    // test calling the function on an item not marked Shipped




}
