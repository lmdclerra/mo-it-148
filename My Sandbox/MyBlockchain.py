import hashlib


"""A simple blockchain implementation in Python with basic functionality."""
def hashGenerator(data):
    result = hashlib.sha256(data.encode())          # Generate SHA-256 hash
    return result.hexdigest()                       # Return the hexadecimal representation of the hash


"""A class representing a block in the blockchain."""
class Block:
    def __init__(self, data, curr_hash, prev_hash):
        self.data = data                            # Data stored in the block  
        self.curr_hash = curr_hash                  # Hash of the block
        self.prev_hash = prev_hash                  # Hash of the previous block


"""A simple blockchain implementation with a genesis block and methods to add new blocks."""
class MyBlockChain:
    def __init__(self):
        hashFirst = hashGenerator("first_gen")      # Generate hash for the first block
        hashLast = hashGenerator("last_gen")        # Generate hash for the last block
        genesis = Block("Genesis Block", hashFirst, hashLast) # Create the genesis block
        self.chain = [genesis]                      # Initialize the blockchain with the genesis block

    def add_block(self, data: str):
        prev_hash = self.chain[-1].curr_hash        # Get the hash of the last block
        curr_hash = hashGenerator(data + prev_hash) # Generate hash for the new block
        block = Block(data, curr_hash, prev_hash)   # Create a new block with the data, hash, and previous hash
        self.chain.append(block)                    # Add the new block to the blockchain


myBlocks = MyBlockChain()             # Create an instance of MyBlockChain
myBlocks.add_block("Block 1 Datus")   # Add a new   block with data "Block 1 Data"
myBlocks.add_block("Block 2 Datus")   # Add another block with data "Block 2 Data"    
myBlocks.add_block("Block 3 Datus")   # Add a third block with data "Block 3 Data"

# Print the details of each block in the blockchain
for block in myBlocks.chain:
    print(f"Data: {block.data}, Curr-Hash: {block.curr_hash}, Prev-Hash: {block.prev_hash}")
