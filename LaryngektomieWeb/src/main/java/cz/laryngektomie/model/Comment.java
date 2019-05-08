package cz.laryngektomie.model;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Comment {

	@Id
	@GeneratedValue
	private int id;
	@Column(name = "comment_text", columnDefinition = "LONGTEXT")
	private String text;
	private String username;
	private String email;
	private Date date;
	private static final DateFormat dateFormat = new SimpleDateFormat("dd.MM.yyyy HH:mm:ss");

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getDateAsString() {
		return dateFormat.format(date);
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getCetTime() {
		ZoneId zone = ZoneId.of("Europe/Prague");
		LocalDateTime now = LocalDateTime.now(zone);
		Timestamp sqlNow = Timestamp.valueOf(now);
		return sqlNow;
	}

	public List<Integer> getPages(int page, double size) {
		List<Integer> pages = new ArrayList<Integer>();
		if (page == 1) {
			for (int i = 1; i <= 5; i++)
				pages.add(i);
		} else if (page == 2) {
			for (int i = 1; i <= 5; i++)
				pages.add(i);
		} else if (page == 3) {
			for (int i = 1; i <= 5; i++)
				pages.add(i);
		} else if (page > 3 && page <= size - 2) {
			for (int i = page - 1; i <= page + 3; i++)
				pages.add(i);
		} else if (page == size - 1) {
			for (int i = page - 2; i <= page + 2; i++)
				pages.add(i);
		} else if (page == size) {
			for (int i = page - 3; i <= page + 1; i++)
				pages.add(i);
		} else if (page == size + 1) {
			for (int i = page - 4; i <= page; i++)
				pages.add(i);

		}
		return pages;
	}

}
