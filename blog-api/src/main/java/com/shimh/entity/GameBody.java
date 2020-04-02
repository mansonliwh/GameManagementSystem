package com.shimh.entity;
import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Lob;
import javax.persistence.Table;

import org.hibernate.annotations.Type;

import com.shimh.common.entity.BaseEntity;


@Entity
@Table(name = "game_body")
public class GameBody extends BaseEntity<Long> {


    private static final long serialVersionUID = 2466484423393535142L;

    @Lob
    @Basic(fetch = FetchType.LAZY)
    @Type(type = "text")
    private String content;

    @Lob
    @Basic(fetch = FetchType.LAZY)
    @Type(type = "text")
    private String contentHtml;

    public String getContent() {
        return content;
    }


    public void setContent(String content) {
        this.content = content;
    }


    public String getContentHtml() {
        return contentHtml;
    }


    public void setContentHtml(String contentHtml) {
        this.contentHtml = contentHtml;
    }



}
