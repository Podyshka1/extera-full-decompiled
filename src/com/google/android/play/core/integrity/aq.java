package com.google.android.play.core.integrity;

import android.content.Context;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.integrity.internal.AbstractRunnableC1663r;

/* JADX INFO: loaded from: classes5.dex */
final class aq extends AbstractRunnableC1663r {

    /* JADX INFO: renamed from: a */
    final /* synthetic */ Context f270a;

    /* JADX INFO: renamed from: b */
    final /* synthetic */ ax f271b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    aq(ax axVar, TaskCompletionSource taskCompletionSource, Context context) {
        super(taskCompletionSource);
        this.f271b = axVar;
        this.f270a = context;
    }

    @Override // com.google.android.play.integrity.internal.AbstractRunnableC1663r
    /* JADX INFO: renamed from: b */
    protected final void mo294b() {
        this.f271b.f288d.trySetResult(Boolean.valueOf(com.google.android.play.integrity.internal.ag.m357a(this.f270a)));
    }
}
