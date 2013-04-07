/**
 * 
 */

/**
 * @author matt
 *
 */
public final aspect GoodbyeWorld {
	pointcut WorldToString(World w) : target(w) && execution(String toString()) && !within(GoodbyeWorld);
	
	String around(World w) : WorldToString(w) {
		return "Goodbye" + proceed(w);
	}
}
