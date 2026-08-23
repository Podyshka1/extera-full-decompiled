package com.android.billingclient.api;

import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
public final class QueryPurchasesParams {
    private final String zza;

    public static class Builder {
        private String zza;

        public /* synthetic */ Builder(zzdb zzdbVar) {
        }

        public QueryPurchasesParams build() {
            if (this.zza != null) {
                return new QueryPurchasesParams(this, null);
            }
            f$$ExternalSyntheticBUOutline1.m178m("Product type must be set");
            return null;
        }

        public Builder setProductType(String str) {
            this.zza = str;
            return this;
        }
    }

    public /* synthetic */ QueryPurchasesParams(Builder builder, zzdb zzdbVar) {
        this.zza = builder.zza;
    }

    public static Builder newBuilder() {
        return new Builder(null);
    }

    public final String zza() {
        return this.zza;
    }
}
