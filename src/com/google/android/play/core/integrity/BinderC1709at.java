package com.google.android.play.core.integrity;

import android.os.Bundle;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.integrity.internal.AbstractBinderC1770j;

/* JADX INFO: renamed from: com.google.android.play.core.integrity.at */
/* JADX INFO: loaded from: classes5.dex */
class BinderC1709at extends AbstractBinderC1770j {

    /* JADX INFO: renamed from: a */
    final TaskCompletionSource f486a;

    /* JADX INFO: renamed from: b */
    final /* synthetic */ C1713ax f487b;

    BinderC1709at(C1713ax c1713ax, TaskCompletionSource taskCompletionSource) {
        this.f487b = c1713ax;
        this.f486a = taskCompletionSource;
    }

    @Override // com.google.android.play.integrity.internal.InterfaceC1771k
    /* JADX INFO: renamed from: b */
    public final void mo399b(Bundle bundle) {
        this.f487b.f491a.m449v(this.f486a);
    }

    @Override // com.google.android.play.integrity.internal.InterfaceC1771k
    /* JADX INFO: renamed from: c */
    public void mo400c(Bundle bundle) {
        this.f487b.f491a.m449v(this.f486a);
    }

    @Override // com.google.android.play.integrity.internal.InterfaceC1771k
    /* JADX INFO: renamed from: d */
    public final void mo401d(Bundle bundle) {
        this.f487b.f491a.m449v(this.f486a);
    }

    @Override // com.google.android.play.integrity.internal.InterfaceC1771k
    /* JADX INFO: renamed from: e */
    public void mo402e(Bundle bundle) {
        this.f487b.f491a.m449v(this.f486a);
    }
}
