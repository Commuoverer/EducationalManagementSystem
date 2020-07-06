package com.shhy.domain;

public class Score {
    private Student student;
    private Course course;
    private Teacher teacher;
    private byte score;

    public Student getStudent() {
        return student;
    }

    public Course getCourse() {
        return course;
    }

    public Teacher getTeacher() {
        return teacher;
    }

    public byte getScore() {
        return score;
    }

    public void setStudent(Student student) {
        this.student = student;
    }

    public void setCourse(Course course) {
        this.course = course;
    }

    public void setTeacher(Teacher teacher) {
        this.teacher = teacher;
    }

    public void setScore(byte score) {
        this.score = score;
    }

    @Override
    public String toString() {
        return "Score{" +
                "student=" + student +
                ", course=" + course +
                ", teacher=" + teacher +
                ", score=" + score +
                '}';
    }
}
