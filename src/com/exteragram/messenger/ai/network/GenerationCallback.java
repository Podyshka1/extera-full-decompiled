package com.exteragram.messenger.ai.network;

/* JADX INFO: loaded from: classes4.dex */
public interface GenerationCallback {
    void onChunk(String str);

    void onError(int i, String str);

    void onResponse(String str);
}
