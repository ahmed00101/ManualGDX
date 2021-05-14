package pkg;

import com.badlogic.gdx.backends.lwjgl.LwjglApplication;
import com.badlogic.gdx.backends.lwjgl.LwjglApplicationConfiguration;
import pkg.MyGdxGame;
import pkg.Constants;

//public class GameDesktopLauncher {
    public class Game {
        public static void main(String[] arg) {
            System.out.println("hello");

            //String dir = System.getProperty("user.dir");
            Constants c = new Constants();
            c.getImageFileName();
            System.out.println(c.getImageFileName());


  // directory from where the program was launched
  // e.g /home/mkyong/projects/core-java/java-io
//   System.out.println(dir);

		LwjglApplicationConfiguration config = new LwjglApplicationConfiguration();
		config.width = 800;
		config.height = 200;
        new LwjglApplication(new MyGdxGame(), config);
        System.out.println("hi");
	}
}