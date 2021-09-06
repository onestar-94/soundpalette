package sound.palette.cotroller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import sound.palette.common.CommandMap;
import sound.palette.service.LoginService;
import sound.palette.service.PlayListService;

@Controller
public class PlayListController {
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name = "playListService")
	private PlayListService playListservice;
	
	@RequestMapping(value="/myPage/myPlayList")
	public ModelAndView myPlayList(CommandMap commandMap, HttpServletRequest request) throws Exception{
		ModelAndView mv = new ModelAndView("/mymenu/myPlayList");
		
		HttpSession session = request.getSession(false);
		commandMap.put("MEM_NUM", session.getAttribute("MEM_NUM"));
		
		List<Map<String, Object>> list = playListservice.selectPlayLists(commandMap.getMap());
		mv.addObject("list", list);
		
		return mv;
	}
	
	@RequestMapping(value="/myPage/myPlayList/New")
	public ModelAndView newPlayList(CommandMap commandMap, HttpServletRequest request) throws Exception{
		ModelAndView mv = new ModelAndView("redirect:/SOPA/myPage/myPlayList");
		
		HttpSession session = request.getSession(false);
		commandMap.put("MEM_NUM", session.getAttribute("MEM_NUM"));
		
		playListservice.insertPlayList(commandMap.getMap());
		
		return mv;
	}
	
	@RequestMapping(value="/myPage/hitMusic")
	public ModelAndView hitMusic(CommandMap commandMap) throws Exception{
		
		ModelAndView mv = new ModelAndView("/mymenu/myprofile-page");
		
		return mv;
	}
	
	@RequestMapping(value="/myPage/playList")
	public ModelAndView playList(CommandMap commandMap) throws Exception{
		
		ModelAndView mv = new ModelAndView("/mymenu/myPlayListView");
		
		return mv;
	}

}
