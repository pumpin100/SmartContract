pragma solidity >=0.4.24 <0.6.0;

contract SmartContract {
    string myAza;
    string privateData;
    
    mapping(address => uint) balances;
    
    
    function setMyAza(string _myAza) public {
        myAza = _myAza;
    }
    
    function getMyAza() public view returns(string){
        return myAza;
    }
    
    function Owner(string _privateData) private {
          privateData = _privateData;
    } 
    
    function() public payable {
        balances[msg.sender] += msg.value;
        
    }   
    
    function withdrawToken(address _from, address _to, uint _amount) public {
        if(balances[_from] >= _amount) {
            _to.transfer(_amount);
            _to.send(_amount);
        }
    }
}
