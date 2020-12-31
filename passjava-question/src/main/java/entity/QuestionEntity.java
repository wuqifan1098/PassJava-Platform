package entity;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

import java.io.Serializable;
import java.util.Date;
import lombok.Data;

/**
 * 
 * 
 * @author calors
 * @email wuqifannba1098@163.com
 * @date 2020-12-31 17:23:26
 */
@Data
@TableName("qms_question")
public class QuestionEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 
	 */
	@TableId
	private Long id;
	/**
	 * 
	 */
	private String questionname;
	/**
	 * 
	 */
	private String questionanswer;
	/**
	 * 
	 */
	private Integer questiondiffcultyclass;
	/**
	 * 
	 */
	private Integer displayorder;
	/**
	 * 
	 */
	private String subtitle;
	/**
	 * 
	 */
	private Long questiontype;
	/**
	 * 
	 */
	private Integer isshowed;
	/**
	 * 
	 */
	private Date createtime;
	/**
	 * 
	 */
	private Date updatetime;

}
