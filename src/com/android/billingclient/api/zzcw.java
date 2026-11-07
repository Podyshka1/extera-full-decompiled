package com.android.billingclient.api;

import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class zzcw {
    private final List zza;
    private final BillingResult zzb;

    public zzcw(BillingResult billingResult, List list) {
        this.zza = list;
        this.zzb = billingResult;
    }

    public final BillingResult zza() {
        return this.zzb;
    }

    public final List zzb() {
        return this.zza;
    }
}
