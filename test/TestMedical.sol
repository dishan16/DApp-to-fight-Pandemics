pragma solidity ^0.5.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Medical.sol";

contract TestMedical {

    Medical medical = Medical(DeployedAddresses.Medical());

    // Testing the addPatient() function returns true
    function testUserCanAddRecord() public {
        
        bool returnStatus = medical.addPatient("123456789", "Tom Smith", "Mater", "Dr Andrew Brown", "ACETIC ACID");
        bool expected = true;
        Assert.equal(returnStatus, expected, "Addition of patient record will equal true.");
    }

    // Testing the number of patients
    function testGetNumOfPatients() public {
        uint returnStatus = medical.getNumPatients();
        uint expected = 1;
        Assert.equal(returnStatus, expected, "Retrieval of patient ID should be 0.");
    }


}