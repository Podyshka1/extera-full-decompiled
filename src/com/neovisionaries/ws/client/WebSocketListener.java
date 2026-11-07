package com.neovisionaries.ws.client;

import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public interface WebSocketListener {
    void handleCallbackError(WebSocket webSocket, Throwable th);

    void onBinaryFrame(WebSocket webSocket, WebSocketFrame webSocketFrame);

    void onBinaryMessage(WebSocket webSocket, byte[] bArr);

    void onCloseFrame(WebSocket webSocket, WebSocketFrame webSocketFrame);

    void onConnectError(WebSocket webSocket, WebSocketException webSocketException);

    void onConnected(WebSocket webSocket, Map<String, List<String>> map);

    void onContinuationFrame(WebSocket webSocket, WebSocketFrame webSocketFrame);

    void onDisconnected(WebSocket webSocket, WebSocketFrame webSocketFrame, WebSocketFrame webSocketFrame2, boolean z);

    void onError(WebSocket webSocket, WebSocketException webSocketException);

    void onFrame(WebSocket webSocket, WebSocketFrame webSocketFrame);

    void onFrameError(WebSocket webSocket, WebSocketException webSocketException, WebSocketFrame webSocketFrame);

    void onFrameSent(WebSocket webSocket, WebSocketFrame webSocketFrame);

    void onFrameUnsent(WebSocket webSocket, WebSocketFrame webSocketFrame);

    void onMessageDecompressionError(WebSocket webSocket, WebSocketException webSocketException, byte[] bArr);

    void onMessageError(WebSocket webSocket, WebSocketException webSocketException, List<WebSocketFrame> list);

    void onPingFrame(WebSocket webSocket, WebSocketFrame webSocketFrame);

    void onPongFrame(WebSocket webSocket, WebSocketFrame webSocketFrame);

    void onSendError(WebSocket webSocket, WebSocketException webSocketException, WebSocketFrame webSocketFrame);

    void onSendingFrame(WebSocket webSocket, WebSocketFrame webSocketFrame);

    void onSendingHandshake(WebSocket webSocket, String str, List<String[]> list);

    void onStateChanged(WebSocket webSocket, WebSocketState webSocketState);

    void onTextFrame(WebSocket webSocket, WebSocketFrame webSocketFrame);

    void onTextMessage(WebSocket webSocket, String str);

    void onTextMessage(WebSocket webSocket, byte[] bArr);

    void onTextMessageError(WebSocket webSocket, WebSocketException webSocketException, byte[] bArr);

    void onThreadCreated(WebSocket webSocket, ThreadType threadType, Thread thread);

    void onThreadStarted(WebSocket webSocket, ThreadType threadType, Thread thread);

    void onThreadStopping(WebSocket webSocket, ThreadType threadType, Thread thread);

    void onUnexpectedError(WebSocket webSocket, WebSocketException webSocketException);
}
