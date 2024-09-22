// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.26;

contract PatentIdea {
    mapping (bytes32 => bool) private hashes;
    event ideahashed(bool);

    function saveHash(bytes32 hash) private {
        hashes[hash] = true;
    }

    function SaveIdeaHash(string memory idea) public returns (bool) {
        bytes32 hashedIdea = HashtheIdea(idea);
        if (alreadyHashed(hashedIdea)) {
            emit ideahashed(false); // Use emit keyword
            return false;
        }
        saveHash(hashedIdea);
        emit ideahashed(true); // Use emit keyword
        return true;
    }

    function alreadyHashed(bytes32 hash) view private returns (bool) {
        return hashes[hash];
    }

    function isAlreadyHashed(string memory idea) view public returns (bool) {
        bytes32 hashedIdea = HashtheIdea(idea);
        return alreadyHashed(hashedIdea);
    }

    function HashtheIdea(string memory idea) pure private returns (bytes32) {
        return keccak256(abi.encodePacked(idea));
    }
}
