// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@thirdweb-dev/contracts/base/ERC721Base.sol";
import "@thirdweb-dev/contracts/extension/PermissionsEnumerable.sol";

contract collectionOne is ERC721Base, PermissionsEnumerable {

    // Any `bytes32` value is a valid role. You can create roles by defining them like this.
    bytes32 public constant NICKNAMER_ROLE = keccak256("NICKNAMER_ROLE");

      constructor(
        string memory _name,
        string memory _symbol,
        address _royaltyRecipient,
        uint128 _royaltyBps
    )
        ERC721Base(
            _name,
            _symbol,
            _royaltyRecipient,
            _royaltyBps
        )
    {
        _setupRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _setupRole(NICKNAMER_ROLE, msg.sender);
    }

    // Mapping of token ID to nickname
    mapping(uint256 => string) public tokenNicknames;

    // Update the value of the mapping for a token ID
    function updateTokenNickname(
        uint256 _tokenId,
        string calldata _nickname
    ) public onlyRole(NICKNAMER_ROLE) {
        tokenNicknames[_tokenId] = _nickname;
    }

}