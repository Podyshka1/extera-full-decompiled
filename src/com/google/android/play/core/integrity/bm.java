package com.google.android.play.core.integrity;

import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.integrity.internal.AbstractRunnableC1933t;
import com.google.android.play.integrity.internal.af;

/* JADX INFO: loaded from: classes5.dex */
abstract class bm extends AbstractRunnableC1933t {

    /* JADX INFO: renamed from: f */
    final /* synthetic */ bn f327f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bm(bn bnVar, TaskCompletionSource taskCompletionSource) {
        super(taskCompletionSource);
        this.f327f = bnVar;
    }

    @Override // com.google.android.play.integrity.internal.AbstractRunnableC1933t
    /* JADX INFO: renamed from: a */
    public final void mo393a(Exception exc) {
        if (!(exc instanceof af)) {
            super.mo393a(exc);
        } else if (bn.m401l(this.f327f)) {
            super.mo393a(new StandardIntegrityException(-2, exc));
        } else {
            super.mo393a(new StandardIntegrityException(-9, exc));
        }
    }
}
