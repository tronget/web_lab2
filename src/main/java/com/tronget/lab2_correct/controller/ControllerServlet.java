package com.tronget.lab2_correct.controller;

import com.tronget.lab2_correct.model.Dot;
import com.tronget.lab2_correct.util.Parser;
import com.tronget.lab2_correct.util.ParserImpl;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/api")
public class ControllerServlet extends HttpServlet {
    private static final Logger logger = LogManager.getLogger(ControllerServlet.class);

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        logger.info("Post request is sent");
        if (isValidBody(req)) {
            logger.info("Post request is valid");
            req.setAttribute("forwardedFromController", true);
            req.getRequestDispatcher("/api/check").forward(req, resp);
        } else {
            logger.error("Post request is invalid");
            req.getRequestDispatcher("/index.jsp").forward(req, resp);
        }
    }
    private boolean isValidBody(HttpServletRequest req) throws IOException {
        Parser<Dot> parser = new ParserImpl<>(Dot.class);
        Dot dot = parser.parse(req);
        logger.info(dot.toString());
        if (dot.getX() != null &&
                dot.getY() != null &&
                dot.getR() != null) {
            req.setAttribute("dot", dot);
            return true;
        }
        return false;
    }
}
