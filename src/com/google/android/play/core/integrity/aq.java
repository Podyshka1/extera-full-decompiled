package com.google.android.play.core.integrity;

import android.content.Context;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.integrity.internal.AbstractRunnableC1717r;

/* JADX INFO: loaded from: classes5.dex */
final class aq extends AbstractRunnableC1717r {

    /* JADX INFO: renamed from: a */
    final /* synthetic */ Context f329a;

    /* JADX INFO: renamed from: b */
    final /* synthetic */ ax f330b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public aq(ax axVar, TaskCompletionSource taskCompletionSource, Context context) {
        super(taskCompletionSource);
        this.f330b = axVar;
        this.f329a = context;
    }

    @Override // com.google.android.play.integrity.internal.AbstractRunnableC1717r
    /* JADX INFO: renamed from: b */
    public final void mo353b() {
        this.f330b.f347d.trySetResult(Boolean.valueOf(com.google.android.play.integrity.internal.ag.m416a(this.f329a)));
    }
}
