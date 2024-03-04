// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract SimpleStorage {
    // variable types
      bool hasFavoriteNumber = true; // boolean - true/false
      uint256 favoriteNumber = 88; // unsigned integer - + only, can't be -
      string favoriteNumberInText = "eighty-eight"; // text
      int256 favoriteint = - 88; // integer - can be + or -
      address myAddress = 0x197517481a22D28a3A24b0b3A95af73f5F6E0644; // public address
      bytes32 favoriteBytes32 = "cat"; // bytes - # of characters; acts like a string; can't be bytes64.

    // functions
      function store(uint256 _favoriteNumber) public {
            favoriteNumber = _favoriteNumber;

      }
      function retrieve() public view returns(uint256) {
        return favoriteNumber;
      }      
       

   // arrays and structs 
      uint256 my_favorite_number;
      uint256[] list_of_favorite_numbers;

      struct Person {uint256 my_favorite_number; string name;} 

      Person public my_friend = Person(7, 'Pat');

      Person[] public list_of_people;

      // mappings - more efficient than arrays for large amounts of data
          mapping(string => uint256) public nameToFavoriteNumber;
          // step 2 - updated nametoFavoriteNumber below (line 40) and commented out answer for array lesson above

      function add_person(string memory _name, uint256 _my_favorite_number) public {
         // list_of_people.push(Person(_my_favorite_number, _name));
        
        nameToFavoriteNumber[_name] = _my_favorite_number;
           
      }
      
}

