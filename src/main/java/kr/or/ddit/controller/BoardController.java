package kr.or.ddit.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.or.ddit.service.BoardInfoService;
import kr.or.ddit.service.BoardPostService;
import kr.or.ddit.service.BoardUserService;
import kr.or.ddit.vo.BoardInfoVo;
import kr.or.ddit.vo.BoardPageVo;
import kr.or.ddit.vo.BoardPostVo;
import kr.or.ddit.vo.BoardUserVo;


@RequestMapping("board")
@Controller
public class BoardController {
	
	@Resource(name="boarduserService")
	private BoardUserService userService;
	
	@Resource(name="boardpostService")
	private BoardPostService boardpostService;
	
	@Resource(name="boardinfoService")
	private BoardInfoService boardinfoService;
	
	@RequestMapping("login")
	public String loginView() {
		return "login";
	}
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@RequestMapping(path="main", method = RequestMethod.GET)
	public String mainView(BoardUserVo userVo, Model model, HttpSession session) {
		
		BoardUserVo dbUser = userService.selectUser(userVo.getUserid());
		if(dbUser != null && userVo.getPass().equals(dbUser.getPass())) {
			session.setAttribute("S_USER", dbUser);
			return "boardmain";
		}else {
			return "redirect:/board/login";
		}
	}
	
	@RequestMapping(path="boardmake",method = RequestMethod.GET)
	public String boardmakeView(BoardInfoVo infoVo, Model model) {
		
		model.addAttribute("list", boardinfoService.selectinfo());
		
		return "/board/boardmake";
	}
	
	@RequestMapping(path="boardmake", method = RequestMethod.POST)
	public String boardMake(BoardInfoVo infoVo, Model model,HttpServletRequest req, HttpServletResponse resp) {
		
		String boardname = req.getParameter("boardname");
		String st = req.getParameter("st");
		logger.debug("st {}", st);
		logger.debug("boardname {}", boardname);
		
		int a =0;
		
		if(st.equals("true")) {
			a = 1;
		}
		
		BoardInfoVo vo = new BoardInfoVo();
		
		int insertCnt = 0;
		
		vo.setBor_act(a);
		vo.setBor_name(boardname);
		
		
		try {
			insertCnt = boardinfoService.insertinfo(vo);
		} catch (Exception e) {
			insertCnt = 0;
		}
		
		if(insertCnt == 1) {
			return "redirect:/board/boardmake";
		}else {
			return "/board/boardmake";
		}
		
	}
	
	@RequestMapping(path="boardactive" ,method = RequestMethod.POST )
	public String boardactive(HttpServletRequest req, HttpServletResponse resp, Model model) {
		String bn = req.getParameter("bn");
		String sts = req.getParameter("sts");
		
		int a = 0;
		
		if(sts.equals("t")) {
			a = 1;
			
		}
		
		BoardInfoVo vo = new BoardInfoVo();
		
		vo.setBor_act(a);
		vo.setBor_name(bn);
		
		int updateCnt = 0;
		try {
			
			updateCnt = boardinfoService.updateinfo(vo);
		} catch (Exception e) {
			updateCnt = 0;
		}
		
		if(updateCnt == 1) {
			return "redirect:/board/boardmake";
		}else {
			return "/board/boardmake";
		}
	}
	
	@RequestMapping(path="boardactive",method = RequestMethod.GET)
	public String boardactive2(BoardInfoVo boardinfoVo, Model model) {
		model.addAttribute("list", boardinfoService.selectinfo());
		return "/board/boardmake";
	}
	
	@RequestMapping(path="boardpaging",method = RequestMethod.GET  )
	public String boardpaging(HttpServletRequest req, HttpServletResponse resp, Model model) {
		
		String pageParam = req.getParameter("page");
	      String pageSizeParam = req.getParameter("pageSize");
	      
	      int bor_no = Integer.parseInt(req.getParameter("no"));
	      
	      int page = 0;
	      int pageSize = 0;
	      
	      if(pageParam == null || pageParam.equals("")) {
	         page = 1;
	      }else {
	         page = Integer.parseInt(req.getParameter("page"));
	      }
	      
	      if(pageSizeParam == null || pageSizeParam.equals("")) {
	         pageSize = 10;
	      }else {
	         pageSize = Integer.parseInt(req.getParameter("pageSize"));
	      }
	      
	      BoardPageVo pageVo = new BoardPageVo(page, pageSize, bor_no);

	      pageVo.setPage(page);
	      pageVo.setPageSize(pageSize);
	      pageVo.setBor_no(bor_no);	      
	      Map<String, Object> map = (Map<String, Object>) boardpostService.selectPagingpost(pageVo);
	      
	      List<BoardPostVo> pagingList = (List<BoardPostVo>) map.get("BoardList");
	      int boardCnt = (int)map.get("BoardCnt");
	      int pagination = (int) Math.ceil((double) boardCnt / pageSize);
	      
	      model.addAttribute("list", boardinfoService.selectinfo());

	      logger.debug("paginList : {}",pagingList);
	      
	      req.setAttribute("borno", bor_no);
	      req.setAttribute("pagingList", pagingList);
	      req.setAttribute("pagination", pagination);
	      req.setAttribute("pageVo",pageVo);
	      
	      return "/board/freeboard";
	      
	}
	
	@RequestMapping("insertboardpostview")
	public String insertboardpost(Model model, BoardInfoVo infoVo) {
		model.addAttribute("borno", infoVo);
		model.addAttribute("list", boardinfoService.selectinfo());
		return "/board/freeinsertboard";
	}
	
	@RequestMapping(path="insertboardpost",method = RequestMethod.POST)
	public String insertboardpost(BoardPostVo postVo, Model model,HttpServletRequest req) {
		
		int insertCnt = 0;
		
	
		model.addAttribute("userid", postVo);
		model.addAttribute("post_no", postVo);
		model.addAttribute("user_id", postVo);
		postvo.setUser_id(userid); 
		postvo.setTitle(title);
		postvo.setCont(editordata);
		postvo.setBor_no(borno);
		
		insertCnt = boardpostService.boardpostinsert(postVo);
		if(insertCnt == 1) {
			return "redirect:/board/boardpaging?no="+borno+"&userid="+userid;
		}else {
			return "redirect:/board/insertboardpostview";
			
		}
	}
	
	@RequestMapping("detailview")
	public String detailview(BoardPostVo postVo, Model model) {
		
		model.addAttribute("bor_no", postVo);
		model.addAttribute("post_no", postVo);
		model.addAttribute("user_id", postVo);
		
		model.addAttribute("detail", boardpostService.selectpostno(postVo));
		model.addAttribute("list", boardinfoService.selectinfo());
		
		return "/board/boarddetail";
	}
	
	
	
}