package com.shopwebcake1.util;

import java.text.NumberFormat;
import java.util.Locale;

public class CurrencyPrice {
	

public String curPrice( long price) {
	Locale localeVN = new Locale("vi", "VN");
    NumberFormat currencyVN = NumberFormat.getCurrencyInstance(localeVN);
    String str1 = currencyVN.format(price);
	return str1;
}
}
