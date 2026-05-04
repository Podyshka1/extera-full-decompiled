package androidx.camera.camera2.pipe.core;

import android.os.SystemClock;

/* JADX INFO: loaded from: classes3.dex */
public final class SystemTimeSource implements TimeSource {
    @Override // androidx.camera.camera2.pipe.core.TimeSource
    /* JADX INFO: renamed from: now-vQl9yQU, reason: not valid java name */
    public long mo1888nowvQl9yQU() {
        return TimestampNs.m1891constructorimpl(SystemClock.elapsedRealtimeNanos());
    }
}
