package flex_test;

import java.io.*;

public class Main {

    public static void main(String[] args) {
       String file = "C:\\Users\\benav\\Documents\\Projects\\flexTraining\\src\\flex_test\\input";
        try {
            BufferedReader bf =  new BufferedReader(new FileReader(file));
            Lexer lexer =  new Lexer(bf);
            lexer.yylex();

        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }
}
