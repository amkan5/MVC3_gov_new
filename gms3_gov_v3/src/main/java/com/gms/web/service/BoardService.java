package com.gms.web.service;
import java.util.*;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gms.web.domain.ArticleDTO;
import com.gms.web.domain.MemberDTO;

public interface BoardService {
	public void insert(ArticleDTO p);
	public List<?> selectList(Map<?,?> p);
	public List<?> selectSome(Map<?,?> p);
	public ArticleDTO selectOne(String p);
	public int count(Map<?,?> p) ;
	public void update(Map<?,?> p) ;
	public void delete(Map<?,?> p) ;
	public ArticleDTO login(ArticleDTO p) ;
	public int countPaging();
	public ArticleDTO listCreterio();
	public ArticleDTO listPage();
	public List<ArticleDTO> listSearch();
}
