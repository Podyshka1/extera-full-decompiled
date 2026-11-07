package com.neovisionaries.ws.client;

/* JADX INFO: loaded from: classes5.dex */
class PingSender extends PeriodicalFrameSender {
    public PingSender(WebSocket webSocket, PayloadGenerator payloadGenerator) {
        super(webSocket, "PingSender", payloadGenerator);
    }

    @Override // com.neovisionaries.ws.client.PeriodicalFrameSender
    public WebSocketFrame createFrame(byte[] bArr) {
        return WebSocketFrame.createPingFrame(bArr);
    }
}
