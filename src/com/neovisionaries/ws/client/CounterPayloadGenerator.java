package com.neovisionaries.ws.client;

/* JADX INFO: loaded from: classes5.dex */
class CounterPayloadGenerator implements PayloadGenerator {
    private long mCount;

    @Override // com.neovisionaries.ws.client.PayloadGenerator
    public byte[] generate() {
        return Misc.getBytesUTF8(String.valueOf(increment()));
    }

    private long increment() {
        long jMax = Math.max(this.mCount + 1, 1L);
        this.mCount = jMax;
        return jMax;
    }
}
