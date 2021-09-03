package sound.palette.cotroller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import sound.palette.common.CommandMap;

@Controller
public class PlayListController {
	Logger log = Logger.getLogger(this.getClass());
	
	@RequestMapping(value="/myPage/myPlayList")
	public ModelAndView myPlayList(CommandMap commandMap) throws Exception{
		
		ModelAndView mv = new ModelAndView("/mymenu/myPlayList");
		
		return mv;
	}
	
	@RequestMapping(value="/myPage/myPlayList/New")
	public ModelAndView newPlayList(CommandMap commandMap) throws Exception{
		
		ModelAndView mv = new ModelAndView("/mymenu/myPlayList");
		
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
