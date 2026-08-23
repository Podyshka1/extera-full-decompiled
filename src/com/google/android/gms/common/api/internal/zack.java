package com.google.android.gms.common.api.internal;

import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zack implements Runnable {
    final /* synthetic */ com.google.android.gms.signin.internal.zak zaa;
    final /* synthetic */ zacm zab;

    public zack(zacm zacmVar, com.google.android.gms.signin.internal.zak zakVar) {
        this.zaa = zakVar;
        Objects.requireNonNull(zacmVar);
        this.zab = zacmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zab.zae(this.zaa);
    }
}
