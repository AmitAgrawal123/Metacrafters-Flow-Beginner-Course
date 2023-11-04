import DataHolder from 0x05 //importing contract 

//setting up main function which take input parameter address
pub fun main(account :Address ): DataHolder.DataDetails {

//returning the person accountdetails using using optionals unwrap -> !  
  return DataHolder.data[account]! 
}