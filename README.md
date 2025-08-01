# Todo List Smart Contract

A simple and efficient Todo List smart contract built with Solidity that allows users to manage their tasks on the Ethereum blockchain.

## 📋 Overview

This smart contract provides basic todo list functionality including adding tasks, retrieving tasks, marking tasks as complete, and getting task counts. All data is stored immutably on the blockchain.

## 🚀 Features

- ✅ Add new todo items
- 📖 Retrieve all todos
- 🔢 Get total count of todos
- 🔍 Get specific todo by ID
- ✔️ Mark todos as completed
- 🔐 Immutable task storage on blockchain

## 📝 Contract Details

- **License**: MIT
- **Solidity Version**: 0.8.30
- **Contract Name**: TodoContact

## 🏗️ Contract Structure

### Data Structure
```solidity
struct Todo {
    string title;      // Task description
    bool completed;    // Completion status
}
```

### State Variables
- `Todo[] todos` - Dynamic array storing all todo items

## 🔧 Functions

### `addTodo(string memory _title)`
- **Purpose**: Adds a new todo item to the list
- **Parameters**: 
  - `_title`: The description of the todo item
- **Visibility**: Public
- **Returns**: None

### `retrieveTodo()`
- **Purpose**: Returns all todo items
- **Parameters**: None
- **Visibility**: Public view
- **Returns**: `Todo[] memory` - Array of all todos

### `getTotalCounts()`
- **Purpose**: Gets the total number of todos
- **Parameters**: None
- **Visibility**: Public view
- **Returns**: `uint256` - Total count of todos

### `getTodoById(uint256 index)`
- **Purpose**: Retrieves a specific todo by its index
- **Parameters**:
  - `index`: The index of the todo item (0-based)
- **Visibility**: Public view
- **Returns**: `Todo memory` - The todo item at specified index

### `markedToComplete(uint256 index)`
- **Purpose**: Marks a todo item as completed
- **Parameters**:
  - `index`: The index of the todo item to mark as complete
- **Visibility**: Public
- **Returns**: None

## 🚀 Getting Started

### Prerequisites
- Node.js and npm installed
- Hardhat or Truffle development environment
- Ethereum wallet (MetaMask recommended)
- Some ETH for gas fees (testnet recommended for testing)

### Installation

1. Clone the repository:
```bash
git clone <your-repository-url>
cd todo-smart-contract
```

2. Install dependencies:
```bash
npm install
```

3. Compile the contract:
```bash
npx hardhat compile
```

### Deployment

#### Using Hardhat
```bash
npx hardhat run scripts/deploy.js --network <network-name>
```

#### Using Remix IDE
1. Copy the contract code to Remix IDE
2. Compile with Solidity 0.8.30
3. Deploy to your preferred network

## 💻 Usage Examples

### Adding a Todo
```javascript
// Using ethers.js
const tx = await todoContract.addTodo("Buy groceries");
await tx.wait();
```

### Retrieving All Todos
```javascript
const todos = await todoContract.retrieveTodo();
console.log(todos);
```

### Getting Todo Count
```javascript
const count = await todoContract.getTotalCounts();
console.log(`Total todos: ${count}`);
```

### Getting Specific Todo
```javascript
const todo = await todoContract.getTodoById(0);
console.log(`Title: ${todo.title}, Completed: ${todo.completed}`);
```

### Marking Todo as Complete
```javascript
const tx = await todoContract.markedToComplete(0);
await tx.wait();
```

## 🧪 Testing

Create comprehensive tests for your contract:

```javascript
describe("TodoContract", function () {
  it("Should add a new todo", async function () {
    await todoContract.addTodo("Test todo");
    const count = await todoContract.getTotalCounts();
    expect(count).to.equal(1);
  });

  it("Should mark todo as complete", async function () {
    await todoContract.addTodo("Test todo");
    await todoContract.markedToComplete(0);
    const todo = await todoContract.getTodoById(0);
    expect(todo.completed).to.be.true;
  });
});
```

## 📊 Gas Estimates

| Function | Estimated Gas |
|----------|---------------|
| addTodo | ~50,000 |
| retrieveTodo | ~30,000 |
| getTotalCounts | ~2,300 |
| getTodoById | ~2,500 |
| markedToComplete | ~25,000 |

## ⚠️ Security Considerations

- **Array Bounds**: The contract doesn't check array bounds in `getTodoById` and `markedToComplete`. Consider adding bounds checking.
- **Access Control**: Currently, anyone can modify any todo. Consider implementing ownership or access control.
- **Gas Limits**: Large todo lists may hit gas limits when retrieving all todos.

## 🔄 Potential Improvements

1. Add input validation for empty titles
2. Implement access control (only todo creator can modify)
3. Add todo deletion functionality
4. Implement pagination for large todo lists
5. Add event emissions for better frontend integration
6. Add todo editing functionality

## 📋 Network Deployment

### Testnet Addresses
- **Sepolia**: `0x...` (Add after deployment)
- **Goerli**: `0x...` (Add after deployment)

### Mainnet
- **Ethereum**: `0x...` (Add after deployment)

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/new-feature`)
3. Commit your changes (`git commit -am 'Add new feature'`)
4. Push to the branch (`git push origin feature/new-feature`)
5. Create a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👨‍💻 Author

- **hilalahmad0101** - [GitHub Profile](https://github.com/hilalahmad0101)

## 📞 Support

If you have any questions or need help, please:
- Open an issue on GitHub
- Contact: [hilal.ahmad.developer@gmail.com]

## 🙏 Acknowledgments

- OpenZeppelin for security best practices
- Ethereum community for development tools
- Solidity documentation and examples

---

**Note**: This is a basic implementation intended for learning purposes. For production use, consider implementing additional security measures and optimizations.
