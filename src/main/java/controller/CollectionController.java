package controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CollectionController {

	private static final Logger logger = LoggerFactory.getLogger(CollectionController.class);
	
	// 섬의 마음 메인
	@RequestMapping(value = "loarc/Collection/heartIsland")
	public String heartIslandMain(HttpServletRequest req, HttpServletResponse res, Model model) throws Exception {
		String user_id = req.getParameter("user_id");
		
		String url = "https://lostark.game.onstove.com/Profile/Character/" + user_id;
		Document doc = Jsoup.connect(url).get();// get();
		
		//Elements totalHeartIsland = doc.select("#lui-tab1-1 > div > div.collection-list > ul > li");
		Elements totalHeartIsland = doc.select("#lui-tab1-1");
		//Elements totalHeartIsland = doc.select("#lui-tab1-1 > div > div.collection-list > ul > li");
		//Elements hasHeartIsland = doc.select("#lui-tab1-1 > div > div.collection-list > ul > li.complete");
		
		System.out.println(totalHeartIsland);
		
		System.out.println(totalHeartIsland.select("div").select("div.collection-list").select("ul").select("li"));
		
		String serializeTotalHeartIsland = totalHeartIsland.toString();
		//String serializeHasHeartIsland = hasHeartIsland.toString();
		
		model.addAttribute("serializeTotalHeartIsland", serializeTotalHeartIsland);
		model.addAttribute("user_id", user_id);
		//model.addAttribute("serializeHasHeartIsland", serializeHasHeartIsland);
		
		return "collection/heartIsland";
	}
	
	// 오르페우스의 별 메인
	@RequestMapping(value = "loarc/Collection/starOrpheus")
	public String starOrpheusMain(HttpServletRequest req, HttpServletResponse res, Model model) throws Exception {
		String user_id = req.getParameter("user_id");
		model.addAttribute("user_id", user_id);
		return "collection/starOrpheus";
	}
	
	// 거인의 심장 메인
	@RequestMapping(value = "loarc/Collection/heartGiant")
	public String heartGiantMain(HttpServletRequest req, HttpServletResponse res, Model model) throws Exception {
		String user_id = req.getParameter("user_id");
		model.addAttribute("user_id", user_id);
		return "collection/heartGiant";
	}
	
	// 위대한 미술품 메인
	@RequestMapping(value = "loarc/Collection/greatArt")
	public String greatArtMain(HttpServletRequest req, HttpServletResponse res, Model model) throws Exception {
		String user_id = req.getParameter("user_id");
		model.addAttribute("user_id", user_id);
		return "collection/greatArt";
	}
	
	// 모코코 씨앗 메인
	@RequestMapping(value = "loarc/Collection/seedMococo")
	public String seedMococoMain(HttpServletRequest req, HttpServletResponse res, Model model) throws Exception {
		String user_id = req.getParameter("user_id");
		model.addAttribute("user_id", user_id);
		return "collection/seedMococo";
	}
	
	// 모험물 메인
	@RequestMapping(value = "loarc/Collection/adventure")
	public String adventureMain(HttpServletRequest req, HttpServletResponse res, Model model) throws Exception {
		String user_id = req.getParameter("user_id");
		model.addAttribute("user_id", user_id);
		return "collection/adventure";
	}
	
	// 이그네아의 징표 메인
	@RequestMapping(value = "loarc/Collection/igneaSign")
	public String igneaSignMain(HttpServletRequest req, HttpServletResponse res, Model model) throws Exception {
		String user_id = req.getParameter("user_id");
		model.addAttribute("user_id", user_id);
		return "collection/igneaSign";
	}
	
	// 세계수의 잎 메인
	@RequestMapping(value = "loarc/Collection/worldLeaf")
	public String worldLeafMain(HttpServletRequest req, HttpServletResponse res, Model model) throws Exception {
		String user_id = req.getParameter("user_id");
		model.addAttribute("user_id", user_id);
		return "collection/worldLeaf";
	}
}
