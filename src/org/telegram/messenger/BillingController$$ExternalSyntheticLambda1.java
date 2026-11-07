package org.telegram.messenger;

import com.android.billingclient.api.BillingResult;
import java.util.List;
import org.telegram.messenger.BillingController;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class BillingController$$ExternalSyntheticLambda1 implements BillingController.ProductDetailsResponseListenerLegacy {
    public final /* synthetic */ BillingController f$0;

    public /* synthetic */ BillingController$$ExternalSyntheticLambda1(BillingController billingController) {
        this.f$0 = billingController;
    }

    @Override // org.telegram.messenger.BillingController.ProductDetailsResponseListenerLegacy
    public final void onProductDetailsResponse(BillingResult billingResult, List list) {
        this.f$0.onQueriedPremiumProductDetails(billingResult, list);
    }
}
