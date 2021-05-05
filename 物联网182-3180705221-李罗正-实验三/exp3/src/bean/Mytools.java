package bean;

public class Mytools {
	public static String change(String str){
		str=str.replace("&","&amp;");
		str=str.replace("'","&apos;");
		str=str.replace("\"","&quot;");
		str=str.replace("<","&lt;");
		str=str.replace("<","&gt;");
		return str;
	}
}

