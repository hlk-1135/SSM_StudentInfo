package com.hlk.dao;

import com.hlk.pojo.Stu;
import java.util.List;

/**
 * Created by lenovo on 2017/4/25.
 */
public interface StuMapper {
    public void addStu(Stu stu);
    public void delStu(int stuId);
    public void updateStu(Stu stu);
    public Stu getStuById(int stuId);
    public List<Stu> getStuList();
}
