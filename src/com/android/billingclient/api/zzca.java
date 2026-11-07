package com.android.billingclient.api;

import androidx.core.util.Consumer;
import com.google.android.gms.internal.play_billing.zzc;
import com.google.android.gms.internal.play_billing.zzie;
import java.util.Objects;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes4.dex */
final class zzca implements com.google.android.gms.internal.play_billing.zzcs {
    final /* synthetic */ Consumer zza;
    final /* synthetic */ Runnable zzb;
    final /* synthetic */ zzce zzc;
    final /* synthetic */ int zzd;

    public zzca(zzce zzceVar, int i, Consumer consumer, Runnable runnable) {
        this.zzd = i;
        this.zza = consumer;
        this.zzb = runnable;
        Objects.requireNonNull(zzceVar);
        this.zzc = zzceVar;
    }

    @Override // com.google.android.gms.internal.play_billing.zzcs
    public final void zza(Throwable th) {
        boolean z = th instanceof TimeoutException;
        zzce zzceVar = this.zzc;
        if (z) {
            zzceVar.zzaF(zzie.BILLING_OVERRIDE_SERVICE_CALL_TIMEOUT, 28, zzcj.zzF);
            zzc.zzo("BillingClientTesting", "Asynchronous call to Billing Override Service timed out.", th);
        } else {
            zzceVar.zzaF(zzie.BILLING_OVERRIDE_SERVICE_CALL_EXCEPTION, 28, zzcj.zzF);
            zzc.zzo("BillingClientTesting", "An error occurred while retrieving billing override.", th);
        }
        this.zzb.run();
    }

    @Override // com.google.android.gms.internal.play_billing.zzcs
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        Integer num = (Integer) obj;
        int iIntValue = num.intValue();
        zzce zzceVar = this.zzc;
        if (!zzce.zzaC(iIntValue)) {
            this.zzb.run();
        } else {
            this.zza.accept(zzceVar.zzaD(this.zzd, num.intValue()));
        }
    }
}
