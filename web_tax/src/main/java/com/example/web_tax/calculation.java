package com.example.web_tax;

import java.io.*;
import javax.servlet.*;

//@WebServlet(name = "calculation", value = "/calculation")
public class calculation implements Servlet {
    public static double get_ans(String ans) {
        double res;
        try{
            double wages =  Double.parseDouble(ans) -3500;
            if(wages <=0) {
                res = 0;
            }else if(wages <= 1500){
                res = wages * 0.03;
            }else if(wages <= 4500){
                res = wages * 0.1 - 105;
            }else if(wages <= 9000){
                res = wages * 0.2 - 555;
            }else if(wages <= 35000){
                res = wages * 0.25 - 1005;
            }else if(wages <= 55000){
                res = wages * 0.3 - 2755;
            }else if(wages <= 80000){
                res = wages * 0.35 - 5505;
            }else{
                res = wages * 0.45 - 13505;
            }
        }catch (Exception e)
        {
            res = -1;
        }
        return res;
    }

    @Override
    public void init(ServletConfig servletConfig) throws ServletException {

    }

    @Override
    public ServletConfig getServletConfig() {
        return null;
    }

    @Override
    public void service(ServletRequest servletRequest, ServletResponse servletResponse) throws ServletException, IOException {

    }

    @Override
    public String getServletInfo() {
        return null;
    }

    @Override
    public void destroy() {

    }
}