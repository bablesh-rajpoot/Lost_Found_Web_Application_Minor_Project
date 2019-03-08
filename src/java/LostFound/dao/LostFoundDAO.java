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
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

/**
 *
 * @author BABLESH RAJPOOT
 */
public class LostFoundDAO 
{
   private static PreparedStatement ps1,ps2;
   private static Statement st1,st2;
     static
      {
       try
          {
           ps1=DBConnection.getConnection().prepareStatement("insert into reports values(?,?,?,?,?,?,?,?,?)");
           ps2=DBConnection.getConnection().prepareStatement("insert into personal_info values(?,?,?)");
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
     ps1.setLong(9,p.getItem_reward());
     int ans2=ps1.executeUpdate();
     if(ans2==1)
       ++count;
       System.out.println("Report inserted "+ans2);
    }
    return (ans1==1 && count==rlist.size());
   
  }
     
     
  
}
