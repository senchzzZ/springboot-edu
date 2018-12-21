package com.bootdo.edu.service.impl;

import com.bootdo.common.service.DictService;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import com.bootdo.edu.dao.SpecialtyDao;
import com.bootdo.edu.domain.SpecialtyDO;
import com.bootdo.edu.service.SpecialtyService;
import org.springframework.web.multipart.MultipartFile;


@Slf4j
@Service
public class SpecialtyServiceImpl implements SpecialtyService {
	@Autowired
	private SpecialtyDao specialtyDao;
	@Autowired
	private DictService dictService;
	
	@Override
	public SpecialtyDO get(Long id){
		return specialtyDao.get(id);
	}
	
	@Override
	public List<SpecialtyDO> list(Map<String, Object> map){
		List<SpecialtyDO> specialties = specialtyDao.list(map);
		/*for (SpecialtyDO specialtyDO : specialties) {
			specialtyDO.setType(dictService.getName("edu_specialty_type", String.valueOf(specialtyDO.getType())));
			specialtyDO.setQualification(dictService.getName("edu_qualification", String.valueOf(specialtyDO.getQualification())));
		}*/
		return specialties;
	}
	
	@Override
	public int count(Map<String, Object> map){
		return specialtyDao.count(map);
	}
	
	@Override
	public int save(SpecialtyDO specialty){
		specialty.setCreateTime(new Date());
		specialty.setUpdateTime(new Date());
		return specialtyDao.save(specialty);
	}
	
	@Override
	public int update(SpecialtyDO specialty){
		specialty.setUpdateTime(new Date());
		return specialtyDao.update(specialty);
	}
	
	@Override
	public int remove(Long id){
		return specialtyDao.remove(id);
	}
	
	@Override
	public int batchRemove(Long[] ids){
		return specialtyDao.batchRemove(ids);
	}

	@Override
	public String batchImport(String fileName, MultipartFile file, Long universityId) throws Exception {
		log.info("开始导入~~~~~~~");
		boolean notNull = false;
		List<SpecialtyDO> specialtyList = new ArrayList<>();

		boolean isExcel2003 = true;
		if (fileName.matches("^.+\\.(?i)(xlsx)$")) {
			isExcel2003 = false;
		}
		InputStream is = file.getInputStream();
		Workbook wb = null;
		if (isExcel2003) {
			wb = new HSSFWorkbook(is);
		} else {
			wb = new XSSFWorkbook(is);
		}
		Sheet sheet = wb.getSheetAt(0);
		if (sheet != null) {
			notNull = true;
		}
		SpecialtyDO specialty;
		int successNum = 0;
		String result = "";
		//忽略第一行title
		for (int r = 1; r <= sheet.getLastRowNum(); r++) {
			Row row = sheet.getRow(r);

			//空行判断
			if (StringUtils.isBlank(row.getCell(0).getStringCellValue()))
				continue;

			specialty = new SpecialtyDO();
			//名称
			if (row.getCell(0).getCellType() != Cell.CELL_TYPE_STRING) {
				throw new Exception("导入失败(第" + (r + 1) + "行,名称请设为文本格式)");
			}
			String name = row.getCell(0).getStringCellValue();
			if (StringUtils.isBlank(name)) {
				throw new Exception("导入失败(第" + (r + 1) + "行,名称未填写)");
			}

			//学历
			row.getCell(1).setCellType(Cell.CELL_TYPE_STRING);
			String qualification = row.getCell(1).getStringCellValue();
			if (StringUtils.isBlank(qualification)) {
				throw new Exception("导入失败(第" + (r + 1) + "行,学历未填写)");
			}

			//学年
			Double academicYear = row.getCell(2).getNumericCellValue();
			if (academicYear == null) {
				throw new Exception("导入失败(第" + (r + 1) + "行,学年未填写)");
			}

			//专业形式
			String type = row.getCell(3).getStringCellValue();
			if (StringUtils.isBlank(type)) {
				throw new Exception("导入失败(第" + (r + 1) + "行,专业形式未填写)");
			}

			//介绍
			String introduction = row.getCell(4).getStringCellValue();
			if (StringUtils.isBlank(introduction)) {
				throw new Exception("导入失败(第" + (r + 1) + "行,专业介绍未填写)");
			}

			specialty.setUniversityId(universityId);
			specialty.setName(name);
			specialty.setQualification(qualification);
			specialty.setAcademicYear(String.valueOf(academicYear));
			specialty.setIntroduction(introduction);
			specialty.setType(type);

			specialty.setCreateTime(new Date());
			specialty.setUpdateTime(new Date());

			specialtyList.add(specialty);
			successNum++;
		}
		for (SpecialtyDO s : specialtyList) {
			specialtyDao.save(s);
		}
		result = "导入结束,成功条数: " + successNum;
		log.info(result);
		return result;
	}
}
