package org.commonmark.internal.util;

import kotlin.text.Typography;

/* JADX INFO: loaded from: classes5.dex */
public abstract class LinkScanner {
    public static int scanLinkLabelContent(CharSequence charSequence, int i) {
        while (i < charSequence.length()) {
            switch (charSequence.charAt(i)) {
                case '[':
                    return -1;
                case '\\':
                    int i2 = i + 1;
                    if (Parsing.isEscapable(charSequence, i2)) {
                        i = i2;
                    }
                    break;
                case ']':
                    return i;
            }
            i++;
        }
        return charSequence.length();
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0038, code lost:
    
        return -1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int scanLinkDestination(CharSequence charSequence, int i) {
        char cCharAt;
        if (i >= charSequence.length()) {
            return -1;
        }
        if (charSequence.charAt(i) != '<') {
            return scanLinkDestinationWithBalancedParens(charSequence, i);
        }
        while (true) {
            i++;
            if (i >= charSequence.length() || (cCharAt = charSequence.charAt(i)) == '\n' || cCharAt == '<') {
                break;
            }
            if (cCharAt == '>') {
                return i + 1;
            }
            if (cCharAt == '\\') {
                int i2 = i + 1;
                if (Parsing.isEscapable(charSequence, i2)) {
                    i = i2;
                }
            }
        }
    }

    public static int scanLinkTitle(CharSequence charSequence, int i) {
        if (i >= charSequence.length()) {
            return -1;
        }
        char cCharAt = charSequence.charAt(i);
        char c2 = Typography.quote;
        if (cCharAt != '\"') {
            c2 = '\'';
            if (cCharAt != '\'') {
                if (cCharAt != '(') {
                    return -1;
                }
                c2 = ')';
            }
        }
        int iScanLinkTitleContent = scanLinkTitleContent(charSequence, i + 1, c2);
        if (iScanLinkTitleContent != -1 && iScanLinkTitleContent < charSequence.length() && charSequence.charAt(iScanLinkTitleContent) == c2) {
            return iScanLinkTitleContent + 1;
        }
        return -1;
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0018  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int scanLinkTitleContent(CharSequence charSequence, int i, char c2) {
        while (i < charSequence.length()) {
            char cCharAt = charSequence.charAt(i);
            if (cCharAt == '\\') {
                int i2 = i + 1;
                if (Parsing.isEscapable(charSequence, i2)) {
                    i = i2;
                } else {
                    if (cCharAt == c2) {
                        return i;
                    }
                    if (c2 == ')' && cCharAt == '(') {
                        return -1;
                    }
                }
            }
            i++;
        }
        return charSequence.length();
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0042 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static int scanLinkDestinationWithBalancedParens(CharSequence charSequence, int i) {
        int i2 = 0;
        int i3 = i;
        while (i3 < charSequence.length()) {
            char cCharAt = charSequence.charAt(i3);
            if (cCharAt == 0 || cCharAt == ' ') {
                if (i3 != i) {
                    return i3;
                }
                return -1;
            }
            if (cCharAt == '\\') {
                int i4 = i3 + 1;
                if (Parsing.isEscapable(charSequence, i4)) {
                    i3 = i4;
                }
            } else if (cCharAt == '(') {
                i2++;
                if (i2 > 32) {
                    return -1;
                }
            } else if (cCharAt != ')') {
                if (Character.isISOControl(cCharAt)) {
                    if (i3 == i) {
                        return -1;
                    }
                }
            } else {
                if (i2 == 0) {
                    return i3;
                }
                i2--;
            }
            i3++;
        }
        return charSequence.length();
    }
}
