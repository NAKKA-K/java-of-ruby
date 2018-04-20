require './system'

static void main(ARGV){
    scan = new_ Scanner(System.in);
    System.out.printf('入力:');
    line = scan.nextLine();
    System.out.println('Hello, world!');
    System.out.println(line);
}

