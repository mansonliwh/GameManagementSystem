package com.shimh.repository.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.transform.Transformers;
import org.hibernate.type.IntegerType;
import org.springframework.transaction.annotation.Transactional;

import com.shimh.repository.wrapper.DirectoryWrapper;
import com.shimh.vo.DirectoryVO;

/**
 * @author shimh
 * <p>
 * 2018年1月25日
 */
public class DirectoryRepositoryImpl implements DirectoryWrapper {

    @PersistenceContext
    private EntityManager em;

    @Override
    public List<DirectoryVO> findAllDetail() {

        String sql = "select c.id, c.game_id, c.directory_name, count(c.game_id) as games from user_defined_directory c left join game_meta a on a.id = c.game_id group by c.id";

        SQLQuery query = getSession().createSQLQuery(sql);
        query.addScalar("id");
        query.addScalar("game_id", IntegerType.INSTANCE);
        query.addScalar("directory_name");
        query.addScalar("games", IntegerType.INSTANCE);

        query.setResultTransformer(Transformers.aliasToBean(DirectoryVO.class));
        return query.list();

    }

    @Override
    public DirectoryVO getDirectoryDetail(Integer directoryId) {
        String sql = "select c.id, c.game_id, c.directory_name, count(c.game_id) as games from user_defined_directory c left join game_meta a on a.id = c.game_id where c.id = :directoryId";

        SQLQuery query = getSession().createSQLQuery(sql);

        query.setInteger("directoryId", directoryId);

        query.addScalar("id");
        query.addScalar("game_id", IntegerType.INSTANCE);
        query.addScalar("directory_name");
        query.addScalar("games", IntegerType.INSTANCE);

        query.setResultTransformer(Transformers.aliasToBean(DirectoryVO.class));

        return (DirectoryVO) query.uniqueResult();
    }

    private Session getSession() {
        return em.unwrap(Session.class);
    }

}
