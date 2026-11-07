package com.android.billingclient.api;

import android.content.Context;
import android.content.IntentFilter;

/* JADX INFO: loaded from: classes4.dex */
final class zzs {
    private final Context zza;
    private final PurchasesUpdatedListener zzb;
    private final zzch zze;
    private final zzr zzf = new zzr(this, true);
    private final zzr zzg = new zzr(this, false);
    private boolean zzh;

    public zzs(Context context, PurchasesUpdatedListener purchasesUpdatedListener, zzco zzcoVar, zzb zzbVar, UserChoiceBillingListener userChoiceBillingListener, zzch zzchVar) {
        this.zza = context;
        this.zzb = purchasesUpdatedListener;
        this.zze = zzchVar;
    }

    public static /* bridge */ /* synthetic */ zzb zza(zzs zzsVar) {
        zzsVar.getClass();
        return null;
    }

    public static /* bridge */ /* synthetic */ UserChoiceBillingListener zze(zzs zzsVar) {
        zzsVar.getClass();
        return null;
    }

    public final PurchasesUpdatedListener zzd() {
        return this.zzb;
    }

    public final void zzg(boolean z) {
        IntentFilter intentFilter = new IntentFilter("com.android.vending.billing.PURCHASES_UPDATED");
        IntentFilter intentFilter2 = new IntentFilter("com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED");
        intentFilter2.addAction("com.android.vending.billing.ALTERNATIVE_BILLING");
        this.zzh = z;
        zzr zzrVar = this.zzg;
        Context context = this.zza;
        zzrVar.zza(context, intentFilter2);
        boolean z2 = this.zzh;
        zzr zzrVar2 = this.zzf;
        if (z2) {
            zzrVar2.zzb(context, intentFilter, "com.google.android.finsky.permission.PLAY_BILLING_LIBRARY_BROADCAST");
        } else {
            zzrVar2.zza(context, intentFilter);
        }
    }
}
