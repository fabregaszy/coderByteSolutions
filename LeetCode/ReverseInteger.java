package easy;

import java.util.LinkedList;
import java.util.Queue;

/**
 * Created by zhangyan on 14/11/4.
 */
public class ReverseInteger {


	/**
	 * reverse digits of an integer
	 *
	 * @param x
	 * @return
	 */
	public static int reverse(int x) {

		if (x == 0) return 0;

		int ret = 0; // the num to be returned
		int lowestNum = 0;

		// use a queue(FIFO) to hold the numbers

		Queue<Integer> q = new LinkedList<Integer>();

		while (x % 10 != x) {
			lowestNum = x % 10;
			q.offer(lowestNum);
			x = x / 10;
		}
		q.offer(x);

		int len = q.size();
		Integer num;

		while ((num = q.poll()) != null) {
			ret += num.intValue() * Math.pow(10, --len);
		}

		return ret;
	}

	public static int reverse2(int x) {

		if (x == 0) return 0;
		// converse x to String: use abs value of x
		String strOfx = Integer.toString(Math.abs(x));
		// reverse the string
		String reversedStrOfx = new StringBuilder(strOfx).reverse().toString();
		// convert the reversed string to int
		int reversedx = Integer.parseInt(reversedStrOfx);

		if (x > 0) {
			return reversedx;
		} else {
			return -1 * reversedx;
		}

	}

	public static void main(String args[]) {
		int[] numbers = {90, 7890, -123};

		for (int num : numbers) {
			System.out.println(reverse2(num));
		}

	}
}
