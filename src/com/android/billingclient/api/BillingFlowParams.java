package com.android.billingclient.api;

import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import android.text.TextUtils;
import com.android.billingclient.api.BillingFlowParams;
import com.android.billingclient.api.ProductDetails;
import com.google.android.gms.internal.play_billing.zzbe;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Predicate;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
public class BillingFlowParams {
    private boolean zza;
    private String zzb;
    private String zzc;
    private SubscriptionUpdateParams zzd;
    private com.google.android.gms.internal.play_billing.zzco zze;
    private ArrayList zzf;
    private boolean zzg;

    public static class Builder {
        private String zza;
        private String zzb;
        private List zzc;
        private ArrayList zzd;
        private boolean zze;
        private SubscriptionUpdateParams.Builder zzf;

        public BillingFlowParams build() {
            ArrayList arrayList = this.zzd;
            boolean z = (arrayList == null || arrayList.isEmpty()) ? false : true;
            List list = this.zzc;
            boolean z2 = (list == null || list.isEmpty()) ? false : true;
            zzcf zzcfVar = null;
            if (!z && !z2) {
                f$$ExternalSyntheticBUOutline1.m178m("Details of the products must be provided.");
                return null;
            }
            if (z && z2) {
                f$$ExternalSyntheticBUOutline1.m178m("Set SkuDetails or ProductDetailsParams, not both.");
                return null;
            }
            if (!z) {
                this.zzc.forEach(new Consumer() { // from class: com.android.billingclient.api.zzce
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        if (((BillingFlowParams.ProductDetailsParams) obj) != null) {
                            return;
                        }
                        f$$ExternalSyntheticBUOutline1.m178m("ProductDetailsParams cannot be null.");
                    }
                });
            } else {
                if (this.zzd.contains(null)) {
                    f$$ExternalSyntheticBUOutline1.m178m("SKU cannot be null.");
                    return null;
                }
                if (this.zzd.size() > 1) {
                    MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(this.zzd.get(0));
                    throw null;
                }
            }
            BillingFlowParams billingFlowParams = new BillingFlowParams(zzcfVar);
            if (z) {
                MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(this.zzd.get(0));
                throw null;
            }
            billingFlowParams.zza = z2 && !((ProductDetailsParams) this.zzc.get(0)).zza().zza().isEmpty();
            billingFlowParams.zzb = this.zza;
            billingFlowParams.zzc = this.zzb;
            billingFlowParams.zzd = this.zzf.build();
            ArrayList arrayList2 = this.zzd;
            billingFlowParams.zzf = arrayList2 != null ? new ArrayList(arrayList2) : new ArrayList();
            billingFlowParams.zzg = this.zze;
            List list2 = this.zzc;
            billingFlowParams.zze = list2 != null ? com.google.android.gms.internal.play_billing.zzco.zzk(list2) : com.google.android.gms.internal.play_billing.zzco.zzl();
            return billingFlowParams;
        }

        public Builder setObfuscatedAccountId(String str) {
            this.zza = str;
            return this;
        }

        public Builder setObfuscatedProfileId(String str) {
            this.zzb = str;
            return this;
        }

        public Builder setProductDetailsParamsList(List<ProductDetailsParams> list) {
            this.zzc = new ArrayList(list);
            return this;
        }

        public Builder setSubscriptionUpdateParams(SubscriptionUpdateParams subscriptionUpdateParams) {
            this.zzf = SubscriptionUpdateParams.zzb(subscriptionUpdateParams);
            return this;
        }

        public /* synthetic */ Builder(zzcf zzcfVar) {
            SubscriptionUpdateParams.Builder builderNewBuilder = SubscriptionUpdateParams.newBuilder();
            SubscriptionUpdateParams.Builder.zza(builderNewBuilder);
            this.zzf = builderNewBuilder;
        }
    }

    public static final class ProductDetailsParams {
        private final ProductDetails zza;
        private final String zzb;

        public static class Builder {
            private ProductDetails zza;
            private String zzb;

            public /* synthetic */ Builder(zzcf zzcfVar) {
            }

            public ProductDetailsParams build() {
                zzbe.zzc(this.zza, "ProductDetails is required for constructing ProductDetailsParams.");
                if (this.zza.getSubscriptionOfferDetails() != null) {
                    zzbe.zzc(this.zzb, "offerToken is required for constructing ProductDetailsParams for subscriptions.");
                }
                return new ProductDetailsParams(this, null);
            }

            public Builder setOfferToken(String str) {
                if (TextUtils.isEmpty(str)) {
                    f$$ExternalSyntheticBUOutline1.m178m("offerToken can not be empty");
                    return null;
                }
                this.zzb = str;
                return this;
            }

            public Builder setProductDetails(ProductDetails productDetails) {
                this.zza = productDetails;
                if (productDetails.getOneTimePurchaseOfferDetails() != null) {
                    productDetails.getOneTimePurchaseOfferDetails().getClass();
                    ProductDetails.OneTimePurchaseOfferDetails oneTimePurchaseOfferDetails = productDetails.getOneTimePurchaseOfferDetails();
                    if (oneTimePurchaseOfferDetails.zzb() != null) {
                        this.zzb = oneTimePurchaseOfferDetails.zzb();
                    }
                }
                return this;
            }
        }

        public /* synthetic */ ProductDetailsParams(Builder builder, zzcf zzcfVar) {
            this.zza = builder.zza;
            this.zzb = builder.zzb;
        }

        public static Builder newBuilder() {
            return new Builder(null);
        }

        public final ProductDetails zza() {
            return this.zza;
        }

        public final String zzb() {
            return this.zzb;
        }
    }

    public static class SubscriptionUpdateParams {
        private String zza;
        private String zzb;
        private int zzc = 0;

        public static class Builder {
            private String zza;
            private String zzb;
            private boolean zzc;
            private int zzd = 0;

            public /* synthetic */ Builder(zzcf zzcfVar) {
            }

            public static /* synthetic */ Builder zza(Builder builder) {
                builder.zzc = true;
                return builder;
            }

            public SubscriptionUpdateParams build() {
                boolean z = true;
                zzcf zzcfVar = null;
                if (TextUtils.isEmpty(this.zza) && TextUtils.isEmpty(null)) {
                    z = false;
                }
                boolean zIsEmpty = TextUtils.isEmpty(this.zzb);
                if (z && !zIsEmpty) {
                    f$$ExternalSyntheticBUOutline1.m178m("Please provide Old SKU purchase information(token/id) or original external transaction id, not both.");
                    return null;
                }
                if (!this.zzc && !z && zIsEmpty) {
                    f$$ExternalSyntheticBUOutline1.m178m("Old SKU purchase information(token/id) or original external transaction id must be provided.");
                    return null;
                }
                SubscriptionUpdateParams subscriptionUpdateParams = new SubscriptionUpdateParams(zzcfVar);
                subscriptionUpdateParams.zza = this.zza;
                subscriptionUpdateParams.zzc = this.zzd;
                subscriptionUpdateParams.zzb = this.zzb;
                return subscriptionUpdateParams;
            }

            public Builder setOldPurchaseToken(String str) {
                this.zza = str;
                return this;
            }

            public Builder setOriginalExternalTransactionId(String str) {
                this.zzb = str;
                return this;
            }

            public Builder setSubscriptionReplacementMode(int i) {
                this.zzd = i;
                return this;
            }

            @Deprecated
            public final Builder zzb(String str) {
                this.zza = str;
                return this;
            }
        }

        public /* synthetic */ SubscriptionUpdateParams(zzcf zzcfVar) {
        }

        public static Builder newBuilder() {
            return new Builder(null);
        }

        public static /* bridge */ /* synthetic */ Builder zzb(SubscriptionUpdateParams subscriptionUpdateParams) {
            Builder builderNewBuilder = newBuilder();
            builderNewBuilder.zzb(subscriptionUpdateParams.zza);
            builderNewBuilder.setSubscriptionReplacementMode(subscriptionUpdateParams.zzc);
            builderNewBuilder.setOriginalExternalTransactionId(subscriptionUpdateParams.zzb);
            return builderNewBuilder;
        }

        public final int zza() {
            return this.zzc;
        }

        public final String zzc() {
            return this.zza;
        }

        public final String zzd() {
            return this.zzb;
        }
    }

    public /* synthetic */ BillingFlowParams(zzcf zzcfVar) {
    }

    public static Builder newBuilder() {
        return new Builder(null);
    }

    public final int zza() {
        return this.zzd.zza();
    }

    public final BillingResult zzb() {
        if (this.zze.isEmpty()) {
            return zzcj.zzl;
        }
        ProductDetailsParams productDetailsParams = (ProductDetailsParams) this.zze.get(0);
        for (int i = 1; i < this.zze.size(); i++) {
            ProductDetailsParams productDetailsParams2 = (ProductDetailsParams) this.zze.get(i);
            if (!productDetailsParams2.zza().getProductType().equals(productDetailsParams.zza().getProductType()) && !productDetailsParams2.zza().getProductType().equals("play_pass_subs")) {
                return zzcj.zza(5, "All products should have same ProductType.");
            }
        }
        String strZza = productDetailsParams.zza().zza();
        HashSet hashSet = new HashSet();
        HashSet<String> hashSet2 = new HashSet();
        com.google.android.gms.internal.play_billing.zzco zzcoVar = this.zze;
        int size = zzcoVar.size();
        for (int i2 = 0; i2 < size; i2++) {
            ProductDetailsParams productDetailsParams3 = (ProductDetailsParams) zzcoVar.get(i2);
            productDetailsParams3.zza().getProductType().equals("subs");
            if (hashSet.contains(productDetailsParams3.zza().getProductId())) {
                return zzcj.zza(5, String.format("ProductId can not be duplicated. Invalid product id: %s.", productDetailsParams3.zza().getProductId()));
            }
            hashSet.add(productDetailsParams3.zza().getProductId());
            if (!productDetailsParams.zza().getProductType().equals("play_pass_subs") && !productDetailsParams3.zza().getProductType().equals("play_pass_subs") && !strZza.equals(productDetailsParams3.zza().zza())) {
                return zzcj.zza(5, "All products must have the same package name.");
            }
        }
        for (String str : hashSet2) {
            if (hashSet.contains(str)) {
                return zzcj.zza(5, String.format("OldProductId must not be one of the products to be purchased. Invalid old product id: %s.", str));
            }
        }
        ProductDetails.OneTimePurchaseOfferDetails oneTimePurchaseOfferDetails = productDetailsParams.zza().getOneTimePurchaseOfferDetails();
        return (oneTimePurchaseOfferDetails == null || oneTimePurchaseOfferDetails.zza() == null) ? zzcj.zzl : zzcj.zza(5, "Both autoPayDetails and autoPayBalanceThreshold is required for constructing ProductDetailsParams for autopay.");
    }

    public final String zzc() {
        return this.zzb;
    }

    public final String zzd() {
        return this.zzc;
    }

    public final String zze() {
        return this.zzd.zzc();
    }

    public final String zzf() {
        return this.zzd.zzd();
    }

    public final ArrayList zzg() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.zzf);
        return arrayList;
    }

    public final List zzh() {
        return this.zze;
    }

    public final boolean zzp() {
        return this.zzg;
    }

    public final boolean zzq() {
        return (this.zzb == null && this.zzc == null && this.zzd.zzd() == null && this.zzd.zza() == 0 && !this.zze.stream().anyMatch(new Predicate() { // from class: com.android.billingclient.api.zzcd
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return false;
            }
        }) && !this.zza && !this.zzg) ? false : true;
    }
}
