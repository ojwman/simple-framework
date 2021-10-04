package simpframework.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/test")
public class TestController {

	@RequestMapping(value = "/Test.do")
	public String selectSampleList() throws Exception {
		return "test/Test";
	}

	@RequestMapping(value = "/grid.do")
	public String grid() throws Exception {
		return "test/grid";
	}
	
}
