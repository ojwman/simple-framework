package simpframework.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController {

	@RequestMapping(value = "/Test.do")
	public String selectSampleList() throws Exception {
		return "test/Test";
	}
	
}
