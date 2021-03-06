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


contract Faucet is mortal {
	event Withdrawal(address indexed to, uint amount);
	event Deposit(address indexed from, uint amount);

	// Give out ether to anyone who asks
	function withdraw(uint withdraw_amount) public {

    	// Limit withdrawal amount
    	require(withdraw_amount <= 100000000000000000);

    	// Send the amount to the address that requested it
    	msg.sender.transfer(withdraw_amount);
		emit Withdrawal(msg.sender, withdraw_amount);
    }

	// Accept any incoming amount
	function () public payable {
		emit Deposit(msg.sender, msg.value);
	}

}


