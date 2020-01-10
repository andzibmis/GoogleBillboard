public final static String e = "2.718281828459045235360287471352662497757247093699959574966967627724076630353547594571382178525166427427466391932003059"; 

public void setup () {
	for (int x = 0; x < e.length(); x++) {
	    String digits = e.substring (2 + x, 12 + x);
	    double dNum = Double.parseDouble (digits);
	    if (isPrime (dNum) == true) {
		    System.out.println ("true");
		    System.out.println (dNum);
		    break;
	    }
	    else {
		    System.out.println ("false");
	    }
    }
} 
 
public void draw () {
	//Not Needed
} 

public boolean isPrime (double dNum) {
	for (int x = 2; x <= Math.sqrt (dNum); x ++) {
		if (dNum % x == 0) {
			return false;
		}
	}
	return true;
}