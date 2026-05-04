.class public Lorg/telegram/ui/bots/BotWebViewSheet;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;
    }
.end annotation


# static fields
.field private static final ACTION_BAR_TRANSITION_PROGRESS_VALUE:Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;

.field public static activeSheets:Ljava/util/HashSet;

.field private static shownLockedBots:I


# instance fields
.field private actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

.field private actionBarColor:I

.field private actionBarColorKey:I

.field private actionBarIsLight:Z

.field private actionBarLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private actionBarPaint:Landroid/graphics/Paint;

.field private actionBarShadow:Landroid/graphics/drawable/Drawable;

.field private actionBarTransitionProgress:F

.field public attached:Z

.field private backButtonShown:Z

.field private backgroundColorAnimator:Landroid/animation/ValueAnimator;

.field private backgroundPaint:Landroid/graphics/Paint;

.field private botButtons:Lorg/telegram/ui/bots/BotButtons;

.field private botButtonsLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private botId:J

.field private bottomTabs:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

.field private bottomTabsClip:Lorg/telegram/ui/ActionBar/BottomSheetTabs$ClipTools;

.field private bulletinContainer:Landroid/widget/FrameLayout;

.field private bulletinContainerLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private buttonText:Ljava/lang/String;

.field private currentAccount:I

.field private currentWebApp:Lorg/telegram/tgnet/TLRPC$BotApp;

.field private defaultFullsize:Z

.field private dimPaint:Landroid/graphics/Paint;

.field private dismissed:Z

.field private downloadBulletin:Lorg/telegram/ui/Components/Bulletin;

.field private downloadBulletinLayout:Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin;

.field private errorCode:Ljava/lang/String;

.field private errorContainer:Lorg/telegram/ui/ArticleViewer$ErrorContainer;

.field private errorShown:Z

.field private fileItems:Ljava/util/HashMap;

.field private forceExpnaded:Z

.field public fromTab:Z

.field private fullscreen:Z

.field private fullscreenAnimator:Landroid/animation/ValueAnimator;

.field private fullscreenBlur:Z

.field private fullscreenButtons:Lorg/telegram/messenger/BotFullscreenButtons;

.field private fullscreenInProgress:Z

.field private fullscreenProgress:F

.field private fullscreenTransitionProgress:F

.field private fullsize:Ljava/lang/Boolean;

.field private hasSettings:Z

.field private ignoreLayout:Z

.field private final insets:Landroid/graphics/Rect;

.field private final invalidateRunnable:Ljava/lang/Runnable;

.field private keyboardInset:I

.field private lastBulletinFile:Lorg/telegram/ui/bots/BotDownloads$FileDownload;

.field private lastSwipeTime:J

.field private lastTab:Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

.field private lineColor:I

.field private linePaint:Landroid/graphics/Paint;

.field private monoforumTopicId:J

.field private navBarColor:I

.field private final navInsets:Landroid/graphics/Rect;

.field private needCloseConfirmation:Z

.field private needsContext:Z

.field private onVerifiedAge:Lorg/telegram/messenger/Utilities$Callback4;

.field private openAnimator:Landroid/animation/ValueAnimator;

.field private openedProgress:F

.field private options:Lorg/telegram/ui/Components/ItemOptions;

.field private optionsIcon:Lorg/telegram/messenger/BotFullscreenButtons$OptionsIcon;

.field private optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private orientationLocked:Z

.field private overrideActionBarColor:Z

.field private overrideBackgroundColor:Z

.field private parentActivity:Landroid/app/Activity;

.field private passcodeView:Lorg/telegram/ui/Components/PasscodeView;

.field private peerId:J

.field private pinItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private pollRunnable:Ljava/lang/Runnable;

.field private progressView:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebProgressView;

.field private queryId:J

.field private final relayoutRunnable:Ljava/lang/Runnable;

.field private replyToMsgId:I

.field private requestProps:Lorg/telegram/ui/bots/WebViewRequestProps;

.field private resetOffsetY:Z

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private sensors:Lorg/telegram/ui/bots/BotSensors;

.field public showExpanded:Z

.field public showOffsetY:F

.field private silent:Z

.field private springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private superDismissed:Z

.field private swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

.field private swipeContainerFromHeight:I

.field private swipeContainerFromWidth:I

.field private swipeContainerLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field verifiedDrawable:Landroid/graphics/drawable/Drawable;

.field private wasLightStatusBar:Ljava/lang/Boolean;

.field private webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

.field private windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;


# direct methods
.method public static synthetic $r8$lambda$2UpUXBw7E6MeUVyHnO5xTRXCwEI(Lorg/telegram/ui/bots/BotWebViewSheet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$requestWebView$30(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2f5umQ_31VEIuYwULHyrDV-jE4Y(Lorg/telegram/ui/bots/BotWebViewSheet;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$new$8(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$47yMfI8gFjPF20eMFoqs6yWjJVM(Lorg/telegram/ui/bots/BotWebViewSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$new$15()V

    return-void
.end method

.method public static synthetic $r8$lambda$5BrJMhKYBHcszFWfcD0qwzjvU_k(Ljava/lang/String;Lorg/telegram/ui/Components/BulletinFactory;)Lorg/telegram/ui/Components/Bulletin;
    .locals 1

    .line 148
    sget v0, Lorg/telegram/messenger/R$raw;->contact_check:I

    .line 149
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    const/16 p1, 0x1388

    .line 150
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Bulletin;->setDuration(I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$7tvMCrfGWAZ33wWaL6CXCYm6yq8(Lorg/telegram/ui/bots/BotWebViewSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$openOptions$37()V

    return-void
.end method

.method public static synthetic $r8$lambda$8MHu8ULG-ulSmOWkq-iBVXNlD1E(Lorg/telegram/ui/bots/BotWebViewSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$new$10()V

    return-void
.end method

.method public static synthetic $r8$lambda$BCIgM-PEyQbmlv_t7_U2fz4pnDU(Lorg/telegram/ui/bots/BotWebViewSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$openOptions$38()V

    return-void
.end method

.method public static synthetic $r8$lambda$EGY3gWg6mj6BjWn2wSuixccP2yE(Lorg/telegram/ui/bots/BotWebViewSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->openOptions()V

    return-void
.end method

.method public static synthetic $r8$lambda$Gcb5WJkrU8WVt7DQrVbYrVdyjrY(Lorg/telegram/ui/bots/BotWebViewSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$openOptions$40()V

    return-void
.end method

.method public static synthetic $r8$lambda$JdHCiwbLxYk3_9yS4uSOP-Gnw9o(Lorg/telegram/ui/bots/BotWebViewSheet;Lorg/telegram/ui/bots/BotDownloads$FileDownload;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$updateDownloadBulletin$43(Lorg/telegram/ui/bots/BotDownloads$FileDownload;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$M1iIT4tP81cjmDtXZGag2HwG6cs(Lorg/telegram/ui/bots/BotWebViewSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$new$14()V

    return-void
.end method

.method public static synthetic $r8$lambda$NRFDGVsSQZp9dzc4efIM87_71xQ()V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$O0WP2MuRjIOvy_wvv57D8UIpbXc(Lorg/telegram/ui/bots/BotWebViewSheet;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$requestWebView$25(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$O645PBO9cfS7dnNqhI4i1z32eCM(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 0

    .line 1676
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ItemOptions;->openSwipeback(Lorg/telegram/ui/Components/ItemOptions;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PeDm5zius66AEjIQvZlrq-rapYU(Lorg/telegram/ui/bots/BotWebViewSheet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$new$5(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QNnLssW3fQ7qeC3p5SxDhMPpWSU(Lorg/telegram/ui/bots/BotWebViewSheet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$requestWebView$24(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TtK8y0wcsFU8BX6-yTchtOLQBL0(Lorg/telegram/ui/bots/BotWebViewSheet;IILandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$setBackgroundColor$50(IILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UBexEPtD0mzCtq526CLbHzIqDX8(Lorg/telegram/ui/bots/BotWebViewSheet;Lorg/telegram/tgnet/TLRPC$UserFull;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$requestWebView$21(Lorg/telegram/tgnet/TLRPC$UserFull;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ULXNrV0t8jPXt34zFV9ORuNOQRM(Lorg/telegram/ui/bots/BotWebViewSheet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$requestWebView$26(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Uk1OPGtpYkXZPWOmgS31oYKNe14(Lorg/telegram/ui/bots/BotWebViewSheet;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$new$16(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$V06fkfbbW52aXzdoqnxaWcgXtL0(Lorg/telegram/ui/bots/BotWebViewSheet;IILorg/telegram/ui/bots/BotWebViewMenuContainer$ActionBarColorsAnimating;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$setActionBarColor$52(IILorg/telegram/ui/bots/BotWebViewMenuContainer$ActionBarColorsAnimating;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VMwALkwMJt-aI7Q1jQ7yPSUok60(Lorg/telegram/ui/bots/BotWebViewSheet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$requestWebView$28(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WGwDUJr4H_30rBS-xQ_z5RoLGnQ(Lorg/telegram/ui/bots/BotWebViewSheet;Lorg/telegram/tgnet/TLRPC$UserFull;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$requestWebView$20(Lorg/telegram/tgnet/TLRPC$UserFull;)V

    return-void
.end method

.method public static synthetic $r8$lambda$X60BmXYKE9gB3Uz5FgCPyfIem9I(Lorg/telegram/ui/bots/BotWebViewSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$createErrorContainer$53(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XBzB5629j-eWrRyJhB5VL3Jh3uA(Lorg/telegram/ui/bots/BotWebViewSheet;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$new$17(Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$YdEsMBMEyVYuRCAA5MK_DorFbTU(Lorg/telegram/ui/bots/BotWebViewSheet;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$requestWebView$29(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z1bSfvc7WGbAJwa_g904FN_LIOc(Lorg/telegram/ui/bots/BotWebViewSheet;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$requestWebView$27(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZGSr9NIp2stvOmbXJoHYf4T2eYY(I)V
    .locals 2

    .line 1915
    invoke-static {p0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/MediaDataController;->loadAttachMenuBots(ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZNUiUmGZuCvmdWCHncU8BS0i804(Lorg/telegram/ui/bots/BotWebViewSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$openOptions$41()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZmLTceaQTgrp_twnHWyjADwgpbQ(Lorg/telegram/ui/bots/BotWebViewSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$openOptions$39()V

    return-void
.end method

.method public static synthetic $r8$lambda$_27sEcQdqmYG2ZwETiHoiDzUqGs(Lorg/telegram/ui/bots/BotWebViewSheet;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$new$4(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_Ohh_xgPclIrYGGy7BnBbW5uJ78(Lorg/telegram/ui/bots/BotWebViewSheet;IILandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$setNavigationBarColor$51(IILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aMq0uA9DsiJl3k9F432ut6CzxX4(Lorg/telegram/ui/bots/BotWebViewSheet;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$requestWebView$23(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dbchZ0up0BkVhiBfZ9NFWxXB7KA(Lorg/telegram/ui/bots/BotWebViewSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$openOptions$35()V

    return-void
.end method

.method public static synthetic $r8$lambda$dhmypthlwfdi0mzcNPXCnIIwOB8(Lorg/telegram/ui/bots/BotWebViewSheet;F)V
    .locals 1

    .line 168
    iput p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBarTransitionProgress:F

    .line 169
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 171
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 173
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->updateLightStatusBar()V

    .line 174
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->updateDownloadBulletinArrow()V

    return-void
.end method

.method public static synthetic $r8$lambda$eJMXEQSoEcdiqJn8n4S5tMSk65I(Lorg/telegram/ui/bots/BotWebViewSheet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$requestWebView$32(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eOT5U1u-XZp3i9BMOAn02FrxHpw(Lorg/telegram/ui/bots/BotWebViewSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$requestWebView$22(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fELJR4bn-aNoA6jZdBYclvR-i70(Lorg/telegram/ui/bots/BotWebViewSheet;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$onCheckDismissByUser$47(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$fatxnFTKYV7wYWPVu7v41zbcw3s(Lorg/telegram/ui/bots/BotWebViewSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$new$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$hkzANNCJGfQJNNfI0MojNym5LmA(Lorg/telegram/ui/bots/BotWebViewSheet;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$onCreate$18(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jp9aF9w0GnNlYKAr6rI-Tx-5BtQ(Lorg/telegram/ui/bots/BotWebViewSheet;Ljava/lang/Float;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$new$13(Ljava/lang/Float;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kx7_NOsG2o-4vjrL2U9wUJxuoTk(Lorg/telegram/ui/bots/BotWebViewSheet;)F
    .locals 0

    .line 167
    iget p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBarTransitionProgress:F

    return p0
.end method

.method public static synthetic $r8$lambda$mwJS0-c1Nbja6u2zy5zQscka1BQ(Lorg/telegram/ui/bots/BotWebViewSheet;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$dismiss$48(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qMLFitaQ3GBOlJN23I1tK38FGRE(IZLjava/lang/Integer;)Ljava/lang/Object;
    .locals 3

    .line 1273
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p0, p2}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p1, :cond_0

    .line 1275
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object v0, v1, p2

    const/4 p2, 0x2

    aput-object p0, v1, p2

    const-string p0, "#%02X%02X%02X"

    invoke-static {p1, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p2
.end method

.method public static synthetic $r8$lambda$qO8p3PsxFI_Pm1aa140UOVR7Qgk(Lorg/telegram/ui/bots/BotWebViewSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$new$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$rUiyGRXDCDVtUD2b9376-MDPs9Y(Lorg/telegram/ui/bots/BotWebViewSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$openOptions$42()V

    return-void
.end method

.method public static synthetic $r8$lambda$rvtCxScK4gF11t5UVZJFOcIzeg0(Lorg/telegram/ui/bots/BotWebViewSheet;IZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$new$7(IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$sY_VywnmNVNhohTvMF1QEfT8Jso(Lorg/telegram/ui/bots/BotWebViewSheet;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$new$12(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$skIE5xmNr8eO9CrnKAvdwqFXGRE(Lorg/telegram/ui/bots/BotWebViewSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->relayout()V

    return-void
.end method

.method public static synthetic $r8$lambda$vVEXsavnRsVZ7GrDkDZUHrKb8oc(Lorg/telegram/ui/bots/BotWebViewSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$openOptions$36()V

    return-void
.end method

.method public static synthetic $r8$lambda$vzrIhSqsDdlviw-yyHBnFfWJDds(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 1914
    new-instance p1, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda54;

    invoke-direct {p1, p0}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda54;-><init>(I)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$w8kJgIahoNvjailFJarpOQ0w5-c(Lorg/telegram/ui/bots/BotWebViewSheet;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$setOpen$49(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xJ8_fTiSuloYrMXXa7khhG0wBww(Lorg/telegram/ui/bots/BotWebViewSheet;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$requestWebView$31(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xhFgJiH02bqar4bcwaZAlNtkSsk(IJLorg/telegram/tgnet/TLRPC$TL_attachMenuBot;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 3

    .line 1911
    new-instance p5, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleBotInAttachMenu;

    invoke-direct {p5}, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleBotInAttachMenu;-><init>()V

    .line 1912
    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p6

    invoke-virtual {p6, p1, p2}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object p6

    iput-object p6, p5, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleBotInAttachMenu;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    const/4 p6, 0x0

    .line 1913
    iput-boolean p6, p5, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleBotInAttachMenu;->enabled:Z

    .line 1914
    invoke-static {p0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda53;

    invoke-direct {v1, p0}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda53;-><init>(I)V

    const/16 v2, 0x42

    invoke-virtual {v0, p5, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 1917
    iput-boolean p6, p3, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->show_in_side_menu:Z

    .line 1918
    invoke-static {p0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p3

    sget p5, Lorg/telegram/messenger/NotificationCenter;->attachMenuBotsDidLoad:I

    new-array p6, p6, [Ljava/lang/Object;

    invoke-virtual {p3, p5, p6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1919
    invoke-static {p0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p0

    sget p3, Lorg/telegram/messenger/MediaDataController;->SHORTCUT_TYPE_ATTACHED_BOT:I

    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/messenger/MediaDataController;->uninstallShortcut(JI)V

    if-eqz p4, :cond_0

    .line 1921
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$xpwaAgXqqyA-SRULz9s3VmE6rNA(Lorg/telegram/ui/bots/BotWebViewSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$new$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$xqSseYw7iESlbLap7n_ODTCDrgM(Lorg/telegram/ui/bots/BotWebViewSheet;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$showJustAddedBulletin$1(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetactionBar(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetactionBarColor(Lorg/telegram/ui/bots/BotWebViewSheet;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBarColor:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetactionBarPaint(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/graphics/Paint;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBarPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetactionBarShadow(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBarShadow:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetactionBarTransitionProgress(Lorg/telegram/ui/bots/BotWebViewSheet;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBarTransitionProgress:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbackgroundPaint(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/graphics/Paint;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->backgroundPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbotButtons(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/BotButtons;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botButtons:Lorg/telegram/ui/bots/BotButtons;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbotId(Lorg/telegram/ui/bots/BotWebViewSheet;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botId:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetbottomTabs(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/ActionBar/BottomSheetTabs;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->bottomTabs:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbottomTabsClip(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/ActionBar/BottomSheetTabs$ClipTools;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->bottomTabsClip:Lorg/telegram/ui/ActionBar/BottomSheetTabs$ClipTools;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbulletinContainer(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/widget/FrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->bulletinContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbuttonText(Lorg/telegram/ui/bots/BotWebViewSheet;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->buttonText:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentAccount(Lorg/telegram/ui/bots/BotWebViewSheet;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdimPaint(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/graphics/Paint;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->dimPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdismissed(Lorg/telegram/ui/bots/BotWebViewSheet;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->dismissed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgeterrorContainer(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/ArticleViewer$ErrorContainer;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->errorContainer:Lorg/telegram/ui/ArticleViewer$ErrorContainer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfullscreen(Lorg/telegram/ui/bots/BotWebViewSheet;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreen:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetfullscreenButtons(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/messenger/BotFullscreenButtons;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenButtons:Lorg/telegram/messenger/BotFullscreenButtons;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfullscreenInProgress(Lorg/telegram/ui/bots/BotWebViewSheet;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenInProgress:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetfullscreenProgress(Lorg/telegram/ui/bots/BotWebViewSheet;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenProgress:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetfullscreenTransitionProgress(Lorg/telegram/ui/bots/BotWebViewSheet;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenTransitionProgress:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetignoreLayout(Lorg/telegram/ui/bots/BotWebViewSheet;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->ignoreLayout:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetinsets(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/graphics/Rect;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->insets:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlastTab(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->lastTab:Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlineColor(Lorg/telegram/ui/bots/BotWebViewSheet;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->lineColor:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlinePaint(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/graphics/Paint;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->linePaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnavBarColor(Lorg/telegram/ui/bots/BotWebViewSheet;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->navBarColor:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetnavInsets(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/graphics/Rect;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->navInsets:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetopenedProgress(Lorg/telegram/ui/bots/BotWebViewSheet;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->openedProgress:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetoverrideBackgroundColor(Lorg/telegram/ui/bots/BotWebViewSheet;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->overrideBackgroundColor:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetparentActivity(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/app/Activity;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->parentActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpasscodeView(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/Components/PasscodeView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpollRunnable(Lorg/telegram/ui/bots/BotWebViewSheet;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->pollRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetprogressView(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebProgressView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->progressView:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebProgressView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetqueryId(Lorg/telegram/ui/bots/BotWebViewSheet;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->queryId:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetresetOffsetY(Lorg/telegram/ui/bots/BotWebViewSheet;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->resetOffsetY:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsensors(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/BotSensors;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->sensors:Lorg/telegram/ui/bots/BotSensors;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsuperDismissed(Lorg/telegram/ui/bots/BotWebViewSheet;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->superDismissed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetswipeContainer(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetswipeContainerFromHeight(Lorg/telegram/ui/bots/BotWebViewSheet;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainerFromHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetswipeContainerFromWidth(Lorg/telegram/ui/bots/BotWebViewSheet;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainerFromWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetwebViewContainer(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/web/BotWebViewContainer;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwindowView(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputactionBarColor(Lorg/telegram/ui/bots/BotWebViewSheet;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBarColor:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputactionBarColorKey(Lorg/telegram/ui/bots/BotWebViewSheet;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBarColorKey:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputbackButtonShown(Lorg/telegram/ui/bots/BotWebViewSheet;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->backButtonShown:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputdismissed(Lorg/telegram/ui/bots/BotWebViewSheet;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->dismissed:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputerrorCode(Lorg/telegram/ui/bots/BotWebViewSheet;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->errorCode:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputerrorShown(Lorg/telegram/ui/bots/BotWebViewSheet;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->errorShown:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputforceExpnaded(Lorg/telegram/ui/bots/BotWebViewSheet;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->forceExpnaded:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputfullscreenInProgress(Lorg/telegram/ui/bots/BotWebViewSheet;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenInProgress:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputfullscreenProgress(Lorg/telegram/ui/bots/BotWebViewSheet;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenProgress:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputfullscreenTransitionProgress(Lorg/telegram/ui/bots/BotWebViewSheet;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenTransitionProgress:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputhasSettings(Lorg/telegram/ui/bots/BotWebViewSheet;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->hasSettings:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputignoreLayout(Lorg/telegram/ui/bots/BotWebViewSheet;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->ignoreLayout:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastTab(Lorg/telegram/ui/bots/BotWebViewSheet;Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->lastTab:Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlineColor(Lorg/telegram/ui/bots/BotWebViewSheet;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->lineColor:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputnavBarColor(Lorg/telegram/ui/bots/BotWebViewSheet;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->navBarColor:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputneedCloseConfirmation(Lorg/telegram/ui/bots/BotWebViewSheet;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->needCloseConfirmation:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputopenedProgress(Lorg/telegram/ui/bots/BotWebViewSheet;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->openedProgress:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputresetOffsetY(Lorg/telegram/ui/bots/BotWebViewSheet;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->resetOffsetY:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsensors(Lorg/telegram/ui/bots/BotWebViewSheet;Lorg/telegram/ui/bots/BotSensors;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->sensors:Lorg/telegram/ui/bots/BotSensors;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsuperDismissed(Lorg/telegram/ui/bots/BotWebViewSheet;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->superDismissed:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetColor(Lorg/telegram/ui/bots/BotWebViewSheet;I)I
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->getColor(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mshowBulletin(Lorg/telegram/ui/bots/BotWebViewSheet;Lorg/telegram/messenger/Utilities$CallbackReturn;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->showBulletin(Lorg/telegram/messenger/Utilities$CallbackReturn;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateActionBarColors(Lorg/telegram/ui/bots/BotWebViewSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->updateActionBarColors()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateDownloadBulletinArrow(Lorg/telegram/ui/bots/BotWebViewSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->updateDownloadBulletinArrow()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateWebViewBackgroundColor(Lorg/telegram/ui/bots/BotWebViewSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->updateWebViewBackgroundColor()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 124
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/telegram/ui/bots/BotWebViewSheet;->activeSheets:Ljava/util/HashSet;

    .line 167
    new-instance v0, Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;

    new-instance v1, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda0;-><init>()V

    new-instance v2, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda1;-><init>()V

    const-string v3, "actionBarTransitionProgress"

    invoke-direct {v0, v3, v1, v2}, Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;-><init>(Ljava/lang/String;Lorg/telegram/ui/Components/SimpleFloatPropertyCompat$Getter;Lorg/telegram/ui/Components/SimpleFloatPropertyCompat$Setter;)V

    const/high16 v1, 0x42c80000    # 100.0f

    .line 175
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;->setMultiplier(F)Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/bots/BotWebViewSheet;->ACTION_BAR_TRANSITION_PROGRESS_VALUE:Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;

    const/4 v0, 0x0

    .line 2685
    sput v0, Lorg/telegram/ui/bots/BotWebViewSheet;->shownLockedBots:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 433
    sget v0, Lorg/telegram/messenger/R$style;->TransparentDialog:I

    invoke-direct {v1, v2, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v6, 0x0

    .line 176
    iput v6, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBarTransitionProgress:F

    .line 182
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->navInsets:Landroid/graphics/Rect;

    .line 183
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->insets:Landroid/graphics/Rect;

    const/4 v7, 0x0

    .line 184
    iput v7, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->keyboardInset:I

    .line 208
    new-instance v0, Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-direct {v0, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->linePaint:Landroid/graphics/Paint;

    .line 209
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->dimPaint:Landroid/graphics/Paint;

    .line 210
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->backgroundPaint:Landroid/graphics/Paint;

    .line 215
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBarPaint:Landroid/graphics/Paint;

    .line 251
    new-instance v0, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda13;

    invoke-direct {v0, v1}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    iput-object v0, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->pollRunnable:Ljava/lang/Runnable;

    const/4 v9, -0x1

    .line 283
    iput v9, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBarColorKey:I

    .line 288
    iput-boolean v7, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->defaultFullsize:Z

    const/4 v10, 0x0

    .line 289
    iput-object v10, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->fullsize:Ljava/lang/Boolean;

    .line 1646
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->fileItems:Ljava/util/HashMap;

    .line 2039
    iput-boolean v7, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->superDismissed:Z

    .line 2205
    iput-boolean v8, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->resetOffsetY:Z

    .line 2686
    iput-boolean v7, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->attached:Z

    .line 434
    iput-object v3, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 435
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_sheet_scrollUp:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->lineColor:I

    .line 437
    new-instance v0, Lorg/telegram/ui/bots/BotWebViewSheet$1;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/bots/BotWebViewSheet$1;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    .line 496
    invoke-virtual {v0, v8}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setAllowFullSizeSwipe(Z)V

    .line 497
    iget-object v0, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setShouldWaitWebViewScroll(Z)V

    .line 498
    new-instance v0, Lorg/telegram/ui/bots/BotWebViewSheet$2;

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-direct {v1, v11}, Lorg/telegram/ui/bots/BotWebViewSheet;->getColor(I)I

    move-result v4

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/bots/BotWebViewSheet$2;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;IZ)V

    iput-object v0, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    .line 531
    iget-object v4, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->onVerifiedAge:Lorg/telegram/messenger/Utilities$Callback4;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/web/BotWebViewContainer;->setOnVerifiedAge(Lorg/telegram/messenger/Utilities$Callback4;)V

    .line 532
    iget-object v0, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    new-instance v4, Lorg/telegram/ui/bots/BotWebViewSheet$3;

    invoke-direct {v4, v1, v2, v3}, Lorg/telegram/ui/bots/BotWebViewSheet$3;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0, v4}, Lorg/telegram/ui/web/BotWebViewContainer;->setDelegate(Lorg/telegram/ui/web/BotWebViewContainer$Delegate;)V

    .line 861
    iget-object v0, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->linePaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 862
    iget-object v0, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->linePaint:Landroid/graphics/Paint;

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 863
    iget-object v0, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->linePaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 865
    iget-object v0, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->dimPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 866
    invoke-direct {v1, v11}, Lorg/telegram/ui/bots/BotWebViewSheet;->getColor(I)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBarColor:I

    .line 867
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-direct {v1, v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->getColor(I)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->navBarColor:I

    .line 868
    invoke-static {v1, v0, v7}, Lorg/telegram/messenger/AndroidUtilities;->setNavigationBarColor(Landroid/app/Dialog;IZ)V

    .line 869
    new-instance v0, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    .line 872
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda18;

    invoke-direct {v4, v0}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;)V

    iput-object v4, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->invalidateRunnable:Ljava/lang/Runnable;

    .line 873
    new-instance v0, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda19;

    invoke-direct {v0, v1}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    iput-object v0, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->relayoutRunnable:Ljava/lang/Runnable;

    .line 876
    iget-object v5, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    new-instance v11, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda20;

    invoke-direct {v11, v1}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    invoke-virtual {v5, v11}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setDelegate(Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;)V

    .line 881
    iget-object v5, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    iget-object v11, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    const/16 v12, 0x31

    invoke-static {v9, v9, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    iput-object v13, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainerLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v5, v11, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 883
    new-instance v5, Lorg/telegram/ui/bots/BotWebViewSheet$4;

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v5, v1, v11, v3}, Lorg/telegram/ui/bots/BotWebViewSheet$4;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v5, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->botButtons:Lorg/telegram/ui/bots/BotButtons;

    .line 897
    new-instance v11, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda21;

    invoke-direct {v11, v1}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    invoke-virtual {v5, v11}, Lorg/telegram/ui/bots/BotButtons;->setOnButtonClickListener(Lorg/telegram/messenger/Utilities$Callback;)V

    .line 906
    iget-object v5, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->botButtons:Lorg/telegram/ui/bots/BotButtons;

    new-instance v11, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda22;

    invoke-direct {v11, v1}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    invoke-virtual {v5, v11}, Lorg/telegram/ui/bots/BotButtons;->setOnResizeListener(Ljava/lang/Runnable;)V

    .line 909
    iget-object v5, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    iget-object v11, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->botButtons:Lorg/telegram/ui/bots/BotButtons;

    const/16 v13, 0x51

    const/4 v14, -0x2

    invoke-static {v9, v14, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    iput-object v13, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->botButtonsLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v5, v11, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 911
    new-instance v5, Lorg/telegram/messenger/BotFullscreenButtons;

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v5, v11}, Lorg/telegram/messenger/BotFullscreenButtons;-><init>(Landroid/content/Context;)V

    iput-object v5, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenButtons:Lorg/telegram/messenger/BotFullscreenButtons;

    .line 912
    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

    .line 913
    iget-object v5, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenButtons:Lorg/telegram/messenger/BotFullscreenButtons;

    const/16 v11, 0x8

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 914
    iget v5, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-boolean v5, v5, Lorg/telegram/messenger/MessagesController;->disableBotFullscreenBlur:Z

    if-nez v5, :cond_0

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v5

    const/4 v11, 0x2

    if-lt v5, v11, :cond_0

    goto :goto_0

    :cond_0
    move v8, v7

    :goto_0
    iput-boolean v8, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenBlur:Z

    .line 915
    iget-object v5, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenButtons:Lorg/telegram/messenger/BotFullscreenButtons;

    if-eqz v8, :cond_1

    iget-object v8, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v8}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getRenderNode()Ljava/lang/Object;

    move-result-object v8

    goto :goto_1

    :cond_1
    move-object v8, v10

    :goto_1
    invoke-virtual {v5, v8}, Lorg/telegram/messenger/BotFullscreenButtons;->setParentRenderNode(Ljava/lang/Object;)V

    .line 916
    iget-object v5, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    iget-object v8, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenButtons:Lorg/telegram/messenger/BotFullscreenButtons;

    const/16 v11, 0x77

    invoke-static {v9, v9, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v5, v8, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 917
    iget-object v5, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenButtons:Lorg/telegram/messenger/BotFullscreenButtons;

    new-instance v8, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda23;

    invoke-direct {v8, v1}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    invoke-virtual {v5, v8}, Lorg/telegram/messenger/BotFullscreenButtons;->setOnCloseClickListener(Ljava/lang/Runnable;)V

    .line 922
    iget-object v5, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenButtons:Lorg/telegram/messenger/BotFullscreenButtons;

    new-instance v8, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda24;

    invoke-direct {v8, v1}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    invoke-virtual {v5, v8}, Lorg/telegram/messenger/BotFullscreenButtons;->setOnCollapseClickListener(Ljava/lang/Runnable;)V

    .line 926
    iget-object v5, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenButtons:Lorg/telegram/messenger/BotFullscreenButtons;

    new-instance v8, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda25;

    invoke-direct {v8, v1}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    invoke-virtual {v5, v8}, Lorg/telegram/messenger/BotFullscreenButtons;->setOnMenuClickListener(Ljava/lang/Runnable;)V

    .line 928
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->bulletinContainer:Landroid/widget/FrameLayout;

    .line 929
    iget-object v8, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    const/16 v11, 0xc8

    const/16 v13, 0x37

    invoke-static {v9, v11, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    iput-object v11, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->bulletinContainerLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v8, v5, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 931
    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v8, Lorg/telegram/messenger/R$drawable;->header_shadow:I

    invoke-static {v5, v8}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBarShadow:Landroid/graphics/drawable/Drawable;

    .line 933
    new-instance v5, Lorg/telegram/ui/bots/BotWebViewSheet$5;

    invoke-direct {v5, v1, v2, v3}, Lorg/telegram/ui/bots/BotWebViewSheet$5;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v5, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 942
    invoke-virtual {v5, v7}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 943
    iget-object v5, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v7, Lorg/telegram/messenger/R$drawable;->ic_close_white:I

    invoke-virtual {v5, v7}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 944
    invoke-direct {v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->updateActionBarColors()V

    .line 945
    iget-object v5, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v7, Lorg/telegram/ui/bots/BotWebViewSheet$6;

    invoke-direct {v7, v1}, Lorg/telegram/ui/bots/BotWebViewSheet$6;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    invoke-virtual {v5, v7}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 953
    iget-object v5, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

    .line 954
    iget-object v5, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    iget-object v6, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {v9, v14, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    iput-object v7, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBarLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 956
    iget-object v5, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    new-instance v6, Lorg/telegram/ui/bots/BotWebViewSheet$7;

    invoke-direct {v6, v1, v2, v3}, Lorg/telegram/ui/bots/BotWebViewSheet$7;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v6, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->progressView:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebProgressView;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v11, -0x1

    const/high16 v12, -0x40000000    # -2.0f

    const/16 v13, 0x51

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 964
    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    .line 956
    invoke-virtual {v5, v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 965
    iget-object v3, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    new-instance v5, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda26;

    invoke-direct {v5, v1}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    invoke-virtual {v3, v5}, Lorg/telegram/ui/web/BotWebViewContainer;->setWebViewProgressListener(Landroidx/core/util/Consumer;)V

    .line 981
    iget-object v3, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    iget-object v5, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-static {v9, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 982
    iget-object v3, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    new-instance v5, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda14;

    invoke-direct {v5, v1}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    invoke-virtual {v3, v5}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setScrollListener(Ljava/lang/Runnable;)V

    .line 1002
    iget-object v3, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    new-instance v5, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda15;

    invoke-direct {v5, v1}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    invoke-virtual {v3, v5}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setScrollEndListener(Ljava/lang/Runnable;)V

    .line 1003
    iget-object v3, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    new-instance v5, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda16;

    invoke-direct {v5, v1}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    invoke-virtual {v3, v5}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setDelegate(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer$Delegate;)V

    .line 1007
    iget-object v3, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    new-instance v5, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda17;

    invoke-direct {v5, v1}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    invoke-virtual {v3, v5}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setIsKeyboardVisible(Lorg/telegram/messenger/GenericProvider;)V

    .line 1009
    new-instance v3, Lorg/telegram/ui/Components/PasscodeView;

    invoke-direct {v3, v2}, Lorg/telegram/ui/Components/PasscodeView;-><init>(Landroid/content/Context;)V

    iput-object v3, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    .line 1010
    iget-object v2, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    invoke-static {v9, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1012
    iget-object v2, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1013
    invoke-virtual {v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->updateFullscreenLayout()V

    .line 1015
    sget-object v2, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/telegram/ui/LaunchActivity;->getBottomSheetTabs()Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    move-result-object v10

    :cond_2
    iput-object v10, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->bottomTabs:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    if-eqz v10, :cond_3

    .line 1018
    invoke-virtual {v10, v4, v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->listen(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 1020
    new-instance v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$ClipTools;

    iget-object v2, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->bottomTabs:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    invoke-direct {v0, v2}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$ClipTools;-><init>(Lorg/telegram/ui/ActionBar/BottomSheetTabs;)V

    iput-object v0, v1, Lorg/telegram/ui/bots/BotWebViewSheet;->bottomTabsClip:Lorg/telegram/ui/ActionBar/BottomSheetTabs$ClipTools;

    :cond_3
    return-void
.end method

.method static synthetic access$001(Lorg/telegram/ui/bots/BotWebViewSheet;)V
    .locals 0

    .line 117
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private applyAppBotSettings(Lorg/telegram/tgnet/tl/TL_bots$botAppSettings;Z)V
    .locals 5

    if-nez p1, :cond_0

    goto :goto_6

    .line 1833
    :cond_0
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v0

    .line 1834
    iget v1, p1, Lorg/telegram/tgnet/tl/TL_bots$botAppSettings;->flags:I

    if-eqz v0, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    and-int/2addr v2, v1

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v0, :cond_3

    const/16 v4, 0x10

    goto :goto_2

    :cond_3
    const/16 v4, 0x8

    :goto_2
    and-int/2addr v1, v4

    const/high16 v4, -0x1000000

    if-eqz v1, :cond_5

    if-eqz v0, :cond_4

    .line 1837
    iget v1, p1, Lorg/telegram/tgnet/tl/TL_bots$botAppSettings;->header_dark_color:I

    goto :goto_3

    :cond_4
    iget v1, p1, Lorg/telegram/tgnet/tl/TL_bots$botAppSettings;->header_color:I

    :goto_3
    or-int/2addr v1, v4

    invoke-virtual {p0, v1, v3, p2}, Lorg/telegram/ui/bots/BotWebViewSheet;->setActionBarColor(IZZ)V

    :cond_5
    if-eqz v2, :cond_8

    if-eqz v0, :cond_6

    .line 1840
    iget v1, p1, Lorg/telegram/tgnet/tl/TL_bots$botAppSettings;->background_dark_color:I

    goto :goto_4

    :cond_6
    iget v1, p1, Lorg/telegram/tgnet/tl/TL_bots$botAppSettings;->background_color:I

    :goto_4
    or-int/2addr v1, v4

    invoke-virtual {p0, v1, v3, p2}, Lorg/telegram/ui/bots/BotWebViewSheet;->setBackgroundColor(IZZ)V

    if-eqz v0, :cond_7

    .line 1841
    iget p1, p1, Lorg/telegram/tgnet/tl/TL_bots$botAppSettings;->background_dark_color:I

    goto :goto_5

    :cond_7
    iget p1, p1, Lorg/telegram/tgnet/tl/TL_bots$botAppSettings;->background_color:I

    :goto_5
    or-int/2addr p1, v4

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/bots/BotWebViewSheet;->setNavigationBarColor(IZ)V

    :cond_8
    :goto_6
    return-void
.end method

.method public static deleteBot(IJLjava/lang/Runnable;)V
    .locals 13

    .line 1895
    invoke-static {p0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getAttachMenuBots()Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots;->bots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    const/4 v4, 0x0

    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    .line 1896
    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->bot_id:J

    cmp-long v6, v6, p1

    if-nez v6, :cond_0

    move-object v11, v5

    goto :goto_0

    :cond_1
    move-object v11, v4

    :goto_0
    if-nez v11, :cond_2

    return-void

    .line 1904
    :cond_2
    iget-object v0, v11, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->short_name:Ljava/lang/String;

    .line 1905
    sget v1, Lorg/telegram/messenger/R$string;->BotRemoveFromMenu:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1907
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lorg/telegram/messenger/R$string;->BotRemoveFromMenuTitle:I

    .line 1908
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    .line 1909
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->OK:I

    .line 1910
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v7, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda52;

    move v8, p0

    move-wide v9, p1

    move-object/from16 v12, p3

    invoke-direct/range {v7 .. v12}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda52;-><init>(IJLorg/telegram/tgnet/TLRPC$TL_attachMenuBot;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v7}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p0

    sget p1, Lorg/telegram/messenger/R$string;->Cancel:I

    .line 1924
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p0

    .line 1925
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void
.end method

.method private getColor(I)I
    .locals 1

    .line 1929
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private synthetic lambda$createErrorContainer$53(Landroid/view/View;)V
    .locals 0

    .line 2674
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/web/BotWebViewContainer;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2676
    invoke-virtual {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->reload()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$dismiss$48(Ljava/lang/Runnable;)V
    .locals 1

    .line 2071
    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->superDismissed:Z

    if-nez v0, :cond_0

    .line 2072
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x1

    .line 2073
    iput-boolean v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->superDismissed:Z

    :cond_0
    if-eqz p1, :cond_1

    .line 2076
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$10()V
    .locals 1

    .line 918
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 919
    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->onCheckDismissByUser()Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$11()V
    .locals 2

    const/4 v0, 0x1

    .line 923
    iput-boolean v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->forceExpnaded:Z

    const/4 v1, 0x0

    .line 924
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->dismiss(ZLjava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$12(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 970
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->progressView:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebProgressView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$new$13(Ljava/lang/Float;)V
    .locals 2

    .line 966
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->progressView:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebProgressView;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebProgressView;->setLoadProgressAnimated(F)V

    .line 967
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x2

    .line 968
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 969
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 970
    new-instance v0, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda31;

    invoke-direct {v0, p0}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 971
    new-instance v0, Lorg/telegram/ui/bots/BotWebViewSheet$8;

    invoke-direct {v0, p0}, Lorg/telegram/ui/bots/BotWebViewSheet$8;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 977
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private synthetic lambda$new$14()V
    .locals 5

    .line 983
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getSwipeOffsetY()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-lez v0, :cond_0

    .line 984
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->dimPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v3}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getSwipeOffsetY()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v3, v1, v2}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v3

    sub-float v3, v2, v3

    const/high16 v4, 0x42800000    # 64.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0

    .line 986
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->dimPaint:Landroid/graphics/Paint;

    const/16 v3, 0x40

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 988
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 989
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer;->invalidateViewPortHeight()V

    .line 991
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_2

    .line 992
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getTopActionBarOffsetY()F

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v4}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getTopActionBarOffsetY()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v3}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getTopActionBarOffsetY()F

    move-result v3

    div-float/2addr v0, v3

    sub-float/2addr v2, v0

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v0, v2, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    int-to-float v0, v0

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v0, v2

    .line 994
    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result v2

    cmpl-float v2, v2, v0

    if-eqz v2, :cond_2

    .line 995
    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 996
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 999
    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreen:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->insets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getSwipeOffsetY()F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    .line 1000
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->lastSwipeTime:J

    return-void
.end method

.method private synthetic lambda$new$15()V
    .locals 2

    .line 1002
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer;->invalidateViewPortHeight(Z)V

    return-void
.end method

.method private synthetic lambda$new$16(Z)V
    .locals 1

    .line 1004
    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreen:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 1005
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->dismiss(ZLjava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$17(Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    .line 1007
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getKeyboardHeight()I

    move-result p1

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$new$4(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    .line 271
    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->dismissed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 275
    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->dismiss()V

    return-void

    .line 277
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->pollRunnable:Ljava/lang/Runnable;

    const-wide/32 v0, 0xea60

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic lambda$new$5(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 270
    new-instance p1, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda50;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda50;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$6()V
    .locals 6

    .line 252
    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->dismissed:Z

    if-nez v0, :cond_3

    iget-wide v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->queryId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 253
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;-><init>()V

    .line 254
    iget v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botId:J

    invoke-virtual {v1, v4, v5}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 255
    iget v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->peerId:J

    invoke-virtual {v1, v4, v5}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 256
    iget-wide v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->queryId:J

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;->query_id:J

    .line 257
    iget-boolean v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->silent:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;->silent:Z

    .line 258
    iget v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->replyToMsgId:I

    if-eqz v1, :cond_1

    .line 259
    iget v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v1

    iget v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->replyToMsgId:I

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/SendMessagesHelper;->createReplyInput(I)Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;->reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    .line 260
    iget-wide v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->monoforumTopicId:J

    cmp-long v2, v4, v2

    if-eqz v2, :cond_0

    .line 261
    iget v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->monoforumTopicId:J

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$InputReplyTo;->monoforum_peer_id:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 262
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;->reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    iget v2, v1, Lorg/telegram/tgnet/TLRPC$InputReplyTo;->flags:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$InputReplyTo;->flags:I

    .line 264
    :cond_0
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;->flags:I

    goto :goto_0

    .line 265
    :cond_1
    iget-wide v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->monoforumTopicId:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_2

    .line 266
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputReplyToMonoForum;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputReplyToMonoForum;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;->reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    .line 267
    iget v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->monoforumTopicId:J

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$InputReplyTo;->monoforum_peer_id:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 268
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;->flags:I

    .line 270
    :cond_2
    :goto_0
    iget v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda49;

    invoke-direct {v2, p0}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda49;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_3
    return-void
.end method

.method private synthetic lambda$new$7(IZ)V
    .locals 1

    const/high16 p2, 0x41a00000    # 20.0f

    .line 877
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    if-le p1, p2, :cond_0

    .line 878
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getOffsetY()F

    move-result p2

    neg-float p2, p2

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getTopActionBarOffsetY()F

    move-result v0

    add-float/2addr p2, v0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->stickTo(F)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$8(Ljava/lang/Boolean;)V
    .locals 1

    .line 898
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    if-eqz v0, :cond_1

    .line 899
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 900
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/web/BotWebViewContainer;->onMainButtonPressed()V

    return-void

    .line 902
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/web/BotWebViewContainer;->onSecondaryButtonPressed()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$9()V
    .locals 1

    .line 907
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private synthetic lambda$onCheckDismissByUser$47(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 2022
    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onCreate$18(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 6

    .line 1132
    invoke-static {p2, p1}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    .line 1133
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->navigationBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    .line 1134
    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->navInsets:Landroid/graphics/Rect;

    iget v2, v0, Landroidx/core/graphics/Insets;->left:I

    iget v3, v0, Landroidx/core/graphics/Insets;->top:I

    iget v4, v0, Landroidx/core/graphics/Insets;->right:I

    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 1135
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->displayCutout()I

    move-result v0

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    .line 1136
    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->insets:Landroid/graphics/Rect;

    iget v2, v0, Landroidx/core/graphics/Insets;->left:I

    .line 1137
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, v0, Landroidx/core/graphics/Insets;->top:I

    .line 1138
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, v0, Landroidx/core/graphics/Insets;->right:I

    .line 1139
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    .line 1140
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1136
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 1142
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_0

    .line 1143
    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->insets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 1145
    :cond_0
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    .line 1146
    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    .line 1147
    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->insets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-le p1, v1, :cond_1

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    if-le p1, v1, :cond_1

    .line 1148
    iput p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->keyboardInset:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1150
    iput p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->keyboardInset:I

    .line 1152
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->updateFullscreenLayout()V

    const/16 p1, 0x1e

    if-lt v0, p1, :cond_2

    .line 1154
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Impl30$$ExternalSyntheticApiModelOutline0;->m()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1

    .line 1156
    :cond_2
    invoke-virtual {p2}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$openOptions$35()V
    .locals 3

    .line 1682
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->parentActivity:Landroid/app/Activity;

    instance-of v1, v0, Lorg/telegram/ui/LaunchActivity;

    if-eqz v1, :cond_0

    .line 1683
    check-cast v0, Lorg/telegram/ui/LaunchActivity;

    iget-wide v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botId:J

    invoke-static {v1, v2}, Lorg/telegram/ui/ChatActivity;->of(J)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    :cond_0
    const/4 v0, 0x1

    .line 1685
    invoke-virtual {p0, v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->dismiss(Z)V

    return-void
.end method

.method private synthetic lambda$openOptions$36()V
    .locals 1

    .line 1688
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer;->onSettingsButtonPressed()V

    return-void
.end method

.method private synthetic lambda$openOptions$37()V
    .locals 2

    .line 1691
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    iget-boolean v1, v0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->isPinned:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->isPinned:Z

    const/4 v0, 0x0

    .line 1692
    iput-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->options:Lorg/telegram/ui/Components/ItemOptions;

    return-void
.end method

.method private synthetic lambda$openOptions$38()V
    .locals 5

    .line 1695
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1696
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1697
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1700
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->progressView:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebProgressView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebProgressView;->setLoadProgress(F)V

    .line 1701
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->progressView:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebProgressView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1702
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->progressView:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebProgressView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1704
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    iget v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer;->setBotUser(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 1705
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    iget v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    iget-wide v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botId:J

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/ui/web/BotWebViewContainer;->loadFlickerAndSettingsItem(IJLorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)V

    .line 1706
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer;->reload()V

    return-void
.end method

.method private synthetic lambda$openOptions$39()V
    .locals 4

    .line 1709
    iget v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botId:J

    sget v3, Lorg/telegram/messenger/MediaDataController;->SHORTCUT_TYPE_ATTACHED_BOT:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MediaDataController;->installShortcut(JI)V

    return-void
.end method

.method private synthetic lambda$openOptions$40()V
    .locals 2

    .line 1712
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->BotWebViewToSLink:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$openOptions$41()V
    .locals 0

    .line 1715
    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->dismiss()V

    return-void
.end method

.method private synthetic lambda$openOptions$42()V
    .locals 4

    .line 1715
    iget v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    iget-wide v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botId:J

    new-instance v3, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda51;

    invoke-direct {v3, p0}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda51;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/bots/BotWebViewSheet;->deleteBot(IJLjava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$requestWebView$20(Lorg/telegram/tgnet/TLRPC$UserFull;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1430
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_info:Lorg/telegram/tgnet/tl/TL_bots$BotInfo;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->app_settings:Lorg/telegram/tgnet/tl/TL_bots$botAppSettings;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 1431
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->applyAppBotSettings(Lorg/telegram/tgnet/tl/TL_bots$botAppSettings;Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$requestWebView$21(Lorg/telegram/tgnet/TLRPC$UserFull;)V
    .locals 1

    .line 1429
    new-instance v0, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda30;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;Lorg/telegram/tgnet/TLRPC$UserFull;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$requestWebView$22(Landroid/view/View;)V
    .locals 0

    .line 1446
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->openOptions()V

    return-void
.end method

.method private synthetic lambda$requestWebView$23(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1493
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->requestProps:Lorg/telegram/ui/bots/WebViewRequestProps;

    if-eqz p1, :cond_1

    .line 1494
    invoke-virtual {p1, p2}, Lorg/telegram/ui/bots/WebViewRequestProps;->applyResponse(Lorg/telegram/tgnet/TLObject;)V

    .line 1495
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->loadFromResponse()V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$requestWebView$24(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 1490
    new-instance v0, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda32;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda32;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$requestWebView$25(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1527
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->requestProps:Lorg/telegram/ui/bots/WebViewRequestProps;

    if-eqz p1, :cond_1

    .line 1528
    invoke-virtual {p1, p2}, Lorg/telegram/ui/bots/WebViewRequestProps;->applyResponse(Lorg/telegram/tgnet/TLObject;)V

    .line 1529
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->loadFromResponse()V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$requestWebView$26(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 1524
    new-instance v0, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda48;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda48;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$requestWebView$27(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1568
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->requestProps:Lorg/telegram/ui/bots/WebViewRequestProps;

    if-eqz p1, :cond_1

    .line 1569
    invoke-virtual {p1, p2}, Lorg/telegram/ui/bots/WebViewRequestProps;->applyResponse(Lorg/telegram/tgnet/TLObject;)V

    .line 1570
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->loadFromResponse()V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$requestWebView$28(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 1565
    new-instance v0, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda27;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$requestWebView$29(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1604
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->requestProps:Lorg/telegram/ui/bots/WebViewRequestProps;

    if-eqz p1, :cond_1

    .line 1605
    invoke-virtual {p1, p2}, Lorg/telegram/ui/bots/WebViewRequestProps;->applyResponse(Lorg/telegram/tgnet/TLObject;)V

    .line 1606
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->loadFromResponse()V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$requestWebView$30(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 1601
    new-instance v0, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda43;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda43;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$requestWebView$31(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1635
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->requestProps:Lorg/telegram/ui/bots/WebViewRequestProps;

    if-eqz p1, :cond_1

    .line 1636
    invoke-virtual {p1, p2}, Lorg/telegram/ui/bots/WebViewRequestProps;->applyResponse(Lorg/telegram/tgnet/TLObject;)V

    .line 1637
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->loadFromResponse()V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$requestWebView$32(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 1632
    new-instance v0, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda47;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda47;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$setActionBarColor$52(IILorg/telegram/ui/bots/BotWebViewMenuContainer$ActionBarColorsAnimating;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 2373
    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Float;

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p4

    .line 2374
    invoke-static {p1, p2, p4}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBarColor:I

    .line 2376
    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->checkNavBarColor()V

    .line 2377
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 2378
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBarColor:I

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 2380
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p3, p1, p4}, Lorg/telegram/ui/bots/BotWebViewMenuContainer$ActionBarColorsAnimating;->updateActionBar(Lorg/telegram/ui/ActionBar/ActionBar;F)V

    .line 2381
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_sheet_scrollUp:I

    invoke-virtual {p3, p1}, Lorg/telegram/ui/bots/BotWebViewMenuContainer$ActionBarColorsAnimating;->getColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->lineColor:I

    .line 2383
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$setBackgroundColor$50(IILandroid/animation/ValueAnimator;)V
    .locals 1

    .line 2159
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-static {p1, p2, p3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2160
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->updateActionBarColors()V

    .line 2161
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 2162
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->errorContainer:Lorg/telegram/ui/ArticleViewer$ErrorContainer;

    if-eqz p1, :cond_1

    .line 2163
    iget-object p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result p2

    const p3, 0x3f389375    # 0.721f

    cmpg-float p2, p2, p3

    const/4 p3, 0x0

    if-gtz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, p3

    :goto_0
    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/ArticleViewer$ErrorContainer;->setDark(ZZ)V

    .line 2164
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->errorContainer:Lorg/telegram/ui/ArticleViewer$ErrorContainer;

    iget-object p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2166
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->updateWebViewBackgroundColor()V

    return-void
.end method

.method private synthetic lambda$setNavigationBarColor$51(IILandroid/animation/ValueAnimator;)V
    .locals 0

    .line 2337
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    .line 2338
    invoke-static {p1, p2, p3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->navBarColor:I

    .line 2339
    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->checkNavBarColor()V

    return-void
.end method

.method private synthetic lambda$setOpen$49(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 2118
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->openedProgress:F

    .line 2119
    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->checkNavBarColor()V

    return-void
.end method

.method private synthetic lambda$showJustAddedBulletin$1(Ljava/lang/String;)V
    .locals 1

    .line 147
    new-instance v0, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda56;

    invoke-direct {v0, p1}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda56;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->showBulletin(Lorg/telegram/messenger/Utilities$CallbackReturn;)V

    return-void
.end method

.method private synthetic lambda$updateDownloadBulletin$43(Lorg/telegram/ui/bots/BotDownloads$FileDownload;Landroid/view/View;)V
    .locals 0

    .line 1814
    invoke-virtual {p1}, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->isDownloading()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1815
    invoke-virtual {p1}, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->cancel()V

    goto :goto_0

    .line 1817
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->open()V

    .line 1819
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->options:Lorg/telegram/ui/Components/ItemOptions;

    if-eqz p1, :cond_1

    .line 1820
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    const/4 p1, 0x0

    .line 1821
    iput-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->options:Lorg/telegram/ui/Components/ItemOptions;

    :cond_1
    return-void
.end method

.method private loadFromResponse()V
    .locals 6

    .line 1846
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->requestProps:Lorg/telegram/ui/bots/WebViewRequestProps;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1847
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->requestProps:Lorg/telegram/ui/bots/WebViewRequestProps;

    iget-wide v2, v2, Lorg/telegram/ui/bots/WebViewRequestProps;->responseTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const/4 v2, 0x0

    .line 1849
    iput-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullsize:Ljava/lang/Boolean;

    .line 1850
    iget-object v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->requestProps:Lorg/telegram/ui/bots/WebViewRequestProps;

    iget-object v3, v3, Lorg/telegram/ui/bots/WebViewRequestProps;->response:Lorg/telegram/tgnet/TLObject;

    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_webViewResultUrl;

    if-eqz v4, :cond_1

    .line 1851
    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_webViewResultUrl;

    .line 1852
    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$TL_webViewResultUrl;->query_id:J

    iput-wide v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->queryId:J

    .line 1853
    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_webViewResultUrl;->url:Ljava/lang/String;

    .line 1854
    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_webViewResultUrl;->fullsize:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullsize:Ljava/lang/Boolean;

    .line 1855
    iget-boolean v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fromTab:Z

    if-nez v4, :cond_1

    .line 1856
    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_webViewResultUrl;->fullscreen:Z

    xor-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v3, v4}, Lorg/telegram/ui/bots/BotWebViewSheet;->setFullscreen(ZZ)V

    :cond_1
    if-eqz v2, :cond_2

    .line 1867
    iget-boolean v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fromTab:Z

    if-nez v3, :cond_2

    .line 1868
    iget v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->requestProps:Lorg/telegram/ui/bots/WebViewRequestProps;

    iget-wide v4, v4, Lorg/telegram/ui/bots/WebViewRequestProps;->botId:J

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/MediaDataController;->increaseWebappRating(J)V

    .line 1869
    iget-object v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    iget v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-virtual {v3, v4, v2}, Lorg/telegram/ui/web/BotWebViewContainer;->loadUrl(ILjava/lang/String;)V

    .line 1871
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->pollRunnable:Ljava/lang/Runnable;

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1872
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    if-eqz v0, :cond_3

    .line 1873
    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->isFullSize()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setFullSize(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static makeThemeParams(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/json/JSONObject;
    .locals 1

    const/4 v0, 0x0

    .line 1265
    invoke-static {p0, v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->makeThemeParams(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static makeThemeParams(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)Lorg/json/JSONObject;
    .locals 4

    .line 1270
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1271
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v1, p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    const/high16 v2, -0x1000000

    invoke-static {v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result v1

    .line 1272
    new-instance v2, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda28;

    invoke-direct {v2, v1, p1}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda28;-><init>(IZ)V

    .line 1279
    const-string p1, "bg_color"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/telegram/messenger/Utilities$CallbackReturn;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1280
    const-string/jumbo p1, "section_bg_color"

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v1, p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/telegram/messenger/Utilities$CallbackReturn;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1281
    const-string/jumbo p1, "secondary_bg_color"

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v1, p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/telegram/messenger/Utilities$CallbackReturn;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1282
    const-string/jumbo p1, "text_color"

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v3, p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/telegram/messenger/Utilities$CallbackReturn;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1283
    const-string p1, "hint_color"

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    invoke-static {v3, p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/telegram/messenger/Utilities$CallbackReturn;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1284
    const-string p1, "link_color"

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteLinkText:I

    invoke-static {v3, p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/telegram/messenger/Utilities$CallbackReturn;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1285
    const-string p1, "button_color"

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {v3, p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/telegram/messenger/Utilities$CallbackReturn;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1286
    const-string p1, "button_text_color"

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-static {v3, p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/telegram/messenger/Utilities$CallbackReturn;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1287
    const-string p1, "header_bg_color"

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    invoke-static {v3, p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/telegram/messenger/Utilities$CallbackReturn;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1288
    const-string p1, "accent_text_color"

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    invoke-static {v3, p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/telegram/messenger/Utilities$CallbackReturn;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1289
    const-string/jumbo p1, "section_header_text_color"

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    invoke-static {v3, p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/telegram/messenger/Utilities$CallbackReturn;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1290
    const-string/jumbo p1, "subtitle_text_color"

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {v3, p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/telegram/messenger/Utilities$CallbackReturn;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1291
    const-string p1, "destructive_text_color"

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {v3, p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/telegram/messenger/Utilities$CallbackReturn;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1292
    const-string/jumbo p1, "section_separator_color"

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    invoke-static {v3, p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/telegram/messenger/Utilities$CallbackReturn;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1293
    const-string p1, "bottom_bar_bg_color"

    invoke-static {v1, p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v2, p0}, Lorg/telegram/messenger/Utilities$CallbackReturn;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 1296
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static navigationBarColor(I)I
    .locals 2

    const v0, 0x3eb33333    # 0.35f

    const v1, -0x42333333    # -0.1f

    .line 2145
    invoke-static {p0, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->adaptHSV(IFF)I

    move-result p0

    return p0
.end method

.method private openOptions()V
    .locals 13

    .line 1649
    iget v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 1651
    iget v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaDataController;->getAttachMenuBots()Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots;->bots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    if-ge v4, v2, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    .line 1652
    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->bot_id:J

    iget-wide v8, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botId:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 1657
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->options:Lorg/telegram/ui/Components/ItemOptions;

    if-eqz v1, :cond_2

    .line 1658
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    .line 1660
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget-boolean v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreen:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenButtons:Lorg/telegram/messenger/BotFullscreenButtons;

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    :goto_1
    const/4 v6, 0x1

    invoke-static {v1, v2, v4, v6}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;Z)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->options:Lorg/telegram/ui/Components/ItemOptions;

    .line 1661
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    iget-wide v7, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botId:J

    invoke-static {v2, v4, v7, v8}, Lorg/telegram/ui/bots/BotDownloads;->get(Landroid/content/Context;IJ)Lorg/telegram/ui/bots/BotDownloads;

    move-result-object v2

    .line 1662
    iget-object v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fileItems:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1663
    invoke-virtual {v2}, Lorg/telegram/ui/bots/BotDownloads;->hasFiles()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1664
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ItemOptions;->makeSwipeback()Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v4

    .line 1665
    sget v7, Lorg/telegram/messenger/R$drawable;->msg_arrow_back:I

    sget v8, Lorg/telegram/messenger/R$string;->Back:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/RatePill$$ExternalSyntheticLambda1;

    invoke-direct {v9, v1}, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/RatePill$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ItemOptions;)V

    invoke-virtual {v4, v7, v8, v9}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 1666
    invoke-virtual {v4}, Lorg/telegram/ui/Components/ItemOptions;->addGap()Lorg/telegram/ui/Components/ItemOptions;

    .line 1667
    invoke-virtual {v2}, Lorg/telegram/ui/bots/BotDownloads;->getFiles()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v3

    :goto_2
    if-ge v8, v7, :cond_4

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Lorg/telegram/ui/bots/BotDownloads$FileDownload;

    .line 1668
    iget-object v10, v9, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->file_name:Ljava/lang/String;

    new-instance v11, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda33;

    invoke-direct {v11}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda33;-><init>()V

    const-string v12, ""

    invoke-virtual {v4, v10, v12, v11}, Lorg/telegram/ui/Components/ItemOptions;->add(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v10

    .line 1669
    invoke-virtual {v10}, Lorg/telegram/ui/Components/ItemOptions;->getLast()Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v10

    .line 1670
    iget-object v11, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fileItems:Ljava/util/HashMap;

    invoke-virtual {v11, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1672
    :cond_4
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->updateDownloadBulletin()V

    const/high16 v2, 0x43340000    # 180.0f

    .line 1673
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/ItemOptions;->setMinWidth(I)Lorg/telegram/ui/Components/ItemOptions;

    .line 1675
    sget v2, Lorg/telegram/messenger/R$drawable;->menu_download_round:I

    sget v7, Lorg/telegram/messenger/R$string;->BotDownloads:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda34;

    invoke-direct {v8, v1, v4}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda34;-><init>(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/ui/Components/ItemOptions;)V

    invoke-virtual {v1, v2, v7, v8}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 1678
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ItemOptions;->addGap()Lorg/telegram/ui/Components/ItemOptions;

    .line 1680
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->onVerifiedAge:Lorg/telegram/messenger/Utilities$Callback4;

    if-nez v2, :cond_6

    move v2, v6

    goto :goto_3

    :cond_6
    move v2, v3

    :goto_3
    sget v4, Lorg/telegram/messenger/R$drawable;->msg_bot:I

    sget v7, Lorg/telegram/messenger/R$string;->BotWebViewOpenBot:I

    .line 1681
    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda35;

    invoke-direct {v8, p0}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda35;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    invoke-virtual {v1, v2, v4, v7, v8}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v2

    iget-object v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->onVerifiedAge:Lorg/telegram/messenger/Utilities$Callback4;

    if-nez v4, :cond_7

    iget-boolean v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->hasSettings:Z

    if-eqz v4, :cond_7

    move v4, v6

    goto :goto_4

    :cond_7
    move v4, v3

    :goto_4
    sget v7, Lorg/telegram/messenger/R$drawable;->msg_settings:I

    sget v8, Lorg/telegram/messenger/R$string;->BotWebViewSettings:I

    .line 1687
    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda36;

    invoke-direct {v9, p0}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda36;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    invoke-virtual {v2, v4, v7, v8, v9}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v2

    .line 1690
    iget-object v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    iget-boolean v4, v4, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->isPinned:Z

    if-eqz v4, :cond_8

    sget v7, Lorg/telegram/messenger/R$drawable;->msg_unpin:I

    goto :goto_5

    :cond_8
    sget v7, Lorg/telegram/messenger/R$drawable;->msg_pin:I

    :goto_5
    if-eqz v4, :cond_9

    sget v4, Lorg/telegram/messenger/R$string;->UnpinMessage:I

    goto :goto_6

    :cond_9
    sget v4, Lorg/telegram/messenger/R$string;->PinMessage:I

    :goto_6
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v8, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda37;

    invoke-direct {v8, p0}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda37;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    invoke-virtual {v2, v7, v4, v8}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_retry:I

    sget v7, Lorg/telegram/messenger/R$string;->BotWebViewReloadPage:I

    .line 1694
    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda38;

    invoke-direct {v8, p0}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda38;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    invoke-virtual {v2, v4, v7, v8}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v2

    iget-object v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->onVerifiedAge:Lorg/telegram/messenger/Utilities$Callback4;

    if-nez v4, :cond_a

    if-eqz v0, :cond_a

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$User;->bot_has_main_app:Z

    if-eqz v0, :cond_a

    move v0, v6

    goto :goto_7

    :cond_a
    move v0, v3

    :goto_7
    sget v4, Lorg/telegram/messenger/R$drawable;->msg_home:I

    sget v7, Lorg/telegram/messenger/R$string;->AddShortcut:I

    .line 1708
    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda39;

    invoke-direct {v8, p0}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda39;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    invoke-virtual {v2, v0, v4, v7, v8}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->onVerifiedAge:Lorg/telegram/messenger/Utilities$Callback4;

    if-nez v2, :cond_b

    move v2, v6

    goto :goto_8

    :cond_b
    move v2, v3

    :goto_8
    sget v4, Lorg/telegram/messenger/R$drawable;->menu_intro:I

    sget v7, Lorg/telegram/messenger/R$string;->BotWebViewToS:I

    .line 1711
    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda40;

    invoke-direct {v8, p0}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda40;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    invoke-virtual {v0, v2, v4, v7, v8}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->onVerifiedAge:Lorg/telegram/messenger/Utilities$Callback4;

    if-nez v2, :cond_d

    if-eqz v5, :cond_d

    iget-boolean v2, v5, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->show_in_side_menu:Z

    if-nez v2, :cond_c

    iget-boolean v2, v5, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->show_in_attach_menu:Z

    if-eqz v2, :cond_d

    :cond_c
    move v2, v6

    goto :goto_9

    :cond_d
    move v2, v3

    :goto_9
    sget v4, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    sget v5, Lorg/telegram/messenger/R$string;->BotWebViewDeleteBot:I

    .line 1714
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda41;

    invoke-direct {v7, p0}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda41;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    invoke-virtual {v0, v2, v4, v5, v7}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 1717
    iget v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBarColor:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    if-eq v0, v2, :cond_11

    .line 1718
    iget v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBarColor:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v0

    const v2, 0x3f389375    # 0.721f

    cmpl-float v0, v0, v2

    const/4 v4, -0x1

    if-ltz v0, :cond_e

    move v0, v4

    goto :goto_a

    :cond_e
    const v0, -0xe7e7e7

    .line 1719
    :goto_a
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v5

    cmpl-float v2, v5, v2

    if-ltz v2, :cond_f

    const/high16 v4, -0x1000000

    :cond_f
    const v2, 0x3f59999a    # 0.85f

    .line 1720
    invoke-static {v4, v2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    const v5, 0x3dcccccd    # 0.1f

    .line 1721
    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v5

    .line 1723
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ItemOptions;->setBackgroundColor(I)Lorg/telegram/ui/Components/ItemOptions;

    move v0, v3

    .line 1724
    :goto_b
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ItemOptions;->getItemsCount()I

    move-result v7

    if-ge v0, v7, :cond_11

    .line 1725
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ItemOptions;->getItemAt(I)Landroid/view/View;

    move-result-object v7

    .line 1726
    instance-of v8, v7, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v8, :cond_10

    .line 1727
    check-cast v7, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v7, v4, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 1728
    invoke-virtual {v7, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_11
    const/4 v0, 0x5

    .line 1732
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ItemOptions;->setGravity(I)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->insets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    neg-int v1, v1

    int-to-float v1, v1

    const/4 v2, 0x0

    .line 1733
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ItemOptions;->translate(FF)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    .line 1734
    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/ItemOptions;->forceTop(Z)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    .line 1735
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/ItemOptions;->setDrawScrim(Z)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/ItemOptions;->setDimAlpha(I)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    .line 1736
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    return-void
.end method

.method private preloadShortcutBotIcon(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;)V
    .locals 3

    if-eqz p2, :cond_1

    .line 1878
    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->show_in_side_menu:Z

    if-eqz p2, :cond_1

    iget p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p2

    iget-wide v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botId:J

    sget v2, Lorg/telegram/messenger/MediaDataController;->SHORTCUT_TYPE_ATTACHED_BOT:I

    invoke-virtual {p2, v0, v1, v2}, Lorg/telegram/messenger/MediaDataController;->isShortcutAdded(JI)Z

    move-result p2

    if-nez p2, :cond_1

    if-nez p1, :cond_0

    .line 1881
    iget p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_1

    .line 1883
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz p2, :cond_1

    .line 1884
    iget p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p2

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object p2

    .line 1885
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_1

    .line 1886
    iget p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p2

    invoke-static {p1, v1}, Lorg/telegram/messenger/ImageLocation;->getForUser(Lorg/telegram/tgnet/TLRPC$User;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lorg/telegram/messenger/MediaDataController;->preloadImage(Lorg/telegram/messenger/ImageLocation;I)V

    :cond_1
    return-void
.end method

.method private relayout()V
    .locals 0

    .line 1025
    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->updateFullscreenLayout()V

    return-void
.end method

.method private showBulletin(Lorg/telegram/messenger/Utilities$CallbackReturn;)V
    .locals 2

    .line 1740
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->bulletinContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/telegram/messenger/Utilities$CallbackReturn;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/Bulletin;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private updateActionBarColors()V
    .locals 4

    .line 1059
    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->overrideActionBarColor:Z

    if-nez v0, :cond_0

    .line 1060
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 1061
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-direct {p0, v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->getColor(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 1062
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarWhiteSelector:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 1063
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setPopupBackgroundColor(IZ)V

    .line 1064
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1, v2, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setPopupItemsColor(IZZ)V

    .line 1065
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->getColor(I)I

    move-result v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setPopupItemsColor(IZZ)V

    .line 1066
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButtonSelector:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setPopupItemsSelectorColor(IZ)V

    .line 1068
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer;->setFlickerViewColor(I)V

    return-void
.end method

.method private updateDownloadBulletin()V
    .locals 10

    .line 1756
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    iget-wide v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botId:J

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/bots/BotDownloads;->get(Landroid/content/Context;IJ)Lorg/telegram/ui/bots/BotDownloads;

    move-result-object v0

    .line 1757
    invoke-virtual {v0}, Lorg/telegram/ui/bots/BotDownloads;->getCurrent()Lorg/telegram/ui/bots/BotDownloads$FileDownload;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 1760
    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->downloadBulletin:Lorg/telegram/ui/Components/Bulletin;

    if-eqz v1, :cond_8

    .line 1761
    invoke-virtual {v1}, Lorg/telegram/ui/Components/Bulletin;->hide()V

    .line 1762
    iput-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->downloadBulletin:Lorg/telegram/ui/Components/Bulletin;

    goto :goto_0

    .line 1764
    :cond_0
    invoke-virtual {v1}, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->isDownloading()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, v1, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->shown:Z

    if-eqz v4, :cond_2

    :cond_1
    iget-boolean v4, v1, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->resaved:Z

    if-eqz v4, :cond_7

    .line 1765
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->lastBulletinFile:Lorg/telegram/ui/bots/BotDownloads$FileDownload;

    if-eq v4, v1, :cond_3

    iget-object v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->downloadBulletin:Lorg/telegram/ui/Components/Bulletin;

    if-eqz v4, :cond_3

    .line 1766
    invoke-virtual {v4}, Lorg/telegram/ui/Components/Bulletin;->hide()V

    .line 1767
    iput-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->downloadBulletin:Lorg/telegram/ui/Components/Bulletin;

    .line 1769
    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->downloadBulletin:Lorg/telegram/ui/Components/Bulletin;

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Bulletin;->isShowing()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1770
    :cond_4
    iput-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->lastBulletinFile:Lorg/telegram/ui/bots/BotDownloads$FileDownload;

    .line 1771
    iget-object v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->bulletinContainer:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v6, v7, v8}, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v6, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->downloadBulletinLayout:Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin;

    const/16 v7, 0x1388

    invoke-static {v4, v6, v7}, Lorg/telegram/ui/Components/Bulletin;->make(Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->downloadBulletin:Lorg/telegram/ui/Components/Bulletin;

    .line 1772
    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    .line 1774
    :cond_5
    iget-object v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->downloadBulletinLayout:Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin;

    invoke-virtual {v4, v1}, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin;->set(Lorg/telegram/ui/bots/BotDownloads$FileDownload;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1775
    iput-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->downloadBulletin:Lorg/telegram/ui/Components/Bulletin;

    .line 1777
    :cond_6
    iput-boolean v3, v1, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->resaved:Z

    .line 1778
    iput-boolean v5, v1, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->shown:Z

    goto :goto_0

    .line 1779
    :cond_7
    iget-object v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->downloadBulletinLayout:Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin;

    if-eqz v4, :cond_8

    .line 1780
    iput-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->lastBulletinFile:Lorg/telegram/ui/bots/BotDownloads$FileDownload;

    .line 1781
    invoke-virtual {v4, v1}, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin;->set(Lorg/telegram/ui/bots/BotDownloads$FileDownload;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1782
    iput-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->downloadBulletin:Lorg/telegram/ui/Components/Bulletin;

    .line 1785
    :cond_8
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->updateDownloadBulletinArrow()V

    .line 1787
    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fileItems:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1788
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 1789
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/bots/BotDownloads$FileDownload;

    .line 1791
    iget-object v5, v2, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->file_name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    .line 1792
    invoke-virtual {v2}, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->isDownloading()Z

    move-result v5

    if-nez v5, :cond_9

    .line 1793
    iget-wide v5, v2, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->size:J

    invoke-static {v5, v6}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSubtext(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1795
    :cond_9
    invoke-virtual {v2}, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->getProgress()Landroid/util/Pair;

    move-result-object v5

    .line 1796
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_a

    .line 1797
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSubtext(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1799
    :cond_a
    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSubtext(Ljava/lang/CharSequence;)V

    .line 1803
    :goto_2
    invoke-virtual {v2}, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->isDownloading()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1804
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_close:I

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setRightIcon(I)V

    .line 1805
    iget-object v5, v4, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->subtextView:Landroid/widget/TextView;

    const/high16 v6, 0x42000000    # 32.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v5, v3, v3, v6, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_3

    .line 1806
    :cond_b
    iget-boolean v5, v2, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->cancelled:Z

    if-eqz v5, :cond_c

    const/16 v5, 0x8

    .line 1807
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 1809
    :cond_c
    invoke-virtual {v4, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setRightIcon(I)V

    .line 1810
    iget-object v5, v4, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->subtextView:Landroid/widget/TextView;

    invoke-virtual {v5, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1813
    :goto_3
    new-instance v5, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda11;

    invoke-direct {v5, p0, v2}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;Lorg/telegram/ui/bots/BotDownloads$FileDownload;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 1826
    :cond_d
    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->optionsIcon:Lorg/telegram/messenger/BotFullscreenButtons$OptionsIcon;

    invoke-virtual {v0}, Lorg/telegram/ui/bots/BotDownloads;->isDownloading()Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/BotFullscreenButtons$OptionsIcon;->setDownloading(Z)V

    .line 1827
    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenButtons:Lorg/telegram/messenger/BotFullscreenButtons;

    invoke-virtual {v0}, Lorg/telegram/ui/bots/BotDownloads;->isDownloading()Z

    move-result v0

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/BotFullscreenButtons;->setDownloading(Z)V

    return-void
.end method

.method private updateDownloadBulletinArrow()V
    .locals 4

    .line 1744
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->downloadBulletinLayout:Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin;

    if-nez v0, :cond_0

    return-void

    .line 1745
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreen:Z

    const/high16 v2, 0x41c00000    # 24.0f

    if-eqz v1, :cond_1

    .line 1746
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v2, 0x41d00000    # 26.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenProgress:F

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin;->setArrow(I)V

    return-void

    .line 1747
    :cond_1
    iget v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBarTransitionProgress:F

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    .line 1748
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin;->setArrow(I)V

    return-void

    :cond_2
    const/4 v1, -0x1

    .line 1750
    invoke-virtual {v0, v1}, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin;->setArrow(I)V

    return-void
.end method

.method private updateLightStatusBar()V
    .locals 6

    .line 1073
    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->overrideActionBarColor:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1074
    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBarIsLight:Z

    xor-int/2addr v0, v1

    goto :goto_1

    .line 1076
    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I[ZZ)I

    move-result v0

    .line 1077
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v2

    const-wide v4, 0x3fe7126ea0000000L    # 0.7210000157356262

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBarTransitionProgress:F

    const v2, 0x3f59999a    # 0.85f

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 1079
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->wasLightStatusBar:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v0, :cond_2

    return-void

    .line 1082
    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->wasLightStatusBar:Ljava/lang/Boolean;

    .line 1085
    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    if-eqz v0, :cond_3

    or-int/lit16 v0, v1, 0x2000

    goto :goto_2

    :cond_3
    and-int/lit16 v0, v1, -0x2001

    .line 1091
    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method private updateWebViewBackgroundColor()V
    .locals 2

    .line 2195
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2198
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 2202
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method public checkNavBarColor()V
    .locals 2

    .line 2419
    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->superDismissed:Z

    if-nez v0, :cond_0

    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2420
    invoke-virtual {v0, v1, v1, v1}, Lorg/telegram/ui/LaunchActivity;->checkSystemBarColors(ZZZ)V

    .line 2423
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    if-eqz v0, :cond_1

    .line 2424
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public createErrorContainer()Lorg/telegram/ui/ArticleViewer$ErrorContainer;
    .locals 4

    .line 2670
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->errorContainer:Lorg/telegram/ui/ArticleViewer$ErrorContainer;

    if-nez v0, :cond_0

    .line 2671
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    new-instance v1, Lorg/telegram/ui/ArticleViewer$ErrorContainer;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/ArticleViewer$ErrorContainer;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->errorContainer:Lorg/telegram/ui/ArticleViewer$ErrorContainer;

    const/4 v2, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2672
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->errorContainer:Lorg/telegram/ui/ArticleViewer$ErrorContainer;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 2673
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->errorContainer:Lorg/telegram/ui/ArticleViewer$ErrorContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$ErrorContainer;->getButtonView()Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda42;

    invoke-direct {v1, p0}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda42;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2679
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->errorContainer:Lorg/telegram/ui/ArticleViewer$ErrorContainer;

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2680
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->errorContainer:Lorg/telegram/ui/ArticleViewer$ErrorContainer;

    iget-boolean v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->errorShown:Z

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 2682
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->errorContainer:Lorg/telegram/ui/ArticleViewer$ErrorContainer;

    return-object v0
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 2

    .line 2128
    sget p2, Lorg/telegram/messenger/NotificationCenter;->webViewResultSent:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    .line 2129
    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 2131
    iget-wide v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->queryId:J

    cmp-long p1, v0, p1

    if-nez p1, :cond_2

    .line 2132
    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->dismiss()V

    return-void

    .line 2134
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didSetNewTheme:I

    if-ne p1, p2, :cond_1

    .line 2135
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 2136
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-direct {p0, p2}, Lorg/telegram/ui/bots/BotWebViewSheet;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->updateFlickerBackgroundColor(I)V

    .line 2137
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->updateActionBarColors()V

    .line 2138
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->updateLightStatusBar()V

    return-void

    .line 2139
    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->botDownloadsUpdate:I

    if-ne p1, p2, :cond_2

    .line 2140
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->updateDownloadBulletin()V

    :cond_2
    return-void
.end method

.method public dismiss()V
    .locals 1

    const/4 v0, 0x0

    .line 2008
    invoke-virtual {p0, v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->dismiss(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dismiss(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 2036
    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->dismiss(ZLjava/lang/Runnable;)V

    return-void
.end method

.method public dismiss(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1981
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->dismiss(ZLjava/lang/Runnable;)V

    return-void
.end method

.method public dismiss(ZLjava/lang/Runnable;)V
    .locals 5

    .line 2041
    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->dismissed:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 2044
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->onVerifiedAge:Lorg/telegram/messenger/Utilities$Callback4;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move p1, v1

    :cond_1
    const/4 v0, 0x1

    .line 2048
    iput-boolean v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->dismissed:Z

    .line 2049
    invoke-virtual {p0, v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->setOpen(Z)V

    .line 2050
    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->pollRunnable:Ljava/lang/Runnable;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 2052
    iget v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->webViewResultSent:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2053
    iget v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->botDownloadsUpdate:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2054
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->didSetNewTheme:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    if-eqz p1, :cond_3

    .line 2056
    sget-object v2, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/telegram/ui/LaunchActivity;->getBottomSheetTabsOverlay()Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;

    move-result-object v2

    if-nez v2, :cond_3

    :cond_2
    move p1, v1

    :cond_3
    const/4 v2, 0x0

    if-eqz p1, :cond_5

    .line 2060
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz p1, :cond_4

    .line 2061
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 2062
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 2064
    :cond_4
    sget-object p1, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/LaunchActivity;->getBottomSheetTabsOverlay()Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->dismissSheet(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;)Z

    goto :goto_1

    .line 2066
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botButtons:Lorg/telegram/ui/bots/BotButtons;

    if-eqz p1, :cond_6

    .line 2067
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botButtons:Lorg/telegram/ui/bots/BotButtons;

    invoke-virtual {v3}, Lorg/telegram/ui/bots/BotButtons;->getTotalHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v2, 0xa0

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2069
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/web/BotWebViewContainer;->destroyWebView()V

    .line 2070
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botButtons:Lorg/telegram/ui/bots/BotButtons;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lorg/telegram/ui/bots/BotButtons;->getTotalHeight()I

    move-result v3

    goto :goto_0

    :cond_7
    move v3, v1

    :goto_0
    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->insets:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v4

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->measureKeyboardHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->isFullSize()Z

    move-result v3

    if-eqz v3, :cond_8

    const/high16 v1, 0x43480000    # 200.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    :cond_8
    add-int/2addr v2, v1

    int-to-float v1, v2

    new-instance v2, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0, p2}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v1, v0, v2}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->stickTo(FZLjava/lang/Runnable;)V

    .line 2080
    :goto_1
    sget-object p1, Lorg/telegram/ui/bots/BotWebViewSheet;->activeSheets:Ljava/util/HashSet;

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2083
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->bottomTabs:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    if-eqz p1, :cond_9

    .line 2084
    iget-object p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->invalidateRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->relayoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->stopListening(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    :cond_9
    :goto_2
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 342
    invoke-virtual {p0}, Landroid/app/Dialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 343
    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    :cond_0
    if-nez v0, :cond_1

    .line 344
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getBotId()J
    .locals 2

    .line 1985
    iget-wide v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botId:J

    return-wide v0
.end method

.method public getNavigationBarColor(I)I
    .locals 2

    .line 2430
    iget v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->navBarColor:I

    iget v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->openedProgress:F

    invoke-static {p1, v0, v1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getWindowView()Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$SheetView;
    .locals 1

    .line 117
    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->getWindowView()Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    move-result-object v0

    return-object v0
.end method

.method public getWindowView()Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;
    .locals 1

    .line 2434
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    return-object v0
.end method

.method public hadDialog()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isFullSize()Z
    .locals 1

    .line 1328
    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreen:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullsize:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->defaultFullsize:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public lockOrientation(Z)V
    .locals 1

    .line 2705
    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->orientationLocked:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2706
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->orientationLocked:Z

    .line 2707
    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->attached:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 2709
    sget p1, Lorg/telegram/ui/bots/BotWebViewSheet;->shownLockedBots:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lorg/telegram/ui/bots/BotWebViewSheet;->shownLockedBots:I

    goto :goto_0

    .line 2711
    :cond_1
    sget p1, Lorg/telegram/ui/bots/BotWebViewSheet;->shownLockedBots:I

    add-int/lit8 p1, p1, -0x1

    sput p1, Lorg/telegram/ui/bots/BotWebViewSheet;->shownLockedBots:I

    .line 2714
    :cond_2
    :goto_0
    sget p1, Lorg/telegram/ui/bots/BotWebViewSheet;->shownLockedBots:I

    if-lez p1, :cond_3

    .line 2715
    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->lockOrientation(Landroid/app/Activity;)V

    return-void

    .line 2717
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->unlockOrientation(Landroid/app/Activity;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    .line 1239
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 1241
    invoke-virtual {p0, v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->setAttached(Z)V

    .line 1243
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_0

    .line 1244
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v1, Lorg/telegram/ui/bots/BotWebViewSheet;->ACTION_BAR_TRANSITION_PROGRESS_VALUE:Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;

    invoke-direct {v0, p0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 v2, 0x44960000    # 1200.0f

    .line 1246
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1247
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    .line 1245
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1990
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1991
    invoke-virtual {p0}, Landroid/app/Dialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1992
    invoke-virtual {p0}, Landroid/app/Dialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    .line 1996
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2000
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->dismiss(ZLjava/lang/Runnable;)V

    return-void
.end method

.method public onCheckDismissByUser()Z
    .locals 4

    .line 2012
    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->needCloseConfirmation:Z

    if-eqz v0, :cond_1

    .line 2014
    iget v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2016
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v2, v0}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 2019
    :goto_0
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2020
    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$string;->BotWebViewChangesMayNotBeSaved:I

    .line 2021
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$string;->BotWebViewCloseAnyway:I

    .line 2022
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda46;

    invoke-direct {v3, p0}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda46;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$string;->Cancel:I

    .line 2023
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    .line 2024
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    .line 2025
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    const/4 v1, -0x1

    .line 2026
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2027
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x0

    return v0

    .line 2030
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->dismiss()V

    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 1097
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 1099
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 1100
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    const v1, -0x7fffff00

    .line 1101
    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    :cond_0
    const v1, -0x7ffeff00

    .line 1103
    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1105
    :goto_0
    sget v1, Lorg/telegram/messenger/R$style;->DialogNoAnimation:I

    invoke-virtual {p1, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 1107
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    .line 1108
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v3, 0x33

    .line 1109
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v3, 0x0

    .line 1110
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 1111
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v4, v3, -0x3

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v5, 0x10

    .line 1112
    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1113
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v2, 0x1c

    const/4 v5, 0x1

    if-lt v0, v2, :cond_1

    .line 1115
    invoke-static {v1, v5}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticApiModelOutline2;->m(Landroid/view/WindowManager$LayoutParams;I)V

    .line 1117
    :cond_1
    iget-boolean v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreen:Z

    if-eqz v2, :cond_2

    or-int/lit16 v2, v4, 0x200

    .line 1118
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1

    :cond_2
    and-int/lit16 v2, v3, -0x203

    .line 1120
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1122
    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v1, 0x0

    .line 1125
    invoke-virtual {p1, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 1128
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    invoke-virtual {p1, v5}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 1129
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    const/16 v2, 0x700

    invoke-virtual {p1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1131
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    new-instance v2, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 1160
    iget-boolean p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreen:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botButtons:Lorg/telegram/ui/bots/BotButtons;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/telegram/ui/bots/BotButtons;->getTotalHeight()I

    move-result p1

    if-gtz p1, :cond_4

    .line 1161
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    or-int/lit8 v2, v2, 0x2

    invoke-virtual {p1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_2

    .line 1163
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    and-int/lit8 v2, v2, -0x3

    invoke-virtual {p1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_2
    const/16 p1, 0x1a

    if-lt v0, p1, :cond_6

    .line 1167
    iget p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->navBarColor:I

    invoke-static {p1}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v2

    const-wide v6, 0x3fe7126ea0000000L    # 0.7210000157356262

    cmpl-double p1, v2, v6

    if-ltz p1, :cond_5

    goto :goto_3

    :cond_5
    move v5, v1

    :goto_3
    invoke-static {p0, v5}, Lorg/telegram/messenger/AndroidUtilities;->setLightNavigationBar(Landroid/app/Dialog;Z)V

    .line 1170
    :cond_6
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->didSetNewTheme:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1171
    iget p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->botDownloadsUpdate:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1254
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 1256
    invoke-virtual {p0, v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->setAttached(Z)V

    .line 1258
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_0

    .line 1259
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    const/4 v0, 0x0

    .line 1260
    iput-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 1030
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 1032
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1033
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_0

    instance-of v1, v0, Lorg/telegram/ui/LaunchActivity;

    if-nez v1, :cond_0

    .line 1034
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 1036
    :cond_0
    instance-of v1, v0, Lorg/telegram/ui/LaunchActivity;

    if-eqz v1, :cond_1

    .line 1037
    check-cast v0, Lorg/telegram/ui/LaunchActivity;

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/LaunchActivity;->addOverlayPasscodeView(Lorg/telegram/ui/Components/PasscodeView;)V

    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 1043
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 1045
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1046
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_0

    instance-of v1, v0, Lorg/telegram/ui/LaunchActivity;

    if-nez v1, :cond_0

    .line 1047
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 1049
    :cond_0
    instance-of v1, v0, Lorg/telegram/ui/LaunchActivity;

    if-eqz v1, :cond_1

    .line 1050
    check-cast v0, Lorg/telegram/ui/LaunchActivity;

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/LaunchActivity;->removeOverlayPasscodeView(Lorg/telegram/ui/Components/PasscodeView;)V

    :cond_1
    return-void
.end method

.method public release()V
    .locals 1

    .line 2093
    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->superDismissed:Z

    if-eqz v0, :cond_0

    return-void

    .line 2095
    :cond_0
    :try_start_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2097
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    .line 2099
    invoke-virtual {p0, v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->setOpen(Z)V

    return-void
.end method

.method public requestWebView(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/bots/WebViewRequestProps;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1352
    iput-object v2, v0, Lorg/telegram/ui/bots/BotWebViewSheet;->requestProps:Lorg/telegram/ui/bots/WebViewRequestProps;

    .line 1353
    iget v3, v2, Lorg/telegram/ui/bots/WebViewRequestProps;->currentAccount:I

    iput v3, v0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    .line 1354
    iget-wide v4, v2, Lorg/telegram/ui/bots/WebViewRequestProps;->peerId:J

    iput-wide v4, v0, Lorg/telegram/ui/bots/BotWebViewSheet;->peerId:J

    .line 1355
    iget-wide v4, v2, Lorg/telegram/ui/bots/WebViewRequestProps;->botId:J

    iput-wide v4, v0, Lorg/telegram/ui/bots/BotWebViewSheet;->botId:J

    .line 1356
    iget v4, v2, Lorg/telegram/ui/bots/WebViewRequestProps;->replyToMsgId:I

    iput v4, v0, Lorg/telegram/ui/bots/BotWebViewSheet;->replyToMsgId:I

    .line 1357
    iget-wide v4, v2, Lorg/telegram/ui/bots/WebViewRequestProps;->monoforumTopicId:J

    iput-wide v4, v0, Lorg/telegram/ui/bots/BotWebViewSheet;->monoforumTopicId:J

    .line 1358
    iget-boolean v4, v2, Lorg/telegram/ui/bots/WebViewRequestProps;->silent:Z

    iput-boolean v4, v0, Lorg/telegram/ui/bots/BotWebViewSheet;->silent:Z

    .line 1359
    iget-object v4, v2, Lorg/telegram/ui/bots/WebViewRequestProps;->buttonText:Ljava/lang/String;

    iput-object v4, v0, Lorg/telegram/ui/bots/BotWebViewSheet;->buttonText:Ljava/lang/String;

    .line 1360
    iget-object v4, v2, Lorg/telegram/ui/bots/WebViewRequestProps;->app:Lorg/telegram/tgnet/TLRPC$BotApp;

    iput-object v4, v0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentWebApp:Lorg/telegram/tgnet/TLRPC$BotApp;

    .line 1362
    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v4, v0, Lorg/telegram/ui/bots/BotWebViewSheet;->botId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 1363
    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 1365
    :try_start_0
    new-instance v6, Landroid/text/TextPaint;

    invoke-direct {v6}, Landroid/text/TextPaint;-><init>()V

    const/high16 v7, 0x41a00000    # 20.0f

    .line 1366
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1367
    invoke-virtual {v6}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v6

    invoke-static {v4, v6, v5}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1369
    :catch_0
    iget-object v6, v0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v6, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1370
    iget v4, v0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v6, v0, Lorg/telegram/ui/bots/BotWebViewSheet;->botId:J

    invoke-virtual {v4, v6, v7}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v4

    if-eqz v3, :cond_0

    .line 1371
    iget-boolean v6, v3, Lorg/telegram/tgnet/TLRPC$User;->verified:Z

    if-nez v6, :cond_1

    :cond_0
    if-eqz v4, :cond_2

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$UserFull;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v6, :cond_2

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$User;->verified:Z

    if-eqz v6, :cond_2

    .line 1372
    :cond_1
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/R$drawable;->verified_profile:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v0, Lorg/telegram/ui/bots/BotWebViewSheet;->verifiedDrawable:Landroid/graphics/drawable/Drawable;

    .line 1373
    new-instance v7, Landroid/graphics/PorterDuffColorFilter;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    iget-object v9, v0, Lorg/telegram/ui/bots/BotWebViewSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v8, v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8, v9}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1374
    iget-object v6, v0, Lorg/telegram/ui/bots/BotWebViewSheet;->verifiedDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v7, 0xff

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1375
    iget-object v6, v0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v6

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setDrawablePadding(I)V

    .line 1376
    iget-object v6, v0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v6

    new-instance v7, Lorg/telegram/ui/bots/BotWebViewSheet$9;

    invoke-direct {v7, v0}, Lorg/telegram/ui/bots/BotWebViewSheet$9;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    invoke-virtual {v6, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 1409
    :cond_2
    iget-object v6, v0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenButtons:Lorg/telegram/messenger/BotFullscreenButtons;

    const/4 v7, 0x1

    if-eqz v6, :cond_4

    .line 1410
    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v8

    if-eqz v3, :cond_3

    iget-boolean v9, v3, Lorg/telegram/tgnet/TLRPC$User;->verified:Z

    if-eqz v9, :cond_3

    move v9, v7

    goto :goto_0

    :cond_3
    move v9, v5

    :goto_0
    invoke-virtual {v6, v8, v9}, Lorg/telegram/messenger/BotFullscreenButtons;->setName(Ljava/lang/String;Z)V

    .line 1412
    :cond_4
    iget-object v6, v0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v6

    .line 1413
    invoke-virtual {v6}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1416
    iget v8, v0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/MediaDataController;->getAttachMenuBots()Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots;

    move-result-object v8

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots;->bots:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v10, v5

    :cond_5
    if-ge v10, v9, :cond_6

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v10, v10, 0x1

    check-cast v12, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    .line 1417
    iget-wide v13, v12, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->bot_id:J

    move-object/from16 v16, v12

    iget-wide v11, v0, Lorg/telegram/ui/bots/BotWebViewSheet;->botId:J

    cmp-long v11, v13, v11

    if-nez v11, :cond_5

    move-object/from16 v12, v16

    goto :goto_1

    :cond_6
    const/4 v12, 0x0

    .line 1422
    :goto_1
    iget-boolean v8, v0, Lorg/telegram/ui/bots/BotWebViewSheet;->fromTab:Z

    if-nez v8, :cond_9

    if-eqz v4, :cond_7

    .line 1424
    iget-object v3, v4, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_info:Lorg/telegram/tgnet/tl/TL_bots$BotInfo;

    if-eqz v3, :cond_8

    iget-object v3, v3, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->app_settings:Lorg/telegram/tgnet/tl/TL_bots$botAppSettings;

    if-eqz v3, :cond_8

    .line 1425
    invoke-direct {v0, v3, v5}, Lorg/telegram/ui/bots/BotWebViewSheet;->applyAppBotSettings(Lorg/telegram/tgnet/tl/TL_bots$botAppSettings;Z)V

    goto :goto_2

    .line 1428
    :cond_7
    iget v4, v0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    new-instance v8, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda3;

    invoke-direct {v8, v0}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    invoke-virtual {v4, v3, v5, v7, v8}, Lorg/telegram/messenger/MessagesController;->loadFullUser(Lorg/telegram/tgnet/TLRPC$User;IZLorg/telegram/messenger/Utilities$Callback;)V

    .line 1436
    :cond_8
    :goto_2
    iget-boolean v3, v2, Lorg/telegram/ui/bots/WebViewRequestProps;->fullscreen:Z

    if-eqz v3, :cond_9

    .line 1437
    invoke-virtual {v0, v7, v5}, Lorg/telegram/ui/bots/BotWebViewSheet;->setFullscreen(ZZ)V

    .line 1441
    :cond_9
    iget-object v3, v0, Lorg/telegram/ui/bots/BotWebViewSheet;->onVerifiedAge:Lorg/telegram/messenger/Utilities$Callback4;

    if-nez v3, :cond_a

    .line 1442
    sget v3, Lorg/telegram/messenger/R$id;->menu_collapse_bot:I

    sget v4, Lorg/telegram/messenger/R$drawable;->arrow_more:I

    invoke-virtual {v6, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 1444
    :cond_a
    new-instance v3, Lorg/telegram/messenger/BotFullscreenButtons$OptionsIcon;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/telegram/messenger/BotFullscreenButtons$OptionsIcon;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/bots/BotWebViewSheet;->optionsIcon:Lorg/telegram/messenger/BotFullscreenButtons$OptionsIcon;

    invoke-virtual {v6, v5, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(ILandroid/graphics/drawable/Drawable;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/bots/BotWebViewSheet;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 1445
    new-instance v4, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda4;

    invoke-direct {v4, v0}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1448
    iget-object v3, v0, Lorg/telegram/ui/bots/BotWebViewSheet;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v4, Lorg/telegram/messenger/R$id;->menu_pin:I

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_pin:I

    sget v8, Lorg/telegram/messenger/R$string;->PinMessage:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v4, v6, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/bots/BotWebViewSheet;->pinItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 1450
    iget-object v3, v0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v4, Lorg/telegram/ui/bots/BotWebViewSheet$10;

    invoke-direct {v4, v0}, Lorg/telegram/ui/bots/BotWebViewSheet$10;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 1464
    iget-object v3, v0, Lorg/telegram/ui/bots/BotWebViewSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3}, Lorg/telegram/ui/bots/BotWebViewSheet;->makeThemeParams(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1466
    iget-object v4, v0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    iget v6, v0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-wide v8, v0, Lorg/telegram/ui/bots/BotWebViewSheet;->botId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/ui/web/BotWebViewContainer;->setBotUser(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 1467
    iget-object v4, v0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    iget v6, v0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    iget-wide v8, v0, Lorg/telegram/ui/bots/BotWebViewSheet;->botId:J

    const/4 v15, 0x0

    invoke-virtual {v4, v6, v8, v9, v15}, Lorg/telegram/ui/web/BotWebViewContainer;->loadFlickerAndSettingsItem(IJLorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)V

    .line 1468
    iget-object v4, v2, Lorg/telegram/ui/bots/WebViewRequestProps;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-direct {v0, v4, v12}, Lorg/telegram/ui/bots/BotWebViewSheet;->preloadShortcutBotIcon(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;)V

    .line 1469
    iget-object v4, v2, Lorg/telegram/ui/bots/WebViewRequestProps;->response:Lorg/telegram/tgnet/TLObject;

    if-eqz v4, :cond_b

    .line 1470
    invoke-direct {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->loadFromResponse()V

    goto/16 :goto_7

    .line 1472
    :cond_b
    iget v4, v2, Lorg/telegram/ui/bots/WebViewRequestProps;->type:I

    const/4 v6, 0x4

    const-string v8, "android"

    const/4 v9, 0x2

    if-eqz v4, :cond_1e

    if-eq v4, v7, :cond_18

    if-eq v4, v9, :cond_16

    const/4 v5, 0x3

    const/16 v10, 0x42

    if-eq v4, v5, :cond_11

    if-eq v4, v6, :cond_c

    goto/16 :goto_7

    .line 1612
    :cond_c
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messages_requestMainWebView;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messages_requestMainWebView;-><init>()V

    .line 1614
    iget v5, v0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-wide v11, v2, Lorg/telegram/ui/bots/WebViewRequestProps;->botId:J

    invoke-virtual {v5, v11, v12}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_requestMainWebView;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 1615
    iput-object v8, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_requestMainWebView;->platform:Ljava/lang/String;

    .line 1616
    instance-of v5, v1, Lorg/telegram/ui/ChatActivity;

    if-eqz v5, :cond_e

    check-cast v1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    if-eqz v5, :cond_d

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    goto :goto_3

    :cond_d
    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    goto :goto_3

    .line 1617
    :cond_e
    iget-object v1, v2, Lorg/telegram/ui/bots/WebViewRequestProps;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    :goto_3
    iput-object v1, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_requestMainWebView;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1618
    iget-boolean v1, v2, Lorg/telegram/ui/bots/WebViewRequestProps;->compact:Z

    iput-boolean v1, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_requestMainWebView;->compact:Z

    .line 1619
    iget-boolean v1, v2, Lorg/telegram/ui/bots/WebViewRequestProps;->fullscreen:Z

    iput-boolean v1, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_requestMainWebView;->fullscreen:Z

    .line 1621
    iget-object v1, v2, Lorg/telegram/ui/bots/WebViewRequestProps;->startParam:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 1622
    iget-object v1, v2, Lorg/telegram/ui/bots/WebViewRequestProps;->startParam:Ljava/lang/String;

    iput-object v1, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_requestMainWebView;->start_param:Ljava/lang/String;

    .line 1623
    iget v1, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_requestMainWebView;->flags:I

    or-int/2addr v1, v9

    iput v1, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_requestMainWebView;->flags:I

    :cond_f
    if-eqz v3, :cond_10

    .line 1627
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;-><init>()V

    iput-object v1, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_requestMainWebView;->theme_params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    .line 1628
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    .line 1629
    iget v1, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_requestMainWebView;->flags:I

    or-int/2addr v1, v7

    iput v1, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_requestMainWebView;->flags:I

    .line 1632
    :cond_10
    iget v1, v0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda9;

    invoke-direct {v2, v0}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    invoke-virtual {v1, v4, v2, v10}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto/16 :goto_7

    .line 1577
    :cond_11
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messages_requestAppWebView;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messages_requestAppWebView;-><init>()V

    .line 1578
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_inputBotAppID;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_inputBotAppID;-><init>()V

    .line 1579
    iget-object v7, v2, Lorg/telegram/ui/bots/WebViewRequestProps;->app:Lorg/telegram/tgnet/TLRPC$BotApp;

    iget-wide v11, v7, Lorg/telegram/tgnet/TLRPC$BotApp;->id:J

    iput-wide v11, v5, Lorg/telegram/tgnet/TLRPC$TL_inputBotAppID;->id:J

    .line 1580
    iget-wide v11, v7, Lorg/telegram/tgnet/TLRPC$BotApp;->access_hash:J

    iput-wide v11, v5, Lorg/telegram/tgnet/TLRPC$TL_inputBotAppID;->access_hash:J

    .line 1582
    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_requestAppWebView;->app:Lorg/telegram/tgnet/TLRPC$InputBotApp;

    .line 1583
    iget-boolean v5, v2, Lorg/telegram/ui/bots/WebViewRequestProps;->allowWrite:Z

    iput-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_requestAppWebView;->write_allowed:Z

    .line 1584
    iput-object v8, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_requestAppWebView;->platform:Ljava/lang/String;

    .line 1585
    instance-of v5, v1, Lorg/telegram/ui/ChatActivity;

    if-eqz v5, :cond_13

    check-cast v1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    if-eqz v5, :cond_12

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    goto :goto_4

    :cond_12
    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    goto :goto_4

    .line 1586
    :cond_13
    iget-object v1, v2, Lorg/telegram/ui/bots/WebViewRequestProps;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    :goto_4
    iput-object v1, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_requestAppWebView;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1587
    iget-boolean v1, v2, Lorg/telegram/ui/bots/WebViewRequestProps;->compact:Z

    iput-boolean v1, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_requestAppWebView;->compact:Z

    .line 1588
    iget-boolean v1, v2, Lorg/telegram/ui/bots/WebViewRequestProps;->fullscreen:Z

    iput-boolean v1, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_requestAppWebView;->fullscreen:Z

    .line 1590
    iget-object v1, v2, Lorg/telegram/ui/bots/WebViewRequestProps;->startParam:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 1591
    iget-object v1, v2, Lorg/telegram/ui/bots/WebViewRequestProps;->startParam:Ljava/lang/String;

    iput-object v1, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_requestAppWebView;->start_param:Ljava/lang/String;

    .line 1592
    iget v1, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_requestAppWebView;->flags:I

    or-int/2addr v1, v9

    iput v1, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_requestAppWebView;->flags:I

    :cond_14
    if-eqz v3, :cond_15

    .line 1596
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;-><init>()V

    iput-object v1, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_requestAppWebView;->theme_params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    .line 1597
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    .line 1598
    iget v1, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_requestAppWebView;->flags:I

    or-int/2addr v1, v6

    iput v1, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_requestAppWebView;->flags:I

    .line 1601
    :cond_15
    iget v1, v0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda8;

    invoke-direct {v2, v0}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    invoke-virtual {v1, v4, v2, v10}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto/16 :goto_7

    .line 1474
    :cond_16
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;-><init>()V

    .line 1475
    iget v4, v0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v10, v0, Lorg/telegram/ui/bots/BotWebViewSheet;->botId:J

    invoke-virtual {v4, v10, v11}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v4

    iput-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 1476
    iget v4, v0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v10, v0, Lorg/telegram/ui/bots/BotWebViewSheet;->botId:J

    invoke-virtual {v4, v10, v11}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v4

    iput-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1477
    iput-object v8, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->platform:Ljava/lang/String;

    .line 1478
    iget-boolean v4, v2, Lorg/telegram/ui/bots/WebViewRequestProps;->compact:Z

    iput-boolean v4, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->compact:Z

    .line 1479
    iget-boolean v4, v2, Lorg/telegram/ui/bots/WebViewRequestProps;->fullscreen:Z

    iput-boolean v4, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->fullscreen:Z

    .line 1481
    iget-object v2, v2, Lorg/telegram/ui/bots/WebViewRequestProps;->buttonUrl:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->url:Ljava/lang/String;

    .line 1482
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    or-int/2addr v2, v9

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    if-eqz v3, :cond_17

    .line 1485
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->theme_params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    .line 1486
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    .line 1487
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    or-int/2addr v2, v6

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    .line 1490
    :cond_17
    iget v2, v0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda5;

    invoke-direct {v3, v0}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    invoke-virtual {v2, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 1498
    iget v1, v0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->webViewResultSent:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    goto/16 :goto_7

    .line 1503
    :cond_18
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestSimpleWebView;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_requestSimpleWebView;-><init>()V

    .line 1504
    iget v4, v2, Lorg/telegram/ui/bots/WebViewRequestProps;->flags:I

    and-int/2addr v4, v7

    if-eqz v4, :cond_19

    move v4, v7

    goto :goto_5

    :cond_19
    move v4, v5

    :goto_5
    iput-boolean v4, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestSimpleWebView;->from_switch_webview:Z

    .line 1505
    iget v4, v0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v10, v0, Lorg/telegram/ui/bots/BotWebViewSheet;->botId:J

    invoke-virtual {v4, v10, v11}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v4

    iput-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestSimpleWebView;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 1506
    iput-object v8, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestSimpleWebView;->platform:Ljava/lang/String;

    .line 1507
    iget v4, v2, Lorg/telegram/ui/bots/WebViewRequestProps;->flags:I

    and-int/2addr v4, v9

    if-eqz v4, :cond_1a

    move v5, v7

    :cond_1a
    iput-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestSimpleWebView;->from_side_menu:Z

    .line 1508
    iget-boolean v4, v2, Lorg/telegram/ui/bots/WebViewRequestProps;->compact:Z

    iput-boolean v4, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestSimpleWebView;->compact:Z

    .line 1509
    iget-boolean v4, v2, Lorg/telegram/ui/bots/WebViewRequestProps;->fullscreen:Z

    iput-boolean v4, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestSimpleWebView;->fullscreen:Z

    if-eqz v3, :cond_1b

    .line 1511
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;-><init>()V

    iput-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestSimpleWebView;->theme_params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    .line 1512
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    .line 1513
    iget v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestSimpleWebView;->flags:I

    or-int/2addr v3, v7

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestSimpleWebView;->flags:I

    .line 1515
    :cond_1b
    iget-object v3, v2, Lorg/telegram/ui/bots/WebViewRequestProps;->buttonUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 1516
    iget v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestSimpleWebView;->flags:I

    or-int/lit8 v3, v3, 0x8

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestSimpleWebView;->flags:I

    .line 1517
    iget-object v3, v2, Lorg/telegram/ui/bots/WebViewRequestProps;->buttonUrl:Ljava/lang/String;

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestSimpleWebView;->url:Ljava/lang/String;

    .line 1519
    :cond_1c
    iget-object v3, v2, Lorg/telegram/ui/bots/WebViewRequestProps;->startParam:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 1520
    iget-object v2, v2, Lorg/telegram/ui/bots/WebViewRequestProps;->startParam:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestSimpleWebView;->start_param:Ljava/lang/String;

    .line 1521
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestSimpleWebView;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestSimpleWebView;->flags:I

    .line 1524
    :cond_1d
    iget v2, v0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda6;

    invoke-direct {v3, v0}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    invoke-virtual {v2, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_7

    .line 1535
    :cond_1e
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;-><init>()V

    .line 1536
    iget v4, v0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v10, v0, Lorg/telegram/ui/bots/BotWebViewSheet;->peerId:J

    invoke-virtual {v4, v10, v11}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v4

    iput-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1537
    iget v4, v0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v10, v0, Lorg/telegram/ui/bots/BotWebViewSheet;->botId:J

    invoke-virtual {v4, v10, v11}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v4

    iput-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 1538
    iput-object v8, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->platform:Ljava/lang/String;

    .line 1539
    iget-boolean v4, v2, Lorg/telegram/ui/bots/WebViewRequestProps;->compact:Z

    iput-boolean v4, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->compact:Z

    .line 1540
    iget-boolean v4, v2, Lorg/telegram/ui/bots/WebViewRequestProps;->fullscreen:Z

    iput-boolean v4, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->fullscreen:Z

    .line 1541
    iget-object v2, v2, Lorg/telegram/ui/bots/WebViewRequestProps;->buttonUrl:Ljava/lang/String;

    if-eqz v2, :cond_1f

    .line 1542
    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->url:Ljava/lang/String;

    .line 1543
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    or-int/2addr v2, v9

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    .line 1546
    :cond_1f
    iget v2, v0, Lorg/telegram/ui/bots/BotWebViewSheet;->replyToMsgId:I

    const-wide/16 v4, 0x0

    if-eqz v2, :cond_21

    .line 1547
    iget v2, v0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v2

    iget v8, v0, Lorg/telegram/ui/bots/BotWebViewSheet;->replyToMsgId:I

    invoke-virtual {v2, v8}, Lorg/telegram/messenger/SendMessagesHelper;->createReplyInput(I)Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    .line 1548
    iget-wide v8, v0, Lorg/telegram/ui/bots/BotWebViewSheet;->monoforumTopicId:J

    cmp-long v4, v8, v4

    if-eqz v4, :cond_20

    .line 1549
    iget v4, v0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v8, v0, Lorg/telegram/ui/bots/BotWebViewSheet;->monoforumTopicId:J

    invoke-virtual {v4, v8, v9}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v4

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$InputReplyTo;->monoforum_peer_id:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1550
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    iget v4, v2, Lorg/telegram/tgnet/TLRPC$InputReplyTo;->flags:I

    or-int/lit8 v4, v4, 0x20

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$InputReplyTo;->flags:I

    .line 1552
    :cond_20
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    or-int/2addr v2, v7

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    goto :goto_6

    .line 1553
    :cond_21
    iget-wide v8, v0, Lorg/telegram/ui/bots/BotWebViewSheet;->monoforumTopicId:J

    cmp-long v2, v8, v4

    if-eqz v2, :cond_22

    .line 1554
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputReplyToMonoForum;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputReplyToMonoForum;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    .line 1555
    iget v4, v0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v8, v0, Lorg/telegram/ui/bots/BotWebViewSheet;->monoforumTopicId:J

    invoke-virtual {v4, v8, v9}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v4

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$InputReplyTo;->monoforum_peer_id:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1556
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    or-int/2addr v2, v7

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    :cond_22
    :goto_6
    if-eqz v3, :cond_23

    .line 1560
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->theme_params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    .line 1561
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    .line 1562
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    or-int/2addr v2, v6

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    .line 1565
    :cond_23
    iget v2, v0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda7;

    invoke-direct {v3, v0}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    invoke-virtual {v2, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 1573
    iget v1, v0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->webViewResultSent:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    :goto_7
    return-void
.end method

.method public restoreState(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p2, :cond_f

    .line 353
    iget-object v1, p2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->props:Lorg/telegram/ui/bots/WebViewRequestProps;

    if-nez v1, :cond_0

    goto/16 :goto_7

    :cond_0
    const/4 v1, 0x1

    .line 354
    iput-boolean v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fromTab:Z

    .line 355
    iget-boolean v2, p2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->overrideBackgroundColor:Z

    iput-boolean v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->overrideBackgroundColor:Z

    if-eqz v2, :cond_1

    .line 356
    iget v2, p2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->backgroundColor:I

    invoke-virtual {p0, v2, v1, v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->setBackgroundColor(IZZ)V

    .line 358
    :cond_1
    iget-boolean v2, p2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->overrideActionBarColor:Z

    if-nez v2, :cond_3

    iget v2, p2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->actionBarColorKey:I

    if-gez v2, :cond_2

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    goto :goto_0

    :cond_3
    iget v2, p2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->actionBarColor:I

    :goto_0
    iget-boolean v3, p2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->overrideActionBarColor:Z

    invoke-virtual {p0, v2, v3, v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->setActionBarColor(IZZ)V

    .line 359
    iget v2, p2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->navigationBarColor:I

    invoke-virtual {p0, v2, v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->setNavigationBarColor(IZ)V

    .line 360
    iget-boolean v2, p2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->expanded:Z

    iput-boolean v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->showExpanded:Z

    .line 361
    iget v2, p2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->expandedOffset:F

    iput v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->showOffsetY:F

    .line 362
    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    iget-boolean v3, p2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->backButton:Z

    iput-boolean v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->backButtonShown:Z

    invoke-virtual {v2, v3}, Lorg/telegram/ui/web/BotWebViewContainer;->setIsBackButtonVisible(Z)V

    .line 363
    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    iget-boolean v3, p2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->allowSwipes:Z

    invoke-virtual {v2, v3}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setAllowSwipes(Z)V

    .line 364
    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->getBackButton()Landroid/widget/ImageView;

    move-result-object v2

    iget-boolean v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->backButtonShown:Z

    if-eqz v3, :cond_4

    sget v3, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    goto :goto_1

    :cond_4
    sget v3, Lorg/telegram/messenger/R$drawable;->ic_close_white:I

    :goto_1
    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->updateImageViewImageAnimated(Landroid/widget/ImageView;I)V

    .line 365
    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenButtons:Lorg/telegram/messenger/BotFullscreenButtons;

    if-eqz v2, :cond_5

    .line 366
    iget-boolean v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->backButtonShown:Z

    invoke-virtual {v2, v3, v0}, Lorg/telegram/messenger/BotFullscreenButtons;->setBack(ZZ)V

    .line 368
    :cond_5
    iget-boolean v2, p2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->confirmDismiss:Z

    iput-boolean v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->needCloseConfirmation:Z

    .line 369
    iget-boolean v2, p2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->fullsize:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullsize:Ljava/lang/Boolean;

    .line 370
    iget-boolean v2, p2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->needsContext:Z

    iput-boolean v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->needsContext:Z

    .line 371
    iget-object v2, p2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->sensors:Lorg/telegram/ui/bots/BotSensors;

    iput-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->sensors:Lorg/telegram/ui/bots/BotSensors;

    if-eqz v2, :cond_6

    .line 373
    invoke-virtual {v2}, Lorg/telegram/ui/bots/BotSensors;->resume()V

    .line 375
    :cond_6
    iget-object v2, p2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->buttons:Lorg/telegram/ui/bots/BotButtons$ButtonsState;

    if-eqz v2, :cond_7

    .line 377
    iget-object v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botButtons:Lorg/telegram/ui/bots/BotButtons;

    invoke-virtual {v3, v2, v0}, Lorg/telegram/ui/bots/BotButtons;->setState(Lorg/telegram/ui/bots/BotButtons$ButtonsState;Z)V

    .line 379
    :cond_7
    iget-boolean v2, p2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->fullscreen:Z

    iget-boolean v3, p2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->fullscreenBlur:Z

    invoke-virtual {p0, v2, v0, v3}, Lorg/telegram/ui/bots/BotWebViewSheet;->setFullscreen(ZZZ)V

    .line 380
    iget-object v2, p2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->props:Lorg/telegram/ui/bots/WebViewRequestProps;

    if-eqz v2, :cond_8

    iget v3, v2, Lorg/telegram/ui/bots/WebViewRequestProps;->currentAccount:I

    goto :goto_2

    :cond_8
    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    :goto_2
    iput v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    .line 381
    iget-object v3, p2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    if-eqz v3, :cond_b

    .line 383
    invoke-virtual {v3}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->onResume()V

    .line 384
    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    iget v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    iget-object v4, p2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iget-object v5, p2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->proxy:Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/ui/web/BotWebViewContainer;->replaceWebView(ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;Ljava/lang/Object;)V

    .line 385
    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    iget-boolean v3, p2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->ready:Z

    if-nez v3, :cond_a

    iget-object v3, p2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {v3}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->isPageLoaded()Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_3

    :cond_9
    move v3, v0

    goto :goto_4

    :cond_a
    :goto_3
    move v3, v1

    :goto_4
    iget-object v4, p2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->lastUrl:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/web/BotWebViewContainer;->setState(ZLjava/lang/String;)V

    .line 386
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v2

    iget-boolean v3, p2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->themeIsDark:Z

    if-eq v2, v3, :cond_c

    .line 387
    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {v2}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyThemeChanged()V

    goto :goto_5

    :cond_b
    const/4 v3, 0x0

    .line 408
    iput-object v3, v2, Lorg/telegram/ui/bots/WebViewRequestProps;->response:Lorg/telegram/tgnet/TLObject;

    const-wide/16 v3, 0x0

    .line 409
    iput-wide v3, v2, Lorg/telegram/ui/bots/WebViewRequestProps;->responseTime:J

    .line 411
    :cond_c
    :goto_5
    iget-object v2, p2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->props:Lorg/telegram/ui/bots/WebViewRequestProps;

    invoke-virtual {p0, p1, v2}, Lorg/telegram/ui/bots/BotWebViewSheet;->requestWebView(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/bots/WebViewRequestProps;)V

    .line 412
    iget-boolean p1, p2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->settings:Z

    iput-boolean p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->hasSettings:Z

    .line 414
    iget-boolean p1, p2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->error:Z

    if-eqz p1, :cond_e

    .line 415
    iput-boolean v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->errorShown:Z

    .line 416
    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->createErrorContainer()Lorg/telegram/ui/ArticleViewer$ErrorContainer;

    .line 417
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->errorContainer:Lorg/telegram/ui/ArticleViewer$ErrorContainer;

    iget v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->errorDescription:Ljava/lang/String;

    iput-object v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->errorCode:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lorg/telegram/ui/ArticleViewer$ErrorContainer;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->errorContainer:Lorg/telegram/ui/ArticleViewer$ErrorContainer;

    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v2

    const v3, 0x3f389375    # 0.721f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_d

    move v2, v1

    goto :goto_6

    :cond_d
    move v2, v0

    :goto_6
    invoke-virtual {p1, v2, v0}, Lorg/telegram/ui/ArticleViewer$ErrorContainer;->setDark(ZZ)V

    .line 419
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->errorContainer:Lorg/telegram/ui/ArticleViewer$ErrorContainer;

    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 420
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->errorContainer:Lorg/telegram/ui/ArticleViewer$ErrorContainer;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ArticleViewer$ErrorContainer;->setVisibility(I)V

    .line 421
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->errorContainer:Lorg/telegram/ui/ArticleViewer$ErrorContainer;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 423
    :cond_e
    iget-boolean p1, p2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->orientationLocked:Z

    invoke-virtual {p0, p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->lockOrientation(Z)V

    return v1

    :cond_f
    :goto_7
    return v0
.end method

.method public saveState()Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;
    .locals 6

    .line 298
    new-instance v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    invoke-direct {v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;-><init>()V

    .line 299
    iget v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBarColor:I

    iput v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->actionBarColor:I

    .line 300
    iget v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBarColorKey:I

    iput v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->actionBarColorKey:I

    .line 301
    iget-boolean v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->overrideActionBarColor:Z

    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->overrideActionBarColor:Z

    .line 302
    iget-boolean v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->overrideBackgroundColor:Z

    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->overrideBackgroundColor:Z

    .line 303
    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->backgroundColor:I

    .line 304
    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->requestProps:Lorg/telegram/ui/bots/WebViewRequestProps;

    iput-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->props:Lorg/telegram/ui/bots/WebViewRequestProps;

    .line 305
    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/telegram/ui/web/BotWebViewContainer;->isPageLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->ready:Z

    .line 306
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v1

    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->themeIsDark:Z

    .line 307
    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/telegram/ui/web/BotWebViewContainer;->getUrlLoaded()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v4

    :goto_1
    iput-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->lastUrl:Ljava/lang/String;

    .line 308
    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getSwipeOffsetY()F

    move-result v1

    const/4 v5, 0x0

    cmpg-float v1, v1, v5

    if-ltz v1, :cond_4

    :cond_2
    iget-boolean v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->forceExpnaded:Z

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->isFullSize()Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreen:Z

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3

    :cond_4
    :goto_2
    move v1, v3

    :goto_3
    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->expanded:Z

    .line 309
    iget-boolean v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreen:Z

    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->fullscreen:Z

    .line 310
    iget-boolean v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenBlur:Z

    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->fullscreenBlur:Z

    .line 311
    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullsize:Ljava/lang/Boolean;

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->defaultFullsize:Z

    goto :goto_4

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_4
    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->fullsize:Z

    .line 312
    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getOffsetY()F

    move-result v1

    goto :goto_5

    :cond_6
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    :goto_5
    iput v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->expandedOffset:F

    .line 313
    iget-boolean v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->needsContext:Z

    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->needsContext:Z

    .line 314
    iget-boolean v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->backButtonShown:Z

    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->backButton:Z

    .line 315
    iget-boolean v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->needCloseConfirmation:Z

    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->confirmDismiss:Z

    .line 316
    iget-boolean v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->hasSettings:Z

    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->settings:Z

    .line 317
    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->isAllowedSwipes()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    move v2, v3

    :cond_8
    iput-boolean v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->allowSwipes:Z

    .line 318
    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botButtons:Lorg/telegram/ui/bots/BotButtons;

    iget-object v1, v1, Lorg/telegram/ui/bots/BotButtons;->state:Lorg/telegram/ui/bots/BotButtons$ButtonsState;

    iput-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->buttons:Lorg/telegram/ui/bots/BotButtons$ButtonsState;

    .line 319
    iget v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->navBarColor:I

    iput v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->navigationBarColor:I

    .line 320
    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->sensors:Lorg/telegram/ui/bots/BotSensors;

    if-eqz v1, :cond_9

    .line 321
    invoke-virtual {v1}, Lorg/telegram/ui/bots/BotSensors;->pause()V

    .line 323
    :cond_9
    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->sensors:Lorg/telegram/ui/bots/BotSensors;

    iput-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->sensors:Lorg/telegram/ui/bots/BotSensors;

    .line 324
    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    if-nez v1, :cond_a

    move-object v1, v4

    goto :goto_6

    :cond_a
    invoke-virtual {v1}, Lorg/telegram/ui/web/BotWebViewContainer;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v1

    :goto_6
    if-eqz v1, :cond_c

    .line 326
    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {v2}, Lorg/telegram/ui/web/BotWebViewContainer;->preserveWebView()V

    .line 327
    iput-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    .line 328
    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    if-nez v2, :cond_b

    goto :goto_7

    :cond_b
    invoke-virtual {v2}, Lorg/telegram/ui/web/BotWebViewContainer;->getBotProxy()Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;

    move-result-object v4

    :goto_7
    iput-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->proxy:Ljava/lang/Object;

    .line 329
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->viewWidth:I

    .line 330
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->viewHeight:I

    .line 331
    invoke-virtual {v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->onPause()V

    .line 334
    :cond_c
    iget-boolean v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->errorShown:Z

    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->error:Z

    if-eqz v1, :cond_d

    .line 335
    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->errorCode:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->errorDescription:Ljava/lang/String;

    .line 337
    :cond_d
    iget-boolean v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->orientationLocked:Z

    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->orientationLocked:Z

    .line 338
    iput-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->lastTab:Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    return-object v0
.end method

.method public setActionBarColor(IZZ)V
    .locals 8

    .line 2358
    iget v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBarColor:I

    .line 2361
    invoke-static {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->navigationBarColor(I)I

    .line 2363
    new-instance v1, Lorg/telegram/ui/bots/BotWebViewMenuContainer$ActionBarColorsAnimating;

    invoke-direct {v1}, Lorg/telegram/ui/bots/BotWebViewMenuContainer$ActionBarColorsAnimating;-><init>()V

    .line 2364
    iget-boolean v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->overrideActionBarColor:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBarColor:I

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-virtual {v1, v2, v4}, Lorg/telegram/ui/bots/BotWebViewMenuContainer$ActionBarColorsAnimating;->setFrom(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2365
    iput-boolean p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->overrideActionBarColor:Z

    .line 2366
    invoke-static {p1}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v4

    const-wide v6, 0x3fe7126ea0000000L    # 0.7210000157356262

    cmpg-double p2, v4, v6

    if-gez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    move p2, v3

    :goto_1
    iput-boolean p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBarIsLight:Z

    .line 2367
    iget-boolean p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->overrideActionBarColor:Z

    if-eqz p2, :cond_2

    move v3, p1

    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-virtual {v1, v3, p2}, Lorg/telegram/ui/bots/BotWebViewMenuContainer$ActionBarColorsAnimating;->setTo(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    if-eqz p3, :cond_3

    const/4 p2, 0x2

    .line 2370
    new-array p2, p2, [F

    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    const-wide/16 v2, 0xc8

    invoke-virtual {p2, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 2371
    sget-object p3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2372
    new-instance p3, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda45;

    invoke-direct {p3, p0, v0, p1, v1}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda45;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;IILorg/telegram/ui/bots/BotWebViewMenuContainer$ActionBarColorsAnimating;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2385
    new-instance p3, Lorg/telegram/ui/bots/BotWebViewSheet$17;

    invoke-direct {p3, p0, v0, p1, v1}, Lorg/telegram/ui/bots/BotWebViewSheet$17;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;IILorg/telegram/ui/bots/BotWebViewMenuContainer$ActionBarColorsAnimating;)V

    invoke-virtual {p2, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2401
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    .line 2404
    :cond_3
    iput p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBarColor:I

    .line 2406
    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->checkNavBarColor()V

    .line 2407
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 2408
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBarColor:I

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 2410
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {v1, p1, p2}, Lorg/telegram/ui/bots/BotWebViewMenuContainer$ActionBarColorsAnimating;->updateActionBar(Lorg/telegram/ui/ActionBar/ActionBar;F)V

    .line 2411
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_sheet_scrollUp:I

    invoke-virtual {v1, p1}, Lorg/telegram/ui/bots/BotWebViewMenuContainer$ActionBarColorsAnimating;->getColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->lineColor:I

    .line 2413
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 2415
    :goto_2
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->updateLightStatusBar()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setAttached(Z)V
    .locals 1

    .line 2688
    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->attached:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2689
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->attached:Z

    if-eqz p1, :cond_1

    .line 2690
    iget-boolean p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->orientationLocked:Z

    if-eqz p1, :cond_2

    .line 2691
    sget p1, Lorg/telegram/ui/bots/BotWebViewSheet;->shownLockedBots:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lorg/telegram/ui/bots/BotWebViewSheet;->shownLockedBots:I

    goto :goto_0

    .line 2694
    :cond_1
    iget-boolean p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->orientationLocked:Z

    if-eqz p1, :cond_2

    .line 2695
    sget p1, Lorg/telegram/ui/bots/BotWebViewSheet;->shownLockedBots:I

    add-int/lit8 p1, p1, -0x1

    sput p1, Lorg/telegram/ui/bots/BotWebViewSheet;->shownLockedBots:I

    .line 2698
    :cond_2
    :goto_0
    sget p1, Lorg/telegram/ui/bots/BotWebViewSheet;->shownLockedBots:I

    if-lez p1, :cond_3

    .line 2699
    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->lockOrientation(Landroid/app/Activity;)V

    return-void

    .line 2701
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->unlockOrientation(Landroid/app/Activity;)V

    return-void
.end method

.method public setBackgroundColor(IZZ)V
    .locals 3

    .line 2150
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    .line 2151
    iput-boolean p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->overrideBackgroundColor:Z

    .line 2152
    iget-object p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->backgroundColorAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_0

    .line 2153
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    if-eqz p3, :cond_1

    const/4 p2, 0x2

    .line 2156
    new-array p2, p2, [F

    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    const-wide/16 v1, 0xc8

    invoke-virtual {p2, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->backgroundColorAnimator:Landroid/animation/ValueAnimator;

    .line 2157
    sget-object p3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2158
    iget-object p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->backgroundColorAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda29;

    invoke-direct {p3, p0, v0, p1}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;II)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2168
    iget-object p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->backgroundColorAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Lorg/telegram/ui/bots/BotWebViewSheet$13;

    invoke-direct {p3, p0, p1}, Lorg/telegram/ui/bots/BotWebViewSheet$13;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;I)V

    invoke-virtual {p2, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2181
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->backgroundColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 2183
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2184
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->updateActionBarColors()V

    .line 2185
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 2186
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->errorContainer:Lorg/telegram/ui/ArticleViewer$ErrorContainer;

    if-eqz p1, :cond_3

    .line 2187
    iget-object p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result p2

    const p3, 0x3f389375    # 0.721f

    cmpg-float p2, p2, p3

    const/4 p3, 0x0

    if-gtz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    move p2, p3

    :goto_0
    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/ArticleViewer$ErrorContainer;->setDark(ZZ)V

    .line 2188
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->errorContainer:Lorg/telegram/ui/ArticleViewer$ErrorContainer;

    iget-object p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2190
    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->updateWebViewBackgroundColor()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setDefaultFullsize(Z)V
    .locals 1

    .line 1302
    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->defaultFullsize:Z

    if-eq v0, p1, :cond_0

    .line 1303
    iput-boolean p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->defaultFullsize:Z

    .line 1305
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    if-eqz p1, :cond_0

    .line 1306
    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->isFullSize()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setFullSize(Z)V

    :cond_0
    return-void
.end method

.method public setDialog(Lorg/telegram/ui/ActionBar/BottomSheetTabDialog;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setFullscreen(ZZ)V
    .locals 1

    .line 2208
    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenBlur:Z

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->setFullscreen(ZZZ)V

    return-void
.end method

.method public setFullscreen(ZZZ)V
    .locals 12

    .line 2211
    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreen:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2212
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreen:Z

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    .line 2213
    iget p3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-boolean p3, p3, Lorg/telegram/messenger/MessagesController;->disableBotFullscreenBlur:Z

    if-nez p3, :cond_1

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result p3

    if-lt p3, v0, :cond_1

    move p3, v1

    goto :goto_0

    :cond_1
    move p3, v2

    :goto_0
    iput-boolean p3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenBlur:Z

    .line 2214
    iget-object p3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenAnimator:Landroid/animation/ValueAnimator;

    if-eqz p3, :cond_2

    .line 2215
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2217
    :cond_2
    iget-object p3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenButtons:Lorg/telegram/messenger/BotFullscreenButtons;

    if-eqz p3, :cond_4

    .line 2218
    invoke-virtual {p3, p1, p2}, Lorg/telegram/messenger/BotFullscreenButtons;->setPreview(ZZ)V

    .line 2219
    iget-object p3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenButtons:Lorg/telegram/messenger/BotFullscreenButtons;

    iget-boolean v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenBlur:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v3}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getRenderNode()Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p3, v3}, Lorg/telegram/messenger/BotFullscreenButtons;->setParentRenderNode(Ljava/lang/Object;)V

    .line 2221
    :cond_4
    iget-object p3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    iput p3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainerFromWidth:I

    .line 2222
    iget-object p3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    iput p3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainerFromHeight:I

    .line 2223
    iput-boolean v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->resetOffsetY:Z

    const/high16 p3, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz p2, :cond_c

    .line 2225
    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->updateFullscreenLayout()V

    .line 2226
    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->updateWindowFlags()V

    .line 2227
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->updateDownloadBulletinArrow()V

    .line 2228
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p2

    if-eqz p2, :cond_5

    sget-boolean p2, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez p2, :cond_5

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallTablet()Z

    move-result p2

    if-nez p2, :cond_5

    sget-object p2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-static {v4, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    int-to-float p2, p2

    const v5, 0x3f4ccccd    # 0.8f

    mul-float/2addr p2, v5

    float-to-int p2, p2

    sub-int/2addr v4, p2

    int-to-float p2, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr p2, v4

    goto :goto_2

    :cond_5
    move p2, v3

    .line 2229
    :goto_2
    iget-object v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->insets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-eqz p1, :cond_6

    int-to-float v4, v4

    add-float/2addr v4, p2

    :goto_3
    move v10, v4

    goto :goto_4

    :cond_6
    neg-int v4, v4

    int-to-float v4, v4

    sub-float/2addr v4, p2

    goto :goto_3

    :goto_4
    if-eqz p1, :cond_7

    :goto_5
    move v11, p2

    goto :goto_6

    :cond_7
    neg-float p2, p2

    goto :goto_5

    :goto_6
    const/high16 p2, 0x41c00000    # 24.0f

    if-eqz p1, :cond_8

    .line 2232
    iget-object v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v4

    :goto_7
    move v8, v4

    goto :goto_8

    :cond_8
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    goto :goto_7

    :goto_8
    if-eqz p1, :cond_9

    .line 2233
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    neg-int v4, v4

    :goto_9
    int-to-float v4, v4

    move v9, v4

    goto :goto_a

    :cond_9
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v4

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v4, v5

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v4, v5

    goto :goto_9

    .line 2234
    :goto_a
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v4

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    .line 2235
    iget-object v5, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v5}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->cancelStickTo()V

    .line 2236
    iget-object v5, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v5, v1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setSwipeOffsetAnimationDisallowed(Z)V

    .line 2237
    iget-object v5, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_a

    .line 2239
    iget-object v5, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {v5, p2}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setTopActionBarOffsetY(F)V

    goto :goto_b

    .line 2241
    :cond_a
    iget-object v5, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    sub-float p2, v4, p2

    invoke-virtual {v5, p2}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setTopActionBarOffsetY(F)V

    .line 2243
    :goto_b
    iget-object p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {p2}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->invalidateTranslation()V

    .line 2244
    iget-object p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    .line 2246
    iput v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenTransitionProgress:F

    if-eqz p1, :cond_b

    move p2, v3

    goto :goto_c

    :cond_b
    sub-float p2, p3, v3

    .line 2247
    :goto_c
    iput p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenProgress:F

    .line 2248
    iget-object v5, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sub-float/2addr p3, p2

    invoke-virtual {v5, p3}, Landroid/view/View;->setAlpha(F)V

    .line 2249
    iget-object p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result p3

    neg-int p3, p3

    int-to-float p3, p3

    iget v5, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenProgress:F

    mul-float/2addr p3, v5

    invoke-virtual {p2, p3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTranslationY(F)V

    .line 2250
    iget-object p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    iget p3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenTransitionProgress:F

    invoke-static {v8, v9, p3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p3

    invoke-virtual {p2, p3}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setTranslationY(F)V

    .line 2251
    iget-object p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    iget p3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenTransitionProgress:F

    invoke-static {v10, v3, p3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationX(F)V

    .line 2252
    iget-object p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botButtons:Lorg/telegram/ui/bots/BotButtons;

    iget p3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenTransitionProgress:F

    invoke-static {v11, v3, p3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationX(F)V

    .line 2253
    iget-object p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenButtons:Lorg/telegram/messenger/BotFullscreenButtons;

    iget p3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenProgress:F

    invoke-virtual {p2, p3}, Landroid/view/View;->setAlpha(F)V

    .line 2254
    iget-object p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    .line 2255
    iget-object p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    iget-object p3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {p3}, Landroid/view/View;->getTranslationY()F

    move-result p3

    sub-float/2addr p3, v9

    invoke-virtual {p2, p3}, Lorg/telegram/ui/web/BotWebViewContainer;->setViewPortHeightOffset(F)V

    .line 2256
    iget-object p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {p2, v2, v2}, Lorg/telegram/ui/web/BotWebViewContainer;->invalidateViewPortHeight(ZZ)V

    .line 2258
    iput-boolean v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenInProgress:Z

    .line 2259
    new-array p2, v0, [F

    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenAnimator:Landroid/animation/ValueAnimator;

    .line 2260
    new-instance v5, Lorg/telegram/ui/bots/BotWebViewSheet$14;

    move-object v6, p0

    move v7, p1

    invoke-direct/range {v5 .. v11}, Lorg/telegram/ui/bots/BotWebViewSheet$14;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;ZFFFF)V

    invoke-virtual {p2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2277
    iget-object p1, v6, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/bots/BotWebViewSheet$15;

    invoke-direct {p2, p0, v7, v4, v10}, Lorg/telegram/ui/bots/BotWebViewSheet$15;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;ZFF)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2308
    iget-object p1, v6, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0x118

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2309
    iget-object p1, v6, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2310
    iget-object p1, v6, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_c
    move-object v6, p0

    move v7, p1

    .line 2312
    iput-boolean v2, v6, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenInProgress:Z

    if-eqz v7, :cond_d

    move p1, p3

    goto :goto_d

    :cond_d
    move p1, v3

    .line 2313
    :goto_d
    iput p1, v6, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenProgress:F

    .line 2314
    iput v3, v6, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenTransitionProgress:F

    .line 2315
    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->updateFullscreenLayout()V

    .line 2316
    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->updateWindowFlags()V

    .line 2317
    iget-object p1, v6, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v7, :cond_e

    const/16 v2, 0x8

    :cond_e
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2318
    iget-object p1, v6, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget p2, v6, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenProgress:F

    sub-float/2addr p3, p2

    invoke-virtual {p1, p3}, Landroid/view/View;->setAlpha(F)V

    .line 2319
    iget-object p1, v6, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    iget p3, v6, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenProgress:F

    mul-float/2addr p2, p3

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTranslationY(F)V

    .line 2320
    iget-object p1, v6, Lorg/telegram/ui/bots/BotWebViewSheet;->botButtons:Lorg/telegram/ui/bots/BotButtons;

    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 2321
    iget-object p1, v6, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenButtons:Lorg/telegram/messenger/BotFullscreenButtons;

    iget p2, v6, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenProgress:F

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 2322
    iget-object p1, v6, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/web/BotWebViewContainer;->setViewPortHeightOffset(F)V

    .line 2323
    iget-object p1, v6, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {p1, v1, v1}, Lorg/telegram/ui/web/BotWebViewContainer;->invalidateViewPortHeight(ZZ)V

    .line 2324
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->updateDownloadBulletinArrow()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public synthetic setLastVisible(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet$-CC;->$default$setLastVisible(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;Z)V

    return-void
.end method

.method public setNavigationBarColor(IZ)V
    .locals 3

    .line 2329
    iget v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->navBarColor:I

    .line 2332
    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botButtons:Lorg/telegram/ui/bots/BotButtons;

    invoke-virtual {v1, p1, p2}, Lorg/telegram/ui/bots/BotButtons;->setBackgroundColor(IZ)V

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    .line 2334
    new-array p2, p2, [F

    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    const-wide/16 v1, 0xc8

    invoke-virtual {p2, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 2335
    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2336
    new-instance v1, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda44;

    invoke-direct {v1, p0, v0, p1}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda44;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;II)V

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2341
    new-instance v1, Lorg/telegram/ui/bots/BotWebViewSheet$16;

    invoke-direct {v1, p0, v0, p1}, Lorg/telegram/ui/bots/BotWebViewSheet$16;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;II)V

    invoke-virtual {p2, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2349
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 2351
    :cond_0
    iput p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->navBarColor:I

    .line 2352
    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->checkNavBarColor()V

    .line 2354
    :goto_0
    iget p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->navBarColor:I

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->setNavigationBarColor(Landroid/app/Dialog;IZ)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setNeedsContext(Z)V
    .locals 0

    .line 1324
    iput-boolean p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->needsContext:Z

    return-void
.end method

.method public setOnVerifiedAge(Lorg/telegram/messenger/Utilities$Callback4;)V
    .locals 1

    .line 1343
    iput-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->onVerifiedAge:Lorg/telegram/messenger/Utilities$Callback4;

    .line 1344
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    if-eqz v0, :cond_0

    .line 1345
    invoke-virtual {v0, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->setOnVerifiedAge(Lorg/telegram/messenger/Utilities$Callback4;)V

    :cond_0
    return-void
.end method

.method public setOpen(Z)V
    .locals 4

    .line 2105
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->openAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 2106
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2108
    :cond_0
    iget v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->openedProgress:F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v3, 0x3c23d70a    # 0.01f

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    return-void

    .line 2109
    :cond_2
    iget v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->openedProgress:F

    if-eqz p1, :cond_3

    move v1, v2

    :cond_3
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->openAnimator:Landroid/animation/ValueAnimator;

    .line 2110
    new-instance v1, Lorg/telegram/ui/bots/BotWebViewSheet$12;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/bots/BotWebViewSheet$12;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2117
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->openAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2121
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->openAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2122
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->openAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xdc

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2123
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->openAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public setParentActivity(Landroid/app/Activity;)V
    .locals 0

    .line 1055
    iput-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->parentActivity:Landroid/app/Activity;

    return-void
.end method

.method public setWasOpenedByLinkIntent(Z)V
    .locals 1

    .line 1318
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    if-eqz v0, :cond_0

    .line 1319
    invoke-virtual {v0, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->setWasOpenedByLinkIntent(Z)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .line 1934
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isSafeToShow(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1935
    invoke-virtual {p0, v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->setOpen(Z)V

    .line 1936
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1937
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    new-instance v1, Lorg/telegram/ui/bots/BotWebViewSheet$11;

    invoke-direct {v1, p0}, Lorg/telegram/ui/bots/BotWebViewSheet$11;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1974
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    const/4 v0, 0x0

    .line 1975
    iput-boolean v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->superDismissed:Z

    .line 1976
    sget-object v0, Lorg/telegram/ui/bots/BotWebViewSheet;->activeSheets:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public showJustAddedBulletin()V
    .locals 10

    .line 127
    iget v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 129
    iget v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaDataController;->getAttachMenuBots()Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots;->bots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    if-ge v4, v2, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    .line 130
    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->bot_id:J

    iget-wide v8, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botId:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    if-nez v5, :cond_2

    return-void

    .line 139
    :cond_2
    iget-boolean v1, v5, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->show_in_side_menu:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    iget-boolean v4, v5, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->show_in_attach_menu:Z

    if-eqz v4, :cond_3

    .line 140
    sget v1, Lorg/telegram/messenger/R$string;->BotAttachMenuShortcatAddedAttachAndSide:I

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    .line 142
    sget v1, Lorg/telegram/messenger/R$string;->BotAttachMenuShortcatAddedSide:I

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 144
    :cond_4
    sget v1, Lorg/telegram/messenger/R$string;->BotAttachMenuShortcatAddedAttach:I

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 146
    :goto_1
    new-instance v1, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda55;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda55;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;Ljava/lang/String;)V

    const-wide/16 v2, 0xc8

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public updateFullscreenLayout()V
    .locals 8

    .line 1175
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenButtons:Lorg/telegram/messenger/BotFullscreenButtons;

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->insets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/BotFullscreenButtons;->setInsets(Landroid/graphics/Rect;)V

    .line 1176
    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreen:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1177
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botButtons:Lorg/telegram/ui/bots/BotButtons;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/bots/BotButtons;->getTotalHeight()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->insets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1178
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->insets:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget v7, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->keyboardInset:I

    if-le v7, v0, :cond_1

    :goto_1
    move v7, v1

    goto :goto_2

    :cond_1
    iget-object v7, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botButtons:Lorg/telegram/ui/bots/BotButtons;

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lorg/telegram/ui/bots/BotButtons;->getTotalHeight()I

    move-result v7

    if-lez v7, :cond_2

    goto :goto_1

    :cond_2
    iget-object v7, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->insets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    :goto_2
    invoke-direct {v3, v5, v6, v4, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    const/high16 v4, 0x42380000    # 46.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/web/BotWebViewContainer;->reportSafeInsets(Landroid/graphics/Rect;I)V

    .line 1179
    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    iget v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->keyboardInset:I

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v2, v1, v1, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_4

    .line 1181
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/web/BotWebViewContainer;->reportSafeInsets(Landroid/graphics/Rect;I)V

    .line 1182
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->insets:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->keyboardInset:I

    iget-object v5, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->bottomTabs:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    if-eqz v5, :cond_4

    invoke-virtual {v5, v1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->getHeight(Z)I

    move-result v5

    goto :goto_3

    :cond_4
    move v5, v1

    :goto_3
    iget-object v6, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->insets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 1184
    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainerLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1186
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBarLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-boolean v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreen:Z

    if-nez v3, :cond_5

    move v4, v1

    goto :goto_5

    :cond_5
    iget-object v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->insets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    :goto_5
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1187
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1188
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->bulletinContainerLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    if-nez v3, :cond_6

    move v4, v1

    goto :goto_6

    :cond_6
    iget-object v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->insets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    :goto_6
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    if-nez v3, :cond_7

    move v3, v1

    goto :goto_7

    .line 1189
    :cond_7
    iget-object v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->insets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    :goto_7
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1190
    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenInProgress:Z

    if-nez v0, :cond_9

    .line 1191
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setSwipeOffsetAnimationDisallowed(Z)V

    .line 1192
    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreen:Z

    if-eqz v0, :cond_8

    .line 1193
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setTopActionBarOffsetY(F)V

    goto :goto_8

    .line 1195
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v3

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v3, v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v3, v2

    int-to-float v2, v3

    invoke-virtual {v0, v2}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setTopActionBarOffsetY(F)V

    .line 1197
    :goto_8
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setSwipeOffsetAnimationDisallowed(Z)V

    .line 1198
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->invalidateTranslation()V

    .line 1199
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1200
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 1202
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    if-eqz v0, :cond_a

    .line 1203
    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->isFullSize()Z

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setFullSize(Z)V

    .line 1205
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botButtons:Lorg/telegram/ui/bots/BotButtons;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 1206
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 1207
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenButtons:Lorg/telegram/messenger/BotFullscreenButtons;

    iget-boolean v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreen:Z

    if-eqz v2, :cond_b

    goto :goto_9

    :cond_b
    const/16 v1, 0x8

    :goto_9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public updateWindowFlags()V
    .locals 5

    .line 1212
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1214
    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1216
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-gt v2, v3, :cond_1

    const/16 v2, 0x400

    goto :goto_0

    :cond_1
    const/16 v2, 0x200

    .line 1221
    :goto_0
    iget-boolean v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreen:Z

    if-eqz v3, :cond_2

    .line 1222
    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v2, v4

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_3

    .line 1224
    :cond_2
    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    not-int v2, v2

    and-int/2addr v2, v4

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_1
    if-eqz v3, :cond_4

    .line 1226
    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botButtons:Lorg/telegram/ui/bots/BotButtons;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/telegram/ui/bots/BotButtons;->getTotalHeight()I

    move-result v2

    if-gtz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    invoke-static {v2}, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->-$$Nest$fgetdrawingFromOverlay(Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1227
    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v3

    or-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_2

    .line 1229
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v3

    and-int/lit8 v3, v3, -0x3

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1231
    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1233
    :goto_3
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method
