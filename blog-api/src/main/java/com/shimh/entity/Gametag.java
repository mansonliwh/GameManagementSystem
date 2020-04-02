package com.shimh.entity;

import javax.persistence.Entity;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotBlank;

import com.shimh.common.entity.BaseEntity;


@Entity
@Table(name = "game_tag_info")
public class Gametag extends BaseEntity<Integer> {


    private static final long serialVersionUID = 58131599980920643L;

    @NotBlank
    private String tagname;

    @NotBlank
    private String avatar;


    public String getTagName() {
        return tagname;
    }

    public void setTagName(String tagname) {
        this.tagname = tagname;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }


}
