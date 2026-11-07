package com.stripe.android.exception;

/* JADX INFO: loaded from: classes5.dex */
public class InvalidRequestException extends StripeException {
    private final String param;

    public InvalidRequestException(String str, String str2, String str3, Integer num, Throwable th) {
        super(str, str3, num, th);
        this.param = str2;
    }
}
