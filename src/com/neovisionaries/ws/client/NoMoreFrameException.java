package com.neovisionaries.ws.client;

/* JADX INFO: loaded from: classes5.dex */
class NoMoreFrameException extends WebSocketException {
    public NoMoreFrameException() {
        super(WebSocketError.NO_MORE_FRAME, "No more WebSocket frame from the server.");
    }
}
