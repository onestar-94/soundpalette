package sound.palette.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

@Repository("playListDAO")
public class PlayListDAO extends AbstractDAO {
	
	public void insertPlayList(Map<String, Object> map) throws Exception {
		insert("palette.insertPlayList", map);
	}
	
	public List<Map<String, Object>> selectPlayLists(Map<String, Object> map) throws Exception {
		return selectList("palette.selectPlayLists", map);
	}

}
