package com.google.android.play.core.integrity;

/* JADX INFO: loaded from: classes5.dex */
public final class au implements com.google.android.play.integrity.internal.ay {

    /* JADX INFO: renamed from: a */
    private final com.google.android.play.integrity.internal.bd f296a;

    /* JADX INFO: renamed from: b */
    private final com.google.android.play.integrity.internal.bd f297b;

    public au(com.google.android.play.integrity.internal.bd bdVar, com.google.android.play.integrity.internal.bd bdVar2) {
        this.f296a = bdVar;
        this.f297b = bdVar2;
    }

    @Override // com.google.android.play.integrity.internal.bd
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final at mo353a() {
        return new at(this.f296a, this.f297b);
    }
}
