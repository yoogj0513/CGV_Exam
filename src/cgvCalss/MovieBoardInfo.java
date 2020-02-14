package cgvCalss;

import java.util.Date;

public class MovieBoardInfo {
	private String title;
	private String name;
	private String content;
	private Date registerDate;
	private String file;

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getRegisterDate() {
		return registerDate;
	}

	public void setRegisterDate(Date registerDate) {
		this.registerDate = registerDate;
	}

	public String getFile() {
		return file;
	}

	public void setFile(String file) {
		this.file = file;
	}

	@Override
	public String toString() {
		return String.format("MovieBoardInfo [title=%s, name=%s, content=%s, registerDate=%s, file=%s]", title, name,
				content, registerDate, file);
	}

}
