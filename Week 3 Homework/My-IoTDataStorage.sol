// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract IoTDataStorage {

    struct IoTData {
        uint256 timestamp;
        string patient_id;
        uint16 heart_rate;
        string blood_pressure;
        uint16 oxygen_level;
        string body_temp;
    }

    uint256 public constant MAX_ENTRIES = 100;
    IoTData[] public dataRecords;
    address public owner;

    event DataStored(
        uint256 timestamp,
        string patient_id,
        uint16 heart_rate,
        string blood_pressure,
        uint16 oxygen_level,
        string body_temp
    );

    modifier onlyOwner() {
        require(msg.sender == owner, "Not authorized");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    function storeData(
        string memory   _patient_id,
        uint16          _heart_rate,
        string memory   _blood_pressure,
        uint16          _oxygen_level,
        string memory   _body_temp
    ) public onlyOwner {
        
        require(dataRecords.length < MAX_ENTRIES, "Storage limit reached");
        
        dataRecords.push(IoTData(
            block.timestamp, 
            _patient_id, 
            _heart_rate, 
            _blood_pressure, 
            _oxygen_level, 
            _body_temp
        ));
        
        emit DataStored(
            block.timestamp, 
            _patient_id, 
            _heart_rate, 
            _blood_pressure, 
            _oxygen_level, 
            _body_temp
        );
    }


    function getTotalRecords() public view returns (uint256) {
        return dataRecords.length;
    }


    function getRecord(uint256 index) public view returns (
        uint256, 
        string memory, 
        uint16, 
        string memory, 
        uint16, 
        string memory
    ) {
        require(index < dataRecords.length, "Index out of bounds");
        IoTData memory record = dataRecords[index];
        return (
            record.timestamp,
            record.patient_id,
            record.heart_rate,
            record.blood_pressure,
            record.oxygen_level,
            record.body_temp
        );
    }
}
