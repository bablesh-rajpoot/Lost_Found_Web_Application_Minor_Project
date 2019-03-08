/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package LostFound.dto;

/**
 *
 * @author BABLESH RAJPOOT
 */
public class ReportsDTO 
{
 private  String report_Id;
 private  String item_Name;
 private  String item_cat;
 private  String missing_place;
 private  String article_img;
 private  String missing_date;
 private  String item_desc; 
 private  long   item_reward;
 private String report_type;

    public String getReport_Id() {
        return report_Id;
    }

    public void setReport_Id(String report_Id) {
        this.report_Id = report_Id;
    }

    public String getItem_Name() {
        return item_Name;
    }

    public void setItem_Name(String item_Name) {
        this.item_Name = item_Name;
    }

    public String getItem_cat() {
        return item_cat;
    }

    public void setItem_cat(String item_cat) {
        this.item_cat = item_cat;
    }

    public String getMissing_place() {
        return missing_place;
    }

    public void setMissing_place(String missing_place) {
        this.missing_place = missing_place;
    }

    public String getArticle_img() {
        return article_img;
    }

    public void setArticle_img(String article_img) {
        this.article_img = article_img;
    }

    public String getMissing_date() {
        return missing_date;
    }

    public void setMissing_date(String missing_date) {
        this.missing_date = missing_date;
    }

    public String getItem_desc() {
        return item_desc;
    }

    public void setItem_desc(String item_desc) {
        this.item_desc = item_desc;
    }

    public long getItem_reward() {
        return item_reward;
    }

    public void setItem_reward(long item_reward) {
        this.item_reward = item_reward;
    }

    public String getReport_type() {
        return report_type;
    }

    public void setReport_type(String report_type) {
        this.report_type = report_type;
    }
}
