package com.neovisionaries.ws.client;

/* JADX INFO: loaded from: classes5.dex */
public class WebSocketException extends Exception {
    private final WebSocketError mError;

    public WebSocketException(WebSocketError webSocketError, String str) {
        super(str);
        this.mError = webSocketError;
    }

    public WebSocketException(WebSocketError webSocketError, String str, Throwable th) {
        super(str, th);
        this.mError = webSocketError;
    }

    public WebSocketError getError() {
        return this.mError;
    }
}
