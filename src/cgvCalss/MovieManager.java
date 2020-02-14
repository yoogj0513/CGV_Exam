package cgvCalss;

import java.util.ArrayList;

public class MovieManager {
	private ArrayList<MovieInfo> list = null;
	
	public MovieManager() {
		if(list == null) {
			list = new ArrayList<>();
		}
	}
	
	public void addMovie(MovieInfo movie) {
		list.add(movie);
	}
	
	public ArrayList<MovieInfo> getList() {
		return list;
	}
}
