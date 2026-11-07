package com.exteragram.messenger.security;

import android.app.Activity;
import android.app.Dialog;
import android.util.SparseIntArray;
import java.util.HashSet;
import java.util.concurrent.atomic.AtomicBoolean;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_account;
import org.telegram.tgnet.tl.TL_payments;
import org.telegram.tgnet.tl.TL_phone;
import org.telegram.tgnet.tl.TL_stars;
import org.telegram.tgnet.tl.TL_wallet;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.LaunchActivity;

/* JADX INFO: loaded from: classes4.dex */
public final class SensitiveRequestConfirmation {
    private static final SparseIntArray CATEGORIES;
    private static final HashSet<Integer> MERGEABLE;
    private static SensitiveRequestSheet currentSheet;

    private static native int[] native_protectedConstructors();

    /* JADX INFO: Access modifiers changed from: private */
    public static native void native_resolve(int i, int i2, long j, boolean z);

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        CATEGORIES = sparseIntArray;
        HashSet<Integer> hashSet = new HashSet<>();
        MERGEABLE = hashSet;
        sparseIntArray.put(TL_stars.transferStarGift.constructor, C2807R.string.ProfileGifts);
        sparseIntArray.put(TL_stars.updateStarGiftPrice.constructor, C2807R.string.ProfileGifts);
        sparseIntArray.put(TL_stars.convertStarGift.constructor, C2807R.string.ProfileGifts);
        sparseIntArray.put(TL_stars.upgradeStarGift.constructor, C2807R.string.ProfileGifts);
        sparseIntArray.put(TL_stars.getStarGiftWithdrawalUrl.constructor, C2807R.string.ProfileGifts);
        sparseIntArray.put(TL_stars.withdrawStarGift.constructor, C2807R.string.ProfileGifts);
        sparseIntArray.put(TL_stars.deleteStarGift.constructor, C2807R.string.ProfileGifts);
        sparseIntArray.put(TL_stars.craftStarGift.constructor, C2807R.string.ProfileGifts);
        sparseIntArray.put(TL_stars.TL_payments_sendStarsForm.constructor, C2807R.string.SensitiveRequestCategoryPayments);
        sparseIntArray.put(TLRPC.TL_payments_sendPaymentForm.constructor, C2807R.string.SensitiveRequestCategoryPayments);
        sparseIntArray.put(TLRPC.TL_messages_sendPaidReaction.constructor, C2807R.string.SensitiveRequestCategoryPayments);
        sparseIntArray.put(TL_stars.TL_fulfillStarsSubscription.constructor, C2807R.string.SensitiveRequestCategoryPayments);
        sparseIntArray.put(TL_stars.TL_changeStarsSubscription.constructor, C2807R.string.SensitiveRequestCategoryPayments);
        sparseIntArray.put(TLRPC.TL_auth_acceptLoginToken.constructor, C2807R.string.SecurityTitle);
        sparseIntArray.put(TLRPC.TL_auth_exportAuthorization.constructor, C2807R.string.SecurityTitle);
        sparseIntArray.put(TLRPC.TL_auth_resetAuthorizations.constructor, C2807R.string.SecurityTitle);
        sparseIntArray.put(TL_account.resetAuthorization.constructor, C2807R.string.SecurityTitle);
        sparseIntArray.put(TL_account.resetWebAuthorization.constructor, C2807R.string.SecurityTitle);
        sparseIntArray.put(TL_account.resetWebAuthorizations.constructor, C2807R.string.SecurityTitle);
        sparseIntArray.put(TL_account.deleteAccount.constructor, C2807R.string.SecurityTitle);
        sparseIntArray.put(TL_account.updatePasswordSettings.constructor, C2807R.string.SecurityTitle);
        sparseIntArray.put(TL_account.resetPassword.constructor, C2807R.string.SecurityTitle);
        sparseIntArray.put(TL_account.changePhone.constructor, C2807R.string.SecurityTitle);
        sparseIntArray.put(TL_account.updateConnectedBot.constructor, C2807R.string.SecurityTitle);
        sparseIntArray.put(TL_account.acceptAuthorization.constructor, C2807R.string.SecurityTitle);
        sparseIntArray.put(TLRPC.TL_channels_editCreator.constructor, C2807R.string.SensitiveRequestCategoryChatManagement);
        sparseIntArray.put(TLRPC.TL_channels_editAdmin.constructor, C2807R.string.SensitiveRequestCategoryChatManagement);
        sparseIntArray.put(TLRPC.TL_channels_deleteChannel.constructor, C2807R.string.SensitiveRequestCategoryChatManagement);
        sparseIntArray.put(TLRPC.TL_channels_updateUsername.constructor, C2807R.string.SensitiveRequestCategoryChatManagement);
        sparseIntArray.put(TLRPC.TL_channels_toggleUsername.constructor, C2807R.string.SensitiveRequestCategoryChatManagement);
        sparseIntArray.put(TL_account.updateUsername.constructor, C2807R.string.SecurityTitle);
        sparseIntArray.put(TL_account.toggleUsername.constructor, C2807R.string.SecurityTitle);
        sparseIntArray.put(TL_account.setAuthorizationTTL.constructor, C2807R.string.SecurityTitle);
        sparseIntArray.put(TLRPC.TL_payments_getStarsRevenueWithdrawalUrl.constructor, C2807R.string.SensitiveRequestCategoryPayments);
        sparseIntArray.put(TL_wallet.sendTransfer.constructor, C2807R.string.WalletTitle);
        sparseIntArray.put(TL_wallet.exportSecretPhrase.constructor, C2807R.string.WalletTitle);
        sparseIntArray.put(TL_wallet.replaceWallet.constructor, C2807R.string.WalletTitle);
        sparseIntArray.put(TL_wallet.enableBackup.constructor, C2807R.string.WalletTitle);
        sparseIntArray.put(TL_wallet.disableBackup.constructor, C2807R.string.WalletTitle);
        sparseIntArray.put(TL_wallet.tonConnectSubmitConnectResult.constructor, C2807R.string.WalletTitle);
        sparseIntArray.put(TL_wallet.tonConnectSubmitResponse.constructor, C2807R.string.WalletTitle);
        sparseIntArray.put(TLRPC.TL_messages_sendMessage.constructor, C2807R.string.SensitiveRequestCategoryPayments);
        sparseIntArray.put(TLRPC.TL_messages_sendMedia.constructor, C2807R.string.SensitiveRequestCategoryPayments);
        sparseIntArray.put(TLRPC.TL_messages_forwardMessages.constructor, C2807R.string.SensitiveRequestCategoryPayments);
        sparseIntArray.put(TLRPC.TL_messages_sendMultiMedia.constructor, C2807R.string.SensitiveRequestCategoryPayments);
        sparseIntArray.put(TLRPC.TL_messages_sendInlineBotResult.constructor, C2807R.string.SensitiveRequestCategoryPayments);
        sparseIntArray.put(TLRPC.TL_channels_searchPosts.constructor, C2807R.string.SensitiveRequestCategoryPayments);
        sparseIntArray.put(TL_phone.sendGroupCallMessage.constructor, C2807R.string.SensitiveRequestCategoryPayments);
        sparseIntArray.put(TL_payments.TL_sendStarGiftOffer.constructor, C2807R.string.ProfileGifts);
        hashSet.add(Integer.valueOf(TLRPC.TL_messages_sendPaidReaction.constructor));
        hashSet.add(Integer.valueOf(TLRPC.TL_messages_sendMessage.constructor));
        hashSet.add(Integer.valueOf(TLRPC.TL_messages_sendMedia.constructor));
        hashSet.add(Integer.valueOf(TLRPC.TL_messages_sendMultiMedia.constructor));
        hashSet.add(Integer.valueOf(TLRPC.TL_messages_forwardMessages.constructor));
        hashSet.add(Integer.valueOf(TLRPC.TL_messages_sendInlineBotResult.constructor));
    }

    public static void request(final int i, final int i2, final int i3, final long j, final long[] jArr, final String[] strArr, final String str) {
        final AtomicBoolean atomicBoolean = new AtomicBoolean();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.security.SensitiveRequestConfirmation$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                SensitiveRequestConfirmation.$r8$lambda$E_glLP63pazgHXUDMz3wK0626vM(i, i2, j, atomicBoolean, i3, jArr, strArr, str);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$E_glLP63pazgHXUDMz3wK0626vM(final int i, final int i2, final long j, final AtomicBoolean atomicBoolean, int i3, long[] jArr, String[] strArr, String str) {
        try {
            BaseFragment lastFragment = LaunchActivity.getLastFragment();
            Activity parentActivity = lastFragment != null ? lastFragment.getParentActivity() : null;
            if (parentActivity != null && !parentActivity.isFinishing()) {
                Utilities.Callback<Boolean> callback = new Utilities.Callback() { // from class: com.exteragram.messenger.security.SensitiveRequestConfirmation$$ExternalSyntheticLambda1
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        SensitiveRequestConfirmation.m3291$r8$lambda$QDdh97xMHcfKYDO3nK96CTiM(i, i2, j, atomicBoolean, (Boolean) obj);
                    }
                };
                if (currentSheet != null && MERGEABLE.contains(Integer.valueOf(i3)) && currentSheet.merge(i, i3, jArr, strArr, callback)) {
                    return;
                }
                SensitiveRequestSheet sensitiveRequestSheet = new SensitiveRequestSheet(parentActivity, lastFragment.getResourceProvider(), i, i3, getCategoryText(i3), str, jArr, strArr, callback);
                currentSheet = sensitiveRequestSheet;
                sensitiveRequestSheet.show();
                return;
            }
            resolve(i, i2, j, false, atomicBoolean);
        } catch (Exception e) {
            FileLog.m1040e(e);
            resolve(i, i2, j, false, atomicBoolean);
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$-QDdh97xMH-cf-KYDO3nK96CTiM, reason: not valid java name */
    public static /* synthetic */ void m3291$r8$lambda$QDdh97xMHcfKYDO3nK96CTiM(int i, int i2, long j, AtomicBoolean atomicBoolean, Boolean bool) {
        SensitiveRequestSheet sensitiveRequestSheet = currentSheet;
        if (sensitiveRequestSheet != null && sensitiveRequestSheet.isAnswered()) {
            currentSheet = null;
        }
        resolve(i, i2, j, bool.booleanValue(), atomicBoolean);
    }

    public static void onDialogShown(Dialog dialog) {
        SensitiveRequestSheet sensitiveRequestSheet = currentSheet;
        if (sensitiveRequestSheet == null || sensitiveRequestSheet == dialog) {
            return;
        }
        sensitiveRequestSheet.bringToFront();
    }

    private static void resolve(final int i, final int i2, final long j, final boolean z, AtomicBoolean atomicBoolean) {
        if (atomicBoolean.compareAndSet(false, true)) {
            Utilities.stageQueue.postRunnable(new Runnable() { // from class: com.exteragram.messenger.security.SensitiveRequestConfirmation$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    SensitiveRequestConfirmation.native_resolve(i, i2, j, z);
                }
            });
        }
    }

    private static String getCategoryText(int i) {
        int i2 = CATEGORIES.get(i, 0);
        if (i2 != 0) {
            return LocaleController.getString(i2);
        }
        return null;
    }
}
