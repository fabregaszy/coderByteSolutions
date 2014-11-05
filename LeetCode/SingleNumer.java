package medium;

/**
 * Given an array of integers, every element appears twice except for one.
 * Find that single one.
 * Created by zhangyan on 14/11/5.
 */
public class SingleNumer {

	public static int singleNumber(int[] A) {

		int ret = 0;

		for(int i: A){
			ret ^= i;
		}

		return ret;

	}

	public static void main(String[] args){
		int[] test = {1, 2, 3, 4, 5, 4, 3, 2, 1};
		int ret = singleNumber(test);
		System.out.println(ret);
	}
}
