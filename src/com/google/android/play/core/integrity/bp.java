package com.google.android.play.core.integrity;

import android.content.Context;
import com.google.android.play.integrity.internal.C1932s;

/* JADX INFO: loaded from: classes5.dex */
public final class bp implements com.google.android.play.integrity.internal.ay {

    /* JADX INFO: renamed from: a */
    private final com.google.android.play.integrity.internal.bd f335a;

    /* JADX INFO: renamed from: b */
    private final com.google.android.play.integrity.internal.bd f336b;

    /* JADX INFO: renamed from: c */
    private final com.google.android.play.integrity.internal.bd f337c;

    public bp(com.google.android.play.integrity.internal.bd bdVar, com.google.android.play.integrity.internal.bd bdVar2, com.google.android.play.integrity.internal.bd bdVar3, com.google.android.play.integrity.internal.bd bdVar4) {
        this.f335a = bdVar;
        this.f336b = bdVar2;
        this.f337c = bdVar3;
    }

    @Override // com.google.android.play.integrity.internal.bd
    /* JADX INFO: renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo377a() {
        return new bn((Context) this.f335a.mo377a(), (C1932s) this.f336b.mo377a(), ((au) this.f337c).mo377a(), new C1911j());
    }
}
