package com.shimh.vo;

import com.shimh.entity.Game;

public class GameVo extends Game {

    private static final long serialVersionUID = -8123546154281424986L;

    private Integer categoryId;

    private Integer tagId;


    public Integer getCategoryId(){return categoryId;}

    public void setCategoryId(){this.categoryId = categoryId;}

    public Integer getTagId(){return tagId;}

    public void setTagId(){this.tagId = tagId;}





    @Override
    public String toString(){
        return "GameVo{" +
                "categoryId=" + categoryId + '\'' +
                ", tagId=" + tagId + '}';
    }

}
