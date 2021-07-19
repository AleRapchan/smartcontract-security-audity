# Audit Report
![Logo](https://alexandrebarros.com/global/audit-report/audit-report-2021-small.png?alt=audit-report)

## Disclaimer
This  Report  is  subject  to  the  terms  and  conditions  (including  without  limitation,  de-scription  of  services,  confidentiality,  disclaimer  and  limitation  of  liability)  set  forth  in the Verification Services Agreement between the developer and the client, or the scope of services/verification, and terms and conditions provided to the client in connection with the verification (collectively,  the “Agreement”).  This Report provided in connection with the Services set forth in the Agreement shall be used by the client only to the extent permitted under the terms and conditions set forth in the Agreement. This Report may not be transmitted, disclosed, referred to or relied upon by any person for any purposes without developer’s prior written consent.

All claims, content, designs, algorithms, estimates, roadmaps, specifications, and performance measurements described in this project are done with the developer's best efforts. It is up to the reader to check and validate their accuracy and truthfulness. Furthermore, nothing in this project constitutes a solicitation for investment. The developer accepts no liability for any loss or damage suffered as a result of using software code downloaded directly from this website.

## Overall system:
Bank smart contract written in Solidity to map addresses with user's balance.

### Objectives:
- Method to get user's balance
- Method to add amount to the user's account
- Method to withdraw value from the user's account

### What should not be possible:
- Someone sees the balance of another account that it's not its own
- Another users withdraw someone else's balance

## Contracts derivated or deployed
- Contract_2.sol (no derivates)

### Original Source Code
```JS
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

```

## Security Audit Results

### Description
This report has been prepared as the product of the Smart Contract Audit request by GBC. This audit was conducted to discover issues and vulnerabilities in the source code of Labs’ Smart Contracts.

Title  |  Description
------ | ------
TYPE  |  Smart Contract
LANGUAGE  |  Solidity
Platform Name  |  Ethereum
REQUEST DATE  |  2021/07/17
REVISION DATE  |  2021/07/17

### What was audited, version
- Contract audited: Contract_3.sol
- Version: 0.01
- Code (freeze) audited: 18 Jul 2021
- Audited source codeSHA-256 Checksum: (not available)

Line 1 in File
```JS
// Should inform the type of licence (ex.: // SPDX-License-Identifier: MIT)
// Should utilize the lasted compiler version available (ex.: pragma solidity ^0.8.6;)

```

### Findings/Severity:
Title  |  Description | Severity
--------  |  -------- |  --------
License Type  | Should inform the type of licence |  `Low`
Insecure Compiler Version  | Should utilize the lasted compiler version available |  `Low`
Variable Scope | Variable should be private when possible |  `High`


#### Vulnerability Classification

- `Critical`: can cost unlimited amount of users' funds
- `High`: can cost limited amount of users' funds
- `Low`: minor problems or better solutions

## Recommendations:
The items below are notes from the developer in accordance with his audit.  These suggestions can be optional, and sometimes they have a low impact on the overall aspects of the client's contracts.  As such, these are optional edits for the client to consider for enhancement.

### Code Recommendations Commented 
```JS
// Should inform the type of licence type. 
// ex: SPDX-License-Identifier: MIT

// Should utilize the lasted compiler version available.
// Ex: pragma solidity ^0.8.6;

contract Bank1{
    // variable could be private
    address payable owner;

    // Create a constructor to assign msg.sender to owner variable

    modifier onlyowner {
        require(msg.sender==owner);
        _;
    }

    // setOwner function should use onlyowner modifier
    function setOwner() public {
        // Msg.sender should be Payable (ex:payable(msg.sender));
        owner = msg.sender;
    }

    function withdraw() public onlyowner {
        // call{value: amount}("") should now be used for transferring ether 
        // (Do not use send or transfer.)
        (bool success, ) = recipient.call{value:amt}("");
        require(success, "Transfer failed.");

        owner.transfer(address(this).balance);
        // require(owner.send(address(this).balance));
        // payable(owner()).send(address(this).balance);

        // function untrustedWithdraw() public {
        // uint256 amount = balances[msg.sender];
        // require(msg.sender.call.value(amount)());
        // balances[msg.sender] = 0;

    }
}
```

## Audit method and tools
This audit was done manually. Automatic analysis tools is not reliable, give false positive and miss finding issues; manual auditing is still required

## Audit Checklist
- [ ] Check for warnings
- [ ] Testing
- [ ] Code Currency
- [ ] External Calls
- [ ] Denial of Service (DOS)
- [ ] DOS with Block Gas Limit
- [ ] Permission
- [ ] Failure Handling
- [ ] Front Running
- [ ] Overflow
- [ ] Division
- [ ] Delegate Calls
- [ ] Unexpected Contract Balance

## Best practice
Smart contract development requires a particular engineering mindset.  A failure in the initial construction can be catastrophic, and changing the project after the fact can be exceedingly difficult. To ensure success and to avoid the challenges above smart contracts should here to best practices at their conception.  Below, we summarized a checklist of key points that help to indicate a high overall quality of the client project.

#### Solidity Protocol
- [X] Use stable solidity version
- [X] Handle possible errors properly when making external calls
- [X] Provide error message along with require()
- [X] Use modifiers properly
- [X] Use events to monitor contract activities
- [X] Refer and use libraries properly
- [X] No compiler warnings
#### Privilege Control
- [X] Provide pause functionality for control and emergency handling
- [X] Restrict access to sensitive functions
#### Documentation
- [X] Provide project readme and execution guidance
- [X] Provide inline comment for function intention
- [X] Provide instruction to initialize and execute the test files
#### Testing
- [X] Provide migration scripts
- [X] Provide test scripts and coverage for potential scenarios

With the final update of source code and delivery of the audit report, the developer is able to conclude that the client's contract is not vulnerable to any classically known anti-patterns or security issues.

While this developer review is a strong and positive indication, the audit report itself is not necessarily a guarantee of correctness or trustworthiness. The developer always recommends seeking multiple opinions, test coverage, sandbox deployments before any mainnet release.

## How to Install and Run
Install truffle globally
```bash
npm install --global truffle
npm install --save-dev solidity-coverage
truffle init 
truffle migrate
# Testing
truffle test
truffle run coverage
````
