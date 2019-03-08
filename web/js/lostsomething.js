var cattype,place,datepicker,country1,description,image,reward,name,phone,otp,resp;
$(document).ready(function()
{
  $("#otp").hide();
  $("#glycon").hide();
  
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
    image=$("#image").val();
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
   
    if(image==="")
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
       Upload();
    }
    
   function valid()
   {
    otp=$("#otp").val();
    var status1=true;
    if(otp==="")
    {
       $("#sp10").text("This fieid is required.").css("color","red").fadeOut(10000);
       status1=false;    
    }
    return status1;
   }
   function connect()
   
{
    
       if(!validate())
       {
           return;
         
       }
      $("#otp").show();
      $("#glycon").show();
       Disabled();
      $("#lostbtn").attr("value","VERIFY OTP");
     
    var form = $('#fileUploadForm')[0];
    var data = new FormData(form); 
    data.append("phone",phone);
    $.ajax(
    {
            type: "POST",
            enctype: 'multipart/form-data',
            url: "essageControllerServlet?mobile="+phone,
            data: data,
            processData: false,
            contentType: false,
            cache: false,
            timeout: 6000000,
            success: function (data) 
            {
             resp=data;
             alert(resp);
            
             
            },
            error: function (e) 
            {
                $("#smsresp").html(e);
            }    
    });
    
   }
   function insertdata()
   {
        otp=$("#otp").val();
       if(otp==="" && opt===resp)
       {
    var form = $('#fileUploadForm')[0];
    var data = new FormData(form); 
    data.append("cattype",cattype);
    data.append("place",place);
    data.append("datepicker",datepicker);
    data.append("country1",country1);
    data.append("description",description);
    data.append("#image",image);
    data.append("#reward",reward);
    name.append("#name",name);
    data.append("phone",phone);
    $.ajax(
    {
            type: "POST",
            enctype: 'multipart/form-data',
            url: "LostControllerServlet",
            data: data,
            processData: false,
            contentType: false,
            cache: false,
            timeout: 6000000,
            success: function (data) 
            {
             resp=data;
             alert(resp);
             $("#lostbtn").text("Verify OTP");
             
            },
            error: function (e) 
            {
                $("#smsresp").html(e);
            }    
    });
  
       }
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
   
   function Upload()
   {
     image=$("#image").val();
     alert(image);
     $("#Upload").attr("src",image);  
   }
		