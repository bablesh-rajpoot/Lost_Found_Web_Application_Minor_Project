/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package LostFound.dao;

import LostFound.dbutil.DBConnection;
import LostFound.dto.Personal_infoDTO;
import LostFound.dto.ReportsDTO;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Date;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

/**
 *
 * @author BABLESH RAJPOOT
 */
public class LostFoundDAO 
{
   private static PreparedStatement ps1,ps2,ps3;
   private static Statement st1,st2;
     static
      {
       try
          {
           ps1=DBConnection.getConnection().prepareStatement("insert into reports values(?,?,?,?,?,?,?,?,?)");
           ps2=DBConnection.getConnection().prepareStatement("insert into personal_info values(?,?,?)");
           ps3=DBConnection.getConnection().prepareStatement("select * from reports");
           st1=DBConnection.getConnection().createStatement();
         }
          catch(Throwable th)
          {
           System.out.println("Error In DB"+th);
           th.printStackTrace();
          }
     }
  public static boolean lostReports(ArrayList<ReportsDTO>rlist,String pername,long mob)throws SQLException
  {
   ResultSet rs=st1.executeQuery("select count(*) as count from reports ");
   ResultSet rs1=st2.executeQuery("select count(*) as count from personal_info ");
    rs.next();
    rs1.next();
    int lastId=rs.getInt(1);
    int lastId1=rs1.getInt(1);
    String nextId="LOST-00"+(lastId+1);
    String nextId1="LOST-00"+(lastId1+1);
    ps2.setString(1, nextId1);
    ps2.setString(2,pername);
    ps2.setLong(3, mob);
    int ans1=ps2.executeUpdate();
    int count=0;
    System.out.println("reports insert 1"+ans1);
    for(ReportsDTO p:rlist)
    {
     ps1.setString(1,nextId);
     ps1.setString(2,p.getItem_Name());
     ps1.setString(3,p.getItem_cat());
     ps1.setString(4,p.getMissing_place());
     SimpleDateFormat sdf=new SimpleDateFormat("dd/MMM/yyyy");
     ps1.setString(5,sdf.format(p.getMissing_date()));
     ps1.setString(6, p.getItem_desc());
     ps1.setString(7,p.getArticle_img());
     String report="Lost";
     ps1.setString(8,report);
     ps1.setString(9,p.getItem_reward());
     int ans2=ps1.executeUpdate();
     if(ans2==1)
       ++count;
       System.out.println("Report inserted "+ans2);
    }
    return (ans1==1 && count==rlist.size());
   
  
  }
   public static boolean addNewReports(ReportsDTO obj,Personal_infoDTO obj1)throws SQLException, ParseException
{
  ResultSet rs=st1.executeQuery("select count(*) as count from reports ");
 // ResultSet rs1=st2.executeQuery("select count(*) as count from personal_info ");
    rs.next();
    //rs1.next();
    int lastId=rs.getInt(1);
    //int lastId1=rs1.getInt(1);
    String nextId="LOST-00"+(lastId+1);
   // String nextId1="LOST-00"+(lastId1+1);
    ps2.setString(1, nextId);
    ps2.setString(2,obj1.getPerson_name());
    ps2.setLong(3,obj1.getMobile_no());
    int ans1=ps2.executeUpdate();
    System.out.println("reports insert 1"+ans1);
  
    
     ps1.setString(1,nextId);
     ps1.setString(2,obj.getItem_Name());
     ps1.setString(3,obj.getItem_cat());
     ps1.setString(4,obj.getMissing_place());
     java.util.Date today=new java.util.Date();
    long ms=today.getTime();
    java.sql.Date missdate=new java.sql.Date(ms);
    
     ps1.setDate(5,missdate);
     ps1.setString(6, obj.getItem_desc());
     ps1.setString(7,obj.getArticle_img());
     String report="Lost";
     ps1.setString(8,report);
     ps1.setString(9,obj.getItem_reward());
     int ans2=ps1.executeUpdate();
     
        System.out.println("Report inserted 2 "+ans2);
    return (ans1==1 && ans2==1);
}
   
   public static ArrayList<ReportsDTO> viewReports()throws SQLException, ParseException
{
 ArrayList<ReportsDTO> rlist=new ArrayList<>();
ResultSet rs=ps3.executeQuery();
while(rs.next())
{
  ReportsDTO obj=new ReportsDTO();
  obj.setReport_Id(rs.getString(1).toUpperCase());
  obj.setItem_Name(rs.getString(2).toUpperCase());
  obj.setItem_cat(rs.getString(3).toUpperCase());
  obj.setMissing_place(rs.getString(4).toUpperCase());
  obj.setMissing_date(rs.getDate(5));
  obj.setItem_desc(rs.getString(6).toUpperCase());
  obj.setArticle_img(rs.getString(7).toUpperCase());
  obj.setReport_type(rs.getString(8).toUpperCase());
  obj.setItem_reward(rs.getString(9).toUpperCase());
  rlist.add(obj);
}
 return rlist;    
}
    
     
}
     
     
  

