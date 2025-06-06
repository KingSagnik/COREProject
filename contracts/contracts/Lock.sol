// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract CertificateIssuer is ERC721URIStorage, Ownable {
    uint256 public nextCertificateId;

    event CertificateIssued(address indexed to, uint256 indexed certificateId, string uri);

    constructor() ERC721("Blockchain Certificate", "CERT") Ownable(msg.sender) {}

    function issueCertificate(address to, string memory uri) public onlyOwner {
        uint256 certificateId = nextCertificateId;
        _safeMint(to, certificateId);
        _setTokenURI(certificateId, uri);
        emit CertificateIssued(to, certificateId, uri);
        nextCertificateId++;
    }
}