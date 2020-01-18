
public class Test{
    public static void main(String[] args){
        int m = 0;
        for (int a=1;a<1001;a++){
            for (int b=1;b<1001;b++){
                for (int c=1;c<1001;c++){
                    if (a*a+b*b==c*c && a<b){
                    System.out.println(a+" "+b+" "+c+" "+m);
                    m++;
                    }
                }
            }
        }
    }
}
