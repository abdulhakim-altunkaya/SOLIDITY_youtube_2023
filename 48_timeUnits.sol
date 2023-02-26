//SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

contract Orange {

  /*TIME UNITS
  all of them are uints, all of them are seconds
  block.timestamp -- number of seconds that passed between Unix Epoch(1 Jan 1970) and the time block was mined
  seconds
  minutes
  hours
  days
  weeks
  */

  function getUnits() external view returns(uint, uint, uint, uint, uint, uint) {
    return (block.timestamp, 1 seconds, 1 minutes, 1 hours, 1 days, 1 weeks);
  }


} 