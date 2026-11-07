package com.google.mlkit.genai.common;

/* JADX INFO: loaded from: classes5.dex */
public interface StreamingCallback {
    void onNewText(String str);

    void onNewThought(String str);
}
