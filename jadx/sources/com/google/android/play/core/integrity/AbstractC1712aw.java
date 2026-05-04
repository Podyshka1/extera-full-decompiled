package com.google.android.play.core.integrity;

import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.integrity.internal.AbstractRunnableC1778r;
import com.google.android.play.integrity.internal.C1753ad;

/* JADX INFO: renamed from: com.google.android.play.core.integrity.aw */
/* JADX INFO: loaded from: classes5.dex */
abstract class AbstractC1712aw extends AbstractRunnableC1778r {

    /* JADX INFO: renamed from: f */
    final /* synthetic */ C1713ax f490f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AbstractC1712aw(C1713ax c1713ax, TaskCompletionSource taskCompletionSource) {
        super(taskCompletionSource);
        this.f490f = c1713ax;
    }

    @Override // com.google.android.play.integrity.internal.AbstractRunnableC1778r
    /* JADX INFO: renamed from: a */
    public final void mo388a(Exception exc) {
        if (!(exc instanceof C1753ad)) {
            super.mo388a(exc);
        } else if (C1713ax.m407g(this.f490f)) {
            super.mo388a(new StandardIntegrityException(-2, exc));
        } else {
            super.mo388a(new StandardIntegrityException(-9, exc));
        }
    }
}
