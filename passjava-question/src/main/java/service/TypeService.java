package service;



import com.baomidou.mybatisplus.extension.service.IService;
import entity.TypeEntity;
import utils.PageUtils;

import java.util.Map;

/**
 * 
 *
 * @author calors
 * @email wuqifannba1098@163.com
 * @date 2020-12-31 17:23:26
 */
public interface TypeService extends IService<TypeEntity> {

    PageUtils queryPage(Map<String, Object> params);
}

