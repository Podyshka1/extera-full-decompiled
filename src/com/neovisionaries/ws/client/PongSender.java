package com.neovisionaries.ws.client;

/* JADX INFO: loaded from: classes5.dex */
class PongSender extends PeriodicalFrameSender {
    public PongSender(WebSocket webSocket, PayloadGenerator payloadGenerator) {
        super(webSocket, "PongSender", payloadGenerator);
    }

    @Override // com.neovisionaries.ws.client.PeriodicalFrameSender
    public WebSocketFrame createFrame(byte[] bArr) {
        return WebSocketFrame.createPongFrame(bArr);
    }
}
