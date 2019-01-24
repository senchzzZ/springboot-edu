package com.ultron.common.util;

import java.util.LinkedHashMap;
import java.util.Map;

/**
 * Created by zhaoshengqi on 2019/1/23.
 */
public class PageQuery extends LinkedHashMap {
    private static final long serialVersionUID = 1L;
    //开始索引
    private int offset;
    // 每页条数
    private int limit;
    //页码
    private int page;

    public PageQuery(Map<String, Object> params) {
        this.putAll(params);
        // 分页参数
        this.page = params.get("page") == null ? 1 :
                Integer.parseInt(params.get("page").toString());
        this.limit = params.get("limit") == null ? 20 :
                Integer.parseInt(params.get("limit").toString());
        this.offset = (page - 1) * limit;
        this.put("offset", offset);
        this.put("page", page);
        this.put("limit", limit);
    }
}
