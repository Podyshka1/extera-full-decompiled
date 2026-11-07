package com.google.android.play.core.integrity;

import android.content.Context;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.integrity.internal.AbstractRunnableC1812t;
import com.google.android.play.integrity.internal.ai;

/* JADX INFO: loaded from: classes5.dex */
final class be extends AbstractRunnableC1812t {

    /* JADX INFO: renamed from: a */
    final /* synthetic */ Context f308a;

    /* JADX INFO: renamed from: b */
    final /* synthetic */ bn f309b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public be(bn bnVar, TaskCompletionSource taskCompletionSource, Context context) {
        super(taskCompletionSource);
        this.f308a = context;
        this.f309b = bnVar;
    }

    @Override // com.google.android.play.integrity.internal.AbstractRunnableC1812t
    /* JADX INFO: renamed from: b */
    public final void mo364b() {
        this.f309b.f330d.trySetResult(Integer.valueOf(ai.m414a(this.f308a)));
    }
}
