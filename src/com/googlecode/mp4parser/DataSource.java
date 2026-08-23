package com.googlecode.mp4parser;

import java.io.Closeable;

/* JADX INFO: loaded from: classes5.dex */
public interface DataSource extends Closeable {
    long position();

    void position(long j);
}
