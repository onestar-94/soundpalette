package sound.palette.service;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import sound.palette.common.FileUtils;
import sound.palette.dao.MypageDAO;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Service("mypageService")
public class MypageServiceImpl implements MypageService {

	Logger log = Logger.getLogger(this.getClass());

	@Resource(name = "mypageDAO")
	private MypageDAO mypageDAO;

	@Resource(name = "fileUtils")
	private FileUtils fileUtils;

	@Override
	public Map<String, Object> userDetail(Map<String, Object> map) throws Exception {
		return mypageDAO.userDetail(map); // 회원 수정 폼
	}

	@Override
	public void userInfoUpdate(Map<String, Object> map) throws Exception {
		mypageDAO.userInfoUpdate(map); // 회원 비번, 닉넴 수정
	}

	@Override
	public void deleteMember(Map<String, Object> map) {
		mypageDAO.deleteMyInfo(map); // 회원 탈퇴
	}

	@Override
	public void userImage(Map<String, Object> map, HttpServletRequest request) throws Exception {
		MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest) request;
		Iterator<String> iterator = multipartHttpServletRequest.getFileNames();
		MultipartFile multipartFile = null;
		HttpSession session = request.getSession(false);

		List<Map<String, Object>> list = fileUtils.parseInsertFileInfo(map, request);
		for (int i = 0, size = list.size(); i < size; i++) {
			mypageDAO.userImage(list.get(i));
			list.get(i).put("MEM_NUM", session.getAttribute("MEM_NUM"));
			session.setAttribute("IMG_NAME", list.get(i).get("IMG_NAME"));
			mypageDAO.updateMEMIMG(list.get(i));
		}

	}

	public List<Map<String, Object>> nickCheck(Map<String, Object> map) throws Exception {
		return mypageDAO.nickCheck(map); // 닉네임 중복체크
	}

	@Override
	public Map<String, Object> selectMemberIMG(Map<String, Object> map) throws Exception {
		return mypageDAO.selectMemberIMG(map);
	}

	// 좋아요 한 글
	@Override
	public List<Map<String, Object>> selectMyhit(Map<String, Object> map) throws Exception {
		return mypageDAO.selectMyhit(map);
	}

	// 본인 글
	@Override
	public List<Map<String, Object>> selectMyMRB(Map<String, Object> map) throws Exception {
		return mypageDAO.selectMyMRB(map);
	}

}