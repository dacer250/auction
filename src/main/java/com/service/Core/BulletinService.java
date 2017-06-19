package com.service.Core;

import com.frame.base.BaseService;
import com.frame.bean.PageBean;
import com.iface.Core.BulletinIface;

/**
 * 公告
 * Created by Administrator on 2017/3/9.
 */
public class BulletinService extends BaseService implements BulletinIface {
    @Override
    public void list(PageBean pageBean) {
        pageBean.setHql("SELECT * FROM tb_bulletin t");
        this.page(pageBean);
    }
}
