pragma solidity ^0.5.8;

import "openzeppelin-solidity/contracts/token/ERC721/ERC721Enumerable.sol";
import "openzeppelin-solidity/contracts/token/ERC721/ERC721Mintable.sol";
import "openzeppelin-solidity/contracts/token/ERC721/ERC721Burnable.sol";
import "openzeppelin-solidity/contracts/token/ERC20/IERC20.sol";
import "./CustomERC721Metadata.sol";


contract NFTPhotoToken is CustomERC721Metadata, ERC721Enumerable, ERC721Mintable, ERC721Burnable {

    constructor() public CustomERC721Metadata("PhotoToken", "PHT", "http://xyz.com/data/") {
    }

    // Make sure this contract cannot receive ETH.
    function()
    external payable
    {
        revert("The contract cannot receive ETH payments.");
    }

    // If this contract gets a balance in some ERC20 contract after it's finished, then we can rescue it.
    function rescueToken(IERC20 _foreignToken, address _to)
    external
    onlyOwner
    {
        _foreignToken.transfer(_to, _foreignToken.balanceOf(address(this)));
    }
}