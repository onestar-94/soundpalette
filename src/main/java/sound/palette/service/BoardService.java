package sound.palette.service;

import java.util.List;
import java.util.Map;

public interface BoardService {
	
	List<Map<String, Object>> selectMRBs(Map<String, Object> map) throws Exception;
	
	void insertMRB(Map<String, Object> map) throws Exception;
	
	Map<String, Object> selectDetailMRB(Map<String, Object> map) throws Exception;
	
	void updateMRB(Map<String, Object> map) throws Exception;

	void deleteMRB(Map<String, Object> map) throws Exception;
	
	//좋아요
	Map<String, Object> doHIT(Map<String, Object> map) throws Exception;
	
	//신고하기
	void insertMrbRep(Map<String, Object> map) throws Exception;
	
}
