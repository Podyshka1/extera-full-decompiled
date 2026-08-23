package com.android.billingclient.api;

import java.util.HashSet;
import java.util.List;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
public final class QueryProductDetailsParams {
    private final com.google.android.gms.internal.play_billing.zzco zza;

    public static class Builder {
        private com.google.android.gms.internal.play_billing.zzco zza;

        public /* synthetic */ Builder(zzcz zzczVar) {
        }

        public QueryProductDetailsParams build() {
            if (this.zza != null) {
                return new QueryProductDetailsParams(this, null);
            }
            f$$ExternalSyntheticBUOutline1.m178m("Product list must be set to a non empty list.");
            return null;
        }

        public Builder setProductList(List<Product> list) {
            if (list == null || list.isEmpty()) {
                f$$ExternalSyntheticBUOutline1.m178m("Product list cannot be empty.");
                return null;
            }
            HashSet hashSet = new HashSet();
            for (Product product : list) {
                if (!"play_pass_subs".equals(product.zzb())) {
                    hashSet.add(product.zzb());
                }
            }
            if (hashSet.size() <= 1) {
                this.zza = com.google.android.gms.internal.play_billing.zzco.zzk(list);
                return this;
            }
            f$$ExternalSyntheticBUOutline1.m178m("All products should be of the same product type.");
            return null;
        }
    }

    /* JADX INFO: loaded from: classes.dex */
    public static class Product {
        private final String zza;
        private final String zzb;

        public static class Builder {
            private String zza;
            private String zzb;

            public /* synthetic */ Builder(zzcz zzczVar) {
            }

            public Product build() {
                if ("first_party".equals(this.zzb)) {
                    f$$ExternalSyntheticBUOutline1.m178m("Serialized doc id must be provided for first party products.");
                    return null;
                }
                if (this.zza == null) {
                    f$$ExternalSyntheticBUOutline1.m178m("Product id must be provided.");
                    return null;
                }
                if (this.zzb != null) {
                    return new Product(this, null);
                }
                f$$ExternalSyntheticBUOutline1.m178m("Product type must be provided.");
                return null;
            }

            public Builder setProductId(String str) {
                this.zza = str;
                return this;
            }

            public Builder setProductType(String str) {
                this.zzb = str;
                return this;
            }
        }

        public /* synthetic */ Product(Builder builder, zzcz zzczVar) {
            this.zza = builder.zza;
            this.zzb = builder.zzb;
        }

        public static Builder newBuilder() {
            return new Builder(null);
        }

        public final String zza() {
            return this.zza;
        }

        public final String zzb() {
            return this.zzb;
        }
    }

    public /* synthetic */ QueryProductDetailsParams(Builder builder, zzcz zzczVar) {
        this.zza = builder.zza;
    }

    public static Builder newBuilder() {
        return new Builder(null);
    }

    public final com.google.android.gms.internal.play_billing.zzco zza() {
        return this.zza;
    }

    public final String zzb() {
        return ((Product) this.zza.get(0)).zzb();
    }
}
