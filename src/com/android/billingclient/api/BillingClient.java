package com.android.billingclient.api;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.internal.play_billing.zzc;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes.dex */
public abstract class BillingClient {

    public static final class Builder {
        volatile boolean zza;
        private volatile PendingPurchasesParams zzd;
        private final Context zze;
        private volatile PurchasesUpdatedListener zzf;
        private volatile boolean zzl;
        private volatile boolean zzm;

        public /* synthetic */ Builder(Context context, zzt zztVar) {
            this.zze = context;
        }

        private final boolean zza() {
            try {
                Context context = this.zze;
                return context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.getBoolean("com.google.android.play.billingclient.enableBillingOverridesTesting", false);
            } catch (Exception e) {
                zzc.zzo("BillingClient", "Unable to retrieve metadata value for enableBillingOverridesTesting.", e);
                return false;
            }
        }

        public BillingClient build() {
            Context context = this.zze;
            if (context == null) {
                f$$ExternalSyntheticBUOutline1.m212m("Please provide a valid Context.");
                return null;
            }
            if (this.zzf == null) {
                if (this.zzl || this.zzm) {
                    return zza() ? new zzce(null, context, null, null, this) : new BillingClientImpl(null, context, null, null, this);
                }
                f$$ExternalSyntheticBUOutline1.m212m("Please provide a valid listener for purchases updates.");
                return null;
            }
            if (this.zzd == null || !this.zzd.isEnabledForOneTimeProducts()) {
                f$$ExternalSyntheticBUOutline1.m212m("Pending purchases for one-time products must be supported.");
                return null;
            }
            if (this.zzf == null) {
                PendingPurchasesParams pendingPurchasesParams = this.zzd;
                return zza() ? new zzce(null, pendingPurchasesParams, context, null, null, null, this) : new BillingClientImpl(null, pendingPurchasesParams, context, null, null, null, this);
            }
            PendingPurchasesParams pendingPurchasesParams2 = this.zzd;
            PurchasesUpdatedListener purchasesUpdatedListener = this.zzf;
            return zza() ? new zzce(null, pendingPurchasesParams2, context, purchasesUpdatedListener, null, null, null, this) : new BillingClientImpl(null, pendingPurchasesParams2, context, purchasesUpdatedListener, null, null, null, this);
        }

        public Builder enablePendingPurchases(PendingPurchasesParams pendingPurchasesParams) {
            this.zzd = pendingPurchasesParams;
            return this;
        }

        public Builder setListener(PurchasesUpdatedListener purchasesUpdatedListener) {
            this.zzf = purchasesUpdatedListener;
            return this;
        }
    }

    public static Builder newBuilder(Context context) {
        return new Builder(context, null);
    }

    public abstract void consumeAsync(ConsumeParams consumeParams, ConsumeResponseListener consumeResponseListener);

    public abstract boolean isReady();

    public abstract BillingResult launchBillingFlow(Activity activity, BillingFlowParams billingFlowParams);

    public abstract void queryProductDetailsAsync(QueryProductDetailsParams queryProductDetailsParams, ProductDetailsResponseListener productDetailsResponseListener);

    public abstract void queryPurchasesAsync(QueryPurchasesParams queryPurchasesParams, PurchasesResponseListener purchasesResponseListener);

    public abstract void startConnection(BillingClientStateListener billingClientStateListener);
}
