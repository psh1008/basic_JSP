package member;

import java.util.ArrayList;

public class MemberDAO {

	private ArrayList<Member> list;
	private int log = -1;
	
	public void init() {
		list = new ArrayList<Member>();
		list.add(new Member("admin","admin","관리자",true));
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
	public MemberDAO() {
		init();
	}
}