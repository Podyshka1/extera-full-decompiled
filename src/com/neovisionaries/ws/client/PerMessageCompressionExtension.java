package com.neovisionaries.ws.client;

/* JADX INFO: loaded from: classes5.dex */
abstract class PerMessageCompressionExtension extends WebSocketExtension {
    public abstract byte[] compress(byte[] bArr);

    public abstract byte[] decompress(byte[] bArr);

    public PerMessageCompressionExtension(String str) {
        super(str);
    }
}
