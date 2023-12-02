public class MyTest {
    static class A {
        String name = "A";
        @Override
        public boolean equals(Object obj) {
            if (this.name.equals(((A)obj).name)) {
                return true;
            }
            return false;
        }
    }
    public static void main(String[] args) {

        A i1 = new A();
        A i2 = new A();


        System.out.println(i1.equals(i2));

    }
}
