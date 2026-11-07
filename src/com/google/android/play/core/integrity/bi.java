package com.google.android.play.core.integrity;

import android.os.Bundle;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.integrity.internal.AbstractBinderC1930j;

/* JADX INFO: loaded from: classes5.dex */
abstract class bi extends AbstractBinderC1930j {

    /* JADX INFO: renamed from: a */
    final TaskCompletionSource f319a;

    /* JADX INFO: renamed from: b */
    final /* synthetic */ bn f320b;

    public bi(bn bnVar, TaskCompletionSource taskCompletionSource) {
        this.f320b = bnVar;
        this.f319a = taskCompletionSource;
    }

    @Override // com.google.android.play.integrity.internal.InterfaceC1931k
    /* JADX INFO: renamed from: b */
    public final void mo389b(Bundle bundle) {
        this.f320b.f328a.m435v(this.f319a);
    }

    @Override // com.google.android.play.integrity.internal.InterfaceC1931k
    /* JADX INFO: renamed from: c */
    public void mo390c(Bundle bundle) {
        this.f320b.f328a.m435v(this.f319a);
    }

    @Override // com.google.android.play.integrity.internal.InterfaceC1931k
    /* JADX INFO: renamed from: d */
    public final void mo391d(Bundle bundle) {
        this.f320b.f328a.m435v(this.f319a);
    }

    @Override // com.google.android.play.integrity.internal.InterfaceC1931k
    /* JADX INFO: renamed from: e */
    public void mo392e(Bundle bundle) {
        this.f320b.f328a.m435v(this.f319a);
    }
}
