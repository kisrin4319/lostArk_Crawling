package controller;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.Map;

@Controller
public class CharacterInfoController {
	
	private static final Logger logger = LoggerFactory.getLogger(CharacterInfoController.class);

    @RequestMapping(value = "/")
    public String main() {
    	System.out.println("test");
        return "index";
    }

    @RequestMapping(value = "loarc/Character.ajax")
    @ResponseBody
    public Map<String, Object> Character_select(String user_id, HttpServletRequest req, HttpServletResponse res) throws Exception {
        // 寃��깋�븳 �븘�씠�뵒紐낆?��濡� 議고?��
        String url = "https://lostark.game.onstove.com/Profile/Character/" + user_id;
        Document doc = Jsoup.connect(url).get();

        Elements element = doc.select("div.profile-character");
        // 캐릭터 이미지만 가져올 수 있는 selector
        Elements charaterImage = doc.select("#profile-equipment .profile-equipment__character");
        
        String serializeElement = element.toString();
        String serializeCharaterImage = charaterImage.toString();

        System.out.println("TEST : " + serializeElement);

        Map<String, Object> resultMap = new HashMap<>();

        resultMap.put("Profileinfo", serializeElement);
        resultMap.put("serializeCharaterImage", serializeCharaterImage);
        return resultMap;
    }
}
