package org.telegram.messenger;

import java.util.HashSet;
import org.telegram.messenger.support.LongSparseLongArray;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.Components.AlertsCreator;
import org.telegram.ui.LaunchActivity;
import org.telegram.ui.bots.BotWebViewSheet;
import org.telegram.ui.bots.WebViewRequestProps;

/* JADX INFO: loaded from: classes5.dex */
public class BotGuardHelper extends BaseController {
    private static volatile BotGuardHelper[] Instance = new BotGuardHelper[16];
    private final LongSparseLongArray queryIdToBotId;

    public static /* synthetic */ void $r8$lambda$lHMHGpv_N9TnvvMs9VvUn2h0FRM() {
    }

    private BotGuardHelper(int i) {
        super(i);
        this.queryIdToBotId = new LongSparseLongArray();
    }

    public void openGuardBotWebApp(long j, long j2, long j3) {
        openGuardBotWebApp(j, j2, j3, false);
    }

    private void openGuardBotWebApp(final long j, final long j2, final long j3, boolean z) {
        BaseFragment lastFragment;
        if (LaunchActivity.instance == null || (lastFragment = LaunchActivity.getLastFragment()) == null) {
            return;
        }
        TLRPC.User user = getMessagesController().getUser(Long.valueOf(j2));
        if (!z) {
            if (SharedPrefsHelper.isWebViewConfirmShown(this.currentAccount, j2) || getMessagesController().whitelistedBots.contains(Long.valueOf(j2))) {
                openGuardBotWebApp(j, j2, j3, true);
                return;
            } else {
                AlertsCreator.createBotLaunchAlert(lastFragment, user, new Runnable() { // from class: org.telegram.messenger.BotGuardHelper$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$openGuardBotWebApp$0(j, j2, j3);
                    }
                }, new Runnable() { // from class: org.telegram.messenger.BotGuardHelper$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        BotGuardHelper.$r8$lambda$lHMHGpv_N9TnvvMs9VvUn2h0FRM();
                    }
                });
                return;
            }
        }
        this.queryIdToBotId.put(j3, j2);
        BaseFragment lastFragment2 = LaunchActivity.getLastFragment();
        WebViewRequestProps webViewRequestPropsOf = WebViewRequestProps.of(this.currentAccount, j, j2, null, null, 5, 0, 0L, false, null, false, null, null, 0, false, false);
        webViewRequestPropsOf.queryId = j3;
        BotWebViewSheet botWebViewSheet = new BotWebViewSheet(LaunchActivity.instance, null);
        botWebViewSheet.setDefaultFullsize(false);
        botWebViewSheet.setNeedsContext(true);
        botWebViewSheet.setParentActivity(LaunchActivity.instance);
        botWebViewSheet.requestWebView(lastFragment2, webViewRequestPropsOf);
        botWebViewSheet.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openGuardBotWebApp$0(long j, long j2, long j3) {
        openGuardBotWebApp(j, j2, j3, true);
        SharedPrefsHelper.setWebViewConfirmShown(this.currentAccount, j2, true);
    }

    public void closeGuardBotWebApp(long j, long j2, TLRPC.JoinChatBotResult joinChatBotResult) {
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.guardBotDecisionResult, new GuardBotDecisionResultNotification(j, this.queryIdToBotId.get(j2, 0L), j2, joinChatBotResult));
        HashSet<BotWebViewSheet> hashSet = BotWebViewSheet.activeSheets;
        if (hashSet != null) {
            for (BotWebViewSheet botWebViewSheet : hashSet) {
                if (botWebViewSheet.isGuardBotTab(j, j2)) {
                    botWebViewSheet.lambda$openOptions$43();
                    return;
                }
            }
        }
    }

    public static class GuardBotDecisionResultNotification {
        public final long dialogId;
        public final long guardBotId;
        public final long queryId;
        public final TLRPC.JoinChatBotResult result;

        public GuardBotDecisionResultNotification(long j, long j2, long j3, TLRPC.JoinChatBotResult joinChatBotResult) {
            this.dialogId = j;
            this.guardBotId = j2;
            this.queryId = j3;
            this.result = joinChatBotResult;
        }
    }

    public static BotGuardHelper getInstance(int i) {
        BotGuardHelper botGuardHelper;
        BotGuardHelper botGuardHelper2 = Instance[i];
        if (botGuardHelper2 != null) {
            return botGuardHelper2;
        }
        synchronized (BotForumHelper.class) {
            try {
                botGuardHelper = Instance[i];
                if (botGuardHelper == null) {
                    BotGuardHelper[] botGuardHelperArr = Instance;
                    BotGuardHelper botGuardHelper3 = new BotGuardHelper(i);
                    botGuardHelperArr[i] = botGuardHelper3;
                    botGuardHelper = botGuardHelper3;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return botGuardHelper;
    }
}
