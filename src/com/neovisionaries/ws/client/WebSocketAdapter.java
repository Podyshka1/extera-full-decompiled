package com.neovisionaries.ws.client;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public abstract class WebSocketAdapter implements WebSocketListener {
    @Override // com.neovisionaries.ws.client.WebSocketListener
    public void handleCallbackError(WebSocket webSocket, Throwable th) {
    }

    @Override // com.neovisionaries.ws.client.WebSocketListener
    public void onBinaryFrame(WebSocket webSocket, WebSocketFrame webSocketFrame) {
    }

    @Override // com.neovisionaries.ws.client.WebSocketListener
    public void onBinaryMessage(WebSocket webSocket, byte[] bArr) {
    }

    @Override // com.neovisionaries.ws.client.WebSocketListener
    public void onCloseFrame(WebSocket webSocket, WebSocketFrame webSocketFrame) {
    }

    @Override // com.neovisionaries.ws.client.WebSocketListener
    public void onContinuationFrame(WebSocket webSocket, WebSocketFrame webSocketFrame) {
    }

    @Override // com.neovisionaries.ws.client.WebSocketListener
    public void onFrame(WebSocket webSocket, WebSocketFrame webSocketFrame) {
    }

    @Override // com.neovisionaries.ws.client.WebSocketListener
    public void onFrameError(WebSocket webSocket, WebSocketException webSocketException, WebSocketFrame webSocketFrame) {
    }

    @Override // com.neovisionaries.ws.client.WebSocketListener
    public void onFrameSent(WebSocket webSocket, WebSocketFrame webSocketFrame) {
    }

    @Override // com.neovisionaries.ws.client.WebSocketListener
    public void onFrameUnsent(WebSocket webSocket, WebSocketFrame webSocketFrame) {
    }

    @Override // com.neovisionaries.ws.client.WebSocketListener
    public void onMessageDecompressionError(WebSocket webSocket, WebSocketException webSocketException, byte[] bArr) {
    }

    @Override // com.neovisionaries.ws.client.WebSocketListener
    public void onMessageError(WebSocket webSocket, WebSocketException webSocketException, List<WebSocketFrame> list) {
    }

    @Override // com.neovisionaries.ws.client.WebSocketListener
    public void onPingFrame(WebSocket webSocket, WebSocketFrame webSocketFrame) {
    }

    @Override // com.neovisionaries.ws.client.WebSocketListener
    public void onPongFrame(WebSocket webSocket, WebSocketFrame webSocketFrame) {
    }

    @Override // com.neovisionaries.ws.client.WebSocketListener
    public void onSendError(WebSocket webSocket, WebSocketException webSocketException, WebSocketFrame webSocketFrame) {
    }

    @Override // com.neovisionaries.ws.client.WebSocketListener
    public void onSendingFrame(WebSocket webSocket, WebSocketFrame webSocketFrame) {
    }

    @Override // com.neovisionaries.ws.client.WebSocketListener
    public void onSendingHandshake(WebSocket webSocket, String str, List<String[]> list) {
    }

    @Override // com.neovisionaries.ws.client.WebSocketListener
    public void onStateChanged(WebSocket webSocket, WebSocketState webSocketState) {
    }

    @Override // com.neovisionaries.ws.client.WebSocketListener
    public void onTextFrame(WebSocket webSocket, WebSocketFrame webSocketFrame) {
    }

    @Override // com.neovisionaries.ws.client.WebSocketListener
    public void onTextMessage(WebSocket webSocket, byte[] bArr) {
    }

    @Override // com.neovisionaries.ws.client.WebSocketListener
    public void onTextMessageError(WebSocket webSocket, WebSocketException webSocketException, byte[] bArr) {
    }

    @Override // com.neovisionaries.ws.client.WebSocketListener
    public void onThreadCreated(WebSocket webSocket, ThreadType threadType, Thread thread) {
    }

    @Override // com.neovisionaries.ws.client.WebSocketListener
    public void onThreadStarted(WebSocket webSocket, ThreadType threadType, Thread thread) {
    }

    @Override // com.neovisionaries.ws.client.WebSocketListener
    public void onThreadStopping(WebSocket webSocket, ThreadType threadType, Thread thread) {
    }

    @Override // com.neovisionaries.ws.client.WebSocketListener
    public void onUnexpectedError(WebSocket webSocket, WebSocketException webSocketException) {
    }
}
