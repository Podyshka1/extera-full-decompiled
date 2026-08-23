package com.google.android.play.core.integrity;

import android.os.Bundle;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.integrity.internal.AbstractBinderC1709j;

/* JADX INFO: loaded from: classes5.dex */
class at extends AbstractBinderC1709j {

    /* JADX INFO: renamed from: a */
    final TaskCompletionSource f339a;

    /* JADX INFO: renamed from: b */
    final /* synthetic */ ax f340b;

    public at(ax axVar, TaskCompletionSource taskCompletionSource) {
        this.f340b = axVar;
        this.f339a = taskCompletionSource;
    }

    @Override // com.google.android.play.integrity.internal.InterfaceC1710k
    /* JADX INFO: renamed from: b */
    public final void mo363b(Bundle bundle) {
        this.f340b.f344a.m413v(this.f339a);
    }

    @Override // com.google.android.play.integrity.internal.InterfaceC1710k
    /* JADX INFO: renamed from: c */
    public void mo364c(Bundle bundle) {
        this.f340b.f344a.m413v(this.f339a);
    }

    @Override // com.google.android.play.integrity.internal.InterfaceC1710k
    /* JADX INFO: renamed from: d */
    public final void mo365d(Bundle bundle) {
        this.f340b.f344a.m413v(this.f339a);
    }

    @Override // com.google.android.play.integrity.internal.InterfaceC1710k
    /* JADX INFO: renamed from: e */
    public void mo366e(Bundle bundle) {
        this.f340b.f344a.m413v(this.f339a);
    }
}
