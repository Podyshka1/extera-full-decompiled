package com.google.android.play.core.integrity;

import android.os.Bundle;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.integrity.internal.AbstractBinderC1809j;

/* JADX INFO: loaded from: classes5.dex */
abstract class bi extends AbstractBinderC1809j {

    /* JADX INFO: renamed from: a */
    final TaskCompletionSource f318a;

    /* JADX INFO: renamed from: b */
    final /* synthetic */ bn f319b;

    public bi(bn bnVar, TaskCompletionSource taskCompletionSource) {
        this.f319b = bnVar;
        this.f318a = taskCompletionSource;
    }

    @Override // com.google.android.play.integrity.internal.InterfaceC1810k
    /* JADX INFO: renamed from: b */
    public final void mo365b(Bundle bundle) {
        this.f319b.f327a.m411v(this.f318a);
    }

    @Override // com.google.android.play.integrity.internal.InterfaceC1810k
    /* JADX INFO: renamed from: c */
    public void mo366c(Bundle bundle) {
        this.f319b.f327a.m411v(this.f318a);
    }

    @Override // com.google.android.play.integrity.internal.InterfaceC1810k
    /* JADX INFO: renamed from: d */
    public final void mo367d(Bundle bundle) {
        this.f319b.f327a.m411v(this.f318a);
    }

    @Override // com.google.android.play.integrity.internal.InterfaceC1810k
    /* JADX INFO: renamed from: e */
    public void mo368e(Bundle bundle) {
        this.f319b.f327a.m411v(this.f318a);
    }
}
