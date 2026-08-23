package com.google.android.play.core.integrity;

import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.integrity.internal.AbstractRunnableC1717r;

/* JADX INFO: loaded from: classes5.dex */
abstract class aw extends AbstractRunnableC1717r {

    /* JADX INFO: renamed from: f */
    final /* synthetic */ ax f343f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public aw(ax axVar, TaskCompletionSource taskCompletionSource) {
        super(taskCompletionSource);
        this.f343f = axVar;
    }

    @Override // com.google.android.play.integrity.internal.AbstractRunnableC1717r
    /* JADX INFO: renamed from: a */
    public final void mo352a(Exception exc) {
        if (!(exc instanceof com.google.android.play.integrity.internal.ad)) {
            super.mo352a(exc);
        } else if (ax.m371g(this.f343f)) {
            super.mo352a(new StandardIntegrityException(-2, exc));
        } else {
            super.mo352a(new StandardIntegrityException(-9, exc));
        }
    }
}
