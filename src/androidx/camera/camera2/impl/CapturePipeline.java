package androidx.camera.camera2.impl;

import androidx.camera.core.impl.Config;
import java.util.List;
import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes3.dex */
public interface CapturePipeline {
    void setTemplate(int i);

    /* JADX INFO: renamed from: submitStillCaptures-BvXKQx0 */
    Object mo1413submitStillCapturesBvXKQx0(List list, int i, Config config, int i2, int i3, int i4, Continuation continuation);
}
