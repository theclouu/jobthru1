package com.mySpring.myapp.member.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.mySpring.myapp.member.vo.ComEunVO;
import com.mySpring.myapp.member.vo.CompanyVO;
import com.mySpring.myapp.member.vo.MatchingVO;
import com.mySpring.myapp.member.vo.MemberVO;
import com.mySpring.myapp.member.vo.MyMatchingVO;
import com.mySpring.myapp.member.vo.PerApplicationVO;
import com.mySpring.myapp.member.vo.PerApplyVO;
import com.mySpring.myapp.member.vo.Per_applyVO;
import com.mySpring.myapp.member.vo.ReplyVO;
import com.mySpring.myapp.member.vo.job_listSudoVO;
import com.mySpring.myapp.member.vo.job_listVO;


@Repository("memberDAO")
public class MemberDAOImpl implements MemberDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List selectAllMemberList() throws DataAccessException {
		List<MemberVO> membersList = null;
		membersList = sqlSession.selectList("mapper.member.selectAllMemberList");
		return membersList;
	}

	@Override
	public int insertMember(MemberVO memberVO) throws DataAccessException {
		int result = sqlSession.insert("mapper.member.insertMember", memberVO);
		return result;
	}

	@Override
	public int deleteMember(String id) throws DataAccessException {
		int result = sqlSession.delete("mapper.member.deleteMember", id);
		return result;
	}
	
	@Override
	public MemberVO loginById(MemberVO memberVO) throws DataAccessException{
		  MemberVO vo = sqlSession.selectOne("mapper.member.loginById",memberVO);
		return vo;
	}
	
	
	/* ���� �κ� */
	@Override
	public List member_jjim() throws DataAccessException {
		List<ComEunVO> member_jjim = null;
		member_jjim = sqlSession.selectList("mapper.member.member_jjim_Page");
		return member_jjim;
	}
	@Override
	public int insert_add_jjim(ComEunVO ComEunVO) throws DataAccessException {
		int result = sqlSession.insert("mapper.member.insert_add_jjim", ComEunVO);
		return result;
	}
	
   @Override
   public List main_list(MemberVO memberVO) throws DataAccessException{
      List<MemberVO> main_list = null;
      main_list = sqlSession.selectList("mapper.member.main", memberVO);
      return main_list;

   }
	
	/*�ƶ�*/
	
   @Override
	public List job_list() throws DataAccessException{
		
		 List<job_listVO> job_list = null;
				job_list = sqlSession.selectList("mapper.member.job_listPage");
		return job_list;

	}

	@Override
	public CompanyVO selectArticle(int com_apply_ID) throws DataAccessException {
		return sqlSession.selectOne("mapper.member.selectArticle", com_apply_ID);
	}
	

	@Override
	public int selectPerApplyID(String member_id) throws DataAccessException{
		System.out.println(member_id);
			int per_apply_ID = sqlSession.selectOne("mapper.member.selectPerApplyID", member_id);
		return per_apply_ID;
	}

	@Override
	public MatchingVO insertMatching(MatchingVO matchingVO) throws DataAccessException {
		return sqlSession.selectOne("mapper.member.insertMatching", matchingVO);
	}


	@Override
	public int selectComApplyID(String member_id) throws DataAccessException{
			int per_apply_ID = sqlSession.selectOne("mapper.member.selectComApplyID", member_id);
		return per_apply_ID;
	}
	
	@Override
	public List myMatching(int com_apply_ID) throws DataAccessException{
		 List<MyMatchingVO> myMatching = null;
				myMatching = sqlSession.selectList("mapper.member.myMatching", com_apply_ID);
		return myMatching;

	}
	@Override
	public PerApplicationVO perApplication(int per_apply_ID) throws DataAccessException {
		return sqlSession.selectOne("mapper.member.perApplication", per_apply_ID);
	}
	
	
	
	
	
	
	
	
	/* �ذ� 5�� �߰� */
	@Override
	public int insert_com_reply(ReplyVO replyVO) throws DataAccessException {
		int result = sqlSession.insert("mapper.member.insert_com_reply", replyVO);
		return result;
	}
	@Override
	 public List member_review() throws  DataAccessException{
		List<ReplyVO> review_list = null;
		review_list = sqlSession.selectList("mapper.member.member_review");
		return review_list;
	}
	@Override
	 public List company_review(String day) throws  DataAccessException{
		List<ReplyVO> review_list = null;
		review_list = sqlSession.selectList("mapper.member.company_review", day);
		return review_list;
	}
	@Override
	public void delete(int review_num) throws DataAccessException {
		int result = sqlSession.delete("mapper.member.delete", review_num);
	}
	@Override
	public int updateReply(ReplyVO replyVO) throws DataAccessException {
		int result = sqlSession.update("mapper.member.updateReply", replyVO);
		return result;
	}
	//���� �߰�
	@Override
	public List job_listSudo() throws DataAccessException{
		
		 List<job_listSudoVO> job_listSudo = null;
				job_listSudo = sqlSession.selectList("mapper.member.job_listSudoPage");
		return job_listSudo;
	}
	
	// �Խù� ��� + ����¡
		@Override
		public List listSudoPage(int startPost, int endPost) throws Exception {

			 HashMap data = new HashMap();
			  
			 data.put("startPost", startPost);
			 data.put("endPost", endPost);
			  
			 return sqlSession.selectList("mapper.member.listSudoPage", data);
		}
	
	//�Խù� �� ����
	@Override
	public int listCount() throws DataAccessException {
		return sqlSession.selectOne("mapper.member.listcount");
	}
	
	// �Խù� ��� + ����¡
	@Override
	public List listPage(int startPost, int endPost) throws Exception {

		 HashMap data = new HashMap();
		  
		 data.put("startPost", startPost);
		 data.put("endPost", endPost);
		  
		 return sqlSession.selectList("mapper.member.listPage", data);
	}
	
   /* ���� �˻� dao */
   @Override
   public List<Map<String,String>> member_comment(String searchPage) throws DataAccessException{
      System.out.println("i have searchPage : " + searchPage);
      return sqlSession.selectList("mapper.member.comment_list", searchPage);
   }
			   
	
   /*��� ȸ������ DAO */
   @Override
	public int insert_per_apply(Per_applyVO per_apply) throws DataAccessException {
		int result = sqlSession.insert("mapper.member.insertPerApply", per_apply);
		return result;
	}
   @Override
	public int insert_per_member(MemberVO member) throws DataAccessException {
		int result = sqlSession.insert("mapper.member.insertPerMember", member);
		return result;
	}
	
	@Override
	public int idChk(MemberVO member) throws DataAccessException {
		int result = sqlSession.selectOne("mapper.member.idChk", member);
		return result;
	}
	/*��� ȸ������ DAO ��  */
	
	/*아람 추가 11.01*/
	@Override
	public List perApply(int per_apply_ID) throws DataAccessException{
		 List<PerApplyVO> perApply = null;
				perApply = sqlSession.selectList("mapper.member.perApply", per_apply_ID);
		return perApply;

	}
	
	/* 퀵서비스 다오임플 */
	   
   @Override
   public List job_quicklist() throws DataAccessException{
      
       List<job_listVO> job_quicklist = null;
            job_quicklist = sqlSession.selectList("mapper.member.job_listquickPage");
      return job_quicklist;

   }

	
	
}
