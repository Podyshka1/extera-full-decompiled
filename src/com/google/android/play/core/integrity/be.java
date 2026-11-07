package com.google.android.play.core.integrity;

import android.content.Context;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.integrity.internal.AbstractRunnableC1933t;
import com.google.android.play.integrity.internal.ai;

/* JADX INFO: loaded from: classes5.dex */
final class be extends AbstractRunnableC1933t {

    /* JADX INFO: renamed from: a */
    final /* synthetic */ Context f309a;

    /* JADX INFO: renamed from: b */
    final /* synthetic */ bn f310b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public be(bn bnVar, TaskCompletionSource taskCompletionSource, Context context) {
        super(taskCompletionSource);
        this.f309a = context;
        this.f310b = bnVar;
    }

    @Override // com.google.android.play.integrity.internal.AbstractRunnableC1933t
    /* JADX INFO: renamed from: b */
    public final void mo388b() {
        this.f310b.f331d.trySetResult(Integer.valueOf(ai.m438a(this.f309a)));
    }
}
