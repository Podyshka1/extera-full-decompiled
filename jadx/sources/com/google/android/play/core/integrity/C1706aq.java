package com.google.android.play.core.integrity;

import android.content.Context;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.integrity.internal.AbstractC1756ag;
import com.google.android.play.integrity.internal.AbstractRunnableC1778r;

/* JADX INFO: renamed from: com.google.android.play.core.integrity.aq */
/* JADX INFO: loaded from: classes5.dex */
final class C1706aq extends AbstractRunnableC1778r {

    /* JADX INFO: renamed from: a */
    final /* synthetic */ Context f476a;

    /* JADX INFO: renamed from: b */
    final /* synthetic */ C1713ax f477b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C1706aq(C1713ax c1713ax, TaskCompletionSource taskCompletionSource, Context context) {
        super(taskCompletionSource);
        this.f477b = c1713ax;
        this.f476a = context;
    }

    @Override // com.google.android.play.integrity.internal.AbstractRunnableC1778r
    /* JADX INFO: renamed from: b */
    protected final void mo389b() {
        this.f477b.f494d.trySetResult(Boolean.valueOf(AbstractC1756ag.m452a(this.f476a)));
    }
}
