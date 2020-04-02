package com.shimh.repository.impl;

import com.shimh.entity.Game;
import com.shimh.repository.wrapper.GameWrapper;
import com.shimh.vo.GameVo;
import com.shimh.vo.GamecategoryVO;
import com.shimh.vo.PageVo;
import com.shimh.vo.GametagVO;

import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.transform.AliasToBeanResultTransformer;
import org.hibernate.transform.ResultTransformer;
import org.hibernate.transform.Transformers;
import org.hibernate.type.IntegerType;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;


public class GameRepositoryImpl implements GameWrapper{

    @PersistenceContext
    private EntityManager em;

    @Override
    public List<Game> listGames(PageVo page){

        StringBuilder hql = new StringBuilder("from Game");

        if(null != page.getName()&& !"".equals(page.getName())){
            hql.append("order by ");
            hql.append(page.getName());
        }
        if (null != page.getSort() && !"".equals(page.getSort())) {
            hql.append(" ");
            hql.append(page.getSort());
        }

        Query query = getSession().createQuery(hql.toString());

        if (null != page.getPageNumber() && null != page.getPageSize()) {
            query.setFirstResult(page.getPageSize() * (page.getPageNumber() - 1));
            query.setMaxResults(page.getPageSize());
        }

        return query.list();

    }

    @Override
    public List<Game> listGames(GameVo game, PageVo page) {

        StringBuilder hql = new StringBuilder("from Game a ");


        if (null != game.getTagId()) {

            hql.append(" inner join fetch a.tags t");
        }

        hql.append(" where 1=1 ");

        if (null != game.getCategoryId()) {

            hql.append(" and a.category.id = :categoryId");
        }

        if (null != game.getTagId()) {

            hql.append(" and t.id = :tagId");
        }


        if (null != page.getName() && !"".equals(page.getName())) {
            hql.append(" order by ");
            hql.append(page.getName());
        }

        if (null != page.getSort() && !"".equals(page.getSort())) {
            hql.append(" ");
            hql.append(page.getSort());
        }


        Query query = getSession().createQuery(hql.toString());



        if (null != game.getTagId()) {
            query.setParameter("tagId", game.getTagId());
        }

        if (null != game.getCategoryId()) {
            query.setParameter("categoryId", game.getCategoryId());
        }

        if (null != page.getPageNumber() && null != page.getPageSize()) {
            query.setFirstResult(page.getPageSize() * (page.getPageNumber() - 1));
            query.setMaxResults(page.getPageSize());
        }

        return query.list();

    }


    private Session getSession() {
        return em.unwrap(Session.class);
    }




}
