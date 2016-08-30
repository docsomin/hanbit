package hanbit;

public class FreeBoardVO {
	private int id;
	private String writer;
	private String pass;
	private String write_date;
	private String title;
	private String content;
	private int hit;
	private int good;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getWrite_date() {
		return write_date;
	}

	public void setWrite_date(String write_date) {
		this.write_date = write_date;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}

	public int getGood() {
		return good;
	}

	public void setGood(int good) {
		this.good = good;
	}
	
	public FreeBoardVO() {		
	}

	public FreeBoardVO(int id, String writer, String pass, String write_date,
			String title, String content, int hit, int good) {
		this.id = id;
		this.writer = writer;
		this.pass = pass;
		this.title = title;
		this.write_date = write_date;
		this.content = content;
		this.hit = hit;
		this.good = good;
	}
}
