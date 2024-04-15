package form;

public class Course {

	
	
	int id;
	String courseName; 
	String courseLevel;
	String courseDesc;
	
	
	
	public Course(int id,String courseName, String courseLevel, String courseDesc) {
		this.id=id;
		this.courseName = courseName;
		this.courseLevel = courseLevel;
		this.courseDesc = courseDesc;
	}



	public Course() {
		
	}



	public int getId() {
		return id;
	}



	public void setId(int id) {
		this.id = id;
	}



	public String getCourseName() {
		return courseName;
	}



	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}



	public String getCourseLevel() {
		return courseLevel;
	}



	public void setCourseLevel(String courseLevel) {
		this.courseLevel = courseLevel;
	}



	public String getCourseDesc() {
		return courseDesc;
	}



	public void setCourseDesc(String courseDesc) {
		this.courseDesc = courseDesc;
	}



	@Override
	public String toString() {
		return "Course [id=" + id + ", courseName=" + courseName + ", courseLevel=" + courseLevel + ", courseDesc="
				+ courseDesc + "]";
	}

}
