var random__recapcha = 0;
window.onload =function()
{
    random__recapcha = Math.floor(Math.random() * 99990) + 100000;
    document.getElementsByClassName('recapcha__form')[0].innerHTML = random__recapcha;
}
function checkForm()
{
    //check form correct or incorrect
    var email = document.getElementById("email_us").value;
    if(email !== "")
    {
        var aG = email.indexOf("@");
        var dot = email.lastIndexOf(".");
        if ((aG < 1) || (dot < aG + 2) || (dot + 2 > email.length)) 
        {
            alert("The email you entered is incorrect");
            return false;
        }
    }
    else
    {
        return false;  //email
    }
    /////
    var password = document.getElementById("pass_us").value;
    if (password === "")
    {
        return false;  //pass
    }

    document.getElementById("name_us").required = true;
    var name = document.getElementById("name_us").value;
    if(name === "")
    {
        return false;  //name
    }
    document.getElementById("conf_pass_us").required = true;
    var confirmPassword = document.getElementById("conf_pass_us").value;
    if(confirmPassword !== "")
    {
        if (password !== confirmPassword) 
        {
            alert("Password and Confirm Password are not the same.");
            return false;
        }
    }
    else
    {
        return false;  //conf pass
    }
    document.getElementById("recapcha_us").required = true;
    var recapcha = document.getElementById("recapcha_us").value;
    if(recapcha !== "")
    {
        if (recapcha !== String(random__recapcha)) 
        {
            alert("The Recapcha you entered is incorrect");
            return false;
        }
    }
    else
    {
        return false;  //recapcha
    }
    if(document.getElementById("termsAndCons").checked === false)
    {
        alert("Accept Terms and Conditions.");
        return false;  //termAndCons
    }

    return true;
}
function buttonSign()
{
    var check = checkForm();
}