package com.neovisionaries.ws.client;

/* JADX INFO: loaded from: classes5.dex */
abstract class Token {
    public static boolean isSeparator(char c2) {
        if (c2 == '\t' || c2 == ' ' || c2 == '\"' || c2 == ',' || c2 == '/' || c2 == '{' || c2 == '}' || c2 == '(' || c2 == ')') {
            return true;
        }
        switch (c2) {
            case ':':
            case ';':
            case '<':
            case '=':
            case '>':
            case '?':
            case '@':
                return true;
            default:
                switch (c2) {
                    case '[':
                    case '\\':
                    case ']':
                        return true;
                    default:
                        return false;
                }
        }
    }

    public static boolean isValid(String str) {
        if (str == null || str.length() == 0) {
            return false;
        }
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (isSeparator(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static String unquote(String str) {
        if (str == null) {
            return null;
        }
        int length = str.length();
        if (length < 2 || str.charAt(0) != '\"') {
            return str;
        }
        int i = length - 1;
        return str.charAt(i) != '\"' ? str : unescape(str.substring(1, i));
    }

    public static String unescape(String str) {
        if (str == null) {
            return null;
        }
        if (str.indexOf(92) < 0) {
            return str;
        }
        int length = str.length();
        StringBuilder sb = new StringBuilder();
        boolean z = false;
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt != '\\' || z) {
                sb.append(cCharAt);
                z = false;
            } else {
                z = true;
            }
        }
        return sb.toString();
    }
}
