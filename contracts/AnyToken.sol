pragma solidity ^0.5.8;

import "openzeppelin-solidity/contracts/token/ERC721/ERC721Enumerable.sol";
import "openzeppelin-solidity/contracts/token/ERC721/ERC721Mintable.sol";
import "openzeppelin-solidity/contracts/token/ERC721/ERC721Burnable.sol";
import "./CustomERC721Metadata.sol";


contract AnyToken is CustomERC721Metadata, ERC721Enumerable, ERC721Mintable, ERC721Burnable {

    bool private _frozen = false;

    constructor() public CustomERC721Metadata("AnyToken", "ANY", "http://any.digitalizeit.io/prod/") {
    }

    // Make sure this contract cannot receive ETH.
    function() external payable {
        revert("The contract cannot receive ETH payments.");
    }

    function isFrozen() public view returns (bool) {
        return _frozen;
    }

    function freeze() public onlyOwner returns (bool) {
        require(_frozen == false, "Already frozen");
        _frozen = true;
        return true;
    }

    function destroy() public onlyOwner returns (bool) {
        require(_frozen == false, "Self destruct is disabled forever");
        selfdestruct(msg.sender);
        return true;
    }
}