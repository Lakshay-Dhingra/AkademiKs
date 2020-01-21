package db;

public class StoreResult
{
public static int qno=0;
public static String[] question=new String[10];
public static String[] A=new String[10];
public static String[] B=new String[10];
public static String[] C=new String[10];
public static String[] D=new String[10];
public static String[] useranswer=new String[10];
public static String[] answer=new String[10];

public static boolean storeData(int no,String ques,String a,String b,String c,String d,int usans,int ans)
{
	try{
	qno=no-1;
	question[qno]=ques;
	A[qno]=a;
	B[qno]=b;
	C[qno]=c;
	D[qno]=d;
	switch(usans)
	{
	case -1:
		useranswer[qno]="N/A";
		break;
	case 0:
		useranswer[qno]="A";
		break;
	case 1:
		useranswer[qno]="B";
		break;
	case 2:
		useranswer[qno]="C";
		break;
	case 3:
		useranswer[qno]="D";
		break;
	}
	switch(ans)
	{
	case 0:
		answer[qno]="A";
		break;
	case 1:
		answer[qno]="B";
		break;
	case 2:
		answer[qno]="C";
		break;
	case 3:
		answer[qno]="D";
		break;
	}
	return true;
	}
	catch(Exception e)
	{
		return false;
	}
}

}
