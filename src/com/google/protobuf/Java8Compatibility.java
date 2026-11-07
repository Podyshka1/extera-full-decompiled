package com.google.protobuf;

import java.nio.Buffer;

/* JADX INFO: loaded from: classes5.dex */
abstract class Java8Compatibility {
    public static void limit(Buffer buffer, int i) {
        buffer.limit(i);
    }

    public static void position(Buffer buffer, int i) {
        buffer.position(i);
    }
}
