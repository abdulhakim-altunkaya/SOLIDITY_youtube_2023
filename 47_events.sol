//SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

contract Orange {

    /*
    EVENTS
    1. display function data
    2. trigger some changes on the frontend with function data
    3. Event data can be also used for cheap storage purposes. 

      LOG strorage: 
      A) much cheaper but cannot only be accessed by Frontend. 
      B) Cannot be accessed by original or other contracts.

      Contract storage(storage, memory, calldata, stack): 
      A) much more expensive compared to LOG storage. 
      B) Can be accessed by original and other contracts.

    ***** "indexed" attribute makes it easier to search and filter among log records.
    ***** Event data (parameters value) are stored as transaction logs in Log storage.
    */

    event wordChanged(address changer, string newWord);

    string public myWord = "Diyarbakir";

    function changeWord(string memory _word) external {
        myWord = _word;
        emit wordChanged(msg.sender, _word);
    }

}