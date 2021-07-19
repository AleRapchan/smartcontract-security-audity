contract Bank1{
    address payable owner;

    modifier onlyowner {
        require(msg.sender==owner);
        _;
    }

    function setOwner()
        public 
    {
        owner = msg.sender;
    }

    function withdraw() 
        public 
        onlyowner
    {
       owner.transfer(address(this).balance);
    }
}
