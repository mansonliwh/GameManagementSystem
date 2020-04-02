package com.shimh.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.shimh.entity.Directory;
import com.shimh.repository.wrapper.DirectoryWrapper;


public interface DirectoryRepository extends JpaRepository<Directory, Integer>, DirectoryWrapper {

	/*@Query(value="select c.*, count(a.category_id) as articles from me_category c "
			+ "left join me_article a on a.category_id = c.id group by a.category_id",nativeQuery=true)
	List<Directory> findAllDetail();*/

}
