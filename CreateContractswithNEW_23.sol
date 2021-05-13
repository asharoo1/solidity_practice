// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Car{
    
    string public model;
    address public owner;

    constructor(string memory _model, address _owner) public payable{
        model = _model;
        owner = _owner;
    }
}

contract CarFactory{
    
    Car[] public cars;
    function createCar(string memory _model) public{
        
        Car car = new Car(_model, address(this));
        cars.push(car);
    }
    
}
