package org.mvel2.sh.text;

/* JADX INFO: loaded from: classes5.dex */
public class TextUtil {
    public static String pad(int i, int i2) {
        StringBuilder sb = new StringBuilder();
        for (int i3 = i2 - i; i3 != -1; i3--) {
            sb.append(' ');
        }
        return sb.toString();
    }

    public static String paint(char c, int i) {
        StringBuilder sb = new StringBuilder();
        while (i != -1) {
            sb.append(c);
            i--;
        }
        return sb.toString();
    }

    public static String padTwo(Object obj, Object obj2, int i) {
        return String.valueOf(obj) + pad(String.valueOf(obj).length(), i) + obj2;
    }
}
