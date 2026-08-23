package org.mvel2.util;

/* JADX INFO: loaded from: classes5.dex */
public class Soundex {
    public static final char[] MAP = {'0', '1', '2', '3', '0', '1', '2', '0', '0', '2', '2', '4', '5', '5', '0', '1', '2', '6', '2', '3', '0', '1', '0', '2', '0', '2'};

    public static String soundex(String str) {
        char c2;
        char[] charArray = str.toUpperCase().toCharArray();
        StringBuilder sb = new StringBuilder();
        char c3 = '?';
        for (int i = 0; i < charArray.length && sb.length() < 4 && (c2 = charArray[i]) != ','; i++) {
            if (c2 >= 'A' && c2 <= 'Z' && c2 != c3) {
                char c4 = MAP[c2 - 'A'];
                if (c4 != '0') {
                    sb.append(c4);
                }
                c3 = c2;
            }
        }
        if (sb.length() == 0) {
            return null;
        }
        for (int length = sb.length(); length < 4; length++) {
            sb.append('0');
        }
        return sb.toString();
    }
}
