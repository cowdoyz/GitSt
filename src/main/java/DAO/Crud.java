package DAO;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class Crud {
	private final String name="mapper.home";
	
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
