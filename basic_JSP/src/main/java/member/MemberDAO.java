package member;

import java.util.ArrayList;

public class MemberDAO {

	private ArrayList<Member> list;
	private int log = -1;
	
	public MemberDAO() {
		init();
	}
	public void init() {
		list = new ArrayList<Member>();
		list.add(new Member("admin","admin","관리자",true));
		Member m1 = new Member("admin","admin","관리자",true);
		Member m2 = new Member("qwer","1111","홍길동",true);
		Member m3 = new Member("aaaa","2222","개똥이",true);
		Member m4 = new Member("abcd","3333","홍길순",false);
		Member m5 = new Member("test","4444","아이유",false);
		
		list.add(m1);
		list.add(m2);
		list.add(m3);
		list.add(m4);
		list.add(m5);
	}
	
	public void updateList(String id,String pw,String name,String sex) {
		// 성별이 남성이면 true , 여성이면 false
		boolean checkSex = sex == "남성"?true:false;
		list.add(new Member(id,pw,name,checkSex));
	}
	
	public boolean checkIdDup(String id) {
		for(int i=0;i<list.size();i++) {
			if(list.get(i).getId().equals(id)) {
				return false;
			}
		}
		return true;
	}
	public int getLog() {
		return log;
	}
	public String getListAsTableData() {
		String data = "";
		
		
		for(int i =1 ; i < list.size();i+=1) {
			Member m = list.get(i);
			data+= String.format("<tr><td>%s</td><td>%s</td><td>%s</td><td>%s</td>",
					m.getId(), m.getPw(), m.getName(), m.isGender()?"남성":"여성");
			
			data+="<td><button onClick='location.href=\""+"adminDeletePro.jsp?idx="+i+"\"' > 삭제 </button></td> </tr>";
			
		}
		
		return data;
	}
	
	public int loginAccept(String id,String pw) {
		
		for(int i=0;i<list.size();i++) {
			if(list.get(i).getId().equals(id) && list.get(i).getPw().equals(pw))
				return i;
		}
		return -1;
	}
	
	public void updateLog(int idx) {
		if(idx == -1) {
			log = -1;
		}else {
			log = idx;
		}
	}
	
	public String getName(int idx) {
		return list.get(idx).getName();
	}
	public boolean getSex(int idx) {
		return list.get(idx).isGender();
	}
	public String getId(int idx) {
		return list.get(idx).getId();	
	}
	public boolean checkPw(int idx,String pw) {
		if(list.get(idx).getPw().equals(pw))return true;
		return false;
	}
	public void updateNameAndSex(int idx,String name,String sex) {
		boolean male = sex.equals("남성")?true:false;
		list.get(idx).setName(name);
		list.get(idx).setGender(male);
	}
	public void deleteMember(int idx) {
		list.remove(idx);
	}
}