contract Bank{
    mapping (address => uint) userBalance;
   
    function getBalance(address u) public view returns(uint){
        return userBalance[u];
    }

    function addToBalance() external payable {
        userBalance[msg.sender] += msg.value;
    }   

    function withdrawBalance() public{
        (bool success, ) = msg.sender.call{value:userBalance[msg.sender]}("");
        require(success);
        userBalance[msg.sender] = 0;
    }   
}
