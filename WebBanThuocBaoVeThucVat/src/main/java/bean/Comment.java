package bean;

import java.sql.Timestamp;

public class Comment {
    private int id;
    private String username;
    private String commentText;
    private Timestamp createdAt;

    private int count;

    public Comment(int id, String username, String commentText, Timestamp createdAt) {
        this.id = id;
        this.username = username;
        this.commentText = commentText;
        this.createdAt = createdAt;
    }

    public Comment() {
    }

    // getters and setters

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getCommentText() {
        return commentText;
    }

    public void setCommentText(String commentText) {
        this.commentText = commentText;
    }

    public Timestamp getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Timestamp createdAt) {
        this.createdAt = createdAt;
    }
}
