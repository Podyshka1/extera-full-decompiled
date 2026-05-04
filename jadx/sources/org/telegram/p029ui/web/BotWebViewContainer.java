package org.telegram.p029ui.web;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.Dialog;
import android.app.DownloadManager;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Build;
import android.os.Environment;
import android.os.Message;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Pair;
import android.util.Property;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.CookieManager;
import android.webkit.DownloadListener;
import android.webkit.GeolocationPermissions;
import android.webkit.JavascriptInterface;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.PermissionRequest;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.SslErrorHandler;
import android.webkit.URLUtil;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Keep;
import androidx.core.content.FileProvider;
import androidx.core.graphics.ColorUtils;
import androidx.core.util.Consumer;
import com.android.p003dx.p006io.Opcodes;
import com.exteragram.messenger.adblock.AdBlockClient;
import com.exteragram.messenger.adblock.SelectorsObserver;
import com.exteragram.messenger.adblock.data.BlockResult;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.net.HttpURLConnection;
import java.net.IDN;
import java.net.URL;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import okhttp3.internal.url._UrlKt;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.BotWebViewVibrationEffect;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.DownloadController;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MrzRecognizer;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.SvgHelper;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.VideoEditedInfo;
import org.telegram.messenger.browser.Browser;
import org.telegram.p029ui.ActionBar.ActionBar;
import org.telegram.p029ui.ActionBar.ActionBarLayout;
import org.telegram.p029ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.p029ui.ActionBar.AlertDialog;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.BottomSheet;
import org.telegram.p029ui.ActionBar.BottomSheetTabs;
import org.telegram.p029ui.ActionBar.INavigationLayout;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.ArticleViewer;
import org.telegram.p029ui.CameraScanActivity;
import org.telegram.p029ui.Components.AlertsCreator;
import org.telegram.p029ui.Components.AnimatedFileDrawable;
import org.telegram.p029ui.Components.BackupImageView;
import org.telegram.p029ui.Components.Bulletin;
import org.telegram.p029ui.Components.BulletinFactory;
import org.telegram.p029ui.Components.EditTextCaption;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.Paint.Views.LinkPreview;
import org.telegram.p029ui.Components.Premium.PremiumFeatureBottomSheet;
import org.telegram.p029ui.Components.voip.CellFlickerDrawable;
import org.telegram.p029ui.LaunchActivity;
import org.telegram.p029ui.OAuthSheet;
import org.telegram.p029ui.ProfileActivity;
import org.telegram.p029ui.Stories.recorder.StoryEntry;
import org.telegram.p029ui.Stories.recorder.StoryRecorder;
import org.telegram.p029ui.WrappedResourceProvider;
import org.telegram.p029ui.bots.BotBiometry;
import org.telegram.p029ui.bots.BotDownloads;
import org.telegram.p029ui.bots.BotLocation;
import org.telegram.p029ui.bots.BotSensors;
import org.telegram.p029ui.bots.BotShareSheet;
import org.telegram.p029ui.bots.BotStorage;
import org.telegram.p029ui.bots.BotWebViewSheet;
import org.telegram.p029ui.bots.ChatAttachAlertBotWebViewLayout;
import org.telegram.p029ui.bots.SetupEmojiStatusSheet;
import org.telegram.p029ui.bots.WebViewRequestProps;
import org.telegram.p029ui.web.BotWebViewContainer;
import org.telegram.p029ui.web.BrowserHistory;
import org.telegram.p029ui.web.WebMetadataCache;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.p028tl.TL_bots;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public abstract class BotWebViewContainer extends FrameLayout implements NotificationCenter.NotificationCenterDelegate {
    public static boolean firstWebView = true;
    private static HashMap rotatedTONHosts;
    private static int tags;
    private BotBiometry biometry;
    private long blockedDialogsUntil;
    public final boolean bot;
    private TLRPC.User botUser;
    private BotWebViewProxy botWebViewProxy;
    private String buttonData;
    private BottomSheet cameraBottomSheet;
    private int currentAccount;
    private AlertDialog currentDialog;
    private String currentPaymentSlug;
    private Delegate delegate;
    private int dialogSequentialOpenTimes;
    private BotDownloads downloads;
    private final CellFlickerDrawable flickerDrawable;
    private BackupImageView flickerView;
    private int flickerViewColor;
    private boolean flickerViewColorOverriden;
    private SvgHelper.SvgDrawable flickerViewDrawable;
    private int forceHeight;
    private boolean hasQRPending;
    private boolean hasUserPermissions;
    private boolean isBackButtonVisible;
    private boolean isFlickeringCenter;
    private boolean isPageLoaded;
    private boolean isRequestingPageOpen;
    private boolean isSettingsButtonVisible;
    private boolean isViewPortByMeasureSuppressed;
    private boolean keyboardFocusable;
    private int lastButtonColor;
    private String lastButtonText;
    private int lastButtonTextColor;
    private long lastClickMs;
    private long lastDialogClosed;
    private long lastDialogCooldownTime;
    private int lastDialogType;
    private boolean lastExpanded;
    private final Rect lastInsets;
    private int lastInsetsTopMargin;
    private long lastPostStoryMs;
    private String lastQrText;
    private int lastSecondaryButtonColor;
    private String lastSecondaryButtonPosition;
    private String lastSecondaryButtonText;
    private int lastSecondaryButtonTextColor;
    private int lastViewportHeightReported;
    private boolean lastViewportIsExpanded;
    private boolean lastViewportStateStable;
    private BotLocation location;
    private ValueCallback mFilePathCallback;
    private String mUrl;
    private final Runnable notifyLocationChecked;
    private Runnable onCloseListener;
    private Runnable onPermissionsRequestResultCallback;
    private Utilities.Callback4 onVerifiedAge;
    private MyWebView opener;
    private Activity parentActivity;
    private boolean preserving;
    private Theme.ResourcesProvider resourcesProvider;
    private String secondaryButtonData;
    private BotStorage secureStorage;
    private BotSensors sensors;
    private int shownDialogsCount;
    private BotStorage storage;
    private final int tag;
    private float viewPortHeightOffset;
    private boolean wasFocusable;
    private WebViewRequestProps wasOpenedByBot;
    private boolean wasOpenedByLinkIntent;
    private MyWebView webView;
    private boolean webViewNotAvailable;
    private TextView webViewNotAvailableText;
    private Consumer webViewProgressListener;
    private WebViewProxy webViewProxy;
    private WebViewScrollListener webViewScrollListener;

    /* JADX INFO: loaded from: classes7.dex */
    public interface WebViewScrollListener {
        void onWebViewScrolled(WebView webView, int i, int i2);
    }

    protected void onErrorShown(boolean z, int i, String str) {
    }

    protected void onFaviconChanged(Bitmap bitmap) {
    }

    protected void onTitleChanged(String str) {
    }

    protected void onURLChanged(String str, boolean z, boolean z2) {
    }

    public void onWebViewCreated(MyWebView myWebView) {
    }

    public void onWebViewDestroyed(MyWebView myWebView) {
    }

    public void showLinkCopiedBulletin() {
        BulletinFactory.m1245of(this, this.resourcesProvider).createCopyLinkBulletin().show(true);
    }

    public BotWebViewContainer(Context context, Theme.ResourcesProvider resourcesProvider, int i, boolean z) {
        super(context);
        CellFlickerDrawable cellFlickerDrawable = new CellFlickerDrawable();
        this.flickerDrawable = cellFlickerDrawable;
        int i2 = Theme.key_featuredStickers_addButton;
        this.lastButtonColor = getColor(i2);
        int i3 = Theme.key_featuredStickers_buttonText;
        this.lastButtonTextColor = getColor(i3);
        this.lastButtonText = _UrlKt.FRAGMENT_ENCODE_SET;
        this.lastSecondaryButtonColor = getColor(i2);
        this.lastSecondaryButtonTextColor = getColor(i3);
        this.lastSecondaryButtonText = _UrlKt.FRAGMENT_ENCODE_SET;
        this.lastSecondaryButtonPosition = _UrlKt.FRAGMENT_ENCODE_SET;
        this.currentAccount = UserConfig.selectedAccount;
        this.forceHeight = -1;
        this.lastInsets = new Rect(0, 0, 0, 0);
        this.lastInsetsTopMargin = 0;
        this.notifyLocationChecked = new Runnable() { // from class: org.telegram.ui.web.BotWebViewContainer$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$51();
            }
        };
        this.lastDialogType = -1;
        this.shownDialogsCount = 0;
        int i4 = tags;
        tags = i4 + 1;
        this.tag = i4;
        this.bot = z;
        this.resourcesProvider = resourcesProvider;
        m1349d("created new webview container");
        if (context instanceof Activity) {
            this.parentActivity = (Activity) context;
        }
        cellFlickerDrawable.drawFrame = false;
        cellFlickerDrawable.setColors(i, 153, Opcodes.SUB_DOUBLE_2ADDR);
        BackupImageView backupImageView = new BackupImageView(context) { // from class: org.telegram.ui.web.BotWebViewContainer.1
            {
                this.imageReceiver = new AnonymousClass1(this);
            }

            /* JADX INFO: renamed from: org.telegram.ui.web.BotWebViewContainer$1$1, reason: invalid class name */
            class AnonymousClass1 extends ImageReceiver {
                AnonymousClass1(View view) {
                    super(view);
                }

                @Override // org.telegram.messenger.ImageReceiver
                protected boolean setImageBitmapByKey(Drawable drawable, String str, int i, boolean z, int i2) {
                    boolean imageBitmapByKey = super.setImageBitmapByKey(drawable, str, i, z, i2);
                    ValueAnimator duration = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(300L);
                    duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.web.BotWebViewContainer$1$1$$ExternalSyntheticLambda0
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                            this.f$0.lambda$setImageBitmapByKey$0(valueAnimator);
                        }
                    });
                    duration.start();
                    return imageBitmapByKey;
                }

                /* JADX INFO: Access modifiers changed from: private */
                public /* synthetic */ void lambda$setImageBitmapByKey$0(ValueAnimator valueAnimator) {
                    ((BackupImageView) C74801.this).imageReceiver.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                    invalidate();
                }
            }

            @Override // org.telegram.p029ui.Components.BackupImageView, android.view.View
            protected void onDraw(Canvas canvas) {
                if (BotWebViewContainer.this.isFlickeringCenter) {
                    super.onDraw(canvas);
                    return;
                }
                if (this.imageReceiver.getDrawable() != null) {
                    this.imageReceiver.setImageCoords(0.0f, 0.0f, getWidth(), r0.getIntrinsicHeight() * (getWidth() / r0.getIntrinsicWidth()));
                    this.imageReceiver.draw(canvas);
                }
            }
        };
        this.flickerView = backupImageView;
        int color = getColor(Theme.key_bot_loadingIcon);
        this.flickerViewColor = color;
        backupImageView.setColorFilter(new PorterDuffColorFilter(color, PorterDuff.Mode.SRC_IN));
        this.flickerView.getImageReceiver().setAspectFit(true);
        addView(this.flickerView, LayoutHelper.createFrame(-1, -2, 48));
        TextView textView = new TextView(context);
        this.webViewNotAvailableText = textView;
        textView.setText(LocaleController.getString(C2888R.string.BotWebViewNotAvailablePlaceholder));
        this.webViewNotAvailableText.setTextColor(getColor(Theme.key_windowBackgroundWhiteGrayText));
        this.webViewNotAvailableText.setTextSize(1, 15.0f);
        this.webViewNotAvailableText.setGravity(17);
        this.webViewNotAvailableText.setVisibility(8);
        int iM1124dp = AndroidUtilities.m1124dp(16.0f);
        this.webViewNotAvailableText.setPadding(iM1124dp, iM1124dp, iM1124dp, iM1124dp);
        addView(this.webViewNotAvailableText, LayoutHelper.createFrame(-1, -2, 17));
        setFocusable(false);
    }

    public void setViewPortByMeasureSuppressed(boolean z) {
        this.isViewPortByMeasureSuppressed = z;
    }

    public void setFlickerViewColor(int i) {
        int iAdaptHSV;
        if (AndroidUtilities.computePerceivedBrightness(i) > 0.7f) {
            iAdaptHSV = Theme.adaptHSV(i, 0.0f, -0.15f);
        } else {
            iAdaptHSV = Theme.adaptHSV(i, 0.025f, 0.15f);
        }
        if (this.flickerViewColor == iAdaptHSV) {
            return;
        }
        BackupImageView backupImageView = this.flickerView;
        this.flickerViewColor = iAdaptHSV;
        backupImageView.setColorFilter(new PorterDuffColorFilter(iAdaptHSV, PorterDuff.Mode.SRC_IN));
        SvgHelper.SvgDrawable svgDrawable = this.flickerViewDrawable;
        if (svgDrawable != null) {
            svgDrawable.setColor(this.flickerViewColor);
            this.flickerViewDrawable.setupGradient(Theme.key_bot_loadingIcon, this.resourcesProvider, 1.0f, false);
        }
        this.flickerViewColorOverriden = true;
        this.flickerView.invalidate();
        invalidate();
    }

    public void checkCreateWebView() {
        if (this.webView != null || this.webViewNotAvailable) {
            return;
        }
        try {
            setupWebView(null);
        } catch (Throwable th) {
            FileLog.m1136e(th);
            this.flickerView.setVisibility(8);
            this.webViewNotAvailable = true;
            this.webViewNotAvailableText.setVisibility(0);
            if (this.webView != null) {
                removeView(this.webView);
            }
        }
    }

    public void replaceWebView(int i, MyWebView myWebView, Object obj) {
        this.currentAccount = i;
        setupWebView(myWebView, obj);
        if (this.bot) {
            notifyEvent("visibility_changed", obj("is_visible", Boolean.TRUE));
        }
    }

    private void setupWebView(MyWebView myWebView) {
        setupWebView(myWebView, null);
    }

    public BotWebViewProxy getBotProxy() {
        return this.botWebViewProxy;
    }

    public WebViewProxy getProxy() {
        return this.webViewProxy;
    }

    public void setOpener(MyWebView myWebView) {
        MyWebView myWebView2;
        this.opener = myWebView;
        if (this.bot || (myWebView2 = this.webView) == null) {
            return;
        }
        myWebView2.opener = myWebView;
    }

    private static String capitalizeFirst(String str) {
        if (str == null) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
        if (str.length() <= 1) {
            return str.toUpperCase();
        }
        return str.substring(0, 1).toUpperCase() + str.substring(1).toLowerCase();
    }

    private void setupWebView(MyWebView myWebView, Object obj) {
        MyWebView myWebView2;
        String str;
        TLRPC.User user;
        MyWebView myWebView3 = this.webView;
        if (myWebView3 != null) {
            myWebView3.destroy();
            removeView(this.webView);
        }
        if (myWebView != null) {
            AndroidUtilities.removeFromParent(myWebView);
        }
        try {
            WebView.setWebContentsDebuggingEnabled(SharedConfig.debugWebView && !isVerifyingAge());
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
        if (myWebView == null) {
            Context context = getContext();
            boolean z = this.bot;
            long j = 0;
            if (z && (user = this.botUser) != null) {
                j = user.f1825id;
            }
            myWebView2 = new MyWebView(context, z, j);
        } else {
            myWebView2 = myWebView;
        }
        this.webView = myWebView2;
        if (!this.bot) {
            CookieManager cookieManager = CookieManager.getInstance();
            cookieManager.setAcceptCookie(true);
            cookieManager.setAcceptThirdPartyCookies(this.webView, true);
            CookieManager.getInstance().flush();
            this.webView.opener = this.opener;
        } else {
            myWebView2.setBackgroundColor(getColor(Theme.key_windowBackgroundWhite));
        }
        if (!MessagesController.getInstance(this.currentAccount).disableBotFullscreenBlur) {
            this.webView.setLayerType(2, null);
        }
        this.webView.setContainers(this, this.webViewScrollListener);
        this.webView.setCloseListener(this.onCloseListener);
        WebSettings settings = this.webView.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setGeolocationEnabled(true);
        settings.setDomStorageEnabled(true);
        settings.setDatabaseEnabled(true);
        settings.setSupportMultipleWindows(true);
        settings.setAllowFileAccess(false);
        settings.setAllowContentAccess(false);
        settings.setAllowFileAccessFromFileURLs(false);
        settings.setAllowUniversalAccessFromFileURLs(false);
        if (!this.bot) {
            settings.setRenderPriority(WebSettings.RenderPriority.HIGH);
            settings.setCacheMode(-1);
            settings.setSaveFormData(true);
            settings.setSavePassword(true);
            settings.setSupportZoom(true);
            settings.setBuiltInZoomControls(true);
            settings.setDisplayZoomControls(false);
            settings.setUseWideViewPort(true);
            settings.setLoadWithOverviewMode(true);
            if (Build.VERSION.SDK_INT >= 26) {
                settings.setSafeBrowsingEnabled(true);
            }
        }
        if (isVerifyingAge()) {
            settings.setMediaPlaybackRequiresUserGesture(false);
        }
        try {
            String strReplace = settings.getUserAgentString().replace("; wv)", ")");
            StringBuilder sb = new StringBuilder();
            sb.append("(Linux; Android ");
            String str2 = Build.VERSION.RELEASE;
            sb.append(str2);
            sb.append("; K)");
            String strReplaceAll = strReplace.replaceAll("\\(Linux; Android.+;[^)]+\\)", sb.toString()).replaceAll("Version/[\\d\\.]+ ", _UrlKt.FRAGMENT_ENCODE_SET);
            if (this.bot) {
                PackageInfo packageInfo = ApplicationLoader.applicationContext.getPackageManager().getPackageInfo(ApplicationLoader.applicationContext.getPackageName(), 0);
                int devicePerformanceClass = SharedConfig.getDevicePerformanceClass();
                if (devicePerformanceClass == 0) {
                    str = "LOW";
                } else {
                    str = devicePerformanceClass == 1 ? "AVERAGE" : "HIGH";
                }
                strReplaceAll = strReplaceAll + " Telegram-Android/" + packageInfo.versionName + " (" + capitalizeFirst(Build.MANUFACTURER) + " " + Build.MODEL + "; Android " + str2 + "; SDK " + Build.VERSION.SDK_INT + "; " + str + ")";
            }
            settings.setUserAgentString(strReplaceAll);
        } catch (Exception e2) {
            FileLog.m1136e(e2);
        }
        settings.setTextSize(WebSettings.TextSize.NORMAL);
        File file = new File(ApplicationLoader.getFilesDirFixed(), "webview_database");
        if ((file.exists() && file.isDirectory()) || file.mkdirs()) {
            settings.setDatabasePath(file.getAbsolutePath());
        }
        GeolocationPermissions.getInstance().clearAll();
        this.webView.setVerticalScrollBarEnabled(false);
        if (myWebView == null && this.bot) {
            this.webView.setAlpha(0.0f);
        }
        addView(this.webView);
        if (this.bot) {
            if (obj instanceof BotWebViewProxy) {
                this.botWebViewProxy = (BotWebViewProxy) obj;
            }
            BotWebViewProxy botWebViewProxy = this.botWebViewProxy;
            if (botWebViewProxy == null) {
                BotWebViewProxy botWebViewProxy2 = new BotWebViewProxy(this);
                this.botWebViewProxy = botWebViewProxy2;
                this.webView.addJavascriptInterface(botWebViewProxy2, "TelegramWebviewProxy");
            } else if (myWebView == null) {
                this.webView.addJavascriptInterface(botWebViewProxy, "TelegramWebviewProxy");
            }
            this.botWebViewProxy.setContainer(this);
        } else {
            if (obj instanceof WebViewProxy) {
                this.webViewProxy = (WebViewProxy) obj;
            }
            WebViewProxy webViewProxy = this.webViewProxy;
            if (webViewProxy == null) {
                WebViewProxy webViewProxy2 = new WebViewProxy(this.webView, this);
                this.webViewProxy = webViewProxy2;
                this.webView.addJavascriptInterface(webViewProxy2, "TelegramWebviewProxy");
            } else if (myWebView == null) {
                this.webView.addJavascriptInterface(webViewProxy, "TelegramWebviewProxy");
            }
            this.webViewProxy.setContainer(this);
        }
        onWebViewCreated(this.webView);
        firstWebView = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onOpenUri(Uri uri) {
        onOpenUri(uri, null, !this.bot, false, false);
    }

    private void onOpenUri(Uri uri, String str, boolean z, boolean z2, boolean z3) {
        if (this.isRequestingPageOpen) {
            return;
        }
        if (System.currentTimeMillis() - this.lastClickMs <= 10000 || !z2) {
            this.lastClickMs = 0L;
            boolean[] zArr = {false};
            if (Browser.isInternalUri(uri, zArr) && !zArr[0] && this.delegate != null) {
                setKeyboardFocusable(false);
            }
            Browser.openUrl(getContext(), uri, true, z, false, null, str, false, true, z3);
        }
    }

    private void updateKeyboardFocusable() {
        if (this.wasFocusable) {
            setDescendantFocusability(org.mvel2.asm.Opcodes.ASM6);
            setFocusable(false);
            MyWebView myWebView = this.webView;
            if (myWebView != null) {
                myWebView.setDescendantFocusability(org.mvel2.asm.Opcodes.ASM6);
                this.webView.clearFocus();
            }
            AndroidUtilities.hideKeyboard(this);
        }
        this.wasFocusable = false;
    }

    public void setKeyboardFocusable(boolean z) {
        this.keyboardFocusable = z;
        updateKeyboardFocusable();
    }

    public static int getMainButtonRippleColor(int i) {
        return ColorUtils.calculateLuminance(i) >= 0.30000001192092896d ? 301989888 : 385875967;
    }

    public static Drawable getMainButtonRippleDrawable(int i) {
        return Theme.createSelectorWithBackgroundDrawable(i, getMainButtonRippleColor(i));
    }

    public void updateFlickerBackgroundColor(int i) {
        this.flickerDrawable.setColors(i, 153, Opcodes.SUB_DOUBLE_2ADDR);
    }

    public boolean onBackPressed() {
        if (this.webView == null || !this.isBackButtonVisible) {
            return false;
        }
        notifyEvent("back_button_pressed", null);
        return true;
    }

    public void setPageLoaded(String str, boolean z) {
        MyWebView myWebView = this.webView;
        String str2 = (myWebView == null || !myWebView.dangerousUrl) ? str : myWebView.urlFallback;
        boolean z2 = myWebView == null || !myWebView.canGoBack();
        MyWebView myWebView2 = this.webView;
        onURLChanged(str2, z2, myWebView2 == null || !myWebView2.canGoForward());
        MyWebView myWebView3 = this.webView;
        if (myWebView3 != null) {
            myWebView3.isPageLoaded = true;
            updateKeyboardFocusable();
        }
        if (this.isPageLoaded) {
            m1349d("setPageLoaded: already loaded");
            return;
        }
        if (z && this.webView != null && this.flickerView != null) {
            AnimatorSet animatorSet = new AnimatorSet();
            Property property = View.ALPHA;
            animatorSet.playTogether(ObjectAnimator.ofFloat(this.webView, (Property<MyWebView, Float>) property, 1.0f), ObjectAnimator.ofFloat(this.flickerView, (Property<BackupImageView, Float>) property, 0.0f));
            animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.web.BotWebViewContainer.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    BotWebViewContainer.this.flickerView.setVisibility(8);
                }
            });
            animatorSet.start();
        } else {
            MyWebView myWebView4 = this.webView;
            if (myWebView4 != null) {
                myWebView4.setAlpha(1.0f);
            }
            BackupImageView backupImageView = this.flickerView;
            if (backupImageView != null) {
                backupImageView.setAlpha(0.0f);
                this.flickerView.setVisibility(8);
            }
        }
        this.mUrl = str;
        m1349d("setPageLoaded: isPageLoaded = true!");
        this.isPageLoaded = true;
        updateKeyboardFocusable();
        this.delegate.onWebAppReady();
    }

    public void setState(boolean z, String str) {
        m1349d("setState(" + z + ", " + str + ")");
        this.isPageLoaded = z;
        this.mUrl = str;
        updateKeyboardFocusable();
    }

    public void setIsBackButtonVisible(boolean z) {
        this.isBackButtonVisible = z;
    }

    public String getUrlLoaded() {
        return this.mUrl;
    }

    public boolean hasUserPermissions() {
        return this.hasUserPermissions;
    }

    public void setBotUser(TLRPC.User user) {
        this.botUser = user;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void runWithPermissions(final String[] strArr, final Consumer consumer) {
        if (checkPermissions(strArr)) {
            consumer.accept(Boolean.TRUE);
            return;
        }
        this.onPermissionsRequestResultCallback = new Runnable() { // from class: org.telegram.ui.web.BotWebViewContainer$$ExternalSyntheticLambda44
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$runWithPermissions$0(consumer, strArr);
            }
        };
        Activity activity = this.parentActivity;
        if (activity != null) {
            activity.requestPermissions(strArr, 4000);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$runWithPermissions$0(Consumer consumer, String[] strArr) {
        consumer.accept(Boolean.valueOf(checkPermissions(strArr)));
    }

    public boolean isPageLoaded() {
        return this.isPageLoaded;
    }

    public void setParentActivity(Activity activity) {
        this.parentActivity = activity;
    }

    private boolean checkPermissions(String[] strArr) {
        for (String str : strArr) {
            if (getContext().checkSelfPermission(str) != 0) {
                return false;
            }
        }
        return true;
    }

    public void restoreButtonData() {
        try {
            String str = this.buttonData;
            if (str != null) {
                onEventReceived(this.botWebViewProxy, "web_app_setup_main_button", str);
            }
            String str2 = this.secondaryButtonData;
            if (str2 != null) {
                onEventReceived(this.botWebViewProxy, "web_app_setup_secondary_button", str2);
            }
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
    }

    public void onInvoiceStatusUpdate(String str, String str2) {
        onInvoiceStatusUpdate(str, str2, false);
    }

    public void onInvoiceStatusUpdate(String str, String str2, boolean z) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("slug", str);
            jSONObject.put("status", str2);
            notifyEvent("invoice_closed", jSONObject);
            FileLog.m1133d("invoice_closed " + jSONObject);
            if (z || !Objects.equals(this.currentPaymentSlug, str)) {
                return;
            }
            this.currentPaymentSlug = null;
        } catch (JSONException e) {
            FileLog.m1136e(e);
        }
    }

    public void onSettingsButtonPressed() {
        this.lastClickMs = System.currentTimeMillis();
        notifyEvent("settings_button_pressed", null);
    }

    public void onMainButtonPressed() {
        this.lastClickMs = System.currentTimeMillis();
        notifyEvent("main_button_pressed", null);
    }

    public void onSecondaryButtonPressed() {
        this.lastClickMs = System.currentTimeMillis();
        notifyEvent("secondary_button_pressed", null);
    }

    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        Runnable runnable;
        if (i != 4000 || (runnable = this.onPermissionsRequestResultCallback) == null) {
            return;
        }
        runnable.run();
        this.onPermissionsRequestResultCallback = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0043  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onActivityResult(int i, int i2, Intent intent) {
        Uri[] uriArr;
        if (i != 3000 || this.mFilePathCallback == null) {
            return;
        }
        if (i2 != -1 || intent == null) {
            uriArr = null;
        } else {
            if (intent.getClipData() != null) {
                ClipData clipData = intent.getClipData();
                uriArr = new Uri[clipData.getItemCount()];
                for (int i3 = 0; i3 < clipData.getItemCount(); i3++) {
                    uriArr[i3] = clipData.getItemAt(i3).getUri();
                }
            } else if (intent.getData() != null) {
                uriArr = new Uri[]{intent.getData()};
            }
        }
        this.mFilePathCallback.onReceiveValue(uriArr);
        this.mFilePathCallback = null;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (this.isViewPortByMeasureSuppressed) {
            return;
        }
        invalidateViewPortHeight(true);
    }

    public void invalidateViewPortHeight() {
        invalidateViewPortHeight(false);
    }

    public void invalidateViewPortHeight(boolean z) {
        invalidateViewPortHeight(z, false);
    }

    public int getMinHeight() {
        if (!(getParent() instanceof ChatAttachAlertBotWebViewLayout.WebViewSwipeContainer)) {
            return 0;
        }
        ChatAttachAlertBotWebViewLayout.WebViewSwipeContainer webViewSwipeContainer = (ChatAttachAlertBotWebViewLayout.WebViewSwipeContainer) getParent();
        if (webViewSwipeContainer.isFullSize()) {
            return (int) ((webViewSwipeContainer.getMeasuredHeight() - webViewSwipeContainer.getOffsetY()) + this.viewPortHeightOffset);
        }
        return 0;
    }

    public void setViewPortHeightOffset(float f) {
        this.viewPortHeightOffset = f;
    }

    public void invalidateViewPortHeight(boolean z, boolean z2) {
        invalidate();
        if ((this.isPageLoaded || z2) && this.bot && (getParent() instanceof ChatAttachAlertBotWebViewLayout.WebViewSwipeContainer)) {
            ChatAttachAlertBotWebViewLayout.WebViewSwipeContainer webViewSwipeContainer = (ChatAttachAlertBotWebViewLayout.WebViewSwipeContainer) getParent();
            if (z) {
                this.lastExpanded = webViewSwipeContainer.getSwipeOffsetY() == (-webViewSwipeContainer.getOffsetY()) + webViewSwipeContainer.getTopActionBarOffsetY();
            }
            int iMax = Math.max(getMinHeight(), (int) (((webViewSwipeContainer.getMeasuredHeight() - webViewSwipeContainer.getOffsetY()) - webViewSwipeContainer.getSwipeOffsetY()) + webViewSwipeContainer.getTopActionBarOffsetY() + this.viewPortHeightOffset));
            if (!z2 && iMax == this.lastViewportHeightReported && this.lastViewportStateStable == z && this.lastViewportIsExpanded == this.lastExpanded) {
                return;
            }
            this.lastViewportHeightReported = iMax;
            this.lastViewportStateStable = z;
            this.lastViewportIsExpanded = this.lastExpanded;
            notifyEvent_fast("viewport_changed", "{height:" + (iMax / AndroidUtilities.density) + ",is_state_stable:" + z + ",is_expanded:" + this.lastExpanded + "}");
        }
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        if (view == this.flickerView) {
            if (this.isFlickeringCenter) {
                canvas.save();
                canvas.translate(0.0f, (ActionBar.getCurrentActionBarHeight() - ((View) getParent()).getTranslationY()) / 2.0f);
            }
            boolean zDrawChild = super.drawChild(canvas, view, j);
            if (this.isFlickeringCenter) {
                canvas.restore();
            }
            if (!this.isFlickeringCenter) {
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(0.0f, 0.0f, getWidth(), getHeight());
                this.flickerDrawable.draw(canvas, rectF, 0.0f, this);
                invalidate();
            }
            return zDrawChild;
        }
        if (view == this.webViewNotAvailableText) {
            canvas.save();
            canvas.translate(0.0f, (ActionBar.getCurrentActionBarHeight() - ((View) getParent()).getTranslationY()) / 2.0f);
            boolean zDrawChild2 = super.drawChild(canvas, view, j);
            canvas.restore();
            return zDrawChild2;
        }
        if (view == this.webView) {
            if (AndroidUtilities.makingGlobalBlurBitmap) {
                return true;
            }
            if (getLayerType() == 2 && !canvas.isHardwareAccelerated()) {
                return true;
            }
        }
        return super.drawChild(canvas, view, j);
    }

    public void setForceHeight(int i) {
        if (this.forceHeight == i) {
            return;
        }
        this.forceHeight = i;
        requestLayout();
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int i3 = this.forceHeight;
        if (i3 >= 0) {
            i2 = View.MeasureSpec.makeMeasureSpec(i3, TLObject.FLAG_30);
        }
        super.onMeasure(i, i2);
        this.flickerDrawable.setParentWidth(getMeasuredWidth());
    }

    public void setWebViewProgressListener(Consumer consumer) {
        this.webViewProgressListener = consumer;
    }

    public MyWebView getWebView() {
        return this.webView;
    }

    public void loadFlickerAndSettingsItem(int i, long j, ActionBarMenuSubItem actionBarMenuSubItem) {
        TLRPC.TL_attachMenuBot tL_attachMenuBot;
        TL_bots.BotInfo botInfo;
        TL_bots.botAppSettings botappsettings;
        TLRPC.User user = MessagesController.getInstance(i).getUser(Long.valueOf(j));
        TLRPC.UserFull userFull = MessagesController.getInstance(i).getUserFull(j);
        String publicUsername = UserObject.getPublicUsername(user);
        if (publicUsername != null && publicUsername.equals("DurgerKingBot")) {
            this.flickerView.setVisibility(0);
            this.flickerView.setAlpha(1.0f);
            this.flickerView.setImage(null, null, SvgHelper.getDrawable(C2888R.raw.durgerking_placeholder, Integer.valueOf(getColor(Theme.key_windowBackgroundGray))));
            setupFlickerParams(false);
            return;
        }
        ArrayList arrayList = MediaDataController.getInstance(i).getAttachMenuBots().bots;
        int size = arrayList.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                tL_attachMenuBot = null;
                break;
            }
            Object obj = arrayList.get(i2);
            i2++;
            tL_attachMenuBot = (TLRPC.TL_attachMenuBot) obj;
            if (tL_attachMenuBot.bot_id == j) {
                break;
            }
        }
        boolean z = true;
        if (tL_attachMenuBot != null) {
            TLRPC.TL_attachMenuBotIcon placeholderStaticAttachMenuBotIcon = MediaDataController.getPlaceholderStaticAttachMenuBotIcon(tL_attachMenuBot);
            if (placeholderStaticAttachMenuBotIcon == null) {
                placeholderStaticAttachMenuBotIcon = MediaDataController.getStaticAttachMenuBotIcon(tL_attachMenuBot);
            } else {
                z = false;
            }
            if (placeholderStaticAttachMenuBotIcon != null) {
                this.flickerView.setVisibility(0);
                this.flickerView.setAlpha(1.0f);
                this.flickerView.setImage(ImageLocation.getForDocument(placeholderStaticAttachMenuBotIcon.icon), (String) null, (Drawable) null, tL_attachMenuBot);
                setupFlickerParams(z);
                return;
            }
            return;
        }
        if (userFull != null && (botInfo = userFull.bot_info) != null && (botappsettings = botInfo.app_settings) != null && botappsettings.placeholder_svg_path != null) {
            this.flickerView.setVisibility(0);
            this.flickerView.setAlpha(1.0f);
            SvgHelper.SvgDrawable drawableByPath = SvgHelper.getDrawableByPath(userFull.bot_info.app_settings.placeholder_svg_path, 512, 512);
            this.flickerViewDrawable = drawableByPath;
            if (drawableByPath != null) {
                drawableByPath.setColor(this.flickerViewColor);
                this.flickerViewDrawable.setupGradient(Theme.key_bot_loadingIcon, this.resourcesProvider, 1.0f, false);
            }
            this.flickerView.setImage(null, null, this.flickerViewDrawable);
            setupFlickerParams(true);
            return;
        }
        Path path = new Path();
        RectF rectF = AndroidUtilities.rectTmp;
        rectF.set(106.66499f, 106.66499f, 240.355f, 240.355f);
        Path.Direction direction = Path.Direction.CW;
        path.addRoundRect(rectF, 18.0f, 18.0f, direction);
        rectF.set(271.645f, 106.66499f, 405.335f, 240.355f);
        path.addRoundRect(rectF, 18.0f, 18.0f, direction);
        rectF.set(106.66499f, 271.645f, 240.355f, 405.335f);
        path.addRoundRect(rectF, 18.0f, 18.0f, direction);
        rectF.set(271.645f, 271.645f, 405.335f, 405.335f);
        path.addRoundRect(rectF, 18.0f, 18.0f, direction);
        this.flickerView.setVisibility(0);
        this.flickerView.setAlpha(1.0f);
        SvgHelper.SvgDrawable drawableByPath2 = SvgHelper.getDrawableByPath(path, 512, 512);
        this.flickerViewDrawable = drawableByPath2;
        if (drawableByPath2 != null) {
            drawableByPath2.setColor(this.flickerViewColor);
            this.flickerViewDrawable.setupGradient(Theme.key_bot_loadingIcon, this.resourcesProvider, 1.0f, false);
        }
        this.flickerView.setImage(null, null, this.flickerViewDrawable);
        setupFlickerParams(true);
    }

    private void setupFlickerParams(boolean z) {
        this.isFlickeringCenter = z;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.flickerView.getLayoutParams();
        layoutParams.gravity = z ? 17 : 48;
        if (z) {
            int iM1124dp = AndroidUtilities.m1124dp(100.0f);
            layoutParams.height = iM1124dp;
            layoutParams.width = iM1124dp;
        } else {
            layoutParams.width = -1;
            layoutParams.height = -2;
        }
        this.flickerView.requestLayout();
    }

    public void reload() {
        NotificationCenter.getInstance(this.currentAccount).doOnIdle(new Runnable() { // from class: org.telegram.ui.web.BotWebViewContainer$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$reload$1();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$reload$1() {
        if (this.isSettingsButtonVisible) {
            this.isSettingsButtonVisible = false;
            Delegate delegate = this.delegate;
            if (delegate != null) {
                delegate.onSetSettingsButtonVisible(false);
            }
        }
        checkCreateWebView();
        this.isPageLoaded = false;
        this.lastClickMs = 0L;
        this.hasUserPermissions = false;
        MyWebView myWebView = this.webView;
        if (myWebView != null) {
            myWebView.onResume();
            this.webView.reload();
        }
        updateKeyboardFocusable();
        BotSensors botSensors = this.sensors;
        if (botSensors != null) {
            botSensors.stopAll();
        }
    }

    public void loadUrl(int i, final String str) {
        this.currentAccount = i;
        NotificationCenter.getInstance(i).doOnIdle(new Runnable() { // from class: org.telegram.ui.web.BotWebViewContainer$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadUrl$2(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadUrl$2(String str) {
        this.isPageLoaded = false;
        this.lastClickMs = 0L;
        this.hasUserPermissions = false;
        this.mUrl = str;
        checkCreateWebView();
        MyWebView myWebView = this.webView;
        if (myWebView != null) {
            myWebView.onResume();
            this.webView.loadUrl(str);
        }
        updateKeyboardFocusable();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        m1349d("attached");
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.didSetNewTheme);
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.onActivityResultReceived);
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.onRequestPermissionResultReceived);
        Bulletin.addDelegate(this, new Bulletin.Delegate() { // from class: org.telegram.ui.web.BotWebViewContainer.3
            @Override // org.telegram.ui.Components.Bulletin.Delegate
            public /* synthetic */ boolean allowLayoutChanges() {
                return Bulletin.Delegate.CC.$default$allowLayoutChanges(this);
            }

            @Override // org.telegram.ui.Components.Bulletin.Delegate
            public /* synthetic */ boolean bottomOffsetAnimated() {
                return Bulletin.Delegate.CC.$default$bottomOffsetAnimated(this);
            }

            @Override // org.telegram.ui.Components.Bulletin.Delegate
            public /* synthetic */ boolean clipWithGradient(int i) {
                return Bulletin.Delegate.CC.$default$clipWithGradient(this, i);
            }

            @Override // org.telegram.ui.Components.Bulletin.Delegate
            public /* synthetic */ int getTopOffset(int i) {
                return Bulletin.Delegate.CC.$default$getTopOffset(this, i);
            }

            @Override // org.telegram.ui.Components.Bulletin.Delegate
            public /* synthetic */ void onBottomOffsetChange(float f) {
                Bulletin.Delegate.CC.$default$onBottomOffsetChange(this, f);
            }

            @Override // org.telegram.ui.Components.Bulletin.Delegate
            public /* synthetic */ void onHide(Bulletin bulletin) {
                Bulletin.Delegate.CC.$default$onHide(this, bulletin);
            }

            @Override // org.telegram.ui.Components.Bulletin.Delegate
            public /* synthetic */ void onShow(Bulletin bulletin) {
                Bulletin.Delegate.CC.$default$onShow(this, bulletin);
            }

            @Override // org.telegram.ui.Components.Bulletin.Delegate
            public int getBottomOffset(int i) {
                if (!(BotWebViewContainer.this.getParent() instanceof ChatAttachAlertBotWebViewLayout.WebViewSwipeContainer)) {
                    return 0;
                }
                ChatAttachAlertBotWebViewLayout.WebViewSwipeContainer webViewSwipeContainer = (ChatAttachAlertBotWebViewLayout.WebViewSwipeContainer) BotWebViewContainer.this.getParent();
                return (int) ((webViewSwipeContainer.getOffsetY() + webViewSwipeContainer.getSwipeOffsetY()) - webViewSwipeContainer.getTopActionBarOffsetY());
            }
        });
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m1349d("detached");
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.didSetNewTheme);
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.onActivityResultReceived);
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.onRequestPermissionResultReceived);
        Bulletin.removeDelegate(this);
    }

    public void preserveWebView() {
        m1349d("preserveWebView");
        this.preserving = true;
        if (this.bot) {
            notifyEvent("visibility_changed", obj("is_visible", Boolean.FALSE));
        }
    }

    public void destroyWebView() {
        m1349d("destroyWebView preserving=" + this.preserving);
        MyWebView myWebView = this.webView;
        if (myWebView != null) {
            if (myWebView.getParent() != null) {
                removeView(this.webView);
            }
            if (!this.preserving) {
                this.webView.destroy();
                onWebViewDestroyed(this.webView);
            }
            this.isPageLoaded = false;
            updateKeyboardFocusable();
            if (this.biometry != null) {
                this.biometry = null;
            }
            if (this.storage != null) {
                this.storage = null;
            }
            if (this.secureStorage != null) {
                this.secureStorage = null;
            }
            BotLocation botLocation = this.location;
            if (botLocation != null) {
                botLocation.unlisten(this.notifyLocationChecked);
                this.location = null;
            }
        }
    }

    public void resetWebView() {
        this.webView = null;
    }

    public boolean isBackButtonVisible() {
        return this.isBackButtonVisible;
    }

    public void evaluateJs(final String str, final boolean z) {
        NotificationCenter.getInstance(this.currentAccount).doOnIdle(new Runnable() { // from class: org.telegram.ui.web.BotWebViewContainer$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$evaluateJs$3(z, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$evaluateJs$3(boolean z, String str) {
        if (z) {
            checkCreateWebView();
        }
        MyWebView myWebView = this.webView;
        if (myWebView == null) {
            return;
        }
        myWebView.evaluateJS(str);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.didSetNewTheme) {
            MyWebView myWebView = this.webView;
            if (myWebView != null) {
                myWebView.setBackgroundColor(getColor(Theme.key_windowBackgroundWhite));
            }
            if (!this.flickerViewColorOverriden) {
                BackupImageView backupImageView = this.flickerView;
                int i3 = Theme.key_bot_loadingIcon;
                int color = getColor(i3);
                this.flickerViewColor = color;
                backupImageView.setColorFilter(new PorterDuffColorFilter(color, PorterDuff.Mode.SRC_IN));
                SvgHelper.SvgDrawable svgDrawable = this.flickerViewDrawable;
                if (svgDrawable != null) {
                    svgDrawable.setColor(this.flickerViewColor);
                    this.flickerViewDrawable.setupGradient(i3, this.resourcesProvider, 1.0f, false);
                }
                this.flickerView.invalidate();
            }
            notifyThemeChanged();
            return;
        }
        if (i == NotificationCenter.onActivityResultReceived) {
            onActivityResult(((Integer) objArr[0]).intValue(), ((Integer) objArr[1]).intValue(), (Intent) objArr[2]);
        } else if (i == NotificationCenter.onRequestPermissionResultReceived) {
            onRequestPermissionsResult(((Integer) objArr[0]).intValue(), (String[]) objArr[1], (int[]) objArr[2]);
        }
    }

    public void notifyThemeChanged() {
        notifyEvent("theme_changed", buildThemeParams());
    }

    public void notifyEvent(String str, JSONObject jSONObject) {
        m1349d("notifyEvent " + str);
        evaluateJs("window.Telegram.WebView.receiveEvent('" + str + "', " + jSONObject + ");", false);
    }

    private void notifyEvent_fast(String str, String str2) {
        evaluateJs("window.Telegram.WebView.receiveEvent('" + str + "', " + str2 + ");", false);
    }

    private static void notifyEvent(int i, final MyWebView myWebView, final String str, final JSONObject jSONObject) {
        if (myWebView == null) {
            return;
        }
        NotificationCenter.getInstance(i).doOnIdle(new Runnable() { // from class: org.telegram.ui.web.BotWebViewContainer$$ExternalSyntheticLambda34
            @Override // java.lang.Runnable
            public final void run() {
                myWebView.evaluateJS("window.Telegram.WebView.receiveEvent('" + str + "', " + jSONObject + ");");
            }
        });
    }

    public void setWebViewScrollListener(WebViewScrollListener webViewScrollListener) {
        this.webViewScrollListener = webViewScrollListener;
        MyWebView myWebView = this.webView;
        if (myWebView != null) {
            myWebView.setContainers(this, webViewScrollListener);
        }
    }

    public void setOnCloseRequestedListener(Runnable runnable) {
        this.onCloseListener = runnable;
        MyWebView myWebView = this.webView;
        if (myWebView != null) {
            myWebView.setCloseListener(runnable);
        }
    }

    public void setWasOpenedByLinkIntent(boolean z) {
        this.wasOpenedByLinkIntent = z;
    }

    public void setWasOpenedByBot(WebViewRequestProps webViewRequestProps) {
        this.wasOpenedByBot = webViewRequestProps;
    }

    public void setDelegate(Delegate delegate) {
        this.delegate = delegate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onWebEventReceived(String str, String str2) {
        boolean zOptBoolean;
        boolean zOptBoolean2;
        if (this.bot || this.delegate == null) {
            return;
        }
        m1349d("onWebEventReceived " + str + " " + str2);
        str.getClass();
        zOptBoolean = true;
        switch (str) {
            case "actionBarColor":
            case "navigationBarColor":
                try {
                    JSONArray jSONArray = new JSONArray(str2);
                    boolean zEquals = TextUtils.equals(str, "actionBarColor");
                    int iArgb = Color.argb((int) Math.round(jSONArray.optDouble(3, 1.0d) * 255.0d), (int) Math.round(jSONArray.optDouble(0)), (int) Math.round(jSONArray.optDouble(1)), (int) Math.round(jSONArray.optDouble(2)));
                    MyWebView myWebView = this.webView;
                    if (myWebView != null) {
                        if (zEquals) {
                            myWebView.lastActionBarColorGot = true;
                            myWebView.lastActionBarColor = iArgb;
                        } else {
                            myWebView.lastBackgroundColorGot = true;
                            myWebView.lastBackgroundColor = iArgb;
                        }
                        myWebView.saveHistory();
                    }
                    this.delegate.onWebAppBackgroundChanged(zEquals, iArgb);
                    break;
                } catch (Exception unused) {
                    return;
                }
                break;
            case "oauth_request":
                m1349d("oauth_request " + str2);
                if (this.webView != null) {
                    final String originHost = getOriginHost();
                    if (!TextUtils.isEmpty(originHost)) {
                        try {
                            final String strOptString = new JSONObject(str2).optString("url");
                            notifyEvent("oauth_supported", obj("version", 1));
                            if (!TextUtils.isEmpty(strOptString)) {
                                final TLRPC.TL_messages_requestUrlAuth tL_messages_requestUrlAuth = new TLRPC.TL_messages_requestUrlAuth();
                                tL_messages_requestUrlAuth.url = strOptString;
                                int i = tL_messages_requestUrlAuth.flags;
                                tL_messages_requestUrlAuth.in_app_origin = originHost;
                                tL_messages_requestUrlAuth.flags = i | 12;
                                ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_messages_requestUrlAuth, new RequestDelegate() { // from class: org.telegram.ui.web.BotWebViewContainer$$ExternalSyntheticLambda4
                                    @Override // org.telegram.tgnet.RequestDelegate
                                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                                        this.f$0.lambda$onWebEventReceived$6(tL_messages_requestUrlAuth, strOptString, originHost, tLObject, tL_error);
                                    }
                                }, 2);
                            }
                        } catch (Exception e) {
                            FileLog.m1136e(e);
                            return;
                        }
                        break;
                    }
                }
                break;
            case "siteName":
                m1349d("siteName " + str2);
                MyWebView myWebView2 = this.webView;
                if (myWebView2 != null) {
                    myWebView2.lastSiteName = str2;
                    myWebView2.saveHistory();
                    break;
                }
                break;
            case "allowScroll":
                try {
                    JSONArray jSONArray2 = new JSONArray(str2);
                    zOptBoolean2 = jSONArray2.optBoolean(0, true);
                    try {
                        zOptBoolean = jSONArray2.optBoolean(1, true);
                        break;
                    } catch (Exception unused2) {
                    }
                } catch (Exception unused3) {
                    zOptBoolean2 = true;
                }
                if (getParent() instanceof ChatAttachAlertBotWebViewLayout.WebViewSwipeContainer) {
                    ((ChatAttachAlertBotWebViewLayout.WebViewSwipeContainer) getParent()).allowThisScroll(zOptBoolean2, zOptBoolean);
                    break;
                }
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onWebEventReceived$6(final TLRPC.TL_messages_requestUrlAuth tL_messages_requestUrlAuth, final String str, final String str2, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.web.BotWebViewContainer$$ExternalSyntheticLambda36
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onWebEventReceived$5(tLObject, tL_messages_requestUrlAuth, str, tL_error, str2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onWebEventReceived$5(TLObject tLObject, TLRPC.TL_messages_requestUrlAuth tL_messages_requestUrlAuth, String str, TLRPC.TL_error tL_error, String str2) {
        if (tLObject == null) {
            if (tL_error != null) {
                if ("URL_EXPIRED".equalsIgnoreCase(tL_error.text)) {
                    BulletinFactory.m1245of(this, this.resourcesProvider).createSimpleBulletin(C2888R.raw.error, LocaleController.getString(C2888R.string.BotAuthLoggedInFailTitle), AndroidUtilities.replaceSingleLinkBold(LocaleController.formatString(C2888R.string.BotAuthLoggedInFail, str2), Theme.getColor(Theme.key_undo_cancelColor, this.resourcesProvider))).show();
                    return;
                } else {
                    BulletinFactory.m1245of(this, this.resourcesProvider).showForError(tL_error);
                    return;
                }
            }
            return;
        }
        if (tLObject instanceof TLRPC.TL_urlAuthResultRequest) {
            OAuthSheet.handle(false, this.currentAccount, tL_messages_requestUrlAuth, (TLRPC.TL_urlAuthResultRequest) tLObject, null, null, null, false, this);
        } else if (tLObject instanceof TLRPC.TL_urlAuthResultAccepted) {
            OAuthSheet.handle(false, this.currentAccount, tL_messages_requestUrlAuth, (TLRPC.TL_urlAuthResultAccepted) tLObject, null, null, null, false, this);
        } else if (tLObject instanceof TLRPC.TL_urlAuthResultDefault) {
            AlertsCreator.showOpenUrlAlert(getContext(), str, false, true, true, false, 0L, null, null);
        }
    }

    public String getOriginHost() {
        String url;
        MyWebView myWebView = this.webView;
        if (myWebView != null && (url = myWebView.getUrl()) != null && !url.isEmpty()) {
            Uri uri = Uri.parse(url);
            String scheme = uri.getScheme();
            String host = uri.getHost();
            int port = uri.getPort();
            if (scheme != null && host != null) {
                StringBuilder sb = new StringBuilder();
                sb.append(scheme);
                sb.append("://");
                sb.append(host);
                if (port != 0 && ((!scheme.equalsIgnoreCase("http") || port != 80) && (!scheme.equalsIgnoreCase("https") || port != 443))) {
                    sb.append(":");
                    sb.append(port);
                }
                return sb.toString();
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:305:0x04fa  */
    /* JADX WARN: Removed duplicated region for block: B:728:0x0cee  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onEventReceived(final BotWebViewProxy botWebViewProxy, String str, String str2) throws JSONException {
        byte b;
        long j;
        int i;
        boolean zOptBoolean;
        LaunchActivity launchActivity;
        TextView textView;
        TextView textView2;
        TextView textView3;
        boolean z;
        boolean zOptBoolean2;
        boolean zOptBoolean3;
        BottomSheet bottomSheet;
        long j2;
        int i2;
        long j3;
        String strOptString;
        final String strOptString2;
        final String strOptString3;
        final String str3;
        String str4;
        String strOptString4;
        boolean z2;
        boolean zOptBoolean4;
        boolean zOptBoolean5;
        if (this.bot) {
            if (this.webView == null || this.delegate == null) {
                m1349d("onEventReceived " + str + ": no webview or delegate!");
                return;
            }
            m1349d("onEventReceived " + str);
            str.getClass();
            switch (str.hashCode()) {
                case -2016939055:
                    b = str.equals("web_app_invoke_custom_method") ? (byte) 0 : (byte) -1;
                    break;
                case -1898902656:
                    if (str.equals("web_app_close_scan_qr_popup")) {
                        b = 1;
                        break;
                    }
                    break;
                case -1736707758:
                    if (str.equals("web_app_biometry_get_info")) {
                        b = 2;
                        break;
                    }
                    break;
                case -1717314938:
                    if (str.equals("web_app_open_link")) {
                        b = 3;
                        break;
                    }
                    break;
                case -1715704462:
                    if (str.equals("web_app_request_file_download")) {
                        b = 4;
                        break;
                    }
                    break;
                case -1693280352:
                    if (str.equals("web_app_open_popup")) {
                        b = 5;
                        break;
                    }
                    break;
                case -1390641887:
                    if (str.equals("web_app_open_invoice")) {
                        b = 6;
                        break;
                    }
                    break;
                case -1385387727:
                    if (str.equals("web_app_set_emoji_status")) {
                        b = 7;
                        break;
                    }
                    break;
                case -1353432696:
                    if (str.equals("web_app_setup_secondary_button")) {
                        b = 8;
                        break;
                    }
                    break;
                case -1341039673:
                    if (str.equals("web_app_setup_closing_behavior")) {
                        b = 9;
                        break;
                    }
                    break;
                case -1309122684:
                    if (str.equals("web_app_open_scan_qr_popup")) {
                        b = 10;
                        break;
                    }
                    break;
                case -1263619595:
                    if (str.equals("web_app_request_phone")) {
                        b = 11;
                        break;
                    }
                    break;
                case -1259935152:
                    if (str.equals("web_app_request_theme")) {
                        b = 12;
                        break;
                    }
                    break;
                case -1229296877:
                    if (str.equals("web_app_secure_storage_get_key")) {
                        b = 13;
                        break;
                    }
                    break;
                case -1183558219:
                    if (str.equals("web_app_check_location")) {
                        b = 14;
                        break;
                    }
                    break;
                case -1093591555:
                    if (str.equals("web_app_biometry_open_settings")) {
                        b = 15;
                        break;
                    }
                    break;
                case -921083201:
                    if (str.equals("web_app_request_viewport")) {
                        b = 16;
                        break;
                    }
                    break;
                case -907261345:
                    if (str.equals("web_app_request_emoji_status_access")) {
                        b = 17;
                        break;
                    }
                    break;
                case -620103109:
                    if (str.equals("web_app_stop_device_orientation")) {
                        b = 18;
                        break;
                    }
                    break;
                case -585008607:
                    if (str.equals("web_app_device_storage_save_key")) {
                        b = 19;
                        break;
                    }
                    break;
                case -581005326:
                    if (str.equals("web_app_device_storage_get_key")) {
                        b = 20;
                        break;
                    }
                    break;
                case -512688845:
                    if (str.equals("web_app_biometry_request_auth")) {
                        b = 21;
                        break;
                    }
                    break;
                case -498118340:
                    if (str.equals("web_app_toggle_orientation_lock")) {
                        b = 22;
                        break;
                    }
                    break;
                case -474676372:
                    if (str.equals("web_app_allow_scroll")) {
                        b = 23;
                        break;
                    }
                    break;
                case -439770054:
                    if (str.equals("web_app_open_tg_link")) {
                        b = 24;
                        break;
                    }
                    break;
                case -293897269:
                    if (str.equals("web_app_secure_storage_restore_key")) {
                        b = 25;
                        break;
                    }
                    break;
                case -244584646:
                    if (str.equals("web_app_share_to_story")) {
                        b = 26;
                        break;
                    }
                    break;
                case -216725042:
                    if (str.equals("web_app_request_location")) {
                        b = 27;
                        break;
                    }
                    break;
                case -111186465:
                    if (str.equals("web_app_start_gyroscope")) {
                        b = 28;
                        break;
                    }
                    break;
                case -71726289:
                    if (str.equals("web_app_close")) {
                        b = 29;
                        break;
                    }
                    break;
                case -58095910:
                    if (str.equals("web_app_ready")) {
                        b = 30;
                        break;
                    }
                    break;
                case 22015443:
                    if (str.equals("web_app_read_text_from_clipboard")) {
                        b = 31;
                        break;
                    }
                    break;
                case 127735931:
                    if (str.equals("web_app_hide_keyboard")) {
                        b = 32;
                        break;
                    }
                    break;
                case 189207985:
                    if (str.equals("web_app_stop_gyroscope")) {
                        b = 33;
                        break;
                    }
                    break;
                case 267846314:
                    if (str.equals("web_app_secure_storage_clear")) {
                        b = 34;
                        break;
                    }
                    break;
                case 348967753:
                    if (str.equals("web_app_device_storage_clear")) {
                        b = 35;
                        break;
                    }
                    break;
                case 420328489:
                    if (str.equals("web_app_start_accelerometer")) {
                        b = 36;
                        break;
                    }
                    break;
                case 475603707:
                    if (str.equals("web_app_stop_accelerometer")) {
                        b = 37;
                        break;
                    }
                    break;
                case 622108947:
                    if (str.equals("web_app_send_prepared_message")) {
                        b = 38;
                        break;
                    }
                    break;
                case 668142772:
                    if (str.equals("web_app_data_send")) {
                        b = 39;
                        break;
                    }
                    break;
                case 671811520:
                    if (str.equals("web_app_request_content_safe_area")) {
                        b = 40;
                        break;
                    }
                    break;
                case 721956751:
                    if (str.equals("web_app_add_to_home_screen")) {
                        b = 41;
                        break;
                    }
                    break;
                case 748864404:
                    if (str.equals("web_app_request_fullscreen")) {
                        b = 42;
                        break;
                    }
                    break;
                case 751292356:
                    if (str.equals("web_app_switch_inline_query")) {
                        b = 43;
                        break;
                    }
                    break;
                case 792789792:
                    if (str.equals("web_app_secure_storage_save_key")) {
                        b = 44;
                        break;
                    }
                    break;
                case 796110323:
                    if (str.equals("web_app_exit_fullscreen")) {
                        b = 45;
                        break;
                    }
                    break;
                case 880626018:
                    if (str.equals("web_app_verify_age")) {
                        b = 46;
                        break;
                    }
                    break;
                case 909476449:
                    if (str.equals("web_app_open_location_settings")) {
                        b = 47;
                        break;
                    }
                    break;
                case 1011447167:
                    if (str.equals("web_app_setup_back_button")) {
                        b = 48;
                        break;
                    }
                    break;
                case 1210129967:
                    if (str.equals("web_app_biometry_request_access")) {
                        b = 49;
                        break;
                    }
                    break;
                case 1273834781:
                    if (str.equals("web_app_trigger_haptic_feedback")) {
                        b = 50;
                        break;
                    }
                    break;
                case 1398490221:
                    if (str.equals("web_app_setup_main_button")) {
                        b = 51;
                        break;
                    }
                    break;
                case 1453051298:
                    if (str.equals("web_app_setup_swipe_behavior")) {
                        b = 52;
                        break;
                    }
                    break;
                case 1455972419:
                    if (str.equals("web_app_setup_settings_button")) {
                        b = 53;
                        break;
                    }
                    break;
                case 1495787980:
                    if (str.equals("web_app_check_home_screen")) {
                        b = 54;
                        break;
                    }
                    break;
                case 1812395469:
                    if (str.equals("web_app_start_device_orientation")) {
                        b = 55;
                        break;
                    }
                    break;
                case 1882780382:
                    if (str.equals("web_app_biometry_update_token")) {
                        b = 56;
                        break;
                    }
                    break;
                case 1899078473:
                    if (str.equals("web_app_set_bottom_bar_color")) {
                        b = 57;
                        break;
                    }
                    break;
                case 1917103703:
                    if (str.equals("web_app_set_header_color")) {
                        b = 58;
                        break;
                    }
                    break;
                case 1937068806:
                    if (str.equals("web_app_request_safe_area")) {
                        b = 59;
                        break;
                    }
                    break;
                case 2001330488:
                    if (str.equals("web_app_set_background_color")) {
                        b = 60;
                        break;
                    }
                    break;
                case 2036090717:
                    if (str.equals("web_app_request_write_access")) {
                        b = 61;
                        break;
                    }
                    break;
                case 2139805763:
                    if (str.equals("web_app_expand")) {
                        b = 62;
                        break;
                    }
                    break;
            }
            long j4 = 1000;
            BotWebViewVibrationEffect botWebViewVibrationEffect = null;
            String string = null;
            String string2 = null;
            String string3 = null;
            BottomSheetTabs.WebTabData webTabData = null;
            botWebViewVibrationEffect = null;
            botWebViewVibrationEffect = null;
            botWebViewVibrationEffect = null;
            botWebViewVibrationEffect = null;
            botWebViewVibrationEffect = null;
            botWebViewVibrationEffect = null;
            botWebViewVibrationEffect = null;
            botWebViewVibrationEffect = null;
            botWebViewVibrationEffect = null;
            botWebViewVibrationEffect = null;
            botWebViewVibrationEffect = null;
            botWebViewVibrationEffect = null;
            botWebViewVibrationEffect = null;
            switch (b) {
                case 0:
                    if (this.botUser != null) {
                        try {
                            JSONObject jSONObject = new JSONObject(str2);
                            final String string4 = jSONObject.getString("req_id");
                            String string5 = jSONObject.getString("method");
                            String string6 = jSONObject.get("params").toString();
                            final int i3 = this.currentAccount;
                            final MyWebView myWebView = this.webView;
                            TL_bots.invokeWebViewCustomMethod invokewebviewcustommethod = new TL_bots.invokeWebViewCustomMethod();
                            invokewebviewcustommethod.bot = MessagesController.getInstance(i3).getInputUser(this.botUser.f1825id);
                            invokewebviewcustommethod.custom_method = string5;
                            TLRPC.TL_dataJSON tL_dataJSON = new TLRPC.TL_dataJSON();
                            invokewebviewcustommethod.params = tL_dataJSON;
                            tL_dataJSON.data = string6;
                            ConnectionsManager.getInstance(i3).sendRequest(invokewebviewcustommethod, new RequestDelegate() { // from class: org.telegram.ui.web.BotWebViewContainer$$ExternalSyntheticLambda27
                                @Override // org.telegram.tgnet.RequestDelegate
                                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                                    this.f$0.lambda$onEventReceived$21(string4, i3, myWebView, tLObject, tL_error);
                                }
                            });
                            break;
                        } catch (Exception e) {
                            FileLog.m1136e(e);
                            if (e instanceof JSONException) {
                                error("JSON Parse error");
                                return;
                            } else {
                                unknownError();
                                return;
                            }
                        }
                    }
                    break;
                case 1:
                    if (this.hasQRPending && (bottomSheet = this.cameraBottomSheet) != null) {
                        bottomSheet.dismiss();
                        break;
                    }
                    break;
                case 2:
                    notifyBiometryReceived();
                    break;
                case 3:
                    try {
                        JSONObject jSONObject2 = new JSONObject(str2);
                        Uri uri = Uri.parse(jSONObject2.optString("url"));
                        String strOptString5 = jSONObject2.optString("try_browser");
                        if (MessagesController.getInstance(this.currentAccount).webAppAllowedProtocols != null && MessagesController.getInstance(this.currentAccount).webAppAllowedProtocols.contains(uri.getScheme())) {
                            onOpenUri(uri, strOptString5, jSONObject2.optBoolean("try_instant_view"), true, false);
                            break;
                        }
                    } catch (Exception e2) {
                        FileLog.m1136e(e2);
                        return;
                    }
                    break;
                case 4:
                    if (!this.isRequestingPageOpen && this.botUser != null && System.currentTimeMillis() - this.lastClickMs <= 10000) {
                        if (this.downloads == null) {
                            this.downloads = BotDownloads.get(getContext(), this.currentAccount, this.botUser.f1825id);
                        }
                        try {
                            JSONObject jSONObject3 = new JSONObject(str2);
                            final String string7 = jSONObject3.getString("url");
                            final String string8 = jSONObject3.getString("file_name");
                            if (this.downloads.getCached(string7) != null) {
                                this.downloads.download(string7, string8);
                                notifyEvent("file_download_requested", obj("status", "downloading"));
                            } else {
                                TL_bots.checkDownloadFileParams checkdownloadfileparams = new TL_bots.checkDownloadFileParams();
                                checkdownloadfileparams.bot = MessagesController.getInstance(this.currentAccount).getInputUser(this.botUser);
                                checkdownloadfileparams.file_name = string8;
                                checkdownloadfileparams.url = string7;
                                ConnectionsManager.getInstance(this.currentAccount).sendRequest(checkdownloadfileparams, new RequestDelegate() { // from class: org.telegram.ui.web.BotWebViewContainer$$ExternalSyntheticLambda19
                                    @Override // org.telegram.tgnet.RequestDelegate
                                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                                        this.f$0.lambda$onEventReceived$45(string7, string8, tLObject, tL_error);
                                    }
                                });
                            }
                        } catch (Exception e3) {
                            FileLog.m1136e(e3);
                            notifyEvent("file_download_requested", obj("status", "cancelled"));
                            return;
                        }
                        break;
                    }
                    break;
                case 5:
                    try {
                        if (this.currentDialog == null) {
                            if (System.currentTimeMillis() - this.lastDialogClosed <= 150) {
                                int i4 = this.dialogSequentialOpenTimes + 1;
                                this.dialogSequentialOpenTimes = i4;
                                if (i4 >= 3) {
                                    this.dialogSequentialOpenTimes = 0;
                                    this.lastDialogCooldownTime = System.currentTimeMillis();
                                }
                            }
                            if (System.currentTimeMillis() - this.lastDialogCooldownTime <= 3000) {
                                break;
                            } else {
                                JSONObject jSONObject4 = new JSONObject(str2);
                                String strOptString6 = jSONObject4.optString("title", null);
                                String string9 = jSONObject4.getString("message");
                                JSONArray jSONArray = jSONObject4.getJSONArray("buttons");
                                AlertDialog.Builder message = new AlertDialog.Builder(getContext()).setTitle(strOptString6).setMessage(string9);
                                ArrayList arrayList = new ArrayList();
                                for (int i5 = 0; i5 < jSONArray.length(); i5++) {
                                    arrayList.add(new PopupButton(jSONArray.getJSONObject(i5)));
                                }
                                if (arrayList.size() > 3) {
                                    break;
                                } else {
                                    final AtomicBoolean atomicBoolean = new AtomicBoolean();
                                    if (arrayList.size() >= 1) {
                                        final PopupButton popupButton = (PopupButton) arrayList.get(0);
                                        message.setPositiveButton(popupButton.text, new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.web.BotWebViewContainer$$ExternalSyntheticLambda5
                                            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                                            public final void onClick(AlertDialog alertDialog, int i6) {
                                                this.f$0.lambda$onEventReceived$7(popupButton, atomicBoolean, alertDialog, i6);
                                            }
                                        });
                                    }
                                    if (arrayList.size() >= 2) {
                                        final PopupButton popupButton2 = (PopupButton) arrayList.get(1);
                                        message.setNegativeButton(popupButton2.text, new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.web.BotWebViewContainer$$ExternalSyntheticLambda16
                                            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                                            public final void onClick(AlertDialog alertDialog, int i6) {
                                                this.f$0.lambda$onEventReceived$8(popupButton2, atomicBoolean, alertDialog, i6);
                                            }
                                        });
                                    }
                                    if (arrayList.size() == 3) {
                                        final PopupButton popupButton3 = (PopupButton) arrayList.get(2);
                                        message.setNeutralButton(popupButton3.text, new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.web.BotWebViewContainer$$ExternalSyntheticLambda23
                                            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                                            public final void onClick(AlertDialog alertDialog, int i6) {
                                                this.f$0.lambda$onEventReceived$9(popupButton3, atomicBoolean, alertDialog, i6);
                                            }
                                        });
                                    }
                                    message.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.web.BotWebViewContainer$$ExternalSyntheticLambda24
                                        @Override // android.content.DialogInterface.OnDismissListener
                                        public final void onDismiss(DialogInterface dialogInterface) {
                                            this.f$0.lambda$onEventReceived$10(atomicBoolean, dialogInterface);
                                        }
                                    });
                                    this.currentDialog = message.show();
                                    if (arrayList.size() >= 1) {
                                        PopupButton popupButton4 = (PopupButton) arrayList.get(0);
                                        if (popupButton4.textColorKey >= 0 && (textView3 = (TextView) this.currentDialog.getButton(-1)) != null) {
                                            textView3.setTextColor(getColor(popupButton4.textColorKey));
                                        }
                                    }
                                    if (arrayList.size() >= 2) {
                                        PopupButton popupButton5 = (PopupButton) arrayList.get(1);
                                        if (popupButton5.textColorKey >= 0 && (textView2 = (TextView) this.currentDialog.getButton(-2)) != null) {
                                            textView2.setTextColor(getColor(popupButton5.textColorKey));
                                        }
                                    }
                                    if (arrayList.size() == 3) {
                                        PopupButton popupButton6 = (PopupButton) arrayList.get(2);
                                        if (popupButton6.textColorKey >= 0 && (textView = (TextView) this.currentDialog.getButton(-3)) != null) {
                                            textView.setTextColor(getColor(popupButton6.textColorKey));
                                            break;
                                        }
                                    }
                                }
                            }
                        }
                    } catch (JSONException e4) {
                        FileLog.m1136e(e4);
                        return;
                    }
                    break;
                case 6:
                    try {
                        final String strOptString7 = new JSONObject(str2).optString("slug");
                        if (this.currentPaymentSlug != null) {
                            onInvoiceStatusUpdate(strOptString7, "cancelled", true);
                        } else {
                            this.currentPaymentSlug = strOptString7;
                            TLRPC.TL_payments_getPaymentForm tL_payments_getPaymentForm = new TLRPC.TL_payments_getPaymentForm();
                            final TLRPC.TL_inputInvoiceSlug tL_inputInvoiceSlug = new TLRPC.TL_inputInvoiceSlug();
                            tL_inputInvoiceSlug.slug = strOptString7;
                            tL_payments_getPaymentForm.invoice = tL_inputInvoiceSlug;
                            ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_payments_getPaymentForm, new RequestDelegate() { // from class: org.telegram.ui.web.BotWebViewContainer$$ExternalSyntheticLambda25
                                @Override // org.telegram.tgnet.RequestDelegate
                                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                                    this.f$0.lambda$onEventReceived$12(strOptString7, tL_inputInvoiceSlug, tLObject, tL_error);
                                }
                            });
                        }
                    } catch (JSONException e5) {
                        FileLog.m1136e(e5);
                        return;
                    }
                    break;
                case 7:
                    if (!this.isRequestingPageOpen && this.botUser != null && System.currentTimeMillis() - this.lastClickMs <= 10000) {
                        try {
                            JSONObject jSONObject5 = new JSONObject(str2);
                            j2 = Long.parseLong(jSONObject5.getString("custom_emoji_id"));
                            try {
                                i2 = jSONObject5.getInt("duration");
                            } catch (Exception unused) {
                                i2 = 0;
                            }
                        } catch (Exception unused2) {
                            j2 = 0;
                        }
                        long j5 = j2;
                        TLRPC.User user = this.botUser;
                        if (user == null) {
                            notifyEvent("emoji_status_failed", obj("error", "UNKNOWN_ERROR"));
                        } else {
                            SetupEmojiStatusSheet.show(this.currentAccount, user, j5, i2, new Utilities.Callback2() { // from class: org.telegram.ui.web.BotWebViewContainer$$ExternalSyntheticLambda14
                                @Override // org.telegram.messenger.Utilities.Callback2
                                public final void run(Object obj, Object obj2) {
                                    this.f$0.lambda$onEventReceived$38((String) obj, (TLRPC.Document) obj2);
                                }
                            });
                        }
                        break;
                    }
                    break;
                case 8:
                    try {
                        JSONObject jSONObject6 = new JSONObject(str2);
                        boolean zOptBoolean6 = jSONObject6.optBoolean("is_active", false);
                        String strTrim = jSONObject6.optString("text", this.lastSecondaryButtonText).trim();
                        boolean z3 = jSONObject6.optBoolean("is_visible", false) && !TextUtils.isEmpty(strTrim);
                        int color = jSONObject6.has("color") ? Color.parseColor(jSONObject6.optString("color")) : this.lastSecondaryButtonColor;
                        int color2 = jSONObject6.has("text_color") ? Color.parseColor(jSONObject6.optString("text_color")) : this.lastSecondaryButtonTextColor;
                        boolean z4 = jSONObject6.optBoolean("is_progress_visible", false) && z3;
                        boolean z5 = jSONObject6.optBoolean("has_shine_effect", false) && z3;
                        String strOptString8 = jSONObject6.has("position") ? jSONObject6.optString("position") : this.lastSecondaryButtonPosition;
                        if (strOptString8 == null) {
                            strOptString8 = "left";
                        }
                        try {
                            j3 = Long.parseLong(jSONObject6.getString("icon_custom_emoji_id"));
                        } catch (Throwable unused3) {
                            j3 = 0;
                        }
                        this.lastSecondaryButtonColor = color;
                        this.lastSecondaryButtonTextColor = color2;
                        this.lastSecondaryButtonText = strTrim;
                        this.lastSecondaryButtonPosition = strOptString8;
                        this.secondaryButtonData = str2;
                        this.delegate.onSetupSecondaryButton(z3, zOptBoolean6, strTrim, j3, color, color2, z4, z5, strOptString8);
                    } catch (Exception e6) {
                        FileLog.m1136e(e6);
                        return;
                    }
                    break;
                case 9:
                    try {
                        this.delegate.onWebAppSetupClosingBehavior(new JSONObject(str2).optBoolean("need_confirmation"));
                    } catch (JSONException e7) {
                        FileLog.m1136e(e7);
                        return;
                    }
                    break;
                case 10:
                    try {
                        if (!this.hasQRPending && this.parentActivity != null) {
                            this.lastQrText = new JSONObject(str2).optString("text");
                            this.hasQRPending = true;
                            if (this.parentActivity.checkSelfPermission("android.permission.CAMERA") != 0) {
                                NotificationCenter.getGlobalInstance().addObserver(new NotificationCenter.NotificationCenterDelegate() { // from class: org.telegram.ui.web.BotWebViewContainer.4
                                    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
                                    public void didReceivedNotification(int i6, int i7, Object... objArr) {
                                        int i8 = NotificationCenter.onRequestPermissionResultReceived;
                                        if (i6 == i8) {
                                            int iIntValue = ((Integer) objArr[0]).intValue();
                                            int[] iArr = (int[]) objArr[2];
                                            if (iIntValue == 5000) {
                                                NotificationCenter.getGlobalInstance().removeObserver(this, i8);
                                                if (iArr[0] == 0) {
                                                    BotWebViewContainer.this.openQrScanActivity();
                                                } else {
                                                    BotWebViewContainer.this.notifyEvent("scan_qr_popup_closed", new JSONObject());
                                                }
                                            }
                                        }
                                    }
                                }, NotificationCenter.onRequestPermissionResultReceived);
                                this.parentActivity.requestPermissions(new String[]{"android.permission.CAMERA"}, 5000);
                            } else {
                                openQrScanActivity();
                            }
                        }
                    } catch (JSONException e8) {
                        FileLog.m1136e(e8);
                        return;
                    }
                    break;
                case 11:
                    if (!ignoreDialog(4)) {
                        final int i6 = this.currentAccount;
                        final MyWebView myWebView2 = this.webView;
                        final String[] strArr = {"cancelled"};
                        AlertDialog.Builder builder = new AlertDialog.Builder(getContext(), this.resourcesProvider);
                        builder.setTitle(LocaleController.getString(C2888R.string.ShareYouPhoneNumberTitle));
                        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                        String userName = UserObject.getUserName(this.botUser);
                        if (TextUtils.isEmpty(userName)) {
                            spannableStringBuilder.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.getString(C2888R.string.AreYouSureShareMyContactInfoBot)));
                        } else {
                            spannableStringBuilder.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatString(C2888R.string.AreYouSureShareMyContactInfoWebapp, userName)));
                        }
                        final boolean z6 = MessagesController.getInstance(this.currentAccount).blockePeers.indexOfKey(this.botUser.f1825id) >= 0;
                        if (z6) {
                            spannableStringBuilder.append((CharSequence) "\n\n");
                            spannableStringBuilder.append((CharSequence) LocaleController.getString(C2888R.string.AreYouSureShareMyContactInfoBotUnblock));
                        }
                        builder.setMessage(spannableStringBuilder);
                        builder.setPositiveButton(LocaleController.getString(C2888R.string.ShareContact), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.web.BotWebViewContainer$$ExternalSyntheticLambda28
                            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                            public final void onClick(AlertDialog alertDialog, int i7) {
                                this.f$0.lambda$onEventReceived$23(strArr, z6, i6, myWebView2, alertDialog, i7);
                            }
                        });
                        builder.setNegativeButton(LocaleController.getString(C2888R.string.Cancel), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.web.BotWebViewContainer$$ExternalSyntheticLambda29
                            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                            public final void onClick(AlertDialog alertDialog, int i7) {
                                alertDialog.dismiss();
                            }
                        });
                        showDialog(4, builder.create(), new Runnable() { // from class: org.telegram.ui.web.BotWebViewContainer$$ExternalSyntheticLambda30
                            @Override // java.lang.Runnable
                            public final void run() {
                                BotWebViewContainer.m20742$r8$lambda$Y9Ca0W75ZkbjgWhRuPbDHpLiI(strArr, i6, myWebView2);
                            }
                        });
                    } else {
                        try {
                            JSONObject jSONObject7 = new JSONObject();
                            jSONObject7.put("status", "cancelled");
                            notifyEvent("phone_requested", jSONObject7);
                        } catch (Exception e9) {
                            FileLog.m1136e(e9);
                            return;
                        }
                    }
                    break;
                case 12:
                    notifyThemeChanged();
                    break;
                case 13:
                    if (this.botUser != null) {
                        if (this.secureStorage == null) {
                            Context context = getContext();
                            int i7 = this.currentAccount;
                            this.secureStorage = new BotStorage(context, i7, UserConfig.getInstance(i7).getClientUserId(), this.botUser.f1825id, true);
                        }
                        getStorageKey(this.secureStorage, str2, "secure_storage_key_received", "secure_storage_failed");
                        break;
                    }
                    break;
                case 14:
                    if (this.location == null) {
                        BotLocation botLocation = BotLocation.get(getContext(), this.currentAccount, this.botUser.f1825id);
                        this.location = botLocation;
                        botLocation.listen(this.notifyLocationChecked);
                    }
                    this.notifyLocationChecked.run();
                    break;
                case 15:
                    if (!this.isRequestingPageOpen && this.botUser != null && System.currentTimeMillis() - this.lastClickMs <= 10000) {
                        this.lastClickMs = 0L;
                        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
                        if (safeLastFragment != null && safeLastFragment.getParentLayout() != null) {
                            INavigationLayout parentLayout = safeLastFragment.getParentLayout();
                            safeLastFragment.presentFragment(ProfileActivity.m1294of(this.botUser.f1825id));
                            AndroidUtilities.scrollToFragmentRow(parentLayout, "botPermissionBiometry");
                            Delegate delegate = this.delegate;
                            if (delegate != null) {
                                delegate.onCloseToTabs();
                            }
                            break;
                        }
                    }
                    break;
                case 16:
                    invalidateViewPortHeight(!((getParent() instanceof ChatAttachAlertBotWebViewLayout.WebViewSwipeContainer) && ((ChatAttachAlertBotWebViewLayout.WebViewSwipeContainer) getParent()).isSwipeInProgress()), true);
                    break;
                case 17:
                    if (!this.isRequestingPageOpen && this.botUser != null && System.currentTimeMillis() - this.lastClickMs <= 10000) {
                        SetupEmojiStatusSheet.askPermission(this.currentAccount, this.botUser.f1825id, new Utilities.Callback2() { // from class: org.telegram.ui.web.BotWebViewContainer$$ExternalSyntheticLambda15
                            @Override // org.telegram.messenger.Utilities.Callback2
                            public final void run(Object obj, Object obj2) {
                                this.f$0.lambda$onEventReceived$39((Boolean) obj, (String) obj2);
                            }
                        });
                        break;
                    }
                    break;
                case 18:
                    BotSensors botSensors = this.delegate.getBotSensors();
                    if (botSensors == null || !botSensors.stopOrientation()) {
                        notifyEvent("device_orientation_failed", obj("error", "UNSUPPORTED"));
                    } else {
                        notifyEvent("device_orientation_stopped", null);
                    }
                    break;
                case 19:
                    if (this.botUser != null) {
                        if (this.storage == null) {
                            Context context2 = getContext();
                            int i8 = this.currentAccount;
                            this.storage = new BotStorage(context2, i8, UserConfig.getInstance(i8).getClientUserId(), this.botUser.f1825id, false);
                        }
                        setStorageKey(this.storage, str2, "device_storage_key_saved", "device_storage_failed");
                        break;
                    }
                    break;
                case 20:
                    if (this.botUser != null) {
                        if (this.storage == null) {
                            Context context3 = getContext();
                            int i9 = this.currentAccount;
                            this.storage = new BotStorage(context3, i9, UserConfig.getInstance(i9).getClientUserId(), this.botUser.f1825id, false);
                        }
                        getStorageKey(this.storage, str2, "device_storage_key_received", "device_storage_failed");
                        break;
                    }
                    break;
                case 21:
                    try {
                        string = new JSONObject(str2).getString("reason");
                        break;
                    } catch (Exception unused4) {
                    }
                    createBiometry();
                    BotBiometry botBiometry = this.biometry;
                    if (botBiometry != null) {
                        if (botBiometry.access_granted) {
                            botBiometry.requestToken(string, new Utilities.Callback2() { // from class: org.telegram.ui.web.BotWebViewContainer$$ExternalSyntheticLambda10
                                @Override // org.telegram.messenger.Utilities.Callback2
                                public final void run(Object obj, Object obj2) {
                                    this.f$0.lambda$onEventReceived$31((Boolean) obj, (String) obj2);
                                }
                            });
                        } else {
                            try {
                                JSONObject jSONObject8 = new JSONObject();
                                jSONObject8.put("status", "failed");
                                notifyEvent("biometry_auth_requested", jSONObject8);
                            } catch (Exception e10) {
                                FileLog.m1136e(e10);
                                return;
                            }
                        }
                        break;
                    }
                    break;
                case 22:
                    try {
                        z = new JSONObject(str2).getBoolean("locked");
                    } catch (Exception unused5) {
                        z = false;
                    }
                    Delegate delegate2 = this.delegate;
                    if (delegate2 != null) {
                        delegate2.onOrientationLockChanged(z);
                    }
                    break;
                case 23:
                    try {
                        JSONArray jSONArray2 = new JSONArray(str2);
                        zOptBoolean2 = jSONArray2.optBoolean(0, true);
                        try {
                            zOptBoolean3 = jSONArray2.optBoolean(1, true);
                        } catch (Exception unused6) {
                            zOptBoolean3 = true;
                        }
                    } catch (Exception unused7) {
                        zOptBoolean2 = true;
                    }
                    m1349d("allowScroll " + zOptBoolean2 + " " + zOptBoolean3);
                    if (getParent() instanceof ChatAttachAlertBotWebViewLayout.WebViewSwipeContainer) {
                        ((ChatAttachAlertBotWebViewLayout.WebViewSwipeContainer) getParent()).allowThisScroll(zOptBoolean2, zOptBoolean3);
                    }
                    break;
                case 24:
                    try {
                        JSONObject jSONObject9 = new JSONObject(str2);
                        String strOptString9 = jSONObject9.optString("path_full");
                        boolean zOptBoolean7 = jSONObject9.optBoolean("force_request", false);
                        if (strOptString9.startsWith("/")) {
                            strOptString9 = strOptString9.substring(1);
                        }
                        onOpenUri(Uri.parse("https://t.me/" + strOptString9), null, false, true, zOptBoolean7);
                    } catch (JSONException e11) {
                        FileLog.m1136e(e11);
                        return;
                    }
                    break;
                case 25:
                    if (this.botUser != null) {
                        if (this.secureStorage == null) {
                            Context context4 = getContext();
                            int i10 = this.currentAccount;
                            this.secureStorage = new BotStorage(context4, i10, UserConfig.getInstance(i10).getClientUserId(), this.botUser.f1825id, true);
                        }
                        restoreStorageKey(this.secureStorage, str2, "secure_storage_key_restored", "secure_storage_failed");
                        break;
                    }
                    break;
                case 26:
                    if (!this.isRequestingPageOpen && System.currentTimeMillis() - this.lastClickMs <= 10000 && System.currentTimeMillis() - this.lastPostStoryMs >= 2000) {
                        this.lastClickMs = 0L;
                        this.lastPostStoryMs = System.currentTimeMillis();
                        try {
                            JSONObject jSONObject10 = new JSONObject(str2);
                            strOptString = jSONObject10.optString("media_url");
                            try {
                                strOptString2 = jSONObject10.optString("text");
                                try {
                                    JSONObject jSONObjectOptJSONObject = jSONObject10.optJSONObject("widget_link");
                                    if (jSONObjectOptJSONObject != null) {
                                        strOptString3 = jSONObjectOptJSONObject.optString("url");
                                        try {
                                            strOptString4 = jSONObjectOptJSONObject.optString("name");
                                        } catch (Exception e12) {
                                            e = e12;
                                            FileLog.m1136e(e);
                                            str3 = null;
                                        }
                                    } else {
                                        strOptString4 = null;
                                        strOptString3 = null;
                                    }
                                    str3 = strOptString4;
                                } catch (Exception e13) {
                                    e = e13;
                                    strOptString3 = null;
                                }
                            } catch (Exception e14) {
                                e = e14;
                                strOptString2 = null;
                                strOptString3 = strOptString2;
                                FileLog.m1136e(e);
                                str3 = null;
                                str4 = strOptString;
                                if (str4 != null) {
                                    return;
                                }
                            }
                        } catch (Exception e15) {
                            e = e15;
                            strOptString = null;
                            strOptString2 = null;
                        }
                        str4 = strOptString;
                        if (str4 != null) {
                            if (MessagesController.getInstance(this.currentAccount).storiesEnabled()) {
                                final AlertDialog alertDialog = new AlertDialog(this.parentActivity, 3);
                                new HttpGetFileTask(new Utilities.Callback() { // from class: org.telegram.ui.web.BotWebViewContainer$$ExternalSyntheticLambda12
                                    @Override // org.telegram.messenger.Utilities.Callback
                                    public final void run(Object obj) {
                                        this.f$0.lambda$onEventReceived$36(alertDialog, strOptString2, strOptString3, str3, (File) obj);
                                    }
                                }, null).execute(str4);
                                alertDialog.showDelayed(250L);
                            } else {
                                new PremiumFeatureBottomSheet(new BaseFragment() { // from class: org.telegram.ui.web.BotWebViewContainer.5
                                    @Override // org.telegram.p029ui.ActionBar.BaseFragment
                                    public boolean isLightStatusBar() {
                                        return false;
                                    }

                                    {
                                        this.currentAccount = BotWebViewContainer.this.currentAccount;
                                    }

                                    @Override // org.telegram.p029ui.ActionBar.BaseFragment
                                    public Dialog showDialog(Dialog dialog) {
                                        dialog.show();
                                        return dialog;
                                    }

                                    @Override // org.telegram.p029ui.ActionBar.BaseFragment
                                    public Activity getParentActivity() {
                                        return BotWebViewContainer.this.parentActivity;
                                    }

                                    @Override // org.telegram.p029ui.ActionBar.BaseFragment
                                    public Theme.ResourcesProvider getResourceProvider() {
                                        return new WrappedResourceProvider(BotWebViewContainer.this.resourcesProvider) { // from class: org.telegram.ui.web.BotWebViewContainer.5.1
                                            @Override // org.telegram.p029ui.WrappedResourceProvider
                                            public void appendColors() {
                                                this.sparseIntArray.append(Theme.key_dialogBackground, -14803426);
                                                this.sparseIntArray.append(Theme.key_windowBackgroundGray, -16777216);
                                            }
                                        };
                                    }
                                }, 14, true).show();
                            }
                            break;
                        }
                        break;
                    }
                    break;
                case 27:
                    if (!this.isRequestingPageOpen && this.botUser != null) {
                        if (this.location == null) {
                            BotLocation botLocation2 = BotLocation.get(getContext(), this.currentAccount, this.botUser.f1825id);
                            this.location = botLocation2;
                            botLocation2.listen(this.notifyLocationChecked);
                        }
                        if (this.location.granted()) {
                            this.location.requestObject(new Utilities.Callback() { // from class: org.telegram.ui.web.BotWebViewContainer$$ExternalSyntheticLambda18
                                @Override // org.telegram.messenger.Utilities.Callback
                                public final void run(Object obj) {
                                    this.f$0.lambda$onEventReceived$42((JSONObject) obj);
                                }
                            });
                        } else {
                            this.location.request(new Utilities.Callback2() { // from class: org.telegram.ui.web.BotWebViewContainer$$ExternalSyntheticLambda17
                                @Override // org.telegram.messenger.Utilities.Callback2
                                public final void run(Object obj, Object obj2) {
                                    this.f$0.lambda$onEventReceived$41((Boolean) obj, (Boolean) obj2);
                                }
                            });
                        }
                        break;
                    }
                    break;
                case 28:
                    BotSensors botSensors2 = this.delegate.getBotSensors();
                    try {
                        j4 = new JSONObject(str2).getLong("refresh_rate");
                        break;
                    } catch (Exception unused8) {
                    }
                    long jClamp = Utilities.clamp(j4, 1000L, 20L);
                    if (botSensors2 == null || !botSensors2.startGyroscope(jClamp)) {
                        notifyEvent("gyroscope_failed", obj("error", "UNSUPPORTED"));
                    } else {
                        notifyEvent("gyroscope_started", null);
                    }
                    break;
                case 29:
                    try {
                        zOptBoolean = new JSONObject(str2).optBoolean("return_back");
                    } catch (Exception e16) {
                        FileLog.m1136e(e16);
                        zOptBoolean = false;
                    }
                    this.delegate.onCloseRequested(null);
                    if (zOptBoolean) {
                        if (this.wasOpenedByLinkIntent && LaunchActivity.instance != null) {
                            Activity activityFindActivity = AndroidUtilities.findActivity(getContext());
                            if (activityFindActivity == null) {
                                activityFindActivity = LaunchActivity.instance;
                            }
                            if (activityFindActivity != null && !activityFindActivity.isFinishing()) {
                                activityFindActivity.moveTaskToBack(true);
                                break;
                            }
                        } else if (this.wasOpenedByBot != null && (launchActivity = LaunchActivity.instance) != null && launchActivity.getBottomSheetTabs() != null) {
                            BottomSheetTabs bottomSheetTabs = LaunchActivity.instance.getBottomSheetTabs();
                            ArrayList<BottomSheetTabs.WebTabData> tabs = bottomSheetTabs.getTabs();
                            int i11 = 0;
                            while (true) {
                                if (i11 < tabs.size()) {
                                    BottomSheetTabs.WebTabData webTabData2 = tabs.get(i11);
                                    if (!this.wasOpenedByBot.equals(webTabData2.props) || webTabData2.webView == this.webView) {
                                        i11++;
                                    } else {
                                        webTabData = webTabData2;
                                    }
                                }
                            }
                            if (webTabData != null) {
                                bottomSheetTabs.openTab(webTabData);
                            }
                            break;
                        }
                    }
                    break;
                case 30:
                    setPageLoaded(this.webView.getUrl(), true);
                    break;
                case 31:
                    try {
                        String string10 = new JSONObject(str2).getString("req_id");
                        if (this.delegate.isClipboardAvailable() && System.currentTimeMillis() - this.lastClickMs <= 10000) {
                            CharSequence text = ((ClipboardManager) getContext().getSystemService("clipboard")).getText();
                            notifyEvent("clipboard_text_received", new JSONObject().put("req_id", string10).put("data", text != null ? text.toString() : _UrlKt.FRAGMENT_ENCODE_SET));
                        }
                        notifyEvent("clipboard_text_received", new JSONObject().put("req_id", string10));
                    } catch (JSONException e17) {
                        FileLog.m1136e(e17);
                        return;
                    }
                    break;
                case 32:
                    Activity activityFindActivity2 = AndroidUtilities.findActivity(getContext());
                    if (activityFindActivity2 == null) {
                        activityFindActivity2 = LaunchActivity.instance;
                    }
                    if (activityFindActivity2 != null) {
                        AndroidUtilities.hideKeyboard(activityFindActivity2.getCurrentFocus());
                    }
                    break;
                case 33:
                    BotSensors botSensors3 = this.delegate.getBotSensors();
                    if (botSensors3 == null || !botSensors3.stopGyroscope()) {
                        notifyEvent("gyroscope_failed", obj("error", "UNSUPPORTED"));
                    } else {
                        notifyEvent("gyroscope_stopped", null);
                    }
                    break;
                case 34:
                    if (this.botUser != null) {
                        if (this.secureStorage == null) {
                            Context context5 = getContext();
                            int i12 = this.currentAccount;
                            this.secureStorage = new BotStorage(context5, i12, UserConfig.getInstance(i12).getClientUserId(), this.botUser.f1825id, true);
                        }
                        clearStorageKey(this.secureStorage, str2, "secure_storage_cleared", "secure_storage_cleared");
                        break;
                    }
                    break;
                case 35:
                    if (this.botUser != null) {
                        if (this.storage == null) {
                            Context context6 = getContext();
                            int i13 = this.currentAccount;
                            this.storage = new BotStorage(context6, i13, UserConfig.getInstance(i13).getClientUserId(), this.botUser.f1825id, false);
                        }
                        clearStorageKey(this.storage, str2, "device_storage_cleared", "device_storage_failed");
                        break;
                    }
                    break;
                case 36:
                    BotSensors botSensors4 = this.delegate.getBotSensors();
                    try {
                        j4 = new JSONObject(str2).getLong("refresh_rate");
                        break;
                    } catch (Exception unused9) {
                    }
                    long jClamp2 = Utilities.clamp(j4, 1000L, 20L);
                    if (botSensors4 == null || !botSensors4.startAccelerometer(jClamp2)) {
                        notifyEvent("accelerometer_failed", obj("error", "UNSUPPORTED"));
                    } else {
                        notifyEvent("accelerometer_started", null);
                    }
                    break;
                case 37:
                    BotSensors botSensors5 = this.delegate.getBotSensors();
                    if (botSensors5 == null || !botSensors5.stopAccelerometer()) {
                        notifyEvent("accelerometer_failed", obj("error", "UNSUPPORTED"));
                    } else {
                        notifyEvent("accelerometer_stopped", null);
                    }
                    break;
                case 38:
                    if (!this.isRequestingPageOpen && this.botUser != null && System.currentTimeMillis() - this.lastClickMs <= 10000) {
                        try {
                            String string11 = new JSONObject(str2).getString("id");
                            if (TextUtils.isEmpty(string11)) {
                                notifyEvent("prepared_message_failed", obj("error", "MESSAGE_EXPIRED"));
                            } else {
                                BotShareSheet.share(getContext(), this.currentAccount, this.botUser.f1825id, string11, this.resourcesProvider, new Runnable() { // from class: org.telegram.ui.web.BotWebViewContainer$$ExternalSyntheticLambda20
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        this.f$0.lambda$onEventReceived$46();
                                    }
                                }, new Utilities.Callback2() { // from class: org.telegram.ui.web.BotWebViewContainer$$ExternalSyntheticLambda21
                                    @Override // org.telegram.messenger.Utilities.Callback2
                                    public final void run(Object obj, Object obj2) {
                                        this.f$0.lambda$onEventReceived$48(botWebViewProxy, (String) obj, (ArrayList) obj2);
                                    }
                                });
                            }
                        } catch (Exception e18) {
                            FileLog.m1136e(e18);
                            notifyEvent("prepared_message_failed", obj("error", "MESSAGE_EXPIRED"));
                            return;
                        }
                        break;
                    }
                    break;
                case 39:
                    try {
                        this.delegate.onSendWebViewData(new JSONObject(str2).optString("data"));
                    } catch (JSONException e19) {
                        FileLog.m1136e(e19);
                        return;
                    }
                    break;
                case 40:
                    reportSafeContentInsets(this.lastInsetsTopMargin, true);
                    break;
                case 41:
                    if (!this.isRequestingPageOpen && this.botUser != null && System.currentTimeMillis() - this.lastClickMs <= 10000) {
                        if (MediaDataController.getInstance(this.currentAccount).isShortcutAdded(this.botUser.f1825id, MediaDataController.SHORTCUT_TYPE_ATTACHED_BOT)) {
                            notifyEvent("home_screen_added", null);
                        } else {
                            MediaDataController.getInstance(this.currentAccount).installShortcut(this.botUser.f1825id, MediaDataController.SHORTCUT_TYPE_ATTACHED_BOT, new Utilities.Callback() { // from class: org.telegram.ui.web.BotWebViewContainer$$ExternalSyntheticLambda13
                                @Override // org.telegram.messenger.Utilities.Callback
                                public final void run(Object obj) {
                                    this.f$0.lambda$onEventReceived$37((Boolean) obj);
                                }
                            });
                        }
                        break;
                    }
                    break;
                case 42:
                    try {
                        z2 = true;
                        try {
                            zOptBoolean4 = new JSONObject(str2).optBoolean("blur", true);
                        } catch (Exception unused10) {
                            zOptBoolean4 = z2;
                        }
                    } catch (Exception unused11) {
                        z2 = true;
                    }
                    String strOnFullscreenRequested = this.delegate.onFullscreenRequested(z2, zOptBoolean4);
                    if (strOnFullscreenRequested == null) {
                        notifyEvent("fullscreen_changed", obj("is_fullscreen", Boolean.TRUE, "blur_enabled", Boolean.valueOf(zOptBoolean4)));
                    } else {
                        notifyEvent("fullscreen_failed", obj("error", strOnFullscreenRequested));
                    }
                    break;
                case 43:
                    try {
                        JSONObject jSONObject11 = new JSONObject(str2);
                        ArrayList arrayList2 = new ArrayList();
                        JSONArray jSONArray3 = jSONObject11.getJSONArray("chat_types");
                        for (int i14 = 0; i14 < jSONArray3.length(); i14++) {
                            arrayList2.add(jSONArray3.getString(i14));
                        }
                        this.delegate.onWebAppSwitchInlineQuery(this.botUser, jSONObject11.getString("query"), arrayList2);
                    } catch (JSONException e20) {
                        FileLog.m1136e(e20);
                        return;
                    }
                    break;
                case 44:
                    if (this.botUser != null) {
                        if (this.secureStorage == null) {
                            Context context7 = getContext();
                            int i15 = this.currentAccount;
                            this.secureStorage = new BotStorage(context7, i15, UserConfig.getInstance(i15).getClientUserId(), this.botUser.f1825id, true);
                        }
                        setStorageKey(this.secureStorage, str2, "secure_storage_key_saved", "secure_storage_failed");
                        break;
                    }
                    break;
                case 45:
                    String strOnFullscreenRequested2 = this.delegate.onFullscreenRequested(false, true);
                    if (strOnFullscreenRequested2 == null) {
                        notifyEvent("fullscreen_changed", obj("is_fullscreen", Boolean.FALSE));
                    } else {
                        notifyEvent("fullscreen_failed", obj("error", strOnFullscreenRequested2));
                    }
                    break;
                case 46:
                    if (this.onVerifiedAge != null) {
                        try {
                            JSONObject jSONObject12 = new JSONObject(str2);
                            final boolean z7 = jSONObject12.getBoolean("passed");
                            final double d = jSONObject12.getDouble("age");
                            final String strOptString10 = jSONObject12.optString("gender");
                            final double dOptDouble = jSONObject12.optDouble("genderProbability");
                            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.web.BotWebViewContainer$$ExternalSyntheticLambda22
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f$0.lambda$onEventReceived$49(z7, d, strOptString10, dOptDouble);
                                }
                            });
                        } catch (Exception e21) {
                            FileLog.m1136e(e21);
                            return;
                        }
                    }
                    break;
                case 47:
                    if (!this.isRequestingPageOpen && this.botUser != null && System.currentTimeMillis() - this.lastClickMs <= 10000) {
                        this.lastClickMs = 0L;
                        BaseFragment safeLastFragment2 = LaunchActivity.getSafeLastFragment();
                        if (safeLastFragment2 != null && safeLastFragment2.getParentLayout() != null) {
                            INavigationLayout parentLayout2 = safeLastFragment2.getParentLayout();
                            safeLastFragment2.presentFragment(ProfileActivity.m1294of(this.botUser.f1825id));
                            AndroidUtilities.scrollToFragmentRow(parentLayout2, "botPermissionLocation");
                            Delegate delegate3 = this.delegate;
                            if (delegate3 != null) {
                                delegate3.onCloseToTabs();
                            }
                            break;
                        }
                    }
                    break;
                case 48:
                    try {
                        boolean zOptBoolean8 = new JSONObject(str2).optBoolean("is_visible");
                        if (zOptBoolean8 != this.isBackButtonVisible) {
                            this.isBackButtonVisible = zOptBoolean8;
                            this.delegate.onSetBackButtonVisible(zOptBoolean8);
                        }
                    } catch (JSONException e22) {
                        FileLog.m1136e(e22);
                        return;
                    }
                    break;
                case 49:
                    try {
                        string2 = new JSONObject(str2).getString("reason");
                        break;
                    } catch (Exception unused12) {
                    }
                    createBiometry();
                    BotBiometry botBiometry2 = this.biometry;
                    if (botBiometry2 != null) {
                        boolean z8 = botBiometry2.access_requested;
                        if (z8) {
                            notifyBiometryReceived();
                        } else if (botBiometry2.access_granted) {
                            if (!z8) {
                                botBiometry2.access_requested = true;
                                botBiometry2.save();
                            }
                            notifyBiometryReceived();
                        } else {
                            final Runnable[] runnableArr = {new Runnable() { // from class: org.telegram.ui.web.BotWebViewContainer$$ExternalSyntheticLambda6
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f$0.lambda$onEventReceived$26();
                                }
                            }};
                            AlertDialog.Builder builder2 = new AlertDialog.Builder(getContext(), this.resourcesProvider);
                            if (TextUtils.isEmpty(string2)) {
                                builder2.setTitle(LocaleController.getString(C2888R.string.BotAllowBiometryTitle));
                                builder2.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString(C2888R.string.BotAllowBiometryMessage, UserObject.getUserName(this.botUser))));
                            } else {
                                builder2.setTitle(AndroidUtilities.replaceTags(LocaleController.formatString(C2888R.string.BotAllowBiometryMessage, UserObject.getUserName(this.botUser))));
                                builder2.setMessage(string2);
                            }
                            builder2.setPositiveButton(LocaleController.getString(C2888R.string.Allow), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.web.BotWebViewContainer$$ExternalSyntheticLambda7
                                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                                public final void onClick(AlertDialog alertDialog2, int i16) {
                                    this.f$0.lambda$onEventReceived$28(runnableArr, alertDialog2, i16);
                                }
                            });
                            builder2.setNegativeButton(LocaleController.getString(C2888R.string.Cancel), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.web.BotWebViewContainer$$ExternalSyntheticLambda8
                                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                                public final void onClick(AlertDialog alertDialog2, int i16) {
                                    this.f$0.lambda$onEventReceived$29(runnableArr, alertDialog2, i16);
                                }
                            });
                            builder2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.web.BotWebViewContainer$$ExternalSyntheticLambda9
                                @Override // android.content.DialogInterface.OnDismissListener
                                public final void onDismiss(DialogInterface dialogInterface) {
                                    BotWebViewContainer.$r8$lambda$gFHAK0CBbUCCK1DFE62CWJmWiMc(runnableArr, dialogInterface);
                                }
                            });
                            builder2.show();
                        }
                        break;
                    }
                    break;
                case 50:
                    try {
                        JSONObject jSONObject13 = new JSONObject(str2);
                        String strOptString11 = jSONObject13.optString("type");
                        int iHashCode = strOptString11.hashCode();
                        if (iHashCode == -1184809658) {
                            if (strOptString11.equals("impact")) {
                                String strOptString12 = jSONObject13.optString("impact_style");
                                switch (strOptString12.hashCode()) {
                                    case -1078030475:
                                        if (strOptString12.equals("medium")) {
                                            botWebViewVibrationEffect = BotWebViewVibrationEffect.IMPACT_MEDIUM;
                                        }
                                        break;
                                    case 3535914:
                                        if (strOptString12.equals("soft")) {
                                            botWebViewVibrationEffect = BotWebViewVibrationEffect.IMPACT_SOFT;
                                        }
                                        break;
                                    case 99152071:
                                        if (strOptString12.equals("heavy")) {
                                            botWebViewVibrationEffect = BotWebViewVibrationEffect.IMPACT_HEAVY;
                                        }
                                        break;
                                    case 102970646:
                                        if (strOptString12.equals("light")) {
                                            botWebViewVibrationEffect = BotWebViewVibrationEffect.IMPACT_LIGHT;
                                        }
                                        break;
                                    case 108511787:
                                        if (strOptString12.equals("rigid")) {
                                            botWebViewVibrationEffect = BotWebViewVibrationEffect.IMPACT_RIGID;
                                        }
                                        break;
                                }
                            }
                        } else if (iHashCode != 193071555) {
                            if (iHashCode == 595233003 && strOptString11.equals("notification")) {
                                String strOptString13 = jSONObject13.optString("notification_type");
                                int iHashCode2 = strOptString13.hashCode();
                                if (iHashCode2 != -1867169789) {
                                    if (iHashCode2 != 96784904) {
                                        if (iHashCode2 == 1124446108 && strOptString13.equals("warning")) {
                                            botWebViewVibrationEffect = BotWebViewVibrationEffect.NOTIFICATION_WARNING;
                                        }
                                    } else if (strOptString13.equals("error")) {
                                        botWebViewVibrationEffect = BotWebViewVibrationEffect.NOTIFICATION_ERROR;
                                    }
                                } else if (strOptString13.equals("success")) {
                                    botWebViewVibrationEffect = BotWebViewVibrationEffect.NOTIFICATION_SUCCESS;
                                }
                            }
                        } else if (strOptString11.equals("selection_change")) {
                            botWebViewVibrationEffect = BotWebViewVibrationEffect.SELECTION_CHANGE;
                        }
                        if (botWebViewVibrationEffect != null) {
                            botWebViewVibrationEffect.vibrate();
                        }
                    } catch (Exception e23) {
                        FileLog.m1136e(e23);
                        return;
                    }
                    break;
                case 51:
                    try {
                        JSONObject jSONObject14 = new JSONObject(str2);
                        boolean zOptBoolean9 = jSONObject14.optBoolean("is_active", false);
                        String strTrim2 = jSONObject14.optString("text", this.lastButtonText).trim();
                        boolean z9 = jSONObject14.optBoolean("is_visible", false) && !TextUtils.isEmpty(strTrim2);
                        int color3 = jSONObject14.has("color") ? Color.parseColor(jSONObject14.optString("color")) : this.lastButtonColor;
                        int color4 = jSONObject14.has("text_color") ? Color.parseColor(jSONObject14.optString("text_color")) : this.lastButtonTextColor;
                        boolean z10 = jSONObject14.optBoolean("is_progress_visible", false) && z9;
                        boolean z11 = jSONObject14.optBoolean("has_shine_effect", false) && z9;
                        try {
                            j = Long.parseLong(jSONObject14.getString("icon_custom_emoji_id"));
                        } catch (Throwable unused13) {
                            j = 0;
                        }
                        this.lastButtonColor = color3;
                        this.lastButtonTextColor = color4;
                        this.lastButtonText = strTrim2;
                        this.buttonData = str2;
                        this.delegate.onSetupMainButton(z9, zOptBoolean9, strTrim2, j, color3, color4, z10, z11);
                    } catch (Exception e24) {
                        FileLog.m1136e(e24);
                        return;
                    }
                    break;
                case 52:
                    try {
                        this.delegate.onWebAppSwipingBehavior(new JSONObject(str2).optBoolean("allow_vertical_swipe"));
                    } catch (JSONException e25) {
                        FileLog.m1136e(e25);
                        return;
                    }
                    break;
                case 53:
                    try {
                        boolean zOptBoolean10 = new JSONObject(str2).optBoolean("is_visible");
                        if (zOptBoolean10 != this.isSettingsButtonVisible) {
                            this.isSettingsButtonVisible = zOptBoolean10;
                            this.delegate.onSetSettingsButtonVisible(zOptBoolean10);
                        }
                    } catch (JSONException e26) {
                        FileLog.m1136e(e26);
                        return;
                    }
                    break;
                case 54:
                    notifyEvent("home_screen_checked", obj("status", (this.botUser == null || Build.VERSION.SDK_INT < 26) ? "unsupported" : MediaDataController.getInstance(this.currentAccount).isShortcutAdded(this.botUser.f1825id, MediaDataController.SHORTCUT_TYPE_ATTACHED_BOT) ? "added" : "missed"));
                    break;
                case 55:
                    BotSensors botSensors6 = this.delegate.getBotSensors();
                    try {
                        JSONObject jSONObject15 = new JSONObject(str2);
                        j4 = jSONObject15.getLong("refresh_rate");
                        zOptBoolean5 = jSONObject15.optBoolean("need_absolute", false);
                    } catch (Exception unused14) {
                        zOptBoolean5 = false;
                    }
                    long jClamp3 = Utilities.clamp(j4, 1000L, 20L);
                    if (botSensors6 == null || !botSensors6.startOrientation(zOptBoolean5, jClamp3)) {
                        notifyEvent("device_orientation_failed", obj("error", "UNSUPPORTED"));
                    } else {
                        notifyEvent("device_orientation_started", null);
                    }
                    break;
                case 56:
                    try {
                        JSONObject jSONObject16 = new JSONObject(str2);
                        final String string12 = jSONObject16.getString("token");
                        try {
                            string3 = jSONObject16.getString("reason");
                            break;
                        } catch (Exception unused15) {
                        }
                        createBiometry();
                        BotBiometry botBiometry3 = this.biometry;
                        if (botBiometry3 != null) {
                            if (botBiometry3.access_granted) {
                                botBiometry3.updateToken(string3, string12, new Utilities.Callback() { // from class: org.telegram.ui.web.BotWebViewContainer$$ExternalSyntheticLambda11
                                    @Override // org.telegram.messenger.Utilities.Callback
                                    public final void run(Object obj) {
                                        this.f$0.lambda$onEventReceived$32(string12, (Boolean) obj);
                                    }
                                });
                            } else {
                                try {
                                    JSONObject jSONObject17 = new JSONObject();
                                    jSONObject17.put("status", "failed");
                                    notifyEvent("biometry_token_updated", jSONObject17);
                                } catch (Exception e27) {
                                    FileLog.m1136e(e27);
                                    return;
                                }
                            }
                            break;
                        }
                    } catch (Exception e28) {
                        FileLog.m1136e(e28);
                        if (e28 instanceof JSONException) {
                            error("JSON Parse error");
                            return;
                        } else {
                            unknownError();
                            return;
                        }
                    }
                    break;
                case 57:
                    try {
                        String strOptString14 = new JSONObject(str2).optString("color", null);
                        int color5 = TextUtils.isEmpty(strOptString14) ? Theme.getColor(Theme.key_windowBackgroundGray, this.resourcesProvider) : Color.parseColor(strOptString14);
                        Delegate delegate4 = this.delegate;
                        if (delegate4 != null) {
                            delegate4.onWebAppSetNavigationBarColor(color5);
                        }
                    } catch (Exception e29) {
                        FileLog.m1136e(e29);
                        return;
                    }
                    break;
                case 58:
                    try {
                        JSONObject jSONObject18 = new JSONObject(str2);
                        String strOptString15 = jSONObject18.optString("color", null);
                        if (TextUtils.isEmpty(strOptString15)) {
                            String strOptString16 = jSONObject18.optString("color_key");
                            int iHashCode3 = strOptString16.hashCode();
                            if (iHashCode3 != -1265068311) {
                                i = (iHashCode3 == -210781868 && strOptString16.equals("secondary_bg_color")) ? Theme.key_windowBackgroundGray : -1;
                            } else if (strOptString16.equals("bg_color")) {
                                i = Theme.key_windowBackgroundWhite;
                            }
                            if (i >= 0) {
                                this.delegate.onWebAppSetActionBarColor(i, Theme.getColor(i, this.resourcesProvider), false);
                            }
                        } else {
                            int color6 = Color.parseColor(strOptString15);
                            if (color6 != 0) {
                                this.delegate.onWebAppSetActionBarColor(-1, color6, true);
                            }
                        }
                    } catch (Exception e30) {
                        FileLog.m1136e(e30);
                        return;
                    }
                    break;
                case 59:
                    reportSafeInsets(this.lastInsets, true);
                    break;
                case 60:
                    try {
                        this.delegate.onWebAppSetBackgroundColor(Color.parseColor(new JSONObject(str2).optString("color", "#ffffff")) | (-16777216));
                    } catch (Exception e31) {
                        FileLog.m1136e(e31);
                        return;
                    }
                    break;
                case 61:
                    if (!ignoreDialog(3)) {
                        final int i16 = this.currentAccount;
                        final MyWebView myWebView3 = this.webView;
                        TL_bots.canSendMessage cansendmessage = new TL_bots.canSendMessage();
                        cansendmessage.bot = MessagesController.getInstance(this.currentAccount).getInputUser(this.botUser);
                        ConnectionsManager.getInstance(this.currentAccount).sendRequest(cansendmessage, new RequestDelegate() { // from class: org.telegram.ui.web.BotWebViewContainer$$ExternalSyntheticLambda26
                            @Override // org.telegram.tgnet.RequestDelegate
                            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                                this.f$0.lambda$onEventReceived$19(i16, myWebView3, tLObject, tL_error);
                            }
                        });
                    } else {
                        try {
                            JSONObject jSONObject19 = new JSONObject();
                            jSONObject19.put("status", "cancelled");
                            notifyEvent("write_access_requested", jSONObject19);
                        } catch (Exception e32) {
                            FileLog.m1136e(e32);
                            return;
                        }
                    }
                    break;
                case 62:
                    this.delegate.onWebAppExpand();
                    break;
                default:
                    FileLog.m1133d("unknown webapp event " + str);
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onEventReceived$7(PopupButton popupButton, AtomicBoolean atomicBoolean, AlertDialog alertDialog, int i) {
        alertDialog.dismiss();
        try {
            this.lastClickMs = System.currentTimeMillis();
            notifyEvent("popup_closed", new JSONObject().put("button_id", popupButton.f2254id));
            atomicBoolean.set(true);
        } catch (JSONException e) {
            FileLog.m1136e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onEventReceived$8(PopupButton popupButton, AtomicBoolean atomicBoolean, AlertDialog alertDialog, int i) {
        alertDialog.dismiss();
        try {
            this.lastClickMs = System.currentTimeMillis();
            notifyEvent("popup_closed", new JSONObject().put("button_id", popupButton.f2254id));
            atomicBoolean.set(true);
        } catch (JSONException e) {
            FileLog.m1136e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onEventReceived$9(PopupButton popupButton, AtomicBoolean atomicBoolean, AlertDialog alertDialog, int i) {
        alertDialog.dismiss();
        try {
            this.lastClickMs = System.currentTimeMillis();
            notifyEvent("popup_closed", new JSONObject().put("button_id", popupButton.f2254id));
            atomicBoolean.set(true);
        } catch (JSONException e) {
            FileLog.m1136e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onEventReceived$10(AtomicBoolean atomicBoolean, DialogInterface dialogInterface) {
        if (!atomicBoolean.get()) {
            notifyEvent("popup_closed", new JSONObject());
        }
        this.currentDialog = null;
        this.lastDialogClosed = System.currentTimeMillis();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onEventReceived$12(final String str, final TLRPC.TL_inputInvoiceSlug tL_inputInvoiceSlug, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.web.BotWebViewContainer$$ExternalSyntheticLambda39
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onEventReceived$11(tL_error, str, tL_inputInvoiceSlug, tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onEventReceived$11(TLRPC.TL_error tL_error, String str, TLRPC.TL_inputInvoiceSlug tL_inputInvoiceSlug, TLObject tLObject) {
        if (tL_error != null) {
            onInvoiceStatusUpdate(str, "failed");
        } else {
            this.delegate.onWebAppOpenInvoice(tL_inputInvoiceSlug, str, tLObject);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onEventReceived$19(final int i, final MyWebView myWebView, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.web.BotWebViewContainer$$ExternalSyntheticLambda43
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onEventReceived$18(tLObject, i, myWebView, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onEventReceived$18(TLObject tLObject, final int i, final MyWebView myWebView, TLRPC.TL_error tL_error) {
        if (!(tLObject instanceof TLRPC.TL_boolTrue)) {
            if (tL_error != null) {
                unknownError(tL_error.text);
                return;
            } else {
                final String[] strArr = {"cancelled"};
                showDialog(3, new AlertDialog.Builder(getContext()).setTitle(LocaleController.getString(C2888R.string.BotWebViewRequestWriteTitle)).setMessage(LocaleController.getString(C2888R.string.BotWebViewRequestWriteMessage)).setPositiveButton(LocaleController.getString(C2888R.string.BotWebViewRequestAllow), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.web.BotWebViewContainer$$ExternalSyntheticLambda45
                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                    public final void onClick(AlertDialog alertDialog, int i2) {
                        this.f$0.lambda$onEventReceived$15(strArr, alertDialog, i2);
                    }
                }).setNegativeButton(LocaleController.getString(C2888R.string.BotWebViewRequestDontAllow), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.web.BotWebViewContainer$$ExternalSyntheticLambda46
                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                    public final void onClick(AlertDialog alertDialog, int i2) {
                        alertDialog.dismiss();
                    }
                }).create(), new Runnable() { // from class: org.telegram.ui.web.BotWebViewContainer$$ExternalSyntheticLambda47
                    @Override // java.lang.Runnable
                    public final void run() {
                        BotWebViewContainer.$r8$lambda$qXRhl_p8dL9DYtielvcD3tI08ZE(strArr, i, myWebView);
                    }
                });
                return;
            }
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("status", "allowed");
            notifyEvent(i, myWebView, "write_access_requested", jSONObject);
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onEventReceived$15(final String[] strArr, final AlertDialog alertDialog, int i) {
        TL_bots.allowSendMessage allowsendmessage = new TL_bots.allowSendMessage();
        allowsendmessage.bot = MessagesController.getInstance(this.currentAccount).getInputUser(this.botUser);
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(allowsendmessage, new RequestDelegate() { // from class: org.telegram.ui.web.BotWebViewContainer$$ExternalSyntheticLambda51
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$onEventReceived$14(strArr, alertDialog, tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onEventReceived$14(final String[] strArr, final AlertDialog alertDialog, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.web.BotWebViewContainer$$ExternalSyntheticLambda52
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onEventReceived$13(tLObject, strArr, tL_error, alertDialog);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onEventReceived$13(TLObject tLObject, String[] strArr, TLRPC.TL_error tL_error, AlertDialog alertDialog) {
        if (tLObject != null) {
            strArr[0] = "allowed";
            if (tLObject instanceof TLRPC.Updates) {
                MessagesController.getInstance(this.currentAccount).processUpdates((TLRPC.Updates) tLObject, false);
            }
        }
        if (tL_error != null) {
            unknownError(tL_error.text);
        }
        alertDialog.dismiss();
    }

    public static /* synthetic */ void $r8$lambda$qXRhl_p8dL9DYtielvcD3tI08ZE(String[] strArr, int i, MyWebView myWebView) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("status", strArr[0]);
            notifyEvent(i, myWebView, "write_access_requested", jSONObject);
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onEventReceived$21(final String str, final int i, final MyWebView myWebView, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.web.BotWebViewContainer$$ExternalSyntheticLambda33
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onEventReceived$20(str, tLObject, tL_error, i, myWebView);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onEventReceived$20(String str, TLObject tLObject, TLRPC.TL_error tL_error, int i, MyWebView myWebView) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("req_id", str);
            if (tLObject instanceof TLRPC.TL_dataJSON) {
                jSONObject.put("result", new JSONTokener(((TLRPC.TL_dataJSON) tLObject).data).nextValue());
            } else if (tL_error != null) {
                jSONObject.put("error", tL_error.text);
            }
            notifyEvent(i, myWebView, "custom_method_invoked", jSONObject);
        } catch (Exception e) {
            FileLog.m1136e(e);
            unknownError();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onEventReceived$23(String[] strArr, boolean z, final int i, final MyWebView myWebView, AlertDialog alertDialog, int i2) {
        strArr[0] = null;
        alertDialog.dismiss();
        if (z) {
            MessagesController.getInstance(this.currentAccount).unblockPeer(this.botUser.f1825id, new Runnable() { // from class: org.telegram.ui.web.BotWebViewContainer$$ExternalSyntheticLambda40
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onEventReceived$22(i, myWebView);
                }
            });
            return;
        }
        SendMessagesHelper.getInstance(this.currentAccount).sendMessage(SendMessagesHelper.SendMessageParams.m1187of(UserConfig.getInstance(this.currentAccount).getCurrentUser(), this.botUser.f1825id, (MessageObject) null, (MessageObject) null, (TLRPC.ReplyMarkup) null, (HashMap<String, String>) null, true, 0, 0));
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("status", "sent");
            notifyEvent(i, myWebView, "phone_requested", jSONObject);
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onEventReceived$22(int i, MyWebView myWebView) {
        SendMessagesHelper.getInstance(this.currentAccount).sendMessage(SendMessagesHelper.SendMessageParams.m1187of(UserConfig.getInstance(this.currentAccount).getCurrentUser(), this.botUser.f1825id, (MessageObject) null, (MessageObject) null, (TLRPC.ReplyMarkup) null, (HashMap<String, String>) null, true, 0, 0));
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("status", "sent");
            notifyEvent(i, myWebView, "phone_requested", jSONObject);
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$Y9Ca0-W-75ZkbjgWhRuPbDHpLiI, reason: not valid java name */
    public static /* synthetic */ void m20742$r8$lambda$Y9Ca0W75ZkbjgWhRuPbDHpLiI(String[] strArr, int i, MyWebView myWebView) {
        if (strArr[0] == null) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("status", strArr[0]);
            notifyEvent(i, myWebView, "phone_requested", jSONObject);
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onEventReceived$26() {
        BotBiometry botBiometry = this.biometry;
        botBiometry.access_requested = true;
        botBiometry.save();
        notifyBiometryReceived();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onEventReceived$28(Runnable[] runnableArr, AlertDialog alertDialog, int i) {
        if (runnableArr[0] != null) {
            runnableArr[0] = null;
        }
        BotBiometry botBiometry = this.biometry;
        botBiometry.access_requested = true;
        botBiometry.save();
        this.biometry.requestToken(null, new Utilities.Callback2() { // from class: org.telegram.ui.web.BotWebViewContainer$$ExternalSyntheticLambda38
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$onEventReceived$27((Boolean) obj, (String) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onEventReceived$27(Boolean bool, String str) {
        if (bool.booleanValue()) {
            BotBiometry botBiometry = this.biometry;
            botBiometry.access_granted = true;
            botBiometry.save();
        }
        notifyBiometryReceived();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onEventReceived$29(Runnable[] runnableArr, AlertDialog alertDialog, int i) {
        if (runnableArr[0] != null) {
            runnableArr[0] = null;
        }
        BotBiometry botBiometry = this.biometry;
        botBiometry.access_requested = true;
        botBiometry.disabled = true;
        botBiometry.save();
        notifyBiometryReceived();
    }

    public static /* synthetic */ void $r8$lambda$gFHAK0CBbUCCK1DFE62CWJmWiMc(Runnable[] runnableArr, DialogInterface dialogInterface) {
        Runnable runnable = runnableArr[0];
        if (runnable != null) {
            runnable.run();
            runnableArr[0] = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onEventReceived$31(Boolean bool, String str) {
        if (bool.booleanValue()) {
            this.biometry.access_granted = true;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("status", bool.booleanValue() ? "authorized" : "failed");
            jSONObject.put("token", str);
            notifyEvent("biometry_auth_requested", jSONObject);
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onEventReceived$32(String str, Boolean bool) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("status", bool.booleanValue() ? TextUtils.isEmpty(str) ? "removed" : "updated" : "failed");
            notifyEvent("biometry_token_updated", jSONObject);
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onEventReceived$36(final AlertDialog alertDialog, final String str, final String str2, final String str3, final File file) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.web.BotWebViewContainer$$ExternalSyntheticLambda41
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onEventReceived$35(file, alertDialog, str, str2, str3);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onEventReceived$35(final File file, final AlertDialog alertDialog, final String str, final String str2, final String str3) {
        if (file == null) {
            alertDialog.dismissUnless(500L);
            return;
        }
        final int[] iArr = new int[11];
        final Runnable runnable = new Runnable() { // from class: org.telegram.ui.web.BotWebViewContainer$$ExternalSyntheticLambda49
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onEventReceived$33(iArr, file, alertDialog, str, str2, str3);
            }
        };
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.web.BotWebViewContainer$$ExternalSyntheticLambda50
            @Override // java.lang.Runnable
            public final void run() {
                BotWebViewContainer.$r8$lambda$5vDhNZmS1Gy5aEK62vD5qGc07_g(file, iArr, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x007a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$onEventReceived$33(int[] iArr, File file, AlertDialog alertDialog, String str, String str2, String str3) {
        StoryRecorder.SourceView sourceView;
        StoryEntry storyEntryFromPhotoShoot;
        BotWebViewContainer botWebViewContainer;
        File file2;
        if (iArr[4] > 0) {
            int i = iArr[1];
            int i2 = iArr[2];
            int photoSize = i > AndroidUtilities.getPhotoSize() ? AndroidUtilities.getPhotoSize() : i;
            int photoSize2 = i2 > AndroidUtilities.getPhotoSize() ? AndroidUtilities.getPhotoSize() : i2;
            File fileMakeCacheFile = StoryEntry.makeCacheFile(UserConfig.selectedAccount, "jpg");
            sourceView = null;
            AnimatedFileDrawable animatedFileDrawable = new AnimatedFileDrawable(file, true, 0L, 0, null, null, null, 0L, UserConfig.selectedAccount, true, photoSize, photoSize2, null);
            Bitmap firstFrame = animatedFileDrawable.getFirstFrame(null);
            animatedFileDrawable.recycle();
            if (firstFrame != null) {
                try {
                    firstFrame.compress(Bitmap.CompressFormat.JPEG, 80, new FileOutputStream(fileMakeCacheFile));
                    file2 = fileMakeCacheFile;
                } catch (Exception e) {
                    FileLog.m1136e(e);
                    file2 = null;
                }
                storyEntryFromPhotoShoot = StoryEntry.fromVideoShoot(file, file2 != null ? null : file2.getAbsolutePath(), iArr[4]);
                storyEntryFromPhotoShoot.width = i;
                storyEntryFromPhotoShoot.height = i2;
                storyEntryFromPhotoShoot.setupMatrix();
            } else {
                file2 = fileMakeCacheFile;
                storyEntryFromPhotoShoot = StoryEntry.fromVideoShoot(file, file2 != null ? null : file2.getAbsolutePath(), iArr[4]);
                storyEntryFromPhotoShoot.width = i;
                storyEntryFromPhotoShoot.height = i2;
                storyEntryFromPhotoShoot.setupMatrix();
            }
        } else {
            sourceView = null;
            storyEntryFromPhotoShoot = StoryEntry.fromPhotoShoot(file, ((Integer) AndroidUtilities.getImageOrientation(file).first).intValue());
        }
        if (storyEntryFromPhotoShoot.width <= 0 || storyEntryFromPhotoShoot.height <= 0) {
            alertDialog.dismissUnless(500L);
            return;
        }
        if (str != null) {
            storyEntryFromPhotoShoot.caption = str;
        }
        if (TextUtils.isEmpty(str2)) {
            botWebViewContainer = this;
        } else {
            botWebViewContainer = this;
            if (UserConfig.getInstance(botWebViewContainer.currentAccount).isPremium()) {
                if (storyEntryFromPhotoShoot.mediaEntities == null) {
                    storyEntryFromPhotoShoot.mediaEntities = new ArrayList();
                }
                VideoEditedInfo.MediaEntity mediaEntity = new VideoEditedInfo.MediaEntity();
                mediaEntity.type = (byte) 7;
                mediaEntity.subType = (byte) -1;
                mediaEntity.color = -1;
                LinkPreview.WebPagePreview webPagePreview = new LinkPreview.WebPagePreview();
                mediaEntity.linkSettings = webPagePreview;
                webPagePreview.url = str2;
                if (str3 != null) {
                    webPagePreview.flags |= 2;
                    webPagePreview.name = str3;
                }
                storyEntryFromPhotoShoot.mediaEntities.add(mediaEntity);
            }
        }
        StoryRecorder.getInstance(botWebViewContainer.parentActivity, UserConfig.selectedAccount).openRepost(sourceView, storyEntryFromPhotoShoot);
        alertDialog.dismissUnless(500L);
    }

    public static /* synthetic */ void $r8$lambda$5vDhNZmS1Gy5aEK62vD5qGc07_g(File file, int[] iArr, Runnable runnable) {
        AnimatedFileDrawable.getVideoInfo(file.getAbsolutePath(), iArr);
        AndroidUtilities.runOnUIThread(runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onEventReceived$37(Boolean bool) {
        if (bool.booleanValue()) {
            notifyEvent("home_screen_added", null);
        } else {
            notifyEvent("home_screen_failed", obj("error", "UNSUPPORTED"));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onEventReceived$38(String str, TLRPC.Document document) {
        if (str == null) {
            notifyEvent("emoji_status_set", null);
            Delegate delegate = this.delegate;
            if (delegate != null) {
                delegate.onEmojiStatusSet(document);
                return;
            }
            return;
        }
        notifyEvent("emoji_status_failed", obj("error", str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onEventReceived$39(Boolean bool, String str) {
        Delegate delegate;
        notifyEmojiStatusAccess(str);
        if (bool.booleanValue() && "allowed".equalsIgnoreCase(str) && (delegate = this.delegate) != null) {
            delegate.onEmojiStatusGranted(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onEventReceived$41(Boolean bool, Boolean bool2) {
        if (this.delegate != null && bool.booleanValue()) {
            this.delegate.onLocationGranted(bool2.booleanValue());
        }
        this.location.requestObject(new Utilities.Callback() { // from class: org.telegram.ui.web.BotWebViewContainer$$ExternalSyntheticLambda37
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$onEventReceived$40((JSONObject) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onEventReceived$40(JSONObject jSONObject) {
        notifyEvent("location_requested", jSONObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onEventReceived$42(JSONObject jSONObject) {
        notifyEvent("location_requested", jSONObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onEventReceived$45(final String str, final String str2, final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.web.BotWebViewContainer$$ExternalSyntheticLambda31
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onEventReceived$44(tLObject, str, str2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onEventReceived$44(TLObject tLObject, final String str, final String str2) {
        if (!(tLObject instanceof TLRPC.TL_boolTrue)) {
            notifyEvent("file_download_requested", obj("status", "cancelled"));
        } else {
            BotDownloads.showAlert(getContext(), str, str2, UserObject.getUserName(this.botUser), new Utilities.Callback() { // from class: org.telegram.ui.web.BotWebViewContainer$$ExternalSyntheticLambda48
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$onEventReceived$43(str, str2, (Boolean) obj);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onEventReceived$43(String str, String str2, Boolean bool) {
        if (!bool.booleanValue()) {
            notifyEvent("file_download_requested", obj("status", "cancelled"));
        } else {
            this.downloads.download(str, str2);
            notifyEvent("file_download_requested", obj("status", "downloading"));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onEventReceived$46() {
        Delegate delegate = this.delegate;
        if (delegate != null) {
            delegate.onCloseToTabs();
        }
        LaunchActivity.dismissAllWeb();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onEventReceived$48(final BotWebViewProxy botWebViewProxy, String str, final ArrayList arrayList) {
        if (TextUtils.isEmpty(str)) {
            notifyEvent("prepared_message_sent", null);
            Delegate delegate = this.delegate;
            if (delegate != null) {
                delegate.onOpenBackFromTabs();
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.web.BotWebViewContainer$$ExternalSyntheticLambda32
                @Override // java.lang.Runnable
                public final void run() {
                    BotWebViewContainer.m20732$r8$lambda$yU6t9dY2ERHgkkmIJow83D94pc(botWebViewProxy, arrayList);
                }
            }, 500L);
            return;
        }
        notifyEvent("prepared_message_failed", obj("error", str));
    }

    /* JADX INFO: renamed from: $r8$lambda$-yU6t9dY2ERHgkkmIJow83D94pc, reason: not valid java name */
    public static /* synthetic */ void m20732$r8$lambda$yU6t9dY2ERHgkkmIJow83D94pc(BotWebViewProxy botWebViewProxy, ArrayList arrayList) {
        BotWebViewContainer botWebViewContainer;
        Delegate delegate;
        if (botWebViewProxy == null || (botWebViewContainer = botWebViewProxy.container) == null || (delegate = botWebViewContainer.delegate) == null) {
            return;
        }
        delegate.onSharedTo(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onEventReceived$49(boolean z, double d, String str, double d2) {
        this.onVerifiedAge.run(Boolean.valueOf(z), Double.valueOf(d), str, Double.valueOf(d2));
    }

    private void setStorageKey(BotStorage botStorage, String str, String str2, String str3) {
        if (botStorage == null || this.botUser == null) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            String string = jSONObject.getString("req_id");
            try {
                String strOptString = jSONObject.optString("key");
                if (strOptString == null) {
                    notifyEvent(str3, obj("req_id", string, "error", "KEY_INVALID"));
                    return;
                }
                try {
                    try {
                        botStorage.setKey(strOptString, jSONObject.optString("value"));
                        notifyEvent(str2, obj("req_id", string));
                    } catch (RuntimeException e) {
                        notifyEvent(str3, obj("req_id", string, "error", e.getMessage()));
                    }
                } catch (Exception unused) {
                    notifyEvent(str3, obj("req_id", string, "error", "VALUE_INVALID"));
                }
            } catch (Exception unused2) {
                notifyEvent(str3, obj("req_id", string, "error", "KEY_INVALID"));
            }
        } catch (Exception e2) {
            FileLog.m1136e(e2);
            if (TextUtils.isEmpty(_UrlKt.FRAGMENT_ENCODE_SET)) {
                return;
            }
            notifyEvent(str3, obj("req_id", _UrlKt.FRAGMENT_ENCODE_SET, "error", "UNKNOWN_ERROR"));
        }
    }

    private void getStorageKey(BotStorage botStorage, String str, String str2, String str3) {
        Object obj;
        if (botStorage == null || this.botUser == null) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            String string = jSONObject.getString("req_id");
            try {
                String strOptString = jSONObject.optString("key");
                if (strOptString == null) {
                    notifyEvent(str3, obj("req_id", string, "error", "KEY_INVALID"));
                    return;
                }
                try {
                    Pair key = botStorage.getKey(strOptString);
                    if (botStorage.secured && (obj = key.first) == null) {
                        notifyEvent(str2, obj("req_id", string, "value", obj, "can_restore", key.second));
                    } else {
                        notifyEvent(str2, obj("req_id", string, "value", key.first));
                    }
                } catch (RuntimeException e) {
                    notifyEvent(str3, obj("req_id", string, "error", e.getMessage()));
                }
            } catch (Exception unused) {
                notifyEvent(str3, obj("req_id", string, "error", "KEY_INVALID"));
            }
        } catch (Exception e2) {
            FileLog.m1136e(e2);
            if (TextUtils.isEmpty(_UrlKt.FRAGMENT_ENCODE_SET)) {
                return;
            }
            notifyEvent(str3, obj("req_id", _UrlKt.FRAGMENT_ENCODE_SET, "error", "UNKNOWN_ERROR"));
        }
    }

    private void restoreStorageKey(final BotStorage botStorage, String str, final String str2, final String str3) {
        if (botStorage == null || this.botUser == null) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            final String string = jSONObject.getString("req_id");
            try {
                final String strOptString = jSONObject.optString("key");
                if (strOptString == null) {
                    notifyEvent(str3, obj("req_id", string, "error", "KEY_INVALID"));
                    return;
                }
                try {
                    List storagesWithKey = botStorage.getStoragesWithKey(strOptString);
                    if (storagesWithKey.isEmpty()) {
                        notifyEvent(str3, obj("req_id", string, "error", "RESTORE_UNAVAILABLE"));
                    } else {
                        botStorage.showChooseStorage(getContext(), storagesWithKey, new Utilities.Callback() { // from class: org.telegram.ui.web.BotWebViewContainer$$ExternalSyntheticLambda42
                            @Override // org.telegram.messenger.Utilities.Callback
                            public final void run(Object obj) {
                                this.f$0.lambda$restoreStorageKey$50(str3, string, botStorage, strOptString, str2, (String) obj);
                            }
                        });
                    }
                } catch (Exception e) {
                    notifyEvent(str3, obj("req_id", string, "error", e.getMessage()));
                }
            } catch (Exception unused) {
                notifyEvent(str3, obj("req_id", string, "error", "KEY_INVALID"));
            }
        } catch (Exception e2) {
            FileLog.m1136e(e2);
            if (TextUtils.isEmpty(_UrlKt.FRAGMENT_ENCODE_SET)) {
                return;
            }
            notifyEvent(str3, obj("req_id", _UrlKt.FRAGMENT_ENCODE_SET, "error", "UNKNOWN_ERROR"));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$restoreStorageKey$50(String str, String str2, BotStorage botStorage, String str3, String str4, String str5) {
        if (str5 == null) {
            notifyEvent(str, obj("req_id", str2, "error", "RESTORE_CANCELLED"));
            return;
        }
        try {
            botStorage.restoreFrom(str5);
            notifyEvent(str4, obj("req_id", str2, "value", (String) botStorage.getKey(str3).first));
        } catch (Exception e) {
            notifyEvent(str, obj("req_id", str2, "error", e.getMessage()));
        }
    }

    private void clearStorageKey(BotStorage botStorage, String str, String str2, String str3) {
        if (botStorage == null || this.botUser == null) {
            return;
        }
        try {
            String string = new JSONObject(str).getString("req_id");
            try {
                botStorage.clear();
                notifyEvent(str2, obj("req_id", string));
            } catch (RuntimeException e) {
                notifyEvent(str3, obj("req_id", string, "error", e.getMessage()));
            }
        } catch (Exception e2) {
            FileLog.m1136e(e2);
            if (TextUtils.isEmpty(_UrlKt.FRAGMENT_ENCODE_SET)) {
                return;
            }
            notifyEvent(str3, obj("req_id", _UrlKt.FRAGMENT_ENCODE_SET, "error", "UNKNOWN_ERROR"));
        }
    }

    public void reportSafeInsets(Rect rect, int i) {
        reportSafeInsets(rect, false);
        reportSafeContentInsets(i, false);
    }

    private void reportSafeInsets(Rect rect, boolean z) {
        if (rect != null) {
            if (z || !this.lastInsets.equals(rect)) {
                notifyEvent("safe_area_changed", obj("left", Float.valueOf(rect.left / AndroidUtilities.density), "top", Float.valueOf(rect.top / AndroidUtilities.density), "right", Float.valueOf(rect.right / AndroidUtilities.density), "bottom", Float.valueOf(rect.bottom / AndroidUtilities.density)));
                this.lastInsets.set(rect);
            }
        }
    }

    private void reportSafeContentInsets(int i, boolean z) {
        if (z || i != this.lastInsetsTopMargin) {
            notifyEvent("content_safe_area_changed", obj("left", 0, "top", Float.valueOf(i / AndroidUtilities.density), "right", 0, "bottom", 0));
            this.lastInsetsTopMargin = i;
        }
    }

    public void notifyEmojiStatusAccess(String str) {
        notifyEvent("emoji_status_access_requested", obj("status", str));
    }

    private void createBiometry() {
        if (this.botUser == null) {
            return;
        }
        BotBiometry botBiometry = this.biometry;
        if (botBiometry == null) {
            this.biometry = BotBiometry.get(getContext(), this.currentAccount, this.botUser.f1825id);
        } else {
            botBiometry.load();
        }
    }

    private void notifyBiometryReceived() {
        if (this.botUser == null) {
            return;
        }
        createBiometry();
        BotBiometry botBiometry = this.biometry;
        if (botBiometry == null) {
            return;
        }
        try {
            notifyEvent("biometry_info_received", botBiometry.getStatus());
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
    }

    private void unknownError() {
        unknownError(null);
    }

    private void unknownError(String str) {
        String str2;
        StringBuilder sb = new StringBuilder();
        sb.append(LocaleController.getString("UnknownError", C2888R.string.UnknownError));
        if (str != null) {
            str2 = ": " + str;
        } else {
            str2 = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        sb.append(str2);
        error(sb.toString());
    }

    private void error(String str) {
        BulletinFactory.m1245of(this, this.resourcesProvider).createSimpleBulletin(C2888R.raw.error, str).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$51() {
        notifyEvent("location_checked", this.location.checkObject());
    }

    private boolean ignoreDialog(int i) {
        if (this.currentDialog != null) {
            return true;
        }
        if (this.blockedDialogsUntil > 0 && System.currentTimeMillis() < this.blockedDialogsUntil) {
            return true;
        }
        if (this.lastDialogType != i || this.shownDialogsCount <= 3) {
            return false;
        }
        this.blockedDialogsUntil = System.currentTimeMillis() + 3000;
        this.shownDialogsCount = 0;
        return true;
    }

    private boolean showDialog(int i, AlertDialog alertDialog, final Runnable runnable) {
        if (alertDialog == null || ignoreDialog(i)) {
            return false;
        }
        alertDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.web.BotWebViewContainer$$ExternalSyntheticLambda35
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                this.f$0.lambda$showDialog$52(runnable, dialogInterface);
            }
        });
        this.currentDialog = alertDialog;
        alertDialog.setDismissDialogByButtons(false);
        this.currentDialog.show();
        if (this.lastDialogType != i) {
            this.lastDialogType = i;
            this.shownDialogsCount = 0;
            this.blockedDialogsUntil = 0L;
        }
        this.shownDialogsCount++;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showDialog$52(Runnable runnable, DialogInterface dialogInterface) {
        if (runnable != null) {
            runnable.run();
        }
        this.currentDialog = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openQrScanActivity() {
        Activity activity = this.parentActivity;
        if (activity == null) {
            return;
        }
        this.cameraBottomSheet = CameraScanActivity.showAsSheet(activity, false, 3, new CameraScanActivity.CameraScanActivityDelegate() { // from class: org.telegram.ui.web.BotWebViewContainer.6
            @Override // org.telegram.ui.CameraScanActivity.CameraScanActivityDelegate
            public /* synthetic */ void didFindMrzInfo(MrzRecognizer.Result result) {
                CameraScanActivity.CameraScanActivityDelegate.CC.$default$didFindMrzInfo(this, result);
            }

            @Override // org.telegram.ui.CameraScanActivity.CameraScanActivityDelegate
            public /* synthetic */ boolean processQr(String str, Runnable runnable) {
                return CameraScanActivity.CameraScanActivityDelegate.CC.$default$processQr(this, str, runnable);
            }

            @Override // org.telegram.ui.CameraScanActivity.CameraScanActivityDelegate
            public void didFindQr(String str) {
                try {
                    BotWebViewContainer.this.lastClickMs = System.currentTimeMillis();
                    BotWebViewContainer.this.notifyEvent("qr_text_received", new JSONObject().put("data", str));
                } catch (JSONException e) {
                    FileLog.m1136e(e);
                }
            }

            @Override // org.telegram.ui.CameraScanActivity.CameraScanActivityDelegate
            public String getSubtitleText() {
                return BotWebViewContainer.this.lastQrText;
            }

            @Override // org.telegram.ui.CameraScanActivity.CameraScanActivityDelegate
            public void onDismiss() {
                BotWebViewContainer.this.notifyEvent("scan_qr_popup_closed", null);
                BotWebViewContainer.this.hasQRPending = false;
            }
        });
    }

    private JSONObject buildThemeParams() {
        try {
            JSONObject jSONObjectMakeThemeParams = BotWebViewSheet.makeThemeParams(this.resourcesProvider, true);
            if (jSONObjectMakeThemeParams != null) {
                return new JSONObject().put("theme_params", jSONObjectMakeThemeParams);
            }
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
        return new JSONObject();
    }

    private int getColor(int i) {
        Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
        if (resourcesProvider != null) {
            return resourcesProvider.getColor(i);
        }
        return Theme.getColor(i);
    }

    /* JADX INFO: loaded from: classes7.dex */
    public static class BotWebViewProxy {
        public BotWebViewContainer container;

        public BotWebViewProxy(BotWebViewContainer botWebViewContainer) {
            this.container = botWebViewContainer;
        }

        public void setContainer(BotWebViewContainer botWebViewContainer) {
            this.container = botWebViewContainer;
        }

        @JavascriptInterface
        @Keep
        public void postEvent(final String str, final String str2) {
            try {
                if (this.container == null) {
                    FileLog.m1133d("webviewproxy.postEvent: no container");
                } else {
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.web.BotWebViewContainer$BotWebViewProxy$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$postEvent$0(str, str2);
                        }
                    });
                }
            } catch (Exception e) {
                FileLog.m1136e(e);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$postEvent$0(String str, String str2) {
            try {
                BotWebViewContainer botWebViewContainer = this.container;
                if (botWebViewContainer == null) {
                    return;
                }
                botWebViewContainer.onEventReceived(this, str, str2);
            } catch (Exception e) {
                FileLog.m1136e(e);
            }
        }
    }

    /* JADX INFO: loaded from: classes7.dex */
    public static class WebViewProxy {
        public BotWebViewContainer container;
        public final MyWebView webView;

        public WebViewProxy(MyWebView myWebView, BotWebViewContainer botWebViewContainer) {
            this.webView = myWebView;
            this.container = botWebViewContainer;
        }

        public void setContainer(BotWebViewContainer botWebViewContainer) {
            this.container = botWebViewContainer;
        }

        @JavascriptInterface
        @Keep
        public void postEvent(final String str, final String str2) {
            if (this.container == null) {
                return;
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.web.BotWebViewContainer$WebViewProxy$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$postEvent$0(str, str2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$postEvent$0(String str, String str2) {
            BotWebViewContainer botWebViewContainer = this.container;
            if (botWebViewContainer == null) {
                return;
            }
            botWebViewContainer.onWebEventReceived(str, str2);
        }

        @JavascriptInterface
        @Keep
        public void resolveShare(final String str, final byte[] bArr, final String str2, final String str3) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.web.BotWebViewContainer$WebViewProxy$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$resolveShare$2(str, bArr, str2, str3);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$resolveShare$2(String str, byte[] bArr, String str2, String str3) {
            String strOptString;
            String strOptString2;
            String strOptString3;
            String str4;
            JSONObject jSONObject;
            LaunchActivity launchActivity;
            if (this.container == null) {
                return;
            }
            if (System.currentTimeMillis() - this.container.lastClickMs > 10000) {
                this.webView.evaluateJS("window.navigator.__share__receive(\"security\")");
                return;
            }
            this.container.lastClickMs = 0L;
            Context context = this.webView.getContext();
            Activity activityFindActivity = AndroidUtilities.findActivity(context);
            if (activityFindActivity == null && (launchActivity = LaunchActivity.instance) != null) {
                activityFindActivity = launchActivity;
            }
            if (context == null || activityFindActivity == null || !(activityFindActivity instanceof LaunchActivity) || activityFindActivity.isFinishing() || !this.webView.isAttachedToWindow()) {
                this.webView.evaluateJS("window.navigator.__share__receive(\"security\")");
                return;
            }
            LaunchActivity launchActivity2 = (LaunchActivity) activityFindActivity;
            File file = null;
            try {
                jSONObject = new JSONObject(str);
                strOptString = jSONObject.optString("url", null);
                try {
                    strOptString2 = jSONObject.optString("text", null);
                } catch (Exception e) {
                    e = e;
                    strOptString2 = null;
                }
            } catch (Exception e2) {
                e = e2;
                strOptString = null;
                strOptString2 = null;
            }
            try {
                strOptString3 = jSONObject.optString("title", null);
            } catch (Exception e3) {
                e = e3;
                FileLog.m1136e(e);
                strOptString3 = null;
            }
            StringBuilder sb = new StringBuilder();
            if (strOptString3 != null) {
                sb.append(strOptString3);
            }
            if (strOptString2 != null) {
                if (sb.length() > 0) {
                    sb.append("\n");
                }
                sb.append(strOptString2);
            }
            if (strOptString != null) {
                if (sb.length() > 0) {
                    sb.append("\n");
                }
                sb.append(strOptString);
            }
            Intent intent = new Intent("android.intent.action.SEND");
            intent.putExtra("android.intent.extra.TEXT", sb.toString());
            if (bArr != null) {
                int i = 0;
                while (true) {
                    if (file == null || file.exists()) {
                        File directory = FileLoader.getDirectory(4);
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(FileLoader.fixFileName(str2 == null ? "file" : str2));
                        if (i > 0) {
                            str4 = " (" + i + ")";
                        } else {
                            str4 = _UrlKt.FRAGMENT_ENCODE_SET;
                        }
                        sb2.append(str4);
                        file = new File(directory, sb2.toString());
                        i++;
                    } else {
                        try {
                            break;
                        } catch (Exception e4) {
                            FileLog.m1136e(e4);
                        }
                    }
                }
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                fileOutputStream.write(bArr);
                fileOutputStream.close();
                try {
                    if (str3 == null) {
                        intent.setType("text/plain");
                    } else {
                        intent.setType(str3);
                    }
                    if (str2 != null) {
                        intent.putExtra("android.intent.extra.TITLE", str2);
                    }
                    if (Build.VERSION.SDK_INT >= 24) {
                        try {
                            intent.putExtra("android.intent.extra.STREAM", FileProvider.getUriForFile(launchActivity2, ApplicationLoader.getApplicationId() + ".provider", file));
                            intent.setFlags(1);
                        } catch (Exception unused) {
                            intent.putExtra("android.intent.extra.STREAM", Uri.fromFile(file));
                        }
                    } else {
                        intent.putExtra("android.intent.extra.STREAM", Uri.fromFile(file));
                    }
                } catch (Exception e5) {
                    FileLog.m1136e(e5);
                }
            } else {
                intent.setType("text/plain");
            }
            launchActivity2.whenWebviewShareAPIDone(new Utilities.Callback() { // from class: org.telegram.ui.web.BotWebViewContainer$WebViewProxy$$ExternalSyntheticLambda2
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$resolveShare$1((Boolean) obj);
                }
            });
            launchActivity2.startActivityForResult(Intent.createChooser(intent, LocaleController.getString(C2888R.string.ShareFile)), 521);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$resolveShare$1(Boolean bool) {
            MyWebView myWebView = this.webView;
            StringBuilder sb = new StringBuilder();
            sb.append("window.navigator.__share__receive(");
            sb.append(bool.booleanValue() ? _UrlKt.FRAGMENT_ENCODE_SET : "'abort'");
            sb.append(")");
            myWebView.evaluateJS(sb.toString());
        }
    }

    /* JADX INFO: loaded from: classes7.dex */
    public interface Delegate {
        BotSensors getBotSensors();

        boolean isClipboardAvailable();

        void onCloseRequested(Runnable runnable);

        void onCloseToTabs();

        void onEmojiStatusGranted(boolean z);

        void onEmojiStatusSet(TLRPC.Document document);

        String onFullscreenRequested(boolean z, boolean z2);

        void onInstantClose();

        void onLocationGranted(boolean z);

        void onOpenBackFromTabs();

        void onOrientationLockChanged(boolean z);

        void onSendWebViewData(String str);

        void onSetBackButtonVisible(boolean z);

        void onSetSettingsButtonVisible(boolean z);

        void onSetupMainButton(boolean z, boolean z2, String str, long j, int i, int i2, boolean z3, boolean z4);

        void onSetupSecondaryButton(boolean z, boolean z2, String str, long j, int i, int i2, boolean z3, boolean z4, String str2);

        void onSharedTo(ArrayList arrayList);

        void onWebAppBackgroundChanged(boolean z, int i);

        void onWebAppExpand();

        void onWebAppOpenInvoice(TLRPC.InputInvoice inputInvoice, String str, TLObject tLObject);

        void onWebAppReady();

        void onWebAppSetActionBarColor(int i, int i2, boolean z);

        void onWebAppSetBackgroundColor(int i);

        void onWebAppSetNavigationBarColor(int i);

        void onWebAppSetupClosingBehavior(boolean z);

        void onWebAppSwipingBehavior(boolean z);

        void onWebAppSwitchInlineQuery(TLRPC.User user, String str, List list);

        /* JADX INFO: renamed from: org.telegram.ui.web.BotWebViewContainer$Delegate$-CC, reason: invalid class name */
        public abstract /* synthetic */ class CC {
            public static void $default$onOpenBackFromTabs(Delegate delegate) {
            }

            public static void $default$onSharedTo(Delegate delegate, ArrayList arrayList) {
            }

            public static void $default$onOrientationLockChanged(Delegate delegate, boolean z) {
            }

            public static void $default$onSendWebViewData(Delegate delegate, String str) {
            }

            public static void $default$onWebAppSetNavigationBarColor(Delegate delegate, int i) {
            }

            public static void $default$onWebAppBackgroundChanged(Delegate delegate, boolean z, int i) {
            }

            public static void $default$onLocationGranted(Delegate delegate, boolean z) {
            }

            public static void $default$onEmojiStatusGranted(Delegate delegate, boolean z) {
            }

            public static void $default$onEmojiStatusSet(Delegate delegate, TLRPC.Document document) {
            }

            public static void $default$onWebAppReady(Delegate delegate) {
            }

            public static boolean $default$isClipboardAvailable(Delegate delegate) {
                return false;
            }

            public static String $default$onFullscreenRequested(Delegate delegate, boolean z, boolean z2) {
                return "UNSUPPORTED";
            }

            public static BotSensors $default$getBotSensors(Delegate delegate) {
                return null;
            }
        }
    }

    /* JADX INFO: loaded from: classes7.dex */
    public static final class PopupButton {

        /* JADX INFO: renamed from: id */
        public String f2254id;
        public String text;
        public int textColorKey;

        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        public PopupButton(JSONObject jSONObject) throws JSONException {
            this.textColorKey = -1;
            this.f2254id = jSONObject.getString("id");
            String string = jSONObject.getString("type");
            switch (string.hashCode()) {
                case -1829997182:
                    if (string.equals("destructive")) {
                        this.textColorKey = Theme.key_text_RedBold;
                    }
                    break;
                case -1367724422:
                    if (string.equals("cancel")) {
                        this.text = LocaleController.getString(C2888R.string.Cancel);
                        return;
                    }
                    break;
                case 3548:
                    if (string.equals("ok")) {
                        this.text = LocaleController.getString(C2888R.string.f1606OK);
                        return;
                    }
                    break;
                case 94756344:
                    if (string.equals("close")) {
                        this.text = LocaleController.getString(C2888R.string.Close);
                        return;
                    }
                    break;
                case 1544803905:
                    string.equals("default");
                    break;
            }
            this.text = jSONObject.getString("text");
        }
    }

    public static boolean isTonsite(String str) {
        return str != null && isTonsite(Uri.parse(str));
    }

    public static boolean isTonsite(Uri uri) {
        if ("tonsite".equals(uri.getScheme())) {
            return true;
        }
        String authority = uri.getAuthority();
        if (authority == null && uri.getScheme() == null) {
            authority = Uri.parse("http://" + uri.toString()).getAuthority();
        }
        if (authority != null) {
            return authority.endsWith(".ton") || authority.endsWith(".adnl");
        }
        return false;
    }

    public static WebResourceResponse proxyTON(WebResourceRequest webResourceRequest) {
        return proxyTON(webResourceRequest.getMethod(), webResourceRequest.getUrl().toString(), webResourceRequest.getRequestHeaders());
    }

    public static String rotateTONHost(String str) {
        try {
            str = IDN.toASCII(str, 1);
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
        String[] strArrSplit = str.split("\\.");
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < strArrSplit.length; i++) {
            if (i > 0) {
                sb.append("-d");
            }
            sb.append(strArrSplit[i].replaceAll("\\-", "-h"));
        }
        sb.append(".");
        sb.append(MessagesController.getInstance(UserConfig.selectedAccount).tonProxyAddress);
        return sb.toString();
    }

    public static WebResourceResponse proxyTON(String str, String str2, Map map) {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(Browser.replaceHostname(Uri.parse(str2), rotateTONHost(AndroidUtilities.getHostAuthority(str2)), "https")).openConnection();
            httpURLConnection.setRequestMethod(str);
            if (map != null) {
                for (Map.Entry entry : map.entrySet()) {
                    httpURLConnection.addRequestProperty((String) entry.getKey(), (String) entry.getValue());
                }
            }
            httpURLConnection.connect();
            return new WebResourceResponse(httpURLConnection.getContentType().split(";", 2)[0], httpURLConnection.getContentEncoding(), httpURLConnection.getInputStream());
        } catch (Exception e) {
            FileLog.m1136e(e);
            return null;
        }
    }

    /* JADX INFO: loaded from: classes7.dex */
    public static class MyWebView extends WebView {
        public boolean allowBlockedPageLoad;
        public final boolean bot;
        private BotWebViewContainer botWebViewContainer;
        private BrowserHistory.Entry currentHistoryEntry;
        private boolean currentPageWasBlocked;
        private BottomSheet currentSheet;
        private String currentUrl;
        public boolean dangerousUrl;
        public boolean errorShown;
        public String errorShownAt;
        public boolean injectedJS;
        private boolean isPageLoaded;
        public int lastActionBarColor;
        public boolean lastActionBarColorGot;
        public int lastBackgroundColor;
        public boolean lastBackgroundColorGot;
        public Bitmap lastFavicon;
        public boolean lastFaviconGot;
        private String lastFaviconUrl;
        private HashMap lastFavicons;
        public String lastSiteName;
        public String lastTitle;
        public boolean lastTitleGot;
        private String lastUrl;
        private Runnable onCloseListener;
        private String openedByUrl;
        public MyWebView opener;
        private int prevScrollX;
        private int prevScrollY;
        private int searchCount;
        private int searchIndex;
        private Runnable searchListener;
        private boolean searchLoading;
        private SelectorsObserver selectorsObserver;
        private final int tag;
        public String urlFallback;
        private WebViewScrollListener webViewScrollListener;
        private Runnable whenPageLoaded;

        /* JADX INFO: renamed from: $r8$lambda$n4G84VuBJd3zHi0noWbm8zvFC-g, reason: not valid java name */
        public static /* synthetic */ void m20775$r8$lambda$n4G84VuBJd3zHi0noWbm8zvFCg(String str) {
        }

        public boolean isPageLoaded() {
            return this.isPageLoaded;
        }

        /* JADX INFO: renamed from: d */
        public void m1350d(String str) {
            FileLog.m1133d("[webview] #" + this.tag + " " + str);
        }

        public MyWebView(Context context, boolean z, long j) {
            super(context);
            this.currentPageWasBlocked = false;
            this.allowBlockedPageLoad = false;
            int i = BotWebViewContainer.tags;
            BotWebViewContainer.tags = i + 1;
            this.tag = i;
            this.urlFallback = "about:blank";
            this.lastFavicons = new HashMap();
            this.bot = z;
            m1350d("created new webview " + this);
            if (!z) {
                SelectorsObserver selectorsObserver = new SelectorsObserver(this);
                this.selectorsObserver = selectorsObserver;
                addJavascriptInterface(selectorsObserver, "Android");
            }
            setOnLongClickListener(new ViewOnLongClickListenerC74861());
            setWebViewClient(new C74872(z, context));
            setWebChromeClient(new C74883(context, z, j));
            setFindListener(new WebView.FindListener() { // from class: org.telegram.ui.web.BotWebViewContainer.MyWebView.4
                @Override // android.webkit.WebView.FindListener
                public void onFindResultReceived(int i2, int i3, boolean z2) {
                    MyWebView.this.searchIndex = i2;
                    MyWebView.this.searchCount = i3;
                    MyWebView.this.searchLoading = !z2;
                    if (MyWebView.this.searchListener != null) {
                        MyWebView.this.searchListener.run();
                    }
                }
            });
            if (z) {
                return;
            }
            setDownloadListener(new C74905());
        }

        /* JADX INFO: renamed from: org.telegram.ui.web.BotWebViewContainer$MyWebView$1 */
        class ViewOnLongClickListenerC74861 implements View.OnLongClickListener {
            ViewOnLongClickListenerC74861() {
            }

            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                WebView.HitTestResult hitTestResult = MyWebView.this.getHitTestResult();
                if (hitTestResult.getType() == 7) {
                    final String extra = hitTestResult.getExtra();
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.web.BotWebViewContainer$MyWebView$1$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$onLongClick$1(extra);
                        }
                    });
                    return true;
                }
                if (hitTestResult.getType() != 5) {
                    return false;
                }
                final String extra2 = hitTestResult.getExtra();
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.web.BotWebViewContainer$MyWebView$1$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onLongClick$3(extra2);
                    }
                });
                return true;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$onLongClick$1(final String str) {
                String strReplaceHostname;
                Uri uri;
                BottomSheet.Builder builder = new BottomSheet.Builder(MyWebView.this.getContext(), false, null);
                try {
                    uri = Uri.parse(str);
                } catch (Exception e) {
                    try {
                        FileLog.m1136e(e);
                    } catch (Exception e2) {
                        e = e2;
                        strReplaceHostname = str;
                        FileLog.m1136e(e);
                        builder.setTitleMultipleLines(true);
                        builder.setTitle(strReplaceHostname);
                        builder.setItems(new CharSequence[]{LocaleController.getString(C2888R.string.OpenInTelegramBrowser), LocaleController.getString(C2888R.string.OpenInSystemBrowser), LocaleController.getString(C2888R.string.Copy)}, new DialogInterface.OnClickListener() { // from class: org.telegram.ui.web.BotWebViewContainer$MyWebView$1$$ExternalSyntheticLambda3
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i) {
                                this.f$0.lambda$onLongClick$0(str, dialogInterface, i);
                            }
                        });
                        MyWebView.this.currentSheet = builder.show();
                    }
                }
                strReplaceHostname = (uri == null || uri.getScheme().equalsIgnoreCase("data")) ? str : Browser.replaceHostname(uri, Browser.IDN_toUnicode(uri.getHost()), null);
                try {
                    strReplaceHostname = URLDecoder.decode(strReplaceHostname.replaceAll("\\+", "%2b"), "UTF-8");
                } catch (Exception e3) {
                    e = e3;
                    FileLog.m1136e(e);
                }
                builder.setTitleMultipleLines(true);
                builder.setTitle(strReplaceHostname);
                builder.setItems(new CharSequence[]{LocaleController.getString(C2888R.string.OpenInTelegramBrowser), LocaleController.getString(C2888R.string.OpenInSystemBrowser), LocaleController.getString(C2888R.string.Copy)}, new DialogInterface.OnClickListener() { // from class: org.telegram.ui.web.BotWebViewContainer$MyWebView$1$$ExternalSyntheticLambda3
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        this.f$0.lambda$onLongClick$0(str, dialogInterface, i);
                    }
                });
                MyWebView.this.currentSheet = builder.show();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$onLongClick$0(String str, DialogInterface dialogInterface, int i) {
                if (i == 0) {
                    MyWebView.this.loadUrl(str);
                    return;
                }
                if (i != 1) {
                    if (i == 2) {
                        AndroidUtilities.addToClipboard(str);
                        if (MyWebView.this.botWebViewContainer != null) {
                            MyWebView.this.botWebViewContainer.showLinkCopiedBulletin();
                            return;
                        }
                        return;
                    }
                    return;
                }
                try {
                    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
                    intent.putExtra("create_new_tab", true);
                    intent.putExtra("com.android.browser.application_id", MyWebView.this.getContext().getPackageName());
                    MyWebView.this.getContext().startActivity(intent);
                } catch (Exception e) {
                    FileLog.m1136e(e);
                    MyWebView.this.loadUrl(str);
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$onLongClick$3(final String str) {
                String strDecode;
                BottomSheet.Builder builder = new BottomSheet.Builder(MyWebView.this.getContext(), false, null);
                try {
                    Uri uri = Uri.parse(str);
                    strDecode = Browser.replaceHostname(uri, Browser.IDN_toUnicode(uri.getHost()), null);
                } catch (Exception e) {
                    try {
                        FileLog.m1136e(e);
                        strDecode = str;
                    } catch (Exception e2) {
                        e = e2;
                        strDecode = str;
                        FileLog.m1136e(e);
                        builder.setTitleMultipleLines(true);
                        builder.setTitle(strDecode);
                        builder.setItems(new CharSequence[]{LocaleController.getString(C2888R.string.OpenInSystemBrowser), LocaleController.getString(C2888R.string.AccActionDownload), LocaleController.getString(C2888R.string.CopyLink)}, new DialogInterface.OnClickListener() { // from class: org.telegram.ui.web.BotWebViewContainer$MyWebView$1$$ExternalSyntheticLambda2
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i) {
                                this.f$0.lambda$onLongClick$2(str, dialogInterface, i);
                            }
                        });
                        MyWebView.this.currentSheet = builder.show();
                    }
                }
                try {
                    strDecode = URLDecoder.decode(strDecode.replaceAll("\\+", "%2b"), "UTF-8");
                } catch (Exception e3) {
                    e = e3;
                    FileLog.m1136e(e);
                }
                builder.setTitleMultipleLines(true);
                builder.setTitle(strDecode);
                builder.setItems(new CharSequence[]{LocaleController.getString(C2888R.string.OpenInSystemBrowser), LocaleController.getString(C2888R.string.AccActionDownload), LocaleController.getString(C2888R.string.CopyLink)}, new DialogInterface.OnClickListener() { // from class: org.telegram.ui.web.BotWebViewContainer$MyWebView$1$$ExternalSyntheticLambda2
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        this.f$0.lambda$onLongClick$2(str, dialogInterface, i);
                    }
                });
                MyWebView.this.currentSheet = builder.show();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$onLongClick$2(String str, DialogInterface dialogInterface, int i) {
                if (i == 0) {
                    try {
                        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
                        intent.putExtra("create_new_tab", true);
                        intent.putExtra("com.android.browser.application_id", MyWebView.this.getContext().getPackageName());
                        MyWebView.this.getContext().startActivity(intent);
                        return;
                    } catch (Exception e) {
                        FileLog.m1136e(e);
                        MyWebView.this.loadUrl(str);
                        return;
                    }
                }
                if (i != 1) {
                    if (i == 2) {
                        AndroidUtilities.addToClipboard(str);
                        if (MyWebView.this.botWebViewContainer != null) {
                            MyWebView.this.botWebViewContainer.showLinkCopiedBulletin();
                            return;
                        }
                        return;
                    }
                    return;
                }
                try {
                    String strGuessFileName = URLUtil.guessFileName(str, null, "image/*");
                    if (strGuessFileName == null) {
                        strGuessFileName = "image.png";
                    }
                    DownloadManager.Request request = new DownloadManager.Request(Uri.parse(str));
                    request.setMimeType("image/*");
                    request.setDescription(LocaleController.getString(C2888R.string.WebDownloading));
                    request.setNotificationVisibility(1);
                    request.setDestinationInExternalPublicDir(Environment.DIRECTORY_DOWNLOADS, strGuessFileName);
                    DownloadManager downloadManager = (DownloadManager) MyWebView.this.getContext().getSystemService("download");
                    if (downloadManager != null) {
                        downloadManager.enqueue(request);
                    }
                    if (MyWebView.this.botWebViewContainer != null) {
                        BulletinFactory.m1245of(MyWebView.this.botWebViewContainer, MyWebView.this.botWebViewContainer.resourcesProvider).createSimpleBulletin(C2888R.raw.ic_download, AndroidUtilities.replaceTags(LocaleController.formatString(C2888R.string.WebDownloadingFile, strGuessFileName))).show(true);
                    }
                } catch (Exception e2) {
                    FileLog.m1136e(e2);
                }
            }
        }

        /* JADX INFO: renamed from: org.telegram.ui.web.BotWebViewContainer$MyWebView$2 */
        class C74872 extends WebViewClient {
            private boolean firstRequest = true;
            private final Runnable resetErrorRunnable = new Runnable() { // from class: org.telegram.ui.web.BotWebViewContainer$MyWebView$2$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$$4();
                }
            };
            final /* synthetic */ boolean val$bot;
            final /* synthetic */ Context val$context;

            C74872(boolean z, Context context) {
                this.val$bot = z;
                this.val$context = context;
            }

            /* JADX WARN: Removed duplicated region for block: B:73:0x01c4  */
            /* JADX WARN: Removed duplicated region for block: B:80:0x01e8  */
            @Override // android.webkit.WebViewClient
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
                HttpURLConnection httpURLConnection;
                MyWebView myWebView = MyWebView.this;
                StringBuilder sb = new StringBuilder();
                sb.append("shouldInterceptRequest ");
                HttpURLConnection httpURLConnection2 = null;
                sb.append(webResourceRequest == null ? null : webResourceRequest.getUrl());
                myWebView.m1350d(sb.toString());
                if (webResourceRequest != null && BotWebViewContainer.isTonsite(webResourceRequest.getUrl())) {
                    MyWebView.this.m1350d("proxying ton");
                    this.firstRequest = false;
                    return BotWebViewContainer.proxyTON(webResourceRequest);
                }
                if (!this.val$bot && MyWebView.this.opener != null && this.firstRequest) {
                    try {
                        httpURLConnection = (HttpURLConnection) new URL(webResourceRequest.getUrl().toString()).openConnection();
                    } catch (Exception e) {
                        e = e;
                    }
                    try {
                        httpURLConnection.setRequestMethod(webResourceRequest.getMethod());
                        if (webResourceRequest.getRequestHeaders() != null) {
                            for (Map.Entry<String, String> entry : webResourceRequest.getRequestHeaders().entrySet()) {
                                httpURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
                            }
                        }
                        httpURLConnection.connect();
                        HashMap map = new HashMap();
                        for (Map.Entry<String, List<String>> entry2 : httpURLConnection.getHeaderFields().entrySet()) {
                            String key = entry2.getKey();
                            if (key != null) {
                                map.put(key, TextUtils.join(", ", entry2.getValue()));
                                if (!MyWebView.this.dangerousUrl && ("cross-origin-resource-policy".equals(key.toLowerCase()) || "cross-origin-embedder-policy".equals(key.toLowerCase()))) {
                                    Iterator<String> it = entry2.getValue().iterator();
                                    while (true) {
                                        if (!it.hasNext()) {
                                            break;
                                        }
                                        String next = it.next();
                                        if (next != null && !"unsafe-none".equals(next.toLowerCase()) && !"same-site".equals(next.toLowerCase())) {
                                            MyWebView.this.m1350d("<!> dangerous header CORS policy: " + key + ": " + next + " from " + webResourceRequest.getMethod() + " " + webResourceRequest.getUrl());
                                            MyWebView.this.dangerousUrl = true;
                                            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.web.BotWebViewContainer$MyWebView$2$$ExternalSyntheticLambda1
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    this.f$0.lambda$shouldInterceptRequest$0();
                                                }
                                            });
                                            break;
                                        }
                                    }
                                }
                            }
                        }
                        String contentType = httpURLConnection.getContentType();
                        String contentEncoding = httpURLConnection.getContentEncoding();
                        if (contentType.indexOf("; ") >= 0) {
                            String[] strArrSplit = contentType.split("; ");
                            if (!TextUtils.isEmpty(strArrSplit[0])) {
                                contentType = strArrSplit[0];
                            }
                            for (int i = 1; i < strArrSplit.length; i++) {
                                if (strArrSplit[i].startsWith("charset=")) {
                                    contentEncoding = strArrSplit[i].substring(8);
                                }
                            }
                        }
                        this.firstRequest = false;
                        return new WebResourceResponse(contentType, contentEncoding, httpURLConnection.getResponseCode(), httpURLConnection.getResponseMessage(), map, httpURLConnection.getInputStream());
                    } catch (Exception e2) {
                        e = e2;
                        httpURLConnection2 = httpURLConnection;
                        FileLog.m1136e(e);
                        if (httpURLConnection2 != null) {
                            httpURLConnection2.disconnect();
                        }
                        this.firstRequest = false;
                        if (!this.val$bot) {
                            if (!webResourceRequest.isForMainFrame()) {
                            }
                        }
                        return super.shouldInterceptRequest(webView, webResourceRequest);
                    }
                }
                this.firstRequest = false;
                if (!this.val$bot && webResourceRequest != null) {
                    if (!webResourceRequest.isForMainFrame()) {
                        if (checkShouldInterceptMainFrame(webResourceRequest)) {
                            MyWebView myWebView2 = MyWebView.this;
                            if (!myWebView2.allowBlockedPageLoad) {
                                myWebView2.currentPageWasBlocked = true;
                                return new WebResourceResponse("plain/text", "utf-8", 590, "Page blocked", null, null);
                            }
                        }
                        MyWebView.this.allowBlockedPageLoad = false;
                    } else {
                        WebResourceResponse webResourceResponseCheckShouldIntercept = checkShouldIntercept(webResourceRequest);
                        if (webResourceResponseCheckShouldIntercept != null) {
                            return webResourceResponseCheckShouldIntercept;
                        }
                    }
                }
                return super.shouldInterceptRequest(webView, webResourceRequest);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$shouldInterceptRequest$0() {
                if (MyWebView.this.botWebViewContainer != null) {
                    MyWebView.this.botWebViewContainer.onURLChanged(MyWebView.this.urlFallback, !r1.canGoBack(), !MyWebView.this.canGoForward());
                }
            }

            private boolean checkShouldInterceptMainFrame(WebResourceRequest webResourceRequest) {
                final BlockResult blockResultIsAdRequest = AdBlockClient.isAdRequest(webResourceRequest, webResourceRequest.getUrl().toString());
                if (blockResultIsAdRequest == null) {
                    return false;
                }
                if (!blockResultIsAdRequest.isMatched() || TextUtils.isEmpty(blockResultIsAdRequest.getRedirect()) || blockResultIsAdRequest.getRedirect().startsWith("data:")) {
                    return blockResultIsAdRequest.isMatched();
                }
                MyWebView.this.post(new Runnable() { // from class: org.telegram.ui.web.BotWebViewContainer$MyWebView$2$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$checkShouldInterceptMainFrame$1(blockResultIsAdRequest);
                    }
                });
                return true;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$checkShouldInterceptMainFrame$1(BlockResult blockResult) {
                MyWebView.this.loadUrl(blockResult.getRedirect());
            }

            private WebResourceResponse checkShouldIntercept(WebResourceRequest webResourceRequest) {
                BlockResult blockResultIsAdRequest = AdBlockClient.isAdRequest(webResourceRequest, !TextUtils.isEmpty(MyWebView.this.currentUrl) ? MyWebView.this.currentUrl : webResourceRequest.getUrl().toString());
                if (blockResultIsAdRequest == null) {
                    return null;
                }
                if (blockResultIsAdRequest.isMatched() && TextUtils.isEmpty(blockResultIsAdRequest.getRedirect())) {
                    return new WebResourceResponse("text/html", "utf-8", 500, "Internal Server Error", null, null);
                }
                if (!blockResultIsAdRequest.isMatched()) {
                    return null;
                }
                String redirect = blockResultIsAdRequest.getRedirect();
                if (!redirect.startsWith("data:")) {
                    return null;
                }
                String strSubstring = redirect.substring(redirect.indexOf(":") + 1, redirect.indexOf(";"));
                String strSubstring2 = redirect.substring(redirect.indexOf(",") + 1);
                HashMap map = new HashMap();
                map.put("Content-Type", strSubstring);
                map.put("Access-Control-Allow-Credentials", "true");
                map.put("Access-Control-Allow-Headers", "Cache-Control");
                map.put("Access-Control-Allow-Origin", "*");
                return new WebResourceResponse(strSubstring, null, 200, "OK", map, new ByteArrayInputStream(Base64.decode(strSubstring2, 0)));
            }

            @Override // android.webkit.WebViewClient
            public void onPageCommitVisible(WebView webView, String str) {
                if (MyWebView.this.whenPageLoaded != null) {
                    Runnable runnable = MyWebView.this.whenPageLoaded;
                    MyWebView.this.whenPageLoaded = null;
                    runnable.run();
                }
                MyWebView.this.m1350d("onPageCommitVisible " + str);
                if (!this.val$bot) {
                    MyWebView myWebView = MyWebView.this;
                    myWebView.injectedJS = true;
                    myWebView.evaluateJS(AndroidUtilities.readRes(C2888R.raw.webview_ext).replace("$DEBUG$", "false"));
                    MyWebView.this.evaluateJS(AndroidUtilities.readRes(C2888R.raw.webview_share));
                } else {
                    MyWebView myWebView2 = MyWebView.this;
                    myWebView2.injectedJS = true;
                    myWebView2.evaluateJS(AndroidUtilities.readRes(C2888R.raw.webview_app_ext).replace("$DEBUG$", "false"));
                }
                super.onPageCommitVisible(webView, str);
            }

            @Override // android.webkit.WebViewClient
            public void doUpdateVisitedHistory(WebView webView, String str, boolean z) {
                if (!this.val$bot && (MyWebView.this.currentHistoryEntry == null || !TextUtils.equals(MyWebView.this.currentHistoryEntry.url, str))) {
                    MyWebView.this.currentHistoryEntry = new BrowserHistory.Entry();
                    MyWebView.this.currentHistoryEntry.f2255id = Utilities.fastRandom.nextLong();
                    MyWebView.this.currentHistoryEntry.time = System.currentTimeMillis();
                    MyWebView.this.currentHistoryEntry.url = BotWebViewContainer.magic2tonsite(MyWebView.this.getUrl());
                    MyWebView.this.currentHistoryEntry.meta = WebMetadataCache.WebMetadata.from(MyWebView.this);
                    BrowserHistory.pushHistory(MyWebView.this.currentHistoryEntry);
                }
                MyWebView.this.m1350d("doUpdateVisitedHistory " + str + " " + z);
                if (MyWebView.this.botWebViewContainer != null) {
                    BotWebViewContainer botWebViewContainer = MyWebView.this.botWebViewContainer;
                    MyWebView myWebView = MyWebView.this;
                    botWebViewContainer.onURLChanged(myWebView.dangerousUrl ? myWebView.urlFallback : str, !myWebView.canGoBack(), !MyWebView.this.canGoForward());
                }
                super.doUpdateVisitedHistory(webView, str, z);
            }

            @Override // android.webkit.WebViewClient
            public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
                MyWebView.this.m1350d("shouldInterceptRequest " + str);
                if (BotWebViewContainer.isTonsite(str)) {
                    MyWebView.this.m1350d("proxying ton");
                    return BotWebViewContainer.proxyTON("GET", str, null);
                }
                return super.shouldInterceptRequest(webView, str);
            }

            @Override // android.webkit.WebViewClient
            public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
                if (Build.VERSION.SDK_INT >= 26) {
                    MyWebView myWebView = MyWebView.this;
                    StringBuilder sb = new StringBuilder();
                    sb.append("onRenderProcessGone priority=");
                    sb.append(renderProcessGoneDetail == null ? null : Integer.valueOf(renderProcessGoneDetail.rendererPriorityAtExit()));
                    sb.append(" didCrash=");
                    sb.append(renderProcessGoneDetail == null ? null : Boolean.valueOf(renderProcessGoneDetail.didCrash()));
                    myWebView.m1350d(sb.toString());
                } else {
                    MyWebView.this.m1350d("onRenderProcessGone");
                }
                try {
                    if (!AndroidUtilities.isSafeToShow(MyWebView.this.getContext())) {
                        return true;
                    }
                    new AlertDialog.Builder(MyWebView.this.getContext(), MyWebView.this.botWebViewContainer == null ? null : MyWebView.this.botWebViewContainer.resourcesProvider).setTitle(LocaleController.getString(C2888R.string.ChromeCrashTitle)).setMessage(AndroidUtilities.replaceSingleTag(LocaleController.getString(C2888R.string.ChromeCrashMessage), new Runnable() { // from class: org.telegram.ui.web.BotWebViewContainer$MyWebView$2$$ExternalSyntheticLambda2
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$onRenderProcessGone$2();
                        }
                    })).setPositiveButton(LocaleController.getString(C2888R.string.f1606OK), null).setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.web.BotWebViewContainer$MyWebView$2$$ExternalSyntheticLambda3
                        @Override // android.content.DialogInterface.OnDismissListener
                        public final void onDismiss(DialogInterface dialogInterface) {
                            this.f$0.lambda$onRenderProcessGone$3(dialogInterface);
                        }
                    }).show();
                    return true;
                } catch (Exception e) {
                    FileLog.m1136e(e);
                    return false;
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$onRenderProcessGone$2() {
                Browser.openUrl(MyWebView.this.getContext(), "https://play.google.com/store/apps/details?id=com.google.android.webview");
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$onRenderProcessGone$3(DialogInterface dialogInterface) {
                if (MyWebView.this.botWebViewContainer == null || MyWebView.this.botWebViewContainer.delegate == null) {
                    return;
                }
                MyWebView.this.botWebViewContainer.delegate.onCloseRequested(null);
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                if (str == null || str.trim().startsWith("sms:")) {
                    return false;
                }
                if (str.trim().startsWith("tel:")) {
                    MyWebView myWebView = MyWebView.this;
                    if (myWebView.opener != null) {
                        if (myWebView.botWebViewContainer.delegate != null) {
                            MyWebView.this.botWebViewContainer.delegate.onInstantClose();
                        } else if (MyWebView.this.onCloseListener != null) {
                            MyWebView.this.onCloseListener.run();
                            MyWebView.this.onCloseListener = null;
                        }
                    }
                    Browser.openUrl(this.val$context, str);
                    return true;
                }
                Uri uri = Uri.parse(str);
                if (!this.val$bot) {
                    if (Browser.openInExternalApp(this.val$context, str, true)) {
                        MyWebView.this.m1350d("shouldOverrideUrlLoading(" + str + ") = true (openInExternalBrowser)");
                        if (!MyWebView.this.isPageLoaded && !MyWebView.this.canGoBack()) {
                            if (MyWebView.this.botWebViewContainer.delegate != null) {
                                MyWebView.this.botWebViewContainer.delegate.onInstantClose();
                            } else if (MyWebView.this.onCloseListener != null) {
                                MyWebView.this.onCloseListener.run();
                                MyWebView.this.onCloseListener = null;
                            }
                        }
                        return true;
                    }
                    if (str.startsWith("intent://") || (uri != null && uri.getScheme() != null && uri.getScheme().equalsIgnoreCase("intent"))) {
                        try {
                            String stringExtra = Intent.parseUri(uri.toString(), 1).getStringExtra("browser_fallback_url");
                            if (!TextUtils.isEmpty(stringExtra)) {
                                MyWebView.this.loadUrl(stringExtra);
                                return true;
                            }
                        } catch (Exception e) {
                            FileLog.m1136e(e);
                        }
                    }
                    if (uri != null && uri.getScheme() != null && !"https".equals(uri.getScheme()) && !"http".equals(uri.getScheme()) && !"tonsite".equals(uri.getScheme())) {
                        MyWebView.this.m1350d("shouldOverrideUrlLoading(" + str + ") = true (browser open)");
                        Browser.openUrl(MyWebView.this.getContext(), uri);
                        return true;
                    }
                }
                if (MyWebView.this.botWebViewContainer != null && Browser.isInternalUri(uri, null)) {
                    if (!this.val$bot && "1".equals(uri.getQueryParameter("embed")) && "t.me".equals(uri.getAuthority())) {
                        return false;
                    }
                    if (MessagesController.getInstance(MyWebView.this.botWebViewContainer.currentAccount).webAppAllowedProtocols != null && MessagesController.getInstance(MyWebView.this.botWebViewContainer.currentAccount).webAppAllowedProtocols.contains(uri.getScheme())) {
                        MyWebView myWebView2 = MyWebView.this;
                        if (myWebView2.opener != null) {
                            if (myWebView2.botWebViewContainer.delegate != null) {
                                MyWebView.this.botWebViewContainer.delegate.onInstantClose();
                            } else if (MyWebView.this.onCloseListener != null) {
                                MyWebView.this.onCloseListener.run();
                                MyWebView.this.onCloseListener = null;
                            }
                            if (MyWebView.this.opener.botWebViewContainer != null && MyWebView.this.opener.botWebViewContainer.delegate != null) {
                                MyWebView.this.opener.botWebViewContainer.delegate.onCloseToTabs();
                            }
                        }
                        MyWebView.this.botWebViewContainer.onOpenUri(uri);
                    }
                    MyWebView.this.m1350d("shouldOverrideUrlLoading(" + str + ") = true");
                    return true;
                }
                if (uri != null) {
                    MyWebView.this.currentUrl = uri.toString();
                }
                MyWebView.this.m1350d("shouldOverrideUrlLoading(" + str + ") = false");
                return false;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$$4() {
                if (MyWebView.this.botWebViewContainer != null) {
                    BotWebViewContainer botWebViewContainer = MyWebView.this.botWebViewContainer;
                    MyWebView.this.errorShown = false;
                    botWebViewContainer.onErrorShown(false, 0, null);
                }
            }

            @Override // android.webkit.WebViewClient
            public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
                String str2;
                int i;
                if (MyWebView.this.botWebViewContainer == null || !MyWebView.this.botWebViewContainer.isVerifyingAge()) {
                    MyWebView.this.getSettings().setMediaPlaybackRequiresUserGesture(true);
                }
                if (MyWebView.this.currentSheet != null) {
                    MyWebView.this.currentSheet.dismiss();
                    MyWebView.this.currentSheet = null;
                }
                MyWebView.this.currentHistoryEntry = null;
                MyWebView.this.currentUrl = str;
                MyWebView myWebView = MyWebView.this;
                myWebView.lastSiteName = null;
                myWebView.lastActionBarColorGot = false;
                myWebView.lastBackgroundColorGot = false;
                myWebView.lastFaviconGot = false;
                myWebView.m1350d("onPageStarted " + str);
                if (MyWebView.this.botWebViewContainer != null) {
                    MyWebView myWebView2 = MyWebView.this;
                    if (myWebView2.errorShown && ((str2 = myWebView2.errorShownAt) == null || !TextUtils.equals(str2, str))) {
                        if (MyWebView.this.currentPageWasBlocked) {
                            MyWebView.this.currentPageWasBlocked = false;
                            i = 540;
                        } else {
                            i = 40;
                        }
                        AndroidUtilities.runOnUIThread(this.resetErrorRunnable, i);
                    }
                }
                if (MyWebView.this.botWebViewContainer != null) {
                    BotWebViewContainer botWebViewContainer = MyWebView.this.botWebViewContainer;
                    MyWebView myWebView3 = MyWebView.this;
                    botWebViewContainer.onURLChanged(myWebView3.dangerousUrl ? myWebView3.urlFallback : str, !myWebView3.canGoBack(), true ^ MyWebView.this.canGoForward());
                }
                super.onPageStarted(webView, str, bitmap);
                MyWebView.this.injectedJS = false;
            }

            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                boolean z;
                MyWebView.this.isPageLoaded = true;
                if (MyWebView.this.whenPageLoaded != null) {
                    Runnable runnable = MyWebView.this.whenPageLoaded;
                    MyWebView.this.whenPageLoaded = null;
                    runnable.run();
                    z = false;
                } else {
                    z = true;
                }
                MyWebView.this.m1350d("onPageFinished");
                if (MyWebView.this.botWebViewContainer != null) {
                    MyWebView.this.botWebViewContainer.setPageLoaded(str, z);
                } else {
                    MyWebView.this.m1350d("onPageFinished: no container");
                }
                if (!this.val$bot) {
                    MyWebView myWebView = MyWebView.this;
                    myWebView.injectedJS = true;
                    myWebView.evaluateJS(AndroidUtilities.readRes(C2888R.raw.webview_ext).replace("$DEBUG$", _UrlKt.FRAGMENT_ENCODE_SET + BuildVars.DEBUG_VERSION));
                    MyWebView.this.evaluateJS(AndroidUtilities.readRes(C2888R.raw.webview_share));
                } else {
                    MyWebView myWebView2 = MyWebView.this;
                    myWebView2.injectedJS = true;
                    myWebView2.evaluateJS(AndroidUtilities.readRes(C2888R.raw.webview_app_ext).replace("$DEBUG$", _UrlKt.FRAGMENT_ENCODE_SET + BuildVars.DEBUG_VERSION));
                }
                MyWebView.this.saveHistory();
                if (MyWebView.this.botWebViewContainer != null) {
                    BotWebViewContainer botWebViewContainer = MyWebView.this.botWebViewContainer;
                    MyWebView myWebView3 = MyWebView.this;
                    botWebViewContainer.onURLChanged(myWebView3.dangerousUrl ? myWebView3.urlFallback : myWebView3.getUrl(), !MyWebView.this.canGoBack(), true ^ MyWebView.this.canGoForward());
                }
                checkCosmetic(str);
            }

            private void checkCosmetic(String str) {
                if (MyWebView.this.bot) {
                    return;
                }
                AdBlockClient.CosmeticHide cosmeticHide = AdBlockClient.getCosmeticHide(str);
                MyWebView.this.selectorsObserver.setCosmeticHide(cosmeticHide);
                if (cosmeticHide != null) {
                    if (!TextUtils.isEmpty(cosmeticHide.getHideCss())) {
                        MyWebView.this.evaluateJS(cosmeticHide.getHideCss());
                    }
                    if (!TextUtils.isEmpty(cosmeticHide.getInjectedScript())) {
                        MyWebView.this.evaluateJS(cosmeticHide.getInjectedScript());
                    }
                    if (cosmeticHide.isGenericHide()) {
                        return;
                    }
                    MyWebView.this.evaluateJS("    function getAllClassesAndIds() {\n        let elements = document.getElementsByTagName('*');\n        let classes = new Set();\n        let ids = new Set();\n\n        for (let element of elements) {\n            if (element.classList.length > 0) {\n                element.classList.forEach(cls => classes.add(cls));\n            }\n            if (element.id) {\n                ids.add(element.id);\n            }\n        }\n\n        return {\n            classes: Array.from(classes),\n            ids: Array.from(ids)\n        };\n    }\n\n    const observer = new MutationObserver(function(mutations) {\n        let result = getAllClassesAndIds();\n        Android.onElementsFound(JSON.stringify(result));\n    });\n\n    observer.observe(document, {\n        childList: true,\n        subtree: true,\n        attributes: true,\n        attributeFilter: ['class', 'id']\n    });\n\n    let result = getAllClassesAndIds();\n    Android.onElementsFound(JSON.stringify(result));\n");
                }
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                MyWebView.this.m1350d("onReceivedError: " + webResourceError.getErrorCode() + " " + ((Object) webResourceError.getDescription()));
                if (MyWebView.this.botWebViewContainer != null && (webResourceRequest == null || webResourceRequest.isForMainFrame())) {
                    AndroidUtilities.cancelRunOnUIThread(this.resetErrorRunnable);
                    MyWebView myWebView = MyWebView.this;
                    myWebView.lastSiteName = null;
                    myWebView.lastActionBarColorGot = false;
                    myWebView.lastBackgroundColorGot = false;
                    myWebView.lastFaviconGot = false;
                    myWebView.lastTitleGot = false;
                    myWebView.errorShownAt = (webResourceRequest == null || webResourceRequest.getUrl() == null) ? MyWebView.this.getUrl() : webResourceRequest.getUrl().toString();
                    BotWebViewContainer botWebViewContainer = MyWebView.this.botWebViewContainer;
                    MyWebView.this.lastTitle = null;
                    botWebViewContainer.onTitleChanged(null);
                    BotWebViewContainer botWebViewContainer2 = MyWebView.this.botWebViewContainer;
                    MyWebView.this.lastFavicon = null;
                    botWebViewContainer2.onFaviconChanged(null);
                    BotWebViewContainer botWebViewContainer3 = MyWebView.this.botWebViewContainer;
                    MyWebView.this.errorShown = true;
                    botWebViewContainer3.onErrorShown(true, webResourceError.getErrorCode(), webResourceError.getDescription() != null ? webResourceError.getDescription().toString() : null);
                }
                super.onReceivedError(webView, webResourceRequest, webResourceError);
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedError(WebView webView, int i, String str, String str2) {
                MyWebView.this.m1350d("onReceivedError: " + i + " " + str + " url=" + str2);
                super.onReceivedError(webView, i, str, str2);
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
                super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
                MyWebView myWebView = MyWebView.this;
                StringBuilder sb = new StringBuilder();
                sb.append("onReceivedHttpError: statusCode=");
                sb.append(webResourceResponse == null ? null : Integer.valueOf(webResourceResponse.getStatusCode()));
                sb.append(" request=");
                sb.append(webResourceRequest == null ? null : webResourceRequest.getUrl());
                myWebView.m1350d(sb.toString());
                if (MyWebView.this.botWebViewContainer != null) {
                    if ((webResourceRequest == null || webResourceRequest.isForMainFrame()) && webResourceResponse != null && TextUtils.isEmpty(webResourceResponse.getMimeType())) {
                        AndroidUtilities.cancelRunOnUIThread(this.resetErrorRunnable);
                        MyWebView myWebView2 = MyWebView.this;
                        myWebView2.lastSiteName = null;
                        myWebView2.lastActionBarColorGot = false;
                        myWebView2.lastBackgroundColorGot = false;
                        myWebView2.lastFaviconGot = false;
                        myWebView2.lastTitleGot = false;
                        myWebView2.errorShownAt = (webResourceRequest == null || webResourceRequest.getUrl() == null) ? MyWebView.this.getUrl() : webResourceRequest.getUrl().toString();
                        BotWebViewContainer botWebViewContainer = MyWebView.this.botWebViewContainer;
                        MyWebView.this.lastTitle = null;
                        botWebViewContainer.onTitleChanged(null);
                        BotWebViewContainer botWebViewContainer2 = MyWebView.this.botWebViewContainer;
                        MyWebView.this.lastFavicon = null;
                        botWebViewContainer2.onFaviconChanged(null);
                        BotWebViewContainer botWebViewContainer3 = MyWebView.this.botWebViewContainer;
                        MyWebView.this.errorShown = true;
                        botWebViewContainer3.onErrorShown(true, webResourceResponse.getStatusCode(), webResourceResponse.getReasonPhrase());
                    }
                }
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
                MyWebView myWebView = MyWebView.this;
                StringBuilder sb = new StringBuilder();
                sb.append("onReceivedSslError: error=");
                sb.append(sslError);
                sb.append(" url=");
                sb.append(sslError == null ? null : sslError.getUrl());
                myWebView.m1350d(sb.toString());
                sslErrorHandler.cancel();
                super.onReceivedSslError(webView, sslErrorHandler, sslError);
            }
        }

        /* JADX INFO: renamed from: org.telegram.ui.web.BotWebViewContainer$MyWebView$3 */
        class C74883 extends WebChromeClient {
            private Dialog lastPermissionsDialog;
            final /* synthetic */ boolean val$bot;
            final /* synthetic */ long val$botId;
            final /* synthetic */ Context val$context;

            C74883(Context context, boolean z, long j) {
                this.val$context = context;
                this.val$bot = z;
                this.val$botId = j;
            }

            @Override // android.webkit.WebChromeClient
            public boolean onJsAlert(WebView webView, String str, String str2, final JsResult jsResult) {
                final boolean[] zArr = {false};
                new AlertDialog.Builder(this.val$context, MyWebView.this.botWebViewContainer == null ? null : MyWebView.this.botWebViewContainer.resourcesProvider).setTitle(this.val$bot ? DialogObject.getName(this.val$botId) : LocaleController.formatString(C2888R.string.WebsiteSays, str)).setMessage(str2).setPositiveButton(LocaleController.getString(C2888R.string.f1606OK), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.web.BotWebViewContainer$MyWebView$3$$ExternalSyntheticLambda8
                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                    public final void onClick(AlertDialog alertDialog, int i) {
                        BotWebViewContainer.MyWebView.C74883.$r8$lambda$JIRgPyLkvZvw66mMqbAAjH2Ayd8(zArr, jsResult, alertDialog, i);
                    }
                }).setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.web.BotWebViewContainer$MyWebView$3$$ExternalSyntheticLambda9
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        BotWebViewContainer.MyWebView.C74883.$r8$lambda$K1Afog_syJZf2IitVkUD71GBLv4(zArr, jsResult, dialogInterface);
                    }
                }).show();
                return true;
            }

            public static /* synthetic */ void $r8$lambda$JIRgPyLkvZvw66mMqbAAjH2Ayd8(boolean[] zArr, JsResult jsResult, AlertDialog alertDialog, int i) {
                if (zArr[0]) {
                    return;
                }
                zArr[0] = true;
                jsResult.confirm();
            }

            public static /* synthetic */ void $r8$lambda$K1Afog_syJZf2IitVkUD71GBLv4(boolean[] zArr, JsResult jsResult, DialogInterface dialogInterface) {
                if (zArr[0]) {
                    return;
                }
                zArr[0] = true;
                jsResult.cancel();
            }

            @Override // android.webkit.WebChromeClient
            public boolean onJsConfirm(WebView webView, String str, String str2, final JsResult jsResult) {
                final boolean[] zArr = {false};
                new AlertDialog.Builder(this.val$context, MyWebView.this.botWebViewContainer == null ? null : MyWebView.this.botWebViewContainer.resourcesProvider).setTitle(this.val$bot ? DialogObject.getName(this.val$botId) : LocaleController.formatString(C2888R.string.WebsiteSays, str)).setMessage(str2).setNegativeButton(LocaleController.getString(C2888R.string.Cancel), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.web.BotWebViewContainer$MyWebView$3$$ExternalSyntheticLambda5
                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                    public final void onClick(AlertDialog alertDialog, int i) {
                        BotWebViewContainer.MyWebView.C74883.$r8$lambda$2yWw2BLNVDPE9RgDuTMCL9FnW_0(zArr, jsResult, alertDialog, i);
                    }
                }).setPositiveButton(LocaleController.getString(C2888R.string.f1606OK), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.web.BotWebViewContainer$MyWebView$3$$ExternalSyntheticLambda6
                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                    public final void onClick(AlertDialog alertDialog, int i) {
                        BotWebViewContainer.MyWebView.C74883.m20805$r8$lambda$R0Kpxaui4vPzYr1rro_d6_1xc4(zArr, jsResult, alertDialog, i);
                    }
                }).setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.web.BotWebViewContainer$MyWebView$3$$ExternalSyntheticLambda7
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        BotWebViewContainer.MyWebView.C74883.$r8$lambda$io3EJ7eiBtyg5Jwe4zT5o_y4Yrg(zArr, jsResult, dialogInterface);
                    }
                }).show();
                return true;
            }

            public static /* synthetic */ void $r8$lambda$2yWw2BLNVDPE9RgDuTMCL9FnW_0(boolean[] zArr, JsResult jsResult, AlertDialog alertDialog, int i) {
                if (zArr[0]) {
                    return;
                }
                zArr[0] = true;
                jsResult.cancel();
            }

            /* JADX INFO: renamed from: $r8$lambda$R0Kpxaui4vP-zYr1rro_d6_1xc4, reason: not valid java name */
            public static /* synthetic */ void m20805$r8$lambda$R0Kpxaui4vPzYr1rro_d6_1xc4(boolean[] zArr, JsResult jsResult, AlertDialog alertDialog, int i) {
                if (zArr[0]) {
                    return;
                }
                zArr[0] = true;
                jsResult.confirm();
            }

            public static /* synthetic */ void $r8$lambda$io3EJ7eiBtyg5Jwe4zT5o_y4Yrg(boolean[] zArr, JsResult jsResult, DialogInterface dialogInterface) {
                if (zArr[0]) {
                    return;
                }
                zArr[0] = true;
                jsResult.cancel();
            }

            @Override // android.webkit.WebChromeClient
            public boolean onJsPrompt(WebView webView, String str, String str2, String str3, final JsPromptResult jsPromptResult) {
                Theme.ResourcesProvider resourcesProvider = MyWebView.this.botWebViewContainer == null ? null : MyWebView.this.botWebViewContainer.resourcesProvider;
                final boolean[] zArr = {false};
                AlertDialog.Builder message = new AlertDialog.Builder(this.val$context, resourcesProvider).setTitle(this.val$bot ? DialogObject.getName(this.val$botId) : LocaleController.formatString(C2888R.string.WebsiteSays, str)).setMessage(str2);
                final EditTextCaption editTextCaption = new EditTextCaption(this.val$context, resourcesProvider);
                editTextCaption.lineYFix = true;
                editTextCaption.setTextSize(1, 18.0f);
                editTextCaption.setTextColor(Theme.getColor(Theme.key_dialogTextBlack, resourcesProvider));
                editTextCaption.setHintColor(Theme.getColor(Theme.key_groupcreate_hintText, resourcesProvider));
                editTextCaption.setFocusable(true);
                editTextCaption.setInputType(147457);
                editTextCaption.setLineColors(Theme.getColor(Theme.key_windowBackgroundWhiteInputField, resourcesProvider), Theme.getColor(Theme.key_windowBackgroundWhiteInputFieldActivated, resourcesProvider), Theme.getColor(Theme.key_text_RedRegular, resourcesProvider));
                editTextCaption.setImeOptions(6);
                editTextCaption.setBackgroundDrawable(null);
                editTextCaption.setPadding(0, AndroidUtilities.m1124dp(6.0f), 0, AndroidUtilities.m1124dp(6.0f));
                editTextCaption.setText(str3);
                LinearLayout linearLayout = new LinearLayout(this.val$context);
                linearLayout.setOrientation(1);
                linearLayout.addView(editTextCaption, LayoutHelper.createLinear(-1, -2, 24.0f, 0.0f, 24.0f, 10.0f));
                message.makeCustomMaxHeight();
                message.setView(linearLayout);
                message.setWidth(AndroidUtilities.m1124dp(292.0f));
                message.setNegativeButton(LocaleController.getString(C2888R.string.Cancel), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.web.BotWebViewContainer$MyWebView$3$$ExternalSyntheticLambda0
                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                    public final void onClick(AlertDialog alertDialog, int i) {
                        BotWebViewContainer.MyWebView.C74883.m20804$r8$lambda$LMHOtTZ1WIWSZO19WLo8NoNkI(zArr, jsPromptResult, alertDialog, i);
                    }
                });
                message.setPositiveButton(LocaleController.getString(C2888R.string.f1606OK), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.web.BotWebViewContainer$MyWebView$3$$ExternalSyntheticLambda1
                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                    public final void onClick(AlertDialog alertDialog, int i) {
                        BotWebViewContainer.MyWebView.C74883.$r8$lambda$FlsajW65O1qximWu9YktPhKFj1I(zArr, jsPromptResult, editTextCaption, alertDialog, i);
                    }
                });
                message.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.web.BotWebViewContainer$MyWebView$3$$ExternalSyntheticLambda2
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        BotWebViewContainer.MyWebView.C74883.$r8$lambda$46yWweFpbnX7LDYh2i48Aea3vk4(zArr, jsPromptResult, dialogInterface);
                    }
                });
                message.overrideDismissListener(new Utilities.Callback() { // from class: org.telegram.ui.web.BotWebViewContainer$MyWebView$3$$ExternalSyntheticLambda3
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        BotWebViewContainer.MyWebView.C74883.$r8$lambda$LbrLC539usybksXm7pXYylqEpbM(editTextCaption, (Runnable) obj);
                    }
                });
                final AlertDialog alertDialogShow = message.show();
                editTextCaption.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.web.BotWebViewContainer.MyWebView.3.1
                    @Override // android.widget.TextView.OnEditorActionListener
                    public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                        if (i != 6) {
                            return false;
                        }
                        boolean[] zArr2 = zArr;
                        if (!zArr2[0]) {
                            zArr2[0] = true;
                            jsPromptResult.confirm(editTextCaption.getText().toString());
                            alertDialogShow.dismiss();
                        }
                        return true;
                    }
                });
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.web.BotWebViewContainer$MyWebView$3$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        editTextCaption.requestFocus();
                    }
                });
                return true;
            }

            /* JADX INFO: renamed from: $r8$lambda$LMHOtTZ1WIWS-ZO19WLo-8NoNkI, reason: not valid java name */
            public static /* synthetic */ void m20804$r8$lambda$LMHOtTZ1WIWSZO19WLo8NoNkI(boolean[] zArr, JsPromptResult jsPromptResult, AlertDialog alertDialog, int i) {
                if (zArr[0]) {
                    return;
                }
                zArr[0] = true;
                jsPromptResult.cancel();
            }

            public static /* synthetic */ void $r8$lambda$FlsajW65O1qximWu9YktPhKFj1I(boolean[] zArr, JsPromptResult jsPromptResult, EditTextCaption editTextCaption, AlertDialog alertDialog, int i) {
                if (zArr[0]) {
                    return;
                }
                zArr[0] = true;
                jsPromptResult.confirm(editTextCaption.getText().toString());
            }

            public static /* synthetic */ void $r8$lambda$46yWweFpbnX7LDYh2i48Aea3vk4(boolean[] zArr, JsPromptResult jsPromptResult, DialogInterface dialogInterface) {
                if (zArr[0]) {
                    return;
                }
                zArr[0] = true;
                jsPromptResult.cancel();
            }

            public static /* synthetic */ void $r8$lambda$LbrLC539usybksXm7pXYylqEpbM(EditTextCaption editTextCaption, Runnable runnable) {
                AndroidUtilities.hideKeyboard(editTextCaption);
                AndroidUtilities.runOnUIThread(runnable, 80L);
            }

            @Override // android.webkit.WebChromeClient
            public void onReceivedIcon(WebView webView, Bitmap bitmap) {
                String str;
                MyWebView myWebView = MyWebView.this;
                StringBuilder sb = new StringBuilder();
                sb.append("onReceivedIcon favicon=");
                if (bitmap == null) {
                    str = "null";
                } else {
                    str = bitmap.getWidth() + "x" + bitmap.getHeight();
                }
                sb.append(str);
                myWebView.m1350d(sb.toString());
                if (bitmap != null && (!TextUtils.equals(MyWebView.this.getUrl(), MyWebView.this.lastFaviconUrl) || MyWebView.this.lastFavicon == null || bitmap.getWidth() > MyWebView.this.lastFavicon.getWidth())) {
                    MyWebView myWebView2 = MyWebView.this;
                    myWebView2.lastFavicon = bitmap;
                    myWebView2.lastFaviconUrl = myWebView2.getUrl();
                    MyWebView myWebView3 = MyWebView.this;
                    myWebView3.lastFaviconGot = true;
                    myWebView3.saveHistory();
                }
                Bitmap bitmap2 = (Bitmap) MyWebView.this.lastFavicons.get(MyWebView.this.getUrl());
                if (bitmap != null && (bitmap2 == null || bitmap2.getWidth() < bitmap.getWidth())) {
                    MyWebView.this.lastFavicons.put(MyWebView.this.getUrl(), bitmap);
                }
                if (MyWebView.this.botWebViewContainer != null) {
                    MyWebView.this.botWebViewContainer.onFaviconChanged(bitmap);
                }
                super.onReceivedIcon(webView, bitmap);
            }

            @Override // android.webkit.WebChromeClient
            public void onReceivedTitle(WebView webView, String str) {
                MyWebView.this.m1350d("onReceivedTitle title=" + str);
                MyWebView myWebView = MyWebView.this;
                if (!myWebView.errorShown) {
                    myWebView.lastTitleGot = true;
                    myWebView.lastTitle = str;
                }
                if (myWebView.botWebViewContainer != null) {
                    MyWebView.this.botWebViewContainer.onTitleChanged(str);
                }
                super.onReceivedTitle(webView, str);
            }

            @Override // android.webkit.WebChromeClient
            public void onReceivedTouchIconUrl(WebView webView, String str, boolean z) {
                MyWebView.this.m1350d("onReceivedTouchIconUrl url=" + str + " precomposed=" + z);
                super.onReceivedTouchIconUrl(webView, str, z);
            }

            @Override // android.webkit.WebChromeClient
            public boolean onCreateWindow(WebView webView, boolean z, boolean z2, Message message) {
                BaseFragment safeLastFragment;
                MyWebView.this.m1350d("onCreateWindow isDialog=" + z + " isUserGesture=" + z2 + " resultMsg=" + message);
                String url = MyWebView.this.getUrl();
                if (SharedConfig.inappBrowser) {
                    if (MyWebView.this.botWebViewContainer == null || (safeLastFragment = LaunchActivity.getSafeLastFragment()) == null) {
                        return false;
                    }
                    if (safeLastFragment.getParentLayout() instanceof ActionBarLayout) {
                        safeLastFragment = ((ActionBarLayout) safeLastFragment.getParentLayout()).getSheetFragment();
                    }
                    ArticleViewer articleViewerCreateArticleViewer = safeLastFragment.createArticleViewer(true);
                    articleViewerCreateArticleViewer.setOpener(MyWebView.this);
                    articleViewerCreateArticleViewer.open((String) null);
                    MyWebView lastWebView = articleViewerCreateArticleViewer.getLastWebView();
                    if (!TextUtils.isEmpty(url)) {
                        lastWebView.urlFallback = url;
                    }
                    MyWebView.this.m1350d("onCreateWindow: newWebView=" + lastWebView);
                    if (lastWebView != null) {
                        ((WebView.WebViewTransport) message.obj).setWebView(lastWebView);
                        message.sendToTarget();
                        return true;
                    }
                    articleViewerCreateArticleViewer.close(true, true);
                    return false;
                }
                WebView webView2 = new WebView(webView.getContext());
                webView2.setWebViewClient(new AnonymousClass2(webView2));
                ((WebView.WebViewTransport) message.obj).setWebView(webView2);
                message.sendToTarget();
                return true;
            }

            /* JADX INFO: renamed from: org.telegram.ui.web.BotWebViewContainer$MyWebView$3$2, reason: invalid class name */
            class AnonymousClass2 extends WebViewClient {
                final /* synthetic */ WebView val$newWebView;

                AnonymousClass2(WebView webView) {
                    this.val$newWebView = webView;
                }

                @Override // android.webkit.WebViewClient
                public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
                    if (Build.VERSION.SDK_INT >= 26) {
                        MyWebView myWebView = MyWebView.this;
                        StringBuilder sb = new StringBuilder();
                        sb.append("newWebView.onRenderProcessGone priority=");
                        sb.append(renderProcessGoneDetail == null ? null : Integer.valueOf(renderProcessGoneDetail.rendererPriorityAtExit()));
                        sb.append(" didCrash=");
                        sb.append(renderProcessGoneDetail == null ? null : Boolean.valueOf(renderProcessGoneDetail.didCrash()));
                        myWebView.m1350d(sb.toString());
                    } else {
                        MyWebView.this.m1350d("newWebView.onRenderProcessGone");
                    }
                    try {
                        if (!AndroidUtilities.isSafeToShow(MyWebView.this.getContext())) {
                            return true;
                        }
                        new AlertDialog.Builder(MyWebView.this.getContext(), MyWebView.this.botWebViewContainer == null ? null : MyWebView.this.botWebViewContainer.resourcesProvider).setTitle(LocaleController.getString(C2888R.string.ChromeCrashTitle)).setMessage(AndroidUtilities.replaceSingleTag(LocaleController.getString(C2888R.string.ChromeCrashMessage), new Runnable() { // from class: org.telegram.ui.web.BotWebViewContainer$MyWebView$3$2$$ExternalSyntheticLambda0
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$onRenderProcessGone$0();
                            }
                        })).setPositiveButton(LocaleController.getString(C2888R.string.f1606OK), null).setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.web.BotWebViewContainer$MyWebView$3$2$$ExternalSyntheticLambda1
                            @Override // android.content.DialogInterface.OnDismissListener
                            public final void onDismiss(DialogInterface dialogInterface) {
                                this.f$0.lambda$onRenderProcessGone$1(dialogInterface);
                            }
                        }).show();
                        return true;
                    } catch (Exception e) {
                        FileLog.m1136e(e);
                        return false;
                    }
                }

                /* JADX INFO: Access modifiers changed from: private */
                public /* synthetic */ void lambda$onRenderProcessGone$0() {
                    Browser.openUrl(MyWebView.this.getContext(), "https://play.google.com/store/apps/details?id=com.google.android.webview");
                }

                /* JADX INFO: Access modifiers changed from: private */
                public /* synthetic */ void lambda$onRenderProcessGone$1(DialogInterface dialogInterface) {
                    if (MyWebView.this.botWebViewContainer.delegate != null) {
                        MyWebView.this.botWebViewContainer.delegate.onCloseRequested(null);
                    }
                }

                @Override // android.webkit.WebViewClient
                public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                    if (MyWebView.this.botWebViewContainer == null) {
                        return true;
                    }
                    MyWebView.this.botWebViewContainer.onOpenUri(Uri.parse(str));
                    this.val$newWebView.destroy();
                    return true;
                }
            }

            @Override // android.webkit.WebChromeClient
            public void onCloseWindow(WebView webView) {
                MyWebView.this.m1350d("onCloseWindow " + webView);
                if (MyWebView.this.botWebViewContainer != null && MyWebView.this.botWebViewContainer.delegate != null) {
                    MyWebView.this.botWebViewContainer.delegate.onCloseRequested(null);
                } else if (MyWebView.this.onCloseListener != null) {
                    MyWebView.this.onCloseListener.run();
                    MyWebView.this.onCloseListener = null;
                }
                super.onCloseWindow(webView);
            }

            @Override // android.webkit.WebChromeClient
            public boolean onShowFileChooser(WebView webView, ValueCallback valueCallback, WebChromeClient.FileChooserParams fileChooserParams) {
                Activity activityFindActivity = AndroidUtilities.findActivity(MyWebView.this.getContext());
                if (activityFindActivity == null) {
                    MyWebView.this.m1350d("onShowFileChooser: no activity, false");
                    return false;
                }
                if (MyWebView.this.botWebViewContainer == null) {
                    MyWebView.this.m1350d("onShowFileChooser: no container, false");
                    return false;
                }
                if (MyWebView.this.botWebViewContainer.mFilePathCallback != null) {
                    MyWebView.this.botWebViewContainer.mFilePathCallback.onReceiveValue(null);
                }
                MyWebView.this.botWebViewContainer.mFilePathCallback = valueCallback;
                boolean z = fileChooserParams.getMode() == 1;
                Intent intentCreateIntent = fileChooserParams.createIntent();
                if (z) {
                    intentCreateIntent.putExtra("android.intent.extra.ALLOW_MULTIPLE", true);
                }
                activityFindActivity.startActivityForResult(intentCreateIntent, 3000);
                MyWebView.this.m1350d("onShowFileChooser: true");
                return true;
            }

            @Override // android.webkit.WebChromeClient
            public void onProgressChanged(WebView webView, int i) {
                if (MyWebView.this.botWebViewContainer != null && MyWebView.this.botWebViewContainer.webViewProgressListener != null) {
                    MyWebView.this.m1350d("onProgressChanged " + i + "%");
                    MyWebView.this.botWebViewContainer.webViewProgressListener.accept(Float.valueOf(((float) i) / 100.0f));
                    return;
                }
                MyWebView.this.m1350d("onProgressChanged " + i + "%: no container");
            }

            @Override // android.webkit.WebChromeClient
            public void onGeolocationPermissionsShowPrompt(final String str, final GeolocationPermissions.Callback callback) {
                if (MyWebView.this.botWebViewContainer == null || MyWebView.this.botWebViewContainer.parentActivity == null) {
                    MyWebView.this.m1350d("onGeolocationPermissionsShowPrompt: no container");
                    callback.invoke(str, false, false);
                    return;
                }
                MyWebView.this.m1350d("onGeolocationPermissionsShowPrompt " + str);
                String userName = this.val$bot ? UserObject.getUserName(MyWebView.this.botWebViewContainer.botUser) : AndroidUtilities.getHostAuthority(MyWebView.this.getUrl());
                Dialog dialogCreateWebViewPermissionsRequestDialog = AlertsCreator.createWebViewPermissionsRequestDialog(MyWebView.this.botWebViewContainer.parentActivity, MyWebView.this.botWebViewContainer.resourcesProvider, new String[]{"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"}, C2888R.raw.permission_request_location, LocaleController.formatString(this.val$bot ? C2888R.string.BotWebViewRequestGeolocationPermission : C2888R.string.WebViewRequestGeolocationPermission, userName), LocaleController.formatString(this.val$bot ? C2888R.string.BotWebViewRequestGeolocationPermissionWithHint : C2888R.string.WebViewRequestGeolocationPermissionWithHint, userName), new Consumer() { // from class: org.telegram.ui.web.BotWebViewContainer$MyWebView$3$$ExternalSyntheticLambda13
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        this.f$0.lambda$onGeolocationPermissionsShowPrompt$11(callback, str, (Boolean) obj);
                    }
                });
                this.lastPermissionsDialog = dialogCreateWebViewPermissionsRequestDialog;
                dialogCreateWebViewPermissionsRequestDialog.show();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$onGeolocationPermissionsShowPrompt$11(final GeolocationPermissions.Callback callback, final String str, Boolean bool) {
                if (this.lastPermissionsDialog != null) {
                    this.lastPermissionsDialog = null;
                    if (bool.booleanValue()) {
                        MyWebView.this.botWebViewContainer.runWithPermissions(new String[]{"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"}, new Consumer() { // from class: org.telegram.ui.web.BotWebViewContainer$MyWebView$3$$ExternalSyntheticLambda16
                            @Override // androidx.core.util.Consumer
                            public final void accept(Object obj) {
                                this.f$0.lambda$onGeolocationPermissionsShowPrompt$10(callback, str, (Boolean) obj);
                            }
                        });
                    } else {
                        callback.invoke(str, false, false);
                    }
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$onGeolocationPermissionsShowPrompt$10(GeolocationPermissions.Callback callback, String str, Boolean bool) {
                callback.invoke(str, bool.booleanValue(), false);
                if (bool.booleanValue()) {
                    MyWebView.this.botWebViewContainer.hasUserPermissions = true;
                }
            }

            @Override // android.webkit.WebChromeClient
            public void onGeolocationPermissionsHidePrompt() {
                if (this.lastPermissionsDialog != null) {
                    MyWebView.this.m1350d("onGeolocationPermissionsHidePrompt: dialog.dismiss");
                    this.lastPermissionsDialog.dismiss();
                    this.lastPermissionsDialog = null;
                    return;
                }
                MyWebView.this.m1350d("onGeolocationPermissionsHidePrompt: no dialog");
            }

            @Override // android.webkit.WebChromeClient
            public void onPermissionRequest(final PermissionRequest permissionRequest) {
                Dialog dialog = this.lastPermissionsDialog;
                if (dialog != null) {
                    dialog.dismiss();
                    this.lastPermissionsDialog = null;
                }
                if (MyWebView.this.botWebViewContainer == null) {
                    MyWebView.this.m1350d("onPermissionRequest: no container");
                    permissionRequest.deny();
                    return;
                }
                MyWebView.this.m1350d("onPermissionRequest " + permissionRequest);
                String userName = this.val$bot ? UserObject.getUserName(MyWebView.this.botWebViewContainer.botUser) : AndroidUtilities.getHostAuthority(MyWebView.this.getUrl());
                final String[] resources = permissionRequest.getResources();
                if (resources.length == 1) {
                    final String str = resources[0];
                    if (MyWebView.this.botWebViewContainer.parentActivity == null) {
                        permissionRequest.deny();
                        return;
                    }
                    if (MyWebView.this.botWebViewContainer.isVerifyingAge()) {
                        permissionRequest.grant(resources);
                        return;
                    }
                    str.getClass();
                    if (str.equals("android.webkit.resource.VIDEO_CAPTURE")) {
                        Dialog dialogCreateWebViewPermissionsRequestDialog = AlertsCreator.createWebViewPermissionsRequestDialog(MyWebView.this.botWebViewContainer.parentActivity, MyWebView.this.botWebViewContainer.resourcesProvider, new String[]{"android.permission.CAMERA"}, C2888R.raw.permission_request_camera, LocaleController.formatString(this.val$bot ? C2888R.string.BotWebViewRequestCameraPermission : C2888R.string.WebViewRequestCameraPermission, userName), LocaleController.formatString(this.val$bot ? C2888R.string.BotWebViewRequestCameraPermissionWithHint : C2888R.string.WebViewRequestCameraPermissionWithHint, userName), new Consumer() { // from class: org.telegram.ui.web.BotWebViewContainer$MyWebView$3$$ExternalSyntheticLambda11
                            @Override // androidx.core.util.Consumer
                            public final void accept(Object obj) {
                                this.f$0.lambda$onPermissionRequest$15(permissionRequest, str, (Boolean) obj);
                            }
                        });
                        this.lastPermissionsDialog = dialogCreateWebViewPermissionsRequestDialog;
                        dialogCreateWebViewPermissionsRequestDialog.show();
                        return;
                    } else {
                        if (str.equals("android.webkit.resource.AUDIO_CAPTURE")) {
                            Dialog dialogCreateWebViewPermissionsRequestDialog2 = AlertsCreator.createWebViewPermissionsRequestDialog(MyWebView.this.botWebViewContainer.parentActivity, MyWebView.this.botWebViewContainer.resourcesProvider, new String[]{"android.permission.RECORD_AUDIO"}, C2888R.raw.permission_request_microphone, LocaleController.formatString(this.val$bot ? C2888R.string.BotWebViewRequestMicrophonePermission : C2888R.string.WebViewRequestMicrophonePermission, userName), LocaleController.formatString(this.val$bot ? C2888R.string.BotWebViewRequestMicrophonePermissionWithHint : C2888R.string.WebViewRequestMicrophonePermissionWithHint, userName), new Consumer() { // from class: org.telegram.ui.web.BotWebViewContainer$MyWebView$3$$ExternalSyntheticLambda10
                                @Override // androidx.core.util.Consumer
                                public final void accept(Object obj) {
                                    this.f$0.lambda$onPermissionRequest$13(permissionRequest, str, (Boolean) obj);
                                }
                            });
                            this.lastPermissionsDialog = dialogCreateWebViewPermissionsRequestDialog2;
                            dialogCreateWebViewPermissionsRequestDialog2.show();
                            return;
                        }
                        return;
                    }
                }
                if (resources.length == 2) {
                    if ("android.webkit.resource.AUDIO_CAPTURE".equals(resources[0]) || "android.webkit.resource.VIDEO_CAPTURE".equals(resources[0])) {
                        if ("android.webkit.resource.AUDIO_CAPTURE".equals(resources[1]) || "android.webkit.resource.VIDEO_CAPTURE".equals(resources[1])) {
                            Dialog dialogCreateWebViewPermissionsRequestDialog3 = AlertsCreator.createWebViewPermissionsRequestDialog(MyWebView.this.botWebViewContainer.parentActivity, MyWebView.this.botWebViewContainer.resourcesProvider, new String[]{"android.permission.CAMERA", "android.permission.RECORD_AUDIO"}, C2888R.raw.permission_request_camera, LocaleController.formatString(this.val$bot ? C2888R.string.BotWebViewRequestCameraMicPermission : C2888R.string.WebViewRequestCameraMicPermission, userName), LocaleController.formatString(this.val$bot ? C2888R.string.BotWebViewRequestCameraMicPermissionWithHint : C2888R.string.WebViewRequestCameraMicPermissionWithHint, userName), new Consumer() { // from class: org.telegram.ui.web.BotWebViewContainer$MyWebView$3$$ExternalSyntheticLambda12
                                @Override // androidx.core.util.Consumer
                                public final void accept(Object obj) {
                                    this.f$0.lambda$onPermissionRequest$17(permissionRequest, resources, (Boolean) obj);
                                }
                            });
                            this.lastPermissionsDialog = dialogCreateWebViewPermissionsRequestDialog3;
                            dialogCreateWebViewPermissionsRequestDialog3.show();
                        }
                    }
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$onPermissionRequest$13(final PermissionRequest permissionRequest, final String str, Boolean bool) {
                if (this.lastPermissionsDialog != null) {
                    this.lastPermissionsDialog = null;
                    if (bool.booleanValue()) {
                        MyWebView.this.botWebViewContainer.runWithPermissions(new String[]{"android.permission.RECORD_AUDIO"}, new Consumer() { // from class: org.telegram.ui.web.BotWebViewContainer$MyWebView$3$$ExternalSyntheticLambda15
                            @Override // androidx.core.util.Consumer
                            public final void accept(Object obj) {
                                this.f$0.lambda$onPermissionRequest$12(permissionRequest, str, (Boolean) obj);
                            }
                        });
                    } else {
                        permissionRequest.deny();
                    }
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$onPermissionRequest$12(PermissionRequest permissionRequest, String str, Boolean bool) {
                if (bool.booleanValue()) {
                    permissionRequest.grant(new String[]{str});
                    MyWebView.this.botWebViewContainer.hasUserPermissions = true;
                } else {
                    permissionRequest.deny();
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$onPermissionRequest$15(final PermissionRequest permissionRequest, final String str, Boolean bool) {
                if (this.lastPermissionsDialog != null) {
                    this.lastPermissionsDialog = null;
                    if (bool.booleanValue()) {
                        MyWebView.this.botWebViewContainer.runWithPermissions(new String[]{"android.permission.CAMERA"}, new Consumer() { // from class: org.telegram.ui.web.BotWebViewContainer$MyWebView$3$$ExternalSyntheticLambda17
                            @Override // androidx.core.util.Consumer
                            public final void accept(Object obj) {
                                this.f$0.lambda$onPermissionRequest$14(permissionRequest, str, (Boolean) obj);
                            }
                        });
                    } else {
                        permissionRequest.deny();
                    }
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$onPermissionRequest$14(PermissionRequest permissionRequest, String str, Boolean bool) {
                if (bool.booleanValue()) {
                    permissionRequest.grant(new String[]{str});
                    MyWebView.this.botWebViewContainer.hasUserPermissions = true;
                } else {
                    permissionRequest.deny();
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$onPermissionRequest$17(final PermissionRequest permissionRequest, final String[] strArr, Boolean bool) {
                if (this.lastPermissionsDialog != null) {
                    this.lastPermissionsDialog = null;
                    if (bool.booleanValue()) {
                        MyWebView.this.botWebViewContainer.runWithPermissions(new String[]{"android.permission.CAMERA", "android.permission.RECORD_AUDIO"}, new Consumer() { // from class: org.telegram.ui.web.BotWebViewContainer$MyWebView$3$$ExternalSyntheticLambda14
                            @Override // androidx.core.util.Consumer
                            public final void accept(Object obj) {
                                this.f$0.lambda$onPermissionRequest$16(permissionRequest, strArr, (Boolean) obj);
                            }
                        });
                    } else {
                        permissionRequest.deny();
                    }
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$onPermissionRequest$16(PermissionRequest permissionRequest, String[] strArr, Boolean bool) {
                if (bool.booleanValue()) {
                    permissionRequest.grant(new String[]{strArr[0], strArr[1]});
                    MyWebView.this.botWebViewContainer.hasUserPermissions = true;
                } else {
                    permissionRequest.deny();
                }
            }

            @Override // android.webkit.WebChromeClient
            public void onPermissionRequestCanceled(PermissionRequest permissionRequest) {
                if (this.lastPermissionsDialog != null) {
                    MyWebView.this.m1350d("onPermissionRequestCanceled: dialog.dismiss");
                    this.lastPermissionsDialog.dismiss();
                    this.lastPermissionsDialog = null;
                    return;
                }
                MyWebView.this.m1350d("onPermissionRequestCanceled: no dialog");
            }

            @Override // android.webkit.WebChromeClient
            public Bitmap getDefaultVideoPoster() {
                return Bitmap.createBitmap(10, 10, Bitmap.Config.ARGB_8888);
            }
        }

        /* JADX INFO: renamed from: org.telegram.ui.web.BotWebViewContainer$MyWebView$5 */
        class C74905 implements DownloadListener {
            C74905() {
            }

            private String getFilename(String str, String str2, String str3) {
                try {
                    String str4 = Uri.parse(str).getPathSegments().get(r0.size() - 1);
                    int iLastIndexOf = str4.lastIndexOf(".");
                    if (iLastIndexOf > 0) {
                        if (!TextUtils.isEmpty(str4.substring(iLastIndexOf + 1))) {
                            return str4;
                        }
                    }
                } catch (Exception unused) {
                }
                return URLUtil.guessFileName(str, str2, str3);
            }

            @Override // android.webkit.DownloadListener
            public void onDownloadStart(final String str, final String str2, String str3, final String str4, long j) {
                MyWebView.this.m1350d("onDownloadStart " + str + " " + str2 + " " + str3 + " " + str4 + " " + j);
                try {
                    if (str.startsWith("blob:")) {
                        return;
                    }
                    final String strEscape = AndroidUtilities.escape(getFilename(str, str3, str4));
                    try {
                        final Runnable runnable = new Runnable() { // from class: org.telegram.ui.web.BotWebViewContainer$MyWebView$5$$ExternalSyntheticLambda0
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$onDownloadStart$0(str, str4, str2, strEscape);
                            }
                        };
                        if (!DownloadController.getInstance(UserConfig.selectedAccount).canDownloadMedia(8, j)) {
                            AlertDialog.Builder builder = new AlertDialog.Builder(MyWebView.this.getContext());
                            builder.setTitle(LocaleController.getString(C2888R.string.WebDownloadAlertTitle));
                            builder.setMessage(AndroidUtilities.replaceTags(j > 0 ? LocaleController.formatString(C2888R.string.WebDownloadAlertInfoWithSize, strEscape, AndroidUtilities.formatFileSize(j)) : LocaleController.formatString(C2888R.string.WebDownloadAlertInfo, strEscape)));
                            builder.setPositiveButton(LocaleController.getString(C2888R.string.WebDownloadAlertYes), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.web.BotWebViewContainer$MyWebView$5$$ExternalSyntheticLambda1
                                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                                public final void onClick(AlertDialog alertDialog, int i) {
                                    runnable.run();
                                }
                            });
                            builder.setNegativeButton(LocaleController.getString(C2888R.string.Cancel), null);
                            TextView textView = (TextView) builder.show().getButton(-2);
                            if (textView != null) {
                                textView.setTextColor(Theme.getColor(Theme.key_text_RedBold));
                                return;
                            }
                            return;
                        }
                        runnable.run();
                        return;
                    } catch (Exception e) {
                        e = e;
                    }
                } catch (Exception e2) {
                    e = e2;
                }
                FileLog.m1136e(e);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$onDownloadStart$0(String str, String str2, String str3, String str4) {
                try {
                    DownloadManager.Request request = new DownloadManager.Request(Uri.parse(str));
                    request.setMimeType(str2);
                    request.addRequestHeader("User-Agent", str3);
                    request.setDescription(LocaleController.getString(C2888R.string.WebDownloading));
                    request.setTitle(str4);
                    request.setNotificationVisibility(1);
                    request.setDestinationInExternalPublicDir(Environment.DIRECTORY_DOWNLOADS, str4);
                    DownloadManager downloadManager = (DownloadManager) MyWebView.this.getContext().getSystemService("download");
                    if (downloadManager != null) {
                        downloadManager.enqueue(request);
                    }
                    if (MyWebView.this.botWebViewContainer != null) {
                        BulletinFactory.m1245of(MyWebView.this.botWebViewContainer, MyWebView.this.botWebViewContainer.resourcesProvider).createSimpleBulletin(C2888R.raw.ic_download, AndroidUtilities.replaceTags(LocaleController.formatString(C2888R.string.WebDownloadingFile, str4))).show(true);
                    }
                } catch (Exception e) {
                    FileLog.m1136e(e);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void saveHistory() {
            if (this.bot) {
                return;
            }
            WebMetadataCache.WebMetadata webMetadataFrom = WebMetadataCache.WebMetadata.from(this);
            WebMetadataCache.getInstance().save(webMetadataFrom);
            BrowserHistory.Entry entry = this.currentHistoryEntry;
            if (entry == null || webMetadataFrom == null) {
                return;
            }
            entry.meta = webMetadataFrom;
            BrowserHistory.pushHistory(entry);
        }

        public void search(String str, Runnable runnable) {
            this.searchLoading = true;
            this.searchListener = runnable;
            findAllAsync(str);
        }

        public int getSearchIndex() {
            return this.searchIndex;
        }

        public int getSearchCount() {
            return this.searchCount;
        }

        @Override // android.webkit.WebView
        public String getTitle() {
            return this.lastTitle;
        }

        public void setTitle(String str) {
            this.lastTitle = str;
        }

        public String getOpenURL() {
            return this.openedByUrl;
        }

        @Override // android.webkit.WebView
        public String getUrl() {
            if (this.dangerousUrl) {
                return this.urlFallback;
            }
            String url = super.getUrl();
            this.lastUrl = url;
            return url;
        }

        public boolean isUrlDangerous() {
            return this.dangerousUrl;
        }

        @Override // android.webkit.WebView
        public Bitmap getFavicon() {
            if (this.errorShown) {
                return null;
            }
            return this.lastFavicon;
        }

        public Bitmap getFavicon(String str) {
            return (Bitmap) this.lastFavicons.get(str);
        }

        public void setContainers(BotWebViewContainer botWebViewContainer, WebViewScrollListener webViewScrollListener) {
            m1350d("setContainers(" + botWebViewContainer + ", " + webViewScrollListener + ")");
            boolean z = this.botWebViewContainer == null && botWebViewContainer != null;
            this.botWebViewContainer = botWebViewContainer;
            this.webViewScrollListener = webViewScrollListener;
            if (z) {
                evaluateJS("window.__tg__postBackgroundChange()");
            }
        }

        public void setCloseListener(Runnable runnable) {
            this.onCloseListener = runnable;
        }

        public void evaluateJS(String str) {
            evaluateJavascript(str, new ValueCallback() { // from class: org.telegram.ui.web.BotWebViewContainer$MyWebView$$ExternalSyntheticLambda0
                @Override // android.webkit.ValueCallback
                public final void onReceiveValue(Object obj) {
                    BotWebViewContainer.MyWebView.m20775$r8$lambda$n4G84VuBJd3zHi0noWbm8zvFCg((String) obj);
                }
            });
        }

        @Override // android.webkit.WebView, android.view.View
        protected void onScrollChanged(int i, int i2, int i3, int i4) {
            super.onScrollChanged(i, i2, i3, i4);
            WebViewScrollListener webViewScrollListener = this.webViewScrollListener;
            if (webViewScrollListener != null) {
                webViewScrollListener.onWebViewScrolled(this, getScrollX() - this.prevScrollX, getScrollY() - this.prevScrollY);
            }
            this.prevScrollX = getScrollX();
            this.prevScrollY = getScrollY();
        }

        public float getScrollProgress() {
            float fMax = Math.max(1, computeVerticalScrollRange() - computeVerticalScrollExtent());
            if (fMax <= getHeight()) {
                return 0.0f;
            }
            return Utilities.clamp01(getScrollY() / fMax);
        }

        public void setScrollProgress(float f) {
            setScrollY((int) (f * Math.max(1, computeVerticalScrollRange() - computeVerticalScrollExtent())));
        }

        @Override // android.view.View
        public void setScrollX(int i) {
            super.setScrollX(i);
            this.prevScrollX = i;
        }

        @Override // android.view.View
        public void setScrollY(int i) {
            super.setScrollY(i);
            this.prevScrollY = i;
        }

        @Override // android.webkit.WebView, android.view.View
        public boolean onCheckIsTextEditor() {
            BotWebViewContainer botWebViewContainer = this.botWebViewContainer;
            if (botWebViewContainer == null) {
                m1350d("onCheckIsTextEditor: no container");
                return false;
            }
            boolean zIsFocusable = botWebViewContainer.isFocusable();
            m1350d("onCheckIsTextEditor: " + zIsFocusable);
            return zIsFocusable;
        }

        @Override // android.webkit.WebView, android.widget.AbsoluteLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i2), TLObject.FLAG_30));
        }

        @Override // android.webkit.WebView, android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0) {
                this.botWebViewContainer.lastClickMs = System.currentTimeMillis();
                if (!this.botWebViewContainer.isVerifyingAge()) {
                    getSettings().setMediaPlaybackRequiresUserGesture(false);
                }
            }
            return super.onTouchEvent(motionEvent);
        }

        @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            m1350d("attached");
            AndroidUtilities.checkAndroidTheme(getContext(), true);
            super.onAttachedToWindow();
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            m1350d("detached");
            AndroidUtilities.checkAndroidTheme(getContext(), false);
            super.onDetachedFromWindow();
        }

        @Override // android.webkit.WebView
        public void destroy() {
            m1350d("destroy");
            super.destroy();
        }

        @Override // android.webkit.WebView
        public void loadUrl(String str) {
            BottomSheet bottomSheet = this.currentSheet;
            if (bottomSheet != null) {
                bottomSheet.dismiss();
                this.currentSheet = null;
            }
            checkCachedMetaProperties(str);
            this.openedByUrl = str;
            String str2 = BotWebViewContainer.tonsite2magic(str);
            this.currentUrl = str2;
            m1350d("loadUrl " + str2);
            super.loadUrl(str2);
            BotWebViewContainer botWebViewContainer = this.botWebViewContainer;
            if (botWebViewContainer != null) {
                if (this.dangerousUrl) {
                    str2 = this.urlFallback;
                }
                botWebViewContainer.onURLChanged(str2, !canGoBack(), !canGoForward());
            }
        }

        @Override // android.webkit.WebView
        public void loadUrl(String str, Map map) {
            BottomSheet bottomSheet = this.currentSheet;
            if (bottomSheet != null) {
                bottomSheet.dismiss();
                this.currentSheet = null;
            }
            checkCachedMetaProperties(str);
            this.openedByUrl = str;
            String str2 = BotWebViewContainer.tonsite2magic(str);
            this.currentUrl = str2;
            m1350d("loadUrl " + str2 + " " + map);
            super.loadUrl(str2, (Map<String, String>) map);
            BotWebViewContainer botWebViewContainer = this.botWebViewContainer;
            if (botWebViewContainer != null) {
                if (this.dangerousUrl) {
                    str2 = this.urlFallback;
                }
                botWebViewContainer.onURLChanged(str2, !canGoBack(), !canGoForward());
            }
        }

        public void loadUrl(String str, WebMetadataCache.WebMetadata webMetadata) {
            BottomSheet bottomSheet = this.currentSheet;
            if (bottomSheet != null) {
                bottomSheet.dismiss();
                this.currentSheet = null;
            }
            applyCachedMeta(webMetadata);
            this.openedByUrl = str;
            String str2 = BotWebViewContainer.tonsite2magic(str);
            this.currentUrl = str2;
            m1350d("loadUrl " + str2 + " with cached meta");
            super.loadUrl(str2);
            BotWebViewContainer botWebViewContainer = this.botWebViewContainer;
            if (botWebViewContainer != null) {
                if (this.dangerousUrl) {
                    str2 = this.urlFallback;
                }
                botWebViewContainer.onURLChanged(str2, !canGoBack(), !canGoForward());
            }
        }

        public void checkCachedMetaProperties(String str) {
            if (this.bot) {
                return;
            }
            applyCachedMeta(WebMetadataCache.getInstance().get(AndroidUtilities.getHostAuthority(str, true)));
        }

        public boolean applyCachedMeta(WebMetadataCache.WebMetadata webMetadata) {
            boolean z = false;
            if (webMetadata == null) {
                return false;
            }
            BotWebViewContainer botWebViewContainer = this.botWebViewContainer;
            if (botWebViewContainer != null && botWebViewContainer.delegate != null) {
                if (webMetadata.actionBarColor != 0) {
                    this.botWebViewContainer.delegate.onWebAppBackgroundChanged(true, webMetadata.actionBarColor);
                    this.lastActionBarColorGot = true;
                }
                int i = webMetadata.backgroundColor;
                if (i != 0) {
                    this.botWebViewContainer.delegate.onWebAppBackgroundChanged(false, webMetadata.backgroundColor);
                    this.lastBackgroundColorGot = true;
                } else {
                    i = -1;
                }
                Bitmap bitmap = webMetadata.favicon;
                if (bitmap != null) {
                    BotWebViewContainer botWebViewContainer2 = this.botWebViewContainer;
                    this.lastFavicon = bitmap;
                    botWebViewContainer2.onFaviconChanged(bitmap);
                    this.lastFaviconGot = true;
                }
                if (!TextUtils.isEmpty(webMetadata.sitename)) {
                    String str = webMetadata.sitename;
                    this.lastSiteName = str;
                    BotWebViewContainer botWebViewContainer3 = this.botWebViewContainer;
                    this.lastTitle = str;
                    botWebViewContainer3.onTitleChanged(str);
                    z = true;
                }
                if (SharedConfig.adaptableColorInBrowser) {
                    setBackgroundColor(i);
                }
            }
            if (!z) {
                setTitle(null);
                BotWebViewContainer botWebViewContainer4 = this.botWebViewContainer;
                if (botWebViewContainer4 != null) {
                    botWebViewContainer4.onTitleChanged(null);
                }
            }
            return true;
        }

        @Override // android.webkit.WebView
        public void reload() {
            CookieManager.getInstance().flush();
            m1350d("reload");
            super.reload();
        }

        @Override // android.webkit.WebView
        public void loadData(String str, String str2, String str3) {
            this.openedByUrl = null;
            m1350d("loadData " + str + " " + str2 + " " + str3);
            super.loadData(str, str2, str3);
        }

        @Override // android.webkit.WebView
        public void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
            this.openedByUrl = null;
            m1350d("loadDataWithBaseURL " + str + " " + str2 + " " + str3 + " " + str4 + " " + str5);
            super.loadDataWithBaseURL(str, str2, str3, str4, str5);
        }

        @Override // android.webkit.WebView
        public void stopLoading() {
            m1350d("stopLoading");
            super.stopLoading();
        }

        @Override // android.view.View
        public void stopNestedScroll() {
            m1350d("stopNestedScroll");
            super.stopNestedScroll();
        }

        @Override // android.webkit.WebView
        public void postUrl(String str, byte[] bArr) {
            m1350d("postUrl " + str + " " + bArr);
            super.postUrl(str, bArr);
        }

        @Override // android.webkit.WebView
        public void onPause() {
            m1350d("onPause");
            super.onPause();
        }

        @Override // android.webkit.WebView
        public void onResume() {
            m1350d("onResume");
            super.onResume();
        }

        @Override // android.webkit.WebView
        public void pauseTimers() {
            m1350d("pauseTimers");
            super.pauseTimers();
        }

        @Override // android.webkit.WebView
        public void resumeTimers() {
            m1350d("resumeTimers");
            super.resumeTimers();
        }

        @Override // android.webkit.WebView
        public boolean canGoBack() {
            return super.canGoBack();
        }

        @Override // android.webkit.WebView
        public void goBack() {
            m1350d("goBack");
            super.goBack();
        }

        @Override // android.webkit.WebView
        public void goForward() {
            m1350d("goForward");
            super.goForward();
        }

        @Override // android.webkit.WebView
        public void clearHistory() {
            m1350d("clearHistory");
            super.clearHistory();
        }

        @Override // android.view.View
        public void setFocusable(int i) {
            m1350d("setFocusable " + i);
            super.setFocusable(i);
        }

        @Override // android.view.View
        public void setFocusable(boolean z) {
            m1350d("setFocusable " + z);
            super.setFocusable(z);
        }

        @Override // android.view.View
        public void setFocusableInTouchMode(boolean z) {
            m1350d("setFocusableInTouchMode " + z);
            super.setFocusableInTouchMode(z);
        }

        @Override // android.view.View
        public void setFocusedByDefault(boolean z) {
            m1350d("setFocusedByDefault " + z);
            super.setFocusedByDefault(z);
        }

        @Override // android.view.ViewGroup
        protected boolean drawChild(Canvas canvas, View view, long j) {
            return super.drawChild(canvas, view, j);
        }

        @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            super.dispatchDraw(canvas);
        }

        @Override // android.webkit.WebView, android.view.View
        protected void onDraw(Canvas canvas) {
            super.onDraw(canvas);
        }

        @Override // android.view.View
        public void draw(Canvas canvas) {
            super.draw(canvas);
        }
    }

    /* JADX INFO: renamed from: d */
    public void m1349d(String str) {
        FileLog.m1133d("[webviewcontainer] #" + this.tag + " " + str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String tonsite2magic(String str) {
        if (str == null || !isTonsite(Uri.parse(str))) {
            return str;
        }
        String hostAuthority = AndroidUtilities.getHostAuthority(str);
        try {
            hostAuthority = IDN.toASCII(hostAuthority, 1);
        } catch (Exception unused) {
        }
        String strRotateTONHost = rotateTONHost(hostAuthority);
        if (rotatedTONHosts == null) {
            rotatedTONHosts = new HashMap();
        }
        rotatedTONHosts.put(strRotateTONHost, hostAuthority);
        return Browser.replaceHostname(Uri.parse(str), strRotateTONHost, "https");
    }

    public static String magic2tonsite(String str) {
        String hostAuthority;
        String str2;
        if (rotatedTONHosts == null || str == null || (hostAuthority = AndroidUtilities.getHostAuthority(str)) == null) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(".");
        sb.append(MessagesController.getInstance(UserConfig.selectedAccount).tonProxyAddress);
        return (hostAuthority.endsWith(sb.toString()) && (str2 = (String) rotatedTONHosts.get(hostAuthority)) != null) ? Browser.replace(Uri.parse(str), "tonsite", null, str2, null) : str;
    }

    public static JSONObject obj() {
        try {
            return new JSONObject();
        } catch (Exception unused) {
            return null;
        }
    }

    public static JSONObject obj(String str, Object obj) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(str, obj);
            return jSONObject;
        } catch (Exception unused) {
            return null;
        }
    }

    public static JSONObject obj(String str, Object obj, String str2, Object obj2) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(str, obj);
            jSONObject.put(str2, obj2);
            return jSONObject;
        } catch (Exception unused) {
            return null;
        }
    }

    public static JSONObject obj(String str, Object obj, String str2, Object obj2, String str3, Object obj3) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(str, obj);
            jSONObject.put(str2, obj2);
            jSONObject.put(str3, obj3);
            return jSONObject;
        } catch (Exception unused) {
            return null;
        }
    }

    public static JSONObject obj(String str, Object obj, String str2, Object obj2, String str3, Object obj3, String str4, Object obj4) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(str, obj);
            jSONObject.put(str2, obj2);
            jSONObject.put(str3, obj3);
            jSONObject.put(str4, obj4);
            return jSONObject;
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isVerifyingAge() {
        return this.onVerifiedAge != null;
    }

    public void setOnVerifiedAge(Utilities.Callback4<Boolean, Double, String, Double> callback4) {
        this.onVerifiedAge = callback4;
    }
}
