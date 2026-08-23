package com.sun.jna;

/* JADX INFO: loaded from: classes5.dex */
public class LastErrorException extends RuntimeException {
    private static final long serialVersionUID = 1;
    private int errorCode;

    private static String formatMessage(int i) {
        if (Platform.isWindows()) {
            return "GetLastError() returned " + i;
        }
        return "errno was " + i;
    }

    private static String parseMessage(String str) {
        try {
            return formatMessage(Integer.parseInt(str));
        } catch (NumberFormatException unused) {
            return str;
        }
    }

    public int getErrorCode() {
        return this.errorCode;
    }

    public LastErrorException(String str) {
        super(parseMessage(str.trim()));
        try {
            this.errorCode = Integer.parseInt(str.startsWith("[") ? str.substring(1, str.indexOf("]")) : str);
        } catch (NumberFormatException unused) {
            this.errorCode = -1;
        }
    }

    public LastErrorException(int i) {
        this(i, formatMessage(i));
    }

    public LastErrorException(int i, String str) {
        super(str);
        this.errorCode = i;
    }
}
