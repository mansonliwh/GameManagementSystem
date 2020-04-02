package com.shimh.repository.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import com.shimh.vo.TagVO;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.transform.Transformers;
import org.hibernate.type.IntegerType;
import org.springframework.transaction.annotation.Transactional;

import com.shimh.repository.wrapper.GamecategoryWrapper;
import com.shimh.repository.wrapper.GametagWrapper;
import com.shimh.vo.GametagVO;

public class GametagRepositoryImpl implements GametagWrapper{

    @PersistenceContext
    private EntityManager em;

    @Override
    public List<GametagVO> findAllDetail() {

        String sql = "select t.id, t.tagname, t.avatar, count(at.tag_id) as games from game_tag at "
                + "right join game_tag_info t on t.id = at.tag_id group by t.id ";

        SQLQuery query = getSession().createSQLQuery(sql);
        query.addScalar("id");
        query.addScalar("tagname");
        query.addScalar("avatar");
        query.addScalar("games", IntegerType.INSTANCE);

        query.setResultTransformer(Transformers.aliasToBean(GametagVO.class));
        return query.list();

    }

    @Override
    public GametagVO getGameTagDetail(Integer tagId) {

        String sql = "select t.id, t.tagname, t.avatar, count(at.tag_id ) as games from game_tag at "
                + "right join game_tag_info t on t.id = at.tag_id where t.id = :tagId ";

        SQLQuery query = getSession().createSQLQuery(sql);
        query.setInteger("tagId", tagId);

        query.addScalar("id");
        query.addScalar("tagname");
        query.addScalar("avatar");
        query.addScalar("games", IntegerType.INSTANCE);

        query.setResultTransformer(Transformers.aliasToBean(GametagVO.class));
        return (GametagVO) query.uniqueResult();

    }


    private Session getSession() {
        return em.unwrap(Session.class);
    }










}
