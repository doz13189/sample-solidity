// Version of Solidity compiler this program was written for
pragma solidity ^0.4.22;

contract owned {
	address owner;

	// コントラクトのコンストラクタ：オーナーの設定
	constructor() {
		owner = msg.sender;
	}

	// アクセス制御修飾子
	modifier onlyOwner {
		require(msg.sender == owner, "Only the contract owner can call this function"));
		_;
	}
}

contract mortal is owned {
	// コントラクトディストラクタ
	function destroy() public onlyOwner {
		selfdestruct(owner);
	}
}

