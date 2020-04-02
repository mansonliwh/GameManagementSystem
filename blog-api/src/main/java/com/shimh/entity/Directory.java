package com.shimh.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.validator.constraints.NotBlank;

import com.shimh.common.entity.BaseEntity;

@Entity
@Table(name = "user_defined_directory")
public class Directory extends BaseEntity<Integer> {

	private static final long serialVersionUID = -25373634071310056L;


    @NotBlank
    private String directory_name;

    private int game_id;

    public String getDirectoryname() {
        return directory_name;
    }

    public void setDirectoryname(String gameid) {
        this.directory_name = directory_name;
    }

    public int getGameid() {
        return game_id;
    }

    public void setGameid(int gameid) {
        this.game_id = game_id;
    }

}
