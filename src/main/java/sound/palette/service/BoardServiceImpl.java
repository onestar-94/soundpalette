package sound.palette.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import sound.palette.dao.BoardDAO;

@Service("boardService")
public class BoardServiceImpl implements BoardService {

	Logger log = Logger.getLogger(this.getClass());

	@Resource(name = "boardDAO")
	private BoardDAO boardDAO;

	// 게시글 목록 불러오기
	@Override
	public List<Map<String, Object>> selectMRBs(Map<String, Object> map) throws Exception {
		return boardDAO.selectMRBs(map);
	}

	// 게시글 작성
	@Override
	public void insertMRB(Map<String, Object> map) throws Exception {
		boardDAO.insertMRB(map);
	}

	// 게시글 상세보기
	@Override
	public Map<String, Object> selectDetailMRB(Map<String, Object> map) throws Exception {
		boardDAO.updateMRBcnt(map);
		Map<String, Object> resultMap = boardDAO.selectDetailMRB(map);
		return resultMap;
	}

	// 수정하기
	@Override
	public void updateMRB(Map<String, Object> map) throws Exception {
		boardDAO.updateMRB(map);

	}

	// 삭제하기
	@Override
	public void deleteMRB(Map<String, Object> map) throws Exception {
		boardDAO.deleteMRB(map);

	}

	// 좋아요 기능 구현
	@Override
	public Map<String, Object> doHIT(Map<String, Object> map) throws Exception {

		Map<String, Object> hitMap = boardDAO.selectHIT(map);

		if (hitMap == null) {
			boardDAO.insertHIT(map);
			hitMap = boardDAO.selectHIT(map);
		} else {

			if (hitMap.get("HIT_DEL").equals("N")) {
				map.put("HIT_DEL", "Y");
				boardDAO.updateHIT(map);
				hitMap = boardDAO.selectHIT(map);
			} else {
				map.put("HIT_DEL", "N");
				boardDAO.updateHIT(map);
				hitMap = boardDAO.selectHIT(map);
			}
		}

		return hitMap;
	}
	
	//신고하기
	@Override
	public void insertMrbRep(Map<String, Object> map) throws Exception {
		boardDAO.insertMrbRep(map);
	}

}
