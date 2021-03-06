package com.ultron.admin.edu.service;

import com.ultron.admin.edu.domain.Specialty;
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
	
	Specialty get(Long id);
	
	List<Specialty> list(Map<String, Object> map);
	
	int count(Map<String, Object> map);
	
	int save(Specialty specialty);
	
	int update(Specialty specialty);
	
	int remove(Long id);
	
	int batchRemove(Long[] ids);

    String batchImport(String fileName, MultipartFile file, Long universityId) throws Exception;

	List<Specialty> getIndexSpecialties();
}
