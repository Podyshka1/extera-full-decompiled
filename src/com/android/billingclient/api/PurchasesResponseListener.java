package com.android.billingclient.api;

import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public interface PurchasesResponseListener {
    void onQueryPurchasesResponse(BillingResult billingResult, List<Purchase> list);
}
