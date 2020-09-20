package test;
import java.util.Date;
public class Message {
    private String name;
    private String titile;
    private Date createTime;
    private String content;
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getTitile() {
        return titile;
    }
    public void setTitile(String titile) {
        this.titile = titile;
    }
    public Date getCreateTime() {
        return createTime;
    }
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
    public String getContent() {
        return content;
    }
    public void setContent(String content) {
        this.content = content;
    }
}