package com.mayingfeng.mapgis.data;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
@Getter
@Setter
public class Result {

    private Integer code;

    private Object content;

    private String message;

    public Result() {

    }

    public Result(Object content) {
        this.code = 200;
        this.content = content;
        this.message = "";
    }

    public Result(Integer code, Object content) {
        this.code = code;
        this.content = content;
        this.message = "";
    }

    public Result(Integer code, Object content, String message) {
        this.code = code;
        this.content = content;
        this.message = message;
    }

    public static Result success() {
        Result result = new Result();
        result.setCode(200);
        result.setContent("");
        result.setMessage("");
        return result;
    }

    public static Result success(Object content) {
        Result result = new Result();
        result.setCode(200);
        result.setContent(content);
        result.setMessage("");
        return result;
    }

    public static Result success(Object content, String message) {
        Result result = new Result();
        result.setCode(200);
        result.setContent(content);
        result.setMessage(message);
        return result;
    }

    public static Result success(Integer code, Object content, String message) {
        Result result = new Result();
        result.setCode(code);
        result.setContent(content);
        result.setMessage(message);
        return result;
    }

    public static Result fail(String message) {
        Result result = new Result();
        result.setCode(500);
        result.setContent("");
        result.setMessage(message);
        return result;
    }

    public static Result fail(Integer code, String message) {
        Result result = new Result();
        result.setCode(code);
        result.setContent("");
        result.setMessage(message);
        return result;
    }

    public static Result fail(Integer code, Object content, String message) {
        Result result = new Result();
        result.setCode(code);
        result.setContent(content);
        result.setMessage(message);
        return result;
    }
}
