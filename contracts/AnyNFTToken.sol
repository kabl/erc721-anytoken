pragma solidity ^0.5.8;

import "openzeppelin-solidity/contracts/token/ERC721/ERC721Enumerable.sol";
import "openzeppelin-solidity/contracts/token/ERC721/ERC721Mintable.sol";
import "openzeppelin-solidity/contracts/token/ERC721/ERC721Burnable.sol";
import "./CustomERC721Metadata.sol";


contract AnyNFTToken is CustomERC721Metadata, ERC721Enumerable, ERC721Mintable, ERC721Burnable {

    constructor() public CustomERC721Metadata("AnyNFTToken", "ANY", "http://165.22.70.47/any/") {
    }

    // Make sure this contract cannot receive ETH.
    function()
    external payable
    {
        revert("The contract cannot receive ETH payments.");
    }
}