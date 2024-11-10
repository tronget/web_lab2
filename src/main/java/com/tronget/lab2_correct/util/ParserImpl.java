package com.tronget.lab2_correct.util;

import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.servlet.http.HttpServletRequest;

import java.io.IOException;

public class ParserImpl<T> implements Parser<T> {
    private final Class<T> tClass;
    public ParserImpl(Class<T> tClass) {
        this.tClass = tClass;
    }

    @Override
    public T parse(HttpServletRequest req) throws IOException {
        ObjectMapper mapper = new ObjectMapper();
        T obj = mapper.readValue(req.getReader(), tClass);
        return obj;
    }
}
