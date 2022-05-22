# sample-solidity


# install

## npm

https://solidity-jp.readthedocs.io/ja/latest/installing-solidity.html#npm-node-js

## バイナリパッケージ

https://solidity-jp.readthedocs.io/ja/latest/installing-solidity.html#binary-packages

Solidityの 0.4.19 バージョンの Homebrew formula を Github から直接インストールできます。
https://github.com/ethereum/homebrew-ethereum/commits/master/solidity.rb


```sh
brew update
brew upgrade
brew tap ethereum/ethereum
brew install solidity
```

```sh
brew unlink solidity
brew install https://raw.githubusercontent.com/ethereum/homebrew-ethereum/799d020069f92d714eb7d3070ff480ab9222c4f8/solidity.rb
```


## ABI

```json
[
	{
		"constant": false,
		"inputs": [
			{
				"name": "withdraw_amount",
				"type": "uint256"
			}
		],
		"name": "withdraw",
		"outputs": [],
		"payable": false,
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"payable": true,
		"stateMutability": "payable",
		"type": "fallback"
	}
]
```

## docment

https://docs.soliditylang.org/en/latest/
