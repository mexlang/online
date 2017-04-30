package com.echo.web.model;


public class bkuserManager {
    @Override
	public String toString() {
		return "BkuserManager [managerId=" + managerId + ", managerName="
				+ managerName + ", managerPasswd=" + managerPasswd
				+ ", managerNichengname=" + managerNichengname
				+ ", managerSex=" + managerSex + "]";
	}

	private Integer managerId;

    private String managerName;

    private String managerPasswd;

    private String managerNichengname;

    private String managerSex;

    public Integer getManagerId() {
        return managerId;
    }

    public void setManagerId(Integer managerId) {
        this.managerId = managerId;
    }

    public String getManagerName() {
        return managerName;
    }

    public void setManagerName(String managerName) {
        this.managerName = managerName == null ? null : managerName.trim();
    }

    public String getManagerPasswd() {
        return managerPasswd;
    }

    public void setManagerPasswd(String managerPasswd) {
        this.managerPasswd = managerPasswd == null ? null : managerPasswd.trim();
    }

    public String getManagerNichengname() {
        return managerNichengname;
    }

    public void setManagerNichengname(String managerNichengname) {
        this.managerNichengname = managerNichengname == null ? null : managerNichengname.trim();
    }

    public String getManagerSex() {
        return managerSex;
    }

    public void setManagerSex(String managerSex) {
        this.managerSex = managerSex == null ? null : managerSex.trim();
    }
}