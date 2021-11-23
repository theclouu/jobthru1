package com.mySpring.myapp.member.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.mySpring.myapp.member.dao.MemberDAO;
import com.mySpring.myapp.member.vo.ComEunVO;
import com.mySpring.myapp.member.vo.CompanyVO;
import com.mySpring.myapp.member.vo.MatchingVO;
import com.mySpring.myapp.member.vo.MemberVO;
import com.mySpring.myapp.member.vo.PerApplicationVO;
import com.mySpring.myapp.member.vo.Per_applyVO;
import com.mySpring.myapp.member.vo.ReplyVO;
import com.mySpring.myapp.member.vo.PerApplyVO;


@Service("memberService")
@Transactional(propagation = Propagation.REQUIRED)
public class MemberServiceImpl implements MemberService {
	@Autowired
	private MemberDAO memberDAO;

	@Override
	public List listMembers() throws DataAccessException {
		List membersList = null;
		membersList = memberDAO.selectAllMemberList();
		return membersList;
	}

	@Override
	public int addMember(MemberVO member) throws DataAccessException {
		return memberDAO.insertMember(member);
	}

	@Override
	public int removeMember(String id) throws DataAccessException {
		return memberDAO.deleteMember(id);
	}
	
	@Override
	public MemberVO login(MemberVO memberVO) throws Exception{
		return memberDAO.loginById(memberVO);
	}
	
 /* ���� �κ� */
	@Override
	public List member_jjim() throws DataAccessException {
		return memberDAO.member_jjim();
	}
	@Override
	public int insert_add_jjim(ComEunVO ComEunVO) throws DataAccessException {
		return memberDAO.insert_add_jjim(ComEunVO);
	}
	
   @Override
   public List main_list(MemberVO memberVO) throws DataAccessException{
      return memberDAO.main_list(memberVO);
      }
   
	/*�ƶ�*/
   @Override
	public List job_list() throws DataAccessException{
		return memberDAO.job_list();
	}

	@Override
	public CompanyVO com_gonggo(int com_apply_ID) {	
		CompanyVO companyVO = memberDAO.selectArticle(com_apply_ID);
		return companyVO;
	}
	

	@Override
	public int selectPerApplyID(String member_id){
		return memberDAO.selectPerApplyID(member_id);
	}
	
	@Override
	public MatchingVO insertMatching(MatchingVO matchingVO) throws DataAccessException{
		return memberDAO.insertMatching(matchingVO);
	}

	@Override
	public int selectComApplyID(String member_id){
		return memberDAO.selectComApplyID(member_id);
	}
	
	@Override
	public List myMatching(int com_apply_ID) throws DataAccessException{
		return memberDAO.myMatching(com_apply_ID);
	}

	@Override
	public PerApplicationVO perApplication(int per_apply_ID) {	
		PerApplicationVO perApplicationVO = memberDAO.perApplication(per_apply_ID);
		return perApplicationVO;
	}
	
	
	
	
	/* �ذ� 5�� �߰� */
	@Override
	public int add_com_reply(ReplyVO replyVO) throws DataAccessException {
		return memberDAO.insert_com_reply(replyVO);
	}
	@Override
	public List member_review() throws DataAccessException{
		return memberDAO.member_review();
	}
	@Override
	public List company_review(String day) throws DataAccessException{
		return memberDAO.company_review(day);
	}
	@Override
	public void delete(int review_num) throws Exception {
		memberDAO.delete(review_num);
	}
	@Override
	public int update_Reply(ReplyVO replyVO) throws DataAccessException {
		return memberDAO.updateReply(replyVO);
	}
	//���� �߰�
	@Override
	public List job_listSudo() throws DataAccessException{
		return memberDAO.job_listSudo();
	}
	
	
	// �Խù� ��� + ����¡
	@Override
	public List listSudoPage(int startPost, int endPost) throws Exception {
		return memberDAO.listSudoPage(startPost, endPost);
	}
	
	//�Խù� �� ����
	@Override
	public int listCount() throws Exception {
		return memberDAO.listCount();
	}
	
	// �Խù� ��� + ����¡
	@Override
	public List listPage(int startPost, int endPost) throws Exception {
		return memberDAO.listPage(startPost, endPost);
	}
	
	
   /* ���� �˻� ���� */
   @Override
   public List<Map<String,String>> member_comment(String searchPage) throws DataAccessException{
      return memberDAO.member_comment(searchPage);
   }
	

   /* ��� ȸ������ service �߰�  */
	@Override
	public int insert_per_apply(Per_applyVO per_apply) throws DataAccessException {
		return memberDAO.insert_per_apply(per_apply);
	}
	@Override
	public int insert_per_member(MemberVO member) throws DataAccessException {
		return memberDAO.insert_per_member(member);
	}
	@Override
	public int idChk(MemberVO member) throws DataAccessException {
		int result = memberDAO.idChk(member);
		return result;
	}
	/*아람 추가 11.01*/
	@Override
	public List perApply(int per_apply_ID) throws DataAccessException{
		return memberDAO.perApply(per_apply_ID);
	}
	 /* ��� ȸ������ service �߰� ��   */
	
	/* 퀵서비스 서비스임플 */
   @Override
   public List job_quicklist() throws DataAccessException{
      return memberDAO.job_quicklist();
   }
}
