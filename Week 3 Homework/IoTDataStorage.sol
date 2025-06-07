// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// This contract stores IoT package data including timestamp, package_id, GPS coordinates, temperature, and status
contract IoTDataStorage {

    // Define a structure to hold data in the specified order and casing
    struct IoTData {
        uint256 timestamp;       // Unix timestamp when data is stored
        string package_id;       // Unique package identifier
        string gps_coords;       // GPS coordinates in string format 
        string temperature;      // Temperature reading
        string status;           // Package status
    }

    // Set a maximum number of entries that can be stored
    uint256 public constant MAX_ENTRIES = 100;

    // Array to hold all data records
    IoTData[] public dataRecords;

    // Address of the contract owner (the one who deployed it)
    address public owner;

    // Event emitted when new data is stored
    event DataStored(
        uint256 timestamp,
        string package_id,
        string gps_coords,
        string temperature,
        string status
    );

    // Restricts certain functions to only be callable by the owner
    modifier onlyOwner() {
        require(msg.sender == owner, "Not authorized");
        _;
    }

    // Constructor sets the deployer as the contract owner
    constructor() {
        owner = msg.sender;
    }

    // Function to store new IoT data
    function storeData(
        string memory _package_id,
        string memory _gps_coords,
        string memory _temperature,
        string memory _status
    ) public onlyOwner {
        require(dataRecords.length < MAX_ENTRIES, "Storage limit reached");

        // Create and store new data record
        IoTData memory newData = IoTData(
            block.timestamp,
            _package_id,
            _gps_coords,
            _temperature,
            _status
        );
        dataRecords.push(newData);

        // Emit event with stored data
        emit DataStored(
            block.timestamp,
            _package_id,
            _gps_coords,
            _temperature,
            _status
        );
    }

    // Return the total number of records stored
    function getTotalRecords() public view returns (uint256) {
        return dataRecords.length;
    }

    // Retrieve a specific record by index
    function getRecord(uint256 index) public view returns (
        uint256,
        string memory,
        string memory,
        string memory,
        string memory
    ) {
        require(index < dataRecords.length, "Index out of bounds");
        IoTData memory record = dataRecords[index];
        return (
            record.timestamp,
            record.package_id,
            record.gps_coords,
            record.temperature,
            record.status
        );
    }
}