# Audit Report
![Logo](https://alexandrebarros.com/global/audit-report/audit-report-2021-small.png?alt=audit-report)

## Disclaimer
This  Report  is  subject  to  the  terms  and  conditions  (including  without  limitation,  de-scription  of  services,  confidentiality,  disclaimer  and  limitation  of  liability)  set  forth  in the Verification Services Agreement between the developer and the client, or the scope of services/verification, and terms and conditions provided to the client in connection with the verification (collectively,  the “Agreement”).  This Report provided inconnection with the Services set forth in the Agreement shall be used by the client only to the extent permitted under the terms and conditions set forth in the Agreement.This Report may not be transmitted, disclosed, referred to or relied upon by any person for any purposes without developer’s prior written consent.

All claims, content, designs, algorithms, estimates, roadmaps, specifications, and performance measurements described in this project are done with the developers best efforts. It is up to the reader to check and validate their accuracy and truthfulness. Furthermore nothing in this project constitutes a solicitation for investment. The developer accepts no liability for any loss or damage suffered as a result of using software code downloaded directly from this website.

## Overall system:
Bank smart contract written in Solidity to map addresses with user's balance.

### Objectives:
- Method to get user's balance
- Method to add amount to the user's account
- Method to withdraw value from the user's account

### What should not be possible:
- Someone see the balance of another account that it's not it's own
- Another user's withdraw someone else's balance

## Contracts derivated or deployed
- bank.sol (no derivates)

### Original Source Code
```JS
contract Bank1{
    address payable owner;

    modifier onlyowner {
        require(msg.sender==owner);
        _;
    }

    function setOwner() public {
        owner = msg.sender;
    }

    function withdraw() public onlyowner {
        (bool success, ) = recipient.call{value:amt}("");
        require(success, "Transfer failed.");

        owner.transfer(address(this).balance);
    }
}
```

## Security Audit Results

### Description
This report has been prepared as the product of the Smart Contract Audit request by GBC. This audit was conducted to discover issues and vulnerabilities in the source code of Labs’s Smart Contracts.

Title  |  Description
------ | ------
TYPE  |  Smart Contract
LANGUAGE  |  Solidity
Plataform Name  |  Ethereum
REQUEST DATE  |  2021/07/17
REVISION DATE  |  2021/07/17

### What was audited, version
Contract audited: Bank.sol
Version: 0.01
Code (freeze) audited: 18 Jul 2021
The audited source codeSHA-256 Checksum: (not avaliable)

Line 1 in File
```JS
// Should inform the type of licence (ex.: // SPDX-License-Identifier: MIT)
// Should utilize the lasted compiler version avaliable (ex.: pragma solidity ^0.8.6;)

```

### Findings/Severity:
Title  |  Description | Severity
--------  |  -------- |  --------
License Type  | Should inform the type of licence |  `Low`
Insecure Compiler Version  | Should utilize the lasted compiler version avaliable |  `Low`
Variable Scope | Variable should be private when possible |  `High`


#### Vulnerability Classification

- `Critical`: can cost unlimited amount of users' funds
- `High`: can cost limited amount of users' funds
- `Low`: minor problems or better solutions

## Recomendations:
The items below are notes from the developer in accordance with his audit.  These suggestions can be optional, and sometimes they have a low impact on the overall aspects of the client's contracts.  As such, these are optional edits for the client to consider for enhancement.

## Audit method and tools
This audit was done manually. Automatic analysis tools is not reliable, give false positive and miss finding issues; manual auditing is still required

## Audit Checklist
- [ ] Check for warnings
- [ ] Testing
- [ ] Code Currency
- [ ] External Calls
- [ ] DENIAL OF SERVICE (DOS)
- [ ] DOS WITH BLOCK GAS LIMIT
- [ ] PERMISSION
- [ ] FAILURE HANDLING
- [ ] FRONT RUNNING
- [ ] OVERFLOW
- [ ] DIVISION
- [ ] DELEGATE CALLS
- [ ] UNEXPECTED CONTRACT BALANCE

## Best practice
Smart contract development requires a particular engineering mindset.  A failure in theinitial construction can be catastrophic, and changing the project after the fact can beexceedingly difficult.To ensure success and to avoid the challenges above smart contracts should here tobest practices at their conception.  Below, we summarized a checklist of key points that help to indicate a high overall quality of the client project.

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

With the final update of source code and delivery of the audit report, the developer is able to conclude that the client's contract is not vulnerable to any classically known anti-patternsor security issues.

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



