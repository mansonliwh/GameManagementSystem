package com.shimh.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.swing.plaf.basic.BasicEditorPaneUI;

import org.hibernate.validator.constraints.NotBlank;

import com.shimh.common.entity.BaseEntity;

@Entity
@Table(name = "game_category")
public class Gamecategory extends BaseEntity<Integer> {


    private static final long serialVersionUID = 6349319929165253477L;


    @NotBlank
    private String categoryname;

    private String description;

    @NotBlank
    private String avatar;



    public String getCategoryName() {
        return categoryname;
    }

    public void setCategoryName(String categoryname) {
        this.categoryname = categoryname;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }


}
