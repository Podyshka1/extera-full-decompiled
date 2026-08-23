package com.google.android.datatransport;

/* JADX INFO: loaded from: classes4.dex */
final class AutoValue_ProductData extends ProductData {
    private final Integer productId;

    AutoValue_ProductData(Integer num) {
        this.productId = num;
    }

    @Override // com.google.android.datatransport.ProductData
    public Integer getProductId() {
        return this.productId;
    }

    public String toString() {
        return "ProductData{productId=" + this.productId + "}";
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ProductData)) {
            return false;
        }
        Integer num = this.productId;
        Integer productId = ((ProductData) obj).getProductId();
        return num == null ? productId == null : num.equals(productId);
    }

    public int hashCode() {
        Integer num = this.productId;
        return (num == null ? 0 : num.hashCode()) ^ 1000003;
    }
}
