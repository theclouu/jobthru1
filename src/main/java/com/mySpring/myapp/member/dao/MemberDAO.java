package com.mySpring.myapp.member.dao;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.mySpring.myapp.member.vo.ComEunVO;
import com.mySpring.myapp.member.vo.CompanyVO;
import com.mySpring.myapp.member.vo.MatchingVO;
import com.mySpring.myapp.member.vo.MemberVO;
import com.mySpring.myapp.member.vo.PerApplicationVO;
import com.mySpring.myapp.member.vo.Per_applyVO;
import com.mySpring.myapp.member.vo.ReplyVO;

public interface MemberDAO {
	public List selectAllMemberList() throws DataAccessException;
	 public int insertMember(MemberVO memberVO) throws DataAccessException ;
	 public int deleteMember(String id) throws DataAccessException;
	 public MemberVO loginById(MemberVO memberVO) throws DataAccessException;
	 public List member_jjim() throws DataAccessException;
	 public int insert_add_jjim(ComEunVO ComEunVO) throws DataAccessException;
	 
	 CompanyVO selectArticle(int com_apply_ID) throws DataAccessException;
		public List job_list() throws DataAccessException;

		public int selectPerApplyID(String member_id);
		public MatchingVO insertMatching(MatchingVO matchingVO);
		int selectComApplyID(String member_id) throws DataAccessException;
		public List myMatching(int com_apply_ID) throws DataAccessException;

		/* ��� ȸ������ DAO �߰� */
		 public int insert_per_apply(Per_applyVO per_apply) throws DataAccessException;
		 public int insert_per_member(MemberVO member) throws DataAccessException;
		 public int idChk(MemberVO member) throws DataAccessException;
	 
	 
	 
	 
	 
	 
	 /* �ذ� 5�� �߰� */
	 public int insert_com_reply(ReplyVO replyVO) throws DataAccessException;
	 public List member_review() throws  DataAccessException;
	 public List company_review(String day) throws  DataAccessException;
	 public void delete(int review_num) throws Exception;
	 public int updateReply(ReplyVO replyVO) throws DataAccessException;
	 
	 //���� �߰�
	 public List job_listSudo() throws DataAccessException;
	 //����¡ �Խù� �� ����
	 public int listCount() throws Exception;
	 // �Խù� ��� + ����¡
	 public List listPage(int displayPost, int postNum) throws Exception;
	 
    /* ���� �˻� �ٿ� */
	public List<Map<String,String>> member_comment(String searchPage) throws DataAccessException;
	
	/*���� �߰�*/
	public List main_list(MemberVO memberVO) throws DataAccessException;
	PerApplicationVO perApplication(int per_apply_ID) throws DataAccessException;
	List listSudoPage(int startPost, int endPost) throws Exception;
	List perApply(int per_apply_ID) throws DataAccessException;
	
	/* 퀵서비스 페이지 */
	List job_quicklist() throws DataAccessException;
	 
	 
}
