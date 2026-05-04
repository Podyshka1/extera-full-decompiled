package org.telegram.p029ui;

import org.telegram.p029ui.Components.ScrimOptions;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class ChatActivity$$ExternalSyntheticLambda119 implements Runnable {
    public final /* synthetic */ ScrimOptions f$0;

    public /* synthetic */ ChatActivity$$ExternalSyntheticLambda119(ScrimOptions scrimOptions) {
        this.f$0 = scrimOptions;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f$0.dismissFast();
    }
}
