contract Suicidal {
  address payable owner;
  function suicide() public returns (address) {
    require(owner == msg.sender);
    selfdestruct(owner);
  }
}
contract C is Suicidal {
  constructor() public {
    owner = msg.sender;
  }
}
