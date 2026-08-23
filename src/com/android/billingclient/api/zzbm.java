package com.android.billingclient.api;

import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
final class zzbm implements BillingClientStateListener, ConsumeResponseListener, PurchasesResponseListener, PurchasesUpdatedListener {
    private final long zza;

    public static native void nativeOnAcknowledgePurchaseResponse(int i, String str, long j);

    public static native void nativeOnBillingServiceDisconnected();

    public static native void nativeOnBillingSetupFinished(int i, String str, long j);

    public static native void nativeOnConsumePurchaseResponse(int i, String str, String str2, long j);

    public static native void nativeOnPriceChangeConfirmationResult(int i, String str, long j);

    public static native void nativeOnPurchaseHistoryResponse(int i, String str, PurchaseHistoryRecord[] purchaseHistoryRecordArr, long j);

    public static native void nativeOnPurchasesUpdated(int i, String str, Purchase[] purchaseArr);

    public static native void nativeOnQueryPurchasesResponse(int i, String str, Purchase[] purchaseArr, long j);

    public static native void nativeOnSkuDetailsResponse(int i, String str, SkuDetails[] skuDetailsArr, long j);

    @Override // com.android.billingclient.api.BillingClientStateListener
    public final void onBillingServiceDisconnected() {
        nativeOnBillingServiceDisconnected();
    }

    @Override // com.android.billingclient.api.BillingClientStateListener
    public final void onBillingSetupFinished(BillingResult billingResult) {
        nativeOnBillingSetupFinished(billingResult.getResponseCode(), billingResult.getDebugMessage(), this.zza);
    }

    @Override // com.android.billingclient.api.ConsumeResponseListener
    public final void onConsumeResponse(BillingResult billingResult, String str) {
        nativeOnConsumePurchaseResponse(billingResult.getResponseCode(), billingResult.getDebugMessage(), str, this.zza);
    }

    @Override // com.android.billingclient.api.PurchasesUpdatedListener
    public final void onPurchasesUpdated(BillingResult billingResult, List<Purchase> list) {
        if (list == null) {
            list = Collections.EMPTY_LIST;
        }
        nativeOnPurchasesUpdated(billingResult.getResponseCode(), billingResult.getDebugMessage(), (Purchase[]) list.toArray(new Purchase[list.size()]));
    }

    @Override // com.android.billingclient.api.PurchasesResponseListener
    public final void onQueryPurchasesResponse(BillingResult billingResult, List<Purchase> list) {
        nativeOnQueryPurchasesResponse(billingResult.getResponseCode(), billingResult.getDebugMessage(), (Purchase[]) list.toArray(new Purchase[list.size()]), this.zza);
    }
}
