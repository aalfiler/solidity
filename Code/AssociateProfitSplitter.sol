pragma solidity ^0.5.0;

// lvl 1: equal split
contract AssociateProfitSplitter {
    // @TODO: Create three payable addresses representing `employee_one`, `employee_two` and `employee_three`.
      address payable employee_one = 0x7dEDacdA430FAcABE043D455F52fc43D9F44128A;
      address payable employee_two = 0x0a376e0438880dbA4Cb6f34547bF9310D631A3ac;
      address payable employee_three = 0x4B2785a3dF23B0A25451812109f4bd2BcB990d79;
///////////////////////////////////////////////
    address public last_to_withdraw;
    uint public last_withdraw_block;
    uint public last_withdraw_amount;

    address public last_to_deposit;
    uint public last_deposit_block;
    uint public last_deposit_amount;

    uint unlock_time;
////////////////////////////////////////////////
    constructor(address payable _one, address payable _two, address payable _three) public {
        employee_one = _one;
        employee_two = _two;
        employee_three = _three;
    }

    function balance() public view returns(uint) {
        return address(this).balance;
    }

    function deposit() public payable {
        // @TODO: Split `msg.value` into three
        uint amount = ; // Your code here!

        // @TODO: Transfer the amount to each employee
        // Your code here!

        // @TODO: take care of a potential remainder by sending back to HR (`msg.sender`)
        // Your code here!
    }
//////////////////////////////////////////////////////////
      function deposit() public payable {
    // check if sender is last to deposit, and update if they were not
    if (last_to_deposit != msg.sender) {
      last_to_deposit = msg.sender;
    }

    // update last to deposit information
    last_deposit_block = block.number;
    last_deposit_amount = msg.value;
  }
//////////////////////////////////////////////////////
    function() external payable {
        // @TODO: Enforce that the `deposit` function is called in the fallback function!
        // Your code here!
    }
}
