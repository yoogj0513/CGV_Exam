package cgvCalss;

public class MovieInfo {
	private String title;
	private String explain;
	private String file;
	private String time;

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getExplain() {
		return explain;
	}

	public void setExplain(String explain) {
		this.explain = explain;
	}

	public String getFile() {
		return file;
	}

	public void setFile(String file) {
		this.file = file;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	@Override
	public String toString() {
		return String.format("MovieInfo [title=%s, explain=%s, file=%s, time=%s]", title, explain, file, time);
	}

}
