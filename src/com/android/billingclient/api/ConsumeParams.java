package com.android.billingclient.api;

import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
public final class ConsumeParams {
    private String zza;

    public static final class Builder {
        private String zza;

        public /* synthetic */ Builder(zzck zzckVar) {
        }

        public ConsumeParams build() {
            String str = this.zza;
            zzck zzckVar = null;
            if (str == null) {
                f$$ExternalSyntheticBUOutline1.m215m("Purchase token must be set");
                return null;
            }
            ConsumeParams consumeParams = new ConsumeParams(zzckVar);
            consumeParams.zza = str;
            return consumeParams;
        }

        public Builder setPurchaseToken(String str) {
            this.zza = str;
            return this;
        }
    }

    public /* synthetic */ ConsumeParams(zzck zzckVar) {
    }

    public static Builder newBuilder() {
        return new Builder(null);
    }

    public String getPurchaseToken() {
        return this.zza;
    }
}
