/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package LostFound.dao;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Random;
import java.util.Scanner;
import org.json.JSONObject;

/**
 *
 * @author NSD COMPUTER04
 */
public class SmsDAO 

{
    
   static String url = "http://www.way2sms.com";
   static Scanner sc = new Scanner ( System.in);
   static String randomnumber;
    static String otp;
      public static String sendMessage(String number) throws Exception
    {
      
      
          // construct data
          
       JSONObject urlParameters = new JSONObject();
        
      String apiKey = "4HVZ7PO6EY044E1WEH70HVKDRSXJSH27";
      String  secretKey ="OODRTK4J7ZSGP8P8";
      String useType ="stage";
     
     Random r = new Random();
    randomnumber = String.format("%4d",r.nextInt(10001));
    System.out.println("Your otp is "+randomnumber);
       
      String senderid="7974363692";
      urlParameters.put("apikey",apiKey);
      urlParameters.put("secret",secretKey);
      urlParameters.put("usetype",useType);
      urlParameters.put("phone", number);
      urlParameters.put("message", URLEncoder.encode( randomnumber,"UTF-8"));
      urlParameters.put("senderid", senderid);
     
         URL obj = new URL(url + "/api/v1/sendCampaign");
          // send data
        HttpURLConnection httpConnection = (HttpURLConnection) obj.openConnection();
        httpConnection.setDoOutput(true);
        httpConnection.setRequestMethod("POST");
        DataOutputStream wr = new DataOutputStream(httpConnection.getOutputStream());
        wr.write(urlParameters.toString().getBytes());
        // get the response  
        BufferedReader bufferedReader = null;
        if (httpConnection.getResponseCode() == 200) {
            bufferedReader = new BufferedReader(new InputStreamReader(httpConnection.getInputStream()));
        } else {
            bufferedReader = new BufferedReader(new InputStreamReader(httpConnection.getErrorStream()));
        }
        StringBuilder content = new StringBuilder();
        String line;
        int x=0;
        while ((line = bufferedReader.readLine()) != null) {
            x=1;
            content.append(line).append("\n");
        }
        bufferedReader.close();
        
          System.out.println(" "+content.toString());
          System.out.println("sucessfully otp send  your mobile number");
            
         if(x==1)
         {
             
             System.out.println(" Otp process Falied! thanks");
             
             return randomnumber;
         }
         else
         {
             System.out.println(" Otp not Match ! Try again later ");
              return "NO";
         }
          
      }
         
    }
  

