package handler.member;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import handler.Handler;
import like.LikeService;
import member.MemberService;
import member.MemberVo;
import msg.MsgService;
import msg.MsgVo;
import mytravel.MyTravelService;
import mytravel.MyTravelVo;
import recommand_board.RecommandBoardVo;
import travel.TravelService;
import travel.TravelVO;

public class EditHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		// 한글처리
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		response.setCharacterEncoding("utf-8");

		String view = "";
		if (request.getMethod().equals("GET")) {
			String id = request.getParameter("id");
			MemberService service = new MemberService();
			MsgService s = new MsgService();
			MyTravelService ts = new MyTravelService();
			int cnt = s.getMsg(id);
			ArrayList<MsgVo> mlist = s.getById(id);
			LikeService ls = new LikeService();
			ArrayList<RecommandBoardVo> likeList = ls.getFav(id);
			ArrayList<MyTravelVo> favList = ts.getById(id);
			MemberVo vo = service.getMember(id);
			// 검색한 결과를 request에 담음. setAttribute(이름, 값);
			request.setAttribute("cnt", cnt);
			request.setAttribute("mlist", mlist);
			request.setAttribute("likelist", likeList);
			request.setAttribute("favlist", favList);
			request.setAttribute("vo", vo);
			view = "/member/edit.jsp";
		} else {
			String id = request.getParameter("id");
			String pwd = request.getParameter("pwd");
			String name = request.getParameter("name");
			String phone = request.getParameter("phone");
			String email = request.getParameter("email");

			MemberService service = new MemberService();
			service.editMyInfo(new MemberVo(id, pwd, email, phone, null, name));
			view = "redirect:/member/edit.do?id=" + id;
		}
		return view;
	}
}