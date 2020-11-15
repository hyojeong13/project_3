package kr.smhrd.model;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAOImpl implements MemberDAO {


	@Autowired
	private SqlSessionFactory sqlSessionFactory;
	
	

	@Override
	public int memberInsert(MemberVO vo) {
		SqlSession session = sqlSessionFactory.openSession();
		
		int cnt = -1;
		
		try {
			cnt = session.insert("memberInsert", vo);
			session.commit();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		
		return cnt;
	}



	@Override
	public MemberVO memberContent(int num) {
		SqlSession session = sqlSessionFactory.openSession();
		MemberVO vo = null;
		
		try {
			
			vo = session.selectOne("memberContent", num);
			
		} catch (Exception e) {
			e.printStackTrace();
			
		}finally {
			session.close();
		}
		
		return vo;
	}



	@Override
	public int memberDelete(int num) {
		SqlSession session = sqlSessionFactory.openSession();
		int cnt = -1;
		try {
			
			cnt = session.delete("memberDelete",num);
			session.commit();
		} catch (Exception e) {
			
			e.printStackTrace();
		}finally {
			session.close();
		}
		
		
		return cnt;
	}



	@Override
	public int memberUpdate(MemberVO vo) {
		SqlSession session = sqlSessionFactory.openSession();
		int cnt = -1;
		
		try {
			cnt = session.update("memberUpdate", vo);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return cnt;
	}


	@Override
	public int memberIndex(MemberVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}



	@Override
	public boolean loginCheck(MemberVO vo) {
		SqlSession session = sqlSessionFactory.openSession();
		String name = null;
		try {
			//System.out.println("dao에 왓나?");
			//System.out.println(vo);
			name = session.selectOne("memberloginCheck", vo);
			session.commit();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		//System.out.println(name);
		//System.out.println("왜 안되는것이야");
		return (name == null) ? false : true;
	}

	@Override
	public MemberVO viewMember(MemberVO vo) {
		SqlSession session = sqlSessionFactory.openSession();
		return session.selectOne("viewMember", vo);
	}

	@Override
	public void logout(HttpSession session) {
		
	}



	@Override
	public int AIoTinsert(AIoTVO ivo) throws Exception {
		SqlSession session = sqlSessionFactory.openSession();
		int cnt = -1;
		try {
			cnt = session.insert("AIoTinsert", ivo);
			session.commit();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return cnt;
	}



	@Override
	public List<AIoTVO> IotList(AIoTVO ivo) throws Exception {
		
		SqlSession session = sqlSessionFactory.openSession();
		List<AIoTVO> list = null;
		
		try {
			list = session.selectList("IoTList", ivo);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		
		return list;
		
	}

	
	
}
