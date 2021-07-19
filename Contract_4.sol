contract Auction {
  address payable currentFrontrunner;
  uint currentBid;

  function bid() public payable {
    require(msg.value > currentBid);


    if (currentFrontrunner != address(0)) {

      require(currentFrontrunner.send(currentBid));
    }

    currentFrontrunner = msg.sender;
    currentBid         = msg.value;
  }
}
