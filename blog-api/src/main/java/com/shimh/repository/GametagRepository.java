package com.shimh.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.shimh.entity.Gametag;
import com.shimh.repository.wrapper.GametagWrapper;




public interface GametagRepository extends JpaRepository<Gametag, Integer>, GametagWrapper {

    @Query(value = "select t.*, count(at.tag_id) as count from game_tag at "
            + "right join game_tag_info t on t.id = at.tag_id "
            + "group by t.id order by count(at.tag_id) desc limit :limit",nativeQuery = true)
    List<Gametag> listHotTagsByGameUse(@Param("limit") int limit);


}
