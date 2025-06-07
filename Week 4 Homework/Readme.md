Dive into the ultimate fusion of technology—Python, blockchain, and IoT! You’ll bridge the gap between your CSV file and blockchain, turning rows of data into immutable digital records. Expect thrilling hands-on action as you master Web3.py, deploy your Python prowess, and see IoT data come to life on a decentralized ledger.

Now, you'll use Python to connect to a Smart Contract on Local Ethereum TestNet (Ganache) and store IoT on the blockchain. This week, you'll setup your Python Environment, verify connectivity with the Smart Contract, and ensure a stable connection before handling real IoT Data.

To carry out this activity, follow the instructions below: 

1.  See the instructions here (Code Template.pdf). Go to Week 4 - Milestone 1: Smart Tracking System Blockchain Ledger (Draft).

2.  Rename your final output with the following naming convention: MO-IT148 Milestone 1: Smart Tracking System Blockchain Ledger (Draft) <Section> <Group Name.> E.g., MO-IT148 Milestone 1: Smart Tracking System Blockchain Ledger (Submission) A1101 Group One.

3.  Present your Milestone 1 draft with your classmates and mentor in the Week 5 synchronous session. 

4.  You will deliver a 7-10 minute presentation showcasing your progress on storing IoT data on the blockchain. Ensure your presentation is well-structured and includes the following:

    - 4.1.    Project Overview – Introduce your team and briefly explain how your project stores IoT data on the blockchain.
    - 4.2.    Smart Contract Connection – Demonstrate how you set up Python, connected to Ganache, and verified smart contract recognition.
    - 4.3     Data Transactions & Retrieval – Show how you stored IoT data, retrieved records, and verified transactions.


## Week 4 - Milestone 1: Smart Tracking System Blockchain Ledger (Draft)

1.  Open Jupyter Notebook. 

    $ jupyter notebook <enter>

2.  Verify that Ganache is running in the background. Open the app on your desktop to ensure it’s running.

3.  Write a script that establishes a Web3 connection to the Ganache RPC URL (http://127.0.0.1:7545). Note: Check the port number in the Ganache settings, whether it is 7545 or 8545, and replace it accordingly.

4. Check if Python is successfully connected to the blockchain:

```python
from web3 import Web3

# Connect to local Ganache blockchain
ganache_url = "http://127.0.0.1:7545"
web3 = Web3(Web3.HTTPProvider(ganache_url))

if web3.is_connected():
    print("✅ Connected to Ganache successfully!")
else:
    print("❌ Connection failed. Ensure Ganache is running.")
```    


## Week 5 - Milestone 1: Smart Tracking System Blockchain Ledger (Submission)

You’ve completed IoT data simulation and smart contract development. Now, you'll integrate Python with the blockchain to store your simulated IoT data. This milestone highlights how blockchain secures IoT data and its real-world applications in logistics, healthcare, and environmental monitoring industries.

Follow the instructions below: 

1. See the instructions here. Go to Week 5 - Milestone 1: Smart Tracking System Blockchain Ledger (Submission).
2. Make a copy of this template to log your process.
3. Follow the naming convention: MO-IT148 Milestone 1: Smart Tracking System Blockchain Ledger (Submission) <Section> <Group Name.> E.g., MO-IT148 Milestone 1: Smart Tracking System Blockchain Ledger (Submission) A1101 Group One
4. Ensure your file’s share settings have been updated so anyone from MMDC can comment. 
5. Copy the link to your output and paste it here on Camu. 