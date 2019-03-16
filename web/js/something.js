var cattype,place,datepicker,country1,description,file,reward,name,phone,otp,resp;
$(document).ready(function()
{
  $("#otp").hide();
  $("#glycon").hide();
  $("#lostbtn1").hide();
  
  $("#lostbtn").click(function()
  {
   connect(); 
  }) ;
});
function validate ()
{
    cattype=$("#cattype").val();
    place=$("#place").val();
    datepicker=$("#datepicker").val();
    country1=$("#country1").val();
    description=$("#description").val();
    file=$("#file").val();
    reward=$("#reward").val();
    name=$("#name").val();
    phone=$("#phone").val();
   
    var status=true;
    if(cattype==="")
    {
       $("#sp1").text("This fieid is required.").css("color","red").fadeOut(10000);
       status=false;  
    }
    if(place==="")
    {
       $("#sp2").text("This fieid is required.").css("color","red").fadeOut(10000);
       status=false;  
    }
    if(datepicker==="")
    {
       $("#sp3").text("This fieid is required.").css("color","red").fadeOut(10000);
       status=false;  
    }
    if(country1==="")
    {
       $("#sp4").text("This fieid is required.").css("color","red").fadeOut(10000);
       status=false;  
    }
    if(description==="")
    {
       $("#sp5").text("This fieid is required.").css("color","red").fadeOut(10000);
       status=false;  
    }
   
    if(file==="")
    {
       $("#sp6").text("This fieid is required.").css("color","red").fadeOut(10000);
       status=false;  
    }
    if(reward==="")
    {
       $("#sp7").text("This fieid is required.").css("color","red").fadeOut(10000);
       status=false;  
    }
    if(name==="")
    {
       $("#sp8").text("This fieid is required.").css("color","red").fadeOut(10000);
       status=false;  
    }
    if(phone==="")
    {
       $("#sp9").text("This fieid is required.").css("color","red").fadeOut(10000);
       status=false;  
    }
          return status;
      
    }
    
function connect()
{
  if(!validate())
    {
     return;
    }
      $("#otp").show();
      $("#glycon").show();
      $("lostbtn").hide();
      $("#lostbtn1").show();
     Disabled();
     alert(phone);
    var mydata={phone:phone};
    var request=$.post("essageControllerServlet",mydata,processresponse);
    request.error(handleError);
    
 function processresponse(responseText)
{
  resp=responseText;
 }
 
}
    function handleError(xhr,textStatus)
    {
    
    if(textStatus==='error'){
        $("#loginresult").html("Error is "+xhr.status);
    }
}
 
$(document).ready(function()
{
$("#lostbtn1").click(function()
{
 connect1();   
});
    
});
  function connect1()
   {
      otp=$("#otp").val();
      if( !valid() && resp===otp)
      {
          return;
      }
   
    var form = $('#fileUploadForm')[0];
    var data = new FormData(form); 
    data.append("cattype",cattype);
    data.append("place",place);
    data.append("datepicker",datepicker);
    data.append("country1",country1);
    data.append("description",description);
    data.append("reward",reward);
    data.append("name",name);
    data.append("phone",phone);
    $.ajax(
    {
            type: "POST",
            enctype: 'multipart/form-data',
            url: "LostControllerServlet1",
            data: data,
            processData: false,
            contentType: false,
            cache: false,
            timeout: 6000000,
            success: function (data) 
            {
           
           $("#lostresult").html(data);
             
            },
            error: function (e) 
            {
                $("#smsresp").html(e);
            }    
    });
  
       
   }
   function Disabled()
   {
    $("#cattype").prop("disabled",true);
    $("#place").prop("disabled",true);

    $("#datepicker").prop("disabled",true);

    $("#country1").prop("disabled",true);

    $("#description").prop("disabled",true);

    $("#image").prop("disabled",true);

    $("#reward").prop("disabled",true);

    $("#name").prop("disabled",true);

    $("#phone").prop("disabled",true);

   }
   
   function pload(evt)
   {
     var tgt = evt.target || window.event.srcElement,
        files = tgt.files;

    // FileReader support
    if (FileReader && files && files.length) {
        var fr = new FileReader();
        fr.onload = function () {
            document.getElementById('upload').src = fr.result;
        }
        fr.readAsDataURL(files[0]);
    }
   }
		