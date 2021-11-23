package com.mySpring.myapp.member.service;

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

public interface MemberService {
	 public List listMembers() throws DataAccessException;
	 public int addMember(MemberVO memberVO) throws DataAccessException;
	 public int removeMember(String id) throws DataAccessException;
	 public MemberVO login(MemberVO memberVO) throws Exception;
	 public List member_jjim() throws DataAccessException;
	 public int insert_add_jjim(ComEunVO ComEunVO) throws DataAccessException;
	 public List job_list() throws DataAccessException;
		public CompanyVO com_gonggo(int com_apply_ID);
		public int selectPerApplyID(String member_id);
		MatchingVO insertMatching(MatchingVO matchingVO) throws DataAccessException;
		int selectComApplyID(String member_id);
		public List myMatching(int com_apply_ID) throws DataAccessException;
		
	 
	 
	 
	 
	 
	 
	 
	 /* �ذ� 5�� �߰� */
	 public int add_com_reply(ReplyVO reply) throws DataAccessException;
	 public List member_review() throws DataAccessException;
	 public List company_review(String day) throws DataAccessException;
	 public void delete(int review_num) throws Exception;
	 public int update_Reply(ReplyVO reply) throws DataAccessException;
	 
	 //���� �߰�
	 public List job_listSudo() throws DataAccessException;
	 //�Խù� �� ����
	 public int listCount() throws Exception;
	// �Խù� ��� + ����¡
	 public List listPage(int displayPost, int postNum) throws Exception;
	 
	 
   /* ���� �˻� ���� */
   /* ����Ʈ �� ��Ʈ�� ��Ʈ�� */
    public List<Map<String,String>> member_comment(String searchPage) throws DataAccessException;
	 
    /*���� �߰� */
    public List main_list(MemberVO memberVO) throws DataAccessException;
    //public List main_list() throws DataAccessException;
	PerApplicationVO perApplication(int per_apply_ID);
	List listSudoPage(int startPost, int endPost) throws Exception;
    
	/* ��� ȸ������  */
	int insert_per_apply(Per_applyVO per_apply) throws DataAccessException;
	int insert_per_member(MemberVO member) throws DataAccessException;
	int idChk(MemberVO member) throws DataAccessException;
	List perApply(int per_apply_ID) throws DataAccessException;
    
	/* 퀵서비스 페이지 */
	public List job_quicklist();
	 
}
