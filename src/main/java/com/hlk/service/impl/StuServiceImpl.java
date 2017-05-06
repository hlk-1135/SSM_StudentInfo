package com.hlk.service.impl;

import com.github.pagehelper.PageHelper;
import com.hlk.dao.StuMapper;
import com.hlk.dao.UserMapper;
import com.hlk.poi.WriteExcel;
import com.hlk.pojo.Stu;
import com.hlk.pojo.User;
import com.hlk.service.StuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.hlk.poi.WriteExcel;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by lenovo on 2017/4/25.
 */
@Transactional(propagation= Propagation.REQUIRED,isolation= Isolation.DEFAULT,timeout=5)
@Service("stuService")
public class StuServiceImpl implements StuService {
    @Autowired
    private StuMapper stuMapper;
    @Autowired
    private UserMapper userMapper;

    public Stu getStuById(int stuId) {
        Stu stu = stuMapper.getStuById(stuId);
        return stu;
    }

    public void addStu(Stu stu) {
        HttpSession session = getSession();
        String username = (String)session.getAttribute("username");
        User user  = userMapper.getUserByUserName(username);
        stu.setUser(user);
        stuMapper.addStu(stu);
    }

    public void delStu(int stuId) {
        stuMapper.delStu(stuId);
    }

    public void updateStu(Stu stu) {
        stuMapper.updateStu(stu);
    }

    public int getStuNum() {
        List<Stu> list = stuMapper.getStuList();
        return list.size();
    }

    public List<Stu> getPageStu(int pagenum, int pagesize) {
        PageHelper.startPage(pagenum,pagesize);//分页核心代码
        List<Stu> list = stuMapper.getStuList();
        return list;
    }

    public InputStream getInputStream() throws Exception {
        String[] title=new String[]{"stuId","stuName","stuAge","stuMajor"};
        List<Stu> plist=stuMapper.getStuList();
        List<Object[]>  dataList = new ArrayList<Object[]>();
        for(int i=0;i<plist.size();i++){
            Object[] obj=new Object[4];
            obj[0]=plist.get(i).getStuId();
            obj[1]=plist.get(i).getStuName();
            obj[2]=plist.get(i).getStuAge();
            obj[3]=plist.get(i).getStuMajor();
            dataList.add(obj);
        }
        WriteExcel ex = new WriteExcel(title, dataList);
        InputStream in;
        in = ex.export();
        return in;
    }

    public static HttpSession getSession() {
        HttpSession session = null;
        try {
            session = getRequest().getSession();
        } catch (Exception e) {}
        return session;
    }

    public static HttpServletRequest getRequest() {
        ServletRequestAttributes attrs =(ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
        return attrs.getRequest();
    }
}
