/*Q5 Create a class Course with attributes title and duration (default = 3 months). Create two
courses: one with custom duration and one with the default. Print both. */
void main() {
  Course course1 = Course("Dart", duration: 6);
  Course course2 = Course("Flutter");
  course1.display();
  course2.display();
}

class Course {
  String title;
  int duration;
  Course(this.title, {this.duration = 3});
  void display() {
    print("Course title: $title, Duration: $duration");
  }
}
