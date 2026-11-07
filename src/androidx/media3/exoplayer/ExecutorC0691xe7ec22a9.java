package androidx.media3.exoplayer;

import androidx.media3.common.util.HandlerWrapper;
import java.util.concurrent.Executor;

/* JADX INFO: renamed from: androidx.media3.exoplayer.ExoPlayerImpl$VirtualDeviceIdChangeListener$$ExternalSyntheticLambda1 */
/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ExecutorC0691xe7ec22a9 implements Executor {
    public final /* synthetic */ HandlerWrapper f$0;

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f$0.post(runnable);
    }
}
