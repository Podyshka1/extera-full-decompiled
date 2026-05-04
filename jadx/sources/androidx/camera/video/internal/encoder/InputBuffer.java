package androidx.camera.video.internal.encoder;

import com.google.common.util.concurrent.ListenableFuture;

/* JADX INFO: loaded from: classes4.dex */
public interface InputBuffer {
    ListenableFuture getTerminationFuture();

    void setEndOfStream(boolean z);

    void setPresentationTimeUs(long j);

    boolean submit();
}
