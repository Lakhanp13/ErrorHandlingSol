# Error Handling in Solidity

In this, we would learn how to handle errors in solidity. There are 3 ways to handle errors in solidity: require(), revert(), and assert().

## Description

This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain.

require(): Used to validate certain conditions before further execution of a function. It takes two parameters as an input.

assert(): The assert function, like require, is a convenience function that checks for conditions. If a condition fails, then the function execution is terminated with an error message.

revert(): Can be used to flag an error and revert the current call. You can also provide a message containing details about the error, and the message will be passed back to the caller. 
However, the message, like in require(), is an optional parameter. revert() causes the EVM to revert all the changes made to the state, and things return to the initial state or the state before the function call was made.

## Getting Started

### Executing program
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. 
Save the file with a .sol extension (e.g., ErrorHandling.sol). Copy and paste the following code into the file:
```
// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract ErrorHandling{
    uint x=6;
    function toCheckError() public view {
        if(x==6){
            revert("This will revert as x is equal to 6");
        }

        require(x==6, "This will work as x is not equal to 6");

        assert(x==6);
    }
}

```

When if statement condition is true, revert will work and error will be handled. If we make, the if statement condition to be false, then we would see the working of require() to handle the error.


## Authors

Lakhan Parashar


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
