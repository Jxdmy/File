package online.qsx.entity;

import org.hibernate.validator.constraints.NotBlank;

public class DefaultUser extends SimpleUser{
	
	@NotBlank(message="注册失败，请检查数据有效性")
	private String email;
	
	@NotBlank
	private String profession;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getProfession() {
		return profession;
	}

	public void setProfession(String profession) {
		this.profession = profession;
	}

	@Override
	public String toString() {
		return "DefaultUser [email=" + email + ", profession=" + profession + "]";
	}
	
}
