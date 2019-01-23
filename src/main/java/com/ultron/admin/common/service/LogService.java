package com.ultron.admin.common.service;

import org.springframework.stereotype.Service;

import com.ultron.admin.common.domain.LogDO;
import com.ultron.admin.common.domain.PageDO;
import com.ultron.admin.common.utils.Query;
@Service
public interface LogService {
	void save(LogDO logDO);
	PageDO<LogDO> queryList(Query query);
	int remove(Long id);
	int batchRemove(Long[] ids);
}
