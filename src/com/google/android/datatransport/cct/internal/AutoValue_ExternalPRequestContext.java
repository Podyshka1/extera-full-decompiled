package com.google.android.datatransport.cct.internal;

import com.google.android.datatransport.cct.internal.ExternalPRequestContext;

/* JADX INFO: loaded from: classes4.dex */
final class AutoValue_ExternalPRequestContext extends ExternalPRequestContext {
    private final Integer originAssociatedProductId;

    private AutoValue_ExternalPRequestContext(Integer num) {
        this.originAssociatedProductId = num;
    }

    @Override // com.google.android.datatransport.cct.internal.ExternalPRequestContext
    public Integer getOriginAssociatedProductId() {
        return this.originAssociatedProductId;
    }

    public String toString() {
        return "ExternalPRequestContext{originAssociatedProductId=" + this.originAssociatedProductId + "}";
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ExternalPRequestContext)) {
            return false;
        }
        ExternalPRequestContext externalPRequestContext = (ExternalPRequestContext) obj;
        Integer num = this.originAssociatedProductId;
        return num == null ? externalPRequestContext.getOriginAssociatedProductId() == null : num.equals(externalPRequestContext.getOriginAssociatedProductId());
    }

    public int hashCode() {
        Integer num = this.originAssociatedProductId;
        return (num == null ? 0 : num.hashCode()) ^ 1000003;
    }

    public static final class Builder extends ExternalPRequestContext.Builder {
        private Integer originAssociatedProductId;

        @Override // com.google.android.datatransport.cct.internal.ExternalPRequestContext.Builder
        public ExternalPRequestContext.Builder setOriginAssociatedProductId(Integer num) {
            this.originAssociatedProductId = num;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.ExternalPRequestContext.Builder
        public ExternalPRequestContext build() {
            return new AutoValue_ExternalPRequestContext(this.originAssociatedProductId);
        }
    }
}
