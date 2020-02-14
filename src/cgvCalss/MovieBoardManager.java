package cgvCalss;

import java.util.ArrayList;

public class MovieBoardManager {
	private ArrayList<MovieBoardInfo> list = null;

	public MovieBoardManager() {
		if(list == null) {
			list = new ArrayList<>();
		}
	}
	
	public void addMovieBoard(MovieBoardInfo mBoard) {
		list.add(mBoard);
	}
	
	public ArrayList<MovieBoardInfo> getList(){
		return list;
	}
}
