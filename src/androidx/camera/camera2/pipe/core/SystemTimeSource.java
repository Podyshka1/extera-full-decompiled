package androidx.camera.camera2.pipe.core;

import android.os.SystemClock;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\t\b\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0004\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/camera/camera2/pipe/core/SystemTimeSource;", "Landroidx/camera/camera2/pipe/core/TimeSource;", "<init>", "()V", "now", "Landroidx/camera/camera2/pipe/core/TimestampNs;", "now-vQl9yQU", "()J", "camera-camera2-pipe"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
public final class SystemTimeSource implements TimeSource {
    @Override // androidx.camera.camera2.pipe.core.TimeSource
    /* JADX INFO: renamed from: now-vQl9yQU, reason: not valid java name */
    public long mo1628nowvQl9yQU() {
        return TimestampNs.m1631constructorimpl(SystemClock.elapsedRealtimeNanos());
    }
}
