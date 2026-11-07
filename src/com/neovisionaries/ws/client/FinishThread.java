package com.neovisionaries.ws.client;

/* JADX INFO: loaded from: classes5.dex */
class FinishThread extends WebSocketThread {
    public FinishThread(WebSocket webSocket) {
        super("FinishThread", webSocket, ThreadType.FINISH_THREAD);
    }

    @Override // com.neovisionaries.ws.client.WebSocketThread
    public void runMain() {
        this.mWebSocket.finish();
    }
}
