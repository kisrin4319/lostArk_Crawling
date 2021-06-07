package controller;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.Map;

@Controller
public class CharacterInfoController {

    @RequestMapping(value = "/")
    public String main() {
        return "index";
    }

    @RequestMapping(value = "loarc/Character.ajax")
    @ResponseBody
    public Map<String, Object> Character_select(String user_id, HttpServletRequest req, HttpServletResponse res) throws Exception {
        // 검색한 아이디명으로 조회
        String url = "https://lostark.game.onstove.com/Profile/Character/" + user_id;
        Document doc = Jsoup.connect(url).get();

        Elements element = doc.select("div.profile-character");

        System.out.println("TEST : " + element);

        Map<String, Object> resultMap = new HashMap<>();

        resultMap.put("Profile-info", element);
        return resultMap;
    }
}
