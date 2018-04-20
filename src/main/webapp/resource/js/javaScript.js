function allLetter(type, name, mx, my) {
    debugger;
    //var type = document.getElementById('Type');  
    var type_len = type.value.length;
    if (type_len == 0 || type_len >= my || type_len < mx) {
        alert(name+'  should not be empty / length must be between ' + mx + ' to ' + my)
        return false;
    }
    else {
        var letters = /^[A-Za-z-\s-]+$/;
        if (type.value.match(letters)) {
            return true;
        }
        else {
            alert(name+' must have alphabet characters only');

            return false;
        }
    }
}
function ValidateEmail(inputText)
{
    var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
    if(inputText.value.match(mailformat))
    {
        // document.form1.text1.focus();
        return true;
    }
    else
    {
        alert("You have entered an invalid email address!");
        // document.form1.text1.focus();
        return false;
    }
}

function phonenumber(inputtxt)
{
    var phoneno = /^\d{10}$/;
    if((inputtxt.value.match(phoneno)))
    {
        return true;
    }
    else
    {
        alert("Contact must have 10 digits/no alphabets allowed");
        return false;
    }
}





