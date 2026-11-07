package com.android.billingclient.api;

import com.google.android.gms.internal.play_billing.zzbw;
import com.google.android.gms.internal.play_billing.zzhx;
import com.google.android.gms.internal.play_billing.zzib;
import com.google.android.gms.internal.play_billing.zzij;
import com.google.android.gms.internal.play_billing.zzil;
import com.google.android.gms.internal.play_billing.zzjo;
import com.google.android.gms.internal.play_billing.zzjs;

/* JADX INFO: loaded from: classes.dex */
interface zzch {
    public static final /* synthetic */ int $r8$clinit = 0;

    static {
        zzbw.zzc("com.android.vending.billing.PURCHASES_UPDATED", zzil.PURCHASES_UPDATED_ACTION, "com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED", zzil.LOCAL_PURCHASES_UPDATED_ACTION, "com.android.vending.billing.ALTERNATIVE_BILLING", zzil.ALTERNATIVE_BILLING_ACTION);
    }

    void zza(zzhx zzhxVar);

    void zzb(zzhx zzhxVar, int i);

    void zzc(zzhx zzhxVar, int i, long j);

    void zzd(zzhx zzhxVar, long j, boolean z);

    void zze(zzhx zzhxVar, int i, long j, boolean z);

    void zzf(zzib zzibVar);

    void zzg(zzib zzibVar, int i);

    void zzh(zzib zzibVar, long j, boolean z);

    void zzi(zzij zzijVar);

    void zzj(zzjo zzjoVar);

    void zzk(zzjs zzjsVar);
}
