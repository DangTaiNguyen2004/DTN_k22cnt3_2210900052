package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import javax.servlet.http.HttpSession;
import beans.User;
import model.UserDao;

@Controller
public class UserController {
    @Autowired
    UserDao userDao;

    // Hiển thị form đăng ký
    @GetMapping("/register")
    public String showRegisterForm(Model model) {
        model.addAttribute("user", new User());
        return "register";
    }

    // Xử lý đăng ký
    @PostMapping("/register")
    public String register(@ModelAttribute("user") User user, Model model) {
        int result = userDao.register(user);
        if (result > 0) {
            model.addAttribute("message", "Đăng ký thành công!");
            return "login";
        } else {
            model.addAttribute("message", "Đăng ký thất bại!");
            return "register";
        }
    }

    // Hiển thị form đăng nhập
    @GetMapping("/login")
    public String showLoginForm(Model model) {
        model.addAttribute("user", new User());
        return "login";
    }

    // Xử lý đăng nhập
    @PostMapping("/login")
    public String login(@ModelAttribute("user") User user, Model model, HttpSession session) {
        User loggedInUser = userDao.login(user.getUsername(), user.getPassword());
        if (loggedInUser != null) {
            session.setAttribute("user", loggedInUser);
            return "redirect:/home";
        } else {
            model.addAttribute("message", "Sai tài khoản hoặc mật khẩu!");
            return "login";
        }
    }

    // Xử lý đăng xuất
    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/login";
    }
}
