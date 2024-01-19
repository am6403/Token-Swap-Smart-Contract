# Token-Swap-Smart-Contract

The TokenSwap smart contract on the Ethereum blockchain facilitates decentralized exchanges of ERC-20 tokens at a fixed rate. Users can swap one token for another using the swapTokens function, which requires specifying the source token (fromToken), destination token (toToken), and the amount to be swapped. The contract ensures sufficient balance of the destination token and emits a TokensSwapped event upon successful swaps. The exchange rate is hardcoded, and the contract follows the ERC-20 standard for token interactions. The TokenSwap contract complements the MyToken contract, which adheres to ERC-20 standards, providing a foundation for decentralized applications and interoperability. Additionally, MyToken includes permit functionality from ERC-2612, allowing users to approve token spending with a signature. Together, these contracts offer a secure and trustless solution for ERC-20 token swaps.


Steps:-

1)Deploy MyToken Contract: Deploy the MyToken contract.Confirm the deployment transaction.

2)Deploy TokenSwap Contract: Deploy the TokenSwap contract. Set the address of the deployed MyToken contract as the parameter for TokenSwap.
Confirm the deployment transaction.

3)Transfer Tokens from Sender to TokenSwap: Execute the transferFrom function: Set the sender's address. Set the TokenSwap contract address as the recipient. Specify the amount to transfer.
Confirm the transaction.

4)Approve Tokens for TokenSwap: Execute the approve function: Set the TokenSwap contract address as the spender. Specify the amount to approve. Confirm the transaction.

5)Check Balances and Information: Utilize balanceOf, name, and decimals functions in MyToken to check balances and token information.

6)Optional: Explore permit Functionality: explore the permit function in MyToken for gas-efficient approvals with a signature.

# Pictures


![deployed contract](https://github.com/am6403/Token-Swap-Smart-Contract/assets/103773302/eddef789-1d5d-4974-b171-483799a99645)
![deployed contract 2](https://github.com/am6403/Token-Swap-Smart-Contract/assets/103773302/e107fc3b-e4a6-4d7f-a72a-af5ce812ee28)
![code](https://github.com/am6403/Token-Swap-Smart-Contract/assets/103773302/3b5ccb63-35a8-4725-a41d-2bb63e25547b)




