package com.android.billingclient.api;

import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class QueryProductDetailsResult {
    private final List<ProductDetails> productDetailsList;
    private final List<UnfetchedProduct> unfetchedProductList;

    public QueryProductDetailsResult(List<ProductDetails> list, List<UnfetchedProduct> list2) {
        this.productDetailsList = list;
        this.unfetchedProductList = list2;
    }

    public List<ProductDetails> getProductDetailsList() {
        return this.productDetailsList;
    }
}
