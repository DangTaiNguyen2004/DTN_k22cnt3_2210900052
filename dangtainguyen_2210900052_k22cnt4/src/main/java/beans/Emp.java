package beans;

public class Emp {
		private int id ;
		private String name;
		private float salary;
		private String designation;
		private float Score;
	private String Email;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public float getSalary() {
		return salary;
	}
	public void setSalary(float salary) {
		this.salary = salary;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	
	public float getScore() {
        return Score;
    }
    public void setScore(float score) {
        this.Score = score;
    }

    // Getter và Setter cho 'email'
    public String getEmail() {
        return Email;
    }
    public void setEmail(String email) {
        this.Email = email;
    }
}
