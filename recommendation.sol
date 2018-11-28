pragma solidity ^0.4.0;

contract Recommendation {

    address sender;
    string ipfs_hash;
    address recipient;

    constructor() public {
        sender = msg.sender;
    }

    function send_recommendation(string _ipfs_hash, address _recipient) public {
        ipfs_hash = _ipfs_hash;
        recipient = _recipient;
    }

    function get_recommendation() public view returns (address, string, address) {
        return (sender, ipfs_hash, recipient);
    }
}
