//sign in
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
    return true;
}
function buttonSign()
{
    var check = checkForm();
}