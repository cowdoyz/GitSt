package DAO;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import DTO.BBS;

public class Crud {
	private final String name="mapper.home";

	public Integer InsetBBS(BBS bbs)
	{
		SqlSession ss = this.getSession();
		Integer result = -1;
		try
		{
			String sql = name+".InsertBBS";
			result = ss.insert(sql, bbs);
			if(result > 0) ss.commit();
			else ss.rollback();
		}
		finally
		{
			ss.close();
		}
		return result;
	}
	
	
	public Integer getMaxNo()
	{
		SqlSession ss = this.getSession();
		Integer max = 0;
		try 
		{
			String sql = name+".getMax";
			max = ss.selectOne(sql);
			if(max == null) max = 0;
		}
		catch (Exception e) 
		{
			ss.close();
		}
		return max;
		
	}
	
	public String getPwd(String id) 
	{
		SqlSession ss = this.getSession();
		String pwd = "";
		try 
		{
			String sql = name+".getPwd";
			pwd = ss.selectOne(sql, id);
		} 
		catch (Exception e) 
		{
			ss.close();
		}
		return pwd;
	}
	
	private SqlSession getSession()
	{
	String config = "mybatisConfig.xml";
	InputStream is = null;
	try
	{
		is=Resources.getResourceAsStream(config);
	}
	catch(Exception e){}
		SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();
		SqlSessionFactory factory = builder.build(is);
		SqlSession session = factory.openSession();
		return session;
	}
	
}
