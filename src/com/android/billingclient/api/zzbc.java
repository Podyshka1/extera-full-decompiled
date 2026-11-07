package com.android.billingclient.api;

import com.google.android.gms.internal.play_billing.zzc;
import com.google.android.gms.internal.play_billing.zzp;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzbc implements BillingClientStateListener {
    final /* synthetic */ zzp zza;
    final /* synthetic */ BillingClientImpl zzb;

    public zzbc(BillingClientImpl billingClientImpl, zzp zzpVar) {
        this.zza = zzpVar;
        Objects.requireNonNull(billingClientImpl);
        this.zzb = billingClientImpl;
    }

    @Override // com.android.billingclient.api.BillingClientStateListener
    public final void onBillingServiceDisconnected() {
        zzc.zzm("BillingClient", "Reconnection attempt failed.");
        try {
            this.zza.zzb(zzcj.zzj);
        } catch (Throwable th) {
            zzc.zzo("BillingClient", "Exception setting completer.", th);
        }
        BillingClientImpl billingClientImpl = this.zzb;
        if (billingClientImpl.zzG != null) {
            billingClientImpl.zzag(new Runnable() { // from class: com.android.billingclient.api.zzba
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        this.zza.zzb.zzG.onBillingServiceDisconnected();
                    } catch (Throwable th2) {
                        zzc.zzo("BillingClient", "Exception calling onBillingServiceDisconnected.", th2);
                    }
                }
            });
        }
    }

    @Override // com.android.billingclient.api.BillingClientStateListener
    public final void onBillingSetupFinished(final BillingResult billingResult) {
        zzc.zzm("BillingClient", "Reconnection finished with result: " + billingResult.getResponseCode());
        try {
            this.zza.zzb(billingResult);
        } catch (Throwable th) {
            zzc.zzo("BillingClient", "Exception setting completer.", th);
        }
        BillingClientImpl billingClientImpl = this.zzb;
        if (billingClientImpl.zzG != null) {
            billingClientImpl.zzag(new Runnable() { // from class: com.android.billingclient.api.zzbb
                @Override // java.lang.Runnable
                public final void run() {
                    zzbc zzbcVar = this.zza;
                    try {
                        zzbcVar.zzb.zzG.onBillingSetupFinished(billingResult);
                    } catch (Throwable th2) {
                        zzc.zzo("BillingClient", "Exception calling onBillingSetupFinished.", th2);
                    }
                }
            });
        }
    }
}
