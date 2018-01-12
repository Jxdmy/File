package online.qsx.entity;

import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotBlank;

public class SimpleUser {
	@NotBlank(message="注册失败，请检查数据有效性")
	@Size(min=2,max=8)
	private String name;
	
	@NotBlank()
	private String password;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "SimpleUser [name=" + name + ", password=" + password + "]";
	}
	
}
