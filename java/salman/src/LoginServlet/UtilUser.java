package LoginServlet;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

public class UtilUser {
static private Map<String,String> users=null;
static boolean initilzed=false;
static {
	
	 
	 
	 
	 
	 /*public static String getUser(String name){
		 return users.get(name);
	 }*/
}
public static void inituser(){
	 String line=null;
	 Map<String,String>map=new HashMap<String,String>();
	 
	 BufferedReader reader = null;
	 try{
		
		 reader =new BufferedReader (new FileReader("C:\\Hackathon\\new.txt"));
		 while((line=reader.readLine())!=null){
String[] col = line.split(",");
map.put(col[0], col[1]);

		 }
		 
	 }catch(Exception e){
		 System.out.println("error"+e.getMessage());
	 }
	 finally {
		 try {
			reader.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
	 }
	 users=map;
	 initilzed=true;
}
public static  String getUser(String name) {
	if(!initilzed){
		inituser();
	}
	return users.get(name);
}

public static void main(String[] args) throws Exception {
	
	UtilUser.inituser();
}

}

