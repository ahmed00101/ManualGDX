package pkg

public class Constants {

    

    init {
        println("First initializer block that prints")
    }
    
    val secondProperty = "Second property: ".also(::println)
    public val imageFileName = "badlogic.jpg"

    
    init {
        println("Second initializer block that prints ")
    }



}
