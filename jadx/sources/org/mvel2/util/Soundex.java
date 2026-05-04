package org.mvel2.util;

/* JADX INFO: loaded from: classes5.dex */
public class Soundex {
    public static final char[] MAP = {'0', '1', '2', '3', '0', '1', '2', '0', '0', '2', '2', '4', '5', '5', '0', '1', '2', '6', '2', '3', '0', '1', '0', '2', '0', '2'};

    public static String soundex(String str) {
        char c;
        char[] charArray = str.toUpperCase().toCharArray();
        StringBuilder sb = new StringBuilder();
        char c2 = '?';
        for (int i = 0; i < charArray.length && sb.length() < 4 && (c = charArray[i]) != ','; i++) {
            if (c >= 'A' && c <= 'Z' && c != c2) {
                char c3 = MAP[c - 'A'];
                if (c3 != '0') {
                    sb.append(c3);
                }
                c2 = c;
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
