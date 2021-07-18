# Audit Report

## Overall system:
Bank contract to map addresses with user's balance

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

### Findings/Severity:
Finding  |  Severity
--------  |  --------
Bug  |  `Low`

- `Critical`: can cost unlimited amount of users' funds
- `High`: can cost limited amount of users' funds
- `Low`: minor problems or better solutions

### Recomendations:

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

## Disclaimer
All claims, content, designs, algorithms, estimates, roadmaps, specifications, and performance measurements described in this project are done with the developers best efforts. It is up to the reader to check and validate their accuracy and truthfulness. Furthermore nothing in this project constitutes a solicitation for investment.

Any content produced by the developer are for educational and inspiration purposes only. The developer does not encourage, induce or sanction the deployment, integration or use of any such applications(including the code) in violation of applicable laws or regulations and hereby prohibits any such deployment, integration or use.

Our goal is to produce computer programs that are COMPLETELY BUG-FREE AND 100% RELIABLE.  However due to the complexity of computer systems this is almost impossible to achieve in reality. Although WE MAKE EVERY EFFORT TO ENSURE THAT IT DOES NOT HAPPEN we are unable to offer any guarantee that software code downloaded directly from this site (or any other) will not corrupt your database or cause other unforseen effects to any of the data or software on your computer.

It is therefore very much in your interest to ensure that BEFORE INSTALLING SOFTWARE CODE FROM THIS SITE (or any other) you have on hand current backups of all your data and software and have tested that you can restore your system from them in the event that you need to do so.

The developer accepts no liability for any loss or damage suffered as a result of using software code downloaded directly from this website.

