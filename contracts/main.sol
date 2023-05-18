// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";


contract MintArtLandmarkToken is ERC721Enumerable {
    constructor() ERC721("mainyyg",  "yyg") {}

    mapping(uint256 => uint256) public mainyygkTypes;

        function mainToken() public{
            uint256 mainTokenId = totalSupply() + 1;
            uint256 landmarkTypes = uint256(keccak256(abi.encodePacked(block.timestamp, msg.sender, mainTokenId))) % 5 + 1;

            _mint(msg.sender, landmarkTokenId);
        }
}