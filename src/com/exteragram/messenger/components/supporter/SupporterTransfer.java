package com.exteragram.messenger.components.supporter;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.api.ApiController;
import com.exteragram.messenger.badges.BadgesController;
import com.exteragram.messenger.utils.chats.ChatUtils;
import com.exteragram.messenger.utils.ui.AccountsUiHelper;
import java.text.DateFormat;
import java.util.Date;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
import java.util.function.IntPredicate;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.browser.Browser;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.ItemOptions;

/* JADX INFO: loaded from: classes4.dex */
public abstract class SupporterTransfer {
    public static boolean canTransfer(int i) {
        TLRPC.User currentUser = UserConfig.getInstance(i).getCurrentUser();
        if (currentUser == null) {
            return false;
        }
        BadgesController badgesController = BadgesController.INSTANCE;
        return badgesController.isSupporter(currentUser.id) && !badgesController.isDeveloper(currentUser);
    }

    public static void start(final BaseFragment baseFragment, ViewGroup viewGroup, View view, final Theme.ResourcesProvider resourcesProvider, final Runnable runnable) {
        final Activity parentActivity = baseFragment.getParentActivity();
        if (parentActivity == null) {
            return;
        }
        final int currentAccount = baseFragment.getCurrentAccount();
        AccountsUiHelper.menu(baseFragment, view).container(viewGroup).gravity(1).fromBottom(true).withAddAccount(false).filter(new IntPredicate() { // from class: com.exteragram.messenger.components.supporter.SupporterTransfer$$ExternalSyntheticLambda0
            @Override // java.util.function.IntPredicate
            public final boolean test(int i) {
                return SupporterTransfer.$r8$lambda$VP3v4t6GRLtkHbOFAnnKdHUgAR8(currentAccount, i);
            }
        }).extraItems(new Consumer() { // from class: com.exteragram.messenger.components.supporter.SupporterTransfer$$ExternalSyntheticLambda1
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((ItemOptions) obj).add(C2807R.drawable.msg_link2, LocaleController.getString(C2807R.string.SupporterTransferOtherAccount), new Runnable() { // from class: com.exteragram.messenger.components.supporter.SupporterTransfer$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        SupporterTransfer.m2395$r8$lambda$TEfpZai1GXTLNNlmEaxnL4FLYY(runnable, activity);
                    }
                });
            }
        }).onSelected(new IntConsumer() { // from class: com.exteragram.messenger.components.supporter.SupporterTransfer$$ExternalSyntheticLambda2
            @Override // java.util.function.IntConsumer
            public final void accept(int i) {
                SupporterTransfer.m2397$r8$lambda$nRZSNpZd5PmrgdM2nFVKLNHmZA(runnable, baseFragment, currentAccount, resourcesProvider, i);
            }
        }).show();
    }

    public static /* synthetic */ boolean $r8$lambda$VP3v4t6GRLtkHbOFAnnKdHUgAR8(int i, int i2) {
        return (i2 == i || UserConfig.getInstance(i2).getCurrentUser() == null || BadgesController.INSTANCE.isSupporter(UserConfig.getInstance(i2).getClientUserId())) ? false : true;
    }

    /* JADX INFO: renamed from: $r8$lambda$TEfpZai1GXTLNNlmEax-nL4FLYY, reason: not valid java name */
    public static /* synthetic */ void m2395$r8$lambda$TEfpZai1GXTLNNlmEaxnL4FLYY(Runnable runnable, Activity activity) {
        runnable.run();
        Browser.openUrl(activity, "https://t.me/" + ((String) ExteraConfig.getApiBotInfo().second) + "?start=transfer");
    }

    /* JADX INFO: renamed from: $r8$lambda$nRZSNp-Zd5PmrgdM2nFVKLNHmZA, reason: not valid java name */
    public static /* synthetic */ void m2397$r8$lambda$nRZSNpZd5PmrgdM2nFVKLNHmZA(Runnable runnable, BaseFragment baseFragment, int i, Theme.ResourcesProvider resourcesProvider, int i2) {
        runnable.run();
        confirm(baseFragment, i, i2, resourcesProvider);
    }

    private static void confirm(final BaseFragment baseFragment, final int i, final int i2, final Theme.ResourcesProvider resourcesProvider) {
        TLRPC.User currentUser = UserConfig.getInstance(i2).getCurrentUser();
        Integer number = BadgesController.INSTANCE.getNumber(UserConfig.getInstance(i).getClientUserId());
        String number2 = number != null ? BadgesController.formatNumber(number.intValue()) : _UrlKt.FRAGMENT_ENCODE_SET;
        AlertDialog.Builder builder = new AlertDialog.Builder(baseFragment.getParentActivity(), resourcesProvider);
        builder.setTitle(LocaleController.getString(C2807R.string.SupporterTransferTitle));
        builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString(C2807R.string.SupporterTransferConfirm, number2, UserObject.getUserName(currentUser))));
        builder.setPositiveButton(LocaleController.getString(C2807R.string.Gift2TransferDo), new AlertDialog.OnButtonClickListener() { // from class: com.exteragram.messenger.components.supporter.SupporterTransfer$$ExternalSyntheticLambda3
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i3) {
                SupporterTransfer.transfer(baseFragment, i, i2, resourcesProvider);
            }
        });
        builder.setNegativeButton(LocaleController.getString(C2807R.string.Cancel), null);
        AlertDialog alertDialogCreate = builder.create();
        baseFragment.showDialog(alertDialogCreate);
        View button = alertDialogCreate.getButton(-1);
        if (button instanceof TextView) {
            ((TextView) button).setTextColor(Theme.getColor(Theme.key_text_RedBold, resourcesProvider));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void transfer(final BaseFragment baseFragment, final int i, final int i2, Theme.ResourcesProvider resourcesProvider) {
        final AlertDialog alertDialog = new AlertDialog(baseFragment.getParentActivity(), 3, resourcesProvider);
        alertDialog.setCanCancel(false);
        alertDialog.showDelayed(300L);
        ChatUtils.getInstance(i).sendBotRequest("transfer_init", false, new Utilities.Callback() { // from class: com.exteragram.messenger.components.supporter.SupporterTransfer$$ExternalSyntheticLambda5
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.components.supporter.SupporterTransfer$$ExternalSyntheticLambda6
                    @Override // java.lang.Runnable
                    public final void run() {
                        SupporterTransfer.$r8$lambda$5hXxFdVHYmWfSmMDFyeCiuSP180(str, alertDialog, baseFragment, i, i);
                    }
                });
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$5hXxFdVHYmWfSmMDFyeCiuSP180(String str, final AlertDialog alertDialog, final BaseFragment baseFragment, final int i, final int i2) {
        if (str == null || !str.startsWith("token:")) {
            alertDialog.dismiss();
            showResult(baseFragment, str);
        } else {
            ChatUtils.getInstance(i).sendBotRequest("transfer_claim ".concat(str.substring(6)), false, new Utilities.Callback() { // from class: com.exteragram.messenger.components.supporter.SupporterTransfer$$ExternalSyntheticLambda7
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.components.supporter.SupporterTransfer$$ExternalSyntheticLambda8
                        @Override // java.lang.Runnable
                        public final void run() {
                            SupporterTransfer.m2394$r8$lambda$C_NdyAwzynq2QbQCd2Zd7rY3bs(alertDialog, str, baseFragment, i, i);
                        }
                    });
                }
            });
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$C_NdyAwzynq2QbQCd2Zd-7rY3bs, reason: not valid java name */
    public static /* synthetic */ void m2394$r8$lambda$C_NdyAwzynq2QbQCd2Zd7rY3bs(AlertDialog alertDialog, String str, BaseFragment baseFragment, int i, int i2) {
        alertDialog.dismiss();
        if (!"ok".equals(str)) {
            showResult(baseFragment, str);
            return;
        }
        ApiController.refreshProfiles(UserConfig.getInstance(i).getClientUserId(), UserConfig.getInstance(i2).getClientUserId());
        if (baseFragment.isFinished) {
            return;
        }
        BulletinFactory.of(baseFragment).createSimpleBulletin(C2807R.raw.contact_check, LocaleController.formatString(C2807R.string.SupporterTransferDone, UserObject.getUserName(UserConfig.getInstance(i2).getCurrentUser()))).show();
    }

    private static void showResult(BaseFragment baseFragment, String str) {
        String string;
        if (baseFragment.isFinished) {
            return;
        }
        long jLongValue = (str == null || !str.startsWith("cooldown:")) ? 0L : Utilities.parseLong(str.substring(9)).longValue();
        if (jLongValue > 0) {
            string = LocaleController.formatString(C2807R.string.SupporterTransferCooldown, DateFormat.getDateInstance(2, LocaleController.getInstance().getCurrentLocale()).format(new Date(jLongValue * 1000)));
        } else if ("target_not_eligible".equals(str)) {
            string = LocaleController.getString(C2807R.string.SupporterTransferTargetHasBadge);
        } else {
            string = LocaleController.getString(C2807R.string.SupporterTransferFailed);
        }
        BulletinFactory.of(baseFragment).createSimpleBulletin(C2807R.raw.error, string).show();
    }
}
