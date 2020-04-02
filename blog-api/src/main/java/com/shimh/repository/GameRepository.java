package com.shimh.repository;

import java.util.List;


import com.shimh.repository.wrapper.GameWrapper;
import com.shimh.vo.PageVo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.shimh.entity.Game;
import com.shimh.entity.Gamecategory;
import com.shimh.entity.Gametag;




public interface GameRepository extends JpaRepository<Game, Integer>, GameWrapper {

    List<Game> findByTags(Gametag tag);
    List<Game> findByCategory(Gamecategory category);

    @Query(value = " select * from game_meta order by id desc limit :limit",nativeQuery = true)
    List<Game> findOrderByIdAndLimit(@Param("limit") int limit);



}
