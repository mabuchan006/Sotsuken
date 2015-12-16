package temp_timetable.db;

import java.io.Serializable;
/**
 *  tempDBManageで使用中　複数部屋対応のため　temp_timeTable.jsp 一時時間割用
 * @author 1211091
 *
 */
public class roomInfo implements Serializable {


	public roomInfo() {
		super();
		// TODO 自動生成されたコンストラクター・スタブ
	}
	public roomInfo(int period, String week, String roomName) {
		super();
		this.period = period;
		this.week = week;
		this.roomName = roomName;
	}
	private int period;
	private String week;
	private String roomName;

	public String getRoomName() {
		return roomName;
	}

	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}

	public int getPeriod() {
		return period;
	}

	public void setPeriod(int period) {
		this.period = period;
	}

	public String getWeek() {
		return week;
	}

	public void setWeek(String week) {
		this.week = week;
	}

}
