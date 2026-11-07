package com.neovisionaries.ws.client;

import okio.Segment$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes5.dex */
public class StatusLine {
    private final String mHttpVersion;
    private final String mReasonPhrase;
    private final int mStatusCode;
    private final String mString;

    public StatusLine(String str) {
        String[] strArrSplit = str.split(" +", 3);
        if (strArrSplit.length < 2) {
            Segment$$ExternalSyntheticBUOutline0.m972m();
            throw null;
        }
        this.mHttpVersion = strArrSplit[0];
        this.mStatusCode = Integer.parseInt(strArrSplit[1]);
        this.mReasonPhrase = strArrSplit.length == 3 ? strArrSplit[2] : null;
        this.mString = str;
    }

    public int getStatusCode() {
        return this.mStatusCode;
    }

    public String toString() {
        return this.mString;
    }
}
