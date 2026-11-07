package com.android.billingclient.api;

import android.text.TextUtils;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.android.gms.internal.play_billing.zzc;
import com.google.android.gms.internal.play_billing.zzie;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes4.dex */
final class zzaw implements Callable {
    final /* synthetic */ PurchasesResponseListener zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ BillingClientImpl zzc;

    public zzaw(BillingClientImpl billingClientImpl, PurchasesResponseListener purchasesResponseListener, String str, boolean z) {
        this.zza = purchasesResponseListener;
        this.zzb = str;
        Objects.requireNonNull(billingClientImpl);
        this.zzc = billingClientImpl;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() {
        BillingClientImpl billingClientImpl = this.zzc;
        if (!billingClientImpl.zzaX(NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS)) {
            zzie zzieVar = zzie.SERVICE_CONNECTION_NOT_READY;
            BillingResult billingResult = zzcj.zzj;
            billingClientImpl.zzbd(zzieVar, 9, billingResult);
            this.zza.onQueryPurchasesResponse(billingResult, com.google.android.gms.internal.play_billing.zzbt.zzk());
            return null;
        }
        String str = this.zzb;
        if (TextUtils.isEmpty(str)) {
            zzc.zzn("BillingClient", "Please provide a valid product type.");
            zzie zzieVar2 = zzie.EMPTY_PRODUCT_TYPE;
            BillingResult billingResult2 = zzcj.zze;
            billingClientImpl.zzbd(zzieVar2, 9, billingResult2);
            this.zza.onQueryPurchasesResponse(billingResult2, com.google.android.gms.internal.play_billing.zzbt.zzk());
            return null;
        }
        zzcw zzcwVarZzbb = billingClientImpl.zzbb(str, false, 9);
        List listZzb = zzcwVarZzbb.zzb();
        PurchasesResponseListener purchasesResponseListener = this.zza;
        if (listZzb != null) {
            purchasesResponseListener.onQueryPurchasesResponse(zzcwVarZzbb.zza(), zzcwVarZzbb.zzb());
            return null;
        }
        purchasesResponseListener.onQueryPurchasesResponse(zzcwVarZzbb.zza(), com.google.android.gms.internal.play_billing.zzbt.zzk());
        return null;
    }
}
