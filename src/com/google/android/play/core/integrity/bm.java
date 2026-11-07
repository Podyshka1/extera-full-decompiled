package com.google.android.play.core.integrity;

import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.integrity.internal.AbstractRunnableC1812t;
import com.google.android.play.integrity.internal.af;

/* JADX INFO: loaded from: classes5.dex */
abstract class bm extends AbstractRunnableC1812t {

    /* JADX INFO: renamed from: f */
    final /* synthetic */ bn f326f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bm(bn bnVar, TaskCompletionSource taskCompletionSource) {
        super(taskCompletionSource);
        this.f326f = bnVar;
    }

    @Override // com.google.android.play.integrity.internal.AbstractRunnableC1812t
    /* JADX INFO: renamed from: a */
    public final void mo369a(Exception exc) {
        if (!(exc instanceof af)) {
            super.mo369a(exc);
        } else if (bn.m377l(this.f326f)) {
            super.mo369a(new StandardIntegrityException(-2, exc));
        } else {
            super.mo369a(new StandardIntegrityException(-9, exc));
        }
    }
}
