package com.neovisionaries.ws.client;

/* JADX INFO: loaded from: classes5.dex */
class InsufficientDataException extends WebSocketException {
    private final int mReadByteCount;
    private final int mRequestedByteCount;

    public InsufficientDataException(int i, int i2) {
        super(WebSocketError.INSUFFICENT_DATA, "The end of the stream has been reached unexpectedly.");
        this.mRequestedByteCount = i;
        this.mReadByteCount = i2;
    }

    public int getReadByteCount() {
        return this.mReadByteCount;
    }
}
