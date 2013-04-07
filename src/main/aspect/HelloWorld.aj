/**
 * 
 */

/**
 * @author matt
 *
 */
public final aspect HelloWorld {
	pointcut WorldToString(World w) : target(w) && execution(String toString()) && !within(HelloWorld);
	
	String around(World w) : WorldToString(w) {
		return "Hello" + proceed(w);
	}
}
