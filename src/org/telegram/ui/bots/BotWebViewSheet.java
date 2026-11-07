package org.telegram.ui.bots;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.ContextWrapper;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.Pair;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import androidx.core.graphics.Insets;
import androidx.core.math.MathUtils;
import androidx.core.util.Consumer;
import androidx.core.view.WindowInsetsCompat;
import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import com.exteragram.messenger.pillstack.ui.pills.crypto.RatePill$$ExternalSyntheticLambda1;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import okhttp3.internal.url._UrlKt;
import org.json.JSONObject;
import org.telegram.messenger.AiTonesController$$ExternalSyntheticLambda0;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.AnimationNotificationsLocker;
import org.telegram.messenger.BotFullscreenButtons;
import org.telegram.messenger.C2665R;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.GenericProvider;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.browser.Browser;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_bots;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.ActionBarMenu;
import org.telegram.ui.ActionBar.ActionBarMenuItem;
import org.telegram.ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.BottomSheetTabDialog;
import org.telegram.ui.ActionBar.BottomSheetTabs;
import org.telegram.ui.ActionBar.BottomSheetTabsOverlay;
import org.telegram.ui.ActionBar.INavigationLayout;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.ArticleViewer;
import org.telegram.ui.ChatActivity;
import org.telegram.ui.Components.Bulletin;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.ItemOptions;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.OverlayActionBarLayoutDialog;
import org.telegram.ui.Components.PasscodeView;
import org.telegram.ui.Components.SimpleFloatPropertyCompat;
import org.telegram.ui.Components.SizeNotifierFrameLayout;
import org.telegram.ui.DialogsActivity;
import org.telegram.ui.LaunchActivity;
import org.telegram.ui.PaymentFormActivity;
import org.telegram.ui.ProfileActivity;
import org.telegram.ui.ReportBottomSheet;
import org.telegram.ui.Stars.StarsController;
import org.telegram.ui.TopicsFragment;
import org.telegram.ui.bots.BotButtons;
import org.telegram.ui.bots.BotDownloads;
import org.telegram.ui.bots.ChatAttachAlertBotWebViewLayout;
import org.telegram.ui.web.BotWebViewContainer;

/* JADX INFO: loaded from: classes3.dex */
public class BotWebViewSheet extends Dialog implements NotificationCenter.NotificationCenterDelegate, BottomSheetTabsOverlay.Sheet {
    private ActionBar actionBar;
    private int actionBarColor;
    private int actionBarColorKey;
    private boolean actionBarIsLight;
    private FrameLayout.LayoutParams actionBarLayoutParams;
    private Paint actionBarPaint;
    private Drawable actionBarShadow;
    private float actionBarTransitionProgress;
    public boolean attached;
    private boolean backButtonShown;
    private ValueAnimator backgroundColorAnimator;
    private Paint backgroundPaint;
    private BotButtons botButtons;
    private FrameLayout.LayoutParams botButtonsLayoutParams;
    private long botId;
    private BottomSheetTabs bottomTabs;
    private BottomSheetTabs.ClipTools bottomTabsClip;
    private FrameLayout bulletinContainer;
    private FrameLayout.LayoutParams bulletinContainerLayoutParams;
    private String buttonText;
    private int currentAccount;
    private TLRPC.BotApp currentWebApp;
    private boolean defaultFullsize;
    private Paint dimPaint;
    private boolean dismissed;
    private Bulletin downloadBulletin;
    private BotDownloads.DownloadBulletin downloadBulletinLayout;
    private String errorCode;
    private ArticleViewer.ErrorContainer errorContainer;
    private boolean errorShown;
    private HashMap<BotDownloads.FileDownload, ActionBarMenuSubItem> fileItems;
    private boolean forceExpnaded;
    public boolean fromTab;
    private boolean fullscreen;
    private ValueAnimator fullscreenAnimator;
    private boolean fullscreenBlur;
    private BotFullscreenButtons fullscreenButtons;
    private boolean fullscreenInProgress;
    private float fullscreenProgress;
    private float fullscreenTransitionProgress;
    private Boolean fullsize;
    private boolean hasSettings;
    private boolean ignoreLayout;
    private final Rect insets;
    private final Runnable invalidateRunnable;
    private int keyboardInset;
    private BotDownloads.FileDownload lastBulletinFile;
    private long lastSwipeTime;
    private BottomSheetTabs.WebTabData lastTab;
    private int lineColor;
    private Paint linePaint;
    private long monoforumTopicId;
    private int navBarColor;
    private final Rect navInsets;
    private boolean needCloseConfirmation;
    private boolean needsContext;
    private Utilities.Callback4<Boolean, Double, String, Double> onVerifiedAge;
    private ValueAnimator openAnimator;
    private float openedProgress;
    private ItemOptions options;
    private BotFullscreenButtons.OptionsIcon optionsIcon;
    private ActionBarMenuItem optionsItem;
    private boolean orientationLocked;
    private boolean overrideActionBarColor;
    private boolean overrideBackgroundColor;
    private Activity parentActivity;
    private PasscodeView passcodeView;
    private long peerId;
    private ActionBarMenuSubItem pinItem;
    private Runnable pollRunnable;
    private ChatAttachAlertBotWebViewLayout.WebProgressView progressView;
    private long queryId;
    private final Runnable relayoutRunnable;
    private int replyToMsgId;
    private WebViewRequestProps requestProps;
    private boolean resetOffsetY;
    private Theme.ResourcesProvider resourcesProvider;
    private BotSensors sensors;
    public boolean showExpanded;
    public float showOffsetY;
    private boolean silent;
    private SpringAnimation springAnimation;
    private boolean superDismissed;
    private ChatAttachAlertBotWebViewLayout.WebViewSwipeContainer swipeContainer;
    private int swipeContainerFromHeight;
    private int swipeContainerFromWidth;
    private FrameLayout.LayoutParams swipeContainerLayoutParams;
    Drawable verifiedDrawable;
    private Boolean wasLightStatusBar;
    private BotWebViewContainer webViewContainer;
    private WindowView windowView;
    public static HashSet<BotWebViewSheet> activeSheets = new HashSet<>();
    private static final SimpleFloatPropertyCompat<BotWebViewSheet> ACTION_BAR_TRANSITION_PROGRESS_VALUE = new SimpleFloatPropertyCompat("actionBarTransitionProgress", new SimpleFloatPropertyCompat.Getter() { // from class: org.telegram.ui.bots.BotWebViewSheet$$ExternalSyntheticLambda0
        @Override // org.telegram.ui.Components.SimpleFloatPropertyCompat.Getter
        public final float get(Object obj) {
            return ((BotWebViewSheet) obj).actionBarTransitionProgress;
        }
    }, new SimpleFloatPropertyCompat.Setter() { // from class: org.telegram.ui.bots.BotWebViewSheet$$ExternalSyntheticLambda1
        @Override // org.telegram.ui.Components.SimpleFloatPropertyCompat.Setter
        public final void set(Object obj, float f) {
            BotWebViewSheet.$r8$lambda$dhmypthlwfdi0mzcNPXCnIIwOB8((BotWebViewSheet) obj, f);
        }
    }).setMultiplier(100.0f);
    private static int shownLockedBots = 0;

    public static /* synthetic */ void $r8$lambda$m1zU1JXk5NQS_jqubrgOPHU3MyI() {
    }

    @Override // org.telegram.ui.ActionBar.BottomSheetTabsOverlay.Sheet
    public boolean hadDialog() {
        return false;
    }

    @Override // org.telegram.ui.ActionBar.BottomSheetTabsOverlay.Sheet
    public boolean setDialog(BottomSheetTabDialog bottomSheetTabDialog) {
        return false;
    }

    public void showJustAddedBulletin() {
        TLRPC.TL_attachMenuBot tL_attachMenuBot;
        final String string;
        TLRPC.User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.botId));
        ArrayList<TLRPC.TL_attachMenuBot> arrayList = MediaDataController.getInstance(this.currentAccount).getAttachMenuBots().bots;
        int size = arrayList.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                tL_attachMenuBot = null;
                break;
            }
            TLRPC.TL_attachMenuBot tL_attachMenuBot2 = arrayList.get(i);
            i++;
            tL_attachMenuBot = tL_attachMenuBot2;
            if (tL_attachMenuBot.bot_id == this.botId) {
                break;
            }
        }
        if (tL_attachMenuBot == null) {
            return;
        }
        boolean z = tL_attachMenuBot.show_in_side_menu;
        if (z && tL_attachMenuBot.show_in_attach_menu) {
            string = LocaleController.formatString(C2665R.string.BotAttachMenuShortcatAddedAttachAndSide, user.first_name);
        } else if (z) {
            string = LocaleController.formatString(C2665R.string.BotAttachMenuShortcatAddedSide, user.first_name);
        } else {
            string = LocaleController.formatString(C2665R.string.BotAttachMenuShortcatAddedAttach, user.first_name);
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.bots.BotWebViewSheet$$ExternalSyntheticLambda57
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$showJustAddedBulletin$1(string);
            }
        }, 200L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showJustAddedBulletin$1(final String str) {
        showBulletin(new Utilities.CallbackReturn() { // from class: org.telegram.ui.bots.BotWebViewSheet$$ExternalSyntheticLambda58
            @Override // org.telegram.messenger.Utilities.CallbackReturn
            public final Object run(Object obj) {
                return ((BulletinFactory) obj).createSimpleBulletin(C2665R.raw.contact_check, AndroidUtilities.replaceTags(str)).setDuration(5000);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$dhmypthlwfdi0mzcNPXCnIIwOB8(BotWebViewSheet botWebViewSheet, float f) {
        botWebViewSheet.actionBarTransitionProgress = f;
        botWebViewSheet.windowView.invalidate();
        botWebViewSheet.actionBar.setAlpha(f);
        botWebViewSheet.updateLightStatusBar();
        botWebViewSheet.updateDownloadBulletinArrow();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$6() {
        if (this.dismissed || this.queryId == 0) {
            return;
        }
        TLRPC.TL_messages_prolongWebView tL_messages_prolongWebView = new TLRPC.TL_messages_prolongWebView();
        tL_messages_prolongWebView.bot = MessagesController.getInstance(this.currentAccount).getInputUser(this.botId);
        tL_messages_prolongWebView.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(this.peerId);
        tL_messages_prolongWebView.query_id = this.queryId;
        tL_messages_prolongWebView.silent = this.silent;
        if (this.replyToMsgId != 0) {
            TLRPC.InputReplyTo inputReplyToCreateReplyInput = SendMessagesHelper.getInstance(this.currentAccount).createReplyInput(this.replyToMsgId);
            tL_messages_prolongWebView.reply_to = inputReplyToCreateReplyInput;
            if (this.monoforumTopicId != 0) {
                inputReplyToCreateReplyInput.monoforum_peer_id = MessagesController.getInstance(this.currentAccount).getInputPeer(this.monoforumTopicId);
                tL_messages_prolongWebView.reply_to.flags |= 32;
            }
            tL_messages_prolongWebView.flags |= 1;
        } else if (this.monoforumTopicId != 0) {
            TLRPC.TL_inputReplyToMonoForum tL_inputReplyToMonoForum = new TLRPC.TL_inputReplyToMonoForum();
            tL_messages_prolongWebView.reply_to = tL_inputReplyToMonoForum;
            tL_inputReplyToMonoForum.monoforum_peer_id = MessagesController.getInstance(this.currentAccount).getInputPeer(this.monoforumTopicId);
            tL_messages_prolongWebView.flags |= 1;
        }
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_messages_prolongWebView, new RequestDelegate() { // from class: org.telegram.ui.bots.BotWebViewSheet$$ExternalSyntheticLambda51
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$new$5(tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$5(TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.bots.BotWebViewSheet$$ExternalSyntheticLambda52
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$4(tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$4(TLRPC.TL_error tL_error) {
        if (this.dismissed) {
            return;
        }
        if (tL_error != null) {
            lambda$openOptions$43();
        } else {
            AndroidUtilities.runOnUIThread(this.pollRunnable, 60000L);
        }
    }

    @Override // org.telegram.ui.ActionBar.BottomSheetTabsOverlay.Sheet
    public BottomSheetTabs.WebTabData saveState() {
        BottomSheetTabs.WebTabData webTabData = new BottomSheetTabs.WebTabData();
        webTabData.actionBarColor = this.actionBarColor;
        webTabData.actionBarColorKey = this.actionBarColorKey;
        webTabData.overrideActionBarColor = this.overrideActionBarColor;
        webTabData.overrideBackgroundColor = this.overrideBackgroundColor;
        webTabData.backgroundColor = this.backgroundPaint.getColor();
        webTabData.props = this.requestProps;
        BotWebViewContainer botWebViewContainer = this.webViewContainer;
        webTabData.ready = botWebViewContainer != null && botWebViewContainer.isPageLoaded();
        webTabData.themeIsDark = Theme.isCurrentThemeDark();
        BotWebViewContainer botWebViewContainer2 = this.webViewContainer;
        webTabData.lastUrl = botWebViewContainer2 != null ? botWebViewContainer2.getUrlLoaded() : null;
        BotWebViewContainer botWebViewContainer3 = this.webViewContainer;
        webTabData.sameOrigin = botWebViewContainer3 != null && botWebViewContainer3.isBridgeRestrictedToOrigin();
        BotWebViewContainer botWebViewContainer4 = this.webViewContainer;
        webTabData.trustedOrigin = botWebViewContainer4 != null ? botWebViewContainer4.getTrustedOrigin() : null;
        ChatAttachAlertBotWebViewLayout.WebViewSwipeContainer webViewSwipeContainer = this.swipeContainer;
        webTabData.expanded = (webViewSwipeContainer != null && webViewSwipeContainer.getSwipeOffsetY() < 0.0f) || this.forceExpnaded || isFullSize() || this.fullscreen;
        webTabData.fullscreen = this.fullscreen;
        webTabData.fullscreenBlur = this.fullscreenBlur;
        Boolean bool = this.fullsize;
        webTabData.fullsize = bool == null ? this.defaultFullsize : bool.booleanValue();
        ChatAttachAlertBotWebViewLayout.WebViewSwipeContainer webViewSwipeContainer2 = this.swipeContainer;
        webTabData.expandedOffset = webViewSwipeContainer2 != null ? webViewSwipeContainer2.getOffsetY() : Float.MAX_VALUE;
        webTabData.needsContext = this.needsContext;
        webTabData.backButton = this.backButtonShown;
        webTabData.confirmDismiss = this.needCloseConfirmation;
        webTabData.settings = this.hasSettings;
        ChatAttachAlertBotWebViewLayout.WebViewSwipeContainer webViewSwipeContainer3 = this.swipeContainer;
        webTabData.allowSwipes = webViewSwipeContainer3 == null || webViewSwipeContainer3.isAllowedSwipes();
        webTabData.buttons = this.botButtons.state;
        webTabData.navigationBarColor = this.navBarColor;
        BotSensors botSensors = this.sensors;
        if (botSensors != null) {
            botSensors.pause();
        }
        webTabData.sensors = this.sensors;
        BotWebViewContainer botWebViewContainer5 = this.webViewContainer;
        BotWebViewContainer.MyWebView webView = botWebViewContainer5 == null ? null : botWebViewContainer5.getWebView();
        if (webView != null) {
            this.webViewContainer.preserveWebView();
            webTabData.webView = webView;
            BotWebViewContainer botWebViewContainer6 = this.webViewContainer;
            webTabData.proxy = botWebViewContainer6 != null ? botWebViewContainer6.getBotProxy() : null;
            webTabData.viewWidth = webView.getWidth();
            webTabData.viewHeight = webView.getHeight();
            webView.onPause();
        }
        boolean z = this.errorShown;
        webTabData.error = z;
        if (z) {
            webTabData.errorDescription = this.errorCode;
        }
        webTabData.orientationLocked = this.orientationLocked;
        this.lastTab = webTabData;
        return webTabData;
    }

    public Activity getActivity() {
        Activity ownerActivity = getOwnerActivity();
        if (ownerActivity == null) {
            ownerActivity = LaunchActivity.instance;
        }
        return ownerActivity == null ? AndroidUtilities.findActivity(getContext()) : ownerActivity;
    }

    public boolean restoreState(BaseFragment baseFragment, BottomSheetTabs.WebTabData webTabData) {
        int color;
        if (webTabData == null || webTabData.props == null) {
            return false;
        }
        this.fromTab = true;
        boolean z = webTabData.overrideBackgroundColor;
        this.overrideBackgroundColor = z;
        if (z) {
            setBackgroundColor(webTabData.backgroundColor, true, false);
        }
        if (webTabData.overrideActionBarColor) {
            color = webTabData.actionBarColor;
        } else {
            int i = webTabData.actionBarColorKey;
            if (i < 0) {
                i = Theme.key_windowBackgroundWhite;
            }
            color = Theme.getColor(i, this.resourcesProvider);
        }
        setActionBarColor(color, webTabData.overrideActionBarColor, false);
        setNavigationBarColor(webTabData.navigationBarColor, false);
        this.showExpanded = webTabData.expanded;
        this.showOffsetY = webTabData.expandedOffset;
        BotWebViewContainer botWebViewContainer = this.webViewContainer;
        boolean z2 = webTabData.backButton;
        this.backButtonShown = z2;
        botWebViewContainer.setIsBackButtonVisible(z2);
        this.swipeContainer.setAllowSwipes(webTabData.allowSwipes);
        AndroidUtilities.updateImageViewImageAnimated(this.actionBar.getBackButton(), this.backButtonShown ? C2665R.drawable.ic_ab_back : C2665R.drawable.ic_close_white);
        BotFullscreenButtons botFullscreenButtons = this.fullscreenButtons;
        if (botFullscreenButtons != null) {
            botFullscreenButtons.setBack(this.backButtonShown, false);
        }
        this.needCloseConfirmation = webTabData.confirmDismiss;
        this.fullsize = Boolean.valueOf(webTabData.fullsize);
        this.needsContext = webTabData.needsContext;
        BotSensors botSensors = webTabData.sensors;
        this.sensors = botSensors;
        if (botSensors != null) {
            botSensors.resume();
        }
        BotButtons.ButtonsState buttonsState = webTabData.buttons;
        if (buttonsState != null) {
            this.botButtons.setState(buttonsState, false);
        }
        setFullscreen(webTabData.fullscreen, false, webTabData.fullscreenBlur);
        WebViewRequestProps webViewRequestProps = webTabData.props;
        this.currentAccount = webViewRequestProps != null ? webViewRequestProps.currentAccount : UserConfig.selectedAccount;
        BotWebViewContainer.MyWebView myWebView = webTabData.webView;
        if (myWebView != null) {
            myWebView.onResume();
            this.webViewContainer.replaceWebView(this.currentAccount, webTabData.webView, webTabData.proxy, webTabData.trustedOrigin, webTabData.sameOrigin);
            this.webViewContainer.setState(webTabData.ready || webTabData.webView.isPageLoaded(), webTabData.lastUrl);
            if (Theme.isCurrentThemeDark() != webTabData.themeIsDark) {
                this.webViewContainer.notifyThemeChanged();
            }
        } else {
            webViewRequestProps.response = null;
            webViewRequestProps.responseTime = 0L;
        }
        requestWebView(baseFragment, webTabData.props);
        this.hasSettings = webTabData.settings;
        if (webTabData.error) {
            this.errorShown = true;
            createErrorContainer();
            ArticleViewer.ErrorContainer errorContainer = this.errorContainer;
            String userName = UserObject.getUserName(MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.botId)));
            String str = webTabData.errorDescription;
            this.errorCode = str;
            errorContainer.set(userName, str);
            this.errorContainer.setDark(AndroidUtilities.computePerceivedBrightness(this.backgroundPaint.getColor()) <= 0.721f, false);
            this.errorContainer.setBackgroundColor(this.backgroundPaint.getColor());
            this.errorContainer.setVisibility(0);
            this.errorContainer.setAlpha(1.0f);
        }
        lockOrientation(webTabData.orientationLocked);
        return true;
    }

    public BotWebViewSheet(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context, C2665R.style.TransparentDialog);
        this.actionBarTransitionProgress = 0.0f;
        this.navInsets = new Rect();
        this.insets = new Rect();
        this.keyboardInset = 0;
        this.linePaint = new Paint(1);
        this.dimPaint = new Paint();
        this.backgroundPaint = new Paint(1);
        this.actionBarPaint = new Paint(1);
        this.pollRunnable = new Runnable() { // from class: org.telegram.ui.bots.BotWebViewSheet$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$6();
            }
        };
        this.actionBarColorKey = -1;
        this.defaultFullsize = false;
        this.fullsize = null;
        this.fileItems = new HashMap<>();
        this.superDismissed = false;
        this.resetOffsetY = true;
        this.attached = false;
        this.resourcesProvider = resourcesProvider;
        this.lineColor = Theme.getColor(Theme.key_sheet_scrollUp);
        ChatAttachAlertBotWebViewLayout.WebViewSwipeContainer webViewSwipeContainer = new ChatAttachAlertBotWebViewLayout.WebViewSwipeContainer(context) { // from class: org.telegram.ui.bots.BotWebViewSheet.1
            /* JADX WARN: Removed duplicated region for block: B:7:0x0018  */
            @Override // android.widget.FrameLayout, android.view.View
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public void onMeasure(int i, int i2) {
                int i3;
                int size = View.MeasureSpec.getSize(i2);
                if (!AndroidUtilities.isTablet()) {
                    Point point = AndroidUtilities.displaySize;
                    i3 = point.x > point.y ? (int) (size / 3.5f) : (size / 5) * 2;
                }
                if (i3 < 0) {
                    i3 = 0;
                }
                float f = i3;
                if (getOffsetY() != f && !BotWebViewSheet.this.dismissed && BotWebViewSheet.this.resetOffsetY) {
                    BotWebViewSheet.this.ignoreLayout = true;
                    setOffsetY(f);
                    BotWebViewSheet.this.ignoreLayout = false;
                    BotWebViewSheet.this.resetOffsetY = false;
                }
                if (!BotWebViewSheet.this.fullscreen && AndroidUtilities.isTablet() && !AndroidUtilities.isInMultiwindow && !AndroidUtilities.isSmallTablet()) {
                    Point point2 = AndroidUtilities.displaySize;
                    i = View.MeasureSpec.makeMeasureSpec((int) (Math.min(point2.x, point2.y) * 0.8f), TLObject.FLAG_30);
                }
                int size2 = View.MeasureSpec.getSize(i2);
                if (!BotWebViewSheet.this.fullscreen) {
                    size2 = (size2 - AndroidUtilities.statusBarHeight) - ActionBar.getCurrentActionBarHeight();
                }
                if (BotWebViewSheet.this.botButtons != null && BotWebViewSheet.this.botButtons.getTotalHeight() > 0) {
                    size2 -= BotWebViewSheet.this.botButtons.getTotalHeight();
                }
                super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(size2 + AndroidUtilities.dp(24.0f), TLObject.FLAG_30));
            }

            @Override // android.view.View, android.view.ViewParent
            public void requestLayout() {
                if (BotWebViewSheet.this.ignoreLayout) {
                    return;
                }
                super.requestLayout();
            }

            @Override // org.telegram.ui.bots.ChatAttachAlertBotWebViewLayout.WebViewSwipeContainer, android.view.View
            public void setTranslationY(float f) {
                super.setTranslationY(f);
                if (BotWebViewSheet.this.fullscreenButtons != null) {
                    BotWebViewSheet.this.fullscreenButtons.setTranslationY(AndroidUtilities.dp(24.0f) + f);
                }
                if (BotWebViewSheet.this.bulletinContainer != null) {
                    BotWebViewSheet.this.bulletinContainer.setTranslationY(AndroidUtilities.lerp(ActionBar.getCurrentActionBarHeight() - AndroidUtilities.dp(24.0f), BotWebViewSheet.this.insets.top + AndroidUtilities.dp(70.0f), BotWebViewSheet.this.fullscreenProgress) + BotWebViewSheet.this.swipeContainer.getTranslationY());
                }
            }
        };
        this.swipeContainer = webViewSwipeContainer;
        webViewSwipeContainer.setAllowFullSizeSwipe(true);
        this.swipeContainer.setShouldWaitWebViewScroll(true);
        int i = Theme.key_windowBackgroundWhite;
        BotWebViewContainer botWebViewContainer = new BotWebViewContainer(context, resourcesProvider, getColor(i), true) { // from class: org.telegram.ui.bots.BotWebViewSheet.2
            @Override // org.telegram.ui.web.BotWebViewContainer
            public void onWebViewCreated(BotWebViewContainer.MyWebView myWebView) {
                super.onWebViewCreated(myWebView);
                BotWebViewSheet.this.swipeContainer.setWebView(myWebView);
                if (BotWebViewSheet.this.sensors != null) {
                    BotWebViewSheet.this.sensors.attachWebView(myWebView);
                }
                BotWebViewSheet.this.fullscreenButtons.setWebView(myWebView);
                BotWebViewSheet.this.updateWebViewBackgroundColor();
            }

            @Override // org.telegram.ui.web.BotWebViewContainer
            public void onWebViewDestroyed(BotWebViewContainer.MyWebView myWebView) {
                if (BotWebViewSheet.this.sensors != null) {
                    BotWebViewSheet.this.sensors.detachWebView(myWebView);
                }
                BotWebViewSheet.this.fullscreenButtons.setWebView(null);
            }

            @Override // org.telegram.ui.web.BotWebViewContainer
            public void onErrorShown(boolean z, int i2, String str) {
                if (z) {
                    BotWebViewSheet.this.createErrorContainer();
                    BotWebViewSheet.this.errorContainer.set(UserObject.getUserName(MessagesController.getInstance(BotWebViewSheet.this.currentAccount).getUser(Long.valueOf(BotWebViewSheet.this.botId))), str);
                    BotWebViewSheet.this.errorContainer.setDark(AndroidUtilities.computePerceivedBrightness(BotWebViewSheet.this.backgroundPaint.getColor()) <= 0.721f, false);
                    BotWebViewSheet.this.errorContainer.setBackgroundColor(BotWebViewSheet.this.backgroundPaint.getColor());
                    BotWebViewSheet.this.errorCode = str;
                }
                ArticleViewer.ErrorContainer errorContainer = BotWebViewSheet.this.errorContainer;
                BotWebViewSheet.this.errorShown = z;
                AndroidUtilities.updateViewVisibilityAnimated(errorContainer, z, 1.0f, false);
                invalidate();
            }
        };
        this.webViewContainer = botWebViewContainer;
        botWebViewContainer.setOnVerifiedAge(this.onVerifiedAge);
        this.webViewContainer.setDelegate(new C63193(context, resourcesProvider));
        this.linePaint.setStyle(Paint.Style.FILL_AND_STROKE);
        this.linePaint.setStrokeWidth(AndroidUtilities.dp(4.0f));
        this.linePaint.setStrokeCap(Paint.Cap.ROUND);
        this.dimPaint.setColor(TLObject.FLAG_30);
        this.actionBarColor = getColor(i);
        int color = getColor(Theme.key_windowBackgroundGray);
        this.navBarColor = color;
        AndroidUtilities.setNavigationBarColor((Dialog) this, color, false);
        final WindowView windowView = new WindowView(context);
        this.windowView = windowView;
        Objects.requireNonNull(windowView);
        Runnable runnable = new Runnable() { // from class: org.telegram.ui.bots.BotWebViewSheet$$ExternalSyntheticLambda19
            @Override // java.lang.Runnable
            public final void run() {
                windowView.invalidate();
            }
        };
        this.invalidateRunnable = runnable;
        Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.bots.BotWebViewSheet$$ExternalSyntheticLambda20
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.relayout();
            }
        };
        this.relayoutRunnable = runnable2;
        this.windowView.setDelegate(new SizeNotifierFrameLayout.SizeNotifierFrameLayoutDelegate() { // from class: org.telegram.ui.bots.BotWebViewSheet$$ExternalSyntheticLambda21
            @Override // org.telegram.ui.Components.SizeNotifierFrameLayout.SizeNotifierFrameLayoutDelegate
            public final void onSizeChanged(int i2, boolean z) {
                this.f$0.lambda$new$7(i2, z);
            }
        });
        WindowView windowView2 = this.windowView;
        ChatAttachAlertBotWebViewLayout.WebViewSwipeContainer webViewSwipeContainer2 = this.swipeContainer;
        FrameLayout.LayoutParams layoutParamsCreateFrame = LayoutHelper.createFrame(-1, -1, 49);
        this.swipeContainerLayoutParams = layoutParamsCreateFrame;
        windowView2.addView(webViewSwipeContainer2, layoutParamsCreateFrame);
        BotButtons botButtons = new BotButtons(getContext(), resourcesProvider) { // from class: org.telegram.ui.bots.BotWebViewSheet.4
            @Override // android.view.View
            public void setTranslationY(float f) {
                super.setTranslationY(f);
            }

            @Override // org.telegram.ui.bots.BotButtons, android.widget.FrameLayout, android.view.View
            public void onMeasure(int i2, int i3) {
                if (!BotWebViewSheet.this.fullscreen && AndroidUtilities.isTablet() && !AndroidUtilities.isInMultiwindow && !AndroidUtilities.isSmallTablet()) {
                    Point point = AndroidUtilities.displaySize;
                    i2 = View.MeasureSpec.makeMeasureSpec((int) (Math.min(point.x, point.y) * 0.8f), TLObject.FLAG_30);
                }
                super.onMeasure(i2, i3);
            }
        };
        this.botButtons = botButtons;
        botButtons.setOnButtonClickListener(new Utilities.Callback() { // from class: org.telegram.ui.bots.BotWebViewSheet$$ExternalSyntheticLambda22
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$new$8((Boolean) obj);
            }
        });
        this.botButtons.setOnResizeListener(new Runnable() { // from class: org.telegram.ui.bots.BotWebViewSheet$$ExternalSyntheticLambda23
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$9();
            }
        });
        WindowView windowView3 = this.windowView;
        BotButtons botButtons2 = this.botButtons;
        FrameLayout.LayoutParams layoutParamsCreateFrame2 = LayoutHelper.createFrame(-1, -2, 81);
        this.botButtonsLayoutParams = layoutParamsCreateFrame2;
        windowView3.addView(botButtons2, layoutParamsCreateFrame2);
        BotFullscreenButtons botFullscreenButtons = new BotFullscreenButtons(getContext());
        this.fullscreenButtons = botFullscreenButtons;
        botFullscreenButtons.setAlpha(0.0f);
        this.fullscreenButtons.setVisibility(8);
        boolean z = !MessagesController.getInstance(this.currentAccount).disableBotFullscreenBlur && SharedConfig.getDevicePerformanceClass() >= 2;
        this.fullscreenBlur = z;
        this.fullscreenButtons.setParentRenderNode(z ? this.swipeContainer.getRenderNode() : null);
        this.windowView.addView(this.fullscreenButtons, LayoutHelper.createFrame(-1, -1, 119));
        this.fullscreenButtons.setOnCloseClickListener(new Runnable() { // from class: org.telegram.ui.bots.BotWebViewSheet$$ExternalSyntheticLambda24
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$10();
            }
        });
        this.fullscreenButtons.setOnCollapseClickListener(new Runnable() { // from class: org.telegram.ui.bots.BotWebViewSheet$$ExternalSyntheticLambda25
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$11();
            }
        });
        this.fullscreenButtons.setOnMenuClickListener(new Runnable() { // from class: org.telegram.ui.bots.BotWebViewSheet$$ExternalSyntheticLambda26
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.openOptions();
            }
        });
        FrameLayout frameLayout = new FrameLayout(context);
        this.bulletinContainer = frameLayout;
        WindowView windowView4 = this.windowView;
        FrameLayout.LayoutParams layoutParamsCreateFrame3 = LayoutHelper.createFrame(-1, 200, 55);
        this.bulletinContainerLayoutParams = layoutParamsCreateFrame3;
        windowView4.addView(frameLayout, layoutParamsCreateFrame3);
        this.actionBarShadow = ContextCompat.getDrawable(getContext(), C2665R.drawable.header_shadow).mutate();
        ActionBar actionBar = new ActionBar(context, resourcesProvider) { // from class: org.telegram.ui.bots.BotWebViewSheet.5
            @Override // org.telegram.ui.ActionBar.ActionBar, android.widget.FrameLayout, android.view.View
            public void onMeasure(int i2, int i3) {
                if (AndroidUtilities.isTablet() && !AndroidUtilities.isInMultiwindow && !AndroidUtilities.isSmallTablet()) {
                    Point point = AndroidUtilities.displaySize;
                    i2 = View.MeasureSpec.makeMeasureSpec((int) (Math.min(point.x, point.y) * 0.8f), TLObject.FLAG_30);
                }
                super.onMeasure(i2, i3);
            }
        };
        this.actionBar = actionBar;
        actionBar.setBackgroundColor(0);
        this.actionBar.setBackButtonImage(C2665R.drawable.ic_close_white);
        updateActionBarColors();
        this.actionBar.setActionBarMenuOnItemClick(new ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.bots.BotWebViewSheet.6
            @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i2) {
                if (i2 == -1) {
                    BotWebViewSheet.this.onCheckDismissByUser();
                }
            }
        });
        this.actionBar.setAlpha(0.0f);
        WindowView windowView5 = this.windowView;
        ActionBar actionBar2 = this.actionBar;
        FrameLayout.LayoutParams layoutParamsCreateFrame4 = LayoutHelper.createFrame(-1, -2, 49);
        this.actionBarLayoutParams = layoutParamsCreateFrame4;
        windowView5.addView(actionBar2, layoutParamsCreateFrame4);
        WindowView windowView6 = this.windowView;
        ChatAttachAlertBotWebViewLayout.WebProgressView webProgressView = new ChatAttachAlertBotWebViewLayout.WebProgressView(context, resourcesProvider) { // from class: org.telegram.ui.bots.BotWebViewSheet.7
            @Override // android.view.View
            public void onMeasure(int i2, int i3) {
                if (AndroidUtilities.isTablet() && !AndroidUtilities.isInMultiwindow && !AndroidUtilities.isSmallTablet()) {
                    Point point = AndroidUtilities.displaySize;
                    i2 = View.MeasureSpec.makeMeasureSpec((int) (Math.min(point.x, point.y) * 0.8f), TLObject.FLAG_30);
                }
                super.onMeasure(i2, i3);
            }
        };
        this.progressView = webProgressView;
        windowView6.addView(webProgressView, LayoutHelper.createFrame(-1, -2.0f, 81, 0.0f, 0.0f, 0.0f, 0.0f));
        this.webViewContainer.setWebViewProgressListener(new Consumer() { // from class: org.telegram.ui.bots.BotWebViewSheet$$ExternalSyntheticLambda27
            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                this.f$0.lambda$new$13((Float) obj);
            }
        });
        this.swipeContainer.addView(this.webViewContainer, LayoutHelper.createFrame(-1, -1.0f));
        this.swipeContainer.setScrollListener(new Runnable() { // from class: org.telegram.ui.bots.BotWebViewSheet$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$14();
            }
        });
        this.swipeContainer.setScrollEndListener(new Runnable() { // from class: org.telegram.ui.bots.BotWebViewSheet$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$15();
            }
        });
        this.swipeContainer.setDelegate(new ChatAttachAlertBotWebViewLayout.WebViewSwipeContainer.Delegate() { // from class: org.telegram.ui.bots.BotWebViewSheet$$ExternalSyntheticLambda17
            @Override // org.telegram.ui.bots.ChatAttachAlertBotWebViewLayout.WebViewSwipeContainer.Delegate
            public final void onDismiss(boolean z2) {
                this.f$0.lambda$new$16(z2);
            }
        });
        this.swipeContainer.setIsKeyboardVisible(new GenericProvider() { // from class: org.telegram.ui.bots.BotWebViewSheet$$ExternalSyntheticLambda18
            @Override // org.telegram.messenger.GenericProvider
            public final Object provide(Object obj) {
                return this.f$0.lambda$new$17((Void) obj);
            }
        });
        PasscodeView passcodeView = new PasscodeView(context);
        this.passcodeView = passcodeView;
        this.windowView.addView(passcodeView, LayoutHelper.createFrame(-1, -1.0f));
        setContentView(this.windowView, new ViewGroup.LayoutParams(-1, -1));
        updateFullscreenLayout();
        LaunchActivity launchActivity = LaunchActivity.instance;
        BottomSheetTabs bottomSheetTabs = launchActivity != null ? launchActivity.getBottomSheetTabs() : null;
        this.bottomTabs = bottomSheetTabs;
        if (bottomSheetTabs != null) {
            bottomSheetTabs.listen(runnable, runnable2);
            this.bottomTabsClip = new BottomSheetTabs.ClipTools(this.bottomTabs);
        }
    }

    /* JADX INFO: renamed from: org.telegram.ui.bots.BotWebViewSheet$3 */
    /* JADX INFO: loaded from: classes7.dex */
    public class C63193 implements BotWebViewContainer.Delegate {
        private boolean sentWebViewData;
        final /* synthetic */ Context val$context;
        final /* synthetic */ Theme.ResourcesProvider val$resourcesProvider;

        public C63193(Context context, Theme.ResourcesProvider resourcesProvider) {
            this.val$context = context;
            this.val$resourcesProvider = resourcesProvider;
        }

        @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
        public void onCloseRequested(Runnable runnable) {
            BotWebViewSheet.this.dismiss(runnable);
        }

        @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
        public void onWebAppSetupClosingBehavior(boolean z) {
            BotWebViewSheet.this.needCloseConfirmation = z;
        }

        @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
        public void onWebAppSwipingBehavior(boolean z) {
            if (BotWebViewSheet.this.swipeContainer != null) {
                BotWebViewSheet.this.swipeContainer.setAllowSwipes(z);
            }
        }

        @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
        public void onCloseToTabs() {
            BotWebViewSheet.this.dismiss(true);
        }

        @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
        public void onSharedTo(ArrayList<Long> arrayList) {
            final String pluralString;
            if (arrayList.size() == 1) {
                pluralString = LocaleController.formatString(C2665R.string.BotSharedToOne, MessagesController.getInstance(BotWebViewSheet.this.currentAccount).getPeerName(arrayList.get(0).longValue()));
            } else {
                pluralString = LocaleController.formatPluralString("BotSharedToMany", arrayList.size(), new Object[0]);
            }
            BotWebViewSheet.this.showBulletin(new Utilities.CallbackReturn() { // from class: org.telegram.ui.bots.BotWebViewSheet$3$$ExternalSyntheticLambda6
                @Override // org.telegram.messenger.Utilities.CallbackReturn
                public final Object run(Object obj) {
                    return ((BulletinFactory) obj).createSimpleBulletin(C2665R.raw.forward, AndroidUtilities.replaceTags(pluralString));
                }
            });
        }

        @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
        public void onOrientationLockChanged(boolean z) {
            BotWebViewSheet.this.lockOrientation(z);
        }

        @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
        public void onOpenBackFromTabs() {
            if (BotWebViewSheet.this.lastTab != null) {
                BottomSheetTabs bottomSheetTabs = LaunchActivity.instance.getBottomSheetTabs();
                if (bottomSheetTabs != null) {
                    bottomSheetTabs.openTab(BotWebViewSheet.this.lastTab);
                }
                BotWebViewSheet.this.lastTab = null;
            }
        }

        @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
        public void onSendWebViewData(String str) {
            if (BotWebViewSheet.this.queryId != 0 || this.sentWebViewData) {
                return;
            }
            this.sentWebViewData = true;
            TLRPC.TL_messages_sendWebViewData tL_messages_sendWebViewData = new TLRPC.TL_messages_sendWebViewData();
            tL_messages_sendWebViewData.bot = MessagesController.getInstance(BotWebViewSheet.this.currentAccount).getInputUser(BotWebViewSheet.this.botId);
            tL_messages_sendWebViewData.random_id = Utilities.random.nextLong();
            tL_messages_sendWebViewData.button_text = BotWebViewSheet.this.buttonText;
            tL_messages_sendWebViewData.data = str;
            ConnectionsManager.getInstance(BotWebViewSheet.this.currentAccount).sendRequest(tL_messages_sendWebViewData, new RequestDelegate() { // from class: org.telegram.ui.bots.BotWebViewSheet$3$$ExternalSyntheticLambda4
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$onSendWebViewData$1(tLObject, tL_error);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onSendWebViewData$1(TLObject tLObject, TLRPC.TL_error tL_error) {
            if (tLObject instanceof TLRPC.TL_updates) {
                MessagesController.getInstance(BotWebViewSheet.this.currentAccount).processUpdates((TLRPC.TL_updates) tLObject, false);
            }
            final BotWebViewSheet botWebViewSheet = BotWebViewSheet.this;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.bots.BotWebViewSheet$3$$ExternalSyntheticLambda10
                @Override // java.lang.Runnable
                public final void run() {
                    botWebViewSheet.lambda$openOptions$43();
                }
            });
        }

        @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
        public void onWebAppSetActionBarColor(int i, int i2, boolean z) {
            BotWebViewSheet.this.actionBarColorKey = i;
            BotWebViewSheet.this.setActionBarColor(i2, z, true);
        }

        @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
        public void onWebAppSetNavigationBarColor(int i) {
            BotWebViewSheet.this.setNavigationBarColor(i, true);
        }

        @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
        public void onWebAppSetBackgroundColor(int i) {
            BotWebViewSheet.this.setBackgroundColor(i, true, true);
        }

        @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
        public void onLocationGranted(boolean z) {
            final TLRPC.User user = MessagesController.getInstance(BotWebViewSheet.this.currentAccount).getUser(Long.valueOf(BotWebViewSheet.this.botId));
            if (z) {
                final BulletinFactory.UndoObject undoObject = new BulletinFactory.UndoObject();
                undoObject.undoText = LocaleController.getString(C2665R.string.UndoNoCaps);
                undoObject.onUndo = new Runnable() { // from class: org.telegram.ui.bots.BotWebViewSheet$3$$ExternalSyntheticLambda11
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onLocationGranted$2();
                    }
                };
                BotWebViewSheet.this.showBulletin(new Utilities.CallbackReturn() { // from class: org.telegram.ui.bots.BotWebViewSheet$3$$ExternalSyntheticLambda12
                    @Override // org.telegram.messenger.Utilities.CallbackReturn
                    public final Object run(Object obj) {
                        TLRPC.User user2 = user;
                        return ((BulletinFactory) obj).createUsersBulletin(Arrays.asList(user2), AndroidUtilities.replaceTags(LocaleController.formatString(C2665R.string.BotLocationPermissionRequestGranted, UserObject.getUserName(user2))), null, undoObject).setDuration(5000);
                    }
                });
                return;
            }
            final SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            spannableStringBuilder.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatString(C2665R.string.BotLocationPermissionRequestDeniedApp, UserObject.getUserName(user))));
            spannableStringBuilder.append((CharSequence) " ");
            spannableStringBuilder.append(AndroidUtilities.replaceArrows(AndroidUtilities.makeClickable(LocaleController.getString(C2665R.string.BotLocationPermissionRequestDeniedAppSettings), new Runnable() { // from class: org.telegram.ui.bots.BotWebViewSheet$3$$ExternalSyntheticLambda13
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onLocationGranted$4();
                }
            }), true));
            BotWebViewSheet.this.showBulletin(new Utilities.CallbackReturn() { // from class: org.telegram.ui.bots.BotWebViewSheet$3$$ExternalSyntheticLambda14
                @Override // org.telegram.messenger.Utilities.CallbackReturn
                public final Object run(Object obj) {
                    return ((BulletinFactory) obj).createSimpleBulletinDetail(C2665R.raw.error, spannableStringBuilder).setDuration(5000);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onLocationGranted$2() {
            BotLocation.get(BotWebViewSheet.this.getContext(), BotWebViewSheet.this.currentAccount, BotWebViewSheet.this.botId).setGranted(false, null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onLocationGranted$4() {
            BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
            if (safeLastFragment == null || safeLastFragment.getParentLayout() == null) {
                return;
            }
            INavigationLayout parentLayout = safeLastFragment.getParentLayout();
            safeLastFragment.presentFragment(ProfileActivity.of(BotWebViewSheet.this.botId));
            AndroidUtilities.scrollToFragmentRow(parentLayout, "botPermissionLocation");
            BotWebViewSheet.this.dismiss(true);
        }

        @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
        public void onEmojiStatusGranted(boolean z) {
            final TLRPC.User user = MessagesController.getInstance(BotWebViewSheet.this.currentAccount).getUser(Long.valueOf(BotWebViewSheet.this.botId));
            if (z) {
                final BulletinFactory.UndoObject undoObject = new BulletinFactory.UndoObject();
                undoObject.onUndo = new Runnable() { // from class: org.telegram.ui.bots.BotWebViewSheet$3$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onEmojiStatusGranted$9();
                    }
                };
                BotWebViewSheet.this.showBulletin(new Utilities.CallbackReturn() { // from class: org.telegram.ui.bots.BotWebViewSheet$3$$ExternalSyntheticLambda1
                    @Override // org.telegram.messenger.Utilities.CallbackReturn
                    public final Object run(Object obj) {
                        TLRPC.User user2 = user;
                        return ((BulletinFactory) obj).createUsersBulletin(Arrays.asList(user2), AndroidUtilities.replaceTags(LocaleController.formatString(C2665R.string.BotEmojiStatusPermissionRequestGranted, UserObject.getUserName(user2))), null, undoObject).setDuration(5000);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onEmojiStatusGranted$9() {
            TL_bots.toggleUserEmojiStatusPermission toggleuseremojistatuspermission = new TL_bots.toggleUserEmojiStatusPermission();
            toggleuseremojistatuspermission.bot = MessagesController.getInstance(BotWebViewSheet.this.currentAccount).getInputUser(BotWebViewSheet.this.botId);
            toggleuseremojistatuspermission.enabled = false;
            ConnectionsManager.getInstance(BotWebViewSheet.this.currentAccount).sendRequest(toggleuseremojistatuspermission, new RequestDelegate() { // from class: org.telegram.ui.bots.BotWebViewSheet$3$$ExternalSyntheticLambda5
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$onEmojiStatusGranted$8(tLObject, tL_error);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onEmojiStatusGranted$8(final TLObject tLObject, final TLRPC.TL_error tL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.bots.BotWebViewSheet$3$$ExternalSyntheticLambda15
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onEmojiStatusGranted$7(tLObject, tL_error);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onEmojiStatusGranted$7(TLObject tLObject, final TLRPC.TL_error tL_error) {
            boolean z = tLObject instanceof TLRPC.TL_boolTrue;
            BotWebViewSheet botWebViewSheet = BotWebViewSheet.this;
            if (z) {
                botWebViewSheet.webViewContainer.notifyEmojiStatusAccess("cancelled");
            } else {
                botWebViewSheet.showBulletin(new Utilities.CallbackReturn() { // from class: org.telegram.ui.bots.BotWebViewSheet$3$$ExternalSyntheticLambda16
                    @Override // org.telegram.messenger.Utilities.CallbackReturn
                    public final Object run(Object obj) {
                        return ((BulletinFactory) obj).makeForError(tL_error);
                    }
                });
            }
        }

        @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
        public void onEmojiStatusSet(final TLRPC.Document document) {
            BotWebViewSheet.this.showBulletin(new Utilities.CallbackReturn() { // from class: org.telegram.ui.bots.BotWebViewSheet$3$$ExternalSyntheticLambda3
                @Override // org.telegram.messenger.Utilities.CallbackReturn
                public final Object run(Object obj) {
                    return ((BulletinFactory) obj).createEmojiBulletin(document, LocaleController.getString(C2665R.string.BotEmojiStatusUpdated));
                }
            });
        }

        @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
        public void onSetBackButtonVisible(boolean z) {
            ImageView backButton = BotWebViewSheet.this.actionBar.getBackButton();
            BotWebViewSheet.this.backButtonShown = z;
            AndroidUtilities.updateImageViewImageAnimated(backButton, z ? C2665R.drawable.ic_ab_back : C2665R.drawable.ic_close_white);
            if (BotWebViewSheet.this.fullscreenButtons != null) {
                BotWebViewSheet.this.fullscreenButtons.setBack(z, true);
            }
        }

        @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
        public void onSetSettingsButtonVisible(boolean z) {
            BotWebViewSheet.this.hasSettings = z;
        }

        @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
        public void onWebAppOpenInvoice(TLRPC.InputInvoice inputInvoice, final String str, TLObject tLObject) {
            PaymentFormActivity paymentFormActivity;
            BaseFragment lastFragment = ((LaunchActivity) BotWebViewSheet.this.parentActivity).getActionBarLayout().getLastFragment();
            if (tLObject instanceof TLRPC.TL_payments_paymentFormStars) {
                AndroidUtilities.hideKeyboard(BotWebViewSheet.this.windowView);
                final AlertDialog alertDialog = new AlertDialog(BotWebViewSheet.this.getContext(), 3);
                alertDialog.showDelayed(150L);
                StarsController.getInstance(BotWebViewSheet.this.currentAccount).openPaymentForm(null, inputInvoice, (TLRPC.TL_payments_paymentFormStars) tLObject, new Runnable() { // from class: org.telegram.ui.bots.BotWebViewSheet$3$$ExternalSyntheticLambda7
                    @Override // java.lang.Runnable
                    public final void run() {
                        alertDialog.dismiss();
                    }
                }, new Utilities.Callback() { // from class: org.telegram.ui.bots.BotWebViewSheet$3$$ExternalSyntheticLambda8
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        this.f$0.lambda$onWebAppOpenInvoice$13(str, (String) obj);
                    }
                });
                return;
            }
            if (tLObject instanceof TLRPC.PaymentForm) {
                TLRPC.PaymentForm paymentForm = (TLRPC.PaymentForm) tLObject;
                MessagesController.getInstance(BotWebViewSheet.this.currentAccount).putUsers(paymentForm.users, false);
                paymentFormActivity = new PaymentFormActivity(paymentForm, str, lastFragment);
            } else {
                paymentFormActivity = tLObject instanceof TLRPC.PaymentReceipt ? new PaymentFormActivity((TLRPC.PaymentReceipt) tLObject) : null;
            }
            if (paymentFormActivity != null) {
                BotWebViewSheet.this.swipeContainer.stickTo((-BotWebViewSheet.this.swipeContainer.getOffsetY()) + BotWebViewSheet.this.swipeContainer.getTopActionBarOffsetY());
                AndroidUtilities.hideKeyboard(BotWebViewSheet.this.windowView);
                final OverlayActionBarLayoutDialog overlayActionBarLayoutDialog = new OverlayActionBarLayoutDialog(this.val$context, this.val$resourcesProvider);
                overlayActionBarLayoutDialog.show();
                paymentFormActivity.setPaymentFormCallback(new PaymentFormActivity.PaymentFormCallback() { // from class: org.telegram.ui.bots.BotWebViewSheet$3$$ExternalSyntheticLambda9
                    @Override // org.telegram.ui.PaymentFormActivity.PaymentFormCallback
                    public final void onInvoiceStatusChanged(PaymentFormActivity.InvoiceStatus invoiceStatus) {
                        this.f$0.lambda$onWebAppOpenInvoice$14(overlayActionBarLayoutDialog, str, invoiceStatus);
                    }
                });
                paymentFormActivity.setResourcesProvider(this.val$resourcesProvider);
                overlayActionBarLayoutDialog.addFragment(paymentFormActivity);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onWebAppOpenInvoice$13(String str, String str2) {
            BotWebViewSheet.this.webViewContainer.onInvoiceStatusUpdate(str, str2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onWebAppOpenInvoice$14(OverlayActionBarLayoutDialog overlayActionBarLayoutDialog, String str, PaymentFormActivity.InvoiceStatus invoiceStatus) {
            if (invoiceStatus != PaymentFormActivity.InvoiceStatus.PENDING) {
                overlayActionBarLayoutDialog.dismiss();
            }
            BotWebViewSheet.this.webViewContainer.onInvoiceStatusUpdate(str, invoiceStatus.name().toLowerCase(Locale.ROOT));
        }

        @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
        public void onWebAppExpand() {
            if (BotWebViewSheet.this.swipeContainer.isSwipeInProgress()) {
                return;
            }
            BotWebViewSheet.this.swipeContainer.stickTo((-BotWebViewSheet.this.swipeContainer.getOffsetY()) + BotWebViewSheet.this.swipeContainer.getTopActionBarOffsetY());
        }

        @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
        public void onWebAppSwitchInlineQuery(final TLRPC.User user, final String str, List<String> list) {
            if (list.isEmpty()) {
                if (BotWebViewSheet.this.parentActivity instanceof LaunchActivity) {
                    BaseFragment lastFragment = ((LaunchActivity) BotWebViewSheet.this.parentActivity).getActionBarLayout().getLastFragment();
                    if (lastFragment instanceof ChatActivity) {
                        ((ChatActivity) lastFragment).getChatActivityEnterView().setFieldText("@" + UserObject.getPublicUsername(user) + " " + str);
                        BotWebViewSheet.this.lambda$openOptions$43();
                        return;
                    }
                    return;
                }
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putInt("dialogsType", 14);
            bundle.putBoolean("onlySelect", true);
            bundle.putBoolean("allowGroups", list.contains("groups"));
            bundle.putBoolean("allowMegagroups", list.contains("groups"));
            bundle.putBoolean("allowLegacyGroups", list.contains("groups"));
            bundle.putBoolean("allowUsers", list.contains("users"));
            bundle.putBoolean("allowChannels", list.contains("channels"));
            bundle.putBoolean("allowBots", list.contains("bots"));
            DialogsActivity dialogsActivity = new DialogsActivity(bundle);
            AndroidUtilities.hideKeyboard(BotWebViewSheet.this.windowView);
            final OverlayActionBarLayoutDialog overlayActionBarLayoutDialog = new OverlayActionBarLayoutDialog(this.val$context, this.val$resourcesProvider);
            dialogsActivity.setDelegate(new DialogsActivity.DialogsActivityDelegate() { // from class: org.telegram.ui.bots.BotWebViewSheet$3$$ExternalSyntheticLambda2
                @Override // org.telegram.ui.DialogsActivity.DialogsActivityDelegate
                public final boolean didSelectDialogs(DialogsActivity dialogsActivity2, ArrayList arrayList, CharSequence charSequence, boolean z, boolean z2, int i, int i2, TopicsFragment topicsFragment) {
                    return this.f$0.lambda$onWebAppSwitchInlineQuery$15(user, str, overlayActionBarLayoutDialog, dialogsActivity2, arrayList, charSequence, z, z2, i, i2, topicsFragment);
                }
            });
            overlayActionBarLayoutDialog.show();
            overlayActionBarLayoutDialog.addFragment(dialogsActivity);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ boolean lambda$onWebAppSwitchInlineQuery$15(TLRPC.User user, String str, OverlayActionBarLayoutDialog overlayActionBarLayoutDialog, DialogsActivity dialogsActivity, ArrayList arrayList, CharSequence charSequence, boolean z, boolean z2, int i, int i2, TopicsFragment topicsFragment) {
            long j = ((MessagesStorage.TopicKey) arrayList.get(0)).dialogId;
            Bundle bundle = new Bundle();
            bundle.putBoolean("scrollToTopOnResume", true);
            if (DialogObject.isEncryptedDialog(j)) {
                bundle.putInt("enc_id", DialogObject.getEncryptedChatId(j));
            } else if (DialogObject.isUserDialog(j)) {
                bundle.putLong("user_id", j);
            } else {
                bundle.putLong("chat_id", -j);
            }
            bundle.putString("start_text", "@" + UserObject.getPublicUsername(user) + " " + str);
            if (BotWebViewSheet.this.parentActivity instanceof LaunchActivity) {
                BaseFragment lastFragment = ((LaunchActivity) BotWebViewSheet.this.parentActivity).getActionBarLayout().getLastFragment();
                if (MessagesController.getInstance(BotWebViewSheet.this.currentAccount).checkCanOpenChat(bundle, lastFragment)) {
                    overlayActionBarLayoutDialog.dismiss();
                    BotWebViewSheet.this.dismissed = true;
                    AndroidUtilities.cancelRunOnUIThread(BotWebViewSheet.this.pollRunnable);
                    BotWebViewSheet.this.webViewContainer.destroyWebView();
                    NotificationCenter.getInstance(BotWebViewSheet.this.currentAccount).removeObserver(BotWebViewSheet.this, NotificationCenter.webViewResultSent);
                    NotificationCenter.getGlobalInstance().removeObserver(BotWebViewSheet.this, NotificationCenter.didSetNewTheme);
                    if (!BotWebViewSheet.this.superDismissed) {
                        BotWebViewSheet.super.dismiss();
                        BotWebViewSheet.this.superDismissed = true;
                    }
                    lastFragment.presentFragment(new INavigationLayout.NavigationParams(new ChatActivity(bundle)).setRemoveLast(true));
                }
            }
            return true;
        }

        @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
        public void onSetupMainButton(boolean z, boolean z2, String str, long j, int i, int i2, boolean z3, boolean z4) {
            BotWebViewSheet.this.botButtons.setMainState(BotButtons.ButtonState.of(z, z2, z3, z4, str, j, i, i2), true);
            if (BotWebViewSheet.this.fullscreen) {
                BotWebViewSheet.this.updateFullscreenLayout();
                BotWebViewSheet.this.updateWindowFlags();
            }
        }

        @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
        public void onSetupSecondaryButton(boolean z, boolean z2, String str, long j, int i, int i2, boolean z3, boolean z4, String str2) {
            BotWebViewSheet.this.botButtons.setSecondaryState(BotButtons.ButtonState.of(z, z2, z3, z4, str, j, i, i2, str2), true);
            if (BotWebViewSheet.this.fullscreen) {
                BotWebViewSheet.this.updateFullscreenLayout();
                BotWebViewSheet.this.updateWindowFlags();
            }
        }

        @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
        public boolean isClipboardAvailable() {
            return MediaDataController.getInstance(BotWebViewSheet.this.currentAccount).botInAttachMenu(BotWebViewSheet.this.botId) || MessagesController.getInstance(BotWebViewSheet.this.currentAccount).whitelistedBots.contains(Long.valueOf(BotWebViewSheet.this.botId));
        }

        @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
        public String onFullscreenRequested(boolean z, boolean z2) {
            boolean z3 = BotWebViewSheet.this.fullscreen;
            BotWebViewSheet botWebViewSheet = BotWebViewSheet.this;
            if (z3 == z) {
                if (botWebViewSheet.fullscreen) {
                    return "ALREADY_FULLSCREEN";
                }
                return null;
            }
            botWebViewSheet.setFullscreen(z, true, z2);
            return null;
        }

        @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
        public BotSensors getBotSensors() {
            if (BotWebViewSheet.this.sensors == null) {
                BotWebViewSheet botWebViewSheet = BotWebViewSheet.this;
                botWebViewSheet.sensors = new BotSensors(this.val$context, botWebViewSheet.botId);
                BotWebViewSheet.this.sensors.attachWebView(BotWebViewSheet.this.webViewContainer.getWebView());
            }
            return BotWebViewSheet.this.sensors;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$7(int i, boolean z) {
        if (i > AndroidUtilities.dp(20.0f)) {
            ChatAttachAlertBotWebViewLayout.WebViewSwipeContainer webViewSwipeContainer = this.swipeContainer;
            webViewSwipeContainer.stickTo((-webViewSwipeContainer.getOffsetY()) + this.swipeContainer.getTopActionBarOffsetY());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$8(Boolean bool) {
        if (this.webViewContainer != null) {
            boolean zBooleanValue = bool.booleanValue();
            BotWebViewContainer botWebViewContainer = this.webViewContainer;
            if (zBooleanValue) {
                botWebViewContainer.onMainButtonPressed();
            } else {
                botWebViewContainer.onSecondaryButtonPressed();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$9() {
        this.swipeContainer.requestLayout();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$10() {
        if (this.webViewContainer.onBackPressed()) {
            return;
        }
        onCheckDismissByUser();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$11() {
        this.forceExpnaded = true;
        dismiss(true, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$13(Float f) {
        this.progressView.setLoadProgressAnimated(f.floatValue());
        if (f.floatValue() == 1.0f) {
            ValueAnimator duration = ValueAnimator.ofFloat(1.0f, 0.0f).setDuration(200L);
            duration.setInterpolator(CubicBezierInterpolator.DEFAULT);
            duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.bots.BotWebViewSheet$$ExternalSyntheticLambda32
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f$0.lambda$new$12(valueAnimator);
                }
            });
            duration.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.bots.BotWebViewSheet.8
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    BotWebViewSheet.this.progressView.setVisibility(8);
                }
            });
            duration.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$12(ValueAnimator valueAnimator) {
        this.progressView.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$14() {
        float swipeOffsetY = this.swipeContainer.getSwipeOffsetY();
        Paint paint = this.dimPaint;
        if (swipeOffsetY > 0.0f) {
            paint.setAlpha((int) ((1.0f - MathUtils.clamp(this.swipeContainer.getSwipeOffsetY() / this.swipeContainer.getHeight(), 0.0f, 1.0f)) * 64.0f));
        } else {
            paint.setAlpha(64);
        }
        this.windowView.invalidate();
        this.webViewContainer.invalidateViewPortHeight();
        if (this.springAnimation != null) {
            float f = (1.0f - (Math.min(this.swipeContainer.getTopActionBarOffsetY(), this.swipeContainer.getTranslationY() - this.swipeContainer.getTopActionBarOffsetY()) / this.swipeContainer.getTopActionBarOffsetY()) > 0.5f ? 1 : 0) * 100.0f;
            if (this.springAnimation.getSpring().getFinalPosition() != f) {
                this.springAnimation.getSpring().setFinalPosition(f);
                this.springAnimation.start();
            }
        }
        if (this.fullscreen) {
            int i = this.insets.bottom;
        } else {
            Math.max(0.0f, this.swipeContainer.getSwipeOffsetY());
        }
        this.lastSwipeTime = System.currentTimeMillis();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$15() {
        this.webViewContainer.invalidateViewPortHeight(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$16(boolean z) {
        if (this.fullscreen && z) {
            return;
        }
        dismiss(true, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$new$17(Void r1) {
        return Boolean.valueOf(this.windowView.getKeyboardHeight() >= AndroidUtilities.dp(20.0f));
    }

    public boolean isGuardBotTab(long j, long j2) {
        WebViewRequestProps webViewRequestProps = this.requestProps;
        if (webViewRequestProps != null && webViewRequestProps.type == 5) {
            long j3 = webViewRequestProps.peerId;
            if (j3 == j || j3 == 0) {
                TLObject tLObject = webViewRequestProps.response;
                if ((tLObject instanceof TLRPC.TL_webViewResultUrl) && ((TLRPC.TL_webViewResultUrl) tLObject).query_id == j2) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void relayout() {
        updateFullscreenLayout();
    }

    @Override // android.app.Dialog
    public void onStart() {
        super.onStart();
        Context context = getContext();
        if ((context instanceof ContextWrapper) && !(context instanceof LaunchActivity)) {
            context = ((ContextWrapper) context).getBaseContext();
        }
        if (context instanceof LaunchActivity) {
            ((LaunchActivity) context).addOverlayPasscodeView(this.passcodeView);
        }
    }

    @Override // android.app.Dialog
    public void onStop() {
        super.onStop();
        Context context = getContext();
        if ((context instanceof ContextWrapper) && !(context instanceof LaunchActivity)) {
            context = ((ContextWrapper) context).getBaseContext();
        }
        if (context instanceof LaunchActivity) {
            ((LaunchActivity) context).removeOverlayPasscodeView(this.passcodeView);
        }
    }

    public void setParentActivity(Activity activity) {
        this.parentActivity = activity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateActionBarColors() {
        if (!this.overrideActionBarColor) {
            ActionBar actionBar = this.actionBar;
            int i = Theme.key_windowBackgroundWhiteBlackText;
            actionBar.setTitleColor(getColor(i));
            this.actionBar.setItemsColor(getColor(i), false);
            this.actionBar.setItemsBackgroundColor(getColor(Theme.key_actionBarWhiteSelector), false);
            this.actionBar.setPopupBackgroundColor(getColor(Theme.key_actionBarDefaultSubmenuBackground), false);
            this.actionBar.setPopupItemsColor(getColor(Theme.key_actionBarDefaultSubmenuItem), false, false);
            this.actionBar.setPopupItemsColor(getColor(Theme.key_actionBarDefaultSubmenuItemIcon), true, false);
            this.actionBar.setPopupItemsSelectorColor(getColor(Theme.key_dialogButtonSelector), false);
        }
        this.webViewContainer.setFlickerViewColor(this.backgroundPaint.getColor());
    }

    private void updateLightStatusBar() {
        boolean z;
        if (this.overrideActionBarColor) {
            z = !this.actionBarIsLight;
        } else {
            z = !AndroidUtilities.isTablet() && ColorUtils.calculateLuminance(Theme.getColor(Theme.key_windowBackgroundWhite, null, true)) >= 0.7210000157356262d && this.actionBarTransitionProgress >= 0.85f;
        }
        Boolean bool = this.wasLightStatusBar;
        if (bool == null || bool.booleanValue() != z) {
            this.wasLightStatusBar = Boolean.valueOf(z);
            int systemUiVisibility = this.windowView.getSystemUiVisibility();
            this.windowView.setSystemUiVisibility(z ? systemUiVisibility | 8192 : systemUiVisibility & (-8193));
        }
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        BotButtons botButtons;
        super.onCreate(bundle);
        Window window = getWindow();
        int i = Build.VERSION.SDK_INT;
        if (i >= 30) {
            window.addFlags(-2147483392);
        } else {
            window.addFlags(-2147417856);
        }
        window.setWindowAnimations(C2665R.style.DialogNoAnimation);
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.width = -1;
        attributes.gravity = 51;
        attributes.dimAmount = 0.0f;
        int i2 = attributes.flags;
        int i3 = i2 & (-3);
        attributes.flags = i3;
        attributes.softInputMode = 16;
        attributes.height = -1;
        if (i >= 28) {
            attributes.layoutInDisplayCutoutMode = 1;
        }
        if (this.fullscreen) {
            attributes.flags = i3 | 512;
        } else {
            attributes.flags = i2 & (-515);
        }
        window.setAttributes(attributes);
        window.setStatusBarColor(0);
        this.windowView.setFitsSystemWindows(true);
        this.windowView.setSystemUiVisibility(1792);
        this.windowView.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: org.telegram.ui.bots.BotWebViewSheet$$ExternalSyntheticLambda2
            @Override // android.view.View.OnApplyWindowInsetsListener
            public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                return this.f$0.lambda$onCreate$18(view, windowInsets);
            }
        });
        if (this.fullscreen && ((botButtons = this.botButtons) == null || botButtons.getTotalHeight() <= 0)) {
            WindowView windowView = this.windowView;
            windowView.setSystemUiVisibility(windowView.getSystemUiVisibility() | 2);
        } else {
            WindowView windowView2 = this.windowView;
            windowView2.setSystemUiVisibility(windowView2.getSystemUiVisibility() & (-3));
        }
        if (i >= 26) {
            AndroidUtilities.setLightNavigationBar(this, ColorUtils.calculateLuminance(this.navBarColor) >= 0.7210000157356262d);
        }
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.didSetNewTheme);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.botDownloadsUpdate);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ WindowInsets lambda$onCreate$18(View view, WindowInsets windowInsets) {
        WindowInsetsCompat windowInsetsCompat = WindowInsetsCompat.toWindowInsetsCompat(windowInsets, view);
        Insets insets = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.navigationBars());
        this.navInsets.set(insets.left, insets.top, insets.right, insets.bottom);
        Insets insets2 = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.displayCutout() | WindowInsetsCompat.Type.systemBars());
        this.insets.set(Math.max(insets2.left, windowInsets.getStableInsetLeft()), Math.max(insets2.top, windowInsets.getStableInsetTop()), Math.max(insets2.right, windowInsets.getStableInsetRight()), Math.max(insets2.bottom, windowInsets.getStableInsetBottom()));
        int i = Build.VERSION.SDK_INT;
        if (i <= 28) {
            Rect rect = this.insets;
            rect.top = Math.max(rect.top, AndroidUtilities.getStatusBarHeight(getContext()));
        }
        int i2 = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.ime()).bottom;
        if (i2 > this.insets.bottom && i2 > AndroidUtilities.dp(20.0f)) {
            this.keyboardInset = i2;
        } else {
            this.keyboardInset = 0;
        }
        updateFullscreenLayout();
        if (i >= 30) {
            return WindowInsets.CONSUMED;
        }
        return windowInsets.consumeSystemWindowInsets();
    }

    public void updateFullscreenLayout() {
        BotButtons botButtons;
        this.fullscreenButtons.setInsets(this.insets);
        if (this.fullscreen) {
            BotButtons botButtons2 = this.botButtons;
            int i = (botButtons2 == null || botButtons2.getTotalHeight() <= 0) ? 0 : this.insets.bottom;
            BotWebViewContainer botWebViewContainer = this.webViewContainer;
            Rect rect = this.insets;
            botWebViewContainer.reportSafeInsets(new Rect(rect.left, rect.top, rect.right, (this.keyboardInset <= i && ((botButtons = this.botButtons) == null || botButtons.getTotalHeight() <= 0)) ? this.insets.bottom : 0), AndroidUtilities.dp(46.0f));
            this.windowView.setPadding(0, 0, 0, Math.max(this.keyboardInset, i));
        } else {
            this.webViewContainer.reportSafeInsets(new Rect(0, 0, 0, 0), 0);
            WindowView windowView = this.windowView;
            Rect rect2 = this.insets;
            int i2 = rect2.left;
            int i3 = rect2.right;
            int i4 = this.keyboardInset;
            BottomSheetTabs bottomSheetTabs = this.bottomTabs;
            windowView.setPadding(i2, 0, i3, Math.max(i4, (bottomSheetTabs != null ? bottomSheetTabs.getHeight(false) : 0) + this.insets.bottom));
        }
        this.swipeContainerLayoutParams.topMargin = AndroidUtilities.dp(24.0f);
        FrameLayout.LayoutParams layoutParams = this.actionBarLayoutParams;
        boolean z = this.fullscreen;
        layoutParams.leftMargin = !z ? 0 : this.insets.left;
        layoutParams.rightMargin = 0;
        FrameLayout.LayoutParams layoutParams2 = this.bulletinContainerLayoutParams;
        layoutParams2.leftMargin = !z ? 0 : this.insets.left;
        layoutParams2.rightMargin = !z ? 0 : this.insets.right;
        if (!this.fullscreenInProgress) {
            this.swipeContainer.setSwipeOffsetAnimationDisallowed(true);
            boolean z2 = this.fullscreen;
            ChatAttachAlertBotWebViewLayout.WebViewSwipeContainer webViewSwipeContainer = this.swipeContainer;
            if (z2) {
                webViewSwipeContainer.setTopActionBarOffsetY(-AndroidUtilities.dp(24.0f));
            } else {
                webViewSwipeContainer.setTopActionBarOffsetY((ActionBar.getCurrentActionBarHeight() + AndroidUtilities.statusBarHeight) - AndroidUtilities.dp(24.0f));
            }
            this.swipeContainer.setSwipeOffsetAnimationDisallowed(false);
            this.swipeContainer.invalidateTranslation();
            this.swipeContainer.invalidate();
            this.swipeContainer.requestLayout();
        }
        ChatAttachAlertBotWebViewLayout.WebViewSwipeContainer webViewSwipeContainer2 = this.swipeContainer;
        if (webViewSwipeContainer2 != null) {
            webViewSwipeContainer2.setFullSize(isFullSize());
        }
        this.botButtons.requestLayout();
        this.windowView.requestLayout();
        this.fullscreenButtons.setVisibility(this.fullscreen ? 0 : 8);
    }

    public void updateWindowFlags() {
        BotButtons botButtons;
        try {
            Window window = getWindow();
            if (window == null) {
                return;
            }
            WindowManager.LayoutParams attributes = window.getAttributes();
            int i = Build.VERSION.SDK_INT <= 28 ? 1024 : 512;
            boolean z = this.fullscreen;
            if (z) {
                attributes.flags = i | attributes.flags;
            } else {
                attributes.flags = (~i) & attributes.flags;
            }
            if (z && (((botButtons = this.botButtons) == null || botButtons.getTotalHeight() <= 0) && !this.windowView.drawingFromOverlay)) {
                WindowView windowView = this.windowView;
                windowView.setSystemUiVisibility(windowView.getSystemUiVisibility() | 2);
            } else {
                WindowView windowView2 = this.windowView;
                windowView2.setSystemUiVisibility(windowView2.getSystemUiVisibility() & (-3));
            }
            window.setAttributes(attributes);
        } catch (Exception e) {
            FileLog.m992e(e);
        }
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        setAttached(true);
        if (this.springAnimation == null) {
            this.springAnimation = new SpringAnimation(this, ACTION_BAR_TRANSITION_PROGRESS_VALUE).setSpring(new SpringForce().setStiffness(1200.0f).setDampingRatio(1.0f));
        }
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        setAttached(false);
        SpringAnimation springAnimation = this.springAnimation;
        if (springAnimation != null) {
            springAnimation.cancel();
            this.springAnimation = null;
        }
    }

    public static JSONObject makeThemeParams(Theme.ResourcesProvider resourcesProvider) {
        return makeThemeParams(resourcesProvider, false);
    }

    public static JSONObject makeThemeParams(Theme.ResourcesProvider resourcesProvider, final boolean z) {
        try {
            JSONObject jSONObject = new JSONObject();
            final int iBlendOver = Theme.blendOver(-16777216, Theme.getColor(Theme.key_dialogBackground, resourcesProvider));
            Utilities.CallbackReturn callbackReturn = new Utilities.CallbackReturn() { // from class: org.telegram.ui.bots.BotWebViewSheet$$ExternalSyntheticLambda29
                @Override // org.telegram.messenger.Utilities.CallbackReturn
                public final Object run(Object obj) {
                    return BotWebViewSheet.$r8$lambda$qMLFitaQ3GBOlJN23I1tK38FGRE(iBlendOver, z, (Integer) obj);
                }
            };
            jSONObject.put("bg_color", callbackReturn.run(Integer.valueOf(iBlendOver)));
            jSONObject.put("section_bg_color", callbackReturn.run(Integer.valueOf(Theme.getColor(Theme.key_windowBackgroundWhite, resourcesProvider))));
            int i = Theme.key_windowBackgroundGray;
            jSONObject.put("secondary_bg_color", callbackReturn.run(Integer.valueOf(Theme.getColor(i, resourcesProvider))));
            jSONObject.put("text_color", callbackReturn.run(Integer.valueOf(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, resourcesProvider))));
            jSONObject.put("hint_color", callbackReturn.run(Integer.valueOf(Theme.getColor(Theme.key_windowBackgroundWhiteHintText, resourcesProvider))));
            jSONObject.put("link_color", callbackReturn.run(Integer.valueOf(Theme.getColor(Theme.key_windowBackgroundWhiteLinkText, resourcesProvider))));
            jSONObject.put("button_color", callbackReturn.run(Integer.valueOf(Theme.getColor(Theme.key_featuredStickers_addButton, resourcesProvider))));
            jSONObject.put("button_text_color", callbackReturn.run(Integer.valueOf(Theme.getColor(Theme.key_featuredStickers_buttonText, resourcesProvider))));
            jSONObject.put("header_bg_color", callbackReturn.run(Integer.valueOf(Theme.getColor(Theme.key_actionBarDefault, resourcesProvider))));
            jSONObject.put("accent_text_color", callbackReturn.run(Integer.valueOf(Theme.getColor(Theme.key_windowBackgroundWhiteBlueText4, resourcesProvider))));
            jSONObject.put("section_header_text_color", callbackReturn.run(Integer.valueOf(Theme.getColor(Theme.key_windowBackgroundWhiteBlueHeader, resourcesProvider))));
            jSONObject.put("subtitle_text_color", callbackReturn.run(Integer.valueOf(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2, resourcesProvider))));
            jSONObject.put("destructive_text_color", callbackReturn.run(Integer.valueOf(Theme.getColor(Theme.key_text_RedRegular, resourcesProvider))));
            jSONObject.put("section_separator_color", callbackReturn.run(Integer.valueOf(Theme.getColor(Theme.key_divider, resourcesProvider))));
            jSONObject.put("bottom_bar_bg_color", callbackReturn.run(Integer.valueOf(Theme.getColor(i, resourcesProvider))));
            return jSONObject;
        } catch (Exception e) {
            FileLog.m992e(e);
            return null;
        }
    }

    public static /* synthetic */ Object $r8$lambda$qMLFitaQ3GBOlJN23I1tK38FGRE(int i, boolean z, Integer num) {
        int iBlendOver = Theme.blendOver(i, num.intValue());
        return z ? String.format(Locale.US, "#%02X%02X%02X", Integer.valueOf(Color.red(iBlendOver)), Integer.valueOf(Color.green(iBlendOver)), Integer.valueOf(Color.blue(iBlendOver))) : Integer.valueOf(iBlendOver);
    }

    public void setDefaultFullsize(boolean z) {
        if (this.defaultFullsize != z) {
            this.defaultFullsize = z;
            ChatAttachAlertBotWebViewLayout.WebViewSwipeContainer webViewSwipeContainer = this.swipeContainer;
            if (webViewSwipeContainer != null) {
                webViewSwipeContainer.setFullSize(isFullSize());
            }
        }
    }

    public void setWasOpenedByLinkIntent(boolean z) {
        BotWebViewContainer botWebViewContainer = this.webViewContainer;
        if (botWebViewContainer != null) {
            botWebViewContainer.setWasOpenedByLinkIntent(z);
        }
    }

    public void setNeedsContext(boolean z) {
        this.needsContext = z;
    }

    public boolean isFullSize() {
        if (this.fullscreen) {
            return true;
        }
        Boolean bool = this.fullsize;
        return bool == null ? this.defaultFullsize : bool.booleanValue();
    }

    public void setOnVerifiedAge(Utilities.Callback4<Boolean, Double, String, Double> callback4) {
        this.onVerifiedAge = callback4;
        BotWebViewContainer botWebViewContainer = this.webViewContainer;
        if (botWebViewContainer != null) {
            botWebViewContainer.setOnVerifiedAge(callback4);
        }
    }

    public void requestWebView(BaseFragment baseFragment, WebViewRequestProps webViewRequestProps) {
        TLRPC.User user;
        TLRPC.TL_attachMenuBot tL_attachMenuBot;
        TLRPC.InputPeer inputPeer;
        TLRPC.InputPeer inputPeer2;
        TL_bots.botAppSettings botappsettings;
        this.requestProps = webViewRequestProps;
        int i = webViewRequestProps.currentAccount;
        this.currentAccount = i;
        this.peerId = webViewRequestProps.peerId;
        this.botId = webViewRequestProps.botId;
        this.replyToMsgId = webViewRequestProps.replyToMsgId;
        this.monoforumTopicId = webViewRequestProps.monoforumTopicId;
        this.silent = webViewRequestProps.silent;
        this.buttonText = webViewRequestProps.buttonText;
        this.currentWebApp = webViewRequestProps.app;
        TLRPC.User user2 = MessagesController.getInstance(i).getUser(Long.valueOf(this.botId));
        CharSequence userName = UserObject.getUserName(user2);
        try {
            TextPaint textPaint = new TextPaint();
            textPaint.setTextSize(AndroidUtilities.dp(20.0f));
            userName = Emoji.replaceEmoji(userName, textPaint.getFontMetricsInt(), false);
        } catch (Exception unused) {
        }
        this.actionBar.setTitle(userName);
        TLRPC.UserFull userFull = MessagesController.getInstance(this.currentAccount).getUserFull(this.botId);
        if ((user2 != null && user2.verified) || (userFull != null && (user = userFull.user) != null && user.verified)) {
            Drawable drawableMutate = getContext().getResources().getDrawable(C2665R.drawable.verified_profile).mutate();
            this.verifiedDrawable = drawableMutate;
            drawableMutate.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_featuredStickers_addButton, this.resourcesProvider), PorterDuff.Mode.SRC_IN));
            this.verifiedDrawable.setAlpha(255);
            this.actionBar.getTitleTextView().setDrawablePadding(AndroidUtilities.dp(2.0f));
            this.actionBar.getTitleTextView().setRightDrawable(new Drawable() { // from class: org.telegram.ui.bots.BotWebViewSheet.9
                @Override // android.graphics.drawable.Drawable
                public int getOpacity() {
                    return -2;
                }

                @Override // android.graphics.drawable.Drawable
                public void draw(Canvas canvas) {
                    canvas.save();
                    canvas.translate(0.0f, AndroidUtilities.dp(1.0f));
                    BotWebViewSheet.this.verifiedDrawable.setBounds(getBounds());
                    BotWebViewSheet.this.verifiedDrawable.draw(canvas);
                    canvas.restore();
                }

                @Override // android.graphics.drawable.Drawable
                public void setAlpha(int i2) {
                    BotWebViewSheet.this.verifiedDrawable.setAlpha(i2);
                }

                @Override // android.graphics.drawable.Drawable
                public void setColorFilter(ColorFilter colorFilter) {
                    BotWebViewSheet.this.verifiedDrawable.setColorFilter(colorFilter);
                }

                @Override // android.graphics.drawable.Drawable
                public int getIntrinsicHeight() {
                    return AndroidUtilities.dp(20.0f);
                }

                @Override // android.graphics.drawable.Drawable
                public int getIntrinsicWidth() {
                    return AndroidUtilities.dp(20.0f);
                }
            });
        }
        BotFullscreenButtons botFullscreenButtons = this.fullscreenButtons;
        if (botFullscreenButtons != null) {
            botFullscreenButtons.setName(UserObject.getUserName(user2), user2 != null && user2.verified);
        }
        ActionBarMenu actionBarMenuCreateMenu = this.actionBar.createMenu();
        actionBarMenuCreateMenu.removeAllViews();
        ArrayList<TLRPC.TL_attachMenuBot> arrayList = MediaDataController.getInstance(this.currentAccount).getAttachMenuBots().bots;
        int size = arrayList.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                tL_attachMenuBot = null;
                break;
            }
            TLRPC.TL_attachMenuBot tL_attachMenuBot2 = arrayList.get(i2);
            i2++;
            TLRPC.TL_attachMenuBot tL_attachMenuBot3 = tL_attachMenuBot2;
            if (tL_attachMenuBot3.bot_id == this.botId) {
                tL_attachMenuBot = tL_attachMenuBot3;
                break;
            }
        }
        if (!this.fromTab) {
            if (userFull != null) {
                TL_bots.BotInfo botInfo = userFull.bot_info;
                if (botInfo != null && (botappsettings = botInfo.app_settings) != null) {
                    applyAppBotSettings(botappsettings, false);
                }
            } else {
                MessagesController.getInstance(this.currentAccount).loadFullUser(user2, 0, true, new Utilities.Callback() { // from class: org.telegram.ui.bots.BotWebViewSheet$$ExternalSyntheticLambda3
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        this.f$0.lambda$requestWebView$21((TLRPC.UserFull) obj);
                    }
                });
            }
            if (webViewRequestProps.fullscreen) {
                setFullscreen(true, false);
            }
        }
        if (this.onVerifiedAge == null) {
            actionBarMenuCreateMenu.addItem(C2665R.id.menu_collapse_bot, C2665R.drawable.arrow_more);
        }
        BotFullscreenButtons.OptionsIcon optionsIcon = new BotFullscreenButtons.OptionsIcon(getContext());
        this.optionsIcon = optionsIcon;
        ActionBarMenuItem actionBarMenuItemAddItem = actionBarMenuCreateMenu.addItem(0, optionsIcon);
        this.optionsItem = actionBarMenuItemAddItem;
        actionBarMenuItemAddItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.bots.BotWebViewSheet$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$requestWebView$22(view);
            }
        });
        this.pinItem = this.optionsItem.addSubItem(C2665R.id.menu_pin, C2665R.drawable.msg_pin, LocaleController.getString(C2665R.string.PinMessage));
        this.actionBar.setActionBarMenuOnItemClick(new ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.bots.BotWebViewSheet.10
            @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i3) {
                if (i3 == -1) {
                    if (BotWebViewSheet.this.webViewContainer.onBackPressed()) {
                        return;
                    }
                    BotWebViewSheet.this.onCheckDismissByUser();
                } else if (i3 == C2665R.id.menu_collapse_bot) {
                    BotWebViewSheet.this.forceExpnaded = true;
                    BotWebViewSheet.this.dismiss(true, null);
                }
            }
        });
        JSONObject jSONObjectMakeThemeParams = makeThemeParams(this.resourcesProvider);
        this.webViewContainer.setBotUser(MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.botId)));
        this.webViewContainer.loadFlickerAndSettingsItem(this.currentAccount, this.botId, null);
        preloadShortcutBotIcon(webViewRequestProps.botUser, tL_attachMenuBot);
        if (webViewRequestProps.response != null) {
            loadFromResponse();
            return;
        }
        int i3 = webViewRequestProps.type;
        if (i3 == 0) {
            TLRPC.TL_messages_requestWebView tL_messages_requestWebView = new TLRPC.TL_messages_requestWebView();
            tL_messages_requestWebView.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(this.peerId);
            tL_messages_requestWebView.bot = MessagesController.getInstance(this.currentAccount).getInputUser(this.botId);
            tL_messages_requestWebView.platform = "android";
            tL_messages_requestWebView.compact = webViewRequestProps.compact;
            tL_messages_requestWebView.fullscreen = webViewRequestProps.fullscreen;
            String str = webViewRequestProps.buttonUrl;
            if (str != null) {
                tL_messages_requestWebView.url = str;
                tL_messages_requestWebView.flags |= 2;
            }
            if (this.replyToMsgId != 0) {
                TLRPC.InputReplyTo inputReplyToCreateReplyInput = SendMessagesHelper.getInstance(this.currentAccount).createReplyInput(this.replyToMsgId);
                tL_messages_requestWebView.reply_to = inputReplyToCreateReplyInput;
                if (this.monoforumTopicId != 0) {
                    inputReplyToCreateReplyInput.monoforum_peer_id = MessagesController.getInstance(this.currentAccount).getInputPeer(this.monoforumTopicId);
                    tL_messages_requestWebView.reply_to.flags |= 32;
                }
                tL_messages_requestWebView.flags |= 1;
            } else if (this.monoforumTopicId != 0) {
                TLRPC.TL_inputReplyToMonoForum tL_inputReplyToMonoForum = new TLRPC.TL_inputReplyToMonoForum();
                tL_messages_requestWebView.reply_to = tL_inputReplyToMonoForum;
                tL_inputReplyToMonoForum.monoforum_peer_id = MessagesController.getInstance(this.currentAccount).getInputPeer(this.monoforumTopicId);
                tL_messages_requestWebView.flags |= 1;
            }
            if (jSONObjectMakeThemeParams != null) {
                TLRPC.TL_dataJSON tL_dataJSON = new TLRPC.TL_dataJSON();
                tL_messages_requestWebView.theme_params = tL_dataJSON;
                tL_dataJSON.data = jSONObjectMakeThemeParams.toString();
                tL_messages_requestWebView.flags |= 4;
            }
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_messages_requestWebView, new RequestDelegate() { // from class: org.telegram.ui.bots.BotWebViewSheet$$ExternalSyntheticLambda7
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$requestWebView$28(tLObject, tL_error);
                }
            });
            NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.webViewResultSent);
            return;
        }
        if (i3 == 1) {
            TLRPC.TL_messages_requestSimpleWebView tL_messages_requestSimpleWebView = new TLRPC.TL_messages_requestSimpleWebView();
            tL_messages_requestSimpleWebView.from_switch_webview = (webViewRequestProps.flags & 1) != 0;
            tL_messages_requestSimpleWebView.bot = MessagesController.getInstance(this.currentAccount).getInputUser(this.botId);
            tL_messages_requestSimpleWebView.platform = "android";
            tL_messages_requestSimpleWebView.from_side_menu = (webViewRequestProps.flags & 2) != 0;
            tL_messages_requestSimpleWebView.compact = webViewRequestProps.compact;
            tL_messages_requestSimpleWebView.fullscreen = webViewRequestProps.fullscreen;
            if (jSONObjectMakeThemeParams != null) {
                TLRPC.TL_dataJSON tL_dataJSON2 = new TLRPC.TL_dataJSON();
                tL_messages_requestSimpleWebView.theme_params = tL_dataJSON2;
                tL_dataJSON2.data = jSONObjectMakeThemeParams.toString();
                tL_messages_requestSimpleWebView.flags |= 1;
            }
            if (!TextUtils.isEmpty(webViewRequestProps.buttonUrl)) {
                tL_messages_requestSimpleWebView.flags |= 8;
                tL_messages_requestSimpleWebView.url = webViewRequestProps.buttonUrl;
            }
            if (!TextUtils.isEmpty(webViewRequestProps.startParam)) {
                tL_messages_requestSimpleWebView.start_param = webViewRequestProps.startParam;
                tL_messages_requestSimpleWebView.flags |= 16;
            }
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_messages_requestSimpleWebView, new RequestDelegate() { // from class: org.telegram.ui.bots.BotWebViewSheet$$ExternalSyntheticLambda6
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$requestWebView$26(tLObject, tL_error);
                }
            });
            return;
        }
        if (i3 == 2) {
            TLRPC.TL_messages_requestWebView tL_messages_requestWebView2 = new TLRPC.TL_messages_requestWebView();
            tL_messages_requestWebView2.bot = MessagesController.getInstance(this.currentAccount).getInputUser(this.botId);
            tL_messages_requestWebView2.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(this.botId);
            tL_messages_requestWebView2.platform = "android";
            tL_messages_requestWebView2.compact = webViewRequestProps.compact;
            tL_messages_requestWebView2.fullscreen = webViewRequestProps.fullscreen;
            tL_messages_requestWebView2.url = webViewRequestProps.buttonUrl;
            tL_messages_requestWebView2.flags |= 2;
            if (jSONObjectMakeThemeParams != null) {
                TLRPC.TL_dataJSON tL_dataJSON3 = new TLRPC.TL_dataJSON();
                tL_messages_requestWebView2.theme_params = tL_dataJSON3;
                tL_dataJSON3.data = jSONObjectMakeThemeParams.toString();
                tL_messages_requestWebView2.flags |= 4;
            }
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_messages_requestWebView2, new RequestDelegate() { // from class: org.telegram.ui.bots.BotWebViewSheet$$ExternalSyntheticLambda5
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$requestWebView$24(tLObject, tL_error);
                }
            });
            NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.webViewResultSent);
            return;
        }
        if (i3 == 3) {
            TLRPC.TL_messages_requestAppWebView tL_messages_requestAppWebView = new TLRPC.TL_messages_requestAppWebView();
            TLRPC.TL_inputBotAppID tL_inputBotAppID = new TLRPC.TL_inputBotAppID();
            TLRPC.BotApp botApp = webViewRequestProps.app;
            tL_inputBotAppID.id = botApp.id;
            tL_inputBotAppID.access_hash = botApp.access_hash;
            tL_messages_requestAppWebView.app = tL_inputBotAppID;
            tL_messages_requestAppWebView.write_allowed = webViewRequestProps.allowWrite;
            tL_messages_requestAppWebView.platform = "android";
            if (baseFragment instanceof ChatActivity) {
                ChatActivity chatActivity = (ChatActivity) baseFragment;
                inputPeer = chatActivity.getCurrentUser() != null ? MessagesController.getInputPeer(chatActivity.getCurrentUser()) : MessagesController.getInputPeer(chatActivity.getCurrentChat());
            } else {
                inputPeer = MessagesController.getInputPeer(webViewRequestProps.botUser);
            }
            tL_messages_requestAppWebView.peer = inputPeer;
            tL_messages_requestAppWebView.compact = webViewRequestProps.compact;
            tL_messages_requestAppWebView.fullscreen = webViewRequestProps.fullscreen;
            if (!TextUtils.isEmpty(webViewRequestProps.startParam)) {
                tL_messages_requestAppWebView.start_param = webViewRequestProps.startParam;
                tL_messages_requestAppWebView.flags |= 2;
            }
            if (jSONObjectMakeThemeParams != null) {
                TLRPC.TL_dataJSON tL_dataJSON4 = new TLRPC.TL_dataJSON();
                tL_messages_requestAppWebView.theme_params = tL_dataJSON4;
                tL_dataJSON4.data = jSONObjectMakeThemeParams.toString();
                tL_messages_requestAppWebView.flags |= 4;
            }
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_messages_requestAppWebView, new RequestDelegate() { // from class: org.telegram.ui.bots.BotWebViewSheet$$ExternalSyntheticLambda8
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$requestWebView$30(tLObject, tL_error);
                }
            }, 66);
            return;
        }
        if (i3 != 4) {
            if (i3 != 5) {
                return;
            }
            TLRPC.TL_messages_requestChatJoinWebView tL_messages_requestChatJoinWebView = new TLRPC.TL_messages_requestChatJoinWebView();
            tL_messages_requestChatJoinWebView.platform = "android";
            tL_messages_requestChatJoinWebView.query_id = webViewRequestProps.queryId;
            if (jSONObjectMakeThemeParams != null) {
                TLRPC.TL_dataJSON tL_dataJSON5 = new TLRPC.TL_dataJSON();
                tL_messages_requestChatJoinWebView.theme_params = tL_dataJSON5;
                tL_dataJSON5.data = jSONObjectMakeThemeParams.toString();
            }
            ConnectionsManager.getInstance(this.currentAccount).sendRequestTyped(tL_messages_requestChatJoinWebView, new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.bots.BotWebViewSheet$$ExternalSyntheticLambda10
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    this.f$0.lambda$requestWebView$33((TLRPC.TL_webViewResultUrl) obj, (TLRPC.TL_error) obj2);
                }
            }, 66);
            return;
        }
        TLRPC.TL_messages_requestMainWebView tL_messages_requestMainWebView = new TLRPC.TL_messages_requestMainWebView();
        tL_messages_requestMainWebView.bot = MessagesController.getInstance(this.currentAccount).getInputUser(webViewRequestProps.botId);
        tL_messages_requestMainWebView.platform = "android";
        if (baseFragment instanceof ChatActivity) {
            ChatActivity chatActivity2 = (ChatActivity) baseFragment;
            inputPeer2 = chatActivity2.getCurrentUser() != null ? MessagesController.getInputPeer(chatActivity2.getCurrentUser()) : MessagesController.getInputPeer(chatActivity2.getCurrentChat());
        } else {
            inputPeer2 = MessagesController.getInstance(this.currentAccount).getInputPeer(webViewRequestProps.peerId);
        }
        tL_messages_requestMainWebView.peer = inputPeer2;
        tL_messages_requestMainWebView.compact = webViewRequestProps.compact;
        tL_messages_requestMainWebView.fullscreen = webViewRequestProps.fullscreen;
        if (!TextUtils.isEmpty(webViewRequestProps.startParam)) {
            tL_messages_requestMainWebView.start_param = webViewRequestProps.startParam;
            tL_messages_requestMainWebView.flags |= 2;
        }
        if (jSONObjectMakeThemeParams != null) {
            TLRPC.TL_dataJSON tL_dataJSON6 = new TLRPC.TL_dataJSON();
            tL_messages_requestMainWebView.theme_params = tL_dataJSON6;
            tL_dataJSON6.data = jSONObjectMakeThemeParams.toString();
            tL_messages_requestMainWebView.flags |= 1;
        }
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_messages_requestMainWebView, new RequestDelegate() { // from class: org.telegram.ui.bots.BotWebViewSheet$$ExternalSyntheticLambda9
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$requestWebView$32(tLObject, tL_error);
            }
        }, 66);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestWebView$21(final TLRPC.UserFull userFull) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.bots.BotWebViewSheet$$ExternalSyntheticLambda31
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$requestWebView$20(userFull);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestWebView$20(TLRPC.UserFull userFull) {
        TL_bots.BotInfo botInfo;
        TL_bots.botAppSettings botappsettings;
        if (userFull == null || (botInfo = userFull.bot_info) == null || (botappsettings = botInfo.app_settings) == null) {
            return;
        }
        applyAppBotSettings(botappsettings, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestWebView$22(View view) {
        openOptions();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestWebView$24(final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.bots.BotWebViewSheet$$ExternalSyntheticLambda33
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$requestWebView$23(tL_error, tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestWebView$23(TLRPC.TL_error tL_error, TLObject tLObject) {
        WebViewRequestProps webViewRequestProps;
        if (tL_error == null && (webViewRequestProps = this.requestProps) != null) {
            webViewRequestProps.applyResponse(tLObject);
            loadFromResponse();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestWebView$26(final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.bots.BotWebViewSheet$$ExternalSyntheticLambda50
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$requestWebView$25(tL_error, tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestWebView$25(TLRPC.TL_error tL_error, TLObject tLObject) {
        WebViewRequestProps webViewRequestProps;
        if (tL_error == null && (webViewRequestProps = this.requestProps) != null) {
            webViewRequestProps.applyResponse(tLObject);
            loadFromResponse();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestWebView$28(final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.bots.BotWebViewSheet$$ExternalSyntheticLambda28
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$requestWebView$27(tL_error, tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestWebView$27(TLRPC.TL_error tL_error, TLObject tLObject) {
        WebViewRequestProps webViewRequestProps;
        if (tL_error == null && (webViewRequestProps = this.requestProps) != null) {
            webViewRequestProps.applyResponse(tLObject);
            loadFromResponse();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestWebView$30(final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.bots.BotWebViewSheet$$ExternalSyntheticLambda45
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$requestWebView$29(tL_error, tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestWebView$29(TLRPC.TL_error tL_error, TLObject tLObject) {
        WebViewRequestProps webViewRequestProps;
        if (tL_error == null && (webViewRequestProps = this.requestProps) != null) {
            webViewRequestProps.applyResponse(tLObject);
            loadFromResponse();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestWebView$32(final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.bots.BotWebViewSheet$$ExternalSyntheticLambda49
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$requestWebView$31(tL_error, tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestWebView$31(TLRPC.TL_error tL_error, TLObject tLObject) {
        WebViewRequestProps webViewRequestProps;
        if (tL_error == null && (webViewRequestProps = this.requestProps) != null) {
            webViewRequestProps.applyResponse(tLObject);
            loadFromResponse();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestWebView$33(TLRPC.TL_webViewResultUrl tL_webViewResultUrl, TLRPC.TL_error tL_error) {
        WebViewRequestProps webViewRequestProps;
        if (tL_error == null && (webViewRequestProps = this.requestProps) != null) {
            webViewRequestProps.applyResponse(tL_webViewResultUrl);
            loadFromResponse();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openOptions() {
        TLRPC.TL_attachMenuBot tL_attachMenuBot;
        TLRPC.User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.botId));
        ArrayList<TLRPC.TL_attachMenuBot> arrayList = MediaDataController.getInstance(this.currentAccount).getAttachMenuBots().bots;
        int size = arrayList.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                tL_attachMenuBot = null;
                break;
            }
            TLRPC.TL_attachMenuBot tL_attachMenuBot2 = arrayList.get(i);
            i++;
            tL_attachMenuBot = tL_attachMenuBot2;
            if (tL_attachMenuBot.bot_id == this.botId) {
                break;
            }
        }
        ItemOptions itemOptions = this.options;
        if (itemOptions != null) {
            itemOptions.dismiss();
        }
        final ItemOptions itemOptionsMakeOptions = ItemOptions.makeOptions((ViewGroup) this.windowView, this.resourcesProvider, this.fullscreen ? this.fullscreenButtons : this.optionsItem, true);
        this.options = itemOptionsMakeOptions;
        BotDownloads botDownloads = BotDownloads.get(getContext(), this.currentAccount, this.botId);
        this.fileItems.clear();
        if (botDownloads.hasFiles()) {
            final ItemOptions itemOptionsMakeSwipeback = itemOptionsMakeOptions.makeSwipeback();
            itemOptionsMakeSwipeback.add(C2665R.drawable.msg_arrow_back, LocaleController.getString(C2665R.string.Back), new RatePill$$ExternalSyntheticLambda1(itemOptionsMakeOptions));
            itemOptionsMakeSwipeback.addGap();
            ArrayList<BotDownloads.FileDownload> files = botDownloads.getFiles();
            int size2 = files.size();
            int i2 = 0;
            while (i2 < size2) {
                BotDownloads.FileDownload fileDownload = files.get(i2);
                i2++;
                BotDownloads.FileDownload fileDownload2 = fileDownload;
                this.fileItems.put(fileDownload2, itemOptionsMakeSwipeback.add(fileDownload2.file_name, _UrlKt.FRAGMENT_ENCODE_SET, new Runnable() { // from class: org.telegram.ui.bots.BotWebViewSheet$$ExternalSyntheticLambda35
                    @Override // java.lang.Runnable
                    public final void run() {
                        BotWebViewSheet.$r8$lambda$m1zU1JXk5NQS_jqubrgOPHU3MyI();
                    }
                }).getLast());
            }
            updateDownloadBulletin();
            itemOptionsMakeSwipeback.setMinWidth(AndroidUtilities.dp(180.0f));
            itemOptionsMakeOptions.add(C2665R.drawable.menu_download_round, LocaleController.getString(C2665R.string.BotDownloads), new Runnable() { // from class: org.telegram.ui.bots.BotWebViewSheet$$ExternalSyntheticLambda36
                @Override // java.lang.Runnable
                public final void run() {
                    itemOptionsMakeOptions.openSwipeback(itemOptionsMakeSwipeback);
                }
            });
            itemOptionsMakeOptions.addGap();
        }
        ItemOptions itemOptionsAddIf = itemOptionsMakeOptions.addIf(this.onVerifiedAge == null, C2665R.drawable.msg_bot, LocaleController.getString(C2665R.string.BotWebViewOpenBot), new Runnable() { // from class: org.telegram.ui.bots.BotWebViewSheet$$ExternalSyntheticLambda37
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$openOptions$36();
            }
        }).addIf(this.onVerifiedAge == null && this.hasSettings, C2665R.drawable.msg_settings, LocaleController.getString(C2665R.string.BotWebViewSettings), new Runnable() { // from class: org.telegram.ui.bots.BotWebViewSheet$$ExternalSyntheticLambda38
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$openOptions$37();
            }
        });
        boolean z = this.swipeContainer.isPinned;
        itemOptionsAddIf.add(z ? C2665R.drawable.msg_unpin : C2665R.drawable.msg_pin, LocaleController.getString(z ? C2665R.string.UnpinMessage : C2665R.string.PinMessage), new Runnable() { // from class: org.telegram.ui.bots.BotWebViewSheet$$ExternalSyntheticLambda39
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$openOptions$38();
            }
        }).add(C2665R.drawable.msg_retry, LocaleController.getString(C2665R.string.BotWebViewReloadPage), new Runnable() { // from class: org.telegram.ui.bots.BotWebViewSheet$$ExternalSyntheticLambda40
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$openOptions$39();
            }
        }).addIf(this.onVerifiedAge == null && user != null && user.bot_has_main_app, C2665R.drawable.msg_home, LocaleController.getString(C2665R.string.AddShortcut), new Runnable() { // from class: org.telegram.ui.bots.BotWebViewSheet$$ExternalSyntheticLambda41
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$openOptions$40();
            }
        }).addIf(this.onVerifiedAge == null, C2665R.drawable.menu_intro, LocaleController.getString(C2665R.string.BotWebViewToS), new Runnable() { // from class: org.telegram.ui.bots.BotWebViewSheet$$ExternalSyntheticLambda42
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$openOptions$41();
            }
        }).addIf(this.onVerifiedAge == null, C2665R.drawable.msg_report, LocaleController.getString(C2665R.string.BotWebViewReportBot), new Runnable() { // from class: org.telegram.ui.bots.BotWebViewSheet$$ExternalSyntheticLambda43
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$openOptions$42();
            }
        }).addIf(this.onVerifiedAge == null && tL_attachMenuBot != null && (tL_attachMenuBot.show_in_side_menu || tL_attachMenuBot.show_in_attach_menu), C2665R.drawable.msg_delete, LocaleController.getString(C2665R.string.BotWebViewDeleteBot), new Runnable() { // from class: org.telegram.ui.bots.BotWebViewSheet$$ExternalSyntheticLambda34
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$openOptions$44();
            }
        });
        if (this.actionBarColor != Theme.getColor(Theme.key_windowBackgroundWhite)) {
            int i3 = AndroidUtilities.computePerceivedBrightness(this.actionBarColor) >= 0.721f ? -1 : -15198183;
            int i4 = AndroidUtilities.computePerceivedBrightness(i3) >= 0.721f ? -16777216 : -1;
            int iMultAlpha = Theme.multAlpha(i4, 0.85f);
            int iMultAlpha2 = Theme.multAlpha(i4, 0.1f);
            itemOptionsMakeOptions.setBackgroundColor(i3);
            for (int i5 = 0; i5 < itemOptionsMakeOptions.getItemsCount(); i5++) {
                View itemAt = itemOptionsMakeOptions.getItemAt(i5);
                if (itemAt instanceof ActionBarMenuSubItem) {
                    ActionBarMenuSubItem actionBarMenuSubItem = (ActionBarMenuSubItem) itemAt;
                    actionBarMenuSubItem.setColors(i4, iMultAlpha);
                    actionBarMenuSubItem.setSelectorColor(iMultAlpha2);
                }
            }
        }
        itemOptionsMakeOptions.setGravity(5).translate(-this.insets.right, 0.0f).forceTop(true).setDrawScrim(false).setDimAlpha(0).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openOptions$36() {
        Activity activity = this.parentActivity;
        if (activity instanceof LaunchActivity) {
            ((LaunchActivity) activity).lambda$runLinkRequest$102(ChatActivity.of(this.botId));
        }
        dismiss(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openOptions$37() {
        this.webViewContainer.onSettingsButtonPressed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openOptions$38() {
        this.swipeContainer.isPinned = !r0.isPinned;
        this.options = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openOptions$39() {
        if (this.webViewContainer.getWebView() != null) {
            this.webViewContainer.getWebView().animate().cancel();
            this.webViewContainer.getWebView().animate().alpha(0.0f).start();
        }
        this.progressView.setLoadProgress(0.0f);
        this.progressView.setAlpha(1.0f);
        this.progressView.setVisibility(0);
        this.webViewContainer.setBotUser(MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.botId)));
        this.webViewContainer.loadFlickerAndSettingsItem(this.currentAccount, this.botId, null);
        this.webViewContainer.reload();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openOptions$40() {
        MediaDataController.getInstance(this.currentAccount).installShortcut(this.botId, MediaDataController.SHORTCUT_TYPE_ATTACHED_BOT);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openOptions$41() {
        Browser.openUrl(getContext(), LocaleController.getString(C2665R.string.BotWebViewToSLink));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openOptions$42() {
        ReportBottomSheet.openChat(this.currentAccount, getContext(), BulletinFactory.of(Bulletin.BulletinWindow.make(getContext()), this.resourcesProvider), this.botId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openOptions$44() {
        deleteBot(this.currentAccount, this.botId, new Runnable() { // from class: org.telegram.ui.bots.BotWebViewSheet$$ExternalSyntheticLambda53
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$openOptions$43();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showBulletin(Utilities.CallbackReturn<BulletinFactory, Bulletin> callbackReturn) {
        callbackReturn.run(BulletinFactory.of(this.bulletinContainer, this.resourcesProvider)).show(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateDownloadBulletinArrow() {
        BotDownloads.DownloadBulletin downloadBulletin = this.downloadBulletinLayout;
        if (downloadBulletin == null) {
            return;
        }
        if (this.fullscreen) {
            downloadBulletin.setArrow(AndroidUtilities.lerp(AndroidUtilities.dp(24.0f), AndroidUtilities.dp(26.0f), this.fullscreenProgress));
        } else if (this.actionBarTransitionProgress > 0.5f) {
            downloadBulletin.setArrow(AndroidUtilities.dp(24.0f));
        } else {
            downloadBulletin.setArrow(-1);
        }
    }

    private void updateDownloadBulletin() {
        Bulletin bulletin;
        BotDownloads botDownloads = BotDownloads.get(getContext(), this.currentAccount, this.botId);
        BotDownloads.FileDownload current = botDownloads.getCurrent();
        if (current == null) {
            Bulletin bulletin2 = this.downloadBulletin;
            if (bulletin2 != null) {
                bulletin2.hide();
                this.downloadBulletin = null;
            }
        } else if ((current.isDownloading() && !current.shown) || current.resaved) {
            if (this.lastBulletinFile != current && (bulletin = this.downloadBulletin) != null) {
                bulletin.hide();
                this.downloadBulletin = null;
            }
            Bulletin bulletin3 = this.downloadBulletin;
            if (bulletin3 == null || !bulletin3.isShowing()) {
                this.lastBulletinFile = current;
                FrameLayout frameLayout = this.bulletinContainer;
                BotDownloads.DownloadBulletin downloadBulletin = new BotDownloads.DownloadBulletin(getContext(), this.resourcesProvider);
                this.downloadBulletinLayout = downloadBulletin;
                Bulletin bulletinMake = Bulletin.make(frameLayout, downloadBulletin, 5000);
                this.downloadBulletin = bulletinMake;
                bulletinMake.show(true);
            }
            if (this.downloadBulletinLayout.set(current)) {
                this.downloadBulletin = null;
            }
            current.resaved = false;
            current.shown = true;
        } else {
            BotDownloads.DownloadBulletin downloadBulletin2 = this.downloadBulletinLayout;
            if (downloadBulletin2 != null) {
                this.lastBulletinFile = current;
                if (downloadBulletin2.set(current)) {
                    this.downloadBulletin = null;
                }
            }
        }
        updateDownloadBulletinArrow();
        for (Map.Entry<BotDownloads.FileDownload, ActionBarMenuSubItem> entry : this.fileItems.entrySet()) {
            ActionBarMenuSubItem value = entry.getValue();
            final BotDownloads.FileDownload key = entry.getKey();
            value.setText(key.file_name);
            if (!key.isDownloading()) {
                value.setSubtext(AndroidUtilities.formatFileSize(key.size));
            } else {
                Pair<Long, Long> progress = key.getProgress();
                long jLongValue = ((Long) progress.second).longValue();
                Object obj = progress.first;
                if (jLongValue > 0) {
                    value.setSubtext(AndroidUtilities.formatFileSize(((Long) obj).longValue()) + " / " + AndroidUtilities.formatFileSize(((Long) progress.second).longValue()));
                } else {
                    value.setSubtext(AndroidUtilities.formatFileSize(((Long) obj).longValue()));
                }
            }
            if (key.isDownloading()) {
                value.setRightIcon(C2665R.drawable.msg_close);
                value.subtextView.setPadding(0, 0, AndroidUtilities.dp(32.0f), 0);
            } else if (key.cancelled) {
                value.setVisibility(8);
            } else {
                value.setRightIcon(0);
                value.subtextView.setPadding(0, 0, 0, 0);
            }
            value.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.bots.BotWebViewSheet$$ExternalSyntheticLambda12
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$updateDownloadBulletin$45(key, view);
                }
            });
        }
        this.optionsIcon.setDownloading(botDownloads.isDownloading());
        this.fullscreenButtons.setDownloading(botDownloads.isDownloading());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateDownloadBulletin$45(BotDownloads.FileDownload fileDownload, View view) {
        if (fileDownload.isDownloading()) {
            fileDownload.cancel();
        } else {
            fileDownload.open();
        }
        ItemOptions itemOptions = this.options;
        if (itemOptions != null) {
            itemOptions.dismiss();
            this.options = null;
        }
    }

    private void applyAppBotSettings(TL_bots.botAppSettings botappsettings, boolean z) {
        if (botappsettings == null) {
            return;
        }
        boolean zIsCurrentThemeDark = Theme.isCurrentThemeDark();
        int i = botappsettings.flags;
        boolean z2 = ((zIsCurrentThemeDark ? 4 : 2) & i) != 0;
        if ((i & (zIsCurrentThemeDark ? 16 : 8)) != 0) {
            setActionBarColor((zIsCurrentThemeDark ? botappsettings.header_dark_color : botappsettings.header_color) | (-16777216), true, z);
        }
        if (z2) {
            setBackgroundColor((zIsCurrentThemeDark ? botappsettings.background_dark_color : botappsettings.background_color) | (-16777216), true, z);
            setNavigationBarColor((zIsCurrentThemeDark ? botappsettings.background_dark_color : botappsettings.background_color) | (-16777216), z);
        }
    }

    private void loadFromResponse() {
        boolean z;
        if (this.requestProps == null) {
            return;
        }
        long jMax = Math.max(0L, 60000 - (System.currentTimeMillis() - this.requestProps.responseTime));
        String str = null;
        this.fullsize = null;
        TLObject tLObject = this.requestProps.response;
        if (tLObject instanceof TLRPC.TL_webViewResultUrl) {
            TLRPC.TL_webViewResultUrl tL_webViewResultUrl = (TLRPC.TL_webViewResultUrl) tLObject;
            this.queryId = tL_webViewResultUrl.query_id;
            str = tL_webViewResultUrl.url;
            z = tL_webViewResultUrl.same_origin;
            this.fullsize = Boolean.valueOf(tL_webViewResultUrl.fullsize);
            boolean z2 = this.fromTab;
            if (!z2) {
                setFullscreen(tL_webViewResultUrl.fullscreen, !z2);
            }
        } else {
            if (tLObject instanceof TLRPC.TL_appWebViewResultUrl) {
                this.queryId = 0L;
                str = ((TLRPC.TL_appWebViewResultUrl) tLObject).url;
            } else if (tLObject instanceof TLRPC.TL_simpleWebViewResultUrl) {
                this.queryId = 0L;
                str = ((TLRPC.TL_simpleWebViewResultUrl) tLObject).url;
            }
            z = false;
        }
        if (str != null && !this.fromTab) {
            MediaDataController.getInstance(this.currentAccount).increaseWebappRating(this.requestProps.botId);
            this.webViewContainer.loadUrl(this.currentAccount, str, z);
        }
        AndroidUtilities.runOnUIThread(this.pollRunnable, jMax);
        ChatAttachAlertBotWebViewLayout.WebViewSwipeContainer webViewSwipeContainer = this.swipeContainer;
        if (webViewSwipeContainer != null) {
            webViewSwipeContainer.setFullSize(isFullSize());
        }
    }

    private void preloadShortcutBotIcon(TLRPC.User user, TLRPC.TL_attachMenuBot tL_attachMenuBot) {
        if (tL_attachMenuBot == null || !tL_attachMenuBot.show_in_side_menu || MediaDataController.getInstance(this.currentAccount).isShortcutAdded(this.botId, MediaDataController.SHORTCUT_TYPE_ATTACHED_BOT)) {
            return;
        }
        if (user == null) {
            user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.botId));
        }
        if (user == null || user.photo == null || FileLoader.getInstance(this.currentAccount).getPathToAttach(user.photo.photo_small, true).exists()) {
            return;
        }
        MediaDataController.getInstance(this.currentAccount).preloadImage(ImageLocation.getForUser(this.currentAccount, user, 1), 0);
    }

    public static void deleteBot(final int i, final long j, final Runnable runnable) {
        final TLRPC.TL_attachMenuBot tL_attachMenuBot;
        ArrayList<TLRPC.TL_attachMenuBot> arrayList = MediaDataController.getInstance(i).getAttachMenuBots().bots;
        int size = arrayList.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                tL_attachMenuBot = null;
                break;
            }
            TLRPC.TL_attachMenuBot tL_attachMenuBot2 = arrayList.get(i2);
            i2++;
            TLRPC.TL_attachMenuBot tL_attachMenuBot3 = tL_attachMenuBot2;
            if (tL_attachMenuBot3.bot_id == j) {
                tL_attachMenuBot = tL_attachMenuBot3;
                break;
            }
        }
        if (tL_attachMenuBot == null) {
            return;
        }
        new AlertDialog.Builder(LaunchActivity.getLastFragment().getContext()).setTitle(LocaleController.getString(C2665R.string.BotRemoveFromMenuTitle)).setMessage(AndroidUtilities.replaceTags(LocaleController.formatString(C2665R.string.BotRemoveFromMenu, tL_attachMenuBot.short_name))).setPositiveButton(LocaleController.getString(C2665R.string.OK), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.bots.BotWebViewSheet$$ExternalSyntheticLambda54
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i3) {
                BotWebViewSheet.$r8$lambda$QNglP01KvBGd4hpmDml78Oc2a0k(i, j, tL_attachMenuBot, runnable, alertDialog, i3);
            }
        }).setNegativeButton(LocaleController.getString(C2665R.string.Cancel), null).show();
    }

    public static /* synthetic */ void $r8$lambda$QNglP01KvBGd4hpmDml78Oc2a0k(final int i, long j, TLRPC.TL_attachMenuBot tL_attachMenuBot, Runnable runnable, AlertDialog alertDialog, int i2) {
        TLRPC.TL_messages_toggleBotInAttachMenu tL_messages_toggleBotInAttachMenu = new TLRPC.TL_messages_toggleBotInAttachMenu();
        tL_messages_toggleBotInAttachMenu.bot = MessagesController.getInstance(i).getInputUser(j);
        tL_messages_toggleBotInAttachMenu.enabled = false;
        ConnectionsManager.getInstance(i).sendRequest(tL_messages_toggleBotInAttachMenu, new RequestDelegate() { // from class: org.telegram.ui.bots.BotWebViewSheet$$ExternalSyntheticLambda55
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.bots.BotWebViewSheet$$ExternalSyntheticLambda56
                    @Override // java.lang.Runnable
                    public final void run() {
                        MediaDataController.getInstance(i).loadAttachMenuBots(false, true);
                    }
                });
            }
        }, 66);
        tL_attachMenuBot.show_in_side_menu = false;
        NotificationCenter.getInstance(i).lambda$postNotificationNameOnUIThread$1(NotificationCenter.attachMenuBotsDidLoad, new Object[0]);
        MediaDataController.getInstance(i).uninstallShortcut(j, MediaDataController.SHORTCUT_TYPE_ATTACHED_BOT);
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }

    @Override // android.app.Dialog
    public void show() {
        if (AndroidUtilities.isSafeToShow(getContext())) {
            setOpen(true);
            this.windowView.setAlpha(0.0f);
            this.windowView.addOnLayoutChangeListener(new AnonymousClass11());
            super.show();
            this.superDismissed = false;
            activeSheets.add(this);
        }
    }

    /* JADX INFO: renamed from: org.telegram.ui.bots.BotWebViewSheet$11, reason: invalid class name */
    /* JADX INFO: loaded from: classes7.dex */
    public class AnonymousClass11 implements View.OnLayoutChangeListener {
        public AnonymousClass11() {
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            view.removeOnLayoutChangeListener(this);
            BotWebViewSheet.this.swipeContainer.setSwipeOffsetY(BotWebViewSheet.this.swipeContainer.getHeight());
            BotWebViewSheet.this.windowView.setAlpha(1.0f);
            BotWebViewSheet botWebViewSheet = BotWebViewSheet.this;
            if (botWebViewSheet.showOffsetY != Float.MAX_VALUE) {
                botWebViewSheet.swipeContainer.setSwipeOffsetAnimationDisallowed(true);
                BotWebViewSheet.this.swipeContainer.setOffsetY(BotWebViewSheet.this.showOffsetY);
                BotWebViewSheet.this.swipeContainer.setSwipeOffsetAnimationDisallowed(false);
            }
            BotWebViewSheet.this.webViewContainer.invalidateViewPortHeight(true, true);
            final AnimationNotificationsLocker animationNotificationsLocker = new AnimationNotificationsLocker();
            animationNotificationsLocker.lock();
            BotWebViewSheet botWebViewSheet2 = BotWebViewSheet.this;
            if (botWebViewSheet2.showExpanded || botWebViewSheet2.isFullSize()) {
                BotWebViewSheet.this.swipeContainer.stickTo((-BotWebViewSheet.this.swipeContainer.getOffsetY()) + BotWebViewSheet.this.swipeContainer.getTopActionBarOffsetY(), new Runnable() { // from class: org.telegram.ui.bots.BotWebViewSheet$11$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        animationNotificationsLocker.unlock();
                    }
                });
            } else {
                new SpringAnimation(BotWebViewSheet.this.swipeContainer, ChatAttachAlertBotWebViewLayout.WebViewSwipeContainer.SWIPE_OFFSET_Y, 0.0f).setSpring(new SpringForce(0.0f).setDampingRatio(0.75f).setStiffness(500.0f)).addEndListener(new DynamicAnimation.OnAnimationEndListener() { // from class: org.telegram.ui.bots.BotWebViewSheet$11$$ExternalSyntheticLambda1
                    @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationEndListener
                    public final void onAnimationEnd(DynamicAnimation dynamicAnimation, boolean z, float f, float f2) {
                        animationNotificationsLocker.unlock();
                    }
                }).start();
            }
            BotWebViewSheet.this.swipeContainer.opened = true;
            if (!BotWebViewSheet.this.fullscreen || BotWebViewSheet.this.fullscreenButtons == null) {
                return;
            }
            BotWebViewSheet.this.fullscreenButtons.setAlpha(0.0f);
            BotWebViewSheet.this.fullscreenButtons.animate().alpha(1.0f).setDuration(220L).start();
        }
    }

    @Override // org.telegram.ui.ActionBar.BottomSheetTabsOverlay.Sheet
    public void dismiss(boolean z) {
        dismiss(z, null);
    }

    public long getBotId() {
        return this.botId;
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        if (this.passcodeView.getVisibility() == 0) {
            if (getOwnerActivity() != null) {
                getOwnerActivity().finish();
            }
        } else {
            if (this.webViewContainer.onBackPressed()) {
                return;
            }
            dismiss(true, null);
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    /* JADX INFO: renamed from: dismiss, reason: merged with bridge method [inline-methods] */
    public void lambda$openOptions$43() {
        dismiss((Runnable) null);
    }

    public boolean onCheckDismissByUser() {
        if (this.needCloseConfirmation) {
            TLRPC.User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.botId));
            AlertDialog alertDialogCreate = new AlertDialog.Builder(getContext()).setTitle(user != null ? ContactsController.formatName(user.first_name, user.last_name) : null).setMessage(LocaleController.getString(C2665R.string.BotWebViewChangesMayNotBeSaved)).setPositiveButton(LocaleController.getString(C2665R.string.BotWebViewCloseAnyway), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.bots.BotWebViewSheet$$ExternalSyntheticLambda48
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i) {
                    this.f$0.lambda$onCheckDismissByUser$49(alertDialog, i);
                }
            }).setNegativeButton(LocaleController.getString(C2665R.string.Cancel), null).create();
            alertDialogCreate.show();
            ((TextView) alertDialogCreate.getButton(-1)).setTextColor(getColor(Theme.key_text_RedBold));
            return false;
        }
        lambda$openOptions$43();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCheckDismissByUser$49(AlertDialog alertDialog, int i) {
        lambda$openOptions$43();
    }

    public void dismiss(Runnable runnable) {
        dismiss(false, runnable);
    }

    public void dismiss(boolean z, final Runnable runnable) {
        LaunchActivity launchActivity;
        if (this.dismissed) {
            return;
        }
        if (this.onVerifiedAge != null) {
            z = false;
        }
        this.dismissed = true;
        setOpen(false);
        AndroidUtilities.cancelRunOnUIThread(this.pollRunnable);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.webViewResultSent);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.botDownloadsUpdate);
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.didSetNewTheme);
        if (z && ((launchActivity = LaunchActivity.instance) == null || launchActivity.getBottomSheetTabsOverlay() == null)) {
            z = false;
        }
        if (z) {
            SpringAnimation springAnimation = this.springAnimation;
            if (springAnimation != null) {
                springAnimation.getSpring().setFinalPosition(0.0f);
                this.springAnimation.start();
            }
            LaunchActivity.instance.getBottomSheetTabsOverlay().dismissSheet(this);
        } else {
            BotButtons botButtons = this.botButtons;
            if (botButtons != null) {
                botButtons.animate().translationY(this.botButtons.getTotalHeight()).alpha(0.0f).setDuration(160L).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).start();
            }
            this.webViewContainer.destroyWebView();
            ChatAttachAlertBotWebViewLayout.WebViewSwipeContainer webViewSwipeContainer = this.swipeContainer;
            int height = webViewSwipeContainer.getHeight();
            BotButtons botButtons2 = this.botButtons;
            int totalHeight = height + (botButtons2 != null ? botButtons2.getTotalHeight() : 0);
            Rect rect = this.insets;
            webViewSwipeContainer.stickTo(totalHeight + rect.top + rect.bottom + this.windowView.measureKeyboardHeight() + (isFullSize() ? AndroidUtilities.dp(200.0f) : 0), true, new Runnable() { // from class: org.telegram.ui.bots.BotWebViewSheet$$ExternalSyntheticLambda13
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$dismiss$50(runnable);
                }
            });
        }
        activeSheets.remove(this);
        BottomSheetTabs bottomSheetTabs = this.bottomTabs;
        if (bottomSheetTabs != null) {
            bottomSheetTabs.stopListening(this.invalidateRunnable, this.relayoutRunnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$dismiss$50(Runnable runnable) {
        if (!this.superDismissed) {
            super.dismiss();
            this.superDismissed = true;
        }
        if (runnable != null) {
            runnable.run();
        }
    }

    @Override // org.telegram.ui.ActionBar.BottomSheetTabsOverlay.Sheet
    public void release() {
        if (this.superDismissed) {
            return;
        }
        try {
            super.dismiss();
        } catch (Exception e) {
            FileLog.m992e(e);
        }
        setOpen(false);
    }

    public void setOpen(final boolean z) {
        ValueAnimator valueAnimator = this.openAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        if (Math.abs(this.openedProgress - (z ? 1.0f : 0.0f)) < 0.01f) {
            return;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.openedProgress, z ? 1.0f : 0.0f);
        this.openAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.bots.BotWebViewSheet.12
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                BotWebViewSheet.this.openedProgress = z ? 1.0f : 0.0f;
                BotWebViewSheet.this.checkNavBarColor();
            }
        });
        this.openAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.bots.BotWebViewSheet$$ExternalSyntheticLambda11
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f$0.lambda$setOpen$51(valueAnimator2);
            }
        });
        this.openAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        this.openAnimator.setDuration(220L);
        this.openAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setOpen$51(ValueAnimator valueAnimator) {
        this.openedProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        checkNavBarColor();
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.webViewResultSent) {
            if (this.queryId == ((Long) objArr[0]).longValue()) {
                lambda$openOptions$43();
                return;
            }
            return;
        }
        if (i == NotificationCenter.didSetNewTheme) {
            this.windowView.invalidate();
            this.webViewContainer.updateFlickerBackgroundColor(getColor(Theme.key_windowBackgroundWhite));
            updateActionBarColors();
            updateLightStatusBar();
            return;
        }
        if (i == NotificationCenter.botDownloadsUpdate) {
            updateDownloadBulletin();
        }
    }

    public static int navigationBarColor(int i) {
        return Theme.adaptHSV(i, 0.35f, -0.1f);
    }

    public void setBackgroundColor(final int i, boolean z, boolean z2) {
        final int color = this.backgroundPaint.getColor();
        this.overrideBackgroundColor = z;
        ValueAnimator valueAnimator = this.backgroundColorAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        if (z2) {
            ValueAnimator duration = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(200L);
            this.backgroundColorAnimator = duration;
            duration.setInterpolator(CubicBezierInterpolator.DEFAULT);
            this.backgroundColorAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.bots.BotWebViewSheet$$ExternalSyntheticLambda30
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    this.f$0.lambda$setBackgroundColor$52(color, i, valueAnimator2);
                }
            });
            this.backgroundColorAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.bots.BotWebViewSheet.13
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    BotWebViewSheet.this.backgroundPaint.setColor(i);
                    BotWebViewSheet.this.updateActionBarColors();
                    BotWebViewSheet.this.windowView.invalidate();
                    if (BotWebViewSheet.this.errorContainer != null) {
                        BotWebViewSheet.this.errorContainer.setDark(AndroidUtilities.computePerceivedBrightness(BotWebViewSheet.this.backgroundPaint.getColor()) <= 0.721f, false);
                        BotWebViewSheet.this.errorContainer.setBackgroundColor(BotWebViewSheet.this.backgroundPaint.getColor());
                    }
                    BotWebViewSheet.this.updateWebViewBackgroundColor();
                }
            });
            this.backgroundColorAnimator.start();
            return;
        }
        this.backgroundPaint.setColor(i);
        updateActionBarColors();
        this.windowView.invalidate();
        ArticleViewer.ErrorContainer errorContainer = this.errorContainer;
        if (errorContainer != null) {
            errorContainer.setDark(AndroidUtilities.computePerceivedBrightness(this.backgroundPaint.getColor()) <= 0.721f, false);
            this.errorContainer.setBackgroundColor(this.backgroundPaint.getColor());
        }
        updateWebViewBackgroundColor();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setBackgroundColor$52(int i, int i2, ValueAnimator valueAnimator) {
        this.backgroundPaint.setColor(ColorUtils.blendARGB(i, i2, ((Float) valueAnimator.getAnimatedValue()).floatValue()));
        updateActionBarColors();
        this.windowView.invalidate();
        ArticleViewer.ErrorContainer errorContainer = this.errorContainer;
        if (errorContainer != null) {
            errorContainer.setDark(AndroidUtilities.computePerceivedBrightness(this.backgroundPaint.getColor()) <= 0.721f, false);
            this.errorContainer.setBackgroundColor(this.backgroundPaint.getColor());
        }
        updateWebViewBackgroundColor();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateWebViewBackgroundColor() {
        BotWebViewContainer.MyWebView webView;
        BotWebViewContainer botWebViewContainer = this.webViewContainer;
        if (botWebViewContainer == null || (webView = botWebViewContainer.getWebView()) == null) {
            return;
        }
        webView.setBackgroundColor(this.backgroundPaint.getColor());
    }

    public void setFullscreen(boolean z, boolean z2) {
        setFullscreen(z, z2, this.fullscreenBlur);
    }

    public void setFullscreen(final boolean z, boolean z2, boolean z3) {
        float fMin;
        if (this.fullscreen == z) {
            return;
        }
        this.fullscreen = z;
        this.fullscreenBlur = z3 && !MessagesController.getInstance(this.currentAccount).disableBotFullscreenBlur && SharedConfig.getDevicePerformanceClass() >= 2;
        ValueAnimator valueAnimator = this.fullscreenAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        BotFullscreenButtons botFullscreenButtons = this.fullscreenButtons;
        if (botFullscreenButtons != null) {
            botFullscreenButtons.setPreview(z, z2);
            this.fullscreenButtons.setParentRenderNode(this.fullscreenBlur ? this.swipeContainer.getRenderNode() : null);
        }
        this.swipeContainerFromWidth = this.swipeContainer.getWidth();
        this.swipeContainerFromHeight = this.swipeContainer.getHeight();
        this.resetOffsetY = false;
        if (z2) {
            updateFullscreenLayout();
            updateWindowFlags();
            updateDownloadBulletinArrow();
            if (!AndroidUtilities.isTablet() || AndroidUtilities.isInMultiwindow || AndroidUtilities.isSmallTablet()) {
                fMin = 0.0f;
            } else {
                int i = AndroidUtilities.displaySize.x;
                fMin = (i - ((int) (Math.min(i, r14.y) * 0.8f))) / 2.0f;
            }
            final float f = z ? this.insets.left + fMin : (-r4) - fMin;
            if (!z) {
                fMin = -fMin;
            }
            final float f2 = fMin;
            final float translationY = z ? this.swipeContainer.getTranslationY() : -AndroidUtilities.dp(24.0f);
            final float currentActionBarHeight = z ? -AndroidUtilities.dp(24.0f) : (ActionBar.getCurrentActionBarHeight() + AndroidUtilities.statusBarHeight) - AndroidUtilities.dp(24.0f);
            final float currentActionBarHeight2 = ActionBar.getCurrentActionBarHeight() + AndroidUtilities.statusBarHeight;
            this.swipeContainer.cancelStickTo();
            this.swipeContainer.setSwipeOffsetAnimationDisallowed(true);
            this.actionBar.setVisibility(0);
            ChatAttachAlertBotWebViewLayout.WebViewSwipeContainer webViewSwipeContainer = this.swipeContainer;
            if (z) {
                webViewSwipeContainer.setTopActionBarOffsetY(-AndroidUtilities.dp(24.0f));
            } else {
                webViewSwipeContainer.setTopActionBarOffsetY(currentActionBarHeight2 - AndroidUtilities.dp(24.0f));
            }
            this.swipeContainer.invalidateTranslation();
            this.swipeContainer.invalidate();
            this.fullscreenTransitionProgress = 0.0f;
            float f3 = z ? 0.0f : 1.0f - 0.0f;
            this.fullscreenProgress = f3;
            this.actionBar.setAlpha(1.0f - f3);
            this.actionBar.setTranslationY((-ActionBar.getCurrentActionBarHeight()) * this.fullscreenProgress);
            this.swipeContainer.setTranslationY(AndroidUtilities.lerp(translationY, currentActionBarHeight, this.fullscreenTransitionProgress));
            this.swipeContainer.setTranslationX(AndroidUtilities.lerp(f, 0.0f, this.fullscreenTransitionProgress));
            this.botButtons.setTranslationX(AndroidUtilities.lerp(f2, 0.0f, this.fullscreenTransitionProgress));
            this.fullscreenButtons.setAlpha(this.fullscreenProgress);
            this.windowView.invalidate();
            this.webViewContainer.setViewPortHeightOffset(this.swipeContainer.getTranslationY() - currentActionBarHeight);
            this.webViewContainer.invalidateViewPortHeight(false, false);
            this.fullscreenInProgress = true;
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            this.fullscreenAnimator = valueAnimatorOfFloat;
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.bots.BotWebViewSheet.14
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    BotWebViewSheet.this.fullscreenTransitionProgress = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                    BotWebViewSheet botWebViewSheet = BotWebViewSheet.this;
                    botWebViewSheet.fullscreenProgress = z ? botWebViewSheet.fullscreenTransitionProgress : 1.0f - botWebViewSheet.fullscreenTransitionProgress;
                    BotWebViewSheet.this.actionBar.setAlpha(1.0f - BotWebViewSheet.this.fullscreenProgress);
                    BotWebViewSheet.this.actionBar.setTranslationY((-ActionBar.getCurrentActionBarHeight()) * BotWebViewSheet.this.fullscreenProgress);
                    BotWebViewSheet.this.swipeContainer.setTranslationY(AndroidUtilities.lerp(translationY, currentActionBarHeight, BotWebViewSheet.this.fullscreenTransitionProgress));
                    BotWebViewSheet.this.swipeContainer.setTranslationX(AndroidUtilities.lerp(f, 0.0f, BotWebViewSheet.this.fullscreenTransitionProgress));
                    BotWebViewSheet.this.botButtons.setTranslationX(AndroidUtilities.lerp(f2, 0.0f, BotWebViewSheet.this.fullscreenTransitionProgress));
                    BotWebViewSheet.this.fullscreenButtons.setAlpha(BotWebViewSheet.this.fullscreenProgress);
                    BotWebViewSheet.this.windowView.invalidate();
                    BotWebViewSheet.this.webViewContainer.setViewPortHeightOffset(BotWebViewSheet.this.swipeContainer.getTranslationY() - currentActionBarHeight);
                    BotWebViewSheet.this.webViewContainer.invalidateViewPortHeight(false, false);
                    BotWebViewSheet.this.updateDownloadBulletinArrow();
                }
            });
            this.fullscreenAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.bots.BotWebViewSheet.15
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    BotWebViewSheet.this.fullscreenInProgress = false;
                    boolean z4 = z;
                    BotWebViewSheet botWebViewSheet = BotWebViewSheet.this;
                    if (!z4) {
                        botWebViewSheet.updateFullscreenLayout();
                        BotWebViewSheet.this.updateWindowFlags();
                        BotWebViewSheet.this.swipeContainer.setForceOffsetY(currentActionBarHeight2 - AndroidUtilities.dp(24.0f));
                        BotWebViewSheet.this.swipeContainer.setTopActionBarOffsetY(currentActionBarHeight2 - AndroidUtilities.dp(24.0f));
                        BotWebViewSheet.this.swipeContainer.setSwipeOffsetY(0.0f);
                    } else {
                        botWebViewSheet.swipeContainer.setForceOffsetY(-AndroidUtilities.dp(24.0f));
                        BotWebViewSheet.this.swipeContainer.setTopActionBarOffsetY(-AndroidUtilities.dp(24.0f));
                        BotWebViewSheet.this.swipeContainer.setSwipeOffsetY(0.0f);
                    }
                    BotWebViewSheet botWebViewSheet2 = BotWebViewSheet.this;
                    botWebViewSheet2.fullscreenProgress = z ? botWebViewSheet2.fullscreenTransitionProgress : 1.0f - botWebViewSheet2.fullscreenTransitionProgress;
                    BotWebViewSheet.this.actionBar.setAlpha(1.0f - BotWebViewSheet.this.fullscreenProgress);
                    BotWebViewSheet.this.actionBar.setTranslationY((-ActionBar.getCurrentActionBarHeight()) * BotWebViewSheet.this.fullscreenProgress);
                    BotWebViewSheet.this.fullscreenButtons.setAlpha(BotWebViewSheet.this.fullscreenProgress);
                    if (z) {
                        BotWebViewSheet.this.actionBar.setVisibility(8);
                    }
                    BotWebViewSheet.this.swipeContainer.setSwipeOffsetAnimationDisallowed(false);
                    BotWebViewSheet.this.swipeContainer.setTranslationX(AndroidUtilities.lerp(f, 0.0f, BotWebViewSheet.this.fullscreenTransitionProgress));
                    BotWebViewSheet.this.botButtons.setTranslationX(0.0f);
                    BotWebViewSheet.this.windowView.invalidate();
                    BotWebViewSheet.this.webViewContainer.setViewPortHeightOffset(0.0f);
                    BotWebViewSheet.this.webViewContainer.invalidateViewPortHeight(true, true);
                    BotWebViewSheet.this.updateDownloadBulletinArrow();
                }
            });
            this.fullscreenAnimator.setDuration(280L);
            this.fullscreenAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            this.fullscreenAnimator.start();
            return;
        }
        this.fullscreenInProgress = false;
        this.fullscreenProgress = z ? 1.0f : 0.0f;
        this.fullscreenTransitionProgress = 0.0f;
        updateFullscreenLayout();
        updateWindowFlags();
        this.actionBar.setVisibility(z ? 8 : 0);
        this.actionBar.setAlpha(1.0f - this.fullscreenProgress);
        this.actionBar.setTranslationY((-ActionBar.getCurrentActionBarHeight()) * this.fullscreenProgress);
        this.botButtons.setTranslationX(0.0f);
        this.fullscreenButtons.setAlpha(this.fullscreenProgress);
        this.webViewContainer.setViewPortHeightOffset(0.0f);
        this.webViewContainer.invalidateViewPortHeight(true, true);
        updateDownloadBulletinArrow();
    }

    public void setNavigationBarColor(final int i, boolean z) {
        final int i2 = this.navBarColor;
        this.botButtons.setBackgroundColor(i, z);
        if (z) {
            ValueAnimator duration = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(200L);
            duration.setInterpolator(CubicBezierInterpolator.DEFAULT);
            duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.bots.BotWebViewSheet$$ExternalSyntheticLambda46
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f$0.lambda$setNavigationBarColor$53(i2, i, valueAnimator);
                }
            });
            duration.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.bots.BotWebViewSheet.16
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    BotWebViewSheet.this.navBarColor = ColorUtils.blendARGB(i2, i, 1.0f);
                    BotWebViewSheet.this.checkNavBarColor();
                }
            });
            duration.start();
        } else {
            this.navBarColor = i;
            checkNavBarColor();
        }
        AndroidUtilities.setNavigationBarColor((Dialog) this, this.navBarColor, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setNavigationBarColor$53(int i, int i2, ValueAnimator valueAnimator) {
        this.navBarColor = ColorUtils.blendARGB(i, i2, ((Float) valueAnimator.getAnimatedValue()).floatValue());
        checkNavBarColor();
    }

    public void setActionBarColor(final int i, boolean z, boolean z2) {
        final int i2 = this.actionBarColor;
        navigationBarColor(i);
        final BotWebViewMenuContainer$ActionBarColorsAnimating botWebViewMenuContainer$ActionBarColorsAnimating = new BotWebViewMenuContainer$ActionBarColorsAnimating();
        botWebViewMenuContainer$ActionBarColorsAnimating.setFrom(this.overrideActionBarColor ? this.actionBarColor : 0, this.resourcesProvider);
        this.overrideActionBarColor = z;
        this.actionBarIsLight = ColorUtils.calculateLuminance(i) < 0.7210000157356262d;
        botWebViewMenuContainer$ActionBarColorsAnimating.setTo(this.overrideActionBarColor ? i : 0, this.resourcesProvider);
        if (z2) {
            ValueAnimator duration = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(200L);
            duration.setInterpolator(CubicBezierInterpolator.DEFAULT);
            duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.bots.BotWebViewSheet$$ExternalSyntheticLambda47
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f$0.lambda$setActionBarColor$54(i2, i, botWebViewMenuContainer$ActionBarColorsAnimating, valueAnimator);
                }
            });
            duration.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.bots.BotWebViewSheet.17
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    BotWebViewSheet.this.actionBarColor = ColorUtils.blendARGB(i2, i, 1.0f);
                    BotWebViewSheet.this.checkNavBarColor();
                    BotWebViewSheet.this.windowView.invalidate();
                    BotWebViewSheet.this.actionBar.setBackgroundColor(BotWebViewSheet.this.actionBarColor);
                    botWebViewMenuContainer$ActionBarColorsAnimating.updateActionBar(BotWebViewSheet.this.actionBar, 1.0f);
                    BotWebViewSheet.this.lineColor = botWebViewMenuContainer$ActionBarColorsAnimating.getColor(Theme.key_sheet_scrollUp);
                    BotWebViewSheet.this.windowView.invalidate();
                }
            });
            duration.start();
        } else {
            this.actionBarColor = i;
            checkNavBarColor();
            this.windowView.invalidate();
            this.actionBar.setBackgroundColor(this.actionBarColor);
            botWebViewMenuContainer$ActionBarColorsAnimating.updateActionBar(this.actionBar, 1.0f);
            this.lineColor = botWebViewMenuContainer$ActionBarColorsAnimating.getColor(Theme.key_sheet_scrollUp);
            this.windowView.invalidate();
        }
        updateLightStatusBar();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setActionBarColor$54(int i, int i2, BotWebViewMenuContainer$ActionBarColorsAnimating botWebViewMenuContainer$ActionBarColorsAnimating, ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.actionBarColor = ColorUtils.blendARGB(i, i2, fFloatValue);
        checkNavBarColor();
        this.windowView.invalidate();
        this.actionBar.setBackgroundColor(this.actionBarColor);
        botWebViewMenuContainer$ActionBarColorsAnimating.updateActionBar(this.actionBar, fFloatValue);
        this.lineColor = botWebViewMenuContainer$ActionBarColorsAnimating.getColor(Theme.key_sheet_scrollUp);
        this.windowView.invalidate();
    }

    public void checkNavBarColor() {
        LaunchActivity launchActivity;
        if (!this.superDismissed && (launchActivity = LaunchActivity.instance) != null) {
            launchActivity.checkSystemBarColors(true, true, true);
        }
        WindowView windowView = this.windowView;
        if (windowView != null) {
            windowView.invalidate();
        }
    }

    @Override // org.telegram.ui.ActionBar.BottomSheetTabsOverlay.Sheet
    public int getNavigationBarColor(int i) {
        return ColorUtils.blendARGB(i, this.navBarColor, this.openedProgress);
    }

    @Override // org.telegram.ui.ActionBar.BottomSheetTabsOverlay.Sheet
    /* JADX INFO: renamed from: getWindowView */
    public WindowView mo7262getWindowView() {
        return this.windowView;
    }

    /* JADX INFO: loaded from: classes7.dex */
    public class WindowView extends SizeNotifierFrameLayout implements BottomSheetTabsOverlay.SheetView {
        private final Path clipPath;
        private boolean drawingFromOverlay;
        private final Paint navbarPaint;
        private final RectF rect;

        @Override // org.telegram.ui.Components.SizeNotifierFrameLayout, org.telegram.ui.ActionBar.Theme.Colorable
        public /* bridge */ /* synthetic */ int[] getColorKeys() {
            return super.getColorKeys();
        }

        public WindowView(Context context) {
            super(context);
            setClipChildren(false);
            setClipToPadding(false);
            setWillNotDraw(false);
            this.navbarPaint = new Paint(1);
            this.rect = new RectF();
            this.clipPath = new Path();
        }

        @Override // android.view.ViewGroup
        public boolean drawChild(Canvas canvas, View view, long j) {
            boolean z;
            if (view != BotWebViewSheet.this.swipeContainer || !BotWebViewSheet.this.fullscreenInProgress || BotWebViewSheet.this.swipeContainerFromHeight <= 0 || BotWebViewSheet.this.swipeContainerFromWidth <= 0) {
                z = false;
            } else {
                canvas.save();
                canvas.clipRect(view.getX(), view.getY(), view.getX() + AndroidUtilities.lerp(BotWebViewSheet.this.swipeContainerFromWidth, view.getWidth(), BotWebViewSheet.this.fullscreenTransitionProgress), view.getY() + AndroidUtilities.lerp(BotWebViewSheet.this.swipeContainerFromHeight, view.getHeight(), BotWebViewSheet.this.fullscreenTransitionProgress));
                z = true;
            }
            boolean zDrawChild = super.drawChild(canvas, view, j);
            if (z) {
                canvas.restore();
            }
            return zDrawChild;
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            LaunchActivity launchActivity = LaunchActivity.instance;
            BottomSheetTabs bottomSheetTabs = launchActivity != null ? launchActivity.getBottomSheetTabs() : null;
            if (bottomSheetTabs != null && BotWebViewSheet.this.insets != null) {
                int height = (int) (bottomSheetTabs.getHeight(true) * (1.0f - BotWebViewSheet.this.fullscreenProgress));
                if (motionEvent.getY() >= (getHeight() - BotWebViewSheet.this.insets.bottom) - height && motionEvent.getY() <= getHeight() - BotWebViewSheet.this.insets.bottom && !AndroidUtilities.isTablet()) {
                    return bottomSheetTabs.touchEvent(motionEvent.getAction(), motionEvent.getX(), motionEvent.getY() - ((getHeight() - BotWebViewSheet.this.insets.bottom) - height));
                }
            }
            return super.dispatchTouchEvent(motionEvent);
        }

        @Override // org.telegram.ui.Components.SizeNotifierFrameLayout, android.view.ViewGroup, android.view.View
        public void dispatchDraw(Canvas canvas) {
            boolean z;
            if (this.drawingFromOverlay) {
                return;
            }
            if (BotWebViewSheet.this.passcodeView.getVisibility() != 0 && BotWebViewSheet.this.fullscreenProgress < 1.0f && BotWebViewSheet.this.fullscreenProgress > 0.0f) {
                this.navbarPaint.setColor(Theme.multAlpha(BotWebViewSheet.this.navBarColor, BotWebViewSheet.this.openedProgress));
                if (BotWebViewSheet.this.navInsets.left > 0) {
                    canvas.drawRect(0.0f, 0.0f, BotWebViewSheet.this.navInsets.left, getHeight(), this.navbarPaint);
                }
                if (BotWebViewSheet.this.navInsets.top > 0) {
                    canvas.drawRect(0.0f, 0.0f, getWidth(), BotWebViewSheet.this.navInsets.top, this.navbarPaint);
                }
                if (BotWebViewSheet.this.navInsets.bottom > 0) {
                    canvas.drawRect(0.0f, getHeight() - BotWebViewSheet.this.navInsets.bottom, getWidth(), getHeight(), this.navbarPaint);
                }
                if (BotWebViewSheet.this.navInsets.right > 0) {
                    canvas.drawRect(getWidth() - BotWebViewSheet.this.navInsets.right, 0.0f, getWidth(), getHeight(), this.navbarPaint);
                }
            }
            if (BotWebViewSheet.this.bottomTabsClip == null || AndroidUtilities.isTablet()) {
                z = false;
            } else {
                canvas.save();
                canvas.translate(BotWebViewSheet.this.insets.left * (1.0f - BotWebViewSheet.this.fullscreenProgress), 0.0f);
                BotWebViewSheet.this.bottomTabsClip.clip(canvas, true, false, AndroidUtilities.lerp((getWidth() - BotWebViewSheet.this.insets.left) - BotWebViewSheet.this.insets.right, getWidth(), BotWebViewSheet.this.fullscreenProgress), getHeight(), 1.0f - BotWebViewSheet.this.fullscreenProgress);
                canvas.translate((-BotWebViewSheet.this.insets.left) * (1.0f - BotWebViewSheet.this.fullscreenProgress), 0.0f);
                z = true;
            }
            super.dispatchDraw(canvas);
            if (z) {
                canvas.restore();
            }
            if (BotWebViewSheet.this.passcodeView.getVisibility() != 0) {
                this.navbarPaint.setColor(Theme.multAlpha(BotWebViewSheet.this.navBarColor, BotWebViewSheet.this.openedProgress));
                if (BotWebViewSheet.this.navInsets.left > 0) {
                    canvas.drawRect(0.0f, 0.0f, BotWebViewSheet.this.navInsets.left * (1.0f - BotWebViewSheet.this.fullscreenProgress), getHeight(), this.navbarPaint);
                }
                if (BotWebViewSheet.this.navInsets.top > 0) {
                    canvas.drawRect(0.0f, 0.0f, getWidth(), BotWebViewSheet.this.navInsets.top * (1.0f - BotWebViewSheet.this.fullscreenProgress), this.navbarPaint);
                }
                if (BotWebViewSheet.this.navInsets.bottom > 0) {
                    canvas.drawRect(0.0f, getHeight() - (BotWebViewSheet.this.navInsets.bottom * ((BotWebViewSheet.this.botButtons == null || BotWebViewSheet.this.botButtons.getTotalHeight() <= 0) ? 1.0f - BotWebViewSheet.this.fullscreenProgress : 1.0f)), getWidth(), getHeight(), this.navbarPaint);
                }
                if (BotWebViewSheet.this.navInsets.right > 0) {
                    canvas.drawRect(getWidth() - (BotWebViewSheet.this.navInsets.right * (1.0f - BotWebViewSheet.this.fullscreenProgress)), 0.0f, getWidth(), getHeight(), this.navbarPaint);
                }
            }
        }

        @Override // android.view.View
        public void onDraw(Canvas canvas) {
            Canvas canvas2;
            if (this.drawingFromOverlay) {
                return;
            }
            super.onDraw(canvas);
            if (BotWebViewSheet.this.passcodeView.getVisibility() != 0) {
                canvas.save();
                if (BotWebViewSheet.this.bottomTabsClip != null) {
                    canvas2 = canvas;
                    BotWebViewSheet.this.bottomTabsClip.clip(canvas2, false, false, getWidth(), getHeight(), 1.0f - BotWebViewSheet.this.fullscreenProgress);
                } else {
                    canvas2 = canvas;
                }
                if (!BotWebViewSheet.this.overrideBackgroundColor) {
                    int color = BotWebViewSheet.this.getColor(Theme.key_windowBackgroundWhite);
                    BotWebViewSheet.this.backgroundPaint.setColor(color);
                    BotWebViewSheet.this.webViewContainer.setFlickerViewColor(color);
                    if (BotWebViewSheet.this.errorContainer != null) {
                        BotWebViewSheet.this.errorContainer.setDark(AndroidUtilities.computePerceivedBrightness(BotWebViewSheet.this.backgroundPaint.getColor()) <= 0.721f, false);
                        BotWebViewSheet.this.errorContainer.setBackgroundColor(BotWebViewSheet.this.backgroundPaint.getColor());
                    }
                }
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(0.0f, 0.0f, getWidth(), getHeight());
                canvas2.drawRect(rectF, BotWebViewSheet.this.dimPaint);
                int height = BotWebViewSheet.this.bottomTabs != null ? BotWebViewSheet.this.bottomTabs.getHeight(true) : 0;
                BotWebViewSheet.this.actionBarPaint.setColor(BotWebViewSheet.this.actionBarColor);
                float fDp = AndroidUtilities.dp(16.0f) * (AndroidUtilities.isTablet() ? 1.0f : 1.0f - BotWebViewSheet.this.actionBarTransitionProgress);
                rectF.set(AndroidUtilities.lerp(BotWebViewSheet.this.swipeContainer.getLeft(), 0, BotWebViewSheet.this.fullscreenProgress), AndroidUtilities.lerp(BotWebViewSheet.this.swipeContainer.getTranslationY(), 0.0f, BotWebViewSheet.this.actionBarTransitionProgress), BotWebViewSheet.this.swipeContainer.getRight(), BotWebViewSheet.this.swipeContainer.getTranslationY() + AndroidUtilities.dp(24.0f) + fDp);
                canvas2.drawRoundRect(rectF, fDp, fDp, BotWebViewSheet.this.actionBarPaint);
                rectF.set(AndroidUtilities.lerp(BotWebViewSheet.this.swipeContainer.getLeft(), 0, BotWebViewSheet.this.fullscreenProgress), BotWebViewSheet.this.swipeContainer.getTranslationY() + AndroidUtilities.dp(24.0f), AndroidUtilities.lerp(BotWebViewSheet.this.swipeContainer.getRight(), getWidth(), BotWebViewSheet.this.fullscreenProgress), getHeight() - height);
                canvas2.drawRect(rectF, BotWebViewSheet.this.backgroundPaint);
                canvas2.restore();
            }
        }

        @Override // android.view.View
        public void draw(Canvas canvas) {
            float fLerp;
            if (this.drawingFromOverlay) {
                return;
            }
            super.draw(canvas);
            float f = AndroidUtilities.isTablet() ? 0.0f : BotWebViewSheet.this.actionBarTransitionProgress;
            BotWebViewSheet.this.linePaint.setColor(BotWebViewSheet.this.lineColor);
            BotWebViewSheet.this.linePaint.setAlpha((int) (BotWebViewSheet.this.linePaint.getAlpha() * (1.0f - (Math.min(0.5f, f) / 0.5f)) * (1.0f - BotWebViewSheet.this.fullscreenProgress)));
            canvas.save();
            float f2 = 1.0f - f;
            boolean zIsTablet = AndroidUtilities.isTablet();
            BotWebViewSheet botWebViewSheet = BotWebViewSheet.this;
            if (zIsTablet) {
                fLerp = AndroidUtilities.lerp(botWebViewSheet.swipeContainer.getTranslationY() + AndroidUtilities.dp(12.0f), AndroidUtilities.statusBarHeight / 2.0f, BotWebViewSheet.this.actionBarTransitionProgress);
            } else {
                fLerp = AndroidUtilities.lerp(botWebViewSheet.swipeContainer.getTranslationY(), AndroidUtilities.statusBarHeight + (ActionBar.getCurrentActionBarHeight() / 2.0f), f) + AndroidUtilities.dp(12.0f);
            }
            float f3 = fLerp;
            canvas.scale(f2, f2, getWidth() / 2.0f, f3);
            canvas.drawLine((getWidth() / 2.0f) - AndroidUtilities.dp(16.0f), f3, (getWidth() / 2.0f) + AndroidUtilities.dp(16.0f), f3, BotWebViewSheet.this.linePaint);
            canvas.restore();
            BotWebViewSheet.this.actionBarShadow.setAlpha((int) (BotWebViewSheet.this.actionBar.getAlpha() * 255.0f));
            float y = BotWebViewSheet.this.actionBar.getY() + BotWebViewSheet.this.actionBar.getTranslationY() + BotWebViewSheet.this.actionBar.getHeight();
            BotWebViewSheet.this.actionBarShadow.setBounds(BotWebViewSheet.this.insets.left, (int) y, getWidth() - BotWebViewSheet.this.insets.right, (int) (y + BotWebViewSheet.this.actionBarShadow.getIntrinsicHeight()));
            BotWebViewSheet.this.actionBarShadow.draw(canvas);
        }

        @Override // android.view.View
        @SuppressLint({"ClickableViewAccessibility"})
        public boolean onTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0 && (motionEvent.getY() <= AndroidUtilities.lerp(BotWebViewSheet.this.swipeContainer.getTranslationY() + AndroidUtilities.dp(24.0f), 0.0f, BotWebViewSheet.this.actionBarTransitionProgress) || motionEvent.getX() > BotWebViewSheet.this.swipeContainer.getRight() || motionEvent.getX() < BotWebViewSheet.this.swipeContainer.getLeft())) {
                BotWebViewSheet.this.dismiss(true, null);
                return true;
            }
            return super.onTouchEvent(motionEvent);
        }

        @Override // org.telegram.ui.Components.SizeNotifierFrameLayout, android.view.ViewGroup, android.view.View
        public void onAttachedToWindow() {
            super.onAttachedToWindow();
            Bulletin.addDelegate(this, new Bulletin.Delegate() { // from class: org.telegram.ui.bots.BotWebViewSheet.WindowView.1
                @Override // org.telegram.ui.Components.Bulletin.Delegate
                public int getTopOffset(int i) {
                    return AndroidUtilities.statusBarHeight;
                }
            });
        }

        @Override // org.telegram.ui.Components.SizeNotifierFrameLayout, android.view.ViewGroup, android.view.View
        public void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            Bulletin.removeDelegate(this);
        }

        @Override // org.telegram.ui.ActionBar.BottomSheetTabsOverlay.SheetView
        public void setDrawingFromOverlay(boolean z) {
            if (this.drawingFromOverlay != z) {
                this.drawingFromOverlay = z;
                invalidate();
                BotWebViewSheet.this.updateWindowFlags();
                if (LaunchActivity.instance == null || !BotWebViewSheet.this.fullscreen) {
                    return;
                }
                LaunchActivity.instance.setNavigationBarColor(BotWebViewSheet.this.navBarColor);
            }
        }

        @Override // org.telegram.ui.ActionBar.BottomSheetTabsOverlay.SheetView
        public RectF getRect() {
            this.rect.set(BotWebViewSheet.this.swipeContainer.getLeft(), BotWebViewSheet.this.swipeContainer.getTranslationY() + AndroidUtilities.dp(24.0f), BotWebViewSheet.this.swipeContainer.getRight(), getHeight());
            return this.rect;
        }

        @Override // org.telegram.ui.ActionBar.BottomSheetTabsOverlay.SheetView
        public float drawInto(Canvas canvas, RectF rectF, float f, RectF rectF2, float f2, boolean z) {
            this.rect.set(BotWebViewSheet.this.swipeContainer.getLeft(), BotWebViewSheet.this.swipeContainer.getTranslationY() + AndroidUtilities.dp(24.0f), BotWebViewSheet.this.swipeContainer.getRight(), getHeight());
            AndroidUtilities.lerpCentered(this.rect, rectF, f, rectF2);
            canvas.save();
            this.clipPath.rewind();
            float fLerp = AndroidUtilities.lerp(AndroidUtilities.dp(16.0f) * (AndroidUtilities.isTablet() ? 1.0f : 1.0f - BotWebViewSheet.this.actionBarTransitionProgress), AndroidUtilities.dp(18.0f), f);
            this.clipPath.addRoundRect(rectF2, fLerp, fLerp, Path.Direction.CW);
            canvas.clipPath(this.clipPath);
            canvas.drawPaint(BotWebViewSheet.this.backgroundPaint);
            if (BotWebViewSheet.this.swipeContainer != null) {
                canvas.save();
                canvas.translate(rectF2.left, Math.max(BotWebViewSheet.this.swipeContainer.getY(), rectF2.top) + (f * AndroidUtilities.dp(51.0f)));
                BotWebViewSheet.this.swipeContainer.draw(canvas);
                canvas.restore();
            }
            canvas.restore();
            return fLerp;
        }
    }

    public ArticleViewer.ErrorContainer createErrorContainer() {
        if (this.errorContainer == null) {
            ChatAttachAlertBotWebViewLayout.WebViewSwipeContainer webViewSwipeContainer = this.swipeContainer;
            ArticleViewer.ErrorContainer errorContainer = new ArticleViewer.ErrorContainer(getContext());
            this.errorContainer = errorContainer;
            webViewSwipeContainer.addView(errorContainer, LayoutHelper.createFrame(-1, -1.0f));
            this.errorContainer.setTranslationY(-1.0f);
            this.errorContainer.getButtonView().setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.bots.BotWebViewSheet$$ExternalSyntheticLambda44
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$createErrorContainer$55(view);
                }
            });
            this.errorContainer.setBackgroundColor(this.backgroundPaint.getColor());
            AndroidUtilities.updateViewVisibilityAnimated(this.errorContainer, this.errorShown, 1.0f, false);
        }
        return this.errorContainer;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createErrorContainer$55(View view) {
        BotWebViewContainer.MyWebView webView = this.webViewContainer.getWebView();
        if (webView != null) {
            webView.reload();
        }
    }

    public void setAttached(boolean z) {
        if (this.attached == z) {
            return;
        }
        this.attached = z;
        boolean z2 = this.orientationLocked;
        if (z) {
            if (z2) {
                shownLockedBots++;
            }
        } else if (z2) {
            shownLockedBots--;
        }
        if (shownLockedBots > 0) {
            AndroidUtilities.lockOrientation(getActivity());
        } else {
            AndroidUtilities.unlockOrientation(getActivity());
        }
    }

    public void lockOrientation(boolean z) {
        if (this.orientationLocked == z) {
            return;
        }
        this.orientationLocked = z;
        if (this.attached) {
            if (z) {
                shownLockedBots++;
            } else {
                shownLockedBots--;
            }
        }
        if (shownLockedBots > 0) {
            AndroidUtilities.lockOrientation(getActivity());
        } else {
            AndroidUtilities.unlockOrientation(getActivity());
        }
    }
}
