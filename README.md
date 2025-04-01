# Scavenger
Scavenger Hunt NFT

Overview

This Solidity smart contract enables a simple scavenger hunt game where a winner is chosen and rewarded with an NFT. The contract allows one-time winner selection and NFT minting by the winner.

Features

A winner can be set once.

The winner can mint an NFT reward.

Ensures that only the designated winner can mint the NFT.

Functions

setWinner(address _winner)

Sets the winner of the scavenger hunt.

Can only be called once.

Emits a WinnerSet event.

mintNFT()

Allows the winner to mint an NFT.

Ensures the NFT is only minted once.

Emits an NFTMinted event.

Events

WinnerSet(address winner, uint256 tokenId): Triggered when a winner is set.

NFTMinted(address to, uint256 tokenId): Triggered when the winner successfully mints an NFT.

How to Use

Deploy the contract.

Call setWinner(address _winner) with the winner's address.

The winner calls mintNFT() to claim their NFT.

Notes

The contract does not implement ERC721 functionality.

It only tracks NFT ownership without enabling transferability.

