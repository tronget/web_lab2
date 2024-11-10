package com.tronget.lab2_correct.service;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.datatype.jsr310.JavaTimeModule;
import com.tronget.lab2_correct.model.Dot;
import com.tronget.lab2_correct.model.Result;
import com.tronget.lab2_correct.util.DotChecker;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/api/check")
public class AreaCheckServlet extends HttpServlet {
    private static final Logger logger = LogManager.getLogger(AreaCheckServlet.class);

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Object reqAttribute = req.getAttribute("forwardedFromController");
        if (reqAttribute == null || !((boolean) reqAttribute)) {
            logger.error("Post request isn't forwarded from Controller!");
            return;
        }
        logger.info("Post request is forwarded from Controller to AreaCheck");
        sendResponse(req, resp);
    }

    private void sendResponse(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        Dot dot = (Dot) req.getAttribute("dot");
        boolean isHit = DotChecker.check(dot);
        Result result = new Result(dot, isHit);
        ObjectMapper mapper = new ObjectMapper();
        mapper.registerModule(new JavaTimeModule());

        String resultJsonString = mapper.writeValueAsString(result);
        resp.setContentType("application/json");
        resp.setCharacterEncoding("UTF-8");
        resp.getWriter().write(resultJsonString);
        logger.info("Response is sent to user: " + resultJsonString);
        saveResult(result);
    }

    private void saveResult(Result result) {
        ServletContext context = getServletContext();
        List<Result> resultList = (List<Result>) context.getAttribute("results");
        if (resultList == null) {
            resultList = new ArrayList<>();
            context.setAttribute("results", resultList);
        }
        resultList.add(result);
        context.setAttribute("results", resultList);
    }
}
