package com.google.android.play.core.integrity;

import android.content.Context;
import com.google.android.play.integrity.internal.C1811s;

/* JADX INFO: loaded from: classes5.dex */
public final class bp implements com.google.android.play.integrity.internal.ay {

    /* JADX INFO: renamed from: a */
    private final com.google.android.play.integrity.internal.bd f334a;

    /* JADX INFO: renamed from: b */
    private final com.google.android.play.integrity.internal.bd f335b;

    /* JADX INFO: renamed from: c */
    private final com.google.android.play.integrity.internal.bd f336c;

    public bp(com.google.android.play.integrity.internal.bd bdVar, com.google.android.play.integrity.internal.bd bdVar2, com.google.android.play.integrity.internal.bd bdVar3, com.google.android.play.integrity.internal.bd bdVar4) {
        this.f334a = bdVar;
        this.f335b = bdVar2;
        this.f336c = bdVar3;
    }

    @Override // com.google.android.play.integrity.internal.bd
    /* JADX INFO: renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo353a() {
        return new bn((Context) this.f334a.mo353a(), (C1811s) this.f335b.mo353a(), ((au) this.f336c).mo353a(), new C1790j());
    }
}
