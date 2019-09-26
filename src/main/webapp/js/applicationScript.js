function employeeInputValidation() {
    var matchString = /^[a-zA-Z ]+$/;
    var matchEmail = /^[a-z0-9_$*!#^|-~`&%+]+[a-z0-9_$*!#^|-~`&%+.]*[a-z0-9_$*!#^+|-~`&%]*[@][a-z0-9]+[.][a-z]+$/;
    var matchDoorNo = /^[A-Za-z0-9/ ]+$/;
    var matchMobileNumber = /^[0-9]{10}$/;
    var matchNumber = /^[0-9.]+$/;
    var matchPincode = /^[6][0-9]{5}$/;
    
    if(!document.employeeCreateForm.employeeName.value.match(matchString)) {
        alert("Please use alphabetic character and space for Name");
        document.employeeCreateForm.employeeName.focus();
        return false;
    }
    if(!document.employeeCreateForm.employeeMobileNumber.value.match(matchMobileNumber)) {
        alert("Enter Valid Mobile Number");
        document.employeeCreateForm.employeeMobileNumber.focus();
        return false;
    }
    if(!document.employeeCreateForm.doorNumbertemp.value.match(matchDoorNo)) {
        alert("No special Characters allowed Except /");
        document.employeeCreateForm.doorNumber.focus();
        return false;
    }  
    if(!document.employeeCreateForm.streetNametemp.value.match(matchString)) {
        alert("Please use alphabetic character and space in Street Name");
        document.employeeCreateForm.streetName.focus();
        return false;
    }
    if(!document.employeeCreateForm.employeeEmail.value.match(matchEmail)) {
        alert("Enter mail id ex: \"simple@example.com , smp@example.org, very.common@example.com, simple1.simple@example.com\"");
        document.employeeCreateForm.employeeEmail.focus();
        return false;
    }
    if(!document.employeeCreateForm.localitytemp.value.match(matchString)) {
        alert("Please use alphabetic character and space in locality");
        document.employeeCreateForm.locality.focus();
        return false;
    }
    if(!document.employeeCreateForm.cityNametemp.value.match(matchString)) {
        alert("Please use alphabetic character and space in City Name");
        document.employeeCreateForm.cityName.focus();
        return false;
    }
    if(!document.employeeCreateForm.employeeSalary.value.match(matchNumber)) {
        alert("Enter Valid amount in salary");
        document.employeeCreateForm.employeeSalary.focus();
        return false;
    }
    if(!document.employeeCreateForm.pincodetemp.value.match(matchPincode)) {
        alert("Enter pincode between 600000-699999");
        document.employeeCreateForm.pincode.focus();
        return false;
    }
 }
 
function clientInputValidation() {
    var matchId = /^[a-zA-Z0-9]+$/;
    var matchString = /^[a-zA-Z ]+$/;
    var matchDoorNo = /^[A-Za-z0-9/ ]+$/;
    var matchEmail = /^[a-z0-9_$*!#^|-~`&%+]+[a-z0-9_$*!#^|-~`&%+.]*[a-z0-9_$*!#^+|-~`&%]*[@][a-z0-9]+[.][a-z]+$/;
    var matchMobileNumber = /^[0-9]{10}$/;
    var matchPincode = /^[6][0-9]{5}$/;
    
    if(!document.clientCreateForm.clientId.value.match(matchId)) {
        alert("Valid Client Id");
        document.clientCreateForm.clientId.focus();
        return false;
    }
    if(!document.clientCreateForm.clientName.value.match(matchString)) {
        alert("Please use alphabetic character and space for Name");
        document.clientCreateForm.clientName.focus();
        return false;
    }
    if(!document.clientCreateForm.contactEmail.value.match(matchEmail)) {
        alert("Enter mail id ex: \"simple@example.com , smp@example.org, very.common@example.com, simple1.simple@example.com\"");
        document.clientCreateForm.contactEmail.focus();
        return false;
    }
    if(!document.clientCreateForm.contactMobileNumber.value.match(matchMobileNumber)) {
        alert("Enter Valid Mobile Number");
        document.clientCreateForm.contactMobileNumber.focus();
        return false;
    }
    if(!document.clientCreateForm.doorNumber.value.match(matchDoorNo)) {
        alert("No special Characters allowed Except /");
        document.clientCreateForm.doorNumber.focus();
        return false;
    }  
    if(!document.clientCreateForm.streetName.value.match(matchString)) {
        alert("Please use alphabetic character and space in Street Name");
        document.clientCreateForm.streetName.focus();
        return false;
    }
    if(!document.clientCreateForm.locality.value.match(matchString)) {
        alert("Please use alphabetic character and space in locality");
        document.clientCreateForm.locality.focus();
        return false;
    }
    if(!document.clientCreateForm.cityName.value.match(matchString)) {
        alert("Please use alphabetic character and space in City Name");
        document.clientCreateForm.cityName.focus();
        return false;
    }
    if(!document.clientCreateForm.contactPerson.value.match(matchString)) {
        alert("Please use alphabetic character and space for Name");
        document.clientCreateForm.contactPerson.focus();
        return false;
    }
    if(!document.clientCreateForm.pincode.value.match(matchPincode)) {
        alert("Enter pincode between 600000-699999");
        document.employeeCreateForm.pincode.focus();
        return false;
    }
 }
 
function checkAddressType() {
    if(document.getElementById("checkedAddress").checked) {
        document.getElementById("permanentDoorNo").value = document.getElementById("temporaryDoorNo").value;
        document.getElementById("permanentStreetName").value = document.getElementById("temporaryStreetName").value;
        document.getElementById("permanentLocality").value = document.getElementById("temporaryLocality").value;
        document.getElementById("permanentCityName").value = document.getElementById("temporaryCityName").value;
        document.getElementById("permanentStateName").value = document.getElementById("temporaryStateName").value;
        document.getElementById("permanentPincode").value = document.getElementById("temporaryPincode").value;
    }
}

function goBack() {
    window.history.back();
}

function getConfirmation() {
      var retVal = confirm("Do you want to continue ?");
      if( retVal == true ) {
         document.write ("User wants to continue!");
         return update-document;
      } else {
         document.write ("User does not want to continue!");
         return false;
      }
 }
 
