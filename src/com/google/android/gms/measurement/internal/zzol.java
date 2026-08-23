package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
abstract class zzol extends zzje implements zzjg {
    protected final zzpg zzg;

    zzol(zzpg zzpgVar) {
        super(zzpgVar.zzag());
        Preconditions.checkNotNull(zzpgVar);
        this.zzg = zzpgVar;
    }
}
