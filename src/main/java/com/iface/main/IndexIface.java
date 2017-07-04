package com.iface.main;

import java.util.List;
import java.util.Map;

/**
 * Created by MHOME on 2017/7/2.
 */
public interface IndexIface {

    /**
     * 首页轮播
     * @return
     */
    public List<Map<String, Object>> getSwiper();

    /**
     * 精品推荐
     * @return
     */
    public List<Map<String, Object>> getBoutique();

    /**
     * 人气推荐
     * @return
     */
    public List<Map<String, Object>> getRanking();
}
