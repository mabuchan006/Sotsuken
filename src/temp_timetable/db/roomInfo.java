package temp_timetable.db;

import java.io.Serializable;
/**
 *  tempDBManageで使用中　複数部屋対応のため　temp_timeTable.jsp 一時時間割用
 * @author 1211091
 *
 */
public class roomInfo implements Serializable {
	public roomInfo(String roomName) {
		super();
		this.roomName = roomName;
	}

	public roomInfo() {
		super();
		// TODO 自動生成されたコンストラクター・スタブ
	}

	private String roomName;

	public String getRoomName() {
		return roomName;
	}

	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}

}
