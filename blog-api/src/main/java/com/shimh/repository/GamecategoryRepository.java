package com.shimh.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.shimh.entity.Gamecategory;
import com.shimh.repository.wrapper.GamecategoryWrapper;




public interface GamecategoryRepository extends JpaRepository<Gamecategory, Integer>, GamecategoryWrapper {


//	  List<GameCategory> findAllDetail();


}
