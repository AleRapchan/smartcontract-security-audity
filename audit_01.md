# Audit Report
![Logo](https://alexandrebarros.com/global/audit-report/audit-report-2021-small.png?alt=audit-report)


## Overall system:
Bank smart contract written in Solidity to map addresses with user's balance.

- TYPE: Smart Contract
- LANGUAGE: Solidity
- Plataform Name: Ethereum
- REQUEST DATE: 2021/07/17
- REVISION DATE: 2021/07/17
- DESCRIPTION: This report has been prepared as the product of the Smart Contract Audit request by GBC. This audit was conducted to discover issues and vulnerabilities in the source code of Labs’s Smart Contracts.

## Disclaimer
This  Report  is  subject  to  the  terms  and  conditions  (including  without  limitation,  de-scription  of  services,  confidentiality,  disclaimer  and  limitation  of  liability)  set  forth  in the Verification Services Agreement between the developer and the client, or the scope of services/verification, and terms and conditions provided to the client in connection with the verification (collectively,  the “Agreement”).  This Report provided inconnection with the Services set forth in the Agreement shall be used by the client only to the extent permitted under the terms and conditions set forth in the Agreement.This Report may not be transmitted, disclosed, referred to or relied upon by any personfor any purposes without developer’s prior written consent.

All claims, content, designs, algorithms, estimates, roadmaps, specifications, and performance measurements described in this project are done with the developers best efforts. It is up to the reader to check and validate their accuracy and truthfulness. Furthermore nothing in this project constitutes a solicitation for investment.

Any content produced by the developer are for educational and inspiration purposes only. The developer does not encourage, induce or sanction the deployment, integration or use of any such applications(including the code) in violation of applicable laws or regulations and hereby prohibits any such deployment, integration or use.

Our goal is to produce computer programs that are COMPLETELY BUG-FREE AND 100% RELIABLE.  However due to the complexity of computer systems this is almost impossible to achieve in reality. Although WE MAKE EVERY EFFORT TO ENSURE THAT IT DOES NOT HAPPEN we are unable to offer any guarantee that software code downloaded directly from this site (or any other) will not corrupt your database or cause other unforseen effects to any of the data or software on your computer.

It is therefore very much in your interest to ensure that BEFORE INSTALLING SOFTWARE CODE FROM THIS SITE (or any other) you have on hand current backups of all your data and software and have tested that you can restore your system from them in the event that you need to do so.

The developer accepts no liability for any loss or damage suffered as a result of using software code downloaded directly from this website.

## Objectives:
- Method to get user's balance
- Method to add amount to the user's account
- Method to withdraw value from the user's account

## What should not be possible:
- Someone see the balance of another account that it's not it's own
- Another user's withdraw someone else's balance

## Contracts derivated or deployed
- bank.sol (no derivates)

## Security Audit Results

### What was audited, version
Contract audited: Bank.sol
Version: 0.01
Code (freeze) audited: 18 Jul 2021
The audited source codeSHA-256 Checksum: (not avaliable)

### Findings/Severity:
Title  |  Description | Severity
--------  |  -------- |  --------
Bug  | Bug in the code |  `Low`

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



