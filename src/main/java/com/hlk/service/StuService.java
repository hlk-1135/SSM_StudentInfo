package com.hlk.service;

import com.hlk.pojo.Stu;

import java.io.InputStream;
import java.util.List;

/**
 * Created by lenovo on 2017/4/25.
 */
public interface StuService {
    public void addStu(Stu stu);
    public void delStu(int stuId);
    public void updateStu(Stu stu);
    public Stu getStuById(int stuId);
    public List<Stu> getPageStu(int pageNum,int pageSize);
    public int getStuNum();
    InputStream getInputStream() throws Exception;
}
