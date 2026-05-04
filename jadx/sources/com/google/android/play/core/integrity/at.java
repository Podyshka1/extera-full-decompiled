package com.google.android.play.core.integrity;

import android.os.Bundle;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.integrity.internal.AbstractBinderC1655j;

/* JADX INFO: loaded from: classes5.dex */
class at extends AbstractBinderC1655j {

    /* JADX INFO: renamed from: a */
    final TaskCompletionSource f280a;

    /* JADX INFO: renamed from: b */
    final /* synthetic */ ax f281b;

    at(ax axVar, TaskCompletionSource taskCompletionSource) {
        this.f281b = axVar;
        this.f280a = taskCompletionSource;
    }

    @Override // com.google.android.play.integrity.internal.InterfaceC1656k
    /* JADX INFO: renamed from: b */
    public final void mo304b(Bundle bundle) {
        this.f281b.f285a.m354v(this.f280a);
    }

    @Override // com.google.android.play.integrity.internal.InterfaceC1656k
    /* JADX INFO: renamed from: c */
    public void mo305c(Bundle bundle) {
        this.f281b.f285a.m354v(this.f280a);
    }

    @Override // com.google.android.play.integrity.internal.InterfaceC1656k
    /* JADX INFO: renamed from: d */
    public final void mo306d(Bundle bundle) {
        this.f281b.f285a.m354v(this.f280a);
    }

    @Override // com.google.android.play.integrity.internal.InterfaceC1656k
    /* JADX INFO: renamed from: e */
    public void mo307e(Bundle bundle) {
        this.f281b.f285a.m354v(this.f280a);
    }
}
