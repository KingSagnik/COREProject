# Blockchain Certificate Issuer

A full-stack blockchain application for issuing and verifying certificates on the CORE blockchain. This project demonstrates the implementation of a decentralized certificate management system using smart contracts and a modern React frontend.

## 🌟 Features

- **Smart Contract Integration**: ERC721-based certificate issuance system
- **Modern UI**: Clean and responsive user interface with dark theme
- **MetaMask Integration**: Seamless wallet connection and transaction handling
- **Certificate Management**:
  - Issue new certificates with custom metadata
  - Verify certificate ownership and details
  - View certificate metadata and ownership information
- **Real-time Status Updates**: Immediate feedback on transaction status
- **Mobile Responsive**: Works seamlessly on all device sizes

## 🛠️ Tech Stack

- **Smart Contracts**:
  - Solidity
  - Hardhat
  - OpenZeppelin Contracts
- **Frontend**:
  - React
  - Ethers.js
  - Modern CSS with animations
- **Blockchain**:
  - CORE Blockchain
  - MetaMask Integration

## 🚀 Getting Started

### Prerequisites

- Node.js (v14 or higher)
- MetaMask browser extension
- CORE blockchain network configured in MetaMask

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/COREProject.git
   cd COREProject
   ```

2. Install dependencies:
   ```bash
   # Install Hardhat dependencies
   cd contracts
   npm install

   # Install frontend dependencies
   cd ../frontend
   npm install
   ```

3. Configure environment:
   - Copy `.env.example` to `.env` in the contracts directory
   - Update the environment variables as needed

### Running the Application

1. Start the local blockchain:
   ```bash
   cd contracts
   npx hardhat node
   ```

2. Deploy the smart contract:
   ```bash
   npx hardhat run scripts/deploy.js --network localhost
   ```

3. Start the frontend:
   ```bash
   cd frontend
   npm start
   ```

## 💻 Usage

1. **Connect Wallet**:
   - Click "Connect Wallet" to link your MetaMask wallet
   - Ensure you're connected to the CORE network

2. **Issue Certificate**:
   - Enter the recipient's wallet address
   - Provide the certificate metadata URI
   - Click "Issue Certificate"
   - Confirm the transaction in MetaMask

3. **Verify Certificate**:
   - Enter the certificate ID
   - Click "Verify"
   - View the certificate details and ownership information

## 📝 Smart Contract

The `CertificateIssuer` contract is an ERC721 token contract that:
- Inherits from OpenZeppelin's ERC721URIStorage
- Implements certificate issuance functionality
- Emits events for certificate creation
- Maintains certificate ownership records

## 🔒 Security

- Only the contract owner can issue certificates
- Certificate ownership is immutable
- Metadata URIs are permanently linked to certificates
- All transactions require MetaMask confirmation

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

