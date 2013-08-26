function TestForSubmit(type)
{
    switch (type)
    {
        case 'login':
            {
                if ($("#username").val() == "" || $("#password").val() == "")
                {
                    alert("All Fields Required !!");
                    return false;
                }
            }; break;
        case 'popup':
            {
                if($("#popup_title").val() == "" ||
                    $("#details").val() == "" ||
                    $("#button1").val() == "" || $("#button2").val() == "")
                {
                     alert("All Fields Required !!");
                     return false;
                }
            }; break;
        case 'settings':
            {
                if ($("#open_times").is(':checked') && ($("#open_times_count").val() == "" || $("#open_times_count").val() == "0"))
                {
                    alert("Please Enter User Open the app Count");
                    $("#open_times_count").focus();
                    return false;
                }
            }; break;
    }

    return true;
}