pragma solidity ^0.4.2;

contract proofOfExistence {
    //state
    bytes32 public proof; // bytes32 === hash

    // calculate and store proof for a document
    // transactional function
    function notarize(string document) public {
        proof = proofFor(document);
    }

    // constant read only function
    function proofFor(string document) constant public returns (bytes32) {
        return sha256(document);
    }
}