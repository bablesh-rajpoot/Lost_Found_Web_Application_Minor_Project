/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package LostFound.controller;

import LostFound.dao.LostFoundDAO;
import LostFound.dto.Personal_infoDTO;
import LostFound.dto.ReportsDTO;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;
import org.apache.tomcat.util.http.fileupload.servlet.ServletRequestContext;

/**
 *
 * @author BABLESH RAJPOOT
 */
public class LostControllerServlet1 extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         RequestDispatcher rd=null;
        try 
        {
        ServletFileUpload sfu=new ServletFileUpload(new DiskFileItemFactory());
        List<FileItem> multiparts = sfu.parseRequest(new ServletRequestContext(request));
	System.out.println("Size is :"+multiparts.size());	
        ArrayList<String> objValues=new ArrayList<>();
         for(FileItem item : multiparts)
         {
	  if (item.isFormField()) 
          {
               
                String fieldName = item.getFieldName();
                String fieldValue = item.getString();
                    System.out.println(fieldName+":"+fieldValue);
                    objValues.add(fieldValue);
                
            }
          else
          {
                
                String fieldName = item.getFieldName();
                System.out.println("shoe fied "+fieldName);
                //String fileName = new File(item.getName()).getName();
                String fileName=item.getName();
                objValues.add(fileName);
                System.out.println(fieldName+":"+fileName);
                InputStream fileContent = item.getInputStream();
                System.out.println("content:"+fileContent);
                
                String imagePath="D:/Web Application/Lost_and_Found_App_1_Test/web/images"; 
                System.out.println("path is:"+imagePath);
                File myFile=new File(imagePath+"/"+fileName);
                 System.out.println("File will be saved at:"+myFile.getAbsolutePath());
                    System.out.println("File created:"+myFile.createNewFile());
                item.write(myFile);
                System.out.println("File saved at:"+myFile.getAbsolutePath());
                
            }
                    
                    
         } 
         ReportsDTO obj=new ReportsDTO();
         obj.setArticle_img(objValues.get(0));
         obj.setItem_Name(objValues.get(2));
         obj.setMissing_place(objValues.get(3));
         //obj.setMissing_date(objValues.get(4));
         obj.setItem_cat(objValues.get(5));
         obj.setItem_desc(objValues.get(6));
         obj.setItem_reward(objValues.get(7));
        
         
         
         Personal_infoDTO pid=new Personal_infoDTO();
         pid.setPerson_name(objValues.get(8));
         pid.setMobile_no(Long.parseLong(objValues.get(9)));
         
         boolean result=LostFoundDAO.addNewReports(obj, pid);
        if(result==true)
         {
             rd=request.getRequestDispatcher("success.jsp");
             request.setAttribute("success",result);
        }
         else
         {
             rd=request.getRequestDispatcher("failure.html");
         }
        }
        
	catch (Exception ex)
        {
                rd=request.getRequestDispatcher("showexception.jsp");
                request.setAttribute("ex", ex);
                System.out.println("Exception:"+ex);
                ex.printStackTrace();
            }
        finally
        {
            rd.forward(request, response);
        }
        
        }
    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
