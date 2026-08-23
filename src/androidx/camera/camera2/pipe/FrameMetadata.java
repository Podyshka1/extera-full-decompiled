package androidx.camera.camera2.pipe;

import android.hardware.camera2.CaptureResult;

/* JADX INFO: loaded from: classes3.dex */
public interface FrameMetadata extends Metadata, UnsafeWrapper {
    Object get(CaptureResult.Key key);

    /* JADX INFO: renamed from: getCamera-Dz_R5H8, reason: not valid java name */
    String mo1640getCameraDz_R5H8();

    /* JADX INFO: renamed from: getFrameNumber-Ugla2oM, reason: not valid java name */
    long mo1641getFrameNumberUgla2oM();

    Object getOrDefault(CaptureResult.Key key, Object obj);
}
