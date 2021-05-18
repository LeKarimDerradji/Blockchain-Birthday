// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract AccessControl {
    
    
        address internal _owner;
        mapping(address => bool) internal _friends;
        mapping(address => bool) internal _recipient;
        uint256 internal _numberOfFriends;
    
        constructor(address owner_)   {
           _owner = owner_;
       }

        // modifier for owner
        modifier onlyOwner() {
            require(msg.sender == _owner, "AccessControl: Only owner can call this function");
             _;
        }
        
        // modifier for friends
        
        modifier onlyFriend() {
            require(_friends[msg.sender] == true, "AccessControl: Only friends can call this function");
             _;
        }
        
        modifier onlyRecipient() {
            require(_recipient[msg.sender] == true, 'AccessControl: Only recipient can call this function.');
            _;
        }
        
        // Modifier for the recipient
        
        function owner() public view returns(address) {
            return _owner;
       }
       
       function isFriends(address account) public view returns(bool) {
            return _friends[account];
       }
       
       function numberOfFriends() public view returns(uint256) {
           return _numberOfFriends;
       }
       
       function addRecipient(address account) public onlyOwner {
           _recipient[account] = true;
       }
       
       function addFriend(address account) public onlyOwner {
           _friends[account] = true;
           _numberOfFriends++;
       }
       
}