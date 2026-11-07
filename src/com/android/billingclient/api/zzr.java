package com.android.billingclient.api;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Bundle;
import com.android.billingclient.api.BillingResult;
import com.google.android.gms.internal.play_billing.zzc;
import com.google.android.gms.internal.play_billing.zzeu;
import com.google.android.gms.internal.play_billing.zzhx;
import com.google.android.gms.internal.play_billing.zzie;
import com.google.android.gms.internal.play_billing.zzil;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzr extends BroadcastReceiver {
    final /* synthetic */ zzs zza;
    private boolean zzb;
    private final boolean zzc;

    public zzr(zzs zzsVar, boolean z) {
        Objects.requireNonNull(zzsVar);
        this.zza = zzsVar;
        this.zzc = z;
    }

    private final void zzd(Bundle bundle, BillingResult billingResult, int i, zzil zzilVar, long j, boolean z) {
        try {
            byte[] byteArray = bundle.getByteArray("FAILURE_LOGGING_PAYLOAD");
            zzs zzsVar = this.zza;
            if (byteArray != null) {
                zzsVar.zze.zzd(zzhx.zzA(bundle.getByteArray("FAILURE_LOGGING_PAYLOAD"), zzeu.zza()), j, z);
            } else {
                zzsVar.zze.zzd(zzcg.zzb(zzie.BILLING_RESULT_RECEIVED_FROM_PHONESKY, i, billingResult, null, zzilVar), j, z);
            }
        } catch (Throwable unused) {
            zzc.zzn("BillingBroadcastManager", "Failed parsing Api failure.");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x003a  */
    @Override // android.content.BroadcastReceiver
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onReceive(Context context, Intent intent) {
        zzil zzilVar;
        int i;
        int i2;
        BillingResult billingResultZzh;
        int iIntValue;
        String action = intent.getAction();
        int iHashCode = action.hashCode();
        if (iHashCode != -1484087650) {
            if (iHashCode != -337612916) {
                zzilVar = (iHashCode == 345207161 && action.equals("com.android.vending.billing.ALTERNATIVE_BILLING")) ? zzil.ALTERNATIVE_BILLING_ACTION : zzil.BROADCAST_ACTION_UNSPECIFIED;
            } else if (action.equals("com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED")) {
                zzilVar = zzil.LOCAL_PURCHASES_UPDATED_ACTION;
            }
        } else if (action.equals("com.android.vending.billing.PURCHASES_UPDATED")) {
            zzilVar = zzil.PURCHASES_UPDATED_ACTION;
        }
        zzil zzilVar2 = zzilVar;
        zzil zzilVar3 = zzil.LOCAL_PURCHASES_UPDATED_ACTION;
        if (zzilVar2.equals(zzilVar3) || zzilVar2.equals(zzil.ALTERNATIVE_BILLING_ACTION)) {
            i = 2;
            i2 = 2;
        } else {
            i2 = zzilVar2.equals(zzil.PURCHASES_UPDATED_ACTION) ? 32 : 1;
            i = 2;
        }
        Bundle extras = intent.getExtras();
        if (extras == null) {
            zzc.zzn("BillingBroadcastManager", "Bundle is null.");
            zzs zzsVar = this.zza;
            zzch zzchVar = zzsVar.zze;
            zzie zzieVar = zzie.NULL_BUNDLE_IN_BROADCAST_RECEIVER;
            BillingResult billingResult = zzcj.zzh;
            zzchVar.zza(zzcg.zzb(zzieVar, i2, billingResult, null, zzilVar2));
            if (zzsVar.zzb != null) {
                zzsVar.zzb.onPurchasesUpdated(billingResult, null);
                return;
            }
            return;
        }
        if (i2 == i) {
            int i3 = zzc.zza;
            BillingResult.Builder builderNewBuilder = BillingResult.newBuilder();
            builderNewBuilder.setResponseCode(zzc.zzb(intent.getExtras(), "BillingBroadcastManager"));
            Bundle extras2 = intent.getExtras();
            if (extras2 == null) {
                zzc.zzn("BillingBroadcastManager", "Unexpected null bundle received!");
            } else {
                Object obj = extras2.get("SUB_RESPONSE_CODE");
                if (obj == null) {
                    zzc.zzm("BillingBroadcastManager", "getLaunchBillingFlowSubResponseCodeFromBundle() got null response code, assuming OK");
                } else if (obj instanceof Integer) {
                    iIntValue = ((Integer) obj).intValue();
                    builderNewBuilder.setOnPurchasesUpdatedSubResponseCode(iIntValue);
                    builderNewBuilder.setDebugMessage(zzc.zzj(intent.getExtras(), "BillingBroadcastManager"));
                    billingResultZzh = builderNewBuilder.build();
                } else {
                    zzc.zzn("BillingBroadcastManager", "Unexpected type for bundle sub response code: ".concat(obj.getClass().getName()));
                }
            }
            iIntValue = 0;
            builderNewBuilder.setOnPurchasesUpdatedSubResponseCode(iIntValue);
            builderNewBuilder.setDebugMessage(zzc.zzj(intent.getExtras(), "BillingBroadcastManager"));
            billingResultZzh = builderNewBuilder.build();
        } else {
            billingResultZzh = zzc.zzh(intent, "BillingBroadcastManager");
        }
        long j = extras.getLong("billingClientTransactionId", 0L);
        boolean z = extras.getBoolean("wasServiceAutoReconnected", false);
        if (zzilVar2.equals(zzil.PURCHASES_UPDATED_ACTION) || zzilVar2.equals(zzilVar3)) {
            BillingResult billingResult2 = billingResultZzh;
            List<Purchase> listZzl = zzc.zzl(extras);
            if (billingResult2.getResponseCode() == 0) {
                this.zza.zze.zzh(zzcg.zzc(i2, zzilVar2), j, z);
            } else {
                zzd(extras, billingResult2, i2, zzilVar2, j, z);
            }
            this.zza.zzb.onPurchasesUpdated(billingResult2, listZzl);
            return;
        }
        if (zzilVar2.equals(zzil.ALTERNATIVE_BILLING_ACTION)) {
            if (billingResultZzh.getResponseCode() != 0) {
                BillingResult billingResult3 = billingResultZzh;
                zzd(extras, billingResult3, i2, zzilVar2, j, z);
                this.zza.zzb.onPurchasesUpdated(billingResult3, com.google.android.gms.internal.play_billing.zzbt.zzk());
                return;
            }
            zzs zzsVar2 = this.zza;
            zzs.zza(zzsVar2);
            zzs.zze(zzsVar2);
            zzc.zzn("BillingBroadcastManager", "AlternativeBillingListener and UserChoiceBillingListener is null.");
            zzs zzsVar3 = this.zza;
            zzch zzchVar2 = zzsVar3.zze;
            zzie zzieVar2 = zzie.MISSING_USER_CHOICE_BILLING_LISTENER;
            BillingResult billingResult4 = zzcj.zzh;
            zzchVar2.zzd(zzcg.zzb(zzieVar2, i2, billingResult4, null, zzilVar2), j, z);
            zzsVar3.zzb.onPurchasesUpdated(billingResult4, com.google.android.gms.internal.play_billing.zzbt.zzk());
        }
    }

    public final synchronized void zza(Context context, IntentFilter intentFilter) {
        try {
            if (this.zzb) {
                return;
            }
            if (Build.VERSION.SDK_INT >= 33) {
                context.registerReceiver(this, intentFilter, true != this.zzc ? 4 : 2);
            } else {
                context.registerReceiver(this, intentFilter);
            }
            this.zzb = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void zzb(Context context, IntentFilter intentFilter, String str) {
        zzr zzrVar;
        try {
            try {
                if (this.zzb) {
                    return;
                }
                if (Build.VERSION.SDK_INT >= 33) {
                    zzrVar = this;
                    context.registerReceiver(zzrVar, intentFilter, "com.google.android.finsky.permission.PLAY_BILLING_LIBRARY_BROADCAST", null, true != this.zzc ? 4 : 2);
                } else {
                    zzrVar = this;
                    context.registerReceiver(zzrVar, intentFilter, "com.google.android.finsky.permission.PLAY_BILLING_LIBRARY_BROADCAST", null);
                }
                zzrVar.zzb = true;
                return;
            } catch (Throwable th) {
                th = th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        throw th;
    }
}
