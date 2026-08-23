package org.telegram.ui.Components.Premium.boosts;

import android.text.TextUtils;
import android.util.Pair;
import androidx.core.util.Consumer;
import com.android.billingclient.api.BillingFlowParams;
import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.ProductDetails;
import com.android.billingclient.api.ProductDetailsResponseListener;
import com.android.billingclient.api.QueryProductDetailsParams;
import java.text.Collator;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import okhttp3.internal.url._UrlKt;
import org.json.JSONObject;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BillingController;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C2573R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.Vector;
import org.telegram.tgnet.tl.TL_stories;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.LaunchActivity;
import org.telegram.ui.PaymentFormActivity;
import org.telegram.ui.bots.BotWebViewSheet;

/* JADX INFO: loaded from: classes7.dex */
public abstract class BoostRepository {
    private static HashMap<Integer, Pair<Long, List<TLRPC.TL_premiumGiftCodeOption>>> cachedGiftOptions;

    public static int prepareServerDate(long j) {
        if (j < System.currentTimeMillis() + 120000) {
            j = System.currentTimeMillis() + 120000;
        }
        return (int) (j / 1000);
    }

    public static long giveawayAddPeersMax() {
        return MessagesController.getInstance(UserConfig.selectedAccount).giveawayAddPeersMax;
    }

    public static long giveawayPeriodMax() {
        return MessagesController.getInstance(UserConfig.selectedAccount).giveawayPeriodMax;
    }

    public static long giveawayCountriesMax() {
        return MessagesController.getInstance(UserConfig.selectedAccount).giveawayCountriesMax;
    }

    public static int giveawayBoostsPerPremium() {
        return (int) MessagesController.getInstance(UserConfig.selectedAccount).giveawayBoostsPerPremium;
    }

    public static boolean isMultiBoostsAvailable() {
        return MessagesController.getInstance(UserConfig.selectedAccount).boostsPerSentGift > 0;
    }

    public static int boostsPerSentGift() {
        return (int) MessagesController.getInstance(UserConfig.selectedAccount).boostsPerSentGift;
    }

    public static void loadParticipantsCount(final Utilities.Callback<HashMap<Long, Integer>> callback) {
        final MessagesStorage messagesStorage = MessagesStorage.getInstance(UserConfig.selectedAccount);
        messagesStorage.getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                BoostRepository.$r8$lambda$93mU_nmYohLDMzCY8V27ZWzqs0Q(messagesStorage, callback);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$93mU_nmYohLDMzCY8V27ZWzqs0Q(MessagesStorage messagesStorage, final Utilities.Callback callback) {
        final HashMap<Long, Integer> smallGroupsParticipantsCount = messagesStorage.getSmallGroupsParticipantsCount();
        if (smallGroupsParticipantsCount == null || smallGroupsParticipantsCount.isEmpty()) {
            return;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                callback.run(smallGroupsParticipantsCount);
            }
        });
    }

    public static ArrayList<TLRPC.InputPeer> getMyChannels(long j) {
        ArrayList<TLRPC.InputPeer> arrayList = new ArrayList<>();
        MessagesController messagesController = MessagesController.getInstance(UserConfig.selectedAccount);
        ArrayList<TLRPC.Dialog> allDialogs = messagesController.getAllDialogs();
        for (int i = 0; i < allDialogs.size(); i++) {
            TLRPC.Dialog dialog = allDialogs.get(i);
            if (DialogObject.isChatDialog(dialog.id) && ChatObject.isBoostSupported(messagesController.getChat(Long.valueOf(-dialog.id)))) {
                long j2 = dialog.id;
                if ((-j2) != j) {
                    arrayList.add(messagesController.getInputPeer(j2));
                }
            }
        }
        return arrayList;
    }

    public static void payGiftCode(List<TLObject> list, TLRPC.TL_premiumGiftCodeOption tL_premiumGiftCodeOption, TLRPC.Chat chat, TLRPC.TL_textWithEntities tL_textWithEntities, BaseFragment baseFragment, Utilities.Callback<Void> callback, Utilities.Callback<TLRPC.TL_error> callback2) {
        invalidateGiftOptionsToCache(UserConfig.selectedAccount);
        if (!isGoogleBillingAvailable()) {
            payGiftCodeByInvoice(list, tL_premiumGiftCodeOption, chat, tL_textWithEntities, baseFragment, callback, callback2);
        } else {
            payGiftCodeByGoogle(list, tL_premiumGiftCodeOption, chat, tL_textWithEntities, baseFragment, callback, callback2);
        }
    }

    public static boolean isGoogleBillingAvailable() {
        if (BuildVars.useInvoiceBilling()) {
            return false;
        }
        return BillingController.getInstance().isReady();
    }

    public static void payGiftCodeByInvoice(List<TLObject> list, TLRPC.TL_premiumGiftCodeOption tL_premiumGiftCodeOption, TLRPC.Chat chat, TLRPC.TL_textWithEntities tL_textWithEntities, final BaseFragment baseFragment, final Utilities.Callback<Void> callback, final Utilities.Callback<TLRPC.TL_error> callback2) {
        final MessagesController messagesController = MessagesController.getInstance(UserConfig.selectedAccount);
        ConnectionsManager connectionsManager = ConnectionsManager.getInstance(UserConfig.selectedAccount);
        TLRPC.TL_payments_getPaymentForm tL_payments_getPaymentForm = new TLRPC.TL_payments_getPaymentForm();
        final TLRPC.TL_inputInvoicePremiumGiftCode tL_inputInvoicePremiumGiftCode = new TLRPC.TL_inputInvoicePremiumGiftCode();
        TLRPC.TL_inputStorePaymentPremiumGiftCode tL_inputStorePaymentPremiumGiftCode = new TLRPC.TL_inputStorePaymentPremiumGiftCode();
        tL_inputStorePaymentPremiumGiftCode.users = new ArrayList<>();
        for (TLObject tLObject : list) {
            if (tLObject instanceof TLRPC.User) {
                tL_inputStorePaymentPremiumGiftCode.users.add(messagesController.getInputUser((TLRPC.User) tLObject));
            }
        }
        if (tL_textWithEntities != null && !TextUtils.isEmpty(tL_textWithEntities.text)) {
            tL_inputStorePaymentPremiumGiftCode.flags |= 2;
            tL_inputStorePaymentPremiumGiftCode.message = tL_textWithEntities;
        }
        if (chat != null) {
            tL_inputStorePaymentPremiumGiftCode.flags |= 1;
            tL_inputStorePaymentPremiumGiftCode.boost_peer = messagesController.getInputPeer(-chat.id);
        }
        tL_inputStorePaymentPremiumGiftCode.currency = tL_premiumGiftCodeOption.currency;
        tL_inputStorePaymentPremiumGiftCode.amount = tL_premiumGiftCodeOption.amount;
        tL_inputInvoicePremiumGiftCode.purpose = tL_inputStorePaymentPremiumGiftCode;
        tL_inputInvoicePremiumGiftCode.option = tL_premiumGiftCodeOption;
        JSONObject jSONObjectMakeThemeParams = BotWebViewSheet.makeThemeParams(baseFragment.getResourceProvider());
        if (jSONObjectMakeThemeParams != null) {
            TLRPC.TL_dataJSON tL_dataJSON = new TLRPC.TL_dataJSON();
            tL_payments_getPaymentForm.theme_params = tL_dataJSON;
            tL_dataJSON.data = jSONObjectMakeThemeParams.toString();
            tL_payments_getPaymentForm.flags |= 1;
        }
        tL_payments_getPaymentForm.invoice = tL_inputInvoicePremiumGiftCode;
        connectionsManager.sendRequest(tL_payments_getPaymentForm, new RequestDelegate() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda22
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject2, TLRPC.TL_error tL_error) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda33
                    @Override // java.lang.Runnable
                    public final void run() {
                        BoostRepository.$r8$lambda$UWLhHkJVaeOtePsTVLUViRxh8vo(tL_error, callback, tLObject2, messagesController, tL_inputInvoicePremiumGiftCode, baseFragment, callback);
                    }
                });
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$UWLhHkJVaeOtePsTVLUViRxh8vo(TLRPC.TL_error tL_error, final Utilities.Callback callback, TLObject tLObject, MessagesController messagesController, TLRPC.TL_inputInvoicePremiumGiftCode tL_inputInvoicePremiumGiftCode, BaseFragment baseFragment, final Utilities.Callback callback2) {
        PaymentFormActivity paymentFormActivity;
        if (tL_error != null) {
            callback.run(tL_error);
            return;
        }
        if (tLObject instanceof TLRPC.PaymentForm) {
            TLRPC.PaymentForm paymentForm = (TLRPC.PaymentForm) tLObject;
            paymentForm.invoice.recurring = true;
            messagesController.putUsers(paymentForm.users, false);
            paymentFormActivity = new PaymentFormActivity(paymentForm, tL_inputInvoicePremiumGiftCode, baseFragment);
        } else {
            paymentFormActivity = tLObject instanceof TLRPC.PaymentReceipt ? new PaymentFormActivity((TLRPC.PaymentReceipt) tLObject) : null;
        }
        if (paymentFormActivity != null) {
            paymentFormActivity.setPaymentFormCallback(new PaymentFormActivity.PaymentFormCallback() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda41
                @Override // org.telegram.ui.PaymentFormActivity.PaymentFormCallback
                public final void onInvoiceStatusChanged(PaymentFormActivity.InvoiceStatus invoiceStatus) {
                    BoostRepository.$r8$lambda$6YUWeNj5TBmUQU6EBQNuQA00DlA(callback2, callback, invoiceStatus);
                }
            });
            LaunchActivity.getLastFragment().showAsSheet(paymentFormActivity, new BaseFragment.BottomSheetParams());
        } else {
            callback.run(null);
        }
    }

    public static /* synthetic */ void $r8$lambda$6YUWeNj5TBmUQU6EBQNuQA00DlA(Utilities.Callback callback, Utilities.Callback callback2, PaymentFormActivity.InvoiceStatus invoiceStatus) {
        if (invoiceStatus == PaymentFormActivity.InvoiceStatus.PAID) {
            callback.run(null);
        } else if (invoiceStatus != PaymentFormActivity.InvoiceStatus.PENDING) {
            callback2.run(null);
        }
    }

    public static void payGiftCodeByGoogle(List<TLObject> list, final TLRPC.TL_premiumGiftCodeOption tL_premiumGiftCodeOption, TLRPC.Chat chat, TLRPC.TL_textWithEntities tL_textWithEntities, final BaseFragment baseFragment, final Utilities.Callback<Void> callback, final Utilities.Callback<TLRPC.TL_error> callback2) {
        MessagesController messagesController = MessagesController.getInstance(UserConfig.selectedAccount);
        final ConnectionsManager connectionsManager = ConnectionsManager.getInstance(UserConfig.selectedAccount);
        final TLRPC.TL_inputStorePaymentPremiumGiftCode tL_inputStorePaymentPremiumGiftCode = new TLRPC.TL_inputStorePaymentPremiumGiftCode();
        tL_inputStorePaymentPremiumGiftCode.users = new ArrayList<>();
        for (TLObject tLObject : list) {
            if (tLObject instanceof TLRPC.User) {
                tL_inputStorePaymentPremiumGiftCode.users.add(messagesController.getInputUser((TLRPC.User) tLObject));
            }
        }
        if (chat != null) {
            tL_inputStorePaymentPremiumGiftCode.flags = 1;
            tL_inputStorePaymentPremiumGiftCode.boost_peer = messagesController.getInputPeer(-chat.id);
        }
        if (tL_textWithEntities != null && !TextUtils.isEmpty(tL_textWithEntities.text)) {
            tL_inputStorePaymentPremiumGiftCode.flags |= 2;
            tL_inputStorePaymentPremiumGiftCode.message = tL_textWithEntities;
        }
        BillingController.getInstance().queryProductDetails(Arrays.asList(QueryProductDetailsParams.Product.newBuilder().setProductType("inapp").setProductId(tL_premiumGiftCodeOption.store_product).build()), new ProductDetailsResponseListener() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda20
            @Override // com.android.billingclient.api.ProductDetailsResponseListener
            public final void onProductDetailsResponse(BillingResult billingResult, List list2) {
                BoostRepository.$r8$lambda$mYSDz_ltJBzqsKE5_IeTomNxvh8(tL_inputStorePaymentPremiumGiftCode, tL_premiumGiftCodeOption, connectionsManager, callback2, callback, baseFragment, billingResult, list2);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$mYSDz_ltJBzqsKE5_IeTomNxvh8(final TLRPC.TL_inputStorePaymentPremiumGiftCode tL_inputStorePaymentPremiumGiftCode, TLRPC.TL_premiumGiftCodeOption tL_premiumGiftCodeOption, ConnectionsManager connectionsManager, final Utilities.Callback callback, final Utilities.Callback callback2, final BaseFragment baseFragment, final BillingResult billingResult, final List list) {
        tL_inputStorePaymentPremiumGiftCode.currency = ((ProductDetails) list.get(0)).getOneTimePurchaseOfferDetails().getPriceCurrencyCode();
        tL_inputStorePaymentPremiumGiftCode.amount = (long) ((r0.getPriceAmountMicros() / Math.pow(10.0d, 6.0d)) * Math.pow(10.0d, BillingController.getInstance().getCurrencyExp(tL_premiumGiftCodeOption.currency)));
        TLRPC.TL_payments_canPurchaseStore tL_payments_canPurchaseStore = new TLRPC.TL_payments_canPurchaseStore();
        tL_payments_canPurchaseStore.purpose = tL_inputStorePaymentPremiumGiftCode;
        connectionsManager.sendRequest(tL_payments_canPurchaseStore, new RequestDelegate() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda35
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda42
                    @Override // java.lang.Runnable
                    public final void run() {
                        BoostRepository.$r8$lambda$7baPAvWLWuDmI8IBz6DwQS52J2g(tL_error, callback, tLObject, list, billingResult, callback, baseFragment, tL_inputStorePaymentPremiumGiftCode);
                    }
                });
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$7baPAvWLWuDmI8IBz6DwQS52J2g(TLRPC.TL_error tL_error, final Utilities.Callback callback, TLObject tLObject, List list, final BillingResult billingResult, final Utilities.Callback callback2, BaseFragment baseFragment, TLRPC.TL_inputStorePaymentPremiumGiftCode tL_inputStorePaymentPremiumGiftCode) {
        if (tL_error != null) {
            callback.run(tL_error);
        } else if (tLObject != null) {
            BillingController.getInstance().addResultListener(((ProductDetails) list.get(0)).getProductId(), new Consumer() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda46
                @Override // androidx.core.util.Consumer
                public final void accept(Object obj) {
                    BoostRepository.$r8$lambda$_w_gaUlJUXZZLyliJu8K231X2jM(billingResult, callback2, (BillingResult) obj);
                }
            });
            BillingController.getInstance().setOnCanceled(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda47
                @Override // java.lang.Runnable
                public final void run() {
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda3
                        @Override // java.lang.Runnable
                        public final void run() {
                            callback.run(null);
                        }
                    });
                }
            });
            BillingController.getInstance().launchBillingFlow(baseFragment.getParentActivity(), AccountInstance.getInstance(UserConfig.selectedAccount), tL_inputStorePaymentPremiumGiftCode, Collections.singletonList(BillingFlowParams.ProductDetailsParams.newBuilder().setProductDetails((ProductDetails) list.get(0)).build()));
        }
    }

    public static /* synthetic */ void $r8$lambda$_w_gaUlJUXZZLyliJu8K231X2jM(BillingResult billingResult, final Utilities.Callback callback, BillingResult billingResult2) {
        if (billingResult.getResponseCode() == 0) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    callback.run(null);
                }
            });
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [org.telegram.tgnet.TLRPC$TL_inputStorePaymentStarsGiveaway] */
    /* JADX WARN: Type inference failed for: r1v3, types: [org.telegram.tgnet.TLRPC$InputStorePaymentPurpose] */
    /* JADX WARN: Type inference failed for: r1v4, types: [org.telegram.tgnet.TLRPC$TL_inputStorePaymentPremiumGiveaway] */
    public static void launchPreparedGiveaway(TL_stories.PrepaidGiveaway prepaidGiveaway, List<TLObject> list, List<TLObject> list2, TLRPC.Chat chat, int i, boolean z, boolean z2, boolean z3, int i2, String str, final Utilities.Callback<Void> callback, final Utilities.Callback<TLRPC.TL_error> callback2) {
        ?? tL_inputStorePaymentStarsGiveaway;
        final MessagesController messagesController = MessagesController.getInstance(UserConfig.selectedAccount);
        ConnectionsManager connectionsManager = ConnectionsManager.getInstance(UserConfig.selectedAccount);
        if (prepaidGiveaway instanceof TL_stories.TL_prepaidGiveaway) {
            tL_inputStorePaymentStarsGiveaway = new TLRPC.TL_inputStorePaymentPremiumGiveaway();
            tL_inputStorePaymentStarsGiveaway.only_new_subscribers = z;
            tL_inputStorePaymentStarsGiveaway.winners_are_visible = z2;
            tL_inputStorePaymentStarsGiveaway.prize_description = str;
            tL_inputStorePaymentStarsGiveaway.until_date = i;
            int i3 = tL_inputStorePaymentStarsGiveaway.flags;
            tL_inputStorePaymentStarsGiveaway.flags = i3 | 6;
            if (z3) {
                tL_inputStorePaymentStarsGiveaway.flags = i3 | 22;
            }
            tL_inputStorePaymentStarsGiveaway.random_id = System.currentTimeMillis();
            tL_inputStorePaymentStarsGiveaway.additional_peers = new ArrayList<>();
            tL_inputStorePaymentStarsGiveaway.boost_peer = messagesController.getInputPeer(-chat.id);
            tL_inputStorePaymentStarsGiveaway.currency = _UrlKt.FRAGMENT_ENCODE_SET;
            Iterator<TLObject> it = list2.iterator();
            while (it.hasNext()) {
                tL_inputStorePaymentStarsGiveaway.countries_iso2.add(((TLRPC.TL_help_country) it.next()).iso2);
            }
            for (TLObject tLObject : list) {
                if (tLObject instanceof TLRPC.Chat) {
                    tL_inputStorePaymentStarsGiveaway.additional_peers.add(messagesController.getInputPeer(-((TLRPC.Chat) tLObject).id));
                }
            }
        } else {
            if (!(prepaidGiveaway instanceof TL_stories.TL_prepaidStarsGiveaway)) {
                return;
            }
            tL_inputStorePaymentStarsGiveaway = new TLRPC.TL_inputStorePaymentStarsGiveaway();
            tL_inputStorePaymentStarsGiveaway.only_new_subscribers = z;
            tL_inputStorePaymentStarsGiveaway.winners_are_visible = z2;
            tL_inputStorePaymentStarsGiveaway.prize_description = str;
            tL_inputStorePaymentStarsGiveaway.until_date = i;
            int i4 = tL_inputStorePaymentStarsGiveaway.flags;
            tL_inputStorePaymentStarsGiveaway.flags = i4 | 6;
            if (z3) {
                tL_inputStorePaymentStarsGiveaway.flags = i4 | 22;
            }
            tL_inputStorePaymentStarsGiveaway.random_id = System.currentTimeMillis();
            tL_inputStorePaymentStarsGiveaway.additional_peers = new ArrayList<>();
            tL_inputStorePaymentStarsGiveaway.boost_peer = messagesController.getInputPeer(-chat.id);
            tL_inputStorePaymentStarsGiveaway.currency = _UrlKt.FRAGMENT_ENCODE_SET;
            tL_inputStorePaymentStarsGiveaway.stars = ((TL_stories.TL_prepaidStarsGiveaway) prepaidGiveaway).stars;
            tL_inputStorePaymentStarsGiveaway.users = prepaidGiveaway.quantity;
            Iterator<TLObject> it2 = list2.iterator();
            while (it2.hasNext()) {
                tL_inputStorePaymentStarsGiveaway.countries_iso2.add(((TLRPC.TL_help_country) it2.next()).iso2);
            }
            for (TLObject tLObject2 : list) {
                if (tLObject2 instanceof TLRPC.Chat) {
                    tL_inputStorePaymentStarsGiveaway.additional_peers.add(messagesController.getInputPeer(-((TLRPC.Chat) tLObject2).id));
                }
            }
        }
        TLRPC.TL_payments_launchPrepaidGiveaway tL_payments_launchPrepaidGiveaway = new TLRPC.TL_payments_launchPrepaidGiveaway();
        tL_payments_launchPrepaidGiveaway.giveaway_id = prepaidGiveaway.id;
        tL_payments_launchPrepaidGiveaway.peer = messagesController.getInputPeer(-chat.id);
        tL_payments_launchPrepaidGiveaway.purpose = tL_inputStorePaymentStarsGiveaway;
        connectionsManager.sendRequest(tL_payments_launchPrepaidGiveaway, new RequestDelegate() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda32
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject3, TLRPC.TL_error tL_error) {
                BoostRepository.$r8$lambda$g_xySM0hQlLkMqWy7Mg2ggZA0YA(callback2, messagesController, callback, tLObject3, tL_error);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$g_xySM0hQlLkMqWy7Mg2ggZA0YA(final Utilities.Callback callback, MessagesController messagesController, final Utilities.Callback callback2, TLObject tLObject, final TLRPC.TL_error tL_error) {
        if (tL_error != null) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda39
                @Override // java.lang.Runnable
                public final void run() {
                    callback.run(tL_error);
                }
            });
        } else if (tLObject != null) {
            messagesController.processUpdates((TLRPC.Updates) tLObject, false);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda40
                @Override // java.lang.Runnable
                public final void run() {
                    callback2.run(null);
                }
            });
        }
    }

    public static void payGiveAway(List<TLObject> list, List<TLObject> list2, TLRPC.TL_premiumGiftCodeOption tL_premiumGiftCodeOption, TLRPC.Chat chat, int i, boolean z, BaseFragment baseFragment, boolean z2, boolean z3, String str, Utilities.Callback<Void> callback, Utilities.Callback<TLRPC.TL_error> callback2) {
        if (!isGoogleBillingAvailable()) {
            payGiveAwayByInvoice(list, list2, tL_premiumGiftCodeOption, chat, i, z, baseFragment, z2, z3, str, callback, callback2);
        } else {
            payGiveAwayByGoogle(list, list2, tL_premiumGiftCodeOption, chat, i, z, baseFragment, z2, z3, str, callback, callback2);
        }
    }

    public static void payGiveAwayByInvoice(List<TLObject> list, List<TLObject> list2, TLRPC.TL_premiumGiftCodeOption tL_premiumGiftCodeOption, TLRPC.Chat chat, int i, boolean z, final BaseFragment baseFragment, boolean z2, boolean z3, String str, final Utilities.Callback<Void> callback, final Utilities.Callback<TLRPC.TL_error> callback2) {
        final MessagesController messagesController = MessagesController.getInstance(UserConfig.selectedAccount);
        ConnectionsManager connectionsManager = ConnectionsManager.getInstance(UserConfig.selectedAccount);
        TLRPC.TL_payments_getPaymentForm tL_payments_getPaymentForm = new TLRPC.TL_payments_getPaymentForm();
        final TLRPC.TL_inputInvoicePremiumGiftCode tL_inputInvoicePremiumGiftCode = new TLRPC.TL_inputInvoicePremiumGiftCode();
        TLRPC.TL_inputStorePaymentPremiumGiveaway tL_inputStorePaymentPremiumGiveaway = new TLRPC.TL_inputStorePaymentPremiumGiveaway();
        tL_inputStorePaymentPremiumGiveaway.only_new_subscribers = z;
        tL_inputStorePaymentPremiumGiveaway.winners_are_visible = z2;
        tL_inputStorePaymentPremiumGiveaway.prize_description = str;
        tL_inputStorePaymentPremiumGiveaway.until_date = i;
        int i2 = tL_inputStorePaymentPremiumGiveaway.flags;
        tL_inputStorePaymentPremiumGiveaway.flags = i2 | 6;
        if (z3) {
            tL_inputStorePaymentPremiumGiveaway.flags = i2 | 22;
        }
        tL_inputStorePaymentPremiumGiveaway.random_id = System.currentTimeMillis();
        tL_inputStorePaymentPremiumGiveaway.additional_peers = new ArrayList<>();
        for (TLObject tLObject : list) {
            if (tLObject instanceof TLRPC.Chat) {
                tL_inputStorePaymentPremiumGiveaway.additional_peers.add(messagesController.getInputPeer(-((TLRPC.Chat) tLObject).id));
            }
        }
        tL_inputStorePaymentPremiumGiveaway.boost_peer = messagesController.getInputPeer(-chat.id);
        tL_inputStorePaymentPremiumGiveaway.boost_peer = messagesController.getInputPeer(-chat.id);
        tL_inputStorePaymentPremiumGiveaway.currency = tL_premiumGiftCodeOption.currency;
        tL_inputStorePaymentPremiumGiveaway.amount = tL_premiumGiftCodeOption.amount;
        Iterator<TLObject> it = list2.iterator();
        while (it.hasNext()) {
            tL_inputStorePaymentPremiumGiveaway.countries_iso2.add(((TLRPC.TL_help_country) it.next()).iso2);
        }
        tL_inputInvoicePremiumGiftCode.purpose = tL_inputStorePaymentPremiumGiveaway;
        tL_inputInvoicePremiumGiftCode.option = tL_premiumGiftCodeOption;
        JSONObject jSONObjectMakeThemeParams = BotWebViewSheet.makeThemeParams(baseFragment.getResourceProvider());
        if (jSONObjectMakeThemeParams != null) {
            TLRPC.TL_dataJSON tL_dataJSON = new TLRPC.TL_dataJSON();
            tL_payments_getPaymentForm.theme_params = tL_dataJSON;
            tL_dataJSON.data = jSONObjectMakeThemeParams.toString();
            tL_payments_getPaymentForm.flags |= 1;
        }
        tL_payments_getPaymentForm.invoice = tL_inputInvoicePremiumGiftCode;
        connectionsManager.sendRequest(tL_payments_getPaymentForm, new RequestDelegate() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda21
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject2, TLRPC.TL_error tL_error) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda27
                    @Override // java.lang.Runnable
                    public final void run() {
                        BoostRepository.$r8$lambda$VfNNzLz2r9dG197A_eLlLbrOSU8(tL_error, callback, tLObject2, messagesController, tL_inputInvoicePremiumGiftCode, baseFragment, callback);
                    }
                });
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$VfNNzLz2r9dG197A_eLlLbrOSU8(TLRPC.TL_error tL_error, final Utilities.Callback callback, TLObject tLObject, MessagesController messagesController, TLRPC.TL_inputInvoicePremiumGiftCode tL_inputInvoicePremiumGiftCode, BaseFragment baseFragment, final Utilities.Callback callback2) {
        PaymentFormActivity paymentFormActivity;
        if (tL_error != null) {
            callback.run(tL_error);
            return;
        }
        if (tLObject instanceof TLRPC.PaymentForm) {
            TLRPC.PaymentForm paymentForm = (TLRPC.PaymentForm) tLObject;
            paymentForm.invoice.recurring = true;
            messagesController.putUsers(paymentForm.users, false);
            paymentFormActivity = new PaymentFormActivity(paymentForm, tL_inputInvoicePremiumGiftCode, baseFragment);
        } else {
            paymentFormActivity = tLObject instanceof TLRPC.PaymentReceipt ? new PaymentFormActivity((TLRPC.PaymentReceipt) tLObject) : null;
        }
        if (paymentFormActivity != null) {
            paymentFormActivity.setPaymentFormCallback(new PaymentFormActivity.PaymentFormCallback() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda37
                @Override // org.telegram.ui.PaymentFormActivity.PaymentFormCallback
                public final void onInvoiceStatusChanged(PaymentFormActivity.InvoiceStatus invoiceStatus) {
                    BoostRepository.m13168$r8$lambda$J0yHjds9RgDYKvt_Tecd4MSrg(callback2, callback, invoiceStatus);
                }
            });
            LaunchActivity.getLastFragment().showAsSheet(paymentFormActivity, new BaseFragment.BottomSheetParams());
        } else {
            callback.run(null);
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$J0-yHjds9RgDYKvt_T-ecd4MSrg, reason: not valid java name */
    public static /* synthetic */ void m13168$r8$lambda$J0yHjds9RgDYKvt_Tecd4MSrg(Utilities.Callback callback, Utilities.Callback callback2, PaymentFormActivity.InvoiceStatus invoiceStatus) {
        if (invoiceStatus == PaymentFormActivity.InvoiceStatus.PAID) {
            callback.run(null);
        } else if (invoiceStatus != PaymentFormActivity.InvoiceStatus.PENDING) {
            callback2.run(null);
        }
    }

    public static void payGiveAwayByGoogle(List<TLObject> list, List<TLObject> list2, final TLRPC.TL_premiumGiftCodeOption tL_premiumGiftCodeOption, TLRPC.Chat chat, int i, boolean z, final BaseFragment baseFragment, boolean z2, boolean z3, String str, final Utilities.Callback<Void> callback, final Utilities.Callback<TLRPC.TL_error> callback2) {
        MessagesController messagesController = MessagesController.getInstance(UserConfig.selectedAccount);
        final ConnectionsManager connectionsManager = ConnectionsManager.getInstance(UserConfig.selectedAccount);
        final TLRPC.TL_inputStorePaymentPremiumGiveaway tL_inputStorePaymentPremiumGiveaway = new TLRPC.TL_inputStorePaymentPremiumGiveaway();
        tL_inputStorePaymentPremiumGiveaway.only_new_subscribers = z;
        tL_inputStorePaymentPremiumGiveaway.winners_are_visible = z2;
        tL_inputStorePaymentPremiumGiveaway.prize_description = str;
        tL_inputStorePaymentPremiumGiveaway.until_date = i;
        int i2 = tL_inputStorePaymentPremiumGiveaway.flags;
        tL_inputStorePaymentPremiumGiveaway.flags = i2 | 6;
        if (z3) {
            tL_inputStorePaymentPremiumGiveaway.flags = i2 | 22;
        }
        tL_inputStorePaymentPremiumGiveaway.random_id = System.currentTimeMillis();
        tL_inputStorePaymentPremiumGiveaway.additional_peers = new ArrayList<>();
        for (TLObject tLObject : list) {
            if (tLObject instanceof TLRPC.Chat) {
                tL_inputStorePaymentPremiumGiveaway.additional_peers.add(messagesController.getInputPeer(-((TLRPC.Chat) tLObject).id));
            }
        }
        tL_inputStorePaymentPremiumGiveaway.boost_peer = messagesController.getInputPeer(-chat.id);
        Iterator<TLObject> it = list2.iterator();
        while (it.hasNext()) {
            tL_inputStorePaymentPremiumGiveaway.countries_iso2.add(((TLRPC.TL_help_country) it.next()).iso2);
        }
        BillingController.getInstance().queryProductDetails(Arrays.asList(QueryProductDetailsParams.Product.newBuilder().setProductType("inapp").setProductId(tL_premiumGiftCodeOption.store_product).build()), new ProductDetailsResponseListener() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda23
            @Override // com.android.billingclient.api.ProductDetailsResponseListener
            public final void onProductDetailsResponse(BillingResult billingResult, List list3) {
                BoostRepository.$r8$lambda$3JllB8xkLNaulTHhFyBUSMZgAnw(tL_inputStorePaymentPremiumGiveaway, tL_premiumGiftCodeOption, connectionsManager, callback2, callback, baseFragment, billingResult, list3);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$3JllB8xkLNaulTHhFyBUSMZgAnw(final TLRPC.TL_inputStorePaymentPremiumGiveaway tL_inputStorePaymentPremiumGiveaway, TLRPC.TL_premiumGiftCodeOption tL_premiumGiftCodeOption, ConnectionsManager connectionsManager, final Utilities.Callback callback, final Utilities.Callback callback2, final BaseFragment baseFragment, final BillingResult billingResult, final List list) {
        tL_inputStorePaymentPremiumGiveaway.currency = ((ProductDetails) list.get(0)).getOneTimePurchaseOfferDetails().getPriceCurrencyCode();
        tL_inputStorePaymentPremiumGiveaway.amount = (long) ((r0.getPriceAmountMicros() / Math.pow(10.0d, 6.0d)) * Math.pow(10.0d, BillingController.getInstance().getCurrencyExp(tL_premiumGiftCodeOption.currency)));
        TLRPC.TL_payments_canPurchaseStore tL_payments_canPurchaseStore = new TLRPC.TL_payments_canPurchaseStore();
        tL_payments_canPurchaseStore.purpose = tL_inputStorePaymentPremiumGiveaway;
        connectionsManager.sendRequest(tL_payments_canPurchaseStore, new RequestDelegate() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda31
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda38
                    @Override // java.lang.Runnable
                    public final void run() {
                        BoostRepository.m13167$r8$lambda$EsswBawrvnmZnHQ3bnrVP4EnZM(tL_error, callback, tLObject, list, billingResult, callback, baseFragment, tL_inputStorePaymentPremiumGiveaway);
                    }
                });
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$Essw-BawrvnmZnHQ3bnrVP4EnZM, reason: not valid java name */
    public static /* synthetic */ void m13167$r8$lambda$EsswBawrvnmZnHQ3bnrVP4EnZM(TLRPC.TL_error tL_error, final Utilities.Callback callback, TLObject tLObject, List list, final BillingResult billingResult, final Utilities.Callback callback2, BaseFragment baseFragment, TLRPC.TL_inputStorePaymentPremiumGiveaway tL_inputStorePaymentPremiumGiveaway) {
        if (tL_error != null) {
            callback.run(tL_error);
        } else if (tLObject != null) {
            BillingController.getInstance().addResultListener(((ProductDetails) list.get(0)).getProductId(), new Consumer() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda48
                @Override // androidx.core.util.Consumer
                public final void accept(Object obj) {
                    BoostRepository.m13177$r8$lambda$ig8rwkvloatAUQHYzF830bssQs(billingResult, callback2, (BillingResult) obj);
                }
            });
            BillingController.getInstance().setOnCanceled(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda49
                @Override // java.lang.Runnable
                public final void run() {
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda1
                        @Override // java.lang.Runnable
                        public final void run() {
                            callback.run(null);
                        }
                    });
                }
            });
            BillingController.getInstance().launchBillingFlow(baseFragment.getParentActivity(), AccountInstance.getInstance(UserConfig.selectedAccount), tL_inputStorePaymentPremiumGiveaway, Collections.singletonList(BillingFlowParams.ProductDetailsParams.newBuilder().setProductDetails((ProductDetails) list.get(0)).build()));
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$ig8rwkvloatAUQHYz-F830bssQs, reason: not valid java name */
    public static /* synthetic */ void m13177$r8$lambda$ig8rwkvloatAUQHYzF830bssQs(BillingResult billingResult, final Utilities.Callback callback, BillingResult billingResult2) {
        if (billingResult.getResponseCode() == 0) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    callback.run(null);
                }
            });
        }
    }

    public static List<TLRPC.TL_premiumGiftCodeOption> filterGiftOptions(List<TLRPC.TL_premiumGiftCodeOption> list, int i) {
        ArrayList arrayList = new ArrayList();
        for (TLRPC.TL_premiumGiftCodeOption tL_premiumGiftCodeOption : list) {
            String str = tL_premiumGiftCodeOption.store_product;
            if (tL_premiumGiftCodeOption.users == i) {
                arrayList.add(tL_premiumGiftCodeOption);
            }
        }
        if (arrayList.isEmpty()) {
            for (TLRPC.TL_premiumGiftCodeOption tL_premiumGiftCodeOption2 : list) {
                if (tL_premiumGiftCodeOption2.users == 1) {
                    arrayList.add(tL_premiumGiftCodeOption2);
                }
            }
        }
        return arrayList;
    }

    public static List<TLRPC.TL_premiumGiftCodeOption> filterGiftOptionsByBilling(List<TLRPC.TL_premiumGiftCodeOption> list) {
        if (!isGoogleBillingAvailable()) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        for (TLRPC.TL_premiumGiftCodeOption tL_premiumGiftCodeOption : list) {
            if (tL_premiumGiftCodeOption.store_product != null) {
                arrayList.add(tL_premiumGiftCodeOption);
            }
        }
        return arrayList;
    }

    public static void loadCountriesForPolls(final Utilities.Callback<Pair<Map<String, List<TLRPC.TL_help_country>>, List<String>>> callback) {
        ConnectionsManager connectionsManager = ConnectionsManager.getInstance(UserConfig.selectedAccount);
        TLRPC.TL_help_getCountriesList tL_help_getCountriesList = new TLRPC.TL_help_getCountriesList();
        tL_help_getCountriesList.lang_code = LocaleController.getInstance().getCurrentLocaleInfo() != null ? LocaleController.getInstance().getCurrentLocaleInfo().getLangCode() : Locale.getDefault().getCountry();
        connectionsManager.sendRequest(tL_help_getCountriesList, new RequestDelegate() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda45
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                BoostRepository.$r8$lambda$CMETRqHVgoKx050Ho2CJyPi0jec(callback, tLObject, tL_error);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$CMETRqHVgoKx050Ho2CJyPi0jec(final Utilities.Callback callback, TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tLObject != null) {
            TLRPC.TL_help_countriesList tL_help_countriesList = (TLRPC.TL_help_countriesList) tLObject;
            final HashMap map = new HashMap();
            final ArrayList arrayList = new ArrayList();
            for (int i = 0; i < tL_help_countriesList.countries.size(); i++) {
                TLRPC.TL_help_country tL_help_country = tL_help_countriesList.countries.get(i);
                boolean zEqualsIgnoreCase = tL_help_country.iso2.equalsIgnoreCase("FT");
                String str = tL_help_country.name;
                if (str != null) {
                    tL_help_country.default_name = str;
                }
                if (!tL_help_country.hidden || zEqualsIgnoreCase) {
                    if (zEqualsIgnoreCase) {
                        String string = LocaleController.getString(C2573R.string.Fragment);
                        tL_help_country.default_name = string;
                        tL_help_country.name = string;
                    }
                    String upperCase = tL_help_country.default_name.substring(0, 1).toUpperCase();
                    List arrayList2 = (List) map.get(upperCase);
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList();
                        map.put(upperCase, arrayList2);
                        arrayList.add(upperCase);
                    }
                    arrayList2.add(tL_help_country);
                }
            }
            Collator collator = Collator.getInstance(LocaleController.getInstance().getCurrentLocale() != null ? LocaleController.getInstance().getCurrentLocale() : Locale.getDefault());
            Objects.requireNonNull(collator);
            final BoostRepository$$ExternalSyntheticLambda28 boostRepository$$ExternalSyntheticLambda28 = new BoostRepository$$ExternalSyntheticLambda28(collator);
            Collections.sort(arrayList, boostRepository$$ExternalSyntheticLambda28);
            Iterator it = map.values().iterator();
            while (it.hasNext()) {
                Collections.sort((List) it.next(), new Comparator() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda50
                    @Override // java.util.Comparator
                    public final int compare(Object obj, Object obj2) {
                        return boostRepository$$ExternalSyntheticLambda28.compare(((TLRPC.TL_help_country) obj).default_name, ((TLRPC.TL_help_country) obj2).default_name);
                    }
                });
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda51
                @Override // java.lang.Runnable
                public final void run() {
                    callback.run(new Pair(map, arrayList));
                }
            });
        }
    }

    public static void loadCountries(final Utilities.Callback<Pair<Map<String, List<TLRPC.TL_help_country>>, List<String>>> callback) {
        ConnectionsManager connectionsManager = ConnectionsManager.getInstance(UserConfig.selectedAccount);
        TLRPC.TL_help_getCountriesList tL_help_getCountriesList = new TLRPC.TL_help_getCountriesList();
        tL_help_getCountriesList.lang_code = LocaleController.getInstance().getCurrentLocaleInfo() != null ? LocaleController.getInstance().getCurrentLocaleInfo().getLangCode() : Locale.getDefault().getCountry();
        connectionsManager.sendRequest(tL_help_getCountriesList, new RequestDelegate() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda25
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                BoostRepository.$r8$lambda$TOm6ENsklfEHu9RpiMaLZC8JNf0(callback, tLObject, tL_error);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$TOm6ENsklfEHu9RpiMaLZC8JNf0(final Utilities.Callback callback, TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tLObject != null) {
            TLRPC.TL_help_countriesList tL_help_countriesList = (TLRPC.TL_help_countriesList) tLObject;
            final HashMap map = new HashMap();
            final ArrayList arrayList = new ArrayList();
            for (int i = 0; i < tL_help_countriesList.countries.size(); i++) {
                TLRPC.TL_help_country tL_help_country = tL_help_countriesList.countries.get(i);
                String str = tL_help_country.name;
                if (str != null) {
                    tL_help_country.default_name = str;
                }
                if (!tL_help_country.hidden && !tL_help_country.iso2.equalsIgnoreCase("FT")) {
                    String upperCase = tL_help_country.default_name.substring(0, 1).toUpperCase();
                    List arrayList2 = (List) map.get(upperCase);
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList();
                        map.put(upperCase, arrayList2);
                        arrayList.add(upperCase);
                    }
                    arrayList2.add(tL_help_country);
                }
            }
            Collator collator = Collator.getInstance(LocaleController.getInstance().getCurrentLocale() != null ? LocaleController.getInstance().getCurrentLocale() : Locale.getDefault());
            Objects.requireNonNull(collator);
            final BoostRepository$$ExternalSyntheticLambda28 boostRepository$$ExternalSyntheticLambda28 = new BoostRepository$$ExternalSyntheticLambda28(collator);
            Collections.sort(arrayList, boostRepository$$ExternalSyntheticLambda28);
            Iterator it = map.values().iterator();
            while (it.hasNext()) {
                Collections.sort((List) it.next(), new Comparator() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda29
                    @Override // java.util.Comparator
                    public final int compare(Object obj, Object obj2) {
                        return boostRepository$$ExternalSyntheticLambda28.compare(((TLRPC.TL_help_country) obj).default_name, ((TLRPC.TL_help_country) obj2).default_name);
                    }
                });
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda30
                @Override // java.lang.Runnable
                public final void run() {
                    callback.run(new Pair(map, arrayList));
                }
            });
        }
    }

    public static List<TLRPC.TL_premiumGiftCodeOption> getCachedGiftOptions(int i) {
        Pair<Long, List<TLRPC.TL_premiumGiftCodeOption>> pair;
        HashMap<Integer, Pair<Long, List<TLRPC.TL_premiumGiftCodeOption>>> map = cachedGiftOptions;
        if (map == null || (pair = map.get(Integer.valueOf(i))) == null || System.currentTimeMillis() - ((Long) pair.first).longValue() >= 1800000) {
            return null;
        }
        return (List) pair.second;
    }

    public static void saveGiftOptionsToCache(int i, List<TLRPC.TL_premiumGiftCodeOption> list) {
        if (cachedGiftOptions == null) {
            cachedGiftOptions = new HashMap<>();
        }
        cachedGiftOptions.put(Integer.valueOf(i), new Pair<>(Long.valueOf(System.currentTimeMillis()), list));
    }

    public static void invalidateGiftOptionsToCache(int i) {
        HashMap<Integer, Pair<Long, List<TLRPC.TL_premiumGiftCodeOption>>> map = cachedGiftOptions;
        if (map != null) {
            map.remove(Integer.valueOf(i));
        }
    }

    public static int loadGiftOptions(final int i, final TLRPC.Chat chat, final Utilities.Callback<List<TLRPC.TL_premiumGiftCodeOption>> callback) {
        List<TLRPC.TL_premiumGiftCodeOption> cachedGiftOptions2;
        if (chat == null && (cachedGiftOptions2 = getCachedGiftOptions(i)) != null) {
            callback.run(cachedGiftOptions2);
            return -1;
        }
        MessagesController messagesController = MessagesController.getInstance(i);
        ConnectionsManager connectionsManager = ConnectionsManager.getInstance(i);
        TLRPC.TL_payments_getPremiumGiftCodeOptions tL_payments_getPremiumGiftCodeOptions = new TLRPC.TL_payments_getPremiumGiftCodeOptions();
        if (chat != null) {
            tL_payments_getPremiumGiftCodeOptions.flags = 1;
            tL_payments_getPremiumGiftCodeOptions.boost_peer = messagesController.getInputPeer(-chat.id);
        }
        return connectionsManager.sendRequest(tL_payments_getPremiumGiftCodeOptions, new RequestDelegate() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda7
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                BoostRepository.$r8$lambda$D14eR3Q20yjKqtSujJDqV16f_sM(chat, i, callback, tLObject, tL_error);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$D14eR3Q20yjKqtSujJDqV16f_sM(final TLRPC.Chat chat, final int i, final Utilities.Callback callback, TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tLObject instanceof Vector) {
            Vector vector = (Vector) tLObject;
            final ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            for (int i2 = 0; i2 < vector.objects.size(); i2++) {
                TLRPC.TL_premiumGiftCodeOption tL_premiumGiftCodeOption = (TLRPC.TL_premiumGiftCodeOption) vector.objects.get(i2);
                arrayList.add(tL_premiumGiftCodeOption);
                if (tL_premiumGiftCodeOption.store_product != null) {
                    arrayList2.add(QueryProductDetailsParams.Product.newBuilder().setProductType("inapp").setProductId(tL_premiumGiftCodeOption.store_product).build());
                }
            }
            if (arrayList2.isEmpty() || !isGoogleBillingAvailable()) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda14
                    @Override // java.lang.Runnable
                    public final void run() {
                        BoostRepository.m13165$r8$lambda$9nAfEogN0soBn_lXcWgxn2tWJ8(chat, i, arrayList, callback);
                    }
                });
            } else {
                BillingController.getInstance().queryProductDetails(arrayList2, new ProductDetailsResponseListener() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda15
                    @Override // com.android.billingclient.api.ProductDetailsResponseListener
                    public final void onProductDetailsResponse(BillingResult billingResult, List list) {
                        BoostRepository.m13176$r8$lambda$fMZCR2KPhMM0Iu5D1hwtbi38d8(arrayList, chat, i, callback, billingResult, list);
                    }
                });
            }
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$9nAfEogN0soBn_lXcWgxn2tWJ-8, reason: not valid java name */
    public static /* synthetic */ void m13165$r8$lambda$9nAfEogN0soBn_lXcWgxn2tWJ8(TLRPC.Chat chat, int i, List list, Utilities.Callback callback) {
        if (chat == null) {
            saveGiftOptionsToCache(i, list);
        }
        callback.run(list);
    }

    /* JADX INFO: renamed from: $r8$lambda$fMZCR2KPhMM0Iu5D1hwtbi-38d8, reason: not valid java name */
    public static /* synthetic */ void m13176$r8$lambda$fMZCR2KPhMM0Iu5D1hwtbi38d8(final List list, final TLRPC.Chat chat, final int i, final Utilities.Callback callback, BillingResult billingResult, List list2) {
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            ProductDetails productDetails = (ProductDetails) it.next();
            ProductDetails.OneTimePurchaseOfferDetails oneTimePurchaseOfferDetails = productDetails.getOneTimePurchaseOfferDetails();
            Iterator it2 = list.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                TLRPC.TL_premiumGiftCodeOption tL_premiumGiftCodeOption = (TLRPC.TL_premiumGiftCodeOption) it2.next();
                String str = tL_premiumGiftCodeOption.store_product;
                if (str != null && str.equals(productDetails.getProductId())) {
                    tL_premiumGiftCodeOption.amount = (long) ((oneTimePurchaseOfferDetails.getPriceAmountMicros() / Math.pow(10.0d, 6.0d)) * Math.pow(10.0d, BillingController.getInstance().getCurrencyExp(tL_premiumGiftCodeOption.currency)));
                    tL_premiumGiftCodeOption.currency = oneTimePurchaseOfferDetails.getPriceCurrencyCode();
                    break;
                }
            }
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda17
            @Override // java.lang.Runnable
            public final void run() {
                BoostRepository.$r8$lambda$a40JYBpE5PrUDHQjsroWMGf1XzQ(chat, i, list, callback);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$a40JYBpE5PrUDHQjsroWMGf1XzQ(TLRPC.Chat chat, int i, List list, Utilities.Callback callback) {
        if (chat == null) {
            saveGiftOptionsToCache(i, list);
        }
        callback.run(list);
    }

    public static int searchContacts(String str, final boolean z, final Utilities.Callback<List<TLRPC.User>> callback) {
        final MessagesController messagesController = MessagesController.getInstance(UserConfig.selectedAccount);
        ConnectionsManager connectionsManager = ConnectionsManager.getInstance(UserConfig.selectedAccount);
        if (str == null || str.isEmpty()) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda43
                @Override // java.lang.Runnable
                public final void run() {
                    callback.run(Collections.EMPTY_LIST);
                }
            });
            return 0;
        }
        TLRPC.TL_contacts_search tL_contacts_search = new TLRPC.TL_contacts_search();
        tL_contacts_search.f861q = str;
        tL_contacts_search.limit = 50;
        return connectionsManager.sendRequest(tL_contacts_search, new RequestDelegate() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda44
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                BoostRepository.$r8$lambda$yPg7LxTwonSa2qF9cLvxVWafz0M(messagesController, z, callback, tLObject, tL_error);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$yPg7LxTwonSa2qF9cLvxVWafz0M(MessagesController messagesController, boolean z, final Utilities.Callback callback, TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tLObject instanceof TLRPC.TL_contacts_found) {
            TLRPC.TL_contacts_found tL_contacts_found = (TLRPC.TL_contacts_found) tLObject;
            messagesController.putUsers(tL_contacts_found.users, false);
            final ArrayList arrayList = new ArrayList();
            for (int i = 0; i < tL_contacts_found.users.size(); i++) {
                TLRPC.User user = tL_contacts_found.users.get(i);
                if (!user.self && !UserObject.isDeleted(user) && ((z || !user.bot) && !UserObject.isService(user.id))) {
                    arrayList.add(user);
                }
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda52
                @Override // java.lang.Runnable
                public final void run() {
                    callback.run(arrayList);
                }
            });
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:63:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0135  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void searchContactsLocally(String str, boolean z, Utilities.Callback<List<TLRPC.User>> callback) {
        TLRPC.User user;
        int i = UserConfig.selectedAccount;
        ArrayList arrayList = new ArrayList();
        ArrayList<TLRPC.TL_contact> arrayList2 = ContactsController.getInstance(i).contacts;
        if (arrayList2 == null || arrayList2.isEmpty()) {
            ContactsController.getInstance(i).loadContacts(false, 0L);
        }
        MessagesController messagesController = MessagesController.getInstance(i);
        String lowerCase = str.toLowerCase();
        String strTranslitSafe = AndroidUtilities.translitSafe(lowerCase);
        if (arrayList2 != null) {
            for (int i2 = 0; i2 < arrayList2.size(); i2++) {
                TLRPC.TL_contact tL_contact = arrayList2.get(i2);
                if (tL_contact != null && (user = messagesController.getUser(Long.valueOf(tL_contact.user_id))) != null && ((z || !user.bot) && !UserObject.isService(user.id) && !UserObject.isUserSelf(user))) {
                    String lowerCase2 = UserObject.getUserName(user).toLowerCase();
                    String strTranslitSafe2 = AndroidUtilities.translitSafe(lowerCase2);
                    if (!lowerCase2.startsWith(lowerCase)) {
                        if (lowerCase2.contains(" " + lowerCase) || strTranslitSafe2.startsWith(strTranslitSafe)) {
                            arrayList.add(user);
                        } else {
                            if (!strTranslitSafe2.contains(" " + strTranslitSafe)) {
                                if (user.usernames != null) {
                                    for (int i3 = 0; i3 < user.usernames.size(); i3++) {
                                        TLRPC.TL_username tL_username = user.usernames.get(i3);
                                        if (tL_username != null && tL_username.active) {
                                            String lowerCase3 = tL_username.username.toLowerCase();
                                            if (!lowerCase3.startsWith(lowerCase)) {
                                                if (!lowerCase3.contains("_" + lowerCase) && !lowerCase3.startsWith(strTranslitSafe)) {
                                                    if (lowerCase3.contains(" " + strTranslitSafe)) {
                                                    }
                                                }
                                            }
                                            arrayList.add(user);
                                            break;
                                        }
                                    }
                                } else {
                                    String str2 = user.username;
                                    if (str2 != null) {
                                        String lowerCase4 = str2.toLowerCase();
                                        if (!lowerCase4.startsWith(lowerCase)) {
                                            if (lowerCase4.contains("_" + lowerCase) || lowerCase4.startsWith(strTranslitSafe)) {
                                                arrayList.add(user);
                                            } else {
                                                if (lowerCase4.contains(" " + strTranslitSafe)) {
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        callback.run(arrayList);
    }

    public static void searchChats(final long j, int i, String str, int i2, final Utilities.Callback<List<TLRPC.InputPeer>> callback) {
        final MessagesController messagesController = MessagesController.getInstance(UserConfig.selectedAccount);
        ConnectionsManager connectionsManager = ConnectionsManager.getInstance(UserConfig.selectedAccount);
        TLRPC.TL_contacts_search tL_contacts_search = new TLRPC.TL_contacts_search();
        tL_contacts_search.f861q = str;
        tL_contacts_search.limit = 50;
        connectionsManager.sendRequest(tL_contacts_search, new RequestDelegate() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda19
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                BoostRepository.$r8$lambda$ZnykXPL35aKqFW_qp4dFSjG_3E0(messagesController, j, callback, tLObject, tL_error);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$ZnykXPL35aKqFW_qp4dFSjG_3E0(MessagesController messagesController, long j, final Utilities.Callback callback, TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tLObject instanceof TLRPC.TL_contacts_found) {
            TLRPC.TL_contacts_found tL_contacts_found = (TLRPC.TL_contacts_found) tLObject;
            messagesController.putChats(tL_contacts_found.chats, false);
            final ArrayList arrayList = new ArrayList();
            for (int i = 0; i < tL_contacts_found.chats.size(); i++) {
                TLRPC.Chat chat = tL_contacts_found.chats.get(i);
                TLRPC.InputPeer inputPeer = MessagesController.getInputPeer(chat);
                if (chat.id != j && ChatObject.isBoostSupported(chat)) {
                    arrayList.add(inputPeer);
                }
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda36
                @Override // java.lang.Runnable
                public final void run() {
                    callback.run(arrayList);
                }
            });
        }
    }

    public static void loadChatParticipants(long j, int i, String str, int i2, int i3, final Utilities.Callback<List<TLRPC.InputPeer>> callback) {
        final MessagesController messagesController = MessagesController.getInstance(UserConfig.selectedAccount);
        ConnectionsManager connectionsManager = ConnectionsManager.getInstance(UserConfig.selectedAccount);
        TLRPC.TL_channels_getParticipants tL_channels_getParticipants = new TLRPC.TL_channels_getParticipants();
        tL_channels_getParticipants.channel = messagesController.getInputChannel(j);
        TLRPC.ChannelParticipantsFilter tL_channelParticipantsRecent = str == null ? new TLRPC.TL_channelParticipantsRecent() : new TLRPC.TL_channelParticipantsSearch();
        tL_channels_getParticipants.filter = tL_channelParticipantsRecent;
        if (str == null) {
            str = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        tL_channelParticipantsRecent.f852q = str;
        tL_channels_getParticipants.offset = i2;
        tL_channels_getParticipants.limit = i3;
        connectionsManager.sendRequest(tL_channels_getParticipants, new RequestDelegate() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda26
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda34
                    @Override // java.lang.Runnable
                    public final void run() {
                        BoostRepository.m13171$r8$lambda$WUYk7ourCJ9oJ0U0RVD3z63ZLo(tLObject, messagesController, callback);
                    }
                });
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$WUYk7o-urCJ9oJ0U0RVD3z63ZLo, reason: not valid java name */
    public static /* synthetic */ void m13171$r8$lambda$WUYk7ourCJ9oJ0U0RVD3z63ZLo(TLObject tLObject, MessagesController messagesController, Utilities.Callback callback) {
        TLRPC.User user;
        if (tLObject instanceof TLRPC.TL_channels_channelParticipants) {
            TLRPC.TL_channels_channelParticipants tL_channels_channelParticipants = (TLRPC.TL_channels_channelParticipants) tLObject;
            messagesController.putUsers(tL_channels_channelParticipants.users, false);
            messagesController.putChats(tL_channels_channelParticipants.chats, false);
            long clientUserId = UserConfig.getInstance(UserConfig.selectedAccount).getClientUserId();
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < tL_channels_channelParticipants.participants.size(); i++) {
                TLRPC.Peer peer = tL_channels_channelParticipants.participants.get(i).peer;
                if (peer != null && MessageObject.getPeerId(peer) != clientUserId && (user = messagesController.getUser(Long.valueOf(peer.user_id))) != null && !UserObject.isDeleted(user) && !user.bot) {
                    arrayList.add(messagesController.getInputPeer(peer));
                }
            }
            callback.run(arrayList);
        }
    }

    public static void checkGiftCode(String str, final Utilities.Callback<TLRPC.TL_payments_checkedGiftCode> callback, final Utilities.Callback<TLRPC.TL_error> callback2) {
        ConnectionsManager connectionsManager = ConnectionsManager.getInstance(UserConfig.selectedAccount);
        final MessagesController messagesController = MessagesController.getInstance(UserConfig.selectedAccount);
        TLRPC.TL_payments_checkGiftCode tL_payments_checkGiftCode = new TLRPC.TL_payments_checkGiftCode();
        tL_payments_checkGiftCode.slug = str;
        connectionsManager.sendRequest(tL_payments_checkGiftCode, new RequestDelegate() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda8
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda12
                    @Override // java.lang.Runnable
                    public final void run() {
                        BoostRepository.$r8$lambda$C4jQG5DhGfHGAkCMZQkFcRhfFTU(tLObject, messagesController, callback, callback, tL_error);
                    }
                });
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$C4jQG5DhGfHGAkCMZQkFcRhfFTU(TLObject tLObject, MessagesController messagesController, Utilities.Callback callback, Utilities.Callback callback2, TLRPC.TL_error tL_error) {
        if (tLObject instanceof TLRPC.TL_payments_checkedGiftCode) {
            TLRPC.TL_payments_checkedGiftCode tL_payments_checkedGiftCode = (TLRPC.TL_payments_checkedGiftCode) tLObject;
            messagesController.putChats(tL_payments_checkedGiftCode.chats, false);
            messagesController.putUsers(tL_payments_checkedGiftCode.users, false);
            callback.run(tL_payments_checkedGiftCode);
        }
        callback2.run(tL_error);
    }

    public static void applyGiftCode(String str, final Utilities.Callback<Void> callback, final Utilities.Callback<TLRPC.TL_error> callback2) {
        ConnectionsManager connectionsManager = ConnectionsManager.getInstance(UserConfig.selectedAccount);
        TLRPC.TL_payments_applyGiftCode tL_payments_applyGiftCode = new TLRPC.TL_payments_applyGiftCode();
        tL_payments_applyGiftCode.slug = str;
        connectionsManager.sendRequest(tL_payments_applyGiftCode, new RequestDelegate() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda18
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda24
                    @Override // java.lang.Runnable
                    public final void run() {
                        BoostRepository.m13170$r8$lambda$Tcbho3VyDg1WkbTTbUJuHfETs(tL_error, callback, callback);
                    }
                });
            }
        }, 2);
    }

    /* JADX INFO: renamed from: $r8$lambda$T-cbho3VyDg1-WkbTTbUJuHfETs, reason: not valid java name */
    public static /* synthetic */ void m13170$r8$lambda$Tcbho3VyDg1WkbTTbUJuHfETs(TLRPC.TL_error tL_error, Utilities.Callback callback, Utilities.Callback callback2) {
        if (tL_error != null) {
            callback.run(tL_error);
        } else {
            callback2.run(null);
        }
    }

    public static void getGiveawayInfo(MessageObject messageObject, final Utilities.Callback<TLRPC.payments_GiveawayInfo> callback, final Utilities.Callback<TLRPC.TL_error> callback2) {
        ConnectionsManager connectionsManager = ConnectionsManager.getInstance(UserConfig.selectedAccount);
        MessagesController messagesController = MessagesController.getInstance(UserConfig.selectedAccount);
        TLRPC.TL_payments_getGiveawayInfo tL_payments_getGiveawayInfo = new TLRPC.TL_payments_getGiveawayInfo();
        tL_payments_getGiveawayInfo.msg_id = messageObject.getId();
        tL_payments_getGiveawayInfo.peer = messagesController.getInputPeer(MessageObject.getPeerId(messageObject.messageOwner.peer_id));
        connectionsManager.sendRequest(tL_payments_getGiveawayInfo, new RequestDelegate() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda10
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda13
                    @Override // java.lang.Runnable
                    public final void run() {
                        BoostRepository.$r8$lambda$6mIo4ZzVe3n_3CBwnwUk9qDXvKQ(tL_error, callback, tLObject, callback);
                    }
                });
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$6mIo4ZzVe3n_3CBwnwUk9qDXvKQ(TLRPC.TL_error tL_error, Utilities.Callback callback, TLObject tLObject, Utilities.Callback callback2) {
        if (tL_error != null) {
            callback.run(tL_error);
        } else if (tLObject instanceof TLRPC.payments_GiveawayInfo) {
            callback2.run((TLRPC.payments_GiveawayInfo) tLObject);
        }
    }

    public static void getMyBoosts(final Utilities.Callback<TL_stories.TL_premium_myBoosts> callback, final Utilities.Callback<TLRPC.TL_error> callback2) {
        ConnectionsManager connectionsManager = ConnectionsManager.getInstance(UserConfig.selectedAccount);
        final MessagesController messagesController = MessagesController.getInstance(UserConfig.selectedAccount);
        connectionsManager.sendRequest(new TL_stories.TL_premium_getMyBoosts(), new RequestDelegate() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda5
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda9
                    @Override // java.lang.Runnable
                    public final void run() {
                        BoostRepository.m13166$r8$lambda$AYphyHq7F1OpltBjRDX6Xs4vps(tL_error, callback, tLObject, messagesController, callback);
                    }
                });
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$AYphyHq7F1OpltBjRDX6X-s4vps, reason: not valid java name */
    public static /* synthetic */ void m13166$r8$lambda$AYphyHq7F1OpltBjRDX6Xs4vps(TLRPC.TL_error tL_error, Utilities.Callback callback, TLObject tLObject, MessagesController messagesController, Utilities.Callback callback2) {
        if (tL_error != null) {
            callback.run(tL_error);
        } else if (tLObject instanceof TL_stories.TL_premium_myBoosts) {
            TL_stories.TL_premium_myBoosts tL_premium_myBoosts = (TL_stories.TL_premium_myBoosts) tLObject;
            messagesController.putUsers(tL_premium_myBoosts.users, false);
            messagesController.putChats(tL_premium_myBoosts.chats, false);
            callback2.run(tL_premium_myBoosts);
        }
    }

    public static void applyBoost(long j, List<Integer> list, final Utilities.Callback<TL_stories.TL_premium_myBoosts> callback, final Utilities.Callback<TLRPC.TL_error> callback2) {
        ConnectionsManager connectionsManager = ConnectionsManager.getInstance(UserConfig.selectedAccount);
        final MessagesController messagesController = MessagesController.getInstance(UserConfig.selectedAccount);
        TL_stories.TL_premium_applyBoost tL_premium_applyBoost = new TL_stories.TL_premium_applyBoost();
        tL_premium_applyBoost.peer = messagesController.getInputPeer(-j);
        tL_premium_applyBoost.flags |= 1;
        tL_premium_applyBoost.slots.addAll(list);
        connectionsManager.sendRequest(tL_premium_applyBoost, new RequestDelegate() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda0
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostRepository$$ExternalSyntheticLambda6
                    @Override // java.lang.Runnable
                    public final void run() {
                        BoostRepository.$r8$lambda$01l9JSNrUwLbKPMPxlNeMSAZxK8(tL_error, callback, tLObject, messagesController, callback);
                    }
                });
            }
        }, 66);
    }

    public static /* synthetic */ void $r8$lambda$01l9JSNrUwLbKPMPxlNeMSAZxK8(TLRPC.TL_error tL_error, Utilities.Callback callback, TLObject tLObject, MessagesController messagesController, Utilities.Callback callback2) {
        if (tL_error != null) {
            callback.run(tL_error);
        } else if (tLObject instanceof TL_stories.TL_premium_myBoosts) {
            TL_stories.TL_premium_myBoosts tL_premium_myBoosts = (TL_stories.TL_premium_myBoosts) tLObject;
            messagesController.putUsers(tL_premium_myBoosts.users, false);
            messagesController.putChats(tL_premium_myBoosts.chats, false);
            callback2.run(tL_premium_myBoosts);
        }
    }
}
