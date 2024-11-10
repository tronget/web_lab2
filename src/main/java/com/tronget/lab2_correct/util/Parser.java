package com.tronget.lab2_correct.util;

import jakarta.servlet.http.HttpServletRequest;

import java.io.IOException;

public interface Parser<T> {
    T parse(HttpServletRequest req) throws IOException;
}
