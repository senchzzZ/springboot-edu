package com.ultron.admin.testDemo;

import com.ultron.admin.common.dao.TaskDao;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;

@RestController()
@RunWith(SpringRunner.class)
@SpringBootTest
public class TestDemo {
    /*@Autowired
    RedisTemplate redisTemplate;*/

    @Autowired
    private TaskDao taskScheduleJobMapper;

    @Test
    public void test() {
        System.out.println(taskScheduleJobMapper.list(new HashMap<String, Object>(16)));
    }

    ;
}
