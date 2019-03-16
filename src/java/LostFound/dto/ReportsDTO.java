/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package LostFound.dto;

import java.util.Date;
import java.util.Objects;

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
 private  Date missing_date;
 private  String item_desc; 
 private  String   item_reward;

    @Override
    public String toString() {
        return "ReportsDTO{" + "report_Id=" + report_Id + ", item_Name=" + item_Name + ", item_cat=" + item_cat + ", missing_place=" + missing_place + ", article_img=" + article_img + ", missing_date=" + missing_date + ", item_desc=" + item_desc + ", item_reward=" + item_reward + ", report_type=" + report_type + '}';
    }
 private String report_type;

    public String getReport_Id() {
        return report_Id;
    }

    public void setReport_Id(String report_Id) {
        this.report_Id = report_Id;
    }

    @Override
    public int hashCode() {
        int hash = 5;
        hash = 47 * hash + Objects.hashCode(this.report_Id);
        hash = 47 * hash + Objects.hashCode(this.item_Name);
        hash = 47 * hash + Objects.hashCode(this.item_cat);
        hash = 47 * hash + Objects.hashCode(this.missing_place);
        hash = 47 * hash + Objects.hashCode(this.article_img);
        hash = 47 * hash + Objects.hashCode(this.missing_date);
        hash = 47 * hash + Objects.hashCode(this.item_desc);
        hash = 47 * hash + Objects.hashCode(this.item_reward);
        hash = 47 * hash + Objects.hashCode(this.report_type);
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final ReportsDTO other = (ReportsDTO) obj;
        if (!Objects.equals(this.report_Id, other.report_Id)) {
            return false;
        }
        if (!Objects.equals(this.item_Name, other.item_Name)) {
            return false;
        }
        if (!Objects.equals(this.item_cat, other.item_cat)) {
            return false;
        }
        if (!Objects.equals(this.missing_place, other.missing_place)) {
            return false;
        }
        if (!Objects.equals(this.article_img, other.article_img)) {
            return false;
        }
        if (!Objects.equals(this.missing_date, other.missing_date)) {
            return false;
        }
        if (!Objects.equals(this.item_desc, other.item_desc)) {
            return false;
        }
        if (!Objects.equals(this.item_reward, other.item_reward)) {
            return false;
        }
        if (!Objects.equals(this.report_type, other.report_type)) {
            return false;
        }
        return true;
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

    public Date getMissing_date() {
        return missing_date;
    }

    public void setMissing_date(Date missing_date) {
        this.missing_date = missing_date;
    }

    public String getItem_desc() {
        return item_desc;
    }

    public void setItem_desc(String item_desc) {
        this.item_desc = item_desc;
    }

    public String getItem_reward() {
        return item_reward;
    }

    public void setItem_reward(String item_reward) {
        this.item_reward = item_reward;
    }

    public String getReport_type() {
        return report_type;
    }

    public void setReport_type(String report_type) {
        this.report_type = report_type;
    }
}
