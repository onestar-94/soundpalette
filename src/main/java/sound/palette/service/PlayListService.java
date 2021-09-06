package sound.palette.service;

import java.util.List;
import java.util.Map;

public interface PlayListService {
	
	void insertPlayList(Map<String, Object> map) throws Exception;
	
	List<Map<String, Object>> selectPlayLists(Map<String, Object> map) throws Exception;

}
