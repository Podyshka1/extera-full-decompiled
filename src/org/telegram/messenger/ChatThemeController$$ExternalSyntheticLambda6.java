package org.telegram.messenger;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class ChatThemeController$$ExternalSyntheticLambda6 implements Executor {
    public final /* synthetic */ DispatchQueue f$0;

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f$0.postRunnable(runnable);
    }
}
