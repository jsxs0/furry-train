pragma solidity ^0.8.0;

import "./Owner.sol";

contract Profile is Owner {
    
    struct User {
        string name;
	    string email;
    }
    mapping(address => User) internal profile;
    
    // Used to notify updated User information
    event ProfileUpdate(User profile);

    function setProfile(User memory newProfile) public onlyOwner {
        profile[msg.sender] = newProfile;
        emit ProfileUpdate(profile[msg.sender]);
    }

    function getProfile(address user) public view returns(string memory name, string memory email) {
        return (profile[user].name, profile[user].email);
    }
}