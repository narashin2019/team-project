package com.nmnm.gms.web;

import javax.servlet.ServletContext;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.nmnm.gms.interceptor.Auth;
import com.nmnm.gms.interceptor.Auth.Role;
import com.nmnm.gms.service.GroupService;

@Auth(role = Role.MEMBER)
@Controller
@RequestMapping("moim")
public class MoimController {

  static Logger logger = LogManager.getLogger(MoimController.class);

  @Autowired
  ServletContext servletContext;

  @Autowired
  GroupService groupService;


  public MoimController() {
    logger.debug("MoimController 생성됨!");
  }


  @GetMapping("home")
  public void home(Model model, @RequestParam("groupNo") int groupNo) throws Exception {
    model.addAttribute("group", groupService.get(groupNo));
  }



}
