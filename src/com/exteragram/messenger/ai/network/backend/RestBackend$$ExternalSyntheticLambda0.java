package com.exteragram.messenger.ai.network.backend;

import okhttp3.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class RestBackend$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ Call f$0;

    public /* synthetic */ RestBackend$$ExternalSyntheticLambda0(Call call) {
        this.f$0 = call;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f$0.cancel();
    }
}
