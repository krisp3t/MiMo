/* Copyright (c) 2010, Carl Burch. License information is located in the
 * com.cburch.logisim.Main source code and at www.cburch.com/logisim/. */

package si.wolf;

import com.cburch.logisim.util.LocaleManager;
import com.cburch.logisim.util.StringGetter;
import com.cburch.logisim.util.StringUtil;

class Strings {
	private static LocaleManager source
		= new LocaleManager("resources/logisim", "std");

	public static String get(String key) {
		return source.get(key);
	}
	public static String get(String key, String arg0) {
		return StringUtil.format(source.get(key), arg0);
	}
	public static String get(String key, String arg0, String arg1) {
		return StringUtil.format(source.get(key), arg0, arg1);
	}
	public static StringGetter getter(String key) {
		return source.getter(key);
	}
	
	public static StringGetter getter2(String key) {
		return new LocaleGetter(key);
	}
	
	private static class LocaleGetter implements StringGetter {
		private String key;

		LocaleGetter(String key) {
			this.key = key;
		}

		public String get() {
			return key;
		}
		
		@Override
		public String toString() { return get(); }
	}
}
class StringGetter2 implements StringGetter{
	public String s;
	StringGetter2(String s){
		this.s=s;
	}
	public String get()
	{
		return s;
	}

	@Override
	public String toString() { return get(); }
}
