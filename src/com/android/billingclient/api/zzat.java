package com.android.billingclient.api;

import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes4.dex */
final class zzat implements Callable {
    final /* synthetic */ String zza;
    final /* synthetic */ PurchasesResponseListener zzb;
    final /* synthetic */ BillingClientImpl zzc;

    zzat(BillingClientImpl billingClientImpl, String str, PurchasesResponseListener purchasesResponseListener) {
        this.zza = str;
        this.zzb = purchasesResponseListener;
        this.zzc = billingClientImpl;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() {
        zzcv zzcvVarZzaR = this.zzc.zzaR(this.zza, 9);
        if (zzcvVarZzaR.zzb() != null) {
            this.zzb.onQueryPurchasesResponse(zzcvVarZzaR.zza(), zzcvVarZzaR.zzb());
            return null;
        }
        this.zzb.onQueryPurchasesResponse(zzcvVarZzaR.zza(), com.google.android.gms.internal.play_billing.zzco.zzl());
        return null;
    }
}
