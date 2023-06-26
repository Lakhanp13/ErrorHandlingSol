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
