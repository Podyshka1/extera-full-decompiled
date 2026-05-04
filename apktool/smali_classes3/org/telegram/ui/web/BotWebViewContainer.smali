.class public abstract Lorg/telegram/ui/web/BotWebViewContainer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;,
        Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;,
        Lorg/telegram/ui/web/BotWebViewContainer$WebViewProxy;,
        Lorg/telegram/ui/web/BotWebViewContainer$WebViewScrollListener;,
        Lorg/telegram/ui/web/BotWebViewContainer$Delegate;,
        Lorg/telegram/ui/web/BotWebViewContainer$PopupButton;
    }
.end annotation


# static fields
.field public static firstWebView:Z = true

.field private static rotatedTONHosts:Ljava/util/HashMap;

.field private static tags:I


# instance fields
.field private biometry:Lorg/telegram/ui/bots/BotBiometry;

.field private blockedDialogsUntil:J

.field public final bot:Z

.field private botUser:Lorg/telegram/tgnet/TLRPC$User;

.field private botWebViewProxy:Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;

.field private buttonData:Ljava/lang/String;

.field private cameraBottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

.field private currentAccount:I

.field private currentDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

.field private currentPaymentSlug:Ljava/lang/String;

.field private delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

.field private dialogSequentialOpenTimes:I

.field private downloads:Lorg/telegram/ui/bots/BotDownloads;

.field private final flickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

.field private flickerView:Lorg/telegram/ui/Components/BackupImageView;

.field private flickerViewColor:I

.field private flickerViewColorOverriden:Z

.field private flickerViewDrawable:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

.field private forceHeight:I

.field private hasQRPending:Z

.field private hasUserPermissions:Z

.field private isBackButtonVisible:Z

.field private isFlickeringCenter:Z

.field private isPageLoaded:Z

.field private isRequestingPageOpen:Z

.field private isSettingsButtonVisible:Z

.field private isViewPortByMeasureSuppressed:Z

.field private keyboardFocusable:Z

.field private lastButtonColor:I

.field private lastButtonText:Ljava/lang/String;

.field private lastButtonTextColor:I

.field private lastClickMs:J

.field private lastDialogClosed:J

.field private lastDialogCooldownTime:J

.field private lastDialogType:I

.field private lastExpanded:Z

.field private final lastInsets:Landroid/graphics/Rect;

.field private lastInsetsTopMargin:I

.field private lastPostStoryMs:J

.field private lastQrText:Ljava/lang/String;

.field private lastSecondaryButtonColor:I

.field private lastSecondaryButtonPosition:Ljava/lang/String;

.field private lastSecondaryButtonText:Ljava/lang/String;

.field private lastSecondaryButtonTextColor:I

.field private lastViewportHeightReported:I

.field private lastViewportIsExpanded:Z

.field private lastViewportStateStable:Z

.field private location:Lorg/telegram/ui/bots/BotLocation;

.field private mFilePathCallback:Landroid/webkit/ValueCallback;

.field private mUrl:Ljava/lang/String;

.field private final notifyLocationChecked:Ljava/lang/Runnable;

.field private onCloseListener:Ljava/lang/Runnable;

.field private onPermissionsRequestResultCallback:Ljava/lang/Runnable;

.field private onVerifiedAge:Lorg/telegram/messenger/Utilities$Callback4;

.field private opener:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

.field private parentActivity:Landroid/app/Activity;

.field private preserving:Z

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private secondaryButtonData:Ljava/lang/String;

.field private secureStorage:Lorg/telegram/ui/bots/BotStorage;

.field private sensors:Lorg/telegram/ui/bots/BotSensors;

.field private shownDialogsCount:I

.field private storage:Lorg/telegram/ui/bots/BotStorage;

.field private final tag:I

.field private viewPortHeightOffset:F

.field private wasFocusable:Z

.field private wasOpenedByBot:Lorg/telegram/ui/bots/WebViewRequestProps;

.field private wasOpenedByLinkIntent:Z

.field private webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

.field private webViewNotAvailable:Z

.field private webViewNotAvailableText:Landroid/widget/TextView;

.field private webViewProgressListener:Landroidx/core/util/Consumer;

.field private webViewProxy:Lorg/telegram/ui/web/BotWebViewContainer$WebViewProxy;

.field private webViewScrollListener:Lorg/telegram/ui/web/BotWebViewContainer$WebViewScrollListener;


# direct methods
.method public static synthetic $r8$lambda$-lpbgESc6F2CzbdEO8qYDYfjBT4(Lorg/telegram/ui/web/BotWebViewContainer;Lorg/telegram/ui/web/BotWebViewContainer$PopupButton;Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$7(Lorg/telegram/ui/web/BotWebViewContainer$PopupButton;Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$-yU6t9dY2ERHgkkmIJow83D94pc(Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;Ljava/util/ArrayList;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 2674
    iget-object p0, p0, Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;->container:Lorg/telegram/ui/web/BotWebViewContainer;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    if-eqz p0, :cond_0

    .line 2675
    invoke-interface {p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onSharedTo(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$0vAHXVWVz_RVMMHcJrCuaFT52C4(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 2062
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$0yjXzIN7PcjxhlSWY_7fV0AXBoI(Lorg/telegram/ui/web/BotWebViewContainer;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onWebEventReceived$5(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$15JTH5gRdEI06xMnUDg_F6WCI8U(Lorg/telegram/ui/web/BotWebViewContainer;Lorg/telegram/tgnet/TLObject;[Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$13(Lorg/telegram/tgnet/TLObject;[Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/AlertDialog;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2osXJHTZ2Clu2cF56_NKouuFgxY(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 1942
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$4CFVz6No92SXys6AyLiWDV0S9D4(Lorg/telegram/ui/web/BotWebViewContainer;[ILjava/io/File;Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$33([ILjava/io/File;Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5vDhNZmS1Gy5aEK62vD5qGc07_g(Ljava/io/File;[ILjava/lang/Runnable;)V
    .locals 0

    .line 2370
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getVideoInfo(Ljava/lang/String;[I)V

    .line 2371
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$80uvAoq7vR2d5TbVtVYDr1DpQo4(Lorg/telegram/ui/web/BotWebViewContainer;[Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$28([Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$8p07neB3AFKR34Ayg9l-QHO7GG8(Lorg/telegram/ui/web/BotWebViewContainer;ZLjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$evaluateJs$3(ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9t1U4XSHrh-Z_pACemw-RRGiP_A(Lorg/telegram/ui/web/BotWebViewContainer;Ljava/lang/String;ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$21(Ljava/lang/String;ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$A58zimWnw9sgr5RazfaT9wk2Z7o(Lorg/telegram/ui/web/BotWebViewContainer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$reload$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$CRWP0UqL46S3pclscabWzAKsy74(Lorg/telegram/ui/web/BotWebViewContainer;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$45(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FgOePQ7Zx-_rguIe3xxCb9Vy9FI(Lorg/telegram/ui/web/BotWebViewContainer;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$32(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$H2zr8dTB6_b3e26eFf1KSRivaJ4(Lorg/telegram/ui/web/BotWebViewContainer;ZDLjava/lang/String;D)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$49(ZDLjava/lang/String;D)V

    return-void
.end method

.method public static synthetic $r8$lambda$If25Xcvm2uszXjunXdQLlQhot28(Lorg/telegram/ui/web/BotWebViewContainer;Lorg/telegram/ui/web/BotWebViewContainer$PopupButton;Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$8(Lorg/telegram/ui/web/BotWebViewContainer$PopupButton;Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$IfjqmfhBqhRC02YDhpmrSW-sQ_g(Lorg/telegram/ui/web/BotWebViewContainer;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceSlug;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$12(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceSlug;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$It3FyWdXsW7g5KNiX3BWLYJokMI(Lorg/telegram/ui/web/BotWebViewContainer;Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$48(Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$J9qr9gLAdQ5wU81HYfMsniA0JKs(Lorg/telegram/ui/web/BotWebViewContainer;Landroidx/core/util/Consumer;[Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$runWithPermissions$0(Landroidx/core/util/Consumer;[Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MBjcOXeBjJMUgUA-yPZhmEpXdnE(Lorg/telegram/ui/web/BotWebViewContainer;Lorg/telegram/tgnet/TLObject;ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$18(Lorg/telegram/tgnet/TLObject;ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MqbAzC-cgFnHNFYtZNKJV3eguUE(Lorg/telegram/ui/web/BotWebViewContainer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$41(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q9tV7prbbxV1vztE41HpgqqDod4(Lorg/telegram/ui/web/BotWebViewContainer;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$44(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$R2J3vZ_xS5ZyYmXFIOGPgfysO1I(Lorg/telegram/ui/web/BotWebViewContainer;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$27(Ljava/lang/Boolean;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Rk3Hev5XR6tejZuGWTPryJOHd2I(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    .line 1174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "window.Telegram.WebView.receiveEvent(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\', "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->evaluateJS(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$S4etUAvlfXSd2vOnTAZKIEtMV5g(Lorg/telegram/ui/web/BotWebViewContainer;Lorg/telegram/ui/web/BotWebViewContainer$PopupButton;Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$9(Lorg/telegram/ui/web/BotWebViewContainer$PopupButton;Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$SLyOIuG7kKT-J_5tm62XYL7ZisY(Lorg/telegram/ui/web/BotWebViewContainer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$26()V

    return-void
.end method

.method public static synthetic $r8$lambda$VV_se4hRWZMyB-tvueQFAoAGuSw(Lorg/telegram/ui/web/BotWebViewContainer;[Ljava/lang/String;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$14([Ljava/lang/String;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WIR9qnpOrcDi8j6JcOX1q-bj4CI(Lorg/telegram/ui/web/BotWebViewContainer;[Ljava/lang/String;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$15([Ljava/lang/String;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$XYvIqt9hRGZo0UzyEOExZoYvhiI(Lorg/telegram/ui/web/BotWebViewContainer;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/ui/bots/BotStorage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$restoreStorageKey$50(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/ui/bots/BotStorage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XirH3LyfEOrkiBAV6y7K6whkPmY(Lorg/telegram/ui/web/BotWebViewContainer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$43(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y9Ca0-W-75ZkbjgWhRuPbDHpLiI([Ljava/lang/String;ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V
    .locals 3

    const/4 v0, 0x0

    .line 2065
    aget-object v1, p0, v0

    if-nez v1, :cond_0

    return-void

    .line 2069
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 2070
    const-string/jumbo v2, "status"

    aget-object p0, p0, v0

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2071
    const-string p0, "phone_requested"

    invoke-static {p1, p2, p0, v1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 2073
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YQzZdlAT7_hjce4_ZTOqQk22woQ(Lorg/telegram/ui/web/BotWebViewContainer;ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$19(ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YnF8WLVnm95S9HE3KYaDioXDYBo(Lorg/telegram/ui/web/BotWebViewContainer;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$39(Ljava/lang/Boolean;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZUZQMC_eLf52-0ERSSc1BpJM_I4(Lorg/telegram/ui/web/BotWebViewContainer;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$20(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_MsjRusNkEensw9EJtatbk8eho8(Lorg/telegram/ui/web/BotWebViewContainer;Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$36(Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_lVrYXF0nZPDbQHa_1TELn0pyAM(Lorg/telegram/ui/web/BotWebViewContainer;Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onWebEventReceived$6(Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dFkqU-nm1733HWEtGf3uXjJXPDk(Lorg/telegram/ui/web/BotWebViewContainer;[Ljava/lang/String;ZILorg/telegram/ui/web/BotWebViewContainer$MyWebView;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$23([Ljava/lang/String;ZILorg/telegram/ui/web/BotWebViewContainer$MyWebView;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$dl0EUvyyCjtKl2XE6izjxPpnkkI(Lorg/telegram/ui/web/BotWebViewContainer;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$10(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eTJDZsB7PR4oW1GGyTTkX71JgLc(Lorg/telegram/ui/web/BotWebViewContainer;Ljava/io/File;Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$35(Ljava/io/File;Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eiapH5984AtT_Z_Bvp69RIMSejU(Lorg/telegram/ui/web/BotWebViewContainer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$new$51()V

    return-void
.end method

.method public static synthetic $r8$lambda$f2d-rRbA0_wqxSV5mErC3BLvDf8(Lorg/telegram/ui/web/BotWebViewContainer;[Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$29([Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$gFHAK0CBbUCCK1DFE62CWJmWiMc([Ljava/lang/Runnable;Landroid/content/DialogInterface;)V
    .locals 1

    const/4 p1, 0x0

    .line 2135
    aget-object v0, p0, p1

    if-eqz v0, :cond_0

    .line 2136
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 2137
    aput-object v0, p0, p1

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$kSumLN8mCrUf11-L9E_gql6ehMY(Lorg/telegram/ui/web/BotWebViewContainer;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$38(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Document;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lEoD00O5fJRHhUTn1XSagYpU2WY(Lorg/telegram/ui/web/BotWebViewContainer;Lorg/json/JSONObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$40(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mXCspVhWq0EY9hjVp5IpWMMuxFc(Lorg/telegram/ui/web/BotWebViewContainer;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$31(Ljava/lang/Boolean;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oEHD8N72Fbpsbm128v-T4B7AW7k(Lorg/telegram/ui/web/BotWebViewContainer;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$37(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oNSUmIMRDjVKKFlS4XNFVAyTAIA(Lorg/telegram/ui/web/BotWebViewContainer;Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceSlug;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$11(Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceSlug;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qXRhl_p8dL9DYtielvcD3tI08ZE([Ljava/lang/String;ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V
    .locals 3

    .line 1947
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1948
    const-string/jumbo v1, "status"

    const/4 v2, 0x0

    aget-object p0, p0, v2

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1949
    const-string/jumbo p0, "write_access_requested"

    invoke-static {p1, p2, p0, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 1951
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tmWmT3eWq1tUXEB-3R05pu_8d0s(Lorg/telegram/ui/web/BotWebViewContainer;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$loadUrl$2(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wJS7N4ER93BcwdzMQfxHB4IJdRA(Lorg/telegram/ui/web/BotWebViewContainer;ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$22(ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$x9557h3WPqsqI7HSAf9GDLPTYT0(Lorg/telegram/ui/web/BotWebViewContainer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$46()V

    return-void
.end method

.method public static synthetic $r8$lambda$xY-FwuFPpUO6qcVAfPat0fJp-OA(Lorg/telegram/ui/web/BotWebViewContainer;Lorg/json/JSONObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$42(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y1C8pZukcz-owbPVATT7pI4xX6Y(Lorg/telegram/ui/web/BotWebViewContainer;Ljava/lang/Runnable;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$showDialog$52(Ljava/lang/Runnable;Landroid/content/DialogInterface;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetbotUser(Lorg/telegram/ui/web/BotWebViewContainer;)Lorg/telegram/tgnet/TLRPC$User;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentAccount(Lorg/telegram/ui/web/BotWebViewContainer;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdelegate(Lorg/telegram/ui/web/BotWebViewContainer;)Lorg/telegram/ui/web/BotWebViewContainer$Delegate;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetflickerView(Lorg/telegram/ui/web/BotWebViewContainer;)Lorg/telegram/ui/Components/BackupImageView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisFlickeringCenter(Lorg/telegram/ui/web/BotWebViewContainer;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->isFlickeringCenter:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlastClickMs(Lorg/telegram/ui/web/BotWebViewContainer;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastClickMs:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetlastQrText(Lorg/telegram/ui/web/BotWebViewContainer;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastQrText:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFilePathCallback(Lorg/telegram/ui/web/BotWebViewContainer;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->mFilePathCallback:Landroid/webkit/ValueCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetparentActivity(Lorg/telegram/ui/web/BotWebViewContainer;)Landroid/app/Activity;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->parentActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetresourcesProvider(Lorg/telegram/ui/web/BotWebViewContainer;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwebViewProgressListener(Lorg/telegram/ui/web/BotWebViewContainer;)Landroidx/core/util/Consumer;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webViewProgressListener:Landroidx/core/util/Consumer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputhasQRPending(Lorg/telegram/ui/web/BotWebViewContainer;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->hasQRPending:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputhasUserPermissions(Lorg/telegram/ui/web/BotWebViewContainer;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->hasUserPermissions:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastClickMs(Lorg/telegram/ui/web/BotWebViewContainer;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastClickMs:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFilePathCallback(Lorg/telegram/ui/web/BotWebViewContainer;Landroid/webkit/ValueCallback;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->mFilePathCallback:Landroid/webkit/ValueCallback;

    return-void
.end method

.method static bridge synthetic -$$Nest$misVerifyingAge(Lorg/telegram/ui/web/BotWebViewContainer;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/web/BotWebViewContainer;->isVerifyingAge()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monEventReceived(Lorg/telegram/ui/web/BotWebViewContainer;Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/web/BotWebViewContainer;->onEventReceived(Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monOpenUri(Lorg/telegram/ui/web/BotWebViewContainer;Landroid/net/Uri;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->onOpenUri(Landroid/net/Uri;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monWebEventReceived(Lorg/telegram/ui/web/BotWebViewContainer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->onWebEventReceived(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mopenQrScanActivity(Lorg/telegram/ui/web/BotWebViewContainer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/web/BotWebViewContainer;->openQrScanActivity()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrunWithPermissions(Lorg/telegram/ui/web/BotWebViewContainer;[Ljava/lang/String;Landroidx/core/util/Consumer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->runWithPermissions([Ljava/lang/String;Landroidx/core/util/Consumer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgettags()I
    .locals 1

    .line 0
    sget v0, Lorg/telegram/ui/web/BotWebViewContainer;->tags:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfputtags(I)V
    .locals 0

    .line 0
    sput p0, Lorg/telegram/ui/web/BotWebViewContainer;->tags:I

    return-void
.end method

.method static bridge synthetic -$$Nest$smtonsite2magic(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/web/BotWebViewContainer;->tonsite2magic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;IZ)V
    .locals 5

    .line 252
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 184
    new-instance v0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    .line 193
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/web/BotWebViewContainer;->getColor(I)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastButtonColor:I

    .line 194
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/web/BotWebViewContainer;->getColor(I)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastButtonTextColor:I

    .line 195
    const-string v3, ""

    iput-object v3, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastButtonText:Ljava/lang/String;

    .line 198
    invoke-direct {p0, v1}, Lorg/telegram/ui/web/BotWebViewContainer;->getColor(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastSecondaryButtonColor:I

    .line 199
    invoke-direct {p0, v2}, Lorg/telegram/ui/web/BotWebViewContainer;->getColor(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastSecondaryButtonTextColor:I

    .line 200
    iput-object v3, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastSecondaryButtonText:Ljava/lang/String;

    .line 201
    iput-object v3, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastSecondaryButtonPosition:Ljava/lang/String;

    .line 204
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    const/4 v1, -0x1

    .line 888
    iput v1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->forceHeight:I

    .line 2929
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastInsets:Landroid/graphics/Rect;

    .line 2930
    iput v3, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastInsetsTopMargin:I

    .line 3000
    new-instance v2, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;)V

    iput-object v2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->notifyLocationChecked:Ljava/lang/Runnable;

    .line 3004
    iput v1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastDialogType:I

    .line 3005
    iput v3, p0, Lorg/telegram/ui/web/BotWebViewContainer;->shownDialogsCount:I

    .line 5137
    sget v2, Lorg/telegram/ui/web/BotWebViewContainer;->tags:I

    add-int/lit8 v4, v2, 0x1

    sput v4, Lorg/telegram/ui/web/BotWebViewContainer;->tags:I

    iput v2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->tag:I

    .line 253
    iput-boolean p4, p0, Lorg/telegram/ui/web/BotWebViewContainer;->bot:Z

    .line 254
    iput-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 256
    const-string p2, "created new webview container"

    invoke-virtual {p0, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->d(Ljava/lang/String;)V

    .line 258
    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_0

    .line 259
    move-object p2, p1

    check-cast p2, Landroid/app/Activity;

    iput-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->parentActivity:Landroid/app/Activity;

    .line 262
    :cond_0
    iput-boolean v3, v0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->drawFrame:Z

    const/16 p2, 0x99

    const/16 p4, 0xcc

    .line 263
    invoke-virtual {v0, p3, p2, p4}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->setColors(III)V

    .line 264
    new-instance p2, Lorg/telegram/ui/web/BotWebViewContainer$1;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer$1;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    .line 294
    new-instance p3, Landroid/graphics/PorterDuffColorFilter;

    sget p4, Lorg/telegram/ui/ActionBar/Theme;->key_bot_loadingIcon:I

    invoke-direct {p0, p4}, Lorg/telegram/ui/web/BotWebViewContainer;->getColor(I)I

    move-result p4

    iput p4, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerViewColor:I

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, p4, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/BackupImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 295
    iget-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lorg/telegram/messenger/ImageReceiver;->setAspectFit(Z)V

    .line 296
    iget-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 p4, 0x30

    const/4 v0, -0x2

    invoke-static {v1, v0, p4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p4

    invoke-virtual {p0, p2, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 298
    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webViewNotAvailableText:Landroid/widget/TextView;

    .line 299
    sget p1, Lorg/telegram/messenger/R$string;->BotWebViewNotAvailablePlaceholder:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webViewNotAvailableText:Landroid/widget/TextView;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-direct {p0, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 301
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webViewNotAvailableText:Landroid/widget/TextView;

    const/high16 p2, 0x41700000    # 15.0f

    invoke-virtual {p1, p3, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 302
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webViewNotAvailableText:Landroid/widget/TextView;

    const/16 p2, 0x11

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 303
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webViewNotAvailableText:Landroid/widget/TextView;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    const/high16 p1, 0x41800000    # 16.0f

    .line 304
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    .line 305
    iget-object p3, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webViewNotAvailableText:Landroid/widget/TextView;

    invoke-virtual {p3, p1, p1, p1, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 306
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webViewNotAvailableText:Landroid/widget/TextView;

    invoke-static {v1, v0, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 308
    invoke-virtual {p0, v3}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method

.method private buildThemeParams()Lorg/json/JSONObject;
    .locals 3

    .line 3078
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->makeThemeParams(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3080
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v2, "theme_params"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3083
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3085
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method

.method private static capitalizeFirst(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    .line 384
    const-string p0, ""

    return-object p0

    .line 385
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 386
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private checkPermissions([Ljava/lang/String;)Z
    .locals 5

    .line 700
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 701
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private clearStorageKey(Lorg/telegram/ui/bots/BotStorage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 2907
    const-string v0, "error"

    const-string v1, "req_id"

    if-eqz p1, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v2, :cond_0

    goto :goto_0

    .line 2911
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2912
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2921
    :try_start_1
    invoke-virtual {p1}, Lorg/telegram/ui/bots/BotStorage;->clear()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2926
    invoke-static {v1, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :catch_0
    move-exception p1

    .line 2923
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p2, v0, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, p4, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :catch_1
    move-exception p1

    .line 2914
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2915
    const-string p1, ""

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 2916
    const-string p2, "UNKNOWN_ERROR"

    invoke-static {v1, p1, v0, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, p4, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private createBiometry()V
    .locals 4

    .line 2963
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v0, :cond_0

    return-void

    .line 2966
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->biometry:Lorg/telegram/ui/bots/BotBiometry;

    if-nez v0, :cond_1

    .line 2967
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    iget-object v2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/bots/BotBiometry;->get(Landroid/content/Context;IJ)Lorg/telegram/ui/bots/BotBiometry;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->biometry:Lorg/telegram/ui/bots/BotBiometry;

    return-void

    .line 2969
    :cond_1
    invoke-virtual {v0}, Lorg/telegram/ui/bots/BotBiometry;->load()V

    return-void
.end method

.method private error(Ljava/lang/String;)V
    .locals 2

    .line 2997
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$raw;->error:I

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private getColor(I)I
    .locals 1

    .line 3089
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    .line 3090
    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(I)I

    move-result p1

    return p1

    .line 3092
    :cond_0
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    return p1
.end method

.method public static getMainButtonRippleColor(I)I
    .locals 4

    .line 566
    invoke-static {p0}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v0

    const-wide v2, 0x3fd3333340000000L    # 0.30000001192092896

    cmpl-double p0, v0, v2

    if-ltz p0, :cond_0

    const/high16 p0, 0x12000000

    return p0

    :cond_0
    const p0, 0x16ffffff

    return p0
.end method

.method public static getMainButtonRippleDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 570
    invoke-static {p0}, Lorg/telegram/ui/web/BotWebViewContainer;->getMainButtonRippleColor(I)I

    move-result v0

    invoke-static {p0, v0}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorWithBackgroundDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private getStorageKey(Lorg/telegram/ui/bots/BotStorage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 2816
    const-string v0, "KEY_INVALID"

    const-string v1, "error"

    const-string v2, "req_id"

    if-eqz p1, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v3, :cond_0

    goto :goto_1

    .line 2820
    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2821
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 2831
    :try_start_1
    const-string p2, "key"

    invoke-virtual {v3, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez p2, :cond_1

    .line 2837
    invoke-static {v2, v5, v1, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, p4, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 2841
    :cond_1
    :try_start_2
    invoke-virtual {p1, p2}, Lorg/telegram/ui/bots/BotStorage;->getKey(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p2

    .line 2842
    iget-boolean p1, p1, Lorg/telegram/ui/bots/BotStorage;->secured:Z

    if-eqz p1, :cond_2

    iget-object v7, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-nez v7, :cond_2

    .line 2843
    const-string v4, "req_id"

    const-string/jumbo v6, "value"

    const-string v8, "can_restore"

    iget-object v9, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static/range {v4 .. v9}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .line 2845
    :cond_2
    const-string/jumbo p1, "value"

    iget-object p2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v2, v5, p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    .line 2848
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v5, v1, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, p4, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 2833
    :catch_1
    invoke-static {v2, v5, v1, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, p4, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :catch_2
    move-exception v0

    move-object p1, v0

    .line 2823
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2824
    const-string p1, ""

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 2825
    const-string p2, "UNKNOWN_ERROR"

    invoke-static {v2, p1, v1, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, p4, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private ignoreDialog(I)Z
    .locals 7

    .line 3009
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->currentDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 3012
    :cond_0
    iget-wide v2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->blockedDialogsUntil:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/telegram/ui/web/BotWebViewContainer;->blockedDialogsUntil:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    return v1

    .line 3015
    :cond_1
    iget v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastDialogType:I

    const/4 v2, 0x0

    if-ne v0, p1, :cond_2

    iget p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->shownDialogsCount:I

    const/4 v0, 0x3

    if-le p1, v0, :cond_2

    .line 3016
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0xbb8

    add-long/2addr v3, v5

    iput-wide v3, p0, Lorg/telegram/ui/web/BotWebViewContainer;->blockedDialogsUntil:J

    .line 3017
    iput v2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->shownDialogsCount:I

    return v1

    :cond_2
    return v2
.end method

.method public static isTonsite(Landroid/net/Uri;)Z
    .locals 3

    .line 3434
    const-string/jumbo v0, "tonsite"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 3437
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3438
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 3439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_3

    .line 3441
    const-string p0, ".ton"

    invoke-virtual {v0, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, ".adnl"

    invoke-virtual {v0, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static isTonsite(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 3430
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/ui/web/BotWebViewContainer;->isTonsite(Landroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isVerifyingAge()Z
    .locals 1

    .line 5228
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->onVerifiedAge:Lorg/telegram/messenger/Utilities$Callback4;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private synthetic lambda$evaluateJs$3(ZLjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1121
    invoke-virtual {p0}, Lorg/telegram/ui/web/BotWebViewContainer;->checkCreateWebView()V

    .line 1123
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    if-nez p1, :cond_1

    return-void

    .line 1126
    :cond_1
    invoke-virtual {p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->evaluateJS(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$loadUrl$2(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 1021
    iput-boolean v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->isPageLoaded:Z

    const-wide/16 v1, 0x0

    .line 1022
    iput-wide v1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastClickMs:J

    .line 1023
    iput-boolean v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->hasUserPermissions:Z

    .line 1024
    iput-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->mUrl:Ljava/lang/String;

    .line 1025
    invoke-virtual {p0}, Lorg/telegram/ui/web/BotWebViewContainer;->checkCreateWebView()V

    .line 1026
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    if-eqz v0, :cond_0

    .line 1027
    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->onResume()V

    .line 1028
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->loadUrl(Ljava/lang/String;)V

    .line 1030
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/web/BotWebViewContainer;->updateKeyboardFocusable()V

    return-void
.end method

.method private synthetic lambda$new$51()V
    .locals 2

    .line 3001
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->location:Lorg/telegram/ui/bots/BotLocation;

    invoke-virtual {v0}, Lorg/telegram/ui/bots/BotLocation;->checkObject()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "location_checked"

    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private synthetic lambda$onEventReceived$10(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1545
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1546
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string p2, "popup_closed"

    invoke-virtual {p0, p2, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_0
    const/4 p1, 0x0

    .line 1548
    iput-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->currentDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 1549
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastDialogClosed:J

    return-void
.end method

.method private synthetic lambda$onEventReceived$11(Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceSlug;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1807
    const-string p1, "failed"

    invoke-virtual {p0, p2, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->onInvoiceStatusUpdate(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1809
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    invoke-interface {p1, p3, p2, p4}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onWebAppOpenInvoice(Lorg/telegram/tgnet/TLRPC$InputInvoice;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method private synthetic lambda$onEventReceived$12(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceSlug;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    .line 1805
    new-instance v0, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda39;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v2, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda39;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceSlug;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onEventReceived$13(Lorg/telegram/tgnet/TLObject;[Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1930
    const-string v0, "allowed"

    const/4 v1, 0x0

    aput-object v0, p2, v1

    .line 1931
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$Updates;

    if-eqz p2, :cond_0

    .line 1932
    iget p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Updates;

    invoke-virtual {p2, p1, v1}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    :cond_0
    if-eqz p3, :cond_1

    .line 1936
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->unknownError(Ljava/lang/String;)V

    .line 1938
    :cond_1
    invoke-virtual {p4}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onEventReceived$14([Ljava/lang/String;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    .line 1928
    new-instance v0, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda52;

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    move-object v2, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda52;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;Lorg/telegram/tgnet/TLObject;[Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onEventReceived$15([Ljava/lang/String;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 2

    .line 1926
    new-instance p3, Lorg/telegram/tgnet/tl/TL_bots$allowSendMessage;

    invoke-direct {p3}, Lorg/telegram/tgnet/tl/TL_bots$allowSendMessage;-><init>()V

    .line 1927
    iget v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v0

    iput-object v0, p3, Lorg/telegram/tgnet/tl/TL_bots$allowSendMessage;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 1928
    iget v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda51;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda51;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;[Ljava/lang/String;Lorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-virtual {v0, p3, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private synthetic lambda$onEventReceived$18(Lorg/telegram/tgnet/TLObject;ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    .line 1907
    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    if-eqz p1, :cond_0

    .line 1909
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 1910
    const-string/jumbo p4, "status"

    const-string v0, "allowed"

    invoke-virtual {p1, p4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1911
    const-string/jumbo p4, "write_access_requested"

    invoke-static {p2, p3, p4, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1913
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    if-eqz p4, :cond_1

    .line 1917
    iget-object p1, p4, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->unknownError(Ljava/lang/String;)V

    return-void

    .line 1921
    :cond_1
    const-string p1, "cancelled"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 1922
    new-instance p4, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p4, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lorg/telegram/messenger/R$string;->BotWebViewRequestWriteTitle:I

    .line 1923
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p4

    sget v0, Lorg/telegram/messenger/R$string;->BotWebViewRequestWriteMessage:I

    .line 1924
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p4

    sget v0, Lorg/telegram/messenger/R$string;->BotWebViewRequestAllow:I

    .line 1925
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda45;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda45;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;[Ljava/lang/String;)V

    invoke-virtual {p4, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p4

    sget v0, Lorg/telegram/messenger/R$string;->BotWebViewRequestDontAllow:I

    .line 1941
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda46;

    invoke-direct {v1}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda46;-><init>()V

    invoke-virtual {p4, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p4

    .line 1944
    invoke-virtual {p4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p4

    new-instance v0, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda47;

    invoke-direct {v0, p1, p2, p3}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda47;-><init>([Ljava/lang/String;ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V

    const/4 p1, 0x3

    .line 1922
    invoke-direct {p0, p1, p4, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->showDialog(ILorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$onEventReceived$19(ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    .line 1906
    new-instance v0, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda43;

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v2, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda43;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;Lorg/telegram/tgnet/TLObject;ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onEventReceived$20(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V
    .locals 2

    .line 1987
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1988
    const-string v1, "req_id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1989
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    if-eqz p1, :cond_0

    .line 1990
    new-instance p1, Lorg/json/JSONTokener;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    invoke-direct {p1, p2}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object p1

    .line 1991
    const-string p2, "result"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    if-eqz p3, :cond_1

    .line 1993
    const-string p1, "error"

    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1995
    :cond_1
    :goto_0
    const-string p1, "custom_method_invoked"

    invoke-static {p4, p5, p1, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1997
    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1998
    invoke-direct {p0}, Lorg/telegram/ui/web/BotWebViewContainer;->unknownError()V

    return-void
.end method

.method private synthetic lambda$onEventReceived$21(Ljava/lang/String;ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    .line 1985
    new-instance v0, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda33;

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    move-object v6, p3

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda33;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onEventReceived$22(ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V
    .locals 12

    .line 2039
    iget v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    iget-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static/range {v2 .. v11}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Lorg/telegram/tgnet/TLRPC$User;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZII)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)V

    .line 2042
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2043
    const-string/jumbo v1, "status"

    const-string/jumbo v2, "sent"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2044
    const-string v1, "phone_requested"

    invoke-static {p1, p2, v1, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 2046
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$onEventReceived$23([Ljava/lang/String;ZILorg/telegram/ui/web/BotWebViewContainer$MyWebView;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 13

    move/from16 v0, p3

    move-object/from16 v1, p4

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2034
    aput-object v3, p1, v2

    .line 2035
    invoke-virtual/range {p5 .. p5}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    if-eqz p2, :cond_0

    .line 2038
    iget p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    new-instance v4, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda40;

    invoke-direct {v4, p0, v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda40;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V

    invoke-virtual {p1, v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->unblockPeer(JLjava/lang/Runnable;)V

    return-void

    .line 2050
    :cond_0
    iget p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object p1

    iget v2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    iget-object v2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static/range {v3 .. v12}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Lorg/telegram/tgnet/TLRPC$User;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZII)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)V

    .line 2053
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 2054
    const-string/jumbo v2, "status"

    const-string/jumbo v3, "sent"

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2055
    const-string v2, "phone_requested"

    invoke-static {v0, v1, v2, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 2057
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$onEventReceived$26()V
    .locals 2

    .line 2099
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->biometry:Lorg/telegram/ui/bots/BotBiometry;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/bots/BotBiometry;->access_requested:Z

    .line 2100
    invoke-virtual {v0}, Lorg/telegram/ui/bots/BotBiometry;->save()V

    .line 2101
    invoke-direct {p0}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyBiometryReceived()V

    return-void
.end method

.method private synthetic lambda$onEventReceived$27(Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 0

    .line 2118
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2119
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->biometry:Lorg/telegram/ui/bots/BotBiometry;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lorg/telegram/ui/bots/BotBiometry;->access_granted:Z

    .line 2120
    invoke-virtual {p1}, Lorg/telegram/ui/bots/BotBiometry;->save()V

    .line 2122
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyBiometryReceived()V

    return-void
.end method

.method private synthetic lambda$onEventReceived$28([Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 1

    const/4 p2, 0x0

    .line 2112
    aget-object p3, p1, p2

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 2113
    aput-object v0, p1, p2

    .line 2115
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->biometry:Lorg/telegram/ui/bots/BotBiometry;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lorg/telegram/ui/bots/BotBiometry;->access_requested:Z

    .line 2116
    invoke-virtual {p1}, Lorg/telegram/ui/bots/BotBiometry;->save()V

    .line 2117
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->biometry:Lorg/telegram/ui/bots/BotBiometry;

    new-instance p2, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda38;

    invoke-direct {p2, p0}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda38;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;)V

    invoke-virtual {p1, v0, p2}, Lorg/telegram/ui/bots/BotBiometry;->requestToken(Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback2;)V

    return-void
.end method

.method private synthetic lambda$onEventReceived$29([Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    const/4 p2, 0x0

    .line 2126
    aget-object p3, p1, p2

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    .line 2127
    aput-object p3, p1, p2

    .line 2129
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->biometry:Lorg/telegram/ui/bots/BotBiometry;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lorg/telegram/ui/bots/BotBiometry;->access_requested:Z

    .line 2130
    iput-boolean p2, p1, Lorg/telegram/ui/bots/BotBiometry;->disabled:Z

    .line 2131
    invoke-virtual {p1}, Lorg/telegram/ui/bots/BotBiometry;->save()V

    .line 2132
    invoke-direct {p0}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyBiometryReceived()V

    return-void
.end method

.method private synthetic lambda$onEventReceived$31(Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 2

    .line 2171
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2172
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->biometry:Lorg/telegram/ui/bots/BotBiometry;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/bots/BotBiometry;->access_granted:Z

    .line 2175
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2176
    const-string/jumbo v1, "status"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "authorized"

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    const-string p1, "failed"

    :goto_0
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2177
    const-string/jumbo p1, "token"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2178
    const-string p1, "biometry_auth_requested"

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 2180
    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$onEventReceived$32(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2

    .line 2219
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2220
    const-string/jumbo v1, "status"

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "removed"

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    const-string/jumbo p1, "updated"

    goto :goto_0

    :cond_1
    const-string p1, "failed"

    :goto_0
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2221
    const-string p1, "biometry_token_updated"

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 2223
    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$onEventReceived$33([ILjava/io/File;Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 24

    const/16 v18, 0x4

    .line 2313
    aget v0, p1, v18

    const/16 v19, 0x2

    const/4 v2, 0x0

    if-lez v0, :cond_4

    const/4 v0, 0x1

    .line 2315
    aget v3, p1, v0

    .line 2316
    aget v4, p1, v19

    .line 2318
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v0

    if-le v3, v0, :cond_0

    .line 2319
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v0

    move v15, v0

    goto :goto_0

    :cond_0
    move v15, v3

    .line 2321
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v0

    if-le v4, v0, :cond_1

    .line 2322
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v0

    move/from16 v16, v0

    goto :goto_1

    :cond_1
    move/from16 v16, v4

    .line 2324
    :goto_1
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    const-string v5, "jpg"

    invoke-static {v0, v5}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->makeCacheFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    move-object v5, v2

    .line 2325
    new-instance v2, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    sget v13, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    const/4 v14, 0x1

    const/16 v17, 0x0

    move v6, v4

    const/4 v4, 0x1

    move-object v8, v5

    move v7, v6

    const-wide/16 v5, 0x0

    move v9, v7

    const/4 v7, 0x0

    move-object v10, v8

    const/4 v8, 0x0

    move v11, v9

    const/4 v9, 0x0

    move-object v12, v10

    const/4 v10, 0x0

    move/from16 v20, v11

    move-object/from16 v21, v12

    const-wide/16 v11, 0x0

    move/from16 v22, v3

    move/from16 v23, v20

    move-object/from16 v1, v21

    move-object/from16 v3, p2

    invoke-direct/range {v2 .. v17}, Lorg/telegram/ui/Components/AnimatedFileDrawable;-><init>(Ljava/io/File;ZJILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;JIZIILorg/telegram/messenger/utils/BitmapsCache$CacheOptions;)V

    .line 2326
    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getFirstFrame(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 2327
    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->recycle()V

    if-eqz v4, :cond_2

    .line 2330
    :try_start_0
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v6, 0x50

    invoke-virtual {v4, v2, v6, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 2332
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move-object v2, v1

    goto :goto_3

    :cond_2
    :goto_2
    move-object v2, v0

    :goto_3
    if-nez v2, :cond_3

    move-object v2, v1

    goto :goto_4

    .line 2336
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    :goto_4
    aget v0, p1, v18

    int-to-long v4, v0

    invoke-static {v3, v2, v4, v5}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fromVideoShoot(Ljava/io/File;Ljava/lang/String;J)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    move/from16 v2, v22

    .line 2337
    iput v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    move/from16 v9, v23

    .line 2338
    iput v9, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    .line 2339
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->setupMatrix()V

    goto :goto_5

    :cond_4
    move-object/from16 v3, p2

    move-object v1, v2

    .line 2341
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getImageOrientation(Ljava/io/File;)Landroid/util/Pair;

    move-result-object v0

    .line 2342
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v3, v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fromPhotoShoot(Ljava/io/File;I)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    .line 2344
    :goto_5
    iget v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    const-wide/16 v3, 0x1f4

    if-lez v2, :cond_5

    iget v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    if-gtz v2, :cond_6

    :cond_5
    move-object/from16 v2, p0

    move-object/from16 v1, p3

    goto :goto_7

    :cond_6
    move-object/from16 v2, p4

    if-eqz v2, :cond_7

    .line 2349
    iput-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;

    .line 2351
    :cond_7
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    move-object/from16 v2, p0

    iget v5, v2, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 2352
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    if-nez v5, :cond_8

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    .line 2353
    :cond_8
    new-instance v5, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    invoke-direct {v5}, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;-><init>()V

    const/4 v6, 0x7

    .line 2354
    iput-byte v6, v5, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    const/4 v6, -0x1

    .line 2355
    iput-byte v6, v5, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    .line 2356
    iput v6, v5, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    .line 2357
    new-instance v6, Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;

    invoke-direct {v6}, Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;-><init>()V

    iput-object v6, v5, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->linkSettings:Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;

    move-object/from16 v7, p5

    .line 2358
    iput-object v7, v6, Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;->url:Ljava/lang/String;

    move-object/from16 v7, p6

    if-eqz v7, :cond_9

    .line 2360
    iget v8, v6, Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;->flags:I

    or-int/lit8 v8, v8, 0x2

    iput v8, v6, Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;->flags:I

    .line 2361
    iput-object v7, v6, Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;->name:Ljava/lang/String;

    .line 2363
    :cond_9
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_a
    move-object/from16 v2, p0

    .line 2365
    :cond_b
    :goto_6
    iget-object v5, v2, Lorg/telegram/ui/web/BotWebViewContainer;->parentActivity:Landroid/app/Activity;

    sget v6, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v5, v6}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getInstance(Landroid/app/Activity;I)Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    move-result-object v5

    .line 2366
    invoke-virtual {v5, v1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openRepost(Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    move-object/from16 v1, p3

    .line 2367
    invoke-virtual {v1, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismissUnless(J)V

    return-void

    .line 2345
    :goto_7
    invoke-virtual {v1, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismissUnless(J)V

    return-void
.end method

.method private synthetic lambda$onEventReceived$35(Ljava/io/File;Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    if-nez p1, :cond_0

    const-wide/16 p3, 0x1f4

    .line 2307
    invoke-virtual {p2, p3, p4}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismissUnless(J)V

    return-void

    :cond_0
    const/16 v0, 0xb

    .line 2310
    new-array v3, v0, [I

    .line 2311
    new-instance v1, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda49;

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda49;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;[ILjava/io/File;Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2369
    sget-object p1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance p2, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda50;

    invoke-direct {p2, v4, v3, v1}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda50;-><init>(Ljava/io/File;[ILjava/lang/Runnable;)V

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$onEventReceived$36(Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 7

    .line 2305
    new-instance v0, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda41;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v2, p5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda41;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;Ljava/io/File;Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onEventReceived$37(Ljava/lang/Boolean;)V
    .locals 1

    .line 2483
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2484
    const-string p1, "home_screen_added"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 2486
    :cond_0
    const-string p1, "error"

    const-string v0, "UNSUPPORTED"

    invoke-static {p1, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "home_screen_failed"

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private synthetic lambda$onEventReceived$38(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 1

    if-nez p1, :cond_1

    .line 2516
    const-string p1, "emoji_status_set"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 2517
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    if-eqz p1, :cond_0

    .line 2518
    invoke-interface {p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onEmojiStatusSet(Lorg/telegram/tgnet/TLRPC$Document;)V

    :cond_0
    return-void

    .line 2521
    :cond_1
    const-string p2, "error"

    invoke-static {p2, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "emoji_status_failed"

    invoke-virtual {p0, p2, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private synthetic lambda$onEventReceived$39(Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 0

    .line 2531
    invoke-virtual {p0, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEmojiStatusAccess(Ljava/lang/String;)V

    .line 2532
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "allowed"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 2533
    invoke-interface {p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onEmojiStatusGranted(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onEventReceived$40(Lorg/json/JSONObject;)V
    .locals 1

    .line 2560
    const-string v0, "location_requested"

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private synthetic lambda$onEventReceived$41(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 1

    .line 2556
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2557
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onLocationGranted(Z)V

    .line 2559
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->location:Lorg/telegram/ui/bots/BotLocation;

    new-instance p2, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda37;

    invoke-direct {p2, p0}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda37;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/bots/BotLocation;->requestObject(Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method private synthetic lambda$onEventReceived$42(Lorg/json/JSONObject;)V
    .locals 1

    .line 2565
    const-string v0, "location_requested"

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private synthetic lambda$onEventReceived$43(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2

    .line 2632
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const-string/jumbo v0, "status"

    const-string v1, "file_download_requested"

    if-nez p3, :cond_0

    .line 2633
    const-string p1, "cancelled"

    invoke-static {v0, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 2637
    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/web/BotWebViewContainer;->downloads:Lorg/telegram/ui/bots/BotDownloads;

    invoke-virtual {p3, p1, p2}, Lorg/telegram/ui/bots/BotDownloads;->download(Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/ui/bots/BotDownloads$FileDownload;

    .line 2638
    const-string p1, "downloading"

    invoke-static {v0, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private synthetic lambda$onEventReceived$44(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2627
    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    if-nez p1, :cond_0

    .line 2628
    const-string/jumbo p1, "status"

    const-string p2, "cancelled"

    invoke-static {p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "file_download_requested"

    invoke-virtual {p0, p2, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 2631
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda48;

    invoke-direct {v1, p0, p2, p3}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda48;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2, p3, v0, v1}, Lorg/telegram/ui/bots/BotDownloads;->showAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method private synthetic lambda$onEventReceived$45(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 2626
    new-instance p4, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda31;

    invoke-direct {p4, p0, p3, p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onEventReceived$46()V
    .locals 1

    .line 2663
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    if-eqz v0, :cond_0

    .line 2664
    invoke-interface {v0}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onCloseToTabs()V

    .line 2666
    :cond_0
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->dismissAllWeb()V

    return-void
.end method

.method private synthetic lambda$onEventReceived$48(Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2

    .line 2668
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2669
    const-string p2, "prepared_message_sent"

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 2670
    iget-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    if-eqz p2, :cond_0

    .line 2671
    invoke-interface {p2}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onOpenBackFromTabs()V

    .line 2673
    :cond_0
    new-instance p2, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda32;

    invoke-direct {p2, p1, p3}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda32;-><init>(Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;Ljava/util/ArrayList;)V

    const-wide/16 v0, 0x1f4

    invoke-static {p2, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    .line 2679
    :cond_1
    const-string p1, "error"

    invoke-static {p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "prepared_message_failed"

    invoke-virtual {p0, p2, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private synthetic lambda$onEventReceived$49(ZDLjava/lang/String;D)V
    .locals 1

    .line 2762
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->onVerifiedAge:Lorg/telegram/messenger/Utilities$Callback4;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-interface {v0, p1, p2, p4, p3}, Lorg/telegram/messenger/Utilities$Callback4;->run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$onEventReceived$7(Lorg/telegram/ui/web/BotWebViewContainer$PopupButton;Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 1

    .line 1506
    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 1508
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    iput-wide p3, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastClickMs:J

    .line 1509
    const-string p3, "popup_closed"

    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "button_id"

    iget-object p1, p1, Lorg/telegram/ui/web/BotWebViewContainer$PopupButton;->id:Ljava/lang/String;

    invoke-virtual {p4, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    .line 1510
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1512
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$onEventReceived$8(Lorg/telegram/ui/web/BotWebViewContainer$PopupButton;Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 1

    .line 1520
    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 1522
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    iput-wide p3, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastClickMs:J

    .line 1523
    const-string p3, "popup_closed"

    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "button_id"

    iget-object p1, p1, Lorg/telegram/ui/web/BotWebViewContainer$PopupButton;->id:Ljava/lang/String;

    invoke-virtual {p4, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    .line 1524
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1526
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$onEventReceived$9(Lorg/telegram/ui/web/BotWebViewContainer$PopupButton;Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 1

    .line 1534
    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 1536
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    iput-wide p3, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastClickMs:J

    .line 1537
    const-string p3, "popup_closed"

    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "button_id"

    iget-object p1, p1, Lorg/telegram/ui/web/BotWebViewContainer$PopupButton;->id:Ljava/lang/String;

    invoke-virtual {p4, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    .line 1538
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1540
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$onWebEventReceived$5(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;)V
    .locals 19

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    if-eqz v0, :cond_2

    .line 1277
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;

    if-eqz v1, :cond_0

    .line 1278
    iget v1, v8, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    move-object v3, v0

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v2, p2

    invoke-static/range {v0 .. v8}, Lorg/telegram/ui/OAuthSheet;->handle(ZILorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;Lorg/telegram/tgnet/TLRPC$UrlAuthResult;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$UrlAuthResult;Ljava/lang/String;ZLorg/telegram/ui/web/BotWebViewContainer;)V

    return-void

    .line 1279
    :cond_0
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultAccepted;

    if-eqz v1, :cond_1

    .line 1280
    iget v1, v8, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    move-object v3, v0

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultAccepted;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v2, p2

    invoke-static/range {v0 .. v8}, Lorg/telegram/ui/OAuthSheet;->handle(ZILorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;Lorg/telegram/tgnet/TLRPC$UrlAuthResult;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$UrlAuthResult;Ljava/lang/String;ZLorg/telegram/ui/web/BotWebViewContainer;)V

    return-void

    .line 1281
    :cond_1
    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultDefault;

    if-eqz v0, :cond_4

    .line 1282
    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    move-object/from16 v10, p3

    invoke-static/range {v9 .. v18}, Lorg/telegram/ui/Components/AlertsCreator;->showOpenUrlAlert(Landroid/content/Context;Ljava/lang/String;ZZZZJLorg/telegram/messenger/browser/Browser$Progress;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void

    :cond_2
    if-eqz v1, :cond_4

    .line 1285
    const-string v0, "URL_EXPIRED"

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1286
    iget-object v0, v8, Lorg/telegram/ui/web/BotWebViewContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v8, v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$raw;->error:I

    sget v2, Lorg/telegram/messenger/R$string;->BotAuthLoggedInFailTitle:I

    .line 1287
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->BotAuthLoggedInFail:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p5, v4, v5

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_undo_cancelColor:I

    iget-object v5, v8, Lorg/telegram/ui/web/BotWebViewContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-static {v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleLinkBold(Ljava/lang/String;I)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    .line 1288
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    .line 1290
    :cond_3
    iget-object v0, v8, Lorg/telegram/ui/web/BotWebViewContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v8, v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->showForError(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    :cond_4
    return-void
.end method

.method private synthetic lambda$onWebEventReceived$6(Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    .line 1275
    new-instance v0, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda36;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    move-object v2, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda36;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$reload$1()V
    .locals 4

    .line 995
    iget-boolean v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->isSettingsButtonVisible:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 996
    iput-boolean v1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->isSettingsButtonVisible:Z

    .line 997
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    if-eqz v0, :cond_0

    .line 998
    invoke-interface {v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onSetSettingsButtonVisible(Z)V

    .line 1002
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/web/BotWebViewContainer;->checkCreateWebView()V

    .line 1003
    iput-boolean v1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->isPageLoaded:Z

    const-wide/16 v2, 0x0

    .line 1004
    iput-wide v2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastClickMs:J

    .line 1005
    iput-boolean v1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->hasUserPermissions:Z

    .line 1006
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    if-eqz v0, :cond_1

    .line 1007
    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->onResume()V

    .line 1008
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->reload()V

    .line 1010
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/web/BotWebViewContainer;->updateKeyboardFocusable()V

    .line 1012
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->sensors:Lorg/telegram/ui/bots/BotSensors;

    if-eqz v0, :cond_2

    .line 1013
    invoke-virtual {v0}, Lorg/telegram/ui/bots/BotSensors;->stopAll()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$restoreStorageKey$50(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/ui/bots/BotStorage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2890
    const-string v0, "error"

    const-string v1, "req_id"

    if-nez p6, :cond_0

    .line 2891
    const-string p3, "RESTORE_CANCELLED"

    invoke-static {v1, p2, v0, p3}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 2896
    :cond_0
    :try_start_0
    invoke-virtual {p3, p6}, Lorg/telegram/ui/bots/BotStorage;->restoreFrom(Ljava/lang/String;)V

    .line 2897
    invoke-virtual {p3, p4}, Lorg/telegram/ui/bots/BotStorage;->getKey(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p3

    iget-object p3, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2902
    const-string/jumbo p1, "value"

    invoke-static {v1, p2, p1, p3}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, p5, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :catch_0
    move-exception p3

    .line 2899
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p2, v0, p3}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private synthetic lambda$runWithPermissions$0(Landroidx/core/util/Consumer;[Ljava/lang/String;)V
    .locals 0

    .line 681
    invoke-direct {p0, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->checkPermissions([Ljava/lang/String;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$showDialog$52(Ljava/lang/Runnable;Landroid/content/DialogInterface;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 3029
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    const/4 p1, 0x0

    .line 3031
    iput-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->currentDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void
.end method

.method public static magic2tonsite(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 5161
    sget-object v0, Lorg/telegram/ui/web/BotWebViewContainer;->rotatedTONHosts:Ljava/util/HashMap;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    :goto_0
    return-object p0

    .line 5163
    :cond_1
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->getHostAuthority(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 5164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->tonProxyAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 5167
    :cond_2
    sget-object v1, Lorg/telegram/ui/web/BotWebViewContainer;->rotatedTONHosts:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_3

    goto :goto_1

    .line 5169
    :cond_3
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string/jumbo v1, "tonsite"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0, v2}, Lorg/telegram/messenger/browser/Browser;->replace(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_4
    :goto_1
    return-object p0
.end method

.method private notifyBiometryReceived()V
    .locals 2

    .line 2974
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2977
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/web/BotWebViewContainer;->createBiometry()V

    .line 2978
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->biometry:Lorg/telegram/ui/bots/BotBiometry;

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 2982
    :cond_1
    :try_start_0
    const-string v1, "biometry_info_received"

    invoke-virtual {v0}, Lorg/telegram/ui/bots/BotBiometry;->getStatus()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2984
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static notifyEvent(ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1173
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    new-instance v0, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda34;

    invoke-direct {v0, p1, p2, p3}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda34;-><init>(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/NotificationCenter;->doOnIdle(Ljava/lang/Runnable;)V

    return-void
.end method

.method private notifyEvent_fast(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1163
    const-string/jumbo v1, "window.Telegram.WebView.receiveEvent(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1164
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1165
    const-string p1, "\', "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1166
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1167
    const-string p1, ");"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1168
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->evaluateJs(Ljava/lang/String;Z)V

    return-void
.end method

.method public static obj()Lorg/json/JSONObject;
    .locals 1

    .line 5174
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static obj(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 1

    .line 5182
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 5183
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static obj(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 1

    .line 5192
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 5193
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5194
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static obj(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 1

    .line 5203
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 5204
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5205
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5206
    invoke-virtual {v0, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static obj(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 1

    .line 5215
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 5216
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5217
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5218
    invoke-virtual {v0, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5219
    invoke-virtual {v0, p6, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private onEventReceived(Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;Ljava/lang/String;Ljava/lang/String;)V
    .locals 43

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    .line 1327
    const-string v3, "prepared_message_failed"

    iget-boolean v4, v1, Lorg/telegram/ui/web/BotWebViewContainer;->bot:Z

    if-nez v4, :cond_0

    goto/16 :goto_3d

    .line 1330
    :cond_0
    iget-object v4, v1, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    const-string v5, "onEventReceived "

    if-eqz v4, :cond_b1

    iget-object v4, v1, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    if-nez v4, :cond_1

    goto/16 :goto_3e

    .line 1334
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/web/BotWebViewContainer;->d(Ljava/lang/String;)V

    .line 1335
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :goto_0
    const/4 v4, -0x1

    goto/16 :goto_1

    :sswitch_0
    const-string/jumbo v4, "web_app_expand"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    const/16 v4, 0x3e

    goto/16 :goto_1

    :sswitch_1
    const-string/jumbo v4, "web_app_request_write_access"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    const/16 v4, 0x3d

    goto/16 :goto_1

    :sswitch_2
    const-string/jumbo v4, "web_app_set_background_color"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    const/16 v4, 0x3c

    goto/16 :goto_1

    :sswitch_3
    const-string/jumbo v4, "web_app_request_safe_area"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_0

    :cond_5
    const/16 v4, 0x3b

    goto/16 :goto_1

    :sswitch_4
    const-string/jumbo v4, "web_app_set_header_color"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_0

    :cond_6
    const/16 v4, 0x3a

    goto/16 :goto_1

    :sswitch_5
    const-string/jumbo v4, "web_app_set_bottom_bar_color"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_0

    :cond_7
    const/16 v4, 0x39

    goto/16 :goto_1

    :sswitch_6
    const-string/jumbo v4, "web_app_biometry_update_token"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_0

    :cond_8
    const/16 v4, 0x38

    goto/16 :goto_1

    :sswitch_7
    const-string/jumbo v4, "web_app_start_device_orientation"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_0

    :cond_9
    const/16 v4, 0x37

    goto/16 :goto_1

    :sswitch_8
    const-string/jumbo v4, "web_app_check_home_screen"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    goto :goto_0

    :cond_a
    const/16 v4, 0x36

    goto/16 :goto_1

    :sswitch_9
    const-string/jumbo v4, "web_app_setup_settings_button"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v4, 0x35

    goto/16 :goto_1

    :sswitch_a
    const-string/jumbo v4, "web_app_setup_swipe_behavior"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v4, 0x34

    goto/16 :goto_1

    :sswitch_b
    const-string/jumbo v4, "web_app_setup_main_button"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v4, 0x33

    goto/16 :goto_1

    :sswitch_c
    const-string/jumbo v4, "web_app_trigger_haptic_feedback"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v4, 0x32

    goto/16 :goto_1

    :sswitch_d
    const-string/jumbo v4, "web_app_biometry_request_access"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v4, 0x31

    goto/16 :goto_1

    :sswitch_e
    const-string/jumbo v4, "web_app_setup_back_button"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v4, 0x30

    goto/16 :goto_1

    :sswitch_f
    const-string/jumbo v4, "web_app_open_location_settings"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v4, 0x2f

    goto/16 :goto_1

    :sswitch_10
    const-string/jumbo v4, "web_app_verify_age"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v4, 0x2e

    goto/16 :goto_1

    :sswitch_11
    const-string/jumbo v4, "web_app_exit_fullscreen"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v4, 0x2d

    goto/16 :goto_1

    :sswitch_12
    const-string/jumbo v4, "web_app_secure_storage_save_key"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v4, 0x2c

    goto/16 :goto_1

    :sswitch_13
    const-string/jumbo v4, "web_app_switch_inline_query"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v4, 0x2b

    goto/16 :goto_1

    :sswitch_14
    const-string/jumbo v4, "web_app_request_fullscreen"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v4, 0x2a

    goto/16 :goto_1

    :sswitch_15
    const-string/jumbo v4, "web_app_add_to_home_screen"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v4, 0x29

    goto/16 :goto_1

    :sswitch_16
    const-string/jumbo v4, "web_app_request_content_safe_area"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v4, 0x28

    goto/16 :goto_1

    :sswitch_17
    const-string/jumbo v4, "web_app_data_send"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v4, 0x27

    goto/16 :goto_1

    :sswitch_18
    const-string/jumbo v4, "web_app_send_prepared_message"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v4, 0x26

    goto/16 :goto_1

    :sswitch_19
    const-string/jumbo v4, "web_app_stop_accelerometer"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v4, 0x25

    goto/16 :goto_1

    :sswitch_1a
    const-string/jumbo v4, "web_app_start_accelerometer"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v4, 0x24

    goto/16 :goto_1

    :sswitch_1b
    const-string/jumbo v4, "web_app_device_storage_clear"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/16 v4, 0x23

    goto/16 :goto_1

    :sswitch_1c
    const-string/jumbo v4, "web_app_secure_storage_clear"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/16 v4, 0x22

    goto/16 :goto_1

    :sswitch_1d
    const-string/jumbo v4, "web_app_stop_gyroscope"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    goto/16 :goto_0

    :cond_1f
    const/16 v4, 0x21

    goto/16 :goto_1

    :sswitch_1e
    const-string/jumbo v4, "web_app_hide_keyboard"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20

    goto/16 :goto_0

    :cond_20
    const/16 v4, 0x20

    goto/16 :goto_1

    :sswitch_1f
    const-string/jumbo v4, "web_app_read_text_from_clipboard"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_21

    goto/16 :goto_0

    :cond_21
    const/16 v4, 0x1f

    goto/16 :goto_1

    :sswitch_20
    const-string/jumbo v4, "web_app_ready"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22

    goto/16 :goto_0

    :cond_22
    const/16 v4, 0x1e

    goto/16 :goto_1

    :sswitch_21
    const-string/jumbo v4, "web_app_close"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    goto/16 :goto_0

    :cond_23
    const/16 v4, 0x1d

    goto/16 :goto_1

    :sswitch_22
    const-string/jumbo v4, "web_app_start_gyroscope"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_24

    goto/16 :goto_0

    :cond_24
    const/16 v4, 0x1c

    goto/16 :goto_1

    :sswitch_23
    const-string/jumbo v4, "web_app_request_location"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_25

    goto/16 :goto_0

    :cond_25
    const/16 v4, 0x1b

    goto/16 :goto_1

    :sswitch_24
    const-string/jumbo v4, "web_app_share_to_story"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_26

    goto/16 :goto_0

    :cond_26
    const/16 v4, 0x1a

    goto/16 :goto_1

    :sswitch_25
    const-string/jumbo v4, "web_app_secure_storage_restore_key"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27

    goto/16 :goto_0

    :cond_27
    const/16 v4, 0x19

    goto/16 :goto_1

    :sswitch_26
    const-string/jumbo v4, "web_app_open_tg_link"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_28

    goto/16 :goto_0

    :cond_28
    const/16 v4, 0x18

    goto/16 :goto_1

    :sswitch_27
    const-string/jumbo v4, "web_app_allow_scroll"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_29

    goto/16 :goto_0

    :cond_29
    const/16 v4, 0x17

    goto/16 :goto_1

    :sswitch_28
    const-string/jumbo v4, "web_app_toggle_orientation_lock"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2a

    goto/16 :goto_0

    :cond_2a
    const/16 v4, 0x16

    goto/16 :goto_1

    :sswitch_29
    const-string/jumbo v4, "web_app_biometry_request_auth"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2b

    goto/16 :goto_0

    :cond_2b
    const/16 v4, 0x15

    goto/16 :goto_1

    :sswitch_2a
    const-string/jumbo v4, "web_app_device_storage_get_key"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2c

    goto/16 :goto_0

    :cond_2c
    const/16 v4, 0x14

    goto/16 :goto_1

    :sswitch_2b
    const-string/jumbo v4, "web_app_device_storage_save_key"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2d

    goto/16 :goto_0

    :cond_2d
    const/16 v4, 0x13

    goto/16 :goto_1

    :sswitch_2c
    const-string/jumbo v4, "web_app_stop_device_orientation"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2e

    goto/16 :goto_0

    :cond_2e
    const/16 v4, 0x12

    goto/16 :goto_1

    :sswitch_2d
    const-string/jumbo v4, "web_app_request_emoji_status_access"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2f

    goto/16 :goto_0

    :cond_2f
    const/16 v4, 0x11

    goto/16 :goto_1

    :sswitch_2e
    const-string/jumbo v4, "web_app_request_viewport"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_30

    goto/16 :goto_0

    :cond_30
    const/16 v4, 0x10

    goto/16 :goto_1

    :sswitch_2f
    const-string/jumbo v4, "web_app_biometry_open_settings"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_31

    goto/16 :goto_0

    :cond_31
    const/16 v4, 0xf

    goto/16 :goto_1

    :sswitch_30
    const-string/jumbo v4, "web_app_check_location"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_32

    goto/16 :goto_0

    :cond_32
    const/16 v4, 0xe

    goto/16 :goto_1

    :sswitch_31
    const-string/jumbo v4, "web_app_secure_storage_get_key"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_33

    goto/16 :goto_0

    :cond_33
    const/16 v4, 0xd

    goto/16 :goto_1

    :sswitch_32
    const-string/jumbo v4, "web_app_request_theme"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_34

    goto/16 :goto_0

    :cond_34
    const/16 v4, 0xc

    goto/16 :goto_1

    :sswitch_33
    const-string/jumbo v4, "web_app_request_phone"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_35

    goto/16 :goto_0

    :cond_35
    const/16 v4, 0xb

    goto/16 :goto_1

    :sswitch_34
    const-string/jumbo v4, "web_app_open_scan_qr_popup"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_36

    goto/16 :goto_0

    :cond_36
    const/16 v4, 0xa

    goto/16 :goto_1

    :sswitch_35
    const-string/jumbo v4, "web_app_setup_closing_behavior"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_37

    goto/16 :goto_0

    :cond_37
    const/16 v4, 0x9

    goto/16 :goto_1

    :sswitch_36
    const-string/jumbo v4, "web_app_setup_secondary_button"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_38

    goto/16 :goto_0

    :cond_38
    const/16 v4, 0x8

    goto/16 :goto_1

    :sswitch_37
    const-string/jumbo v4, "web_app_set_emoji_status"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    goto/16 :goto_0

    :cond_39
    const/4 v4, 0x7

    goto :goto_1

    :sswitch_38
    const-string/jumbo v4, "web_app_open_invoice"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3a

    goto/16 :goto_0

    :cond_3a
    const/4 v4, 0x6

    goto :goto_1

    :sswitch_39
    const-string/jumbo v4, "web_app_open_popup"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3b

    goto/16 :goto_0

    :cond_3b
    const/4 v4, 0x5

    goto :goto_1

    :sswitch_3a
    const-string/jumbo v4, "web_app_request_file_download"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3c

    goto/16 :goto_0

    :cond_3c
    const/4 v4, 0x4

    goto :goto_1

    :sswitch_3b
    const-string/jumbo v4, "web_app_open_link"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3d

    goto/16 :goto_0

    :cond_3d
    const/4 v4, 0x3

    goto :goto_1

    :sswitch_3c
    const-string/jumbo v4, "web_app_biometry_get_info"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3e

    goto/16 :goto_0

    :cond_3e
    const/4 v4, 0x2

    goto :goto_1

    :sswitch_3d
    const-string/jumbo v4, "web_app_close_scan_qr_popup"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3f

    goto/16 :goto_0

    :cond_3f
    const/4 v4, 0x1

    goto :goto_1

    :sswitch_3e
    const-string/jumbo v4, "web_app_invoke_custom_method"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_40

    goto/16 :goto_0

    :cond_40
    const/4 v4, 0x0

    .line 2768
    :goto_1
    const-string v13, "data"

    const-string v14, "fullscreen_failed"

    const-string v15, "is_fullscreen"

    const-string v9, "fullscreen_changed"

    const-string v7, "icon_custom_emoji_id"

    const-string v6, "has_shine_effect"

    const-string v5, "is_progress_visible"

    const-string v11, "is_active"

    const-string v8, "device_orientation_failed"

    const-string v12, "JSON Parse error"

    const-string v10, "failed"

    move/from16 v24, v4

    const-string/jumbo v4, "url"

    move-object/from16 v25, v4

    const-string v4, "device_storage_failed"

    move-object/from16 v26, v4

    const-string/jumbo v4, "secure_storage_failed"

    move-object/from16 v27, v3

    const-string v3, "refresh_rate"

    const-wide/16 v28, 0x3e8

    move-object/from16 v30, v13

    const-string v13, "reason"

    move-object/from16 v31, v4

    const-string v4, "req_id"

    move-object/from16 v32, v4

    const-string/jumbo v4, "text_color"

    move-object/from16 v33, v14

    const-string/jumbo v14, "text"

    move-object/from16 v34, v9

    const-string v9, "is_visible"

    move-object/from16 v35, v15

    const-string v15, "cancelled"

    move-object/from16 v37, v6

    move-object/from16 v36, v7

    const-string v6, "UNSUPPORTED"

    const-string v7, "color"

    move-object/from16 v38, v5

    const-string/jumbo v5, "status"

    const-wide/16 v39, 0x2710

    move-object/from16 v41, v4

    const-string v4, "error"

    move-object/from16 v42, v14

    const/4 v14, 0x0

    packed-switch v24, :pswitch_data_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown webapp event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    return-void

    .line 1818
    :pswitch_0
    iget-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    invoke-interface {v0}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onWebAppExpand()V

    return-void

    :pswitch_1
    const/4 v2, 0x3

    .line 1891
    invoke-direct {v1, v2}, Lorg/telegram/ui/web/BotWebViewContainer;->ignoreDialog(I)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 1893
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1894
    invoke-virtual {v0, v5, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1895
    const-string/jumbo v2, "write_access_requested"

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1897
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void

    .line 1902
    :cond_41
    iget v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    .line 1903
    iget-object v2, v1, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    .line 1904
    new-instance v3, Lorg/telegram/tgnet/tl/TL_bots$canSendMessage;

    invoke-direct {v3}, Lorg/telegram/tgnet/tl/TL_bots$canSendMessage;-><init>()V

    .line 1905
    iget v4, v1, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v5, v1, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v4

    iput-object v4, v3, Lorg/telegram/tgnet/tl/TL_bots$canSendMessage;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 1906
    iget v4, v1, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda26;

    invoke-direct {v5, v1, v0, v2}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V

    invoke-virtual {v4, v3, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void

    .line 1605
    :pswitch_2
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1606
    iget-object v2, v1, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    const-string v3, "#ffffff"

    invoke-virtual {v0, v7, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const/high16 v3, -0x1000000

    or-int/2addr v0, v3

    invoke-interface {v2, v0}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onWebAppSetBackgroundColor(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    .line 1608
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    .line 2539
    :pswitch_3
    iget-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->lastInsets:Landroid/graphics/Rect;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lorg/telegram/ui/web/BotWebViewContainer;->reportSafeInsets(Landroid/graphics/Rect;Z)V

    return-void

    .line 1614
    :pswitch_4
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1615
    invoke-virtual {v0, v7, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1616
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_42

    .line 1617
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_b0

    .line 1619
    iget-object v2, v1, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v4}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onWebAppSetActionBarColor(IIZ)V

    return-void

    :catch_2
    move-exception v0

    goto :goto_4

    .line 1622
    :cond_42
    const-string v2, "color_key"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1624
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x4b676917

    if-eq v2, v3, :cond_44

    const v3, -0xc9046ac

    if-eq v2, v3, :cond_43

    goto :goto_2

    :cond_43
    const-string/jumbo v2, "secondary_bg_color"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 1630
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    goto :goto_3

    .line 1624
    :cond_44
    const-string v2, "bg_color"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 1626
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    goto :goto_3

    :cond_45
    :goto_2
    const/4 v8, -0x1

    :goto_3
    if-ltz v8, :cond_b0

    .line 1635
    iget-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    iget-object v2, v1, Lorg/telegram/ui/web/BotWebViewContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v8, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v0, v8, v2, v3}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onWebAppSetActionBarColor(IIZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    .line 1639
    :goto_4
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    .line 1645
    :pswitch_5
    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1646
    invoke-virtual {v0, v7, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1648
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 1649
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    iget-object v2, v1, Lorg/telegram/ui/web/BotWebViewContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_6

    .line 1651
    :cond_46
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 1653
    :goto_5
    iget-object v2, v1, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    if-eqz v2, :cond_b0

    .line 1654
    invoke-interface {v2, v0}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onWebAppSetNavigationBarColor(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    return-void

    .line 1657
    :goto_6
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    .line 2189
    :pswitch_6
    :try_start_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2190
    const-string/jumbo v2, "token"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 2192
    :try_start_5
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 2203
    :catch_4
    invoke-direct {v1}, Lorg/telegram/ui/web/BotWebViewContainer;->createBiometry()V

    .line 2204
    iget-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->biometry:Lorg/telegram/ui/bots/BotBiometry;

    if-nez v0, :cond_47

    goto/16 :goto_3d

    .line 2207
    :cond_47
    iget-boolean v3, v0, Lorg/telegram/ui/bots/BotBiometry;->access_granted:Z

    if-nez v3, :cond_48

    .line 2209
    :try_start_6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2210
    invoke-virtual {v0, v5, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2211
    const-string v2, "biometry_token_updated"

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_3d

    :catch_5
    move-exception v0

    .line 2213
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    .line 2217
    :cond_48
    new-instance v3, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda11;

    invoke-direct {v3, v1, v2}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;Ljava/lang/String;)V

    invoke-virtual {v0, v14, v2, v3}, Lorg/telegram/ui/bots/BotBiometry;->updateToken(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V

    goto/16 :goto_3d

    :catch_6
    move-exception v0

    .line 2195
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2196
    instance-of v0, v0, Lorg/json/JSONException;

    if-eqz v0, :cond_49

    .line 2197
    invoke-direct {v1, v12}, Lorg/telegram/ui/web/BotWebViewContainer;->error(Ljava/lang/String;)V

    goto/16 :goto_3d

    .line 2199
    :cond_49
    invoke-direct {v1}, Lorg/telegram/ui/web/BotWebViewContainer;->unknownError()V

    goto/16 :goto_3d

    .line 2449
    :pswitch_7
    iget-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    invoke-interface {v0}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->getBotSensors()Lorg/telegram/ui/bots/BotSensors;

    move-result-object v0

    .line 2453
    :try_start_7
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2454
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v28

    .line 2455
    const-string v2, "need_absolute"

    const/4 v3, 0x0

    invoke-virtual {v5, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v11
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    :goto_7
    move-wide/from16 v15, v28

    goto :goto_8

    :catch_7
    const/4 v11, 0x0

    goto :goto_7

    :goto_8
    const-wide/16 v17, 0x3e8

    const-wide/16 v19, 0x14

    .line 2457
    invoke-static/range {v15 .. v20}, Lorg/telegram/messenger/Utilities;->clamp(JJJ)J

    move-result-wide v2

    if-eqz v0, :cond_4a

    .line 2458
    invoke-virtual {v0, v11, v2, v3}, Lorg/telegram/ui/bots/BotSensors;->startOrientation(ZJ)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 2459
    const-string v0, "device_orientation_started"

    invoke-virtual {v1, v0, v14}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_3d

    .line 2461
    :cond_4a
    invoke-static {v4, v6}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v8, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_3d

    .line 2493
    :pswitch_8
    iget-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_4c

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_4c

    .line 2494
    iget v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    sget v4, Lorg/telegram/messenger/MediaDataController;->SHORTCUT_TYPE_ATTACHED_BOT:I

    invoke-virtual {v0, v2, v3, v4}, Lorg/telegram/messenger/MediaDataController;->isShortcutAdded(JI)Z

    move-result v0

    if-eqz v0, :cond_4b

    const-string v0, "added"

    goto :goto_9

    :cond_4b
    const-string v0, "missed"

    goto :goto_9

    .line 2495
    :cond_4c
    const-string/jumbo v0, "unsupported"

    .line 2492
    :goto_9
    invoke-static {v5, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "home_screen_checked"

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 1776
    :pswitch_9
    :try_start_8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1777
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1778
    iget-boolean v2, v1, Lorg/telegram/ui/web/BotWebViewContainer;->isSettingsButtonVisible:Z

    if-eq v0, v2, :cond_b0

    .line 1779
    iput-boolean v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->isSettingsButtonVisible:Z

    .line 1781
    iget-object v2, v1, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    invoke-interface {v2, v0}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onSetSettingsButtonVisible(Z)V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_8

    return-void

    :catch_8
    move-exception v0

    .line 1784
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    .line 1596
    :pswitch_a
    :try_start_9
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1597
    iget-object v2, v1, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    const-string v3, "allow_vertical_swipe"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-interface {v2, v0}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onWebAppSwipingBehavior(Z)V
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_9

    return-void

    :catch_9
    move-exception v0

    .line 1599
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    .line 1836
    :pswitch_b
    :try_start_a
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 1837
    invoke-virtual {v0, v11, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 1838
    iget-object v4, v1, Lorg/telegram/ui/web/BotWebViewContainer;->lastButtonText:Ljava/lang/String;

    move-object/from16 v5, v42

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 1839
    invoke-virtual {v0, v9, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4d

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4d

    const/4 v13, 0x1

    goto :goto_a

    :catch_a
    move-exception v0

    goto/16 :goto_14

    :cond_4d
    const/4 v13, 0x0

    .line 1840
    :goto_a
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4e

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    :goto_b
    move-object/from16 v4, v41

    goto :goto_c

    :cond_4e
    iget v3, v1, Lorg/telegram/ui/web/BotWebViewContainer;->lastButtonColor:I

    goto :goto_b

    .line 1841
    :goto_c
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4f

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    :goto_d
    move-object/from16 v6, v38

    const/4 v5, 0x0

    goto :goto_e

    :cond_4f
    iget v4, v1, Lorg/telegram/ui/web/BotWebViewContainer;->lastButtonTextColor:I

    goto :goto_d

    .line 1842
    :goto_e
    invoke-virtual {v0, v6, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_50

    if-eqz v13, :cond_50

    const/4 v6, 0x1

    :goto_f
    move-object/from16 v8, v37

    goto :goto_10

    :cond_50
    move v6, v5

    goto :goto_f

    .line 1843
    :goto_10
    invoke-virtual {v0, v8, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    if-eqz v7, :cond_51

    if-eqz v13, :cond_51

    const/16 v21, 0x1

    :goto_11
    move-object/from16 v10, v36

    goto :goto_12

    :cond_51
    const/16 v21, 0x0

    goto :goto_11

    .line 1846
    :goto_12
    :try_start_b
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-wide/from16 v16, v7

    goto :goto_13

    :catchall_0
    const-wide/16 v16, 0x0

    .line 1850
    :goto_13
    :try_start_c
    iput v3, v1, Lorg/telegram/ui/web/BotWebViewContainer;->lastButtonColor:I

    .line 1851
    iput v4, v1, Lorg/telegram/ui/web/BotWebViewContainer;->lastButtonTextColor:I

    .line 1852
    iput-object v15, v1, Lorg/telegram/ui/web/BotWebViewContainer;->lastButtonText:Ljava/lang/String;

    .line 1853
    iput-object v2, v1, Lorg/telegram/ui/web/BotWebViewContainer;->buttonData:Ljava/lang/String;

    .line 1855
    iget-object v12, v1, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    move/from16 v18, v3

    move/from16 v19, v4

    move/from16 v20, v6

    invoke-interface/range {v12 .. v21}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onSetupMainButton(ZZLjava/lang/String;JIIZZ)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    goto/16 :goto_3d

    .line 1857
    :goto_14
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    .line 1672
    :pswitch_c
    :try_start_d
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1673
    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1676
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v5, -0x469ec2ba

    if-eq v3, v5, :cond_57

    const v5, 0xb8209c3

    if-eq v3, v5, :cond_56

    const v5, 0x237a88eb

    if-eq v3, v5, :cond_52

    goto/16 :goto_15

    :cond_52
    const-string v3, "notification"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 1703
    const-string v2, "notification_type"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x6f4abffd

    if-eq v2, v3, :cond_55

    const v3, 0x5c4d208

    if-eq v2, v3, :cond_54

    const v3, 0x4305af9c

    if-eq v2, v3, :cond_53

    goto/16 :goto_15

    :cond_53
    const-string/jumbo v2, "warning"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 1713
    sget-object v14, Lorg/telegram/messenger/BotWebViewVibrationEffect;->NOTIFICATION_WARNING:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    goto/16 :goto_15

    :catch_b
    move-exception v0

    goto/16 :goto_16

    .line 1703
    :cond_54
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 1705
    sget-object v14, Lorg/telegram/messenger/BotWebViewVibrationEffect;->NOTIFICATION_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    goto :goto_15

    .line 1703
    :cond_55
    const-string/jumbo v2, "success"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 1709
    sget-object v14, Lorg/telegram/messenger/BotWebViewVibrationEffect;->NOTIFICATION_SUCCESS:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    goto :goto_15

    .line 1676
    :cond_56
    const-string/jumbo v0, "selection_change"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 1720
    sget-object v14, Lorg/telegram/messenger/BotWebViewVibrationEffect;->SELECTION_CHANGE:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    goto :goto_15

    .line 1676
    :cond_57
    const-string v3, "impact"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 1678
    const-string v2, "impact_style"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_1

    goto :goto_15

    :sswitch_3f
    const-string v2, "rigid"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 1692
    sget-object v14, Lorg/telegram/messenger/BotWebViewVibrationEffect;->IMPACT_RIGID:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    goto :goto_15

    .line 1678
    :sswitch_40
    const-string v2, "light"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 1680
    sget-object v14, Lorg/telegram/messenger/BotWebViewVibrationEffect;->IMPACT_LIGHT:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    goto :goto_15

    .line 1678
    :sswitch_41
    const-string v2, "heavy"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 1688
    sget-object v14, Lorg/telegram/messenger/BotWebViewVibrationEffect;->IMPACT_HEAVY:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    goto :goto_15

    .line 1678
    :sswitch_42
    const-string/jumbo v2, "soft"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 1696
    sget-object v14, Lorg/telegram/messenger/BotWebViewVibrationEffect;->IMPACT_SOFT:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    goto :goto_15

    .line 1678
    :sswitch_43
    const-string v2, "medium"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 1684
    sget-object v14, Lorg/telegram/messenger/BotWebViewVibrationEffect;->IMPACT_MEDIUM:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    :cond_58
    :goto_15
    if-eqz v14, :cond_b0

    .line 1725
    invoke-virtual {v14}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_b

    return-void

    .line 1728
    :goto_16
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    .line 2085
    :pswitch_d
    :try_start_e
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2086
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_c

    .line 2089
    :catch_c
    invoke-direct {v1}, Lorg/telegram/ui/web/BotWebViewContainer;->createBiometry()V

    .line 2090
    iget-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->biometry:Lorg/telegram/ui/bots/BotBiometry;

    if-nez v0, :cond_59

    goto/16 :goto_3d

    .line 2093
    :cond_59
    iget-boolean v2, v0, Lorg/telegram/ui/bots/BotBiometry;->access_requested:Z

    if-eqz v2, :cond_5a

    .line 2094
    invoke-direct {v1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyBiometryReceived()V

    return-void

    .line 2097
    :cond_5a
    iget-boolean v3, v0, Lorg/telegram/ui/bots/BotBiometry;->access_granted:Z

    if-nez v3, :cond_5c

    .line 2098
    new-instance v0, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda6;

    invoke-direct {v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;)V

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Runnable;

    const/16 v20, 0x0

    aput-object v0, v3, v20

    .line 2103
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, v1, Lorg/telegram/ui/web/BotWebViewContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v2, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2104
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 2105
    sget v2, Lorg/telegram/messenger/R$string;->BotAllowBiometryTitle:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2106
    sget v2, Lorg/telegram/messenger/R$string;->BotAllowBiometryMessage:I

    iget-object v4, v1, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v20, 0x0

    aput-object v4, v5, v20

    invoke-static {v2, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_17

    :cond_5b
    const/4 v5, 0x1

    const/16 v20, 0x0

    .line 2108
    sget v2, Lorg/telegram/messenger/R$string;->BotAllowBiometryMessage:I

    iget-object v4, v1, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v20

    invoke-static {v2, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2109
    invoke-virtual {v0, v14}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2111
    :goto_17
    sget v2, Lorg/telegram/messenger/R$string;->Allow:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda7;

    invoke-direct {v4, v1, v3}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;[Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2125
    sget v2, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda8;

    invoke-direct {v4, v1, v3}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;[Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2134
    new-instance v2, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda9;

    invoke-direct {v2, v3}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda9;-><init>([Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2140
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    goto/16 :goto_3d

    :cond_5c
    if-nez v2, :cond_5d

    const/4 v2, 0x1

    .line 2143
    iput-boolean v2, v0, Lorg/telegram/ui/bots/BotBiometry;->access_requested:Z

    .line 2144
    invoke-virtual {v0}, Lorg/telegram/ui/bots/BotBiometry;->save()V

    .line 2146
    :cond_5d
    invoke-direct {v1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyBiometryReceived()V

    goto/16 :goto_3d

    .line 1762
    :pswitch_e
    :try_start_f
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1763
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1764
    iget-boolean v2, v1, Lorg/telegram/ui/web/BotWebViewContainer;->isBackButtonVisible:Z

    if-eq v0, v2, :cond_b0

    .line 1765
    iput-boolean v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->isBackButtonVisible:Z

    .line 1767
    iget-object v2, v1, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    invoke-interface {v2, v0}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onSetBackButtonVisible(Z)V
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_d

    return-void

    :catch_d
    move-exception v0

    .line 1770
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    .line 2579
    :pswitch_f
    iget-boolean v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->isRequestingPageOpen:Z

    if-nez v0, :cond_b0

    iget-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_b0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Lorg/telegram/ui/web/BotWebViewContainer;->lastClickMs:J

    sub-long/2addr v2, v4

    cmp-long v0, v2, v39

    if-lez v0, :cond_5e

    goto/16 :goto_3d

    :cond_5e
    const-wide/16 v2, 0x0

    .line 2583
    iput-wide v2, v1, Lorg/telegram/ui/web/BotWebViewContainer;->lastClickMs:J

    .line 2585
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_b0

    .line 2586
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v2

    if-nez v2, :cond_5f

    goto/16 :goto_3d

    .line 2587
    :cond_5f
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v2

    .line 2588
    iget-object v3, v1, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v3, v4}, Lorg/telegram/ui/ProfileActivity;->of(J)Lorg/telegram/ui/ProfileActivity;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 2589
    const-string v0, "botPermissionLocation"

    invoke-static {v2, v0}, Lorg/telegram/messenger/AndroidUtilities;->scrollToFragmentRow(Lorg/telegram/ui/ActionBar/INavigationLayout;Ljava/lang/String;)V

    .line 2590
    iget-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    if-eqz v0, :cond_b0

    .line 2591
    invoke-interface {v0}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onCloseToTabs()V

    return-void

    .line 2746
    :pswitch_10
    iget-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->onVerifiedAge:Lorg/telegram/messenger/Utilities$Callback4;

    if-eqz v0, :cond_b0

    .line 2752
    :try_start_10
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2753
    const-string v2, "passed"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 2754
    const-string v3, "age"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 2755
    const-string v5, "gender"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2756
    const-string v6, "genderProbability"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v6
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_e

    .line 2761
    new-instance v0, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda22;

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;ZDLjava/lang/String;D)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :catch_e
    move-exception v0

    .line 2758
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void

    .line 2395
    :pswitch_11
    iget-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onFullscreenRequested(ZZ)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_60

    .line 2396
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v3, v35

    invoke-static {v3, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    move-object/from16 v5, v34

    invoke-virtual {v1, v5, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 2398
    :cond_60
    invoke-static {v4, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    move-object/from16 v6, v33

    invoke-virtual {v1, v6, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 2714
    :pswitch_12
    iget-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v0, :cond_61

    goto/16 :goto_3d

    .line 2715
    :cond_61
    iget-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->secureStorage:Lorg/telegram/ui/bots/BotStorage;

    if-nez v0, :cond_62

    new-instance v3, Lorg/telegram/ui/bots/BotStorage;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, v1, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v6

    iget-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const/4 v10, 0x1

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/bots/BotStorage;-><init>(Landroid/content/Context;IJJZ)V

    iput-object v3, v1, Lorg/telegram/ui/web/BotWebViewContainer;->secureStorage:Lorg/telegram/ui/bots/BotStorage;

    .line 2716
    :cond_62
    iget-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->secureStorage:Lorg/telegram/ui/bots/BotStorage;

    const-string/jumbo v3, "secure_storage_key_saved"

    move-object/from16 v4, v31

    invoke-direct {v1, v0, v2, v3, v4}, Lorg/telegram/ui/web/BotWebViewContainer;->setStorageKey(Lorg/telegram/ui/bots/BotStorage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1387
    :pswitch_13
    :try_start_11
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1388
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1389
    const-string v3, "chat_types"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v11, 0x0

    .line 1390
    :goto_18
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v11, v4, :cond_63

    .line 1391
    invoke-virtual {v3, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_18

    :catch_f
    move-exception v0

    goto :goto_19

    .line 1394
    :cond_63
    iget-object v3, v1, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    iget-object v4, v1, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    const-string v5, "query"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0, v2}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onWebAppSwitchInlineQuery(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Ljava/util/List;)V
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_11} :catch_f

    return-void

    .line 1396
    :goto_19
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    :pswitch_14
    move-object/from16 v6, v33

    move-object/from16 v5, v34

    move-object/from16 v3, v35

    .line 2382
    :try_start_12
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2383
    const-string v2, "blur"
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_10

    const/4 v7, 0x1

    :try_start_13
    invoke-virtual {v0, v2, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v22
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_11

    move/from16 v0, v22

    goto :goto_1a

    :catch_10
    const/4 v7, 0x1

    :catch_11
    move v0, v7

    .line 2386
    :goto_1a
    iget-object v2, v1, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    invoke-interface {v2, v7, v0}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onFullscreenRequested(ZZ)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_64

    .line 2387
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v4, "blur_enabled"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v3, v2, v4, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_3d

    .line 2389
    :cond_64
    invoke-static {v4, v2}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_3d

    .line 2475
    :pswitch_15
    iget-boolean v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->isRequestingPageOpen:Z

    if-nez v0, :cond_b0

    iget-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_b0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Lorg/telegram/ui/web/BotWebViewContainer;->lastClickMs:J

    sub-long/2addr v2, v4

    cmp-long v0, v2, v39

    if-lez v0, :cond_65

    goto/16 :goto_3d

    .line 2478
    :cond_65
    iget v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    sget v4, Lorg/telegram/messenger/MediaDataController;->SHORTCUT_TYPE_ATTACHED_BOT:I

    invoke-virtual {v0, v2, v3, v4}, Lorg/telegram/messenger/MediaDataController;->isShortcutAdded(JI)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 2479
    const-string v0, "home_screen_added"

    invoke-virtual {v1, v0, v14}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 2482
    :cond_66
    iget v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    sget v4, Lorg/telegram/messenger/MediaDataController;->SHORTCUT_TYPE_ATTACHED_BOT:I

    new-instance v5, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda13;

    invoke-direct {v5, v1}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;)V

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/telegram/messenger/MediaDataController;->installShortcut(JILorg/telegram/messenger/Utilities$Callback;)V

    return-void

    .line 2543
    :pswitch_16
    iget v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->lastInsetsTopMargin:I

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lorg/telegram/ui/web/BotWebViewContainer;->reportSafeContentInsets(IZ)V

    return-void

    .line 1663
    :pswitch_17
    :try_start_14
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1664
    iget-object v2, v1, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    move-object/from16 v3, v30

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onSendWebViewData(Ljava/lang/String;)V
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_14} :catch_12

    return-void

    :catch_12
    move-exception v0

    .line 1666
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    .line 2644
    :pswitch_18
    iget-boolean v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->isRequestingPageOpen:Z

    if-nez v0, :cond_b0

    iget-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_b0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, v1, Lorg/telegram/ui/web/BotWebViewContainer;->lastClickMs:J

    sub-long/2addr v5, v7

    cmp-long v0, v5, v39

    if-lez v0, :cond_67

    goto/16 :goto_3d

    .line 2650
    :cond_67
    :try_start_15
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2651
    const-string v2, "id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_13

    .line 2657
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 2658
    const-string v0, "MESSAGE_EXPIRED"

    invoke-static {v4, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    move-object/from16 v2, v27

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 2662
    :cond_68
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, v1, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    iget-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v7, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-object v10, v1, Lorg/telegram/ui/web/BotWebViewContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    new-instance v11, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda20;

    invoke-direct {v11, v1}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;)V

    new-instance v12, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda21;

    move-object/from16 v0, p1

    invoke-direct {v12, v1, v0}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;)V

    invoke-static/range {v5 .. v12}, Lorg/telegram/ui/bots/BotShareSheet;->share(Landroid/content/Context;IJLjava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;Lorg/telegram/messenger/Utilities$Callback2;)V

    return-void

    :catch_13
    move-exception v0

    move-object/from16 v2, v27

    .line 2653
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2654
    const-string v0, "MESSAGE_EXPIRED"

    invoke-static {v4, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 2417
    :pswitch_19
    iget-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    invoke-interface {v0}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->getBotSensors()Lorg/telegram/ui/bots/BotSensors;

    move-result-object v0

    if-eqz v0, :cond_69

    .line 2418
    invoke-virtual {v0}, Lorg/telegram/ui/bots/BotSensors;->stopAccelerometer()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 2419
    const-string v0, "accelerometer_stopped"

    invoke-virtual {v1, v0, v14}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 2421
    :cond_69
    const-string v0, "accelerometer_failed"

    invoke-static {v4, v6}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 2403
    :pswitch_1a
    iget-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    invoke-interface {v0}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->getBotSensors()Lorg/telegram/ui/bots/BotSensors;

    move-result-object v0

    .line 2406
    :try_start_16
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v28
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_14

    :catch_14
    move-wide/from16 v7, v28

    const-wide/16 v9, 0x3e8

    const-wide/16 v11, 0x14

    .line 2408
    invoke-static/range {v7 .. v12}, Lorg/telegram/messenger/Utilities;->clamp(JJJ)J

    move-result-wide v2

    if-eqz v0, :cond_6a

    .line 2409
    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/bots/BotSensors;->startAccelerometer(J)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 2410
    const-string v0, "accelerometer_started"

    invoke-virtual {v1, v0, v14}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_3d

    .line 2412
    :cond_6a
    const-string v0, "accelerometer_failed"

    invoke-static {v4, v6}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_3d

    .line 2708
    :pswitch_1b
    iget-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v0, :cond_6b

    goto/16 :goto_3d

    .line 2709
    :cond_6b
    iget-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->storage:Lorg/telegram/ui/bots/BotStorage;

    if-nez v0, :cond_6c

    new-instance v3, Lorg/telegram/ui/bots/BotStorage;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, v1, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v6

    iget-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/bots/BotStorage;-><init>(Landroid/content/Context;IJJZ)V

    iput-object v3, v1, Lorg/telegram/ui/web/BotWebViewContainer;->storage:Lorg/telegram/ui/bots/BotStorage;

    .line 2710
    :cond_6c
    iget-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->storage:Lorg/telegram/ui/bots/BotStorage;

    const-string v3, "device_storage_cleared"

    move-object/from16 v4, v26

    invoke-direct {v1, v0, v2, v3, v4}, Lorg/telegram/ui/web/BotWebViewContainer;->clearStorageKey(Lorg/telegram/ui/bots/BotStorage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2726
    :pswitch_1c
    iget-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v0, :cond_6d

    goto/16 :goto_3d

    .line 2727
    :cond_6d
    iget-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->secureStorage:Lorg/telegram/ui/bots/BotStorage;

    if-nez v0, :cond_6e

    new-instance v3, Lorg/telegram/ui/bots/BotStorage;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, v1, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v6

    iget-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const/4 v10, 0x1

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/bots/BotStorage;-><init>(Landroid/content/Context;IJJZ)V

    iput-object v3, v1, Lorg/telegram/ui/web/BotWebViewContainer;->secureStorage:Lorg/telegram/ui/bots/BotStorage;

    .line 2728
    :cond_6e
    iget-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->secureStorage:Lorg/telegram/ui/bots/BotStorage;

    const-string/jumbo v3, "secure_storage_cleared"

    const-string/jumbo v4, "secure_storage_cleared"

    invoke-direct {v1, v0, v2, v3, v4}, Lorg/telegram/ui/web/BotWebViewContainer;->clearStorageKey(Lorg/telegram/ui/bots/BotStorage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2440
    :pswitch_1d
    iget-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    invoke-interface {v0}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->getBotSensors()Lorg/telegram/ui/bots/BotSensors;

    move-result-object v0

    if-eqz v0, :cond_6f

    .line 2441
    invoke-virtual {v0}, Lorg/telegram/ui/bots/BotSensors;->stopGyroscope()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 2442
    const-string v0, "gyroscope_stopped"

    invoke-virtual {v1, v0, v14}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 2444
    :cond_6f
    const-string v0, "gyroscope_failed"

    invoke-static {v4, v6}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 2738
    :pswitch_1e
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_70

    .line 2739
    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    :cond_70
    if-eqz v0, :cond_b0

    .line 2741
    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    return-void

    :pswitch_1f
    move-object/from16 v3, v30

    .line 1402
    :try_start_17
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v4, v32

    .line 1403
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1404
    iget-object v2, v1, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    invoke-interface {v2}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->isClipboardAvailable()Z

    move-result v2

    if-eqz v2, :cond_73

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, v1, Lorg/telegram/ui/web/BotWebViewContainer;->lastClickMs:J

    sub-long/2addr v5, v7

    cmp-long v2, v5, v39

    if-lez v2, :cond_71

    goto :goto_1c

    .line 1409
    :cond_71
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v5, "clipboard"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipboardManager;

    .line 1410
    invoke-virtual {v2}, Landroid/content/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_72

    .line 1411
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1b

    :catch_15
    move-exception v0

    goto :goto_1d

    :cond_72
    const-string v2, ""

    .line 1412
    :goto_1b
    const-string v5, "clipboard_text_received"

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v6, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 1405
    :cond_73
    :goto_1c
    const-string v2, "clipboard_text_received"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_17 .. :try_end_17} :catch_15

    return-void

    .line 1414
    :goto_1d
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    .line 1831
    :pswitch_20
    iget-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/web/BotWebViewContainer;->setPageLoaded(Ljava/lang/String;Z)V

    return-void

    .line 1353
    :pswitch_21
    :try_start_18
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1354
    const-string v2, "return_back"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_16

    goto :goto_1e

    :catch_16
    move-exception v0

    .line 1356
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 1359
    :goto_1e
    iget-object v2, v1, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    invoke-interface {v2, v14}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onCloseRequested(Ljava/lang/Runnable;)V

    if-eqz v0, :cond_b0

    .line 1361
    iget-boolean v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->wasOpenedByLinkIntent:Z

    if-eqz v0, :cond_75

    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-eqz v0, :cond_75

    .line 1362
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_74

    .line 1363
    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    :cond_74
    if-eqz v0, :cond_b0

    .line 1364
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_b0

    const/4 v2, 0x1

    .line 1365
    invoke-virtual {v0, v2}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    goto/16 :goto_3d

    .line 1367
    :cond_75
    iget-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->wasOpenedByBot:Lorg/telegram/ui/bots/WebViewRequestProps;

    if-eqz v0, :cond_b0

    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-eqz v0, :cond_b0

    invoke-virtual {v0}, Lorg/telegram/ui/LaunchActivity;->getBottomSheetTabs()Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    move-result-object v0

    if-eqz v0, :cond_b0

    .line 1368
    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/LaunchActivity;->getBottomSheetTabs()Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    move-result-object v0

    .line 1369
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->getTabs()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v11, 0x0

    .line 1371
    :goto_1f
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v11, v3, :cond_77

    .line 1372
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    .line 1373
    iget-object v4, v1, Lorg/telegram/ui/web/BotWebViewContainer;->wasOpenedByBot:Lorg/telegram/ui/bots/WebViewRequestProps;

    iget-object v5, v3, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->props:Lorg/telegram/ui/bots/WebViewRequestProps;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/bots/WebViewRequestProps;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_76

    iget-object v4, v3, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iget-object v5, v1, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    if-eq v4, v5, :cond_76

    move-object v14, v3

    goto :goto_20

    :cond_76
    add-int/lit8 v11, v11, 0x1

    goto :goto_1f

    :cond_77
    :goto_20
    if-eqz v14, :cond_b0

    .line 1379
    invoke-virtual {v0, v14}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->openTab(Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;)V

    goto/16 :goto_3d

    .line 2426
    :pswitch_22
    iget-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    invoke-interface {v0}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->getBotSensors()Lorg/telegram/ui/bots/BotSensors;

    move-result-object v0

    .line 2429
    :try_start_19
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v28
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_17

    :catch_17
    move-wide/from16 v7, v28

    const-wide/16 v9, 0x3e8

    const-wide/16 v11, 0x14

    .line 2431
    invoke-static/range {v7 .. v12}, Lorg/telegram/messenger/Utilities;->clamp(JJJ)J

    move-result-wide v2

    if-eqz v0, :cond_78

    .line 2432
    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/bots/BotSensors;->startGyroscope(J)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 2433
    const-string v0, "gyroscope_started"

    invoke-virtual {v1, v0, v14}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_3d

    .line 2435
    :cond_78
    const-string v0, "gyroscope_failed"

    invoke-static {v4, v6}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_3d

    .line 2547
    :pswitch_23
    iget-boolean v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->isRequestingPageOpen:Z

    if-nez v0, :cond_b0

    iget-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v0, :cond_79

    goto/16 :goto_3d

    .line 2550
    :cond_79
    iget-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->location:Lorg/telegram/ui/bots/BotLocation;

    if-nez v0, :cond_7a

    .line 2551
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, v1, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    iget-object v3, v1, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v0, v2, v3, v4}, Lorg/telegram/ui/bots/BotLocation;->get(Landroid/content/Context;IJ)Lorg/telegram/ui/bots/BotLocation;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->location:Lorg/telegram/ui/bots/BotLocation;

    .line 2552
    iget-object v2, v1, Lorg/telegram/ui/web/BotWebViewContainer;->notifyLocationChecked:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/bots/BotLocation;->listen(Ljava/lang/Runnable;)V

    .line 2554
    :cond_7a
    iget-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->location:Lorg/telegram/ui/bots/BotLocation;

    invoke-virtual {v0}, Lorg/telegram/ui/bots/BotLocation;->granted()Z

    move-result v0

    if-nez v0, :cond_7b

    .line 2555
    iget-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->location:Lorg/telegram/ui/bots/BotLocation;

    new-instance v2, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda17;

    invoke-direct {v2, v1}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/bots/BotLocation;->request(Lorg/telegram/messenger/Utilities$Callback2;)V

    return-void

    .line 2564
    :cond_7b
    iget-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->location:Lorg/telegram/ui/bots/BotLocation;

    new-instance v2, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda18;

    invoke-direct {v2, v1}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/bots/BotLocation;->requestObject(Lorg/telegram/messenger/Utilities$Callback;)V

    return-void

    :pswitch_24
    move-object/from16 v5, v42

    .line 2247
    iget-boolean v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->isRequestingPageOpen:Z

    if-nez v0, :cond_b0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v6, v1, Lorg/telegram/ui/web/BotWebViewContainer;->lastClickMs:J

    sub-long/2addr v3, v6

    cmp-long v0, v3, v39

    if-gtz v0, :cond_b0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v6, v1, Lorg/telegram/ui/web/BotWebViewContainer;->lastPostStoryMs:J

    sub-long/2addr v3, v6

    const-wide/16 v6, 0x7d0

    cmp-long v0, v3, v6

    if-gez v0, :cond_7c

    goto/16 :goto_3d

    :cond_7c
    const-wide/16 v3, 0x0

    .line 2250
    iput-wide v3, v1, Lorg/telegram/ui/web/BotWebViewContainer;->lastClickMs:J

    .line 2251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lorg/telegram/ui/web/BotWebViewContainer;->lastPostStoryMs:J

    .line 2257
    :try_start_1a
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2258
    const-string v2, "media_url"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_1b

    .line 2259
    :try_start_1b
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_1a

    .line 2260
    :try_start_1c
    const-string/jumbo v4, "widget_link"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_7d

    move-object/from16 v4, v25

    .line 2262
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_19

    .line 2263
    :try_start_1d
    const-string v5, "name"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_18

    goto :goto_21

    :catch_18
    move-exception v0

    goto :goto_24

    :catch_19
    move-exception v0

    move-object v4, v14

    goto :goto_24

    :cond_7d
    move-object v0, v14

    move-object v4, v0

    :goto_21
    move-object v5, v0

    :goto_22
    move-object v6, v2

    goto :goto_25

    :catch_1a
    move-exception v0

    move-object v3, v14

    :goto_23
    move-object v4, v3

    goto :goto_24

    :catch_1b
    move-exception v0

    move-object v2, v14

    move-object v3, v2

    goto :goto_23

    .line 2266
    :goto_24
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move-object v5, v14

    goto :goto_22

    :goto_25
    if-nez v6, :cond_7e

    goto/16 :goto_3d

    .line 2273
    :cond_7e
    iget v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->storiesEnabled()Z

    move-result v0

    if-nez v0, :cond_7f

    .line 2274
    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    new-instance v2, Lorg/telegram/ui/web/BotWebViewContainer$5;

    invoke-direct {v2, v1}, Lorg/telegram/ui/web/BotWebViewContainer$5;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;)V

    const/16 v3, 0xe

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    .line 2299
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->show()V

    return-void

    .line 2303
    :cond_7f
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->parentActivity:Landroid/app/Activity;

    const/4 v7, 0x3

    invoke-direct {v2, v0, v7}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 2304
    new-instance v7, Lorg/telegram/ui/web/HttpGetFileTask;

    new-instance v0, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda12;

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v7, v0, v14}, Lorg/telegram/ui/web/HttpGetFileTask;-><init>(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;)V

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v0

    .line 2374
    invoke-virtual {v7, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const-wide/16 v3, 0xfa

    .line 2375
    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog;->showDelayed(J)V

    goto/16 :goto_3d

    :pswitch_25
    move-object/from16 v4, v31

    .line 2732
    iget-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v0, :cond_80

    goto/16 :goto_3d

    .line 2733
    :cond_80
    iget-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->secureStorage:Lorg/telegram/ui/bots/BotStorage;

    if-nez v0, :cond_81

    new-instance v5, Lorg/telegram/ui/bots/BotStorage;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    iget v7, v1, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v8

    iget-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v10, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const/4 v12, 0x1

    invoke-direct/range {v5 .. v12}, Lorg/telegram/ui/bots/BotStorage;-><init>(Landroid/content/Context;IJJZ)V

    iput-object v5, v1, Lorg/telegram/ui/web/BotWebViewContainer;->secureStorage:Lorg/telegram/ui/bots/BotStorage;

    .line 2734
    :cond_81
    iget-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->secureStorage:Lorg/telegram/ui/bots/BotStorage;

    const-string/jumbo v3, "secure_storage_key_restored"

    invoke-direct {v1, v0, v2, v3, v4}, Lorg/telegram/ui/web/BotWebViewContainer;->restoreStorageKey(Lorg/telegram/ui/bots/BotStorage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1748
    :pswitch_26
    :try_start_1e
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1749
    const-string v2, "path_full"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1750
    const-string v3, "force_request"

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 1751
    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_82

    const/4 v4, 0x1

    .line 1752
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_26

    :catch_1c
    move-exception v0

    goto :goto_27

    .line 1754
    :cond_82
    :goto_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://t.me/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/web/BotWebViewContainer;->onOpenUri(Landroid/net/Uri;Ljava/lang/String;ZZZ)V
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_1e .. :try_end_1e} :catch_1c

    return-void

    .line 1756
    :goto_27
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    .line 1339
    :pswitch_27
    :try_start_1f
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1340
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONArray;->optBoolean(IZ)Z

    move-result v3
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_1d

    .line 1341
    :try_start_20
    invoke-virtual {v0, v2, v2}, Lorg/json/JSONArray;->optBoolean(IZ)Z

    move-result v12
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_1e

    goto :goto_28

    :catch_1d
    const/4 v3, 0x1

    :catch_1e
    const/4 v12, 0x1

    .line 1343
    :goto_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowScroll "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->d(Ljava/lang/String;)V

    .line 1344
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    if-eqz v0, :cond_b0

    .line 1345
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    .line 1346
    invoke-virtual {v0, v3, v12}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->allowThisScroll(ZZ)V

    goto/16 :goto_3d

    .line 2687
    :pswitch_28
    :try_start_21
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2688
    const-string v2, "locked"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v11
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_1f

    goto :goto_29

    :catch_1f
    const/4 v11, 0x0

    .line 2690
    :goto_29
    iget-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    if-eqz v0, :cond_b0

    .line 2691
    invoke-interface {v0, v11}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onOrientationLockChanged(Z)V

    goto/16 :goto_3d

    .line 2153
    :pswitch_29
    :try_start_22
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2154
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_20

    .line 2156
    :catch_20
    invoke-direct {v1}, Lorg/telegram/ui/web/BotWebViewContainer;->createBiometry()V

    .line 2157
    iget-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->biometry:Lorg/telegram/ui/bots/BotBiometry;

    if-nez v0, :cond_83

    goto/16 :goto_3d

    .line 2160
    :cond_83
    iget-boolean v2, v0, Lorg/telegram/ui/bots/BotBiometry;->access_granted:Z

    if-nez v2, :cond_84

    .line 2162
    :try_start_23
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2163
    invoke-virtual {v0, v5, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2164
    const-string v2, "biometry_auth_requested"

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_21

    goto/16 :goto_3d

    :catch_21
    move-exception v0

    .line 2166
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    .line 2170
    :cond_84
    new-instance v2, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda10;

    invoke-direct {v2, v1}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;)V

    invoke-virtual {v0, v14, v2}, Lorg/telegram/ui/bots/BotBiometry;->requestToken(Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback2;)V

    goto/16 :goto_3d

    :pswitch_2a
    move-object/from16 v4, v26

    .line 2702
    iget-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v0, :cond_85

    goto/16 :goto_3d

    .line 2703
    :cond_85
    iget-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->storage:Lorg/telegram/ui/bots/BotStorage;

    if-nez v0, :cond_86

    new-instance v5, Lorg/telegram/ui/bots/BotStorage;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    iget v7, v1, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v8

    iget-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v10, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const/4 v12, 0x0

    invoke-direct/range {v5 .. v12}, Lorg/telegram/ui/bots/BotStorage;-><init>(Landroid/content/Context;IJJZ)V

    iput-object v5, v1, Lorg/telegram/ui/web/BotWebViewContainer;->storage:Lorg/telegram/ui/bots/BotStorage;

    .line 2704
    :cond_86
    iget-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->storage:Lorg/telegram/ui/bots/BotStorage;

    const-string v3, "device_storage_key_received"

    invoke-direct {v1, v0, v2, v3, v4}, Lorg/telegram/ui/web/BotWebViewContainer;->getStorageKey(Lorg/telegram/ui/bots/BotStorage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_2b
    move-object/from16 v4, v26

    .line 2696
    iget-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v0, :cond_87

    goto/16 :goto_3d

    .line 2697
    :cond_87
    iget-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->storage:Lorg/telegram/ui/bots/BotStorage;

    if-nez v0, :cond_88

    new-instance v5, Lorg/telegram/ui/bots/BotStorage;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    iget v7, v1, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v8

    iget-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v10, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const/4 v12, 0x0

    invoke-direct/range {v5 .. v12}, Lorg/telegram/ui/bots/BotStorage;-><init>(Landroid/content/Context;IJJZ)V

    iput-object v5, v1, Lorg/telegram/ui/web/BotWebViewContainer;->storage:Lorg/telegram/ui/bots/BotStorage;

    .line 2698
    :cond_88
    iget-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->storage:Lorg/telegram/ui/bots/BotStorage;

    const-string v3, "device_storage_key_saved"

    invoke-direct {v1, v0, v2, v3, v4}, Lorg/telegram/ui/web/BotWebViewContainer;->setStorageKey(Lorg/telegram/ui/bots/BotStorage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2466
    :pswitch_2c
    iget-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    invoke-interface {v0}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->getBotSensors()Lorg/telegram/ui/bots/BotSensors;

    move-result-object v0

    if-eqz v0, :cond_89

    .line 2467
    invoke-virtual {v0}, Lorg/telegram/ui/bots/BotSensors;->stopOrientation()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 2468
    const-string v0, "device_orientation_stopped"

    invoke-virtual {v1, v0, v14}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 2470
    :cond_89
    invoke-static {v4, v6}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v8, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 2527
    :pswitch_2d
    iget-boolean v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->isRequestingPageOpen:Z

    if-nez v0, :cond_b0

    iget-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_b0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Lorg/telegram/ui/web/BotWebViewContainer;->lastClickMs:J

    sub-long/2addr v2, v4

    cmp-long v0, v2, v39

    if-lez v0, :cond_8a

    goto/16 :goto_3d

    .line 2530
    :cond_8a
    iget v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    iget-object v2, v1, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    new-instance v4, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda15;

    invoke-direct {v4, v1}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;)V

    invoke-static {v0, v2, v3, v4}, Lorg/telegram/ui/bots/SetupEmojiStatusSheet;->askPermission(IJLorg/telegram/messenger/Utilities$Callback2;)V

    return-void

    .line 1822
    :pswitch_2e
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    if-eqz v0, :cond_8b

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->isSwipeInProgress()Z

    move-result v0

    if-eqz v0, :cond_8b

    const/4 v11, 0x1

    :goto_2a
    const/4 v2, 0x1

    goto :goto_2b

    :cond_8b
    const/4 v11, 0x0

    goto :goto_2a

    :goto_2b
    xor-int/lit8 v0, v11, 0x1

    .line 1823
    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/web/BotWebViewContainer;->invalidateViewPortHeight(ZZ)V

    return-void

    .line 2229
    :pswitch_2f
    iget-boolean v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->isRequestingPageOpen:Z

    if-nez v0, :cond_b0

    iget-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_b0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Lorg/telegram/ui/web/BotWebViewContainer;->lastClickMs:J

    sub-long/2addr v2, v4

    cmp-long v0, v2, v39

    if-lez v0, :cond_8c

    goto/16 :goto_3d

    :cond_8c
    const-wide/16 v12, 0x0

    .line 2233
    iput-wide v12, v1, Lorg/telegram/ui/web/BotWebViewContainer;->lastClickMs:J

    .line 2235
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_b0

    .line 2236
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v2

    if-nez v2, :cond_8d

    goto/16 :goto_3d

    .line 2237
    :cond_8d
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v2

    .line 2238
    iget-object v3, v1, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v3, v4}, Lorg/telegram/ui/ProfileActivity;->of(J)Lorg/telegram/ui/ProfileActivity;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 2239
    const-string v0, "botPermissionBiometry"

    invoke-static {v2, v0}, Lorg/telegram/messenger/AndroidUtilities;->scrollToFragmentRow(Lorg/telegram/ui/ActionBar/INavigationLayout;Ljava/lang/String;)V

    .line 2240
    iget-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    if-eqz v0, :cond_b0

    .line 2241
    invoke-interface {v0}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onCloseToTabs()V

    return-void

    .line 2571
    :pswitch_30
    iget-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->location:Lorg/telegram/ui/bots/BotLocation;

    if-nez v0, :cond_8e

    .line 2572
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, v1, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    iget-object v3, v1, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v0, v2, v3, v4}, Lorg/telegram/ui/bots/BotLocation;->get(Landroid/content/Context;IJ)Lorg/telegram/ui/bots/BotLocation;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->location:Lorg/telegram/ui/bots/BotLocation;

    .line 2573
    iget-object v2, v1, Lorg/telegram/ui/web/BotWebViewContainer;->notifyLocationChecked:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/bots/BotLocation;->listen(Ljava/lang/Runnable;)V

    .line 2575
    :cond_8e
    iget-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->notifyLocationChecked:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :pswitch_31
    move-object/from16 v4, v31

    .line 2720
    iget-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v0, :cond_8f

    goto/16 :goto_3d

    .line 2721
    :cond_8f
    iget-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->secureStorage:Lorg/telegram/ui/bots/BotStorage;

    if-nez v0, :cond_90

    new-instance v5, Lorg/telegram/ui/bots/BotStorage;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    iget v7, v1, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v8

    iget-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v10, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const/4 v12, 0x1

    invoke-direct/range {v5 .. v12}, Lorg/telegram/ui/bots/BotStorage;-><init>(Landroid/content/Context;IJJZ)V

    iput-object v5, v1, Lorg/telegram/ui/web/BotWebViewContainer;->secureStorage:Lorg/telegram/ui/bots/BotStorage;

    .line 2722
    :cond_90
    iget-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->secureStorage:Lorg/telegram/ui/bots/BotStorage;

    const-string/jumbo v3, "secure_storage_key_received"

    invoke-direct {v1, v0, v2, v3, v4}, Lorg/telegram/ui/web/BotWebViewContainer;->getStorageKey(Lorg/telegram/ui/bots/BotStorage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1827
    :pswitch_32
    invoke-virtual {v1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyThemeChanged()V

    return-void

    :pswitch_33
    const/4 v0, 0x4

    .line 2004
    invoke-direct {v1, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->ignoreDialog(I)Z

    move-result v2

    if-eqz v2, :cond_91

    .line 2006
    :try_start_24
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2007
    invoke-virtual {v0, v5, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2008
    const-string v2, "phone_requested"

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_22

    return-void

    :catch_22
    move-exception v0

    .line 2010
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void

    .line 2015
    :cond_91
    iget v4, v1, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    .line 2016
    iget-object v5, v1, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    .line 2017
    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v2

    .line 2018
    new-instance v6, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, v1, Lorg/telegram/ui/web/BotWebViewContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v6, v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2019
    sget v0, Lorg/telegram/messenger/R$string;->ShareYouPhoneNumberTitle:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2020
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2021
    iget-object v3, v1, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    .line 2022
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_92

    .line 2023
    sget v7, Lorg/telegram/messenger/R$string;->AreYouSureShareMyContactInfoWebapp:I

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    const/16 v20, 0x0

    aput-object v3, v9, v20

    invoke-static {v7, v9}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_2c

    .line 2025
    :cond_92
    sget v3, Lorg/telegram/messenger/R$string;->AreYouSureShareMyContactInfoBot:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2027
    :goto_2c
    iget v3, v1, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->blockePeers:Lorg/telegram/messenger/support/LongSparseIntArray;

    iget-object v7, v1, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v7, v7, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v3, v7, v8}, Lorg/telegram/messenger/support/LongSparseIntArray;->indexOfKey(J)I

    move-result v3

    if-ltz v3, :cond_93

    const/4 v3, 0x1

    goto :goto_2d

    :cond_93
    const/4 v3, 0x0

    :goto_2d
    if-eqz v3, :cond_94

    .line 2029
    const-string v7, "\n\n"

    invoke-virtual {v0, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2030
    sget v7, Lorg/telegram/messenger/R$string;->AreYouSureShareMyContactInfoBotUnblock:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2032
    :cond_94
    invoke-virtual {v6, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2033
    sget v0, Lorg/telegram/messenger/R$string;->ShareContact:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v0, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda28;

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;[Ljava/lang/String;ZILorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V

    invoke-virtual {v6, v7, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2061
    sget v0, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda29;

    invoke-direct {v3}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda29;-><init>()V

    invoke-virtual {v6, v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2064
    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    new-instance v3, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda30;

    invoke-direct {v3, v2, v4, v5}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda30;-><init>([Ljava/lang/String;ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V

    const/4 v2, 0x4

    invoke-direct {v1, v2, v0, v3}, Lorg/telegram/ui/web/BotWebViewContainer;->showDialog(ILorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/Runnable;)Z

    return-void

    :pswitch_34
    move-object/from16 v5, v42

    .line 1426
    :try_start_25
    iget-boolean v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->hasQRPending:Z

    if-nez v0, :cond_b0

    iget-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->parentActivity:Landroid/app/Activity;

    if-nez v0, :cond_95

    goto/16 :goto_3d

    .line 1430
    :cond_95
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1431
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->lastQrText:Ljava/lang/String;

    const/4 v2, 0x1

    .line 1432
    iput-boolean v2, v1, Lorg/telegram/ui/web/BotWebViewContainer;->hasQRPending:Z

    .line 1434
    iget-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->parentActivity:Landroid/app/Activity;

    const-string v2, "android.permission.CAMERA"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_96

    .line 1435
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/web/BotWebViewContainer$4;

    invoke-direct {v2, v1}, Lorg/telegram/ui/web/BotWebViewContainer$4;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;)V

    sget v3, Lorg/telegram/messenger/NotificationCenter;->onRequestPermissionResultReceived:I

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1455
    iget-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->parentActivity:Landroid/app/Activity;

    const-string v2, "android.permission.CAMERA"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1388

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    :catch_23
    move-exception v0

    goto :goto_2e

    .line 1459
    :cond_96
    invoke-direct {v1}, Lorg/telegram/ui/web/BotWebViewContainer;->openQrScanActivity()V
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_25 .. :try_end_25} :catch_23

    return-void

    .line 1461
    :goto_2e
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    .line 1587
    :pswitch_35
    :try_start_26
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1588
    iget-object v2, v1, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    const-string v3, "need_confirmation"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-interface {v2, v0}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onWebAppSetupClosingBehavior(Z)V
    :try_end_26
    .catch Lorg/json/JSONException; {:try_start_26 .. :try_end_26} :catch_24

    return-void

    :catch_24
    move-exception v0

    .line 1590
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    :pswitch_36
    move-object/from16 v10, v36

    move-object/from16 v8, v37

    move-object/from16 v6, v38

    move-object/from16 v4, v41

    move-object/from16 v5, v42

    const-wide/16 v12, 0x0

    .line 1863
    :try_start_27
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 1864
    invoke-virtual {v0, v11, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v25

    .line 1865
    iget-object v11, v1, Lorg/telegram/ui/web/BotWebViewContainer;->lastSecondaryButtonText:Ljava/lang/String;

    invoke-virtual {v0, v5, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 1866
    invoke-virtual {v0, v9, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_97

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_97

    const/16 v24, 0x1

    goto :goto_2f

    :catch_25
    move-exception v0

    goto/16 :goto_37

    :cond_97
    const/16 v24, 0x0

    .line 1867
    :goto_2f
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_98

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    goto :goto_30

    :cond_98
    iget v3, v1, Lorg/telegram/ui/web/BotWebViewContainer;->lastSecondaryButtonColor:I

    .line 1868
    :goto_30
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_99

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    :goto_31
    const/4 v7, 0x0

    goto :goto_32

    :cond_99
    iget v4, v1, Lorg/telegram/ui/web/BotWebViewContainer;->lastSecondaryButtonTextColor:I

    goto :goto_31

    .line 1869
    :goto_32
    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_9a

    if-eqz v24, :cond_9a

    const/16 v31, 0x1

    goto :goto_33

    :cond_9a
    move/from16 v31, v7

    .line 1870
    :goto_33
    invoke-virtual {v0, v8, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_9b

    if-eqz v24, :cond_9b

    const/16 v32, 0x1

    goto :goto_34

    :cond_9b
    const/16 v32, 0x0

    .line 1871
    :goto_34
    const-string v6, "position"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9c

    const-string v6, "position"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_35

    :cond_9c
    iget-object v6, v1, Lorg/telegram/ui/web/BotWebViewContainer;->lastSecondaryButtonPosition:Ljava/lang/String;

    :goto_35
    if-nez v6, :cond_9d

    .line 1872
    const-string v6, "left"
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_25

    .line 1875
    :cond_9d
    :try_start_28
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_1

    move-wide/from16 v27, v7

    goto :goto_36

    :catchall_1
    move-wide/from16 v27, v12

    .line 1878
    :goto_36
    :try_start_29
    iput v3, v1, Lorg/telegram/ui/web/BotWebViewContainer;->lastSecondaryButtonColor:I

    .line 1879
    iput v4, v1, Lorg/telegram/ui/web/BotWebViewContainer;->lastSecondaryButtonTextColor:I

    .line 1880
    iput-object v5, v1, Lorg/telegram/ui/web/BotWebViewContainer;->lastSecondaryButtonText:Ljava/lang/String;

    .line 1881
    iput-object v6, v1, Lorg/telegram/ui/web/BotWebViewContainer;->lastSecondaryButtonPosition:Ljava/lang/String;

    .line 1882
    iput-object v2, v1, Lorg/telegram/ui/web/BotWebViewContainer;->secondaryButtonData:Ljava/lang/String;

    .line 1884
    iget-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    move-object/from16 v23, v0

    move/from16 v29, v3

    move/from16 v30, v4

    move-object/from16 v26, v5

    move-object/from16 v33, v6

    invoke-interface/range {v23 .. v33}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onSetupSecondaryButton(ZZLjava/lang/String;JIIZZLjava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_25

    goto/16 :goto_3d

    .line 1886
    :goto_37
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    :pswitch_37
    const-wide/16 v12, 0x0

    .line 2500
    iget-boolean v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->isRequestingPageOpen:Z

    if-nez v0, :cond_b0

    iget-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_b0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, v1, Lorg/telegram/ui/web/BotWebViewContainer;->lastClickMs:J

    sub-long/2addr v5, v7

    cmp-long v0, v5, v39

    if-lez v0, :cond_9e

    goto/16 :goto_3d

    .line 2506
    :cond_9e
    :try_start_2a
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2507
    const-string v2, "custom_emoji_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_26

    .line 2508
    :try_start_2b
    const-string v2, "duration"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_27

    move v12, v11

    :goto_38
    move-wide v10, v6

    goto :goto_39

    :catch_26
    move-wide v6, v12

    :catch_27
    const/4 v12, 0x0

    goto :goto_38

    .line 2510
    :goto_39
    iget-object v9, v1, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v9, :cond_9f

    .line 2511
    const-string v0, "UNKNOWN_ERROR"

    invoke-static {v4, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "emoji_status_failed"

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 2514
    :cond_9f
    iget v8, v1, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    new-instance v13, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda14;

    invoke-direct {v13, v1}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;)V

    invoke-static/range {v8 .. v13}, Lorg/telegram/ui/bots/SetupEmojiStatusSheet;->show(ILorg/telegram/tgnet/TLRPC$User;JILorg/telegram/messenger/Utilities$Callback2;)V

    goto/16 :goto_3d

    .line 1790
    :pswitch_38
    :try_start_2c
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1791
    const-string/jumbo v2, "slug"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1793
    iget-object v2, v1, Lorg/telegram/ui/web/BotWebViewContainer;->currentPaymentSlug:Ljava/lang/String;

    if-eqz v2, :cond_a0

    const/4 v2, 0x1

    .line 1794
    invoke-virtual {v1, v0, v15, v2}, Lorg/telegram/ui/web/BotWebViewContainer;->onInvoiceStatusUpdate(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :catch_28
    move-exception v0

    goto :goto_3a

    .line 1798
    :cond_a0
    iput-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->currentPaymentSlug:Ljava/lang/String;

    .line 1800
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;-><init>()V

    .line 1801
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceSlug;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceSlug;-><init>()V

    .line 1802
    iput-object v0, v3, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceSlug;->slug:Ljava/lang/String;

    .line 1803
    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    .line 1805
    iget v4, v1, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda25;

    invoke-direct {v5, v1, v0, v3}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceSlug;)V

    invoke-virtual {v4, v2, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I
    :try_end_2c
    .catch Lorg/json/JSONException; {:try_start_2c .. :try_end_2c} :catch_28

    return-void

    .line 1813
    :goto_3a
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    .line 1467
    :pswitch_39
    :try_start_2d
    iget-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->currentDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v0, :cond_a1

    goto/16 :goto_3d

    .line 1471
    :cond_a1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v1, Lorg/telegram/ui/web/BotWebViewContainer;->lastDialogClosed:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x96

    cmp-long v0, v3, v5

    if-gtz v0, :cond_a2

    .line 1472
    iget v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->dialogSequentialOpenTimes:I

    const/16 v22, 0x1

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->dialogSequentialOpenTimes:I

    const/4 v7, 0x3

    if-lt v0, v7, :cond_a2

    const/4 v3, 0x0

    .line 1475
    iput v3, v1, Lorg/telegram/ui/web/BotWebViewContainer;->dialogSequentialOpenTimes:I

    .line 1476
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lorg/telegram/ui/web/BotWebViewContainer;->lastDialogCooldownTime:J

    return-void

    :catch_29
    move-exception v0

    goto/16 :goto_3c

    .line 1481
    :cond_a2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v1, Lorg/telegram/ui/web/BotWebViewContainer;->lastDialogCooldownTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0xbb8

    cmp-long v0, v3, v5

    if-gtz v0, :cond_a3

    goto/16 :goto_3d

    .line 1485
    :cond_a3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1486
    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1487
    const-string v3, "message"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1488
    const-string v4, "buttons"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1490
    new-instance v4, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1491
    invoke-virtual {v4, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v2

    .line 1492
    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v2

    .line 1494
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 1495
    :goto_3b
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_a4

    .line 1496
    new-instance v5, Lorg/telegram/ui/web/BotWebViewContainer$PopupButton;

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/telegram/ui/web/BotWebViewContainer$PopupButton;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    .line 1498
    :cond_a4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v7, 0x3

    if-le v0, v7, :cond_a5

    goto/16 :goto_3d

    .line 1502
    :cond_a5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 1503
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-lt v4, v5, :cond_a6

    const/4 v5, 0x0

    .line 1504
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/web/BotWebViewContainer$PopupButton;

    .line 1505
    iget-object v5, v4, Lorg/telegram/ui/web/BotWebViewContainer$PopupButton;->text:Ljava/lang/String;

    new-instance v6, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda5;

    invoke-direct {v6, v1, v4, v0}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;Lorg/telegram/ui/web/BotWebViewContainer$PopupButton;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v2, v5, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1517
    :cond_a6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_a7

    const/4 v4, 0x1

    .line 1518
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/web/BotWebViewContainer$PopupButton;

    .line 1519
    iget-object v4, v5, Lorg/telegram/ui/web/BotWebViewContainer$PopupButton;->text:Ljava/lang/String;

    new-instance v6, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda16;

    invoke-direct {v6, v1, v5, v0}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;Lorg/telegram/ui/web/BotWebViewContainer$PopupButton;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v2, v4, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1531
    :cond_a7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v7, 0x3

    if-ne v4, v7, :cond_a8

    const/4 v5, 0x2

    .line 1532
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/web/BotWebViewContainer$PopupButton;

    .line 1533
    iget-object v5, v4, Lorg/telegram/ui/web/BotWebViewContainer$PopupButton;->text:Ljava/lang/String;

    new-instance v6, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda23;

    invoke-direct {v6, v1, v4, v0}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;Lorg/telegram/ui/web/BotWebViewContainer$PopupButton;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v2, v5, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1544
    :cond_a8
    new-instance v4, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda24;

    invoke-direct {v4, v1, v0}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1552
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->currentDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 1553
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_a9

    const/4 v5, 0x0

    .line 1554
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/web/BotWebViewContainer$PopupButton;

    .line 1555
    iget v2, v0, Lorg/telegram/ui/web/BotWebViewContainer$PopupButton;->textColorKey:I

    if-ltz v2, :cond_a9

    .line 1556
    iget-object v2, v1, Lorg/telegram/ui/web/BotWebViewContainer;->currentDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_a9

    .line 1558
    iget v0, v0, Lorg/telegram/ui/web/BotWebViewContainer$PopupButton;->textColorKey:I

    invoke-direct {v1, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1562
    :cond_a9
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v5, 0x2

    if-lt v0, v5, :cond_aa

    const/4 v2, 0x1

    .line 1563
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/web/BotWebViewContainer$PopupButton;

    .line 1564
    iget v2, v0, Lorg/telegram/ui/web/BotWebViewContainer$PopupButton;->textColorKey:I

    if-ltz v2, :cond_aa

    .line 1565
    iget-object v2, v1, Lorg/telegram/ui/web/BotWebViewContainer;->currentDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v4, -0x2

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_aa

    .line 1567
    iget v0, v0, Lorg/telegram/ui/web/BotWebViewContainer$PopupButton;->textColorKey:I

    invoke-direct {v1, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1571
    :cond_aa
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v7, 0x3

    if-ne v0, v7, :cond_b0

    const/4 v5, 0x2

    .line 1572
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/web/BotWebViewContainer$PopupButton;

    .line 1573
    iget v2, v0, Lorg/telegram/ui/web/BotWebViewContainer$PopupButton;->textColorKey:I

    if-ltz v2, :cond_b0

    .line 1574
    iget-object v2, v1, Lorg/telegram/ui/web/BotWebViewContainer;->currentDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v3, -0x3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_b0

    .line 1576
    iget v0, v0, Lorg/telegram/ui/web/BotWebViewContainer$PopupButton;->textColorKey:I

    invoke-direct {v1, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_2d .. :try_end_2d} :catch_29

    return-void

    .line 1581
    :goto_3c
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    :pswitch_3a
    move-object/from16 v4, v25

    .line 2597
    iget-boolean v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->isRequestingPageOpen:Z

    if-nez v0, :cond_b0

    iget-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_b0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, v1, Lorg/telegram/ui/web/BotWebViewContainer;->lastClickMs:J

    sub-long/2addr v6, v8

    cmp-long v0, v6, v39

    if-lez v0, :cond_ab

    goto/16 :goto_3d

    .line 2601
    :cond_ab
    iget-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->downloads:Lorg/telegram/ui/bots/BotDownloads;

    if-nez v0, :cond_ac

    .line 2602
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v3, v1, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    iget-object v6, v1, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v0, v3, v6, v7}, Lorg/telegram/ui/bots/BotDownloads;->get(Landroid/content/Context;IJ)Lorg/telegram/ui/bots/BotDownloads;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->downloads:Lorg/telegram/ui/bots/BotDownloads;

    .line 2606
    :cond_ac
    :try_start_2e
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2607
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2608
    const-string v3, "file_name"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_2a

    .line 2614
    iget-object v3, v1, Lorg/telegram/ui/web/BotWebViewContainer;->downloads:Lorg/telegram/ui/bots/BotDownloads;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/bots/BotDownloads;->getCached(Ljava/lang/String;)Lorg/telegram/ui/bots/BotDownloads$FileDownload;

    move-result-object v3

    if-eqz v3, :cond_ad

    .line 2615
    iget-object v3, v1, Lorg/telegram/ui/web/BotWebViewContainer;->downloads:Lorg/telegram/ui/bots/BotDownloads;

    invoke-virtual {v3, v2, v0}, Lorg/telegram/ui/bots/BotDownloads;->download(Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/ui/bots/BotDownloads$FileDownload;

    .line 2616
    const-string v0, "downloading"

    invoke-static {v5, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "file_download_requested"

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 2622
    :cond_ad
    new-instance v3, Lorg/telegram/tgnet/tl/TL_bots$checkDownloadFileParams;

    invoke-direct {v3}, Lorg/telegram/tgnet/tl/TL_bots$checkDownloadFileParams;-><init>()V

    .line 2623
    iget v4, v1, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v5, v1, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v4

    iput-object v4, v3, Lorg/telegram/tgnet/tl/TL_bots$checkDownloadFileParams;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 2624
    iput-object v0, v3, Lorg/telegram/tgnet/tl/TL_bots$checkDownloadFileParams;->file_name:Ljava/lang/String;

    .line 2625
    iput-object v2, v3, Lorg/telegram/tgnet/tl/TL_bots$checkDownloadFileParams;->url:Ljava/lang/String;

    .line 2626
    iget v4, v1, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda19;

    invoke-direct {v5, v1, v2, v0}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v3, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void

    :catch_2a
    move-exception v0

    .line 2610
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2611
    const-string v0, "file_download_requested"

    invoke-static {v5, v15}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :pswitch_3b
    move-object/from16 v4, v25

    .line 1734
    :try_start_2f
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1735
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1736
    const-string/jumbo v3, "try_browser"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1737
    iget v4, v1, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->webAppAllowedProtocols:Ljava/util/Set;

    if-eqz v4, :cond_b0

    iget v4, v1, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    .line 1738
    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->webAppAllowedProtocols:Ljava/util/Set;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b0

    .line 1739
    const-string/jumbo v4, "try_instant_view"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/web/BotWebViewContainer;->onOpenUri(Landroid/net/Uri;Ljava/lang/String;ZZZ)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_2b

    return-void

    :catch_2b
    move-exception v0

    .line 1742
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3d

    .line 2079
    :pswitch_3c
    invoke-direct {v1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyBiometryReceived()V

    return-void

    .line 1419
    :pswitch_3d
    iget-boolean v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->hasQRPending:Z

    if-eqz v0, :cond_b0

    iget-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->cameraBottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    if-eqz v0, :cond_b0

    .line 1420
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void

    :pswitch_3e
    move-object/from16 v4, v32

    .line 1959
    iget-object v0, v1, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v0, :cond_ae

    goto :goto_3d

    .line 1963
    :cond_ae
    :try_start_30
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1964
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1965
    const-string v3, "method"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1966
    const-string v4, "params"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1967
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_2c

    .line 1978
    iget v4, v1, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    .line 1979
    iget-object v5, v1, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    .line 1980
    new-instance v6, Lorg/telegram/tgnet/tl/TL_bots$invokeWebViewCustomMethod;

    invoke-direct {v6}, Lorg/telegram/tgnet/tl/TL_bots$invokeWebViewCustomMethod;-><init>()V

    .line 1981
    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-object v8, v1, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v7, v8, v9}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v7

    iput-object v7, v6, Lorg/telegram/tgnet/tl/TL_bots$invokeWebViewCustomMethod;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 1982
    iput-object v3, v6, Lorg/telegram/tgnet/tl/TL_bots$invokeWebViewCustomMethod;->custom_method:Ljava/lang/String;

    .line 1983
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;-><init>()V

    iput-object v3, v6, Lorg/telegram/tgnet/tl/TL_bots$invokeWebViewCustomMethod;->params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    .line 1984
    iput-object v0, v3, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    .line 1985
    invoke-static {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v3, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda27;

    invoke-direct {v3, v1, v2, v4, v5}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;Ljava/lang/String;ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V

    invoke-virtual {v0, v6, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void

    :catch_2c
    move-exception v0

    .line 1969
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1970
    instance-of v0, v0, Lorg/json/JSONException;

    if-eqz v0, :cond_af

    .line 1971
    invoke-direct {v1, v12}, Lorg/telegram/ui/web/BotWebViewContainer;->error(Ljava/lang/String;)V

    goto :goto_3d

    .line 1973
    :cond_af
    invoke-direct {v1}, Lorg/telegram/ui/web/BotWebViewContainer;->unknownError()V

    :cond_b0
    :goto_3d
    return-void

    .line 1331
    :cond_b1
    :goto_3e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": no webview or delegate!"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->d(Ljava/lang/String;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x78380c2f -> :sswitch_3e
        -0x712ef480 -> :sswitch_3d
        -0x67840eae -> :sswitch_3c
        -0x665c257a -> :sswitch_3b
        -0x6643928e -> :sswitch_3a
        -0x64ed6860 -> :sswitch_39
        -0x52e382df -> :sswitch_38
        -0x529356cf -> :sswitch_37
        -0x50abbe78 -> :sswitch_36
        -0x4feea439 -> :sswitch_35
        -0x4e07a07c -> :sswitch_34
        -0x4b514e0b -> :sswitch_33
        -0x4b1915b0 -> :sswitch_32
        -0x494594ed -> :sswitch_31
        -0x468baa4b -> :sswitch_30
        -0x412ee203 -> :sswitch_2f
        -0x36e69d41 -> :sswitch_2e
        -0x3613b5a1 -> :sswitch_2d
        -0x24f605c5 -> :sswitch_2c
        -0x22de85df -> :sswitch_2b
        -0x22a1700e -> :sswitch_2a
        -0x1e8f02cd -> :sswitch_29
        -0x1db0aec4 -> :sswitch_28
        -0x1c4afc94 -> :sswitch_27
        -0x1a365bc6 -> :sswitch_26
        -0x11848435 -> :sswitch_25
        -0xe9410c6 -> :sswitch_24
        -0xceaf632 -> :sswitch_23
        -0x6a09221 -> :sswitch_22
        -0x44674d1 -> :sswitch_21
        -0x3767926 -> :sswitch_20
        0x14fedd3 -> :sswitch_1f
        0x79d187b -> :sswitch_1e
        0xb4715b1 -> :sswitch_1d
        0xff702aa -> :sswitch_1c
        0x14ccd349 -> :sswitch_1b
        0x190db429 -> :sswitch_1a
        0x1c5922fb -> :sswitch_19
        0x2514a113 -> :sswitch_18
        0x27d30cb4 -> :sswitch_17
        0x280b07c0 -> :sswitch_16
        0x2b082f8f -> :sswitch_15
        0x2ca2c394 -> :sswitch_14
        0x2cc7cfc4 -> :sswitch_13
        0x2f410320 -> :sswitch_12
        0x2f73adf3 -> :sswitch_11
        0x347d4962 -> :sswitch_10
        0x36358261 -> :sswitch_f
        0x3c49757f -> :sswitch_e
        0x48211e2f -> :sswitch_d
        0x4bed2d1d -> :sswitch_c
        0x535b446d -> :sswitch_b
        0x569bcda2 -> :sswitch_a
        0x56c86043 -> :sswitch_9
        0x5927e9cc -> :sswitch_8
        0x6c06f5cd -> :sswitch_7
        0x7038f2de -> :sswitch_6
        0x7131a349 -> :sswitch_5
        0x7244ae57 -> :sswitch_4
        0x73755306 -> :sswitch_3
        0x7749e138 -> :sswitch_2
        0x795c475d -> :sswitch_1
        0x7f8ad843 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x4041708b -> :sswitch_43
        0x35f42a -> :sswitch_42
        0x5e8f0c7 -> :sswitch_41
        0x6233516 -> :sswitch_40
        0x677c22b -> :sswitch_3f
    .end sparse-switch
.end method

.method private onOpenUri(Landroid/net/Uri;)V
    .locals 7

    .line 515
    iget-boolean v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->bot:Z

    xor-int/lit8 v4, v0, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/web/BotWebViewContainer;->onOpenUri(Landroid/net/Uri;Ljava/lang/String;ZZZ)V

    return-void
.end method

.method private onOpenUri(Landroid/net/Uri;Ljava/lang/String;ZZZ)V
    .locals 12

    .line 519
    iget-boolean v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->isRequestingPageOpen:Z

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastClickMs:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 523
    iput-wide v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastClickMs:J

    const/4 v0, 0x1

    .line 524
    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    .line 525
    invoke-static {p1, v0}, Lorg/telegram/messenger/browser/Browser;->isInternalUri(Landroid/net/Uri;[Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 527
    aget-boolean v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    if-eqz v0, :cond_1

    .line 528
    invoke-virtual {p0, v1}, Lorg/telegram/ui/web/BotWebViewContainer;->setKeyboardFocusable(Z)V

    .line 531
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    move-object v8, p2

    move v5, p3

    move/from16 v11, p5

    invoke-static/range {v2 .. v11}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Landroid/net/Uri;ZZZLorg/telegram/messenger/browser/Browser$Progress;Ljava/lang/String;ZZZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method private onWebEventReceived(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1208
    iget-boolean v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->bot:Z

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 1209
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    if-nez v0, :cond_1

    goto/16 :goto_3

    .line 1210
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWebEventReceived "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->d(Ljava/lang/String;)V

    .line 1211
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const-string v2, "actionBarColor"

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "allowScroll"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v6, 0x4

    goto :goto_0

    :sswitch_1
    const-string/jumbo v0, "siteName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move v6, v1

    goto :goto_0

    :sswitch_2
    const-string v0, "oauth_request"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move v6, v3

    goto :goto_0

    :sswitch_3
    const-string v0, "navigationBarColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    move v6, v5

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    move v6, v4

    :goto_0
    packed-switch v6, :pswitch_data_0

    goto/16 :goto_3

    .line 1240
    :pswitch_0
    :try_start_0
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1241
    invoke-virtual {p1, v4, v5}, Lorg/json/JSONArray;->optBoolean(IZ)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1242
    :try_start_1
    invoke-virtual {p1, v5, v5}, Lorg/json/JSONArray;->optBoolean(IZ)Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move p2, v5

    .line 1245
    :catch_1
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    if-eqz p1, :cond_b

    .line 1246
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    .line 1247
    invoke-virtual {p1, p2, v5}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->allowThisScroll(ZZ)V

    goto/16 :goto_3

    .line 1252
    :pswitch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "siteName "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->d(Ljava/lang/String;)V

    .line 1253
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    if-eqz p1, :cond_b

    .line 1254
    iput-object p2, p1, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->lastSiteName:Ljava/lang/String;

    .line 1255
    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$msaveHistory(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V

    return-void

    .line 1260
    :pswitch_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "oauth_request "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->d(Ljava/lang/String;)V

    .line 1261
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    if-nez p1, :cond_7

    goto/16 :goto_3

    .line 1262
    :cond_7
    invoke-virtual {p0}, Lorg/telegram/ui/web/BotWebViewContainer;->getOriginHost()Ljava/lang/String;

    move-result-object p1

    .line 1263
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_3

    .line 1265
    :cond_8
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1266
    const-string/jumbo p2, "url"

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1267
    const-string v0, "oauth_supported"

    const-string/jumbo v1, "version"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1269
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1270
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;-><init>()V

    .line 1271
    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;->url:Ljava/lang/String;

    .line 1272
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;->flags:I

    .line 1273
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;->in_app_origin:Ljava/lang/String;

    or-int/lit8 v1, v1, 0xc

    .line 1274
    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;->flags:I

    .line 1275
    iget v1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0, p2, p1}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception p1

    .line 1296
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 1215
    :pswitch_3
    :try_start_3
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1216
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 1218
    invoke-virtual {v0, v1, v6, v7}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v1

    const-wide v6, 0x406fe00000000000L    # 255.0

    mul-double/2addr v1, v6

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int p2, v1

    .line 1219
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    .line 1220
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v2, v6

    .line 1221
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v0, v3

    .line 1217
    invoke-static {p2, v1, v2, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    .line 1223
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    if-eqz v0, :cond_a

    if-eqz p1, :cond_9

    .line 1225
    iput-boolean v5, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->lastActionBarColorGot:Z

    .line 1226
    iput p2, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->lastActionBarColor:I

    goto :goto_2

    .line 1228
    :cond_9
    iput-boolean v5, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->lastBackgroundColorGot:Z

    .line 1229
    iput p2, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->lastBackgroundColor:I

    .line 1231
    :goto_2
    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$msaveHistory(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V

    .line 1233
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    invoke-interface {v0, p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onWebAppBackgroundChanged(ZI)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :cond_b
    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x65085c9a -> :sswitch_4
        -0x1b948ebc -> :sswitch_3
        0x1c9820e7 -> :sswitch_2
        0x283bd272 -> :sswitch_1
        0x3b751b76 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private openQrScanActivity()V
    .locals 4

    .line 3048
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->parentActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 3052
    :cond_0
    new-instance v1, Lorg/telegram/ui/web/BotWebViewContainer$6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/web/BotWebViewContainer$6;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;)V

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v0, v2, v3, v1}, Lorg/telegram/ui/CameraScanActivity;->showAsSheet(Landroid/app/Activity;ZILorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;)Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->cameraBottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    return-void
.end method

.method public static proxyTON(Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 2

    .line 3446
    invoke-interface {p0}, Landroid/webkit/WebResourceRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lorg/telegram/ui/web/BotWebViewContainer;->proxyTON(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object p0

    return-object p0
.end method

.method public static proxyTON(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;
    .locals 2

    .line 3471
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->getHostAuthority(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer;->rotateTONHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "https"

    invoke-static {v0, p1, v1}, Lorg/telegram/messenger/browser/Browser;->replaceHostname(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3472
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 3473
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    .line 3474
    invoke-virtual {p1, p0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 3476
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 3477
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3480
    :cond_0
    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    .line 3481
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    .line 3482
    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object p2

    .line 3483
    const-string v0, ";"

    const/4 v1, 0x2

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    aget-object p2, p2, v0

    .line 3484
    new-instance v0, Landroid/webkit/WebResourceResponse;

    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p2, p1, p0}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 3486
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private reportSafeContentInsets(IZ)V
    .locals 9

    const/4 v0, 0x0

    .line 2950
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-nez p2, :cond_0

    .line 2947
    iget p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastInsetsTopMargin:I

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    int-to-float p2, p1

    .line 2950
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr p2, v0

    .line 2951
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const-string v5, "right"

    .line 2952
    const-string v7, "bottom"

    .line 2949
    const-string v1, "left"

    const-string/jumbo v3, "top"

    move-object v6, v2

    move-object v8, v2

    invoke-static/range {v1 .. v8}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "content_safe_area_changed"

    invoke-virtual {p0, v0, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 2955
    iput p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastInsetsTopMargin:I

    return-void
.end method

.method private reportSafeInsets(Landroid/graphics/Rect;Z)V
    .locals 8

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    .line 2936
    iget-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastInsets:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 2938
    :cond_0
    iget p2, p1, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr p2, v0

    .line 2939
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget p2, p1, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr p2, v0

    .line 2940
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget p2, p1, Landroid/graphics/Rect;->right:I

    int-to-float p2, p2

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr p2, v0

    .line 2941
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr p2, v0

    .line 2942
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    .line 2938
    const-string v0, "left"

    const-string/jumbo v2, "top"

    const-string v4, "right"

    const-string v6, "bottom"

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "safe_area_changed"

    invoke-virtual {p0, v0, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 2944
    iget-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastInsets:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private restoreStorageKey(Lorg/telegram/ui/bots/BotStorage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 2853
    const-string v0, "KEY_INVALID"

    const-string v1, "error"

    const-string v2, "req_id"

    if-eqz p1, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v3, :cond_1

    :cond_0
    move-object v5, p0

    goto/16 :goto_0

    .line 2857
    :cond_1
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2858
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 2868
    :try_start_1
    const-string p2, "key"

    invoke-virtual {v3, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v9, :cond_2

    .line 2874
    invoke-static {v2, v7, v1, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, p4, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 2879
    :cond_2
    :try_start_2
    invoke-virtual {p1, v9}, Lorg/telegram/ui/bots/BotStorage;->getStoragesWithKey(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2884
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2885
    const-string p1, "RESTORE_UNAVAILABLE"

    invoke-static {v2, v7, v1, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, p4, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 2889
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v4, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda42;

    move-object v5, p0

    move-object v8, p1

    move-object v10, p3

    move-object v6, p4

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda42;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/ui/bots/BotStorage;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0, p2, v4}, Lorg/telegram/ui/bots/BotStorage;->showChooseStorage(Landroid/content/Context;Ljava/util/List;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void

    :catch_0
    move-exception v0

    move-object v5, p0

    move-object v6, p4

    move-object p1, v0

    .line 2881
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v7, v1, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, v6, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :catch_1
    move-object v5, p0

    move-object v6, p4

    .line 2870
    invoke-static {v2, v7, v1, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, v6, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :catch_2
    move-exception v0

    move-object v5, p0

    move-object v6, p4

    move-object p1, v0

    .line 2860
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2861
    const-string p1, ""

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 2862
    const-string p2, "UNKNOWN_ERROR"

    invoke-static {v2, p1, v1, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, v6, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public static rotateTONHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x1

    .line 3453
    :try_start_0
    invoke-static {p0, v0}, Ljava/net/IDN;->toASCII(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3455
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3457
    :goto_0
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 3458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 3459
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    .line 3461
    const-string v2, "-d"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3463
    :cond_0
    aget-object v2, p0, v1

    const-string v3, "\\-"

    const-string v4, "-h"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3465
    :cond_1
    const-string p0, "."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget-object p0, p0, Lorg/telegram/messenger/MessagesController;->tonProxyAddress:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3466
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private runWithPermissions([Ljava/lang/String;Landroidx/core/util/Consumer;)V
    .locals 1

    .line 678
    invoke-direct {p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->checkPermissions([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 679
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, p1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 681
    :cond_0
    new-instance v0, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda44;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda44;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;Landroidx/core/util/Consumer;[Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->onPermissionsRequestResultCallback:Ljava/lang/Runnable;

    .line 683
    iget-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->parentActivity:Landroid/app/Activity;

    if-eqz p2, :cond_1

    const/16 v0, 0xfa0

    .line 684
    invoke-virtual {p2, p1, v0}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method private setStorageKey(Lorg/telegram/ui/bots/BotStorage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 2775
    const-string v0, "KEY_INVALID"

    const-string v1, "error"

    const-string v2, "req_id"

    if-eqz p1, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v3, :cond_0

    goto :goto_0

    .line 2779
    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2780
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 2790
    :try_start_1
    const-string v4, "key"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-nez v4, :cond_1

    .line 2796
    invoke-static {v2, p2, v1, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, p4, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 2801
    :cond_1
    :try_start_2
    const-string/jumbo v0, "value"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2807
    :try_start_3
    invoke-virtual {p1, v4, v0}, Lorg/telegram/ui/bots/BotStorage;->setKey(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 2812
    invoke-static {v2, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :catch_0
    move-exception p1

    .line 2809
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p2, v1, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, p4, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 2803
    :catch_1
    const-string p1, "VALUE_INVALID"

    invoke-static {v2, p2, v1, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, p4, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 2792
    :catch_2
    invoke-static {v2, p2, v1, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, p4, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :catch_3
    move-exception p1

    .line 2782
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2783
    const-string p1, ""

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 2784
    const-string p2, "UNKNOWN_ERROR"

    invoke-static {v2, p1, v1, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, p4, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setupFlickerParams(Z)V
    .locals 2

    .line 980
    iput-boolean p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->isFlickeringCenter:Z

    .line 981
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_0

    const/16 v1, 0x11

    goto :goto_0

    :cond_0
    const/16 v1, 0x30

    .line 982
    :goto_0
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eqz p1, :cond_1

    const/high16 p1, 0x42c80000    # 100.0f

    .line 984
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_1

    :cond_1
    const/4 p1, -0x1

    .line 986
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 p1, -0x2

    .line 987
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 990
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private setupWebView(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V
    .locals 1

    const/4 v0, 0x0

    .line 361
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->setupWebView(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;Ljava/lang/Object;)V

    return-void
.end method

.method private setupWebView(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;Ljava/lang/Object;)V
    .locals 9

    .line 391
    const-string v0, ")"

    iget-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    if-eqz v1, :cond_0

    .line 392
    invoke-virtual {v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->destroy()V

    .line 393
    iget-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 396
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 400
    :try_start_0
    sget-boolean v3, Lorg/telegram/messenger/SharedConfig;->debugWebView:Z

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lorg/telegram/ui/web/BotWebViewContainer;->isVerifyingAge()Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_0
    invoke-static {v3}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 403
    :goto_1
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_2
    if-nez p1, :cond_5

    .line 405
    new-instance v3, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-boolean v5, p0, Lorg/telegram/ui/web/BotWebViewContainer;->bot:Z

    const-wide/16 v6, 0x0

    if-eqz v5, :cond_4

    iget-object v8, p0, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v8, :cond_3

    goto :goto_3

    :cond_3
    iget-wide v6, v8, Lorg/telegram/tgnet/TLRPC$User;->id:J

    :cond_4
    :goto_3
    invoke-direct {v3, v4, v5, v6, v7}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;-><init>(Landroid/content/Context;ZJ)V

    goto :goto_4

    :cond_5
    move-object v3, p1

    :goto_4
    iput-object v3, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    .line 406
    iget-boolean v4, p0, Lorg/telegram/ui/web/BotWebViewContainer;->bot:Z

    if-nez v4, :cond_6

    .line 407
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    .line 408
    invoke-virtual {v3, v2}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 410
    iget-object v4, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {v3, v4, v2}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 413
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/CookieManager;->flush()V

    .line 415
    iget-object v3, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iget-object v4, p0, Lorg/telegram/ui/web/BotWebViewContainer;->opener:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iput-object v4, v3, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->opener:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    goto :goto_5

    .line 417
    :cond_6
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-direct {p0, v4}, Lorg/telegram/ui/web/BotWebViewContainer;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 419
    :goto_5
    iget v3, p0, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/messenger/MessagesController;->disableBotFullscreenBlur:Z

    if-nez v3, :cond_7

    .line 420
    iget-object v3, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 422
    :cond_7
    iget-object v3, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iget-object v4, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webViewScrollListener:Lorg/telegram/ui/web/BotWebViewContainer$WebViewScrollListener;

    invoke-virtual {v3, p0, v4}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->setContainers(Lorg/telegram/ui/web/BotWebViewContainer;Lorg/telegram/ui/web/BotWebViewContainer$WebViewScrollListener;)V

    .line 423
    iget-object v3, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iget-object v4, p0, Lorg/telegram/ui/web/BotWebViewContainer;->onCloseListener:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->setCloseListener(Ljava/lang/Runnable;)V

    .line 424
    iget-object v3, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    .line 425
    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 426
    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 427
    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 428
    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 429
    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 430
    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 431
    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 432
    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 433
    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 434
    iget-boolean v4, p0, Lorg/telegram/ui/web/BotWebViewContainer;->bot:Z

    if-nez v4, :cond_8

    .line 435
    sget-object v4, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    const/4 v4, -0x1

    .line 436
    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 437
    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 438
    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 439
    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 440
    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 441
    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 442
    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 443
    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 444
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v4, v5, :cond_8

    .line 445
    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setSafeBrowsingEnabled(Z)V

    .line 448
    :cond_8
    invoke-direct {p0}, Lorg/telegram/ui/web/BotWebViewContainer;->isVerifyingAge()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 449
    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 453
    :cond_9
    :try_start_1
    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v4

    .line 454
    const-string v5, "; wv)"

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 455
    const-string v5, "\\(Linux; Android.+;[^)]+\\)"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "(Linux; Android "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "; K)"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 456
    const-string v5, "Version/[\\d\\.]+ "

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 457
    iget-boolean v5, p0, Lorg/telegram/ui/web/BotWebViewContainer;->bot:Z

    if-eqz v5, :cond_c

    .line 458
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 459
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v6

    if-nez v6, :cond_a

    .line 460
    const-string v2, "LOW"

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_7

    :cond_a
    if-ne v6, v2, :cond_b

    const-string v2, "AVERAGE"

    goto :goto_6

    :cond_b
    const-string v2, "HIGH"

    .line 461
    :goto_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Telegram-Android/"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v4}, Lorg/telegram/ui/web/BotWebViewContainer;->capitalizeFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; Android "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; SDK "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "; "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 463
    :cond_c
    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_8

    .line 465
    :goto_7
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 469
    :goto_8
    sget-object v0, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;

    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setTextSize(Landroid/webkit/WebSettings$TextSize;)V

    .line 471
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v4, "webview_database"

    invoke-direct {v0, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 472
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_e

    :cond_d
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 473
    :cond_e
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 475
    :cond_f
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/GeolocationPermissions;->clearAll()V

    .line 477
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    if-nez p1, :cond_10

    .line 478
    iget-boolean v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->bot:Z

    if-eqz v0, :cond_10

    .line 479
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 481
    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 485
    iget-boolean v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->bot:Z

    const-string v2, "TelegramWebviewProxy"

    if-eqz v0, :cond_14

    .line 486
    instance-of v0, p2, Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;

    if-eqz v0, :cond_11

    .line 487
    check-cast p2, Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;

    iput-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->botWebViewProxy:Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;

    .line 489
    :cond_11
    iget-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->botWebViewProxy:Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;

    if-nez p2, :cond_12

    .line 490
    new-instance p1, Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;

    invoke-direct {p1, p0}, Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;)V

    iput-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->botWebViewProxy:Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;

    .line 491
    iget-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {p2, p1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_9

    :cond_12
    if-nez p1, :cond_13

    .line 493
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {p1, p2, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 495
    :cond_13
    :goto_9
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->botWebViewProxy:Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;

    invoke-virtual {p1, p0}, Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;->setContainer(Lorg/telegram/ui/web/BotWebViewContainer;)V

    goto :goto_b

    .line 497
    :cond_14
    instance-of v0, p2, Lorg/telegram/ui/web/BotWebViewContainer$WebViewProxy;

    if-eqz v0, :cond_15

    .line 498
    check-cast p2, Lorg/telegram/ui/web/BotWebViewContainer$WebViewProxy;

    iput-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webViewProxy:Lorg/telegram/ui/web/BotWebViewContainer$WebViewProxy;

    .line 500
    :cond_15
    iget-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webViewProxy:Lorg/telegram/ui/web/BotWebViewContainer$WebViewProxy;

    if-nez p2, :cond_16

    .line 501
    new-instance p1, Lorg/telegram/ui/web/BotWebViewContainer$WebViewProxy;

    iget-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-direct {p1, p2, p0}, Lorg/telegram/ui/web/BotWebViewContainer$WebViewProxy;-><init>(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;Lorg/telegram/ui/web/BotWebViewContainer;)V

    iput-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webViewProxy:Lorg/telegram/ui/web/BotWebViewContainer$WebViewProxy;

    .line 502
    iget-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {p2, p1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_a

    :cond_16
    if-nez p1, :cond_17

    .line 504
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {p1, p2, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 506
    :cond_17
    :goto_a
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webViewProxy:Lorg/telegram/ui/web/BotWebViewContainer$WebViewProxy;

    invoke-virtual {p1, p0}, Lorg/telegram/ui/web/BotWebViewContainer$WebViewProxy;->setContainer(Lorg/telegram/ui/web/BotWebViewContainer;)V

    .line 510
    :goto_b
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->onWebViewCreated(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V

    .line 511
    sput-boolean v1, Lorg/telegram/ui/web/BotWebViewContainer;->firstWebView:Z

    return-void
.end method

.method private showDialog(ILorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/Runnable;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 3024
    invoke-direct {p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->ignoreDialog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3027
    :cond_0
    new-instance v1, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda35;

    invoke-direct {v1, p0, p3}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda35;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;Ljava/lang/Runnable;)V

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 3033
    iput-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->currentDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 3034
    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->setDismissDialogByButtons(Z)V

    .line 3035
    iget-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->currentDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    .line 3037
    iget p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastDialogType:I

    if-eq p2, p1, :cond_1

    .line 3038
    iput p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastDialogType:I

    .line 3039
    iput v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->shownDialogsCount:I

    const-wide/16 p1, 0x0

    .line 3040
    iput-wide p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->blockedDialogsUntil:J

    .line 3042
    :cond_1
    iget p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->shownDialogsCount:I

    const/4 p2, 0x1

    add-int/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->shownDialogsCount:I

    return p2

    :cond_2
    :goto_0
    return v0
.end method

.method private static tonsite2magic(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    return-object p0

    .line 5146
    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 5147
    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer;->isTonsite(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5148
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->getHostAuthority(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 5150
    :try_start_0
    invoke-static {v0, v1}, Ljava/net/IDN;->toASCII(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5152
    :catch_0
    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer;->rotateTONHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5153
    sget-object v2, Lorg/telegram/ui/web/BotWebViewContainer;->rotatedTONHosts:Ljava/util/HashMap;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lorg/telegram/ui/web/BotWebViewContainer;->rotatedTONHosts:Ljava/util/HashMap;

    .line 5154
    :cond_1
    sget-object v2, Lorg/telegram/ui/web/BotWebViewContainer;->rotatedTONHosts:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5155
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v0, "https"

    invoke-static {p0, v1, v0}, Lorg/telegram/messenger/browser/Browser;->replaceHostname(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method private unknownError()V
    .locals 1

    const/4 v0, 0x0

    .line 2989
    invoke-direct {p0, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->unknownError(Ljava/lang/String;)V

    return-void
.end method

.method private unknownError(Ljava/lang/String;)V
    .locals 3

    .line 2993
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnknownError"

    sget v2, Lorg/telegram/messenger/R$string;->UnknownError:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->error(Ljava/lang/String;)V

    return-void
.end method

.method private updateKeyboardFocusable()V
    .locals 3

    .line 538
    iget-boolean v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->wasFocusable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/high16 v0, 0x60000

    .line 540
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 541
    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 543
    iget-object v2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    if-eqz v2, :cond_0

    .line 544
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 545
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 547
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 557
    :cond_1
    iput-boolean v1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->wasFocusable:Z

    return-void
.end method


# virtual methods
.method public checkCreateWebView()V
    .locals 2

    .line 336
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webViewNotAvailable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 338
    :try_start_0
    invoke-direct {p0, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->setupWebView(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 340
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 342
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    .line 343
    iput-boolean v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webViewNotAvailable:Z

    .line 344
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webViewNotAvailableText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 345
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .line 5139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[webviewcontainer] #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->tag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public destroyWebView()V
    .locals 3

    .line 1077
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "destroyWebView preserving="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->preserving:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->d(Ljava/lang/String;)V

    .line 1078
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    if-eqz v0, :cond_5

    .line 1079
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1080
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1082
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->preserving:Z

    if-nez v0, :cond_1

    .line 1083
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->destroy()V

    .line 1084
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->onWebViewDestroyed(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V

    :cond_1
    const/4 v0, 0x0

    .line 1086
    iput-boolean v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->isPageLoaded:Z

    .line 1087
    invoke-direct {p0}, Lorg/telegram/ui/web/BotWebViewContainer;->updateKeyboardFocusable()V

    .line 1089
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->biometry:Lorg/telegram/ui/bots/BotBiometry;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1090
    iput-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->biometry:Lorg/telegram/ui/bots/BotBiometry;

    .line 1092
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->storage:Lorg/telegram/ui/bots/BotStorage;

    if-eqz v0, :cond_3

    .line 1093
    iput-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->storage:Lorg/telegram/ui/bots/BotStorage;

    .line 1095
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->secureStorage:Lorg/telegram/ui/bots/BotStorage;

    if-eqz v0, :cond_4

    .line 1096
    iput-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->secureStorage:Lorg/telegram/ui/bots/BotStorage;

    .line 1098
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->location:Lorg/telegram/ui/bots/BotLocation;

    if-eqz v0, :cond_5

    .line 1099
    iget-object v2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->notifyLocationChecked:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/bots/BotLocation;->unlisten(Ljava/lang/Runnable;)V

    .line 1100
    iput-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->location:Lorg/telegram/ui/bots/BotLocation;

    :cond_5
    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 3

    .line 1132
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didSetNewTheme:I

    const/4 v0, 0x0

    if-ne p1, p2, :cond_3

    .line 1133
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    if-eqz p1, :cond_0

    .line 1134
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-direct {p0, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1136
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerViewColorOverriden:Z

    if-nez p1, :cond_2

    .line 1137
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_bot_loadingIcon:I

    invoke-direct {p0, p3}, Lorg/telegram/ui/web/BotWebViewContainer;->getColor(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerViewColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BackupImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1138
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerViewDrawable:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    if-eqz p1, :cond_1

    .line 1139
    iget p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerViewColor:I

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->setColor(I)V

    .line 1140
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerViewDrawable:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    iget-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, p3, p2, v1, v0}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->setupGradient(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;FZ)V

    .line 1142
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 1144
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyThemeChanged()V

    return-void

    .line 1145
    :cond_3
    sget p2, Lorg/telegram/messenger/NotificationCenter;->onActivityResultReceived:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, p2, :cond_4

    .line 1146
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p3, v2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aget-object p3, p3, v1

    check-cast p3, Landroid/content/Intent;

    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/ui/web/BotWebViewContainer;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    .line 1147
    :cond_4
    sget p2, Lorg/telegram/messenger/NotificationCenter;->onRequestPermissionResultReceived:I

    if-ne p1, p2, :cond_5

    .line 1148
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p3, v2

    check-cast p2, [Ljava/lang/String;

    aget-object p3, p3, v1

    check-cast p3, [I

    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/ui/web/BotWebViewContainer;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :cond_5
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 4

    .line 856
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    if-ne p2, v0, :cond_3

    .line 857
    iget-boolean v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->isFlickeringCenter:Z

    if-eqz v0, :cond_0

    .line 858
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 859
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 860
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    sub-float/2addr v3, v0

    div-float/2addr v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 862
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 863
    iget-boolean p3, p0, Lorg/telegram/ui/web/BotWebViewContainer;->isFlickeringCenter:Z

    if-eqz p3, :cond_1

    .line 864
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 867
    :cond_1
    iget-boolean p3, p0, Lorg/telegram/ui/web/BotWebViewContainer;->isFlickeringCenter:Z

    if-nez p3, :cond_2

    .line 868
    sget-object p3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p3, v2, v2, p4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 869
    iget-object p4, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    invoke-virtual {p4, p1, p3, v2, p0}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/view/View;)V

    .line 870
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return p2

    .line 874
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webViewNotAvailableText:Landroid/widget/TextView;

    if-ne p2, v0, :cond_4

    .line 875
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 876
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 877
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    sub-float/2addr v3, v0

    div-float/2addr v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 878
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 879
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    .line 882
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    if-ne p2, v0, :cond_6

    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->makingGlobalBlurBitmap:Z

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    const/4 p1, 0x1

    return p1

    .line 885
    :cond_6
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public evaluateJs(Ljava/lang/String;Z)V
    .locals 2

    .line 1119
    iget v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/NotificationCenter;->doOnIdle(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getBotProxy()Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;
    .locals 1

    .line 366
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->botWebViewProxy:Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;

    return-object v0
.end method

.method public getMinHeight()I
    .locals 2

    .line 808
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    if-eqz v0, :cond_0

    .line 809
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    .line 810
    invoke-virtual {v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->isFullSize()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 811
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getOffsetY()F

    move-result v0

    sub-float/2addr v1, v0

    iget v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->viewPortHeightOffset:F

    add-float/2addr v1, v0

    float-to-int v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getOriginHost()Ljava/lang/String;
    .locals 5

    .line 1304
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1305
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1306
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 1307
    :cond_1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1308
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 1309
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 1310
    invoke-virtual {v0}, Landroid/net/Uri;->getPort()I

    move-result v0

    if-eqz v2, :cond_6

    if-nez v3, :cond_2

    goto :goto_0

    .line 1312
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1313
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1314
    const-string v4, "://"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1315
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_5

    .line 1316
    const-string v3, "http"

    .line 1317
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x50

    if-eq v0, v3, :cond_5

    :cond_3
    const-string v3, "https"

    .line 1318
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x1bb

    if-eq v0, v2, :cond_5

    .line 1320
    :cond_4
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1321
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1323
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    :goto_0
    return-object v1
.end method

.method public getProxy()Lorg/telegram/ui/web/BotWebViewContainer$WebViewProxy;
    .locals 1

    .line 370
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webViewProxy:Lorg/telegram/ui/web/BotWebViewContainer$WebViewProxy;

    return-object v0
.end method

.method public getUrlLoaded()Ljava/lang/String;
    .locals 1

    .line 663
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;
    .locals 1

    .line 910
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    return-object v0
.end method

.method public hasUserPermissions()Z
    .locals 1

    .line 667
    iget-boolean v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->hasUserPermissions:Z

    return v0
.end method

.method public invalidateViewPortHeight()V
    .locals 1

    const/4 v0, 0x0

    .line 795
    invoke-virtual {p0, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->invalidateViewPortHeight(Z)V

    return-void
.end method

.method public invalidateViewPortHeight(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 799
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->invalidateViewPortHeight(ZZ)V

    return-void
.end method

.method public invalidateViewPortHeight(ZZ)V
    .locals 4

    .line 822
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 823
    iget-boolean v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->isPageLoaded:Z

    if-nez v0, :cond_0

    if-eqz p2, :cond_5

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->bot:Z

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 827
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    if-eqz v0, :cond_5

    .line 828
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    if-eqz p1, :cond_3

    .line 831
    invoke-virtual {v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getSwipeOffsetY()F

    move-result v1

    invoke-virtual {v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getOffsetY()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getTopActionBarOffsetY()F

    move-result v3

    add-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastExpanded:Z

    .line 834
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/web/BotWebViewContainer;->getMinHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getOffsetY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getSwipeOffsetY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getTopActionBarOffsetY()F

    move-result v0

    add-float/2addr v2, v0

    iget v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->viewPortHeightOffset:F

    add-float/2addr v2, v0

    float-to-int v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-nez p2, :cond_4

    .line 835
    iget p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastViewportHeightReported:I

    if-ne v0, p2, :cond_4

    iget-boolean p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastViewportStateStable:Z

    if-ne p2, p1, :cond_4

    iget-boolean p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastViewportIsExpanded:Z

    iget-boolean v1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastExpanded:Z

    if-eq p2, v1, :cond_5

    .line 841
    :cond_4
    iput v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastViewportHeightReported:I

    .line 842
    iput-boolean p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastViewportStateStable:Z

    .line 843
    iget-boolean p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastExpanded:Z

    iput-boolean p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastViewportIsExpanded:Z

    .line 845
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 846
    const-string/jumbo v1, "{height:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float v0, v0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    const-string v1, "is_state_stable:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    const-string p1, "is_expanded:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastExpanded:Z

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "}"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    const-string/jumbo p1, "viewport_changed"

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent_fast(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public isBackButtonVisible()Z
    .locals 1

    .line 1110
    iget-boolean v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->isBackButtonVisible:Z

    return v0
.end method

.method public isPageLoaded()Z
    .locals 1

    .line 691
    iget-boolean v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->isPageLoaded:Z

    return v0
.end method

.method public loadFlickerAndSettingsItem(IJLorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)V
    .locals 9

    .line 914
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p4, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p4

    .line 915
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v0

    .line 916
    invoke-static {p4}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p4

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p4, :cond_0

    .line 917
    const-string v4, "DurgerKingBot"

    invoke-virtual {p4, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 918
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 919
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 920
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    sget p2, Lorg/telegram/messenger/R$raw;->durgerking_placeholder:I

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-direct {p0, p3}, Lorg/telegram/ui/web/BotWebViewContainer;->getColor(I)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p2, p3}, Lorg/telegram/messenger/SvgHelper;->getDrawable(ILjava/lang/Integer;)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object p2

    invoke-virtual {p1, v2, v2, p2}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 921
    invoke-direct {p0, v3}, Lorg/telegram/ui/web/BotWebViewContainer;->setupFlickerParams(Z)V

    return-void

    .line 926
    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaDataController;->getAttachMenuBots()Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots;->bots:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    move v4, v3

    :cond_1
    if-ge v4, p4, :cond_2

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    .line 927
    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->bot_id:J

    cmp-long v6, v6, p2

    if-nez v6, :cond_1

    goto :goto_0

    :cond_2
    move-object v5, v2

    :goto_0
    const/4 p1, 0x1

    if-eqz v5, :cond_5

    .line 935
    invoke-static {v5}, Lorg/telegram/messenger/MediaDataController;->getPlaceholderStaticAttachMenuBotIcon(Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;)Lorg/telegram/tgnet/TLRPC$TL_attachMenuBotIcon;

    move-result-object p2

    if-nez p2, :cond_3

    .line 937
    invoke-static {v5}, Lorg/telegram/messenger/MediaDataController;->getStaticAttachMenuBotIcon(Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;)Lorg/telegram/tgnet/TLRPC$TL_attachMenuBotIcon;

    move-result-object p2

    goto :goto_1

    :cond_3
    move p1, v3

    :goto_1
    if-eqz p2, :cond_4

    .line 941
    iget-object p3, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p3, v3}, Landroid/view/View;->setVisibility(I)V

    .line 942
    iget-object p3, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p3, v1}, Landroid/view/View;->setAlpha(F)V

    .line 943
    iget-object p3, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBotIcon;->icon:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {p2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object p2

    invoke-virtual {p3, p2, v2, v2, v5}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    .line 944
    invoke-direct {p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->setupFlickerParams(Z)V

    :cond_4
    return-void

    :cond_5
    const/16 p2, 0x200

    if-eqz v0, :cond_7

    .line 946
    iget-object p3, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_info:Lorg/telegram/tgnet/tl/TL_bots$BotInfo;

    if-eqz p3, :cond_7

    iget-object p3, p3, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->app_settings:Lorg/telegram/tgnet/tl/TL_bots$botAppSettings;

    if-eqz p3, :cond_7

    iget-object p3, p3, Lorg/telegram/tgnet/tl/TL_bots$botAppSettings;->placeholder_svg_path:Landroid/graphics/Path;

    if-eqz p3, :cond_7

    .line 947
    iget-object p3, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p3, v3}, Landroid/view/View;->setVisibility(I)V

    .line 948
    iget-object p3, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p3, v1}, Landroid/view/View;->setAlpha(F)V

    .line 949
    iget-object p3, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_info:Lorg/telegram/tgnet/tl/TL_bots$BotInfo;

    iget-object p3, p3, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->app_settings:Lorg/telegram/tgnet/tl/TL_bots$botAppSettings;

    iget-object p3, p3, Lorg/telegram/tgnet/tl/TL_bots$botAppSettings;->placeholder_svg_path:Landroid/graphics/Path;

    invoke-static {p3, p2, p2}, Lorg/telegram/messenger/SvgHelper;->getDrawableByPath(Landroid/graphics/Path;II)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerViewDrawable:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    if-eqz p2, :cond_6

    .line 951
    iget p3, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerViewColor:I

    invoke-virtual {p2, p3}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->setColor(I)V

    .line 952
    iget-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerViewDrawable:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_bot_loadingIcon:I

    iget-object p4, p0, Lorg/telegram/ui/web/BotWebViewContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-virtual {p2, p3, p4, v1, v3}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->setupGradient(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;FZ)V

    .line 954
    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object p3, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerViewDrawable:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    invoke-virtual {p2, v2, v2, p3}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 955
    invoke-direct {p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->setupFlickerParams(Z)V

    return-void

    .line 957
    :cond_7
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    .line 959
    sget-object p4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    const v0, 0x42d5547a

    const v4, 0x43705ae1

    invoke-virtual {p4, v0, v0, v4, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 960
    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/high16 v6, 0x41900000    # 18.0f

    invoke-virtual {p3, p4, v6, v6, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    const v7, 0x4387d28f

    const v8, 0x43caaae1

    .line 961
    invoke-virtual {p4, v7, v0, v8, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 962
    invoke-virtual {p3, p4, v6, v6, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 963
    invoke-virtual {p4, v0, v7, v4, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 964
    invoke-virtual {p3, p4, v6, v6, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 965
    invoke-virtual {p4, v7, v7, v8, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 966
    invoke-virtual {p3, p4, v6, v6, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 967
    iget-object p4, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 968
    iget-object p4, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p4, v1}, Landroid/view/View;->setAlpha(F)V

    .line 969
    invoke-static {p3, p2, p2}, Lorg/telegram/messenger/SvgHelper;->getDrawableByPath(Landroid/graphics/Path;II)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerViewDrawable:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    if-eqz p2, :cond_8

    .line 971
    iget p3, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerViewColor:I

    invoke-virtual {p2, p3}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->setColor(I)V

    .line 972
    iget-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerViewDrawable:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_bot_loadingIcon:I

    iget-object p4, p0, Lorg/telegram/ui/web/BotWebViewContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-virtual {p2, p3, p4, v1, v3}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->setupGradient(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;FZ)V

    .line 974
    :cond_8
    iget-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object p3, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerViewDrawable:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    invoke-virtual {p2, v2, v2, p3}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 975
    invoke-direct {p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->setupFlickerParams(Z)V

    return-void
.end method

.method public loadUrl(ILjava/lang/String;)V
    .locals 1

    .line 1019
    iput p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    .line 1020
    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/NotificationCenter;->doOnIdle(Ljava/lang/Runnable;)V

    return-void
.end method

.method public notifyEmojiStatusAccess(Ljava/lang/String;)V
    .locals 1

    .line 2959
    const-string/jumbo v0, "status"

    invoke-static {v0, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "emoji_status_access_requested"

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    .line 1157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyEvent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->d(Ljava/lang/String;)V

    .line 1158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "window.Telegram.WebView.receiveEvent(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\', "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->evaluateJs(Ljava/lang/String;Z)V

    return-void
.end method

.method public notifyThemeChanged()V
    .locals 2

    .line 1153
    const-string/jumbo v0, "theme_changed"

    invoke-direct {p0}, Lorg/telegram/ui/web/BotWebViewContainer;->buildThemeParams()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/16 v0, 0xbb8

    if-ne p1, v0, :cond_3

    .line 766
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->mFilePathCallback:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_3

    const/4 p1, -0x1

    const/4 v0, 0x0

    if-ne p2, p1, :cond_1

    if-eqz p3, :cond_1

    .line 770
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 771
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p1

    .line 772
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result p3

    new-array p3, p3, [Landroid/net/Uri;

    .line 773
    :goto_0
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-ge p2, v1, :cond_2

    .line 774
    invoke-virtual {p1, p2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    aput-object v1, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 776
    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 777
    new-array p1, p1, [Landroid/net/Uri;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p3

    aput-object p3, p1, p2

    move-object p3, p1

    goto :goto_1

    :cond_1
    move-object p3, v0

    .line 781
    :cond_2
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->mFilePathCallback:Landroid/webkit/ValueCallback;

    invoke-interface {p1, p3}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 782
    iput-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->mFilePathCallback:Landroid/webkit/ValueCallback;

    :cond_3
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1036
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1037
    const-string v0, "attached"

    invoke-virtual {p0, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->d(Ljava/lang/String;)V

    .line 1039
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetNewTheme:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1040
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->onActivityResultReceived:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1041
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->onRequestPermissionResultReceived:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1043
    new-instance v0, Lorg/telegram/ui/web/BotWebViewContainer$3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/web/BotWebViewContainer$3;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;)V

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/Bulletin;->addDelegate(Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/Bulletin$Delegate;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .line 591
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 594
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->isBackButtonVisible:Z

    if-eqz v0, :cond_1

    .line 595
    const-string v0, "back_button_pressed"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1057
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1058
    const-string v0, "detached"

    invoke-virtual {p0, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->d(Ljava/lang/String;)V

    .line 1060
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetNewTheme:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1061
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->onActivityResultReceived:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1062
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->onRequestPermissionResultReceived:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1064
    invoke-static {p0}, Lorg/telegram/ui/Components/Bulletin;->removeDelegate(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method protected onErrorShown(ZILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onFaviconChanged(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public onInvoiceStatusUpdate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 722
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->onInvoiceStatusUpdate(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public onInvoiceStatusUpdate(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 727
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 728
    const-string/jumbo v1, "slug"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 729
    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 730
    const-string p2, "invoice_closed"

    invoke-virtual {p0, p2, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 731
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invoice_closed "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 733
    iget-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->currentPaymentSlug:Ljava/lang/String;

    invoke-static {p2, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 734
    iput-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->currentPaymentSlug:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-void

    .line 737
    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onMainButtonPressed()V
    .locals 2

    .line 747
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastClickMs:J

    .line 748
    const-string v0, "main_button_pressed"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 897
    iget v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->forceHeight:I

    if-ltz v0, :cond_0

    const/high16 p2, 0x40000000    # 2.0f

    .line 898
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 900
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 902
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->setParentWidth(I)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    const/16 p2, 0xfa0

    if-ne p1, p2, :cond_0

    .line 758
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->onPermissionsRequestResultCallback:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 759
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 760
    iput-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->onPermissionsRequestResultCallback:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public onSecondaryButtonPressed()V
    .locals 2

    .line 752
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastClickMs:J

    .line 753
    const-string/jumbo v0, "secondary_button_pressed"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public onSettingsButtonPressed()V
    .locals 2

    .line 742
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastClickMs:J

    .line 743
    const-string/jumbo v0, "settings_button_pressed"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 788
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 789
    iget-boolean p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->isViewPortByMeasureSuppressed:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 790
    invoke-virtual {p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->invalidateViewPortHeight(Z)V

    :cond_0
    return-void
.end method

.method protected onTitleChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onURLChanged(Ljava/lang/String;ZZ)V
    .locals 0

    return-void
.end method

.method public onWebViewCreated(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V
    .locals 0

    return-void
.end method

.method public onWebViewDestroyed(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V
    .locals 0

    return-void
.end method

.method public preserveWebView()V
    .locals 2

    .line 1069
    const-string v0, "preserveWebView"

    invoke-virtual {p0, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1070
    iput-boolean v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->preserving:Z

    .line 1071
    iget-boolean v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->bot:Z

    if-eqz v0, :cond_0

    .line 1072
    const-string v0, "is_visible"

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "visibility_changed"

    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method public reload()V
    .locals 2

    .line 994
    iget v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/NotificationCenter;->doOnIdle(Ljava/lang/Runnable;)V

    return-void
.end method

.method public replaceWebView(ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;Ljava/lang/Object;)V
    .locals 0

    .line 353
    iput p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    .line 354
    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/web/BotWebViewContainer;->setupWebView(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;Ljava/lang/Object;)V

    .line 355
    iget-boolean p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->bot:Z

    if-eqz p1, :cond_0

    .line 356
    const-string p1, "is_visible"

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string/jumbo p2, "visibility_changed"

    invoke-virtual {p0, p2, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method public reportSafeInsets(Landroid/graphics/Rect;I)V
    .locals 1

    const/4 v0, 0x0

    .line 2932
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->reportSafeInsets(Landroid/graphics/Rect;Z)V

    .line 2933
    invoke-direct {p0, p2, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->reportSafeContentInsets(IZ)V

    return-void
.end method

.method public resetWebView()V
    .locals 1

    const/4 v0, 0x0

    .line 1106
    iput-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    return-void
.end method

.method public restoreButtonData()V
    .locals 3

    .line 710
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->buttonData:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 711
    iget-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->botWebViewProxy:Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;

    const-string/jumbo v2, "web_app_setup_main_button"

    invoke-direct {p0, v1, v2, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->onEventReceived(Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 713
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->secondaryButtonData:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 714
    iget-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->botWebViewProxy:Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;

    const-string/jumbo v2, "web_app_setup_secondary_button"

    invoke-direct {p0, v1, v2, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->onEventReceived(Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    .line 717
    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public setBotUser(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    .line 671
    iput-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/web/BotWebViewContainer$Delegate;)V
    .locals 0

    .line 1204
    iput-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    return-void
.end method

.method public setFlickerViewColor(I)V
    .locals 4

    .line 317
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v0

    const v1, 0x3f333333    # 0.7f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    const v1, -0x41e66666    # -0.15f

    .line 320
    invoke-static {p1, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->adaptHSV(IFF)I

    move-result p1

    goto :goto_0

    :cond_0
    const v0, 0x3ccccccd    # 0.025f

    const v1, 0x3e19999a    # 0.15f

    .line 322
    invoke-static {p1, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->adaptHSV(IFF)I

    move-result p1

    .line 324
    :goto_0
    iget v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerViewColor:I

    if-ne v0, p1, :cond_1

    return-void

    .line 325
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iput p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerViewColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 326
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerViewDrawable:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    if-eqz p1, :cond_2

    .line 327
    iget v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerViewColor:I

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->setColor(I)V

    .line 328
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerViewDrawable:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_bot_loadingIcon:I

    iget-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->setupGradient(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;FZ)V

    :cond_2
    const/4 p1, 0x1

    .line 330
    iput-boolean p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerViewColorOverriden:Z

    .line 331
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 332
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setForceHeight(I)V
    .locals 1

    .line 890
    iget v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->forceHeight:I

    if-ne v0, p1, :cond_0

    return-void

    .line 891
    :cond_0
    iput p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->forceHeight:I

    .line 892
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setIsBackButtonVisible(Z)V
    .locals 0

    .line 659
    iput-boolean p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->isBackButtonVisible:Z

    return-void
.end method

.method public setKeyboardFocusable(Z)V
    .locals 0

    .line 561
    iput-boolean p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->keyboardFocusable:Z

    .line 562
    invoke-direct {p0}, Lorg/telegram/ui/web/BotWebViewContainer;->updateKeyboardFocusable()V

    return-void
.end method

.method public setOnCloseRequestedListener(Ljava/lang/Runnable;)V
    .locals 1

    .line 1187
    iput-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->onCloseListener:Ljava/lang/Runnable;

    .line 1188
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    if-eqz v0, :cond_0

    .line 1189
    invoke-virtual {v0, p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->setCloseListener(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setOnVerifiedAge(Lorg/telegram/messenger/Utilities$Callback4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/Utilities$Callback4<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Double;",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 5231
    iput-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->onVerifiedAge:Lorg/telegram/messenger/Utilities$Callback4;

    return-void
.end method

.method public setOpener(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V
    .locals 1

    .line 377
    iput-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->opener:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    .line 378
    iget-boolean v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->bot:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    if-eqz v0, :cond_0

    .line 379
    iput-object p1, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->opener:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    :cond_0
    return-void
.end method

.method public setPageLoaded(Ljava/lang/String;Z)V
    .locals 7

    .line 602
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->dangerousUrl:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->urlFallback:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->canGoBack()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v3

    :goto_2
    iget-object v4, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_3

    :cond_3
    move v4, v2

    goto :goto_4

    :cond_4
    :goto_3
    move v4, v3

    :goto_4
    invoke-virtual {p0, v1, v0, v4}, Lorg/telegram/ui/web/BotWebViewContainer;->onURLChanged(Ljava/lang/String;ZZ)V

    .line 604
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    if-eqz v0, :cond_5

    .line 605
    invoke-static {v0, v3}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fputisPageLoaded(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;Z)V

    .line 606
    invoke-direct {p0}, Lorg/telegram/ui/web/BotWebViewContainer;->updateKeyboardFocusable()V

    .line 609
    :cond_5
    iget-boolean v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->isPageLoaded:Z

    if-eqz v0, :cond_6

    .line 610
    const-string/jumbo p1, "setPageLoaded: already loaded"

    invoke-virtual {p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->d(Ljava/lang/String;)V

    return-void

    :cond_6
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_7

    .line 614
    iget-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    if-eqz p2, :cond_7

    iget-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz p2, :cond_7

    .line 615
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 616
    iget-object v4, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    new-array v5, v3, [F

    aput v1, v5, v2

    .line 617
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-static {v4, v1, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    new-array v6, v3, [F

    aput v0, v6, v2

    .line 618
    invoke-static {v5, v1, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    .line 616
    invoke-virtual {p2, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 620
    new-instance v0, Lorg/telegram/ui/web/BotWebViewContainer$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/web/BotWebViewContainer$2;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 626
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_5

    .line 628
    :cond_7
    iget-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    if-eqz p2, :cond_8

    .line 629
    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 631
    :cond_8
    iget-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz p2, :cond_9

    .line 632
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 633
    iget-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 636
    :cond_9
    :goto_5
    iput-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->mUrl:Ljava/lang/String;

    .line 637
    const-string/jumbo p1, "setPageLoaded: isPageLoaded = true!"

    invoke-virtual {p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->d(Ljava/lang/String;)V

    .line 638
    iput-boolean v3, p0, Lorg/telegram/ui/web/BotWebViewContainer;->isPageLoaded:Z

    .line 639
    invoke-direct {p0}, Lorg/telegram/ui/web/BotWebViewContainer;->updateKeyboardFocusable()V

    .line 640
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    invoke-interface {p1}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onWebAppReady()V

    return-void
.end method

.method public setParentActivity(Landroid/app/Activity;)V
    .locals 0

    .line 695
    iput-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->parentActivity:Landroid/app/Activity;

    return-void
.end method

.method public setState(ZLjava/lang/String;)V
    .locals 2

    .line 652
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->d(Ljava/lang/String;)V

    .line 653
    iput-boolean p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->isPageLoaded:Z

    .line 654
    iput-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->mUrl:Ljava/lang/String;

    .line 655
    invoke-direct {p0}, Lorg/telegram/ui/web/BotWebViewContainer;->updateKeyboardFocusable()V

    return-void
.end method

.method public setViewPortByMeasureSuppressed(Z)V
    .locals 0

    .line 311
    iput-boolean p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->isViewPortByMeasureSuppressed:Z

    return-void
.end method

.method public setViewPortHeightOffset(F)V
    .locals 0

    .line 818
    iput p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->viewPortHeightOffset:F

    return-void
.end method

.method public setWasOpenedByBot(Lorg/telegram/ui/bots/WebViewRequestProps;)V
    .locals 0

    .line 1200
    iput-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->wasOpenedByBot:Lorg/telegram/ui/bots/WebViewRequestProps;

    return-void
.end method

.method public setWasOpenedByLinkIntent(Z)V
    .locals 0

    .line 1195
    iput-boolean p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->wasOpenedByLinkIntent:Z

    return-void
.end method

.method public setWebViewProgressListener(Landroidx/core/util/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer;",
            ")V"
        }
    .end annotation

    .line 906
    iput-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webViewProgressListener:Landroidx/core/util/Consumer;

    return-void
.end method

.method public setWebViewScrollListener(Lorg/telegram/ui/web/BotWebViewContainer$WebViewScrollListener;)V
    .locals 1

    .line 1179
    iput-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webViewScrollListener:Lorg/telegram/ui/web/BotWebViewContainer$WebViewScrollListener;

    .line 1180
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    if-eqz v0, :cond_0

    .line 1181
    invoke-virtual {v0, p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->setContainers(Lorg/telegram/ui/web/BotWebViewContainer;Lorg/telegram/ui/web/BotWebViewContainer$WebViewScrollListener;)V

    :cond_0
    return-void
.end method

.method public showLinkCopiedBulletin()V
    .locals 2

    .line 243
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BulletinFactory;->createCopyLinkBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method public updateFlickerBackgroundColor(I)V
    .locals 3

    .line 574
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    const/16 v1, 0x99

    const/16 v2, 0xcc

    invoke-virtual {v0, p1, v1, v2}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->setColors(III)V

    return-void
.end method
