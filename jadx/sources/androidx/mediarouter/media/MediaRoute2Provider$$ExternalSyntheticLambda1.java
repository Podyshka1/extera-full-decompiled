package androidx.mediarouter.media;

import android.os.Handler;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class MediaRoute2Provider$$ExternalSyntheticLambda1 implements Executor {
    public final /* synthetic */ Handler f$0;

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f$0.post(runnable);
    }
}
