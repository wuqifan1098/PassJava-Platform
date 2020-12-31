package service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.psbc.common.utils.PageUtils;
import com.psbc.passjava.question.entity.QuestionEntity;

import java.util.Map;

/**
 * 
 *
 * @author calors
 * @email wuqifannba1098@163.com
 * @date 2020-12-31 17:23:26
 */
public interface QuestionService extends IService<QuestionEntity> {

    PageUtils queryPage(Map<String, Object> params);
}

