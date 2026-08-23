package org.telegram.p029ui.bots;

import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.messenger.browser.Browser;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.BottomSheetTabsOverlay;
import org.telegram.p029ui.ChatActivity;
import org.telegram.p029ui.Components.SimpleFloatPropertyCompat;
import org.telegram.p029ui.LaunchActivity;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.p028tl.TL_bots;

/* JADX INFO: loaded from: classes7.dex */
public abstract class BotWebViewAttachedSheet implements NotificationCenter.NotificationCenterDelegate, BaseFragment.AttachedSheet, BottomSheetTabsOverlay.Sheet {
    private static final SimpleFloatPropertyCompat ACTION_BAR_TRANSITION_PROGRESS_VALUE = new SimpleFloatPropertyCompat("actionBarTransitionProgress", new SimpleFloatPropertyCompat.Getter() { // from class: org.telegram.ui.bots.BotWebViewAttachedSheet$$ExternalSyntheticLambda0
        @Override // org.telegram.ui.Components.SimpleFloatPropertyCompat.Getter
        public final float get(Object obj) {
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(obj);
            return BotWebViewAttachedSheet.$r8$lambda$2ljsgWWd0z2DS7mi0mN7h8I8ujA(null);
        }
    }, new SimpleFloatPropertyCompat.Setter() { // from class: org.telegram.ui.bots.BotWebViewAttachedSheet$$ExternalSyntheticLambda1
        @Override // org.telegram.ui.Components.SimpleFloatPropertyCompat.Setter
        public final void set(Object obj, float f) {
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(obj);
            BotWebViewAttachedSheet.$r8$lambda$frEEu6okCrK_l1W85skt8JpfieA(null, f);
        }
    }).setMultiplier(100.0f);

    public static /* synthetic */ float $r8$lambda$2ljsgWWd0z2DS7mi0mN7h8I8ujA(BotWebViewAttachedSheet botWebViewAttachedSheet) {
        throw null;
    }

    public static /* synthetic */ void $r8$lambda$frEEu6okCrK_l1W85skt8JpfieA(BotWebViewAttachedSheet botWebViewAttachedSheet, float f) {
        throw null;
    }

    public static boolean hasPrivacyCommand(TLRPC.UserFull userFull) {
        TL_bots.BotInfo botInfo;
        if (userFull == null || (botInfo = userFull.bot_info) == null) {
            return false;
        }
        if (botInfo.privacy_policy_url != null) {
            return true;
        }
        ArrayList<TLRPC.TL_botCommand> arrayList = botInfo.commands;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            TLRPC.TL_botCommand tL_botCommand = arrayList.get(i);
            i++;
            if ("privacy".equals(tL_botCommand.command)) {
                return true;
            }
        }
        return false;
    }

    public static boolean openPrivacy(final int i, final long j) {
        TL_bots.BotInfo botInfo;
        TLRPC.UserFull userFull = MessagesController.getInstance(i).getUserFull(j);
        if (userFull == null || (botInfo = userFull.bot_info) == null) {
            return false;
        }
        String string = botInfo.privacy_policy_url;
        if (string == null && !hasPrivacyCommand(userFull)) {
            string = LocaleController.getString(C2888R.string.BotDefaultPrivacyPolicy);
        }
        if (string != null) {
            Browser.openUrl(ApplicationLoader.applicationContext, string);
            return false;
        }
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment == null) {
            return false;
        }
        if (!(safeLastFragment instanceof ChatActivity) || ((ChatActivity) safeLastFragment).getDialogId() != j) {
            safeLastFragment.presentFragment(ChatActivity.m1239of(j));
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.bots.BotWebViewAttachedSheet$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                SendMessagesHelper.getInstance(i).sendMessage(SendMessagesHelper.SendMessageParams.m1175of("/privacy", j, null, null, null, false, null, null, null, true, 0, 0, null, false));
            }
        }, 150L);
        return true;
    }
}
