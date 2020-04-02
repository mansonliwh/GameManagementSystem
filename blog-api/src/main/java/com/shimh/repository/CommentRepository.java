package com.shimh.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.shimh.entity.Article;
import com.shimh.entity.Comment;

public interface CommentRepository extends JpaRepository<Comment, Integer> {

    List<Comment> findByArticleAndLevelOrderByCreateDateDesc(Article a, String level);


}
