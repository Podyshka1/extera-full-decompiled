package com.android.p003dx.p006io.instructions;

/* JADX INFO: loaded from: classes4.dex */
public interface CodeInput extends CodeCursor {
    boolean hasMore();

    int read();

    int readInt();

    long readLong();
}
