package com.google.android.exoplayer2;

import android.annotation.SuppressLint;

/* JADX INFO: loaded from: classes4.dex */
public interface RendererCapabilities {
    @SuppressLint({"WrongConstant"})
    static int create(int i, int i2, int i3, int i4, int i5) {
        return i | i2 | i3 | i4 | i5;
    }

    @SuppressLint({"WrongConstant"})
    static int getAdaptiveSupport(int i) {
        return i & 24;
    }

    @SuppressLint({"WrongConstant"})
    static int getDecoderSupport(int i) {
        return i & 384;
    }

    @SuppressLint({"WrongConstant"})
    static int getFormatSupport(int i) {
        return i & 7;
    }

    @SuppressLint({"WrongConstant"})
    static int getHardwareAccelerationSupport(int i) {
        return i & 64;
    }

    @SuppressLint({"WrongConstant"})
    static int getTunnelingSupport(int i) {
        return i & 32;
    }

    String getName();

    int getTrackType();

    int supportsFormat(Format format);

    int supportsMixedMimeTypeAdaptation();

    static int create(int i) {
        return create(i, 0, 0);
    }

    static int create(int i, int i2, int i3) {
        return create(i, i2, i3, 0, 128);
    }
}
