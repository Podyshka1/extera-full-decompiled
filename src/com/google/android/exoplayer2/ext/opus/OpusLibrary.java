package com.google.android.exoplayer2.ext.opus;

import com.google.android.exoplayer2.ExoPlayerLibraryInfo;
import org.telegram.messenger.NativeLoader;

/* JADX INFO: loaded from: classes4.dex */
public final class OpusLibrary {
    private static int cryptoType;

    public static native String opusGetVersion();

    public static native boolean opusIsSecureDecodeSupported();

    static {
        ExoPlayerLibraryInfo.registerModule("goog.exo.opus");
        cryptoType = 1;
    }

    private OpusLibrary() {
    }

    public static void setLibraries(int i, String... strArr) {
        cryptoType = i;
    }

    public static boolean isAvailable() {
        return NativeLoader.loaded();
    }

    public static String getVersion() {
        if (isAvailable()) {
            return opusGetVersion();
        }
        return null;
    }

    public static boolean supportsCryptoType(int i) {
        return i == 0 || (i != 1 && i == cryptoType);
    }
}
