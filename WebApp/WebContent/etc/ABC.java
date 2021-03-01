import java.util.Scanner;
import java.util.Arrays;

public class ABC {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		
		while(true) {
			System.out.println("menu----------");
			System.out.println("1. 학생 정보 입력");
			System.out.println("2. 총점");
			System.out.println("3. 평균");
			System.out.println("4. 1등");
			System.out.println("5. 꼴등");
			System.out.println("5. 국어 점수 순위");
			System.out.print(">> ");
			int workNum = sc.nextInt();
			
			String student[][] = null;
			
			if(workNum == 1) {
				System.out.println("학생 수를 입력하십시오");
				int count = sc.nextInt();
				student = new String[count][4];		 // 동적할당
				
				int w = 0;
				while(w < count) {
					System.out.println((w+1) + "번째 학생>> ");
					
					System.out.print("이름 : ");
					String name = sc.next();
					System.out.print("국어 : ");
					String kor = sc.next();
					System.out.print("영어 : ");
					String eng = sc.next();
					System.out.print("수학 : ");
					String math = sc.next();
					
					student[w][0] = name;
					student[w][1] = kor;
					student[w][2] = math;
					student[w][3] = eng;
					
					w++;					
				}
				
				for(int i = 0; i < student.length; i++) {
				System.out.println(Arrays.toString(student[i]));					
				}
			}
			else if(workNum == 2) {
				int sum = 0;	
				for(int i = 0; i < student.length; i++) {
					for(int j = 1; j < student[i].length; j++) {		// student[0] : 이름 이므로 제외
						sum = sum + Integer.parseInt(student[i][j]);
					}
				}
				System.out.println("총점 : " + sum);
			}
			else if(workNum == 3) {
				int sum[] = new int[student.length];
				for(int i = 0; i < student.length; i++) {
					for(int j = 1; j < student.length; j++) {
						sum[i] = sum[i] + Integer.parseInt(student[i][j]);
					}
				}
				
			}
			
			
		}
		
		
		
	}

}
