package com.android.billingclient.api;

import android.app.Activity;
import android.content.Context;
import com.android.billingclient.api.PendingPurchasesParams;
import com.google.android.gms.internal.play_billing.zze;

/* JADX INFO: loaded from: classes.dex */
public abstract class BillingClient {

    public static final class Builder {
        private volatile PendingPurchasesParams zzb;
        private final Context zzc;
        private volatile PurchasesUpdatedListener zzd;
        private volatile boolean zzj;
        private volatile boolean zzk;

        /* synthetic */ Builder(Context context, zzo zzoVar) {
            this.zzc = context;
        }

        private final boolean zza() {
            try {
                return this.zzc.getPackageManager().getApplicationInfo(this.zzc.getPackageName(), 128).metaData.getBoolean("com.google.android.play.billingclient.enableBillingOverridesTesting", false);
            } catch (Exception e) {
                zze.zzm("BillingClient", "Unable to retrieve metadata value for enableBillingOverridesTesting.", e);
                return false;
            }
        }

        public BillingClient build() {
            if (this.zzc == null) {
                throw new IllegalArgumentException("Please provide a valid Context.");
            }
            if (this.zzd == null) {
                if (!this.zzj && !this.zzk) {
                    throw new IllegalArgumentException("Please provide a valid listener for purchases updates.");
                }
                Context context = this.zzc;
                return zza() ? new zzcc(null, context, null, null) : new BillingClientImpl(null, context, null, null);
            }
            if (this.zzb == null || !this.zzb.isEnabledForOneTimeProducts()) {
                throw new IllegalArgumentException("Pending purchases for one-time products must be supported.");
            }
            if (this.zzd == null) {
                PendingPurchasesParams pendingPurchasesParams = this.zzb;
                Context context2 = this.zzc;
                return zza() ? new zzcc(null, pendingPurchasesParams, context2, null, null, null) : new BillingClientImpl(null, pendingPurchasesParams, context2, null, null, null);
            }
            PendingPurchasesParams pendingPurchasesParams2 = this.zzb;
            Context context3 = this.zzc;
            PurchasesUpdatedListener purchasesUpdatedListener = this.zzd;
            return zza() ? new zzcc(null, pendingPurchasesParams2, context3, purchasesUpdatedListener, null, null, null) : new BillingClientImpl(null, pendingPurchasesParams2, context3, purchasesUpdatedListener, null, null, null);
        }

        public Builder enablePendingPurchases() {
            PendingPurchasesParams.Builder builderNewBuilder = PendingPurchasesParams.newBuilder();
            builderNewBuilder.enableOneTimeProducts();
            enablePendingPurchases(builderNewBuilder.build());
            return this;
        }

        public Builder enablePendingPurchases(PendingPurchasesParams pendingPurchasesParams) {
            this.zzb = pendingPurchasesParams;
            return this;
        }

        public Builder setListener(PurchasesUpdatedListener purchasesUpdatedListener) {
            this.zzd = purchasesUpdatedListener;
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
