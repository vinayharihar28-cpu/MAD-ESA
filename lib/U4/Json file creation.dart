// Create a student JSON file that contains multiple student objects. Each student has following key
// attributes :
// • id: A unique identifier for the student.
// • name: The student's full name.
// • age: The student's age.
// • gender: The student's gender.
// • email: The student’s email address.
// • mobile: The student’s mobile number.
// • courses: An array that contain details of the course:
// → courseId: A unique identifier for the course.
// → courseName: The name of the course.
// → subject: An array that list the subject the student in undertaking in the enrolled course
// -- subject_code:
// -- subject_name:
// -- credits:

//answer
{
"students": [
{
"id": "S001",
"name": "Vinay Harihar",
"age": 19,
"gender": "Male",
"email": "vinay@example.com",
"mobile": "9876543210",
"courses": [
{
"courseId": "C101",
"courseName": "BCA",
"subject": [
{
"subject_code": "CA201",
"subject_name": "Data Structures",
"credits": 4
}
]
}
]
}