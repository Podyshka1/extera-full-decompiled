package com.google.firebase.messaging;

import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public final class SendException extends Exception {
    private final int errorCode;

    public SendException(String str) {
        super(str);
        this.errorCode = parseErrorCode(str);
    }

    private int parseErrorCode(String str) {
        if (str == null) {
            return 0;
        }
        String lowerCase = str.toLowerCase(Locale.US);
        lowerCase.getClass();
        switch (lowerCase) {
        }
        return 0;
    }
}
