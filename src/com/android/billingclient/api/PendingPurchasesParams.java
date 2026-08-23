package com.android.billingclient.api;

/* JADX INFO: loaded from: classes.dex */
public final class PendingPurchasesParams {
    private final boolean enableOneTimeProducts;
    private final boolean enablePrepaidPlans;

    public static final class Builder {
        private boolean enableOneTimeProducts;
        private boolean enablePrepaidPlans;

        private Builder() {
        }

        public PendingPurchasesParams build() {
            if (!this.enableOneTimeProducts) {
                throw new IllegalArgumentException("Pending purchases for one-time products must be supported.");
            }
            return new PendingPurchasesParams(true, this.enablePrepaidPlans);
        }

        public Builder enableOneTimeProducts() {
            this.enableOneTimeProducts = true;
            return this;
        }
    }

    private PendingPurchasesParams(boolean z, boolean z2) {
        this.enableOneTimeProducts = z;
        this.enablePrepaidPlans = z2;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    boolean isEnabledForOneTimeProducts() {
        return this.enableOneTimeProducts;
    }

    boolean isEnabledForPrepaidPlans() {
        return this.enablePrepaidPlans;
    }
}
