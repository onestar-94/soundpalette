package sound.palette.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import sound.palette.dao.PlayListDAO;

@Service("playListService")
public class PlayListServiceImpl implements PlayListService {
	
	@Resource(name="playListDAO")
	private PlayListDAO playListDAO;

	@Override
	public void insertPlayList(Map<String, Object> map) throws Exception {
		playListDAO.insertPlayList(map);
	}

	@Override
	public List<Map<String, Object>> selectPlayLists(Map<String, Object> map) throws Exception {
		return playListDAO.selectPlayLists(map);
	}
	
	
	
}
