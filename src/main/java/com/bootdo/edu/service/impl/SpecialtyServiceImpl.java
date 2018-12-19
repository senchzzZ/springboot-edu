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
	public boolean batchImport(String fileName, MultipartFile file, Long universityId) throws Exception {
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
		for (int r = 1; r <= sheet.getLastRowNum(); r++) {
			Row row = sheet.getRow(r);
			if (row == null) {
				continue;
			}

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
			String academicYear = row.getCell(2).getStringCellValue();
			if (StringUtils.isBlank(academicYear)) {
				throw new Exception("导入失败(第" + (r + 1) + "行,学年未填写)");
			}

			//专业形式
			String type = row.getCell(3).getStringCellValue();
			if (StringUtils.isBlank(type)) {
				throw new Exception("导入失败(第" + (r + 1) + "行,专业形式未填写)");
			}

			//介绍
			String introduction = row.getCell(34).getStringCellValue();
			if (StringUtils.isBlank(introduction)) {
				throw new Exception("导入失败(第" + (r + 1) + "行,介绍未填写)");
			}

			/*Date date;
			if (row.getCell(3).getCellType() != 0) {
				throw new Exception("导入失败(第" + (r + 1) + "行,入职日期格式不正确或未填写)");
			} else {
				date = row.getCell(3).getDateCellValue();
			}*/

			specialty.setUniversityId(universityId);
			specialty.setName(name);
			specialty.setQualification(qualification);
			specialty.setAcademicYear(academicYear);
			specialty.setIntroduction(introduction);
			specialty.setType(type);

			specialty.setCreateTime(new Date());
			specialty.setUpdateTime(new Date());

			specialtyList.add(specialty);
		}
		for (SpecialtyDO s : specialtyList) {
			specialtyDao.save(s);
		}
		return notNull;
	}

}
