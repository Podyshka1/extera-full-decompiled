package org.chromium.net.impl;

import java.nio.ByteBuffer;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Preconditions {
    public static void checkDirect(ByteBuffer byteBuffer) {
        if (byteBuffer.isDirect()) {
            return;
        }
        f$$ExternalSyntheticBUOutline1.m215m("byteBuffer must be a direct ByteBuffer.");
    }

    public static void checkHasRemaining(ByteBuffer byteBuffer) {
        if (byteBuffer.hasRemaining()) {
            return;
        }
        f$$ExternalSyntheticBUOutline1.m215m("ByteBuffer is already full.");
    }
}
