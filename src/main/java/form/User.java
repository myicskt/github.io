package form;

public class User {

	public User() {
		// TODO Auto-generated constructor stub
	}
String name;
String profession;
int applciation;
int age ;


public User(String name, String profession, int applciation, int age, String agenda) {
	super();
	this.name = name;
	this.profession = profession;
	this.applciation = applciation;
	this.age = age;
	this.agenda = agenda;
}
@Override
public String toString() {
	return "User [name=" + name + ", profession=" + profession + ", applciation=" + applciation + ", age=" + age
			+ ", agenda=" + agenda + "]";
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getProfession() {
	return profession;
}
public void setProfession(String profession) {
	this.profession = profession;
}
public int getApplciation() {
	return applciation;
}
public void setApplciation(int applciation) {
	this.applciation = applciation;
}
public int getAge() {
	return age;
}
public void setAge(int age) {
	this.age = age;
}
public String getAgenda() {
	return agenda;
}
public void setAgenda(String agenda) {
	this.agenda = agenda;
}
String agenda;




}
