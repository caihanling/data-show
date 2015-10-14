package zx.soft.data.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import zx.soft.data.model.QueryParameters;
import zx.soft.data.model.Result;
import zx.soft.utils.http.HttpClientDaoImpl;
import zx.soft.utils.json.JsonUtils;
import zx.soft.utils.time.TimeUtils;

public class DataServlet extends HttpServlet {
	

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		boolean flagQuery = true;
		boolean flagDate = true;
		QueryParameters query = null;
		long start = 0l;
		long finish = 0l;
		response.setCharacterEncoding("UTF-8");
		response.setHeader("Access-Control-Allow-Origin", "*");
		HttpClientDaoImpl http = new HttpClientDaoImpl();
		
		List<QueryParameters> list = new ArrayList<QueryParameters>();
		for (int i=0 ; i<20; i++) {
			String searchName = request.getParameter("searchName" + i);
			String dateName = request.getParameter("dateName" + i);
			String begin = request.getParameter("begin" + i);
			String end = request.getParameter("end" + i);
			if(searchName != null && searchName != "") {
				query = new QueryParameters();
				query.setField(searchName);
				query.setOperator(Integer.parseInt(request.getParameter("rules" + i)));
				query.setValue(request.getParameter("value" + i));
				list.add(query);
			}else{
				flagQuery = false;
			}
			if (dateName != null && dateName != "") {
				query = new QueryParameters();
				query.setField(dateName);
				query.setOperator(2);
				//如果起始时间为空，设定最小时间
				if (begin == null || begin == "") {
					start = TimeUtils.transTimeLong("2015-1-1 00:00:00");
				}else {
					start = TimeUtils.transTimeLong(begin);
				}
				//如果结束时间为空，设定当前时间
				if (end == null || end == "") {
					finish = (new Date()).getTime();
				}else {
					finish = TimeUtils.transTimeLong(end);
				}
				String str = Long.toString(start) + "," + Long.toString(finish);
				query.setValue(str);
				list.add(query);
			}else {
				flagDate = false;
			}
			if ((flagQuery == false) && (flagDate == false)) {
				break;
			}
		}

		System.out.println(JsonUtils.toJsonWithoutPretty(list));
		
		String str = http.doPostAndGetResponse("http://192.168.6.126:8900/impala/weibo", JsonUtils.toJsonWithoutPretty(list));
		
		System.out.println(str);	
			
		request.setAttribute("list", JsonUtils.parseJsonArray(str, Result.class));
		request.getRequestDispatcher("table.jsp").forward(request, response);
	}

	


}
