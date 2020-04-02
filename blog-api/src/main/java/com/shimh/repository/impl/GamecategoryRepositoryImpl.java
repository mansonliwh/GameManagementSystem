package com.shimh.repository.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.transform.Transformers;
import org.hibernate.type.IntegerType;
import org.springframework.transaction.annotation.Transactional;

import com.shimh.repository.wrapper.GamecategoryWrapper;
import com.shimh.vo.GamecategoryVO;


public class GamecategoryRepositoryImpl implements GamecategoryWrapper {

    @PersistenceContext
    private EntityManager em;

    @Override
    public List<GamecategoryVO> findAllDetail() {

        final String sql = "select c.id, c.categoryname, c.description, c.avatar, count(a.category_id) as games from game_category c left join game_meta a on a.category_id = c.id group by c.id";

        final SQLQuery query = getSession().createSQLQuery(sql);
        query.addScalar("id");
        query.addScalar("categoryname");
        query.addScalar("description");
        query.addScalar("avatar");
        query.addScalar("games", IntegerType.INSTANCE);

        query.setResultTransformer(Transformers.aliasToBean(GamecategoryVO.class));
        return query.list();

    }
    @Override
    public GamecategoryVO getGameCategoryDetail(final Integer categoryId) {
        final String sql = "select c.id, c.categoryname, c.description, c.avatar, count(a.category_id) as games from game_category c left join game_meta a on a.category_id = c.id where c.id = :categoryId";

        final SQLQuery query = getSession().createSQLQuery(sql);

        query.setInteger("categoryId", categoryId);

        query.addScalar("id");
        query.addScalar("categoryname");
        query.addScalar("description");
        query.addScalar("avatar");
        query.addScalar("games", IntegerType.INSTANCE);

        query.setResultTransformer(Transformers.aliasToBean(GamecategoryVO.class));

        return (GamecategoryVO) query.uniqueResult();
    }

    private Session getSession() {
        return em.unwrap(Session.class);
    }



}
