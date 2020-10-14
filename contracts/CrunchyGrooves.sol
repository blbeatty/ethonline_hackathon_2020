pragma solidity ^0.6.0;

import "OpenZeppelin/openzeppelin-contracts@3.2.0/contracts/token/ERC721/ERC721.sol";
import "OpenZeppelin/openzeppelin-contracts@3.2.0/contracts/access/Ownable.sol";

contract CrunchyGrooves is ERC721, Ownable {

    string[] public grooves;

    constructor() public ERC721("CrunchyGroove", "CGROOV") {}

    function addGroove(string memory _name, address _to) public onlyOwner {
        uint id = grooves.length;
        grooves.push(_name);
        _safeMint(_to, id);
    }

}