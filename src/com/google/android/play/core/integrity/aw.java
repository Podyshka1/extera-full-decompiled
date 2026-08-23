package com.google.android.play.core.integrity;

import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.integrity.internal.AbstractRunnableC1663r;

/* JADX INFO: loaded from: classes5.dex */
abstract class aw extends AbstractRunnableC1663r {

    /* JADX INFO: renamed from: f */
    final /* synthetic */ ax f284f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    aw(ax axVar, TaskCompletionSource taskCompletionSource) {
        super(taskCompletionSource);
        this.f284f = axVar;
    }

    @Override // com.google.android.play.integrity.internal.AbstractRunnableC1663r
    /* JADX INFO: renamed from: a */
    public final void mo293a(Exception exc) {
        if (!(exc instanceof com.google.android.play.integrity.internal.ad)) {
            super.mo293a(exc);
        } else if (ax.m312g(this.f284f)) {
            super.mo293a(new StandardIntegrityException(-2, exc));
        } else {
            super.mo293a(new StandardIntegrityException(-9, exc));
        }
    }
}
