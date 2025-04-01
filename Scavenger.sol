pragma solidity ^0.8.0;

contract ScavengerHunt {
    address public winner;
    mapping(uint256 => address) public tokenOwners;
    uint256 public tokenId;
    
    event WinnerSet(address indexed winner, uint256 tokenId);
    event NFTMinted(address indexed to, uint256 tokenId);
    
    function setWinner(address _winner) public {
        require(winner == address(0), "Winner already set");
        winner = _winner;
        tokenId++;
        emit WinnerSet(_winner, tokenId);
    }
    
    function mintNFT() public {
        require(msg.sender == winner, "Only winner can mint NFT");
        require(tokenOwners[tokenId] == address(0), "NFT already minted");
        tokenOwners[tokenId] = winner;
        emit NFTMinted(winner, tokenId);
    }
} 
