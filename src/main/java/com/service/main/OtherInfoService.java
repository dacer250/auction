package com.service.main;

import com.frame.base.BaseService;
import com.iface.main.OtherInfoIface;

import java.util.Map;

public class OtherInfoService extends BaseService implements OtherInfoIface {
    @Override
    public Map about() {
        return queryForMap("SELECT * FROM other_info WHERE id = 1");
    }

    @Override
    public Map contact() {
        return queryForMap("SELECT * FROM other_info WHERE id = 2");
    }


}
