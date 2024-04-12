package form;

public class User {

	
	
int id;
String firstName;
String lastName;
String userName;
String pws;
String email;
long phoneNo;

public User() {
	
}
public User(String firstName, String lastName, String userName, String pws, String email, long phoneNo) {
	this.firstName = firstName;
	this.lastName = lastName;
	this.userName = userName;
	this.pws = pws;
	this.email = email;
	this.phoneNo = phoneNo;
}
@Override
public String toString() {
	return "User [id=" + id + ", firstName=" + firstName + ", lastName=" + lastName + ", userName=" + userName
			+ ", pws=" + pws + ", email=" + email + ", phoneNo=" + phoneNo + "]";
}
public String getFirstName() {
	return firstName;
}
public void setFirstName(String firstName) {
	this.firstName = firstName;
}
public String getLastName() {
	return lastName;
}
public void setLastName(String lastName) {
	this.lastName = lastName;
}
public String getUserName() {
	return userName;
}
public void setUserName(String userName) {
	this.userName = userName;
}
public String getPws() {
	return pws;
}
public void setPws(String pws) {
	this.pws = pws;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public long getPhoneNo() {
	return phoneNo;
}
public void setPhoneNo(long phoneNo) {
	this.phoneNo = phoneNo;
}

public int getId() {
	return id;
}




}
