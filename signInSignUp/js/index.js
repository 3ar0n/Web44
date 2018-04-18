window.onload =function()
{
    document.querySelector('div.formSignIn div.background').className = "background active";
}  
function signInUp(signInUp)
{
    //document.querySelector('div.formSignIn').style.display = "block";
    $('div.formSignIn').fadeIn();
    if(signInUp === "signIn")
    {
        setTimeout( function()
        {

        },100 );
        signIn();
        document.querySelector('div.screenWelcome').style.display = "none";
        //$('div.screenWelcome').fadeOut();
    }
    if(signInUp === "signUp")
    {
        signUp();
        document.querySelector('div.screenWelcome').style.display = "none";
    }
}
function signUp()
{
    var inputs = document.querySelectorAll('div.formSignIn div.background form div.inputs input.input');
    document.querySelectorAll('div.formSignIn div.background form div.tabs ul.ulTabs li')[0].className=""; 
    document.querySelectorAll('div.formSignIn div.background form div.tabs ul.ulTabs li')[1].className="active"; 
    for(var i = 0; i < inputs.length ; i++  ) 
    {
        if(i == 2  )
        {
            
        }
        else
        {  
            document.querySelectorAll('div.formSignIn div.background form div.inputs input.input')[i].style.display = "block";
        }
    } 
    setTimeout( function()
    {
        for(var d = 0; d < inputs.length ; d++  ) 
        {
            document.querySelectorAll('div.formSignIn div.background form div.inputs input.input')[d].className = "input activeInput";  
        }
    },100 );
    setTimeout(function()
    {
        document.querySelector('div.formSignIn div.background form div.inputs a.linkForgotPass').style.opacity = "0";
        document.querySelector('div.formSignIn div.background form div.inputs a.linkForgotPass').style.fontSize = "0vh";
        if($(window).width() <= 1024)
        {
            document.querySelector('div.formSignIn div.background').style.marginTop = "10vh";
        }
        else
        {
            document.querySelector('div.formSignIn div.background').style.marginTop = "6vh";
        }
    },500);
    setTimeout(function()
    {   
        document.querySelector('div.formSignIn div.background form div.inputs a.linkForgotPass').style.display = "none";
    },800);
    document.querySelector('div.formSignIn div.background form div.inputs div.termsAndCons').style.opacity = "0";
    document.querySelector('div.formSignIn div.background form div.inputs div.termsAndCons').style.fontSize = "0vh";
    document.querySelector('div.formSignIn div.background form div.inputs div.termsAndCons').style.display = "block";
    setTimeout(function()
    {
        document.querySelector('div.formSignIn div.background form div.inputs div.termsAndCons').style.opacity = "1";
        document.querySelector('div.formSignIn div.background form div.inputs div.termsAndCons').style.fontSize = "3vh";
        document.querySelector('div.formSignIn div.background form div.button button.buttonSign').innerHTML = "SIGN UP"; 
    },1500);
}
function signIn()
{
    var inputs = document.querySelectorAll('div.formSignIn div.background form div.inputs input.input');
    document.querySelectorAll('div.formSignIn div.background form div.tabs ul.ulTabs li')[0].className = "active"; 
    document.querySelectorAll('div.formSignIn div.background form div.tabs ul.ulTabs li')[1].className = "";
    for(var i = 0; i < inputs.length ; i++  ) 
    {
        switch(i) 
        {
            case 1:
                console.log(inputs[i].name);
                break;
            case 2:
                console.log(inputs[i].name);
            default: 
            document.querySelectorAll('div.formSignIn div.background form div.inputs input.input')[i].style.display = "block";
        }
    }
    setTimeout( function()
    {
        for(var d = 0; d < inputs.length ; d++  ) 
        {
            switch(d) 
            {
                case 1:
                    console.log(inputs[d].name);
                    break;
                case 2:
                    console.log(inputs[d].name); 
                default:
                document.querySelectorAll('div.formSignIn div.background form div.inputs input.input')[d].style.display = "block";  
                document.querySelectorAll('div.formSignIn div.background form div.inputs input.input')[2].className = "input activeInput";  
            }
        }
        document.querySelector('div.formSignIn div.background form div.inputs div.termsAndCons').style.opacity = "0";
        document.querySelector('div.formSignIn div.background form div.inputs div.termsAndCons').style.fontSize = "0vh";
    },100 );
    setTimeout(function()
    {
        document.querySelector('div.formSignIn div.background form div.inputs div.termsAndCons').style.display = "none";
        if($(window).width() <= 1024)
        {
            document.querySelector('div.formSignIn div.background').style.marginTop = "18vh";
        }
        else
        {
            document.querySelector('div.formSignIn div.background').style.marginTop = "12vh";
        }
    },500);
    document.querySelector('div.formSignIn div.background form div.inputs a.linkForgotPass').style.display = "block";
    setTimeout(function()
    {
        document.querySelector('div.formSignIn div.background form div.inputs a.linkForgotPass').style.opacity = "1";
        document.querySelector('div.formSignIn div.background form div.inputs a.linkForgotPass').style.fontSize = "2vh"; 
        for(var d = 0; d < inputs.length ; d++  ) 
        {
            switch(d) 
            {
                case 1:
                console.log(inputs[d].name);
                break;
            case 2:
                console.log(inputs[d].name);
                break;
            default:
            document.querySelectorAll('div.formSignIn div.background form div.inputs input.input')[d].className = "input";  
            }
        }
    },1000);
    document.querySelector('div.formSignIn div.background form div.button button.buttonSign').innerHTML = "SIGN IN";    
}  