package org.webrtc;

import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
public class TurnCustomizer {
    private long nativeTurnCustomizer;

    private static native void nativeFreeTurnCustomizer(long j);

    public TurnCustomizer(long j) {
        this.nativeTurnCustomizer = j;
    }

    public void dispose() {
        checkTurnCustomizerExists();
        nativeFreeTurnCustomizer(this.nativeTurnCustomizer);
        this.nativeTurnCustomizer = 0L;
    }

    @CalledByNative
    public long getNativeTurnCustomizer() {
        checkTurnCustomizerExists();
        return this.nativeTurnCustomizer;
    }

    private void checkTurnCustomizerExists() {
        if (this.nativeTurnCustomizer != 0) {
            return;
        }
        Segment$$ExternalSyntheticBUOutline1.m848m("TurnCustomizer has been disposed.");
    }
}
