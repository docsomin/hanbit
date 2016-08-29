package hanbit;

public class Pull {
	
	public static void doPull() {
        String[] command = {"/bin/sh","-c","git pull https://github.com/docsomin/hanbit.git"};
        int i;
        try{
                Process ps = Runtime.getRuntime().exec(command);
                ps.waitFor();
                System.out.println(ps.exitValue());
                ps.destroy();
        }catch(Exception e){
                e.printStackTrace();
        }
    }
}
