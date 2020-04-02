package com.shimh.entity;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.validator.constraints.NotBlank;
import org.springframework.format.annotation.DateTimeFormat;

import com.alibaba.fastjson.annotation.JSONField;
import com.shimh.common.entity.BaseEntity;



@Entity
@Table(name = "game_meta")
public class Game extends BaseEntity<Integer>{


    private static final long serialVersionUID = 5514844993923659044L;

    @NotBlank
    @Column(name = "game_name", length = 100)
    private String game_name;

    @NotBlank
    private String avatar;

    @Column(name = "publisher", length = 40)
    private String publisher;

    @Column(name = "publish_year", length = 10)
    private String publish_year;

    @Column(name = "rate",length = 20)
    private String rate;

    @Column(name = "price",length = 20)
    private String price;

    @OneToOne(cascade = {CascadeType.ALL},fetch = FetchType.LAZY, orphanRemoval = true)
    @JoinColumn(name = "body_id")
    private GameBody body;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "category_id")
    private Gamecategory category;


    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(name = "game_tag",
            joinColumns = {@JoinColumn(name = "game_id")},
            inverseJoinColumns = {@JoinColumn(name = "tag_id")})
    private List<Gametag> tags;

    public String getGameName(){return game_name;}

    public void setGameName(String game_name){this.game_name = game_name;}

    public String getAvatar(){return avatar;}

    public void setAvatar(String avatar){this.avatar = avatar;}

    public String getPublisher(){return publisher;}

    public void setPublisher(String publisher){this.publisher = publisher;}

    public  String getPublishYear(){return publish_year;}

    public void setPublishYear(String publish_year){this.publish_year = publish_year;}

    public String getRate(){return rate;}

    public void setRate(String rate){this.rate = rate;}

    public String getPrice(){return price;}

    public void setPrice(String price){this.price = price;}

    public Gamecategory getGameCategory(){return category;}

    public void setGameCategory(Gamecategory category){this.category = category;}

    public GameBody getBody(){return body;}

    public void setBody(GameBody body){this.body = body;}

    public List<Gametag> getGameTags(){return tags;}

    public void setGameTags(List<Gametag> tags){this.tags = tags;}


}
