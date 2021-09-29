pragma solidity ^0.6.7;
/**
 * Agregamos ABIEncoderV2 para poder retornar el arreglo de nombres
 * Note: desde solidity ^0.8.0 esta implementada esta funcionalidad
 * por lo que no sería necesario añadirla
 * */
pragma experimental ABIEncoderV2;

contract MappingArray{
    
    //@names : arreglo de string con largo dinámico
    string[] names; 
    
    /***
    * @phoneNumbers  
    * mapping : 
    * llave => valor 
    * string => int 
    * nombre => número de teléfono
    * name => mobileNumber
    * */
    mapping (string => uint) public phoneNumbers;
    
    /**
     * @dev agrega un nombre al mapping <phoneNumbers> con su respectivo número de teléfono
     * */
    function addMobilePhoneNumber(string memory _name, uint _mobileNumber) public{
        phoneNumbers[_name] = _mobileNumber;
    }
    
    /**
     * @dev obtiene el número de teléfono desde el mapping <phoneNumbers>
     * según el nombre ingresado por parámetro
     * @return uint
     * */
    function getMobileNumber(string memory _name) public view returns(uint){
        return phoneNumbers[_name];
    }
    
    /***
     * @dev Agrega un nuevo nombre al arreglo de string <names>
     * */
    function addName(string memory _name) public {
        names.push(_name);
    }
    
    /***
     * @dev Retorna el nombre contenido en el arreglo
     * según el valor recibido por parámetro
     * @param _num = índice de búsqueda en el arreglo
     * @return string 
     * */
    function getName(uint256 _num) public view returns(string memory){
        return names[_num];
    }
    
    /***
     * @dev Retorna todos los nombres contenidos en el arreglo <names>
     * */
    function getNames() public view returns(string[] memory){
        return names;
    }
    
}
