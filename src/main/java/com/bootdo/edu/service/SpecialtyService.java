package com.bootdo.edu.service;

import com.bootdo.edu.domain.SpecialtyDO;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;
import java.util.Map;

/**
 * 专业管理
 * 
 * @author zhaoshengqi
 * @email sench.zhao@gmail.com
 * @date 2018-12-10 17:27:33
 */
public interface SpecialtyService {
	
	SpecialtyDO get(Long id);
	
	List<SpecialtyDO> list(Map<String, Object> map);
	
	int count(Map<String, Object> map);
	
	int save(SpecialtyDO specialty);
	
	int update(SpecialtyDO specialty);
	
	int remove(Long id);
	
	int batchRemove(Long[] ids);

    String batchImport(String fileName, MultipartFile file, Long universityId) throws Exception;
}
