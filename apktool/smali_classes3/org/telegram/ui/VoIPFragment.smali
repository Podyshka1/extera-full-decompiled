.class public Lorg/telegram/ui/VoIPFragment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/voip/VoIPService$StateListener;
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/messenger/pip/source/IPipSourceDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/VoIPFragment$ConferenceParticipantsView;
    }
.end annotation


# static fields
.field private static instance:Lorg/telegram/ui/VoIPFragment;


# instance fields
.field private acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

.field private accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field activity:Landroid/app/Activity;

.field private addIcon:Landroid/widget/ImageView;

.field private addPeopleSheet:Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;

.field private backIcon:Landroid/widget/ImageView;

.field private final backgroundProvider:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

.field private bottomEndCallBtn:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

.field private bottomMuteBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

.field bottomShadow:Landroid/view/View;

.field private bottomSpeakerBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

.field private bottomVideoBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

.field private buttonsLayout:Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;

.field callingUser:Lorg/telegram/tgnet/TLRPC$User;

.field callingUserIsVideo:Z

.field private callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

.field private callingUserMiniTextureRenderer:Lorg/webrtc/TextureViewRenderer;

.field private callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

.field private callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

.field private callingUserTitle:Landroid/widget/TextView;

.field cameraForceExpanded:Z

.field private cameraShowingAnimator:Landroid/animation/Animator;

.field private canHideUI:Z

.field private canSwitchToPip:Z

.field private canZoomGesture:Z

.field private final currentAccount:I

.field private currentState:I

.field currentUser:Lorg/telegram/tgnet/TLRPC$User;

.field private currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

.field private currentUserCameraIsFullscreen:Z

.field currentUserIsVideo:Z

.field private currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

.field private deviceIsLocked:Z

.field emojiDrawables:[Landroid/graphics/drawable/Drawable;

.field private emojiExpanded:Z

.field emojiLayout:Landroid/widget/LinearLayout;

.field private emojiLoaded:Z

.field emojiRationalLayout:Landroid/widget/LinearLayout;

.field emojiRationalTextView:Landroid/widget/TextView;

.field emojiRationalTopTextView:Landroid/widget/TextView;

.field emojiViews:[Lorg/telegram/ui/Components/BackupImageView;

.field encryptionTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

.field endCloseLayout:Lorg/telegram/ui/Components/voip/EndCloseLayout;

.field enterFromPiP:Z

.field private enterTransitionProgress:F

.field fillNaviagtionBarValue:F

.field private firstFrameCallback:Ljava/lang/Runnable;

.field private fragmentView:Landroid/view/ViewGroup;

.field private gradientLayout:Lorg/telegram/ui/Components/voip/VoIpGradientLayout;

.field hideEmojiLayout:Landroid/widget/FrameLayout;

.field hideEmojiTextView:Landroid/widget/TextView;

.field hideUIRunnable:Ljava/lang/Runnable;

.field hideUiRunnableWaiting:Z

.field private isFinished:Z

.field private isInPinchToZoomTouchMode:Z

.field private isNearEar:Z

.field isOutgoing:Z

.field private isVideoCall:Z

.field lastContentTapTime:J

.field private lastInsets:Landroid/view/WindowInsets;

.field private lockOnScreen:Z

.field notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

.field notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

.field overlayBottomPaint:Landroid/graphics/Paint;

.field overlayPaint:Landroid/graphics/Paint;

.field private participantsView:Lorg/telegram/ui/VoIPFragment$ConferenceParticipantsView;

.field private pinchCenterX:F

.field private pinchCenterY:F

.field pinchScale:F

.field private pinchStartCenterX:F

.field private pinchStartCenterY:F

.field private pinchStartDistance:F

.field private pinchTranslationX:F

.field private pinchTranslationY:F

.field private pipSource:Lorg/telegram/messenger/pip/PipSource;

.field private pipTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

.field private pointerId1:I

.field private pointerId2:I

.field private previewDialog:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;

.field private previousState:I

.field rateCallLayout:Lorg/telegram/ui/Components/voip/RateCallLayout;

.field private screenWasWakeup:Z

.field private selectedRating:I

.field private signalBarWasReceived:Z

.field private speakerPhoneIcon:Landroid/widget/ImageView;

.field private speakerPhoneIconResId:I

.field statusLayout:Landroid/widget/LinearLayout;

.field private statusLayoutAnimateToOffset:I

.field private statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

.field statusbarAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field stopAnimatingBgRunnable:Ljava/lang/Runnable;

.field private switchingToPip:Z

.field tapToVideoTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

.field topShadow:Landroid/view/View;

.field touchSlop:F

.field uiVisibilityAlpha:F

.field uiVisibilityAnimator:Landroid/animation/ValueAnimator;

.field private uiVisible:Z

.field private voIpCoverView:Lorg/telegram/ui/Components/voip/VoIpCoverView;

.field private voIpSnowView:Lorg/telegram/ui/Components/voip/VoIpSnowView;

.field private wasEstablished:Z

.field private windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

.field private windowViewSkipRender:Z

.field zoomBackAnimator:Landroid/animation/ValueAnimator;

.field private zoomStarted:Z


# direct methods
.method public static synthetic $r8$lambda$26UgQxF11Wb0wnxuH1wrDVcux_4(Lorg/telegram/ui/VoIPFragment;ZFFFFFFFFFFFFFFFFLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p18}, Lorg/telegram/ui/VoIPFragment;->lambda$createPiPTransition$20(ZFFFFFFFFFFFFFFFFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3HVrNwfN65JoBr3D53vpBsFv9vA(Lorg/telegram/ui/VoIPFragment;FFFLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/VoIPFragment;->lambda$finishZoom$17(FFFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3Vk7ik85Np9Lx7A8xukZyp22rwk(Lorg/telegram/ui/VoIPFragment;Lorg/telegram/messenger/voip/VoIPService;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/VoIPFragment;->lambda$updateViewState$25(Lorg/telegram/messenger/voip/VoIPService;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6ZXnOOdNLHXbJen81yXDC0h8Xwo(Lorg/telegram/ui/VoIPFragment;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/VoIPFragment;->lambda$createView$13(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$78f7mgXYiRGqVH4NbzpYJrPs4CI(Lorg/telegram/ui/VoIPFragment;Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/VoIPFragment;->lambda$setFrontalCameraAction$39(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7hQjCE9wTVvSOmNGCVgR_Z4a2gQ(Lorg/telegram/ui/VoIPFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->lambda$updateViewState$31()V

    return-void
.end method

.method public static synthetic $r8$lambda$8Kqhw28hIlUs9LmGxvR6F6Xv7i4(Lorg/telegram/ui/VoIPFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->lambda$runAcceptCallAnimation$16()V

    return-void
.end method

.method public static synthetic $r8$lambda$ADa60CQ0ZR_-aSgBGpe_5i6VFc8(Lorg/telegram/ui/VoIPFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPFragment;->lambda$setVideoAction$37(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BrL2KK_EfMSKdYYUf51yg28CTlk(Lorg/telegram/ui/VoIPFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPFragment;->lambda$updateButtons$35(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DhuytnEUORABk7dQ_mwIM261yCI(Lorg/telegram/ui/VoIPFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->lambda$updateViewState$27()V

    return-void
.end method

.method public static synthetic $r8$lambda$E812p1EC8Xz1D3AYOnMPWBfbzvs(Lorg/telegram/ui/VoIPFragment;Landroid/animation/Animator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPFragment;->lambda$startTransitionFromPiP$18(Landroid/animation/Animator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FwyUpE4nCla9PlLaGy629GsXD1E(Lorg/telegram/ui/VoIPFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPFragment;->lambda$createView$11(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FzX6YaMC8JRQK6ZFLx1pQ_HB2Sk(Lorg/telegram/ui/VoIPFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->lambda$checkEmojiLoaded$34()V

    return-void
.end method

.method public static synthetic $r8$lambda$H10Ifwoghk6cnoPBh2QT6h6gljI(Lorg/telegram/ui/VoIPFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPFragment;->lambda$createView$9(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IRtdx08_kW4Q3okRYwraol8kvc0(Lorg/telegram/ui/VoIPFragment;ILorg/telegram/ui/Components/voip/VoIpSwitchLayout;Lorg/telegram/messenger/voip/VoIPService;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/VoIPFragment;->lambda$setSpeakerPhoneAction$38(ILorg/telegram/ui/Components/voip/VoIpSwitchLayout;Lorg/telegram/messenger/voip/VoIPService;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KbbFFT0ZU_e-LUrymc0nL2uzQjk(Lorg/telegram/ui/VoIPFragment;[ZLorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/VoIPFragment;->lambda$updateViewState$29([ZLorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$MjosVzJyMoINzJh5GOo7HMxa2_k(Ljava/lang/Boolean;Ljava/util/HashSet;)V
    .locals 1

    .line 1237
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1239
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {v0, p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->convertToConferenceCall(ZLjava/util/HashSet;)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$OUeQmDMrfS4S7kmLRa4EK6VaSdo(Lorg/telegram/ui/VoIPFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->lambda$updateViewState$32()V

    return-void
.end method

.method public static synthetic $r8$lambda$R6WkJTy6a6TYJ5jiOgVYOwxp7NA(Lorg/telegram/ui/VoIPFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->lambda$onRequestPermissionsResultInternal$41()V

    return-void
.end method

.method public static synthetic $r8$lambda$S03yk9JGbn-igTPpQK6WCgq-Mvw(Lorg/telegram/ui/VoIPFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->lambda$createView$14()V

    return-void
.end method

.method public static synthetic $r8$lambda$VxJHC3IyNrckuQmOdzaKUBxL4Fo(Lorg/telegram/ui/VoIPFragment;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPFragment;->lambda$new$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WE7K5BHJaihRt-4lh9v2_L0Zm9I(Lorg/telegram/ui/VoIPFragment;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPFragment;->lambda$onSignalBarsCountChanged$4(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$WOq9184HVe3mIsIz1N-rliDuvnI(Lorg/telegram/ui/VoIPFragment;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/VoIPFragment;->lambda$requestInlinePermissions$43(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$XTcOvxMlC-7nTDK1Qy-xiflax2k(Lorg/telegram/ui/VoIPFragment;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPFragment;->lambda$updateViewState$26(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$_SZMR5fQcPhPm1qINYno3BqzNV4(Lorg/telegram/ui/VoIPFragment;Lorg/telegram/messenger/voip/VoIPService;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/VoIPFragment;->lambda$updateViewState$22(Lorg/telegram/messenger/voip/VoIPService;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bWTEtx4vn8A5wOhVYcW50prfNbM(Lorg/telegram/ui/VoIPFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->lambda$updateViewState$33()V

    return-void
.end method

.method public static synthetic $r8$lambda$cA8tJ9pdLH_WrR0PUitJR8pnAKI()V
    .locals 1

    .line 2976
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedState()Lorg/telegram/messenger/voip/VoIPServiceState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2977
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedState()Lorg/telegram/messenger/voip/VoIPServiceState;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/messenger/voip/VoIPServiceState;->acceptIncomingCall()V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$cSc2ka2xbVHlEh7upbNdFRYoIjI(Lorg/telegram/ui/VoIPFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPFragment;->lambda$createView$10(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cjH2LlfFH0h_LscUMZ-U9s8W89Q(Lorg/telegram/ui/VoIPFragment;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    .line 408
    invoke-direct {p0, p2}, Lorg/telegram/ui/VoIPFragment;->setInsets(Landroid/view/WindowInsets;)V

    .line 409
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p1, 0x1e

    if-lt p0, p1, :cond_0

    .line 410
    sget-object p0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    return-object p0

    .line 412
    :cond_0
    invoke-virtual {p2}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$dQo0IPLolFb1Zqcg8mBLg480H1g(Lorg/telegram/ui/VoIPFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPFragment;->lambda$createView$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dc2UA12AtvkLwuvNggls1hVpIvY(Lorg/telegram/ui/VoIPFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->lambda$new$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$eG35quzz0EcQolDirR0hUJQPkPM(Lorg/telegram/ui/VoIPFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPFragment;->lambda$setMicrohoneAction$36(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fRfyAco2WhjU9tZI26jTDkpqxOI(Lorg/telegram/ui/VoIPFragment;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/VoIPFragment;->lambda$updateViewState$28(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$gMQFC27LxWZNPgp3xugJjRRFhHg(Lorg/telegram/ui/VoIPFragment;FZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/VoIPFragment;->lambda$createView$5(FZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$h4Vsz7PaGNg0Fa1Skednb7HLwZY(Lorg/telegram/ui/VoIPFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$jzLcl_XUrG07oCyspPEf1cfOUvw(Lorg/telegram/ui/VoIPFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPFragment;->lambda$createView$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kAv2KvHQF8gDIrukR8X3nxQZEjY(Lorg/telegram/ui/VoIPFragment;IIILandroid/view/ViewGroup$MarginLayoutParams;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/VoIPFragment;->lambda$runAcceptCallAnimation$15(IIILandroid/view/ViewGroup$MarginLayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oX5v0FFuMMwOQNxEXgReGRZTvkM(Lorg/telegram/ui/VoIPFragment;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPFragment;->lambda$showErrorDialog$42(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qddhzaBYVwfeewe9zvzfSQTq03w(Lorg/telegram/ui/VoIPFragment;[ZLandroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/VoIPFragment;->lambda$updateViewState$30([ZLandroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qy7pltytxqsRs3p8a8yYewHeFGw(Lorg/telegram/ui/VoIPFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->lambda$startTransitionFromPiP$19()V

    return-void
.end method

.method public static synthetic $r8$lambda$uZp_JcMZwl7CyazvmRevn-QO3BA(Lorg/telegram/ui/VoIPFragment;Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPFragment;->lambda$updateViewState$23(Lorg/telegram/messenger/voip/VoIPService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vHJTpm_yg43Hd4HHGerBrzgMVMI(Lorg/telegram/ui/VoIPFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->startWaitingFoHideUi()V

    return-void
.end method

.method public static synthetic $r8$lambda$vYWOK9azQW7_ci0dVhvWQq-5cSQ(Lorg/telegram/ui/VoIPFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->lambda$updateViewState$21()V

    return-void
.end method

.method public static synthetic $r8$lambda$y9-sJwLOQOBP06on8Nkmo7Ftws8(Lorg/telegram/ui/VoIPFragment;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPFragment;->lambda$replaceEmojiToLottieFrame$44(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yUjZjkvLBGofet0wk0-imaZtC4E(Lorg/telegram/ui/VoIPFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPFragment;->lambda$createView$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zmklAMRa7N5Xmt8YZlZTPQsfWJM(Lorg/telegram/ui/VoIPFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->lambda$updateViewState$24()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetacceptDeclineView(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/voip/AcceptDeclineView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbottomVideoBtn(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/VoIPFragment;->bottomVideoBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcallingUserMiniFloatingLayout(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcallingUserMiniTextureRenderer(Lorg/telegram/ui/VoIPFragment;)Lorg/webrtc/TextureViewRenderer;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniTextureRenderer:Lorg/webrtc/TextureViewRenderer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcallingUserPhotoViewMini(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/voip/ImageWithWavesView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcallingUserTextureView(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/voip/VoIPTextureView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcallingUserTitle(Lorg/telegram/ui/VoIPFragment;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/VoIPFragment;->callingUserTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcanHideUI(Lorg/telegram/ui/VoIPFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/VoIPFragment;->canHideUI:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcanZoomGesture(Lorg/telegram/ui/VoIPFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/VoIPFragment;->canZoomGesture:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentAccount(Lorg/telegram/ui/VoIPFragment;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/VoIPFragment;->currentAccount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentState(Lorg/telegram/ui/VoIPFragment;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentUserCameraFloatingLayout(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentUserCameraIsFullscreen(Lorg/telegram/ui/VoIPFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraIsFullscreen:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentUserTextureView(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/voip/VoIPTextureView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/VoIPFragment;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetemojiExpanded(Lorg/telegram/ui/VoIPFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/VoIPFragment;->emojiExpanded:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetemojiLoaded(Lorg/telegram/ui/VoIPFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/VoIPFragment;->emojiLoaded:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetfirstFrameCallback(Lorg/telegram/ui/VoIPFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/VoIPFragment;->firstFrameCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfragmentView(Lorg/telegram/ui/VoIPFragment;)Landroid/view/ViewGroup;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/VoIPFragment;->fragmentView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetgradientLayout(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/voip/VoIpGradientLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/VoIPFragment;->gradientLayout:Lorg/telegram/ui/Components/voip/VoIpGradientLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisFinished(Lorg/telegram/ui/VoIPFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/VoIPFragment;->isFinished:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisInPinchToZoomTouchMode(Lorg/telegram/ui/VoIPFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/VoIPFragment;->isInPinchToZoomTouchMode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisVideoCall(Lorg/telegram/ui/VoIPFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/VoIPFragment;->isVideoCall:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlockOnScreen(Lorg/telegram/ui/VoIPFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/VoIPFragment;->lockOnScreen:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpinchCenterX(Lorg/telegram/ui/VoIPFragment;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/VoIPFragment;->pinchCenterX:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpinchCenterY(Lorg/telegram/ui/VoIPFragment;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/VoIPFragment;->pinchCenterY:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpinchStartCenterX(Lorg/telegram/ui/VoIPFragment;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/VoIPFragment;->pinchStartCenterX:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpinchStartCenterY(Lorg/telegram/ui/VoIPFragment;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/VoIPFragment;->pinchStartCenterY:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpinchStartDistance(Lorg/telegram/ui/VoIPFragment;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/VoIPFragment;->pinchStartDistance:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpinchTranslationX(Lorg/telegram/ui/VoIPFragment;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/VoIPFragment;->pinchTranslationX:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpinchTranslationY(Lorg/telegram/ui/VoIPFragment;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/VoIPFragment;->pinchTranslationY:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpointerId1(Lorg/telegram/ui/VoIPFragment;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/VoIPFragment;->pointerId1:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpointerId2(Lorg/telegram/ui/VoIPFragment;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/VoIPFragment;->pointerId2:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetswitchingToPip(Lorg/telegram/ui/VoIPFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/VoIPFragment;->switchingToPip:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetuiVisible(Lorg/telegram/ui/VoIPFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetwindowView(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/voip/VoIPWindowView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwindowViewSkipRender(Lorg/telegram/ui/VoIPFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/VoIPFragment;->windowViewSkipRender:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetzoomStarted(Lorg/telegram/ui/VoIPFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/VoIPFragment;->zoomStarted:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputcanZoomGesture(Lorg/telegram/ui/VoIPFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->canZoomGesture:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputfirstFrameCallback(Lorg/telegram/ui/VoIPFragment;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/VoIPFragment;->firstFrameCallback:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisInPinchToZoomTouchMode(Lorg/telegram/ui/VoIPFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->isInPinchToZoomTouchMode:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpinchCenterX(Lorg/telegram/ui/VoIPFragment;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->pinchCenterX:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpinchCenterY(Lorg/telegram/ui/VoIPFragment;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->pinchCenterY:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpinchStartCenterX(Lorg/telegram/ui/VoIPFragment;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->pinchStartCenterX:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpinchStartCenterY(Lorg/telegram/ui/VoIPFragment;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->pinchStartCenterY:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpinchStartDistance(Lorg/telegram/ui/VoIPFragment;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->pinchStartDistance:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpinchTranslationX(Lorg/telegram/ui/VoIPFragment;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->pinchTranslationX:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpinchTranslationY(Lorg/telegram/ui/VoIPFragment;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->pinchTranslationY:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpointerId1(Lorg/telegram/ui/VoIPFragment;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->pointerId1:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpointerId2(Lorg/telegram/ui/VoIPFragment;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->pointerId2:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpreviewDialog(Lorg/telegram/ui/VoIPFragment;Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/VoIPFragment;->previewDialog:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpreviousState(Lorg/telegram/ui/VoIPFragment;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->previousState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputswitchingToPip(Lorg/telegram/ui/VoIPFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->switchingToPip:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputzoomStarted(Lorg/telegram/ui/VoIPFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->zoomStarted:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckPointerIds(Lorg/telegram/ui/VoIPFragment;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPFragment;->checkPointerIds(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mdestroy(Lorg/telegram/ui/VoIPFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->destroy()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mexpandEmoji(Lorg/telegram/ui/VoIPFragment;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPFragment;->expandEmoji(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfinishZoom(Lorg/telegram/ui/VoIPFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->finishZoom()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetFullscreenTextureView(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/voip/VoIPTextureView;
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->getFullscreenTextureView()Lorg/telegram/ui/Components/voip/VoIPTextureView;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monBackPressed(Lorg/telegram/ui/VoIPFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->onBackPressed()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrunAcceptCallAnimation(Lorg/telegram/ui/VoIPFragment;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPFragment;->runAcceptCallAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetVideoAction(Lorg/telegram/ui/VoIPFragment;Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;Lorg/telegram/messenger/voip/VoIPService;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/VoIPFragment;->setVideoAction(Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;Lorg/telegram/messenger/voip/VoIPService;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowUi(Lorg/telegram/ui/VoIPFragment;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPFragment;->showUi(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartWaitingFoHideUi(Lorg/telegram/ui/VoIPFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->startWaitingFoHideUi()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateViewState(Lorg/telegram/ui/VoIPFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateViewState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputinstance(Lorg/telegram/ui/VoIPFragment;)V
    .locals 0

    .line 0
    sput-object p0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    new-instance v0, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    invoke-direct {v0}, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/VoIPFragment;->backgroundProvider:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    const/4 v0, 0x4

    .line 200
    new-array v1, v0, [Lorg/telegram/ui/Components/BackupImageView;

    iput-object v1, p0, Lorg/telegram/ui/VoIPFragment;->emojiViews:[Lorg/telegram/ui/Components/BackupImageView;

    .line 201
    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lorg/telegram/ui/VoIPFragment;->emojiDrawables:[Landroid/graphics/drawable/Drawable;

    .line 220
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/VoIPFragment;->overlayPaint:Landroid/graphics/Paint;

    .line 221
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/VoIPFragment;->overlayBottomPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    .line 242
    iput-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 243
    iput v0, p0, Lorg/telegram/ui/VoIPFragment;->uiVisibilityAlpha:F

    .line 259
    new-instance v1, Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-direct {v1}, Lorg/telegram/messenger/AnimationNotificationsLocker;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/VoIPFragment;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    .line 266
    new-instance v1, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    iput-object v1, p0, Lorg/telegram/ui/VoIPFragment;->statusbarAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 274
    new-instance v1, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    iput-object v1, p0, Lorg/telegram/ui/VoIPFragment;->hideUIRunnable:Ljava/lang/Runnable;

    .line 285
    new-instance v1, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    iput-object v1, p0, Lorg/telegram/ui/VoIPFragment;->stopAnimatingBgRunnable:Ljava/lang/Runnable;

    .line 308
    iput v0, p0, Lorg/telegram/ui/VoIPFragment;->pinchScale:F

    .line 529
    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->currentAccount:I

    .line 530
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/VoIPFragment;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 531
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedState()Lorg/telegram/messenger/voip/VoIPServiceState;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 533
    :cond_0
    invoke-interface {v0}, Lorg/telegram/messenger/voip/VoIPServiceState;->getUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/VoIPFragment;->callingUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 534
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 535
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/telegram/messenger/voip/VoIPService;->registerStateListener(Lorg/telegram/messenger/voip/VoIPService$StateListener;)V

    .line 537
    :cond_1
    invoke-interface {v0}, Lorg/telegram/messenger/voip/VoIPServiceState;->isOutgoing()Z

    move-result v1

    iput-boolean v1, p0, Lorg/telegram/ui/VoIPFragment;->isOutgoing:Z

    const/4 v1, -0x1

    .line 538
    iput v1, p0, Lorg/telegram/ui/VoIPFragment;->previousState:I

    .line 539
    invoke-interface {v0}, Lorg/telegram/messenger/voip/VoIPServiceState;->getCallState()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    .line 540
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->webRtcSpeakerAmplitudeEvent:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 541
    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->voipServiceCreated:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 542
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 543
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->closeInCallActivity:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 544
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->nearEarEvent:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method private checkEmojiLoaded(Z)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    const/4 v3, 0x4

    if-ge v1, v3, :cond_1

    .line 2547
    iget-object v3, p0, Lorg/telegram/ui/VoIPFragment;->emojiDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v1

    invoke-direct {p0, v3}, Lorg/telegram/ui/VoIPFragment;->isLoaded(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-ne v2, v3, :cond_4

    const/4 v1, 0x1

    .line 2553
    iput-boolean v1, p0, Lorg/telegram/ui/VoIPFragment;->emojiLoaded:Z

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_3

    .line 2555
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->emojiViews:[Lorg/telegram/ui/Components/BackupImageView;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    .line 2556
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->emojiViews:[Lorg/telegram/ui/Components/BackupImageView;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_2

    .line 2558
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->emojiViews:[Lorg/telegram/ui/Components/BackupImageView;

    aget-object v2, v2, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 2559
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->emojiViews:[Lorg/telegram/ui/Components/BackupImageView;

    aget-object v2, v2, v1

    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleX(F)V

    .line 2560
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->emojiViews:[Lorg/telegram/ui/Components/BackupImageView;

    aget-object v2, v2, v1

    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleY(F)V

    .line 2561
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->emojiViews:[Lorg/telegram/ui/Components/BackupImageView;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_BACK:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0xfa

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2565
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->encryptionTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    new-instance v0, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void
.end method

.method private checkPointerIds(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1395
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    .line 1398
    :cond_0
    iget v0, p0, Lorg/telegram/ui/VoIPFragment;->pointerId1:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/telegram/ui/VoIPFragment;->pointerId2:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    if-ne v0, v1, :cond_1

    return v3

    .line 1401
    :cond_1
    iget v0, p0, Lorg/telegram/ui/VoIPFragment;->pointerId1:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lorg/telegram/ui/VoIPFragment;->pointerId2:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    if-ne v0, p1, :cond_2

    return v3

    :cond_2
    return v2
.end method

.method public static clearInstance()V
    .locals 5

    .line 481
    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    if-eqz v0, :cond_1

    .line 482
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 483
    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v0, v0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 484
    sget-object v1, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-boolean v1, v1, Lorg/telegram/ui/VoIPFragment;->canSwitchToPip:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/voip/VoIPService;->isConverting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 485
    sget-object v1, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v2, v1, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    iget v3, v1, Lorg/telegram/ui/VoIPFragment;->currentAccount:I

    iget-object v1, v1, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v0, v4}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->show(Landroid/app/Activity;IIII)V

    .line 486
    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v0, v0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    if-eqz v0, :cond_0

    .line 487
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    sput v0, Lorg/telegram/ui/Components/voip/VoIPPiPView;->topInset:I

    .line 488
    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v0, v0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    sput v0, Lorg/telegram/ui/Components/voip/VoIPPiPView;->bottomInset:I

    .line 492
    :cond_0
    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v0, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v0}, Lorg/webrtc/TextureViewRenderer;->release()V

    .line 493
    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v0, v0, Lorg/telegram/ui/VoIPFragment;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v0}, Lorg/webrtc/TextureViewRenderer;->release()V

    .line 494
    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v0, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniTextureRenderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v0}, Lorg/webrtc/TextureViewRenderer;->release()V

    .line 495
    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    invoke-direct {v0}, Lorg/telegram/ui/VoIPFragment;->destroy()V

    :cond_1
    const/4 v0, 0x0

    .line 497
    sput-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    return-void
.end method

.method private destroy()V
    .locals 2

    .line 548
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 555
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/voip/VoIPService;->unregisterStateListener(Lorg/telegram/messenger/voip/VoIPService$StateListener;)V

    .line 557
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->webRtcSpeakerAmplitudeEvent:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 558
    iget v0, p0, Lorg/telegram/ui/VoIPFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->voipServiceCreated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 559
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 560
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeInCallActivity:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 561
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->nearEarEvent:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 562
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->pipSource:Lorg/telegram/messenger/pip/PipSource;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 563
    invoke-virtual {v0}, Lorg/telegram/messenger/pip/PipSource;->destroy()V

    .line 564
    iput-object v1, p0, Lorg/telegram/ui/VoIPFragment;->pipSource:Lorg/telegram/messenger/pip/PipSource;

    .line 566
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->addPeopleSheet:Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;

    if-eqz v0, :cond_2

    .line 567
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->dismiss()V

    .line 568
    iput-object v1, p0, Lorg/telegram/ui/VoIPFragment;->addPeopleSheet:Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;

    :cond_2
    return-void
.end method

.method private expandEmoji(Z)V
    .locals 10

    .line 1702
    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->emojiLoaded:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->emojiExpanded:Z

    if-eq v0, p1, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 1705
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->emojiExpanded:Z

    .line 1706
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->voIpCoverView:Lorg/telegram/ui/Components/voip/VoIpCoverView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/voip/VoIpCoverView;->onEmojiExpanded(Z)V

    const/high16 v0, 0x42f00000    # 120.0f

    const v1, 0x3f333333    # 0.7f

    const v2, 0x3e99999a    # 0.3f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz p1, :cond_3

    .line 1708
    sget p1, Lorg/telegram/messenger/SharedConfig;->callEncryptionHintDisplayedCount:I

    const/4 v6, 0x2

    if-ge p1, v6, :cond_1

    .line 1709
    invoke-static {v6}, Lorg/telegram/messenger/SharedConfig;->incrementCallEncryptionHintDisplayed(I)V

    .line 1711
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->encryptionTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    .line 1712
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->hideUIRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 1713
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->hideUiRunnableWaiting:Z

    .line 1715
    iget-object v6, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_2

    .line 1716
    iget-object v6, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v7, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/high16 v7, 0x42400000    # 48.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const v7, 0x3dcccccd    # 0.1f

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v7, 0xc8

    invoke-virtual {v6, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    sget-object v7, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1719
    :cond_2
    iget-object v6, p0, Lorg/telegram/ui/VoIPFragment;->hideEmojiLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1720
    iget-object v6, p0, Lorg/telegram/ui/VoIPFragment;->hideEmojiLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1721
    iget-object v6, p0, Lorg/telegram/ui/VoIPFragment;->hideEmojiLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1722
    iget-object v6, p0, Lorg/telegram/ui/VoIPFragment;->hideEmojiLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v2}, Landroid/view/View;->setScaleX(F)V

    .line 1723
    iget-object v6, p0, Lorg/telegram/ui/VoIPFragment;->hideEmojiLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v2}, Landroid/view/View;->setScaleY(F)V

    .line 1724
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->hideEmojiLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v6, 0x154

    invoke-virtual {v2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1726
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->emojiLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const v6, 0x3fdc28f6    # 1.72f

    invoke-virtual {v2, v6}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v6, 0x430c0000    # 140.0f

    .line 1727
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2, v6}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    .line 1728
    invoke-virtual {v2, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v7, 0x190

    .line 1729
    invoke-virtual {v2, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 1730
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1732
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->emojiRationalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1733
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->emojiRationalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1734
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->emojiRationalLayout:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 1735
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->emojiRationalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 1736
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->emojiRationalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 1737
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->emojiRationalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1738
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->emojiRationalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/VoIPFragment$16;

    invoke-direct {v0, p0}, Lorg/telegram/ui/VoIPFragment$16;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1748
    invoke-virtual {p1, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_0

    .line 1750
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const-wide/16 v6, 0xfa

    if-nez p1, :cond_4

    .line 1751
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v8, 0x32

    invoke-virtual {p1, v8, v9}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v8}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1754
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->hideEmojiLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1755
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->hideEmojiLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v8, 0xe6

    invoke-virtual {p1, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v8, Lorg/telegram/ui/Components/HideViewAfterAnimation;

    iget-object v9, p0, Lorg/telegram/ui/VoIPFragment;->hideEmojiLayout:Landroid/widget/FrameLayout;

    invoke-direct {v8, v9}, Lorg/telegram/ui/Components/HideViewAfterAnimation;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, v8}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1757
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->emojiLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1758
    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1759
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v8, 0x118

    .line 1760
    invoke-virtual {p1, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1761
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1763
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->emojiRationalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1764
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->emojiRationalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/VoIPFragment$17;

    invoke-direct {v0, p0}, Lorg/telegram/ui/VoIPFragment$17;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1776
    invoke-virtual {p1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1778
    :goto_0
    iget p1, p0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->previousState:I

    .line 1779
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateViewState()V

    :cond_5
    :goto_1
    return-void
.end method

.method private finishZoom()V
    .locals 6

    .line 1415
    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->zoomStarted:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1416
    iput-boolean v1, p0, Lorg/telegram/ui/VoIPFragment;->zoomStarted:Z

    const/4 v0, 0x2

    .line 1417
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/VoIPFragment;->zoomBackAnimator:Landroid/animation/ValueAnimator;

    .line 1419
    iget v2, p0, Lorg/telegram/ui/VoIPFragment;->pinchScale:F

    .line 1420
    iget v3, p0, Lorg/telegram/ui/VoIPFragment;->pinchTranslationX:F

    .line 1421
    iget v4, p0, Lorg/telegram/ui/VoIPFragment;->pinchTranslationY:F

    .line 1422
    new-instance v5, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda45;

    invoke-direct {v5, p0, v2, v3, v4}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda45;-><init>(Lorg/telegram/ui/VoIPFragment;FFF)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1430
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->zoomBackAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lorg/telegram/ui/VoIPFragment$11;

    invoke-direct {v2, p0}, Lorg/telegram/ui/VoIPFragment$11;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1440
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->zoomBackAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1441
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->zoomBackAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1442
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->zoomBackAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1444
    :cond_0
    iput-boolean v1, p0, Lorg/telegram/ui/VoIPFragment;->canZoomGesture:Z

    .line 1445
    iput-boolean v1, p0, Lorg/telegram/ui/VoIPFragment;->isInPinchToZoomTouchMode:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private getFullscreenTextureView()Lorg/telegram/ui/Components/voip/VoIPTextureView;
    .locals 1

    .line 1408
    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-eqz v0, :cond_0

    .line 1409
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    return-object v0

    .line 1411
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    return-object v0
.end method

.method public static getInstance()Lorg/telegram/ui/VoIPFragment;
    .locals 1

    .line 501
    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    return-object v0
.end method

.method private initRenderers()V
    .locals 5

    .line 1449
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-static {}, Lorg/telegram/messenger/voip/VideoCapturerDevice;->getEglBase()Lorg/webrtc/EglBase;

    move-result-object v1

    invoke-interface {v1}, Lorg/webrtc/EglBase;->getEglBaseContext()Lorg/webrtc/EglBase$Context;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/VoIPFragment$12;

    invoke-direct {v2, p0}, Lorg/telegram/ui/VoIPFragment$12;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {v0, v1, v2}, Lorg/webrtc/TextureViewRenderer;->init(Lorg/webrtc/EglBase$Context;Lorg/webrtc/RendererCommon$RendererEvents;)V

    .line 1461
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-static {}, Lorg/telegram/messenger/voip/VideoCapturerDevice;->getEglBase()Lorg/webrtc/EglBase;

    move-result-object v1

    invoke-interface {v1}, Lorg/webrtc/EglBase;->getEglBaseContext()Lorg/webrtc/EglBase$Context;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/VoIPFragment$13;

    invoke-direct {v2, p0}, Lorg/telegram/ui/VoIPFragment$13;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    sget-object v3, Lorg/webrtc/EglBase;->CONFIG_PLAIN:[I

    new-instance v4, Lorg/webrtc/GlRectDrawer;

    invoke-direct {v4}, Lorg/webrtc/GlRectDrawer;-><init>()V

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/webrtc/TextureViewRenderer;->init(Lorg/webrtc/EglBase$Context;Lorg/webrtc/RendererCommon$RendererEvents;[ILorg/webrtc/RendererCommon$GlDrawer;)V

    .line 1478
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniTextureRenderer:Lorg/webrtc/TextureViewRenderer;

    invoke-static {}, Lorg/telegram/messenger/voip/VideoCapturerDevice;->getEglBase()Lorg/webrtc/EglBase;

    move-result-object v1

    invoke-interface {v1}, Lorg/webrtc/EglBase;->getEglBaseContext()Lorg/webrtc/EglBase$Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/webrtc/TextureViewRenderer;->init(Lorg/webrtc/EglBase$Context;Lorg/webrtc/RendererCommon$RendererEvents;)V

    return-void
.end method

.method private isLoaded(Landroid/graphics/drawable/Drawable;)Z
    .locals 2

    .line 2531
    instance-of v0, p1, Lorg/telegram/messenger/Emoji$EmojiDrawable;

    if-eqz v0, :cond_0

    .line 2532
    check-cast p1, Lorg/telegram/messenger/Emoji$EmojiDrawable;

    invoke-virtual {p1}, Lorg/telegram/messenger/Emoji$EmojiDrawable;->isLoaded()Z

    move-result p1

    return p1

    .line 2533
    :cond_0
    instance-of v0, p1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 2534
    check-cast p1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    .line 2535
    invoke-virtual {p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    .line 2537
    :cond_1
    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 2538
    instance-of v0, p1, Lorg/telegram/messenger/Emoji$EmojiDrawable;

    if-eqz v0, :cond_3

    check-cast p1, Lorg/telegram/messenger/Emoji$EmojiDrawable;

    invoke-virtual {p1}, Lorg/telegram/messenger/Emoji$EmojiDrawable;->isLoaded()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_4
    return v1
.end method

.method private synthetic lambda$checkEmojiLoaded$34()V
    .locals 3

    .line 2566
    sget v0, Lorg/telegram/messenger/SharedConfig;->callEncryptionHintDisplayedCount:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    .line 2567
    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->incrementCallEncryptionHintDisplayed(I)V

    .line 2568
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->encryptionTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->emojiLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    const/high16 v2, 0x42100000    # 36.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 2569
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->encryptionTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->show()Lorg/telegram/ui/Stories/recorder/HintView2;

    :cond_0
    return-void
.end method

.method private synthetic lambda$createPiPTransition$20(ZFFFFFFFFFFFFFFFFLandroid/animation/ValueAnimator;)V
    .locals 3

    .line 1670
    invoke-virtual/range {p18 .. p18}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v2, v1, v0

    .line 1671
    iput v2, p0, Lorg/telegram/ui/VoIPFragment;->enterTransitionProgress:F

    .line 1672
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateSystemBarColors()V

    if-eqz p1, :cond_0

    mul-float/2addr p2, v2

    mul-float/2addr p3, v0

    add-float/2addr p2, p3

    .line 1676
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 1677
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    .line 1678
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    mul-float/2addr p4, v2

    mul-float/2addr p5, v0

    add-float/2addr p4, p5

    invoke-virtual {p1, p4}, Landroid/view/View;->setTranslationX(F)V

    .line 1679
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    mul-float/2addr p6, v2

    mul-float/2addr p7, v0

    add-float/2addr p6, p7

    invoke-virtual {p1, p6}, Landroid/view/View;->setTranslationY(F)V

    .line 1680
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    mul-float/2addr p8, v2

    mul-float/2addr p9, v0

    add-float/2addr p8, p9

    invoke-virtual {p1, p8}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setCornerRadius(F)V

    .line 1681
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    mul-float p2, p10, v2

    mul-float p3, p11, v0

    add-float/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    mul-float p1, p12, v2

    mul-float p2, p13, v0

    add-float/2addr p1, p2

    .line 1685
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setScaleX(F)V

    .line 1686
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setScaleY(F)V

    mul-float p2, p14, v2

    mul-float p3, p15, v0

    add-float/2addr p2, p3

    mul-float p3, p16, v2

    mul-float p4, p17, v0

    add-float/2addr p3, p4

    .line 1690
    iget-object p4, p0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {p4, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 1691
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationY(F)V

    .line 1692
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    const/high16 p3, 0x40800000    # 4.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, v0

    mul-float/2addr p3, v1

    div-float/2addr p3, p1

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->setRoundCorners(F)V

    .line 1693
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    iget-boolean p1, p1, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->measuredAsFloatingMode:Z

    if-nez p1, :cond_1

    .line 1694
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->setScreenshareMiniProgress(FZ)V

    .line 1696
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$createView$10(Landroid/view/View;)V
    .locals 3

    .line 1206
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 1209
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1211
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->startWaitingFoHideUi()V

    .line 1213
    invoke-virtual {p1}, Lorg/telegram/messenger/voip/VoIPService;->isBluetoothOn()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 1215
    :cond_1
    invoke-virtual {p1}, Lorg/telegram/messenger/voip/VoIPService;->isSpeakerphoneOn()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 1220
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v2, v1, v0}, Lorg/telegram/messenger/voip/VoIPService;->toggleSpeakerphoneOrShowRouteSheet(Landroid/content/Context;ZLjava/lang/Integer;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private synthetic lambda$createView$11(Landroid/view/View;)V
    .locals 0

    .line 1225
    iget-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->lockOnScreen:Z

    if-eqz p1, :cond_0

    return-void

    .line 1226
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->onBackPressed()V

    return-void
.end method

.method private synthetic lambda$createView$13(Landroid/content/Context;Landroid/view/View;)V
    .locals 9

    .line 1229
    iget-boolean p2, p0, Lorg/telegram/ui/VoIPFragment;->lockOnScreen:Z

    if-eqz p2, :cond_0

    return-void

    .line 1230
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->addPeopleSheet:Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;

    if-eqz p2, :cond_1

    .line 1231
    invoke-virtual {p2}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->dismiss()V

    const/4 p2, 0x0

    .line 1232
    iput-object p2, p0, Lorg/telegram/ui/VoIPFragment;->addPeopleSheet:Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;

    .line 1234
    :cond_1
    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;

    iget v2, p0, Lorg/telegram/ui/VoIPFragment;->currentAccount:I

    new-instance v8, Lorg/telegram/ui/DarkBlueThemeResourcesProvider;

    invoke-direct {v8}, Lorg/telegram/ui/DarkBlueThemeResourcesProvider;-><init>()V

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x1

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;-><init>(Landroid/content/Context;IJLorg/telegram/messenger/BirthdayController$BirthdayState;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1235
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    const-wide/16 v1, 0x0

    if-eqz p1, :cond_2

    iget-wide p1, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    goto :goto_0

    :cond_2
    move-wide p1, v1

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/VoIPFragment;->callingUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v3, :cond_3

    iget-wide v1, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    :cond_3
    const/4 v3, 0x2

    new-array v3, v3, [J

    const/4 v4, 0x0

    aput-wide p1, v3, v4

    const/4 p1, 0x1

    aput-wide v1, v3, p1

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->exceptUsers([J)Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda36;

    invoke-direct {p2}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda36;-><init>()V

    .line 1236
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->setOnUsersSelector(Lorg/telegram/messenger/Utilities$Callback2;)Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/VoIPFragment;->addPeopleSheet:Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;

    .line 1242
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-void
.end method

.method private synthetic lambda$createView$14()V
    .locals 1

    .line 1252
    iget v0, p0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    iput v0, p0, Lorg/telegram/ui/VoIPFragment;->previousState:I

    .line 1253
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateViewState()V

    return-void
.end method

.method private synthetic lambda$createView$5(FZ)V
    .locals 1

    .line 878
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->setScreenshareMiniProgress(FZ)V

    return-void
.end method

.method private synthetic lambda$createView$6(Landroid/view/View;)V
    .locals 4

    .line 885
    iget-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/VoIPFragment;->lastContentTapTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    .line 886
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->hideUIRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 887
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->hideUiRunnableWaiting:Z

    .line 888
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/VoIPFragment;->lastContentTapTime:J

    .line 889
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setRelativePosition(Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;)V

    const/4 p1, 0x1

    .line 890
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraIsFullscreen:Z

    .line 891
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->cameraForceExpanded:Z

    .line 892
    iget p1, p0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->previousState:I

    .line 893
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateViewState()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$7(Landroid/view/View;)V
    .locals 4

    .line 913
    iget-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->cameraForceExpanded:Z

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/VoIPFragment;->lastContentTapTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    .line 914
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->hideUIRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 915
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->hideUiRunnableWaiting:Z

    .line 916
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/VoIPFragment;->lastContentTapTime:J

    .line 917
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setRelativePosition(Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;)V

    .line 918
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraIsFullscreen:Z

    .line 919
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->cameraForceExpanded:Z

    .line 920
    iget p1, p0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->previousState:I

    .line 921
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateViewState()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$8(Landroid/view/View;)V
    .locals 4

    .line 949
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/VoIPFragment;->lastContentTapTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    goto :goto_0

    .line 952
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/VoIPFragment;->lastContentTapTime:J

    .line 953
    iget-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->emojiExpanded:Z

    if-eqz p1, :cond_1

    goto :goto_0

    .line 954
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->emojiLoaded:Z

    if-eqz v0, :cond_2

    xor-int/lit8 p1, p1, 0x1

    .line 955
    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPFragment;->expandEmoji(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$createView$9(Landroid/view/View;)V
    .locals 4

    .line 964
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/VoIPFragment;->lastContentTapTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    goto :goto_0

    .line 967
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/VoIPFragment;->lastContentTapTime:J

    .line 968
    iget-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->emojiLoaded:Z

    if-eqz p1, :cond_1

    .line 969
    iget-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->emojiExpanded:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPFragment;->expandEmoji(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$finishZoom$17(FFFLandroid/animation/ValueAnimator;)V
    .locals 2

    .line 1423
    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Float;

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p4

    mul-float/2addr p1, p4

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, p4

    mul-float/2addr v1, v0

    add-float/2addr p1, v1

    .line 1424
    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->pinchScale:F

    mul-float/2addr p2, p4

    .line 1425
    iput p2, p0, Lorg/telegram/ui/VoIPFragment;->pinchTranslationX:F

    mul-float/2addr p3, p4

    .line 1426
    iput p3, p0, Lorg/telegram/ui/VoIPFragment;->pinchTranslationY:F

    .line 1427
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->fragmentView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 267
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->uiVisibilityAlpha:F

    .line 268
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateSystemBarColors()V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 3

    const/4 v0, 0x0

    .line 275
    iput-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->hideUiRunnableWaiting:Z

    .line 276
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->tapToVideoTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->shown()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 277
    :goto_0
    iget-boolean v2, p0, Lorg/telegram/ui/VoIPFragment;->canHideUI:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lorg/telegram/ui/VoIPFragment;->emojiExpanded:Z

    if-nez v2, :cond_1

    if-nez v1, :cond_1

    .line 278
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/telegram/ui/VoIPFragment;->lastContentTapTime:J

    .line 279
    invoke-direct {p0, v0}, Lorg/telegram/ui/VoIPFragment;->showUi(Z)V

    .line 280
    iget v0, p0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    iput v0, p0, Lorg/telegram/ui/VoIPFragment;->previousState:I

    .line 281
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateViewState()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 3

    .line 286
    iget v0, p0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 287
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/voip/ImageWithWavesView;->setMute(ZZ)V

    .line 288
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->gradientLayout:Lorg/telegram/ui/Components/voip/VoIpGradientLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->pause()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onRequestPermissionsResultInternal$41()V
    .locals 1

    .line 2985
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->finish()V

    return-void
.end method

.method private synthetic lambda$onSignalBarsCountChanged$4(I)V
    .locals 2

    .line 616
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->setSignalBarCount(I)V

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 618
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->gradientLayout:Lorg/telegram/ui/Components/voip/VoIpGradientLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->showToBadConnection()V

    .line 619
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    invoke-virtual {p1, v0, v0}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->showBadConnection(ZZ)V

    return-void

    .line 621
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->gradientLayout:Lorg/telegram/ui/Components/voip/VoIpGradientLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->hideBadConnection()V

    .line 622
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->showBadConnection(ZZ)V

    return-void
.end method

.method private synthetic lambda$replaceEmojiToLottieFrame$44(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V
    .locals 0

    const/4 p1, 0x1

    .line 3107
    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPFragment;->updateKeyView(Z)V

    return-void
.end method

.method private synthetic lambda$requestInlinePermissions$43(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 3086
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    if-eqz p1, :cond_0

    .line 3087
    invoke-virtual {p1}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->finish()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$runAcceptCallAnimation$15(IIILandroid/view/ViewGroup$MarginLayoutParams;Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1334
    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Float;

    invoke-virtual {p5}, Ljava/lang/Float;->floatValue()F

    move-result p5

    int-to-float p1, p1

    mul-float/2addr p1, p5

    .line 1336
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    int-to-float p1, p2

    add-int/2addr p2, p3

    int-to-float p2, p2

    mul-float/2addr p2, p5

    sub-float/2addr p1, p2

    float-to-int p1, p1

    .line 1338
    iput p1, p4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1339
    iput p1, p4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1340
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private synthetic lambda$runAcceptCallAnimation$16()V
    .locals 10

    const/4 v0, 0x2

    .line 1364
    new-array v0, v0, [I

    .line 1365
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    .line 1366
    aget v2, v0, v1

    const/4 v3, 0x1

    .line 1367
    aget v4, v0, v3

    .line 1368
    iget-object v5, p0, Lorg/telegram/ui/VoIPFragment;->bottomSpeakerBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v5, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1369
    iget-object v5, p0, Lorg/telegram/ui/VoIPFragment;->bottomSpeakerBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    aget v6, v0, v1

    sub-int v6, v2, v6

    const/high16 v7, 0x42280000    # 42.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v6, v8

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 1370
    iget-object v5, p0, Lorg/telegram/ui/VoIPFragment;->bottomSpeakerBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    aget v6, v0, v3

    sub-int v6, v4, v6

    const/high16 v8, 0x42300000    # 44.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v6, v9

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 1371
    iget-object v5, p0, Lorg/telegram/ui/VoIPFragment;->bottomMuteBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v5, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1372
    iget-object v5, p0, Lorg/telegram/ui/VoIPFragment;->bottomMuteBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    aget v6, v0, v1

    sub-int v6, v2, v6

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v6, v9

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 1373
    iget-object v5, p0, Lorg/telegram/ui/VoIPFragment;->bottomMuteBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    aget v6, v0, v3

    sub-int v6, v4, v6

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v6, v9

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 1374
    iget-object v5, p0, Lorg/telegram/ui/VoIPFragment;->bottomVideoBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v5, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1375
    iget-object v5, p0, Lorg/telegram/ui/VoIPFragment;->bottomVideoBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    aget v6, v0, v1

    sub-int v6, v2, v6

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 1376
    iget-object v5, p0, Lorg/telegram/ui/VoIPFragment;->bottomVideoBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    aget v6, v0, v3

    sub-int v6, v4, v6

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 1377
    iget-object v5, p0, Lorg/telegram/ui/VoIPFragment;->bottomEndCallBtn:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    invoke-virtual {v5, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1378
    iget-object v5, p0, Lorg/telegram/ui/VoIPFragment;->bottomEndCallBtn:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    iget-object v6, p0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v2, v6

    aget v1, v0, v1

    sub-int/2addr v2, v1

    const/high16 v1, 0x42440000    # 49.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v2, v1

    const/high16 v1, 0x42700000    # 60.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v2, v1

    int-to-float v1, v2

    invoke-virtual {v5, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 1379
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->bottomEndCallBtn:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    aget v0, v0, v3

    sub-int/2addr v4, v0

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v4, v0

    int-to-float v0, v4

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 1381
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomEndCallBtn:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1382
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomSpeakerBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1383
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomMuteBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1384
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomVideoBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1387
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomEndCallBtn:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/16 v4, 0xc8

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1388
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomSpeakerBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1389
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomMuteBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1390
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomVideoBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$setFrontalCameraAction$39(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;Landroid/view/View;)V
    .locals 2

    .line 2844
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2846
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->hideUIRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 2847
    iput-boolean v1, p0, Lorg/telegram/ui/VoIPFragment;->hideUiRunnableWaiting:Z

    .line 2848
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2850
    invoke-virtual {p1}, Lorg/telegram/messenger/voip/VoIPService;->isFrontFaceCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2851
    sget v1, Lorg/telegram/messenger/R$string;->AccDescrVoipCamSwitchedToBack:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2853
    :cond_0
    sget v1, Lorg/telegram/messenger/R$string;->AccDescrVoipCamSwitchedToFront:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2855
    :goto_0
    invoke-virtual {p3, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 2857
    :cond_1
    sget-object p3, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;->CAMERA:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;

    invoke-virtual {p1}, Lorg/telegram/messenger/voip/VoIPService;->isFrontFaceCamera()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p3, p1}, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;->setType(Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;Z)V

    .line 2858
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->switchCamera()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$setMicrohoneAction$36(Landroid/view/View;)V
    .locals 5

    .line 2729
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2731
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->hideUIRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 2732
    iput-boolean v1, p0, Lorg/telegram/ui/VoIPFragment;->hideUiRunnableWaiting:Z

    .line 2733
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result v2

    xor-int/lit8 v3, v2, 0x1

    .line 2734
    iget-object v4, p0, Lorg/telegram/ui/VoIPFragment;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v2, :cond_0

    .line 2735
    sget v2, Lorg/telegram/messenger/R$string;->AccDescrVoipMicOff:I

    goto :goto_0

    :cond_0
    sget v2, Lorg/telegram/messenger/R$string;->AccDescrVoipMicOn:I

    :goto_0
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2736
    invoke-virtual {p1, v2}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_1
    const/4 p1, 0x1

    .line 2738
    invoke-virtual {v0, v3, v1, p1}, Lorg/telegram/messenger/voip/VoIPService;->setMicMute(ZZZ)V

    .line 2739
    iget p1, p0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->previousState:I

    .line 2740
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateViewState()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$setSpeakerPhoneAction$38(ILorg/telegram/ui/Components/voip/VoIpSwitchLayout;Lorg/telegram/messenger/voip/VoIPService;Landroid/view/View;)V
    .locals 2

    .line 2822
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 2823
    iget-object p4, p0, Lorg/telegram/ui/VoIPFragment;->hideUIRunnable:Ljava/lang/Runnable;

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 p4, 0x0

    .line 2824
    iput-boolean p4, p0, Lorg/telegram/ui/VoIPFragment;->hideUiRunnableWaiting:Z

    .line 2825
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p4, p1}, Lorg/telegram/messenger/voip/VoIPService;->toggleSpeakerphoneOrShowRouteSheet(Landroid/content/Context;ZLjava/lang/Integer;)V

    const/4 p1, 0x1

    .line 2826
    invoke-direct {p0, p2, p3, p1}, Lorg/telegram/ui/VoIPFragment;->setSpeakerPhoneAction(Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;Lorg/telegram/messenger/voip/VoIPService;Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setVideoAction$37(Landroid/view/View;)V
    .locals 2

    .line 2765
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->hideUIRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 2766
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->hideUiRunnableWaiting:Z

    .line 2767
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    const-string v0, "android.permission.CAMERA"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 2768
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 2770
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->toggleCameraInput()V

    return-void
.end method

.method private synthetic lambda$showErrorDialog$42(Landroid/content/DialogInterface;)V
    .locals 0

    .line 3080
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->finish()V

    return-void
.end method

.method private synthetic lambda$startTransitionFromPiP$18(Landroid/animation/Animator;)V
    .locals 5

    const/4 v0, 0x0

    .line 1566
    sput-boolean v0, Lorg/telegram/ui/Components/voip/VoIPPiPView;->switchingToPip:Z

    .line 1567
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->finish()V

    .line 1569
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1570
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1571
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->addIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1572
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->emojiLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1573
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->statusLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1574
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->buttonsLayout:Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1575
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomShadow:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1576
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->topShadow:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1577
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1579
    new-instance v0, Lorg/telegram/ui/VoIPFragment$15;

    invoke-direct {v0, p0}, Lorg/telegram/ui/VoIPFragment$15;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1590
    invoke-virtual {p1, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1591
    invoke-virtual {p1, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1592
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private synthetic lambda$startTransitionFromPiP$19()V
    .locals 4

    .line 1551
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1552
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const/4 v0, 0x1

    .line 1553
    invoke-virtual {p0, v0}, Lorg/telegram/ui/VoIPFragment;->createPiPTransition(Z)Landroid/animation/Animator;

    move-result-object v1

    .line 1554
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1555
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->addIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1556
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->emojiLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1557
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->statusLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1558
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->buttonsLayout:Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1559
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->bottomShadow:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1560
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->topShadow:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1561
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1562
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1564
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    iput-boolean v0, v2, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->switchingToPip:Z

    .line 1565
    new-instance v0, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda40;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda40;-><init>(Lorg/telegram/ui/VoIPFragment;Landroid/animation/Animator;)V

    const-wide/16 v1, 0x20

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic lambda$updateButtons$35(Landroid/view/View;)V
    .locals 0

    .line 2694
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2695
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->hideUIRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 2696
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->hideUiRunnableWaiting:Z

    .line 2697
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/voip/VoIPService;->hangUp()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateViewState$21()V
    .locals 1

    .line 1883
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->finish()V

    return-void
.end method

.method private synthetic lambda$updateViewState$22(Lorg/telegram/messenger/voip/VoIPService;Landroid/view/View;)V
    .locals 0

    .line 1883
    new-instance p2, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda44;

    invoke-direct {p2, p0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda44;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1884
    iget p2, p0, Lorg/telegram/ui/VoIPFragment;->selectedRating:I

    if-lez p2, :cond_0

    .line 1885
    invoke-virtual {p1, p2}, Lorg/telegram/messenger/voip/VoIPService;->sendCallRating(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateViewState$23(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 2

    .line 1882
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->endCloseLayout:Lorg/telegram/ui/Components/voip/EndCloseLayout;

    new-instance v1, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda41;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda41;-><init>(Lorg/telegram/ui/VoIPFragment;Lorg/telegram/messenger/voip/VoIPService;)V

    const/4 p1, 0x1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/voip/EndCloseLayout;->switchToClose(Landroid/view/View$OnClickListener;Z)V

    return-void
.end method

.method private synthetic lambda$updateViewState$24()V
    .locals 1

    .line 1901
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->finish()V

    return-void
.end method

.method private synthetic lambda$updateViewState$25(Lorg/telegram/messenger/voip/VoIPService;Landroid/view/View;)V
    .locals 0

    .line 1901
    new-instance p2, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda33;

    invoke-direct {p2, p0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda33;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1902
    iget p2, p0, Lorg/telegram/ui/VoIPFragment;->selectedRating:I

    if-lez p2, :cond_0

    .line 1903
    invoke-virtual {p1, p2}, Lorg/telegram/messenger/voip/VoIPService;->sendCallRating(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateViewState$26(I)V
    .locals 0

    .line 1909
    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->selectedRating:I

    return-void
.end method

.method private synthetic lambda$updateViewState$27()V
    .locals 1

    .line 1943
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->finish()V

    return-void
.end method

.method private synthetic lambda$updateViewState$28(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 1963
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->finish()V

    return-void
.end method

.method private synthetic lambda$updateViewState$29([ZLorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 3

    const/4 p2, 0x0

    const/4 p3, 0x1

    .line 1965
    aput-boolean p3, p1, p2

    const/16 p1, 0x11

    .line 1966
    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    .line 1967
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    const-class v1, Lorg/telegram/messenger/voip/VoIPService;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1968
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->callingUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const-string/jumbo v2, "user_id"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1969
    const-string v0, "is_outgoing"

    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1970
    const-string/jumbo p3, "start_incall_activity"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1971
    const-string/jumbo p3, "video_call"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1972
    const-string p3, "can_video_call"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1973
    const-string p2, "account"

    iget p3, p0, Lorg/telegram/ui/VoIPFragment;->currentAccount:I

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1975
    :try_start_0
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 1977
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$updateViewState$30([ZLandroid/content/DialogInterface;)V
    .locals 0

    const/4 p2, 0x0

    .line 1983
    aget-boolean p1, p1, p2

    if-nez p1, :cond_0

    .line 1984
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->finish()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateViewState$31()V
    .locals 1

    .line 2004
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->finish()V

    return-void
.end method

.method private synthetic lambda$updateViewState$32()V
    .locals 1

    .line 2007
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->finish()V

    return-void
.end method

.method private synthetic lambda$updateViewState$33()V
    .locals 2

    .line 2233
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->isAppearing:Z

    .line 2234
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private onBackPressed()V
    .locals 3

    .line 443
    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->isFinished:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->switchingToPip:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 446
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->previewDialog:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 447
    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->dismiss(ZZ)V

    return-void

    .line 450
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->cameraForceExpanded:Z

    if-eqz v0, :cond_2

    .line 451
    iput-boolean v1, p0, Lorg/telegram/ui/VoIPFragment;->cameraForceExpanded:Z

    .line 452
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setRelativePosition(Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;)V

    .line 453
    iput-boolean v1, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraIsFullscreen:Z

    .line 454
    iget v0, p0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    iput v0, p0, Lorg/telegram/ui/VoIPFragment;->previousState:I

    .line 455
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateViewState()V

    return-void

    .line 458
    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->emojiExpanded:Z

    if-eqz v0, :cond_3

    .line 459
    invoke-direct {p0, v1}, Lorg/telegram/ui/VoIPFragment;->expandEmoji(Z)V

    return-void

    .line 461
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->emojiRationalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4

    goto :goto_0

    .line 464
    :cond_4
    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->canSwitchToPip:Z

    if-eqz v0, :cond_6

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isConverting()Z

    move-result v0

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->lockOnScreen:Z

    if-nez v0, :cond_6

    .line 465
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lorg/telegram/messenger/pip/utils/PipUtils;->checkAnyPipPermissions(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 466
    invoke-virtual {p0}, Lorg/telegram/ui/VoIPFragment;->switchToPip()V

    return-void

    .line 468
    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->requestInlinePermissions()V

    return-void

    .line 471
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->finish()V

    :cond_7
    :goto_0
    return-void
.end method

.method public static onPause()V
    .locals 1

    .line 3010
    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    if-eqz v0, :cond_0

    .line 3011
    invoke-virtual {v0}, Lorg/telegram/ui/VoIPFragment;->onPauseInternal()V

    .line 3013
    :cond_0
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->getInstance()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3014
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->getInstance()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->onPause()V

    :cond_1
    return-void
.end method

.method public static onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 2962
    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    if-eqz v0, :cond_0

    .line 2963
    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/VoIPFragment;->onRequestPermissionsResultInternal(I[Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method

.method private onRequestPermissionsResultInternal(I[Ljava/lang/String;[I)V
    .locals 2

    const/16 p2, 0x65

    const/4 v0, 0x0

    if-ne p1, p2, :cond_3

    .line 2970
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedState()Lorg/telegram/messenger/voip/VoIPServiceState;

    move-result-object p2

    if-nez p2, :cond_0

    .line 2971
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->finish()V

    return-void

    .line 2974
    :cond_0
    array-length p2, p3

    if-lez p2, :cond_1

    aget p2, p3, v0

    if-nez p2, :cond_1

    .line 2975
    new-instance p2, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, p2}, Lorg/telegram/ui/VoIPFragment;->runAcceptCallAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2981
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-virtual {p2, v1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 2982
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedState()Lorg/telegram/messenger/voip/VoIPServiceState;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 2983
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedState()Lorg/telegram/messenger/voip/VoIPServiceState;

    move-result-object p2

    invoke-interface {p2}, Lorg/telegram/messenger/voip/VoIPServiceState;->declineIncomingCall()V

    .line 2985
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    new-instance p3, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-static {p2, p3, p1}, Lorg/telegram/ui/Components/voip/VoIPHelper;->permissionDenied(Landroid/app/Activity;Ljava/lang/Runnable;I)V

    return-void

    :cond_3
    :goto_0
    const/16 p2, 0x66

    if-ne p1, p2, :cond_5

    .line 2991
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedState()Lorg/telegram/messenger/voip/VoIPServiceState;

    move-result-object p1

    if-nez p1, :cond_4

    .line 2992
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->finish()V

    return-void

    .line 2995
    :cond_4
    array-length p1, p3

    if-lez p1, :cond_5

    aget p1, p3, v0

    if-nez p1, :cond_5

    .line 2996
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->toggleCameraInput()V

    :cond_5
    return-void
.end method

.method public static onResume()V
    .locals 1

    .line 3019
    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    if-eqz v0, :cond_0

    .line 3020
    invoke-virtual {v0}, Lorg/telegram/ui/VoIPFragment;->onResumeInternal()V

    .line 3022
    :cond_0
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->getInstance()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3023
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->getInstance()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->onResume()V

    :cond_1
    return-void
.end method

.method private requestInlinePermissions()V
    .locals 3

    .line 3085
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    new-instance v1, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda37;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda37;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/AlertsCreator;->createDrawOverlayPermissionDialog(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;Z)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    .line 3089
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void
.end method

.method private runAcceptCallAnimation(Ljava/lang/Runnable;)V
    .locals 16

    move-object/from16 v1, p0

    .line 1296
    iget-object v0, v1, Lorg/telegram/ui/VoIPFragment;->bottomVideoBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v6, 0x2

    if-nez v0, :cond_0

    .line 1297
    new-array v0, v6, [I

    .line 1298
    iget-object v2, v1, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1300
    iget-object v0, v1, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->stopAnimations()V

    .line 1301
    invoke-interface/range {p1 .. p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 1305
    :cond_0
    iget-object v0, v1, Lorg/telegram/ui/VoIPFragment;->bottomEndCallBtn:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1306
    iget-object v0, v1, Lorg/telegram/ui/VoIPFragment;->bottomSpeakerBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1307
    iget-object v0, v1, Lorg/telegram/ui/VoIPFragment;->bottomMuteBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1308
    iget-object v0, v1, Lorg/telegram/ui/VoIPFragment;->bottomVideoBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1309
    new-array v0, v6, [I

    .line 1310
    iget-object v2, v1, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1311
    iget-object v0, v1, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->stopAnimations()V

    .line 1313
    iget-object v7, v1, Lorg/telegram/ui/VoIPFragment;->bottomEndCallBtn:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    sget v8, Lorg/telegram/messenger/R$drawable;->calls_decline:I

    sget v0, Lorg/telegram/messenger/R$string;->VoipEndCall2:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v9, -0x1

    const v10, -0xfe2d4

    invoke-virtual/range {v7 .. v13}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->setData(IIILjava/lang/String;ZZ)V

    .line 1314
    iget-object v0, v1, Lorg/telegram/ui/VoIPFragment;->bottomSpeakerBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    sget-object v2, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;->SPEAKER:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;

    const/4 v7, 0x0

    invoke-virtual {v0, v2, v7}, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;->setType(Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;Z)V

    .line 1315
    iget-object v0, v1, Lorg/telegram/ui/VoIPFragment;->bottomMuteBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    sget-object v2, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;->MICRO:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;

    invoke-virtual {v0, v2, v7}, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;->setType(Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;Z)V

    .line 1316
    iget-object v0, v1, Lorg/telegram/ui/VoIPFragment;->bottomVideoBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    sget-object v2, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;->VIDEO:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;

    const/4 v8, 0x1

    invoke-virtual {v0, v2, v8}, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;->setType(Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;Z)V

    .line 1317
    iget-object v0, v1, Lorg/telegram/ui/VoIPFragment;->bottomEndCallBtn:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1318
    iget-object v0, v1, Lorg/telegram/ui/VoIPFragment;->bottomSpeakerBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1319
    iget-object v0, v1, Lorg/telegram/ui/VoIPFragment;->bottomMuteBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1320
    iget-object v0, v1, Lorg/telegram/ui/VoIPFragment;->bottomVideoBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1321
    iget-object v0, v1, Lorg/telegram/ui/VoIPFragment;->bottomEndCallBtn:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/view/View;->setAlpha(F)V

    .line 1322
    iget-object v0, v1, Lorg/telegram/ui/VoIPFragment;->bottomSpeakerBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v0, v9}, Landroid/view/View;->setAlpha(F)V

    .line 1323
    iget-object v0, v1, Lorg/telegram/ui/VoIPFragment;->bottomMuteBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v0, v9}, Landroid/view/View;->setAlpha(F)V

    .line 1324
    iget-object v0, v1, Lorg/telegram/ui/VoIPFragment;->bottomVideoBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v0, v9}, Landroid/view/View;->setAlpha(F)V

    .line 1325
    iget-object v0, v1, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1326
    invoke-virtual {v5}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v3

    const/high16 v0, 0x42500000    # 52.0f

    .line 1327
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    const/high16 v0, 0x41c00000    # 24.0f

    .line 1328
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v0, 0x42780000    # 62.0f

    .line 1329
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    .line 1331
    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1332
    new-array v0, v6, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v11

    .line 1333
    new-instance v0, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda31;

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/ui/VoIPFragment;IIILandroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {v11, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1343
    iget-object v0, v1, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v3

    const/4 v4, 0x4

    new-array v5, v4, [F

    aput v3, v5, v7

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v5, v8

    aput v3, v5, v6

    const/4 v12, 0x3

    aput v3, v5, v12

    invoke-static {v0, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1344
    iget-object v2, v1, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-virtual {v2}, Landroid/view/View;->getScaleY()F

    move-result v13

    new-array v14, v4, [F

    aput v13, v14, v7

    aput v3, v14, v8

    aput v3, v14, v6

    aput v3, v14, v12

    invoke-static {v2, v5, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1345
    iget-object v3, v1, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v13

    iget-object v14, v1, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {v14}, Landroid/view/View;->getAlpha()F

    move-result v14

    new-array v15, v4, [F

    aput v13, v15, v7

    aput v14, v15, v8

    aput v9, v15, v6

    aput v9, v15, v12

    invoke-static {v3, v5, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 1346
    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v11, v4, v7

    aput-object v0, v4, v8

    aput-object v2, v4, v6

    aput-object v3, v4, v12

    invoke-virtual {v10, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v2, 0x190

    .line 1347
    invoke-virtual {v10, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1348
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v10, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1349
    new-instance v0, Lorg/telegram/ui/VoIPFragment$10;

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/VoIPFragment$10;-><init>(Lorg/telegram/ui/VoIPFragment;Ljava/lang/Runnable;)V

    invoke-virtual {v10, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1361
    invoke-virtual {v10}, Landroid/animation/AnimatorSet;->start()V

    .line 1363
    new-instance v0, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda32;

    invoke-direct {v0, v1}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda32;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    const-wide/16 v2, 0x85

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setFrontalCameraAction(Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;Lorg/telegram/messenger/voip/VoIPService;Z)V
    .locals 2

    .line 2832
    iget-boolean p3, p0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-nez p3, :cond_0

    .line 2833
    sget-object p2, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;->CAMERA:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;->setType(Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;Z)V

    const/4 p2, 0x0

    .line 2834
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;->setOnBtnClickedListener(Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$VoIpButtonView$OnBtnClickedListener;)V

    .line 2835
    invoke-virtual {p1, p3}, Landroid/view/View;->setEnabled(Z)V

    return-void

    :cond_0
    const/4 p3, 0x1

    .line 2837
    invoke-virtual {p1, p3}, Landroid/view/View;->setEnabled(Z)V

    .line 2838
    invoke-virtual {p2}, Lorg/telegram/messenger/voip/VoIPService;->isFrontFaceCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2839
    sget-object v0, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;->CAMERA:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;

    invoke-virtual {p2}, Lorg/telegram/messenger/voip/VoIPService;->isSwitchingCamera()Z

    move-result v1

    xor-int/2addr p3, v1

    invoke-virtual {p1, v0, p3}, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;->setType(Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;Z)V

    goto :goto_0

    .line 2841
    :cond_1
    sget-object p3, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;->CAMERA:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;

    invoke-virtual {p2}, Lorg/telegram/messenger/voip/VoIPService;->isSwitchingCamera()Z

    move-result v0

    invoke-virtual {p1, p3, v0}, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;->setType(Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;Z)V

    .line 2843
    :goto_0
    new-instance p3, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda42;

    invoke-direct {p3, p0, p2, p1}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda42;-><init>(Lorg/telegram/ui/VoIPFragment;Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;)V

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;->setOnBtnClickedListener(Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$VoIpButtonView$OnBtnClickedListener;)V

    return-void
.end method

.method private setInsets(Landroid/view/WindowInsets;)V
    .locals 2

    .line 506
    iput-object p1, p0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    .line 507
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->buttonsLayout:Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 508
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 509
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 510
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->addIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 511
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v0, 0x42600000    # 56.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 512
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->statusLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v0, 0x43070000    # 135.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 513
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->emojiLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v0, 0x41880000    # 17.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 514
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v0, 0x42ba0000    # 93.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 515
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->hideEmojiLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 516
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->emojiRationalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v0, 0x42ec0000    # 118.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 517
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->rateCallLayout:Lorg/telegram/ui/Components/voip/RateCallLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v0, 0x43be0000    # 380.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 518
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 519
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 520
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setInsets(Landroid/view/WindowInsets;)V

    .line 521
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setInsets(Landroid/view/WindowInsets;)V

    .line 522
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->fragmentView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 523
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->previewDialog:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;

    if-eqz p1, :cond_0

    .line 524
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->setBottomPadding(I)V

    :cond_0
    return-void
.end method

.method private setMicrohoneAction(Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;Lorg/telegram/messenger/voip/VoIPService;Z)V
    .locals 2

    .line 2722
    sget-object v0, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;->MICRO:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;

    invoke-virtual {p2}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;->setType(Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;Z)V

    .line 2723
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {p2}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result p2

    invoke-virtual {v0, p2, p3}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setMuted(ZZ)V

    .line 2728
    new-instance p2, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda38;

    invoke-direct {p2, p0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda38;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;->setOnBtnClickedListener(Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$VoIpButtonView$OnBtnClickedListener;)V

    return-void
.end method

.method private setSpeakerPhoneAction(Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;Lorg/telegram/messenger/voip/VoIPService;Z)V
    .locals 3

    .line 2809
    invoke-static {}, Lorg/telegram/messenger/voip/VoipAudioManager;->get()Lorg/telegram/messenger/voip/VoipAudioManager;

    move-result-object p3

    .line 2810
    invoke-virtual {p2}, Lorg/telegram/messenger/voip/VoIPService;->isBluetoothOn()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2812
    sget-object p3, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;->BLUETOOTH:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;

    invoke-virtual {p1, p3, v2}, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;->setType(Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;Z)V

    const/4 v2, 0x2

    goto :goto_0

    .line 2813
    :cond_0
    invoke-virtual {p3}, Lorg/telegram/messenger/voip/VoipAudioManager;->isSpeakerphoneOn()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 2815
    sget-object p3, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;->SPEAKER:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;

    invoke-virtual {p1, p3, v1}, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;->setType(Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;Z)V

    goto :goto_0

    .line 2818
    :cond_1
    sget-object p3, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;->SPEAKER:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;

    invoke-virtual {p1, p3, v2}, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;->setType(Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;Z)V

    move v2, v1

    .line 2820
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 2821
    new-instance p3, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda34;

    invoke-direct {p3, p0, v2, p1, p2}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda34;-><init>(Lorg/telegram/ui/VoIPFragment;ILorg/telegram/ui/Components/voip/VoIpSwitchLayout;Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;->setOnBtnClickedListener(Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$VoIpButtonView$OnBtnClickedListener;)V

    return-void
.end method

.method private setVideoAction(Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;Lorg/telegram/messenger/voip/VoIPService;Z)V
    .locals 3

    .line 2747
    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2750
    :cond_0
    invoke-virtual {p2}, Lorg/telegram/messenger/voip/VoIPService;->isVideoAvailable()Z

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 2753
    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-eqz v0, :cond_3

    .line 2754
    invoke-virtual {p2}, Lorg/telegram/messenger/voip/VoIPService;->isScreencast()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 2755
    sget-object p2, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;->VIDEO:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;

    invoke-virtual {p1, p2, v2, p3}, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;->setType(Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;ZZ)V

    goto :goto_2

    .line 2757
    :cond_2
    sget-object p2, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;->VIDEO:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;

    invoke-virtual {p1, p2, v2, p3}, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;->setType(Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;ZZ)V

    goto :goto_2

    .line 2760
    :cond_3
    sget-object p2, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;->VIDEO:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;

    invoke-virtual {p1, p2, v1, p3}, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;->setType(Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;ZZ)V

    .line 2764
    :goto_2
    new-instance p2, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda43;

    invoke-direct {p2, p0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda43;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;->setOnBtnClickedListener(Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$VoIpButtonView$OnBtnClickedListener;)V

    .line 2773
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void

    .line 2775
    :cond_4
    sget-object p2, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;->VIDEO:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;->setType(Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;Z)V

    const/4 p2, 0x0

    .line 2776
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2777
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public static show(Landroid/app/Activity;I)V
    .locals 5

    .line 315
    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 316
    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v0}, Lorg/webrtc/TextureViewRenderer;->release()V

    .line 318
    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v0, v0, Lorg/telegram/ui/VoIPFragment;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v0}, Lorg/webrtc/TextureViewRenderer;->release()V

    .line 319
    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v0, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniTextureRenderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v0}, Lorg/webrtc/TextureViewRenderer;->release()V

    .line 320
    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v0, v0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->finishImmediate()V

    .line 323
    :cond_0
    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    invoke-direct {v0}, Lorg/telegram/ui/VoIPFragment;->destroy()V

    :cond_1
    const/4 v0, 0x0

    .line 325
    sput-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    .line 327
    :cond_2
    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    if-nez v0, :cond_8

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_2

    .line 330
    :cond_3
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->getInstance()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 331
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedState()Lorg/telegram/messenger/voip/VoIPServiceState;

    move-result-object v2

    if-nez v2, :cond_5

    goto/16 :goto_2

    .line 334
    :cond_5
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedState()Lorg/telegram/messenger/voip/VoIPServiceState;

    move-result-object v2

    invoke-interface {v2}, Lorg/telegram/messenger/voip/VoIPServiceState;->getUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-nez v2, :cond_6

    goto/16 :goto_2

    .line 337
    :cond_6
    new-instance v2, Lorg/telegram/ui/VoIPFragment;

    invoke-direct {v2, p1}, Lorg/telegram/ui/VoIPFragment;-><init>(I)V

    .line 338
    iput-object p0, v2, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    .line 339
    sput-object v2, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    .line 340
    new-instance p1, Lorg/telegram/ui/VoIPFragment$1;

    xor-int/lit8 v3, v0, 0x1

    invoke-direct {p1, p0, v3, v2}, Lorg/telegram/ui/VoIPFragment$1;-><init>(Landroid/app/Activity;ZLorg/telegram/ui/VoIPFragment;)V

    .line 398
    sget-object v3, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    const-string v4, "keyguard"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v4

    iput-boolean v4, v3, Lorg/telegram/ui/VoIPFragment;->deviceIsLocked:Z

    .line 400
    const-string v3, "power"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 402
    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    .line 403
    sget-object v4, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    xor-int/2addr v3, v1

    iput-boolean v3, v4, Lorg/telegram/ui/VoIPFragment;->screenWasWakeup:Z

    .line 404
    iget-boolean v3, v4, Lorg/telegram/ui/VoIPFragment;->deviceIsLocked:Z

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->setLockOnScreen(Z)V

    .line 405
    iput-object p1, v2, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    .line 407
    new-instance v3, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda2;

    invoke-direct {v3, v2}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 416
    const-string/jumbo v3, "window"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 417
    invoke-virtual {p1}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->createWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 418
    invoke-interface {v3, p1, v4}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 419
    invoke-virtual {v2, p0}, Lorg/telegram/ui/VoIPFragment;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v3

    .line 420
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-eqz v0, :cond_7

    const/4 p1, 0x0

    .line 423
    iput p1, v2, Lorg/telegram/ui/VoIPFragment;->enterTransitionProgress:F

    .line 424
    invoke-virtual {v2}, Lorg/telegram/ui/VoIPFragment;->startTransitionFromPiP()V

    goto :goto_1

    :cond_7
    const/high16 p1, 0x3f800000    # 1.0f

    .line 426
    iput p1, v2, Lorg/telegram/ui/VoIPFragment;->enterTransitionProgress:F

    .line 427
    invoke-direct {v2}, Lorg/telegram/ui/VoIPFragment;->updateSystemBarColors()V

    .line 430
    :goto_1
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 431
    invoke-virtual {p1}, Lorg/telegram/messenger/voip/VoIPService;->getRemoteVideoState()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_8

    .line 432
    invoke-static {p0}, Lorg/telegram/messenger/pip/utils/PipUtils;->checkPermissions(Landroid/content/Context;)I

    move-result p1

    if-ne p1, v1, :cond_8

    .line 433
    sget-object p1, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    new-instance v0, Lorg/telegram/messenger/pip/PipSource$Builder;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/pip/PipSource$Builder;-><init>(Landroid/app/Activity;Lorg/telegram/messenger/pip/source/IPipSourceDelegate;)V

    const-string/jumbo p0, "voip-fragment-pip"

    .line 434
    invoke-virtual {v0, p0}, Lorg/telegram/messenger/pip/PipSource$Builder;->setTagPrefix(Ljava/lang/String;)Lorg/telegram/messenger/pip/PipSource$Builder;

    move-result-object p0

    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v0, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    .line 435
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/pip/PipSource$Builder;->setContentView(Landroid/view/View;)Lorg/telegram/messenger/pip/PipSource$Builder;

    move-result-object p0

    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v0, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    .line 436
    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->getPlaceholderView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/pip/PipSource$Builder;->setPlaceholderView(Landroid/view/View;)Lorg/telegram/messenger/pip/PipSource$Builder;

    move-result-object p0

    .line 437
    invoke-virtual {p0}, Lorg/telegram/messenger/pip/PipSource$Builder;->build()Lorg/telegram/messenger/pip/PipSource;

    move-result-object p0

    iput-object p0, p1, Lorg/telegram/ui/VoIPFragment;->pipSource:Lorg/telegram/messenger/pip/PipSource;

    :cond_8
    :goto_2
    return-void
.end method

.method private showAcceptDeclineView(ZZ)V
    .locals 4

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p2, :cond_1

    .line 2577
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    if-eqz p1, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    if-eqz p1, :cond_3

    .line 2579
    iget-object v3, p0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    .line 2580
    iget-object v3, p0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2581
    iget-object v3, p0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-ne v3, v0, :cond_2

    .line 2582
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2583
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {v0, p2}, Landroid/view/View;->setAlpha(F)V

    .line 2585
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    :cond_3
    if-nez p1, :cond_4

    .line 2587
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2588
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2589
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/VoIPFragment$22;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VoIPFragment$22;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 2594
    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 2598
    :cond_4
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 2599
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_5
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method private showCallingUserAvatarMini(ZZ)V
    .locals 9

    .line 2430
    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz p1, :cond_4

    const-wide/16 v6, 0x96

    const p1, 0x3dcccccd    # 0.1f

    if-eqz v0, :cond_3

    .line 2432
    iget-object v8, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_3

    .line 2433
    iget-object v8, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2434
    iget-object v8, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    invoke-virtual {v8, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2435
    iget-boolean v2, p0, Lorg/telegram/ui/VoIPFragment;->emojiExpanded:Z

    if-nez v2, :cond_2

    if-eqz p2, :cond_1

    .line 2437
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 2438
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_2

    .line 2440
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 2441
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    const/high16 p2, 0x43070000    # 135.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 2442
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_2

    :cond_2
    if-eqz p2, :cond_6

    .line 2446
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    invoke-virtual {p2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 2447
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 2448
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setScaleX(F)V

    .line 2449
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setScaleY(F)V

    goto :goto_2

    :cond_3
    if-nez v0, :cond_6

    .line 2452
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 2453
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2454
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    invoke-virtual {p2, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 2455
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/VoIPFragment$21;

    invoke-direct {p2, p0}, Lorg/telegram/ui/VoIPFragment$21;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    .line 2456
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 2461
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_2

    .line 2464
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2465
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 2466
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    invoke-virtual {p1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 2467
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    invoke-virtual {p1, v5}, Landroid/view/View;->setScaleX(F)V

    .line 2468
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    invoke-virtual {p1, v5}, Landroid/view/View;->setScaleY(F)V

    .line 2469
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2471
    :cond_6
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    if-eqz v0, :cond_7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_7
    invoke-virtual {p1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method private showErrorDialog(Ljava/lang/CharSequence;)V
    .locals 2

    .line 3071
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3074
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/DarkAlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/DarkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lorg/telegram/messenger/R$string;->VoipFailed:I

    .line 3075
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    .line 3076
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->OK:I

    .line 3077
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 3078
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    const/4 v0, 0x1

    .line 3079
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 3080
    new-instance v0, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda39;

    invoke-direct {v0, p0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda39;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private showFloatingLayout(IZ)V
    .locals 10

    .line 2348
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 2349
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    iget-boolean v2, p0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setUiVisible(Z)V

    :cond_1
    if-nez p2, :cond_2

    .line 2351
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->cameraShowingAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_2

    .line 2352
    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 2353
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->cameraShowingAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_2
    const/16 v0, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x3f333333    # 0.7f

    if-nez p1, :cond_6

    if-eqz p2, :cond_5

    .line 2357
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_11

    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eqz p2, :cond_11

    .line 2358
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->cameraShowingAnimator:Landroid/animation/Animator;

    if-eqz p2, :cond_3

    .line 2359
    invoke-virtual {p2}, Landroid/animation/Animator;->removeAllListeners()V

    .line 2360
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->cameraShowingAnimator:Landroid/animation/Animator;

    invoke-virtual {p2}, Landroid/animation/Animator;->cancel()V

    .line 2362
    :cond_3
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2363
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 2364
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v7

    new-array v8, v1, [F

    aput v7, v8, v4

    aput v3, v8, v2

    invoke-static {v0, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-array v3, v2, [Landroid/animation/Animator;

    aput-object v0, v3, v4

    .line 2363
    invoke-virtual {p2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2366
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 2367
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 2368
    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v6

    new-array v7, v1, [F

    aput v6, v7, v4

    aput v5, v7, v2

    invoke-static {v0, v3, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 2369
    invoke-virtual {v3}, Landroid/view/View;->getScaleX()F

    move-result v7

    new-array v8, v1, [F

    aput v7, v8, v4

    aput v5, v8, v2

    invoke-static {v3, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v0, v1, v4

    aput-object v3, v1, v2

    .line 2367
    invoke-virtual {p2, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2372
    :cond_4
    iput-object p2, p0, Lorg/telegram/ui/VoIPFragment;->cameraShowingAnimator:Landroid/animation/Animator;

    .line 2373
    new-instance v0, Lorg/telegram/ui/VoIPFragment$20;

    invoke-direct {v0, p0}, Lorg/telegram/ui/VoIPFragment$20;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2383
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->cameraShowingAnimator:Landroid/animation/Animator;

    const-wide/16 v0, 0xfa

    invoke-virtual {p2, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object p2

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2384
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->cameraShowingAnimator:Landroid/animation/Animator;

    const-wide/16 v0, 0x32

    invoke-virtual {p2, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 2385
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->cameraShowingAnimator:Landroid/animation/Animator;

    invoke-virtual {p2}, Landroid/animation/Animator;->start()V

    goto/16 :goto_5

    .line 2388
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 2392
    :cond_6
    iget-object v6, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_7

    goto :goto_0

    :cond_7
    move v6, p2

    goto :goto_1

    :cond_8
    :goto_0
    move v6, v4

    :goto_1
    if-eqz p2, :cond_b

    .line 2396
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_c

    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-nez p2, :cond_c

    .line 2397
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-ne p2, v0, :cond_9

    .line 2398
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {p2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 2399
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {p2, v5}, Landroid/view/View;->setScaleX(F)V

    .line 2400
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {p2, v5}, Landroid/view/View;->setScaleY(F)V

    .line 2401
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2403
    :cond_9
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->cameraShowingAnimator:Landroid/animation/Animator;

    if-eqz p2, :cond_a

    .line 2404
    invoke-virtual {p2}, Landroid/animation/Animator;->removeAllListeners()V

    .line 2405
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->cameraShowingAnimator:Landroid/animation/Animator;

    invoke-virtual {p2}, Landroid/animation/Animator;->cancel()V

    .line 2407
    :cond_a
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2408
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v1, [F

    fill-array-data v7, :array_0

    .line 2409
    invoke-static {v0, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v5, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    sget-object v7, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v8, v1, [F

    fill-array-data v8, :array_1

    .line 2410
    invoke-static {v5, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-object v7, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    sget-object v8, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v9, v1, [F

    fill-array-data v9, :array_2

    .line 2411
    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const/4 v8, 0x3

    new-array v8, v8, [Landroid/animation/Animator;

    aput-object v0, v8, v4

    aput-object v5, v8, v2

    aput-object v7, v8, v1

    .line 2408
    invoke-virtual {p2, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2413
    iput-object p2, p0, Lorg/telegram/ui/VoIPFragment;->cameraShowingAnimator:Landroid/animation/Animator;

    const-wide/16 v7, 0x96

    .line 2414
    invoke-virtual {p2, v7, v8}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/animation/Animator;->start()V

    goto :goto_2

    .line 2417
    :cond_b
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2419
    :cond_c
    :goto_2
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_d

    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eq p2, v1, :cond_e

    :cond_d
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    iget v0, p2, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->relativePositionToSetX:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_e

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2420
    invoke-virtual {p2, v0, v0}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setRelativePosition(FF)V

    .line 2421
    iput-boolean v2, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraIsFullscreen:Z

    .line 2423
    :cond_e
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    if-ne p1, v1, :cond_f

    move v0, v2

    goto :goto_3

    :cond_f
    move v0, v4

    :goto_3
    invoke-virtual {p2, v0, v6}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setFloatingMode(ZZ)V

    if-eq p1, v1, :cond_10

    goto :goto_4

    :cond_10
    move v2, v4

    .line 2424
    :goto_4
    iput-boolean v2, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraIsFullscreen:Z

    .line 2426
    :cond_11
    :goto_5
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private showUi(Z)V
    .locals 10

    .line 2299
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->uiVisibilityAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 2300
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x96

    if-nez p1, :cond_1

    .line 2304
    iget-boolean v6, p0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    if-eqz v6, :cond_1

    .line 2306
    iget-object v6, p0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    invoke-virtual {v6, v8}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    sget-object v8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v6, v8}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2307
    iget-object v6, p0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    invoke-virtual {v6, v9}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2308
    iget-object v6, p0, Lorg/telegram/ui/VoIPFragment;->addIcon:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    invoke-virtual {v6, v9}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2309
    iget-object v6, p0, Lorg/telegram/ui/VoIPFragment;->emojiLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    invoke-virtual {v6, v9}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2310
    iget-object v6, p0, Lorg/telegram/ui/VoIPFragment;->callingUserTitle:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    invoke-virtual {v6, v9}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2311
    iget-object v6, p0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    invoke-virtual {v6, v9}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2312
    iget-object v6, p0, Lorg/telegram/ui/VoIPFragment;->buttonsLayout:Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;

    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2313
    iget-object v6, p0, Lorg/telegram/ui/VoIPFragment;->bottomShadow:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2314
    iget-object v6, p0, Lorg/telegram/ui/VoIPFragment;->topShadow:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2315
    iget v6, p0, Lorg/telegram/ui/VoIPFragment;->uiVisibilityAlpha:F

    new-array v0, v0, [F

    aput v6, v0, v2

    aput v3, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/VoIPFragment;->uiVisibilityAnimator:Landroid/animation/ValueAnimator;

    .line 2316
    iget-object v3, p0, Lorg/telegram/ui/VoIPFragment;->statusbarAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2317
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->uiVisibilityAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2318
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->uiVisibilityAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 2319
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->hideUIRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 2320
    iput-boolean v2, p0, Lorg/telegram/ui/VoIPFragment;->hideUiRunnableWaiting:Z

    .line 2321
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->buttonsLayout:Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 2322
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->encryptionTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    const/16 v0, 0x96

    goto/16 :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 2323
    iget-boolean v6, p0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    if-nez v6, :cond_2

    .line 2324
    iget-object v6, p0, Lorg/telegram/ui/VoIPFragment;->tapToVideoTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v6}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    .line 2325
    iget-object v6, p0, Lorg/telegram/ui/VoIPFragment;->encryptionTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v6}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    .line 2326
    iget-object v6, p0, Lorg/telegram/ui/VoIPFragment;->callingUserTitle:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    sget-object v8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v6, v8}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2327
    iget-object v6, p0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2328
    iget-object v6, p0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2329
    iget-object v6, p0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2330
    iget-object v6, p0, Lorg/telegram/ui/VoIPFragment;->addIcon:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2331
    iget-object v6, p0, Lorg/telegram/ui/VoIPFragment;->emojiLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2332
    iget-object v6, p0, Lorg/telegram/ui/VoIPFragment;->buttonsLayout:Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;

    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2333
    iget-object v3, p0, Lorg/telegram/ui/VoIPFragment;->bottomShadow:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2334
    iget-object v3, p0, Lorg/telegram/ui/VoIPFragment;->topShadow:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2335
    iget v3, p0, Lorg/telegram/ui/VoIPFragment;->uiVisibilityAlpha:F

    new-array v0, v0, [F

    aput v3, v0, v2

    aput v7, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/VoIPFragment;->uiVisibilityAnimator:Landroid/animation/ValueAnimator;

    .line 2336
    iget-object v3, p0, Lorg/telegram/ui/VoIPFragment;->statusbarAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2337
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->uiVisibilityAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2338
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->uiVisibilityAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 2339
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->buttonsLayout:Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    move v0, v2

    .line 2342
    :goto_0
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    .line 2343
    iget-object v3, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    xor-int/2addr p1, v1

    invoke-virtual {v3, p1}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->requestFullscreen(Z)V

    .line 2344
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    iget-boolean v3, p0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    if-eqz v3, :cond_3

    const/high16 v2, 0x42a00000    # 80.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    :cond_3
    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private startWaitingFoHideUi()V
    .locals 3

    .line 1783
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1785
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->hideUIRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 1786
    iput-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->hideUiRunnableWaiting:Z

    .line 1787
    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->canHideUI:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    if-eqz v0, :cond_0

    .line 1788
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->hideUIRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    const/4 v0, 0x1

    .line 1789
    iput-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->hideUiRunnableWaiting:Z

    :cond_0
    return-void
.end method

.method private toggleCameraInput()V
    .locals 5

    .line 2872
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2874
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2876
    iget-boolean v1, p0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-nez v1, :cond_0

    .line 2877
    sget v1, Lorg/telegram/messenger/R$string;->AccDescrVoipCamOn:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2879
    :cond_0
    sget v1, Lorg/telegram/messenger/R$string;->AccDescrVoipCamOff:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2881
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->fragmentView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 2883
    :cond_1
    iget-boolean v1, p0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    const/4 v2, 0x0

    if-nez v1, :cond_4

    .line 2884
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->previewDialog:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;

    if-nez v1, :cond_5

    .line 2885
    invoke-virtual {v0, v2}, Lorg/telegram/messenger/voip/VoIPService;->createCaptureDevice(Z)V

    .line 2886
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isFrontFaceCamera()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2887
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->switchCamera()V

    .line 2889
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->setLockOnScreen(Z)V

    const/4 v0, 0x2

    .line 2890
    new-array v0, v0, [I

    .line 2891
    iget-object v3, p0, Lorg/telegram/ui/VoIPFragment;->bottomVideoBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2892
    new-instance v3, Lorg/telegram/ui/VoIPFragment$24;

    iget-object v4, p0, Lorg/telegram/ui/VoIPFragment;->fragmentView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    aget v2, v0, v2

    int-to-float v2, v2

    aget v0, v0, v1

    int-to-float v0, v0

    invoke-direct {v3, p0, v4, v2, v0}, Lorg/telegram/ui/VoIPFragment$24;-><init>(Lorg/telegram/ui/VoIPFragment;Landroid/content/Context;FF)V

    iput-object v3, p0, Lorg/telegram/ui/VoIPFragment;->previewDialog:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;

    .line 2945
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    if-eqz v0, :cond_3

    .line 2946
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->setBottomPadding(I)V

    .line 2948
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->fragmentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->previewDialog:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    .line 2952
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->saveCameraLastBitmap()V

    .line 2953
    invoke-virtual {v0, v2, v2}, Lorg/telegram/messenger/voip/VoIPService;->setVideoState(ZI)V

    .line 2954
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->clearCamera()V

    .line 2956
    iget v0, p0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    iput v0, p0, Lorg/telegram/ui/VoIPFragment;->previousState:I

    .line 2957
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateViewState()V

    :cond_5
    return-void
.end method

.method private updateButtons(Z)V
    .locals 10

    .line 2603
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 2608
    new-instance v2, Landroid/transition/TransitionSet;

    invoke-direct {v2}, Landroid/transition/TransitionSet;-><init>()V

    .line 2609
    new-instance v3, Lorg/telegram/ui/VoIPFragment$23;

    invoke-direct {v3, p0}, Lorg/telegram/ui/VoIPFragment$23;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    const-wide/16 v4, 0xfa

    .line 2640
    invoke-virtual {v3, v4, v5}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    move-result-object v3

    sget-object v7, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v3, v7}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v3

    new-instance v8, Landroid/transition/ChangeBounds;

    invoke-direct {v8}, Landroid/transition/ChangeBounds;-><init>()V

    .line 2641
    invoke-virtual {v8, v4, v5}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 2642
    const-class v3, Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    invoke-virtual {v2, v3, v1}, Landroid/transition/Transition;->excludeChildren(Ljava/lang/Class;Z)Landroid/transition/Transition;

    .line 2643
    const-class v3, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v2, v3, v1}, Landroid/transition/Transition;->excludeChildren(Ljava/lang/Class;Z)Landroid/transition/Transition;

    .line 2644
    iget-object v3, p0, Lorg/telegram/ui/VoIPFragment;->buttonsLayout:Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;

    invoke-static {v3, v2}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 2647
    :cond_1
    iget v2, p0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    const/16 v3, 0xb

    const/16 v4, 0x8

    if-ne v2, v3, :cond_2

    .line 2648
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomSpeakerBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2649
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomVideoBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2650
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomMuteBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2651
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomEndCallBtn:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_2
    const/4 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/16 v7, 0xf

    const/4 v8, 0x0

    if-eq v2, v7, :cond_8

    const/16 v9, 0x11

    if-ne v2, v9, :cond_3

    goto/16 :goto_2

    .line 2675
    :cond_3
    sget-object v2, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    if-nez v2, :cond_4

    :goto_0
    return-void

    .line 2678
    :cond_4
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isScreencast()Z

    move-result v2

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-eqz v2, :cond_6

    .line 2679
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->bottomSpeakerBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-direct {p0, v2, v0, p1}, Lorg/telegram/ui/VoIPFragment;->setFrontalCameraAction(Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;Lorg/telegram/messenger/voip/VoIPService;Z)V

    .line 2680
    iget-boolean v2, p0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    if-eqz v2, :cond_7

    .line 2681
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2682
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    .line 2685
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->bottomSpeakerBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/VoIPFragment;->setSpeakerPhoneAction(Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;Lorg/telegram/messenger/voip/VoIPService;Z)V

    .line 2686
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2687
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2689
    :cond_7
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->bottomVideoBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-direct {p0, v1, v0, v8}, Lorg/telegram/ui/VoIPFragment;->setVideoAction(Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;Lorg/telegram/messenger/voip/VoIPService;Z)V

    .line 2690
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->bottomMuteBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/VoIPFragment;->setMicrohoneAction(Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;Lorg/telegram/messenger/voip/VoIPService;Z)V

    .line 2692
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomEndCallBtn:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    sget v1, Lorg/telegram/messenger/R$drawable;->calls_decline:I

    sget v2, Lorg/telegram/messenger/R$string;->VoipEndCall2:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v2, -0x1

    const v3, -0xfe2d4

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->setData(IIILjava/lang/String;ZZ)V

    .line 2693
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomEndCallBtn:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    new-instance v1, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    .line 2656
    :cond_8
    :goto_2
    iget-object v1, v0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    if-eqz v1, :cond_c

    iget-boolean v1, v1, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->video:Z

    if-eqz v1, :cond_c

    if-ne v2, v7, :cond_c

    .line 2657
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isScreencast()Z

    move-result v1

    if-nez v1, :cond_a

    iget-boolean v1, p0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-nez v1, :cond_9

    iget-boolean v1, p0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-eqz v1, :cond_a

    .line 2658
    :cond_9
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->bottomSpeakerBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/VoIPFragment;->setFrontalCameraAction(Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;Lorg/telegram/messenger/voip/VoIPService;Z)V

    .line 2659
    iget-boolean v1, p0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    if-eqz v1, :cond_b

    .line 2660
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_3

    .line 2663
    :cond_a
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->bottomSpeakerBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/VoIPFragment;->setSpeakerPhoneAction(Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;Lorg/telegram/messenger/voip/VoIPService;Z)V

    .line 2664
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2666
    :cond_b
    :goto_3
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->bottomVideoBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-direct {p0, v1, v0, v8}, Lorg/telegram/ui/VoIPFragment;->setVideoAction(Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;Lorg/telegram/messenger/voip/VoIPService;Z)V

    .line 2667
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->bottomMuteBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/VoIPFragment;->setMicrohoneAction(Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;Lorg/telegram/messenger/voip/VoIPService;Z)V

    goto :goto_4

    .line 2669
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomSpeakerBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2670
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomVideoBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2671
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomMuteBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2673
    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomEndCallBtn:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2703
    :goto_5
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomSpeakerBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_d

    .line 2704
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomSpeakerBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    iput v8, v0, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;->animationDelay:I

    const/16 v8, 0x10

    .line 2707
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomVideoBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e

    .line 2708
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomVideoBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    iput v8, v0, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;->animationDelay:I

    add-int/lit8 v8, v8, 0x10

    .line 2711
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomMuteBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_f

    .line 2712
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomMuteBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    iput v8, v0, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;->animationDelay:I

    add-int/lit8 v8, v8, 0x10

    .line 2715
    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomEndCallBtn:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_10

    .line 2716
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomEndCallBtn:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    iput v8, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->animationDelay:I

    .line 2718
    :cond_10
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateSpeakerPhoneIcon()V

    return-void
.end method

.method private updateKeyView(Z)V
    .locals 9

    .line 2475
    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->emojiLoaded:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2478
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 2484
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2485
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getEncryptionKey()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 2486
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getGA()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 2487
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2489
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    :goto_1
    return-void

    .line 2494
    :cond_2
    array-length v1, v0

    int-to-long v1, v1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lorg/telegram/messenger/Utilities;->computeSHA256([BIJ)[B

    move-result-object v0

    .line 2495
    invoke-static {v0}, Lorg/telegram/messenger/voip/EncryptionKeyEmojifier;->emojifyForCall([B)[Ljava/lang/String;

    move-result-object v0

    move v1, v3

    :goto_2
    const/4 v2, 0x4

    if-ge v1, v2, :cond_6

    .line 2498
    aget-object v2, v0, v1

    invoke-static {v2}, Lorg/telegram/messenger/Emoji;->preloadEmoji(Ljava/lang/CharSequence;)V

    .line 2499
    aget-object v2, v0, v1

    invoke-static {v2}, Lorg/telegram/messenger/Emoji;->getEmojiDrawable(Ljava/lang/CharSequence;)Lorg/telegram/messenger/Emoji$EmojiDrawable;

    move-result-object v2

    if-eqz v2, :cond_5

    const/high16 v4, 0x42200000    # 40.0f

    .line 2501
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v2, v3, v3, v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2502
    invoke-virtual {v2}, Lorg/telegram/messenger/Emoji$EmojiDrawable;->preload()V

    const/4 v4, 0x1

    .line 2503
    new-array v5, v4, [I

    .line 2504
    new-instance v6, Landroid/text/TextPaint;

    invoke-direct {v6, v4}, Landroid/text/TextPaint;-><init>(I)V

    const/high16 v4, 0x41e00000    # 28.0f

    .line 2505
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2506
    aget-object v4, v0, v1

    .line 2507
    invoke-virtual {v6}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v6

    invoke-static {v4, v6, v3, v5}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z[I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 2508
    invoke-virtual {p0, v4, v5}, Lorg/telegram/ui/VoIPFragment;->replaceEmojiToLottieFrame(Ljava/lang/CharSequence;[I)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 2511
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->emojiDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v1

    instance-of v5, v2, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v5, :cond_3

    check-cast v2, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getDocumentId()J

    move-result-wide v5

    iget-wide v7, v4, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v2, v5, v7

    if-nez v2, :cond_3

    .line 2512
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->emojiDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v1

    check-cast v2, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    goto :goto_3

    .line 2514
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->emojiDrawables:[Landroid/graphics/drawable/Drawable;

    new-instance v5, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    const/16 v6, 0x15

    iget v7, p0, Lorg/telegram/ui/VoIPFragment;->currentAccount:I

    invoke-direct {v5, v6, v7, v4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;-><init>(IILorg/telegram/tgnet/TLRPC$Document;)V

    aput-object v5, v2, v1

    move-object v2, v5

    .line 2516
    :goto_3
    aget-object v4, v0, v1

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setupEmojiThumb(Ljava/lang/String;)V

    .line 2517
    iget-object v4, p0, Lorg/telegram/ui/VoIPFragment;->emojiViews:[Lorg/telegram/ui/Components/BackupImageView;

    aget-object v4, v4, v1

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/BackupImageView;->setAnimatedEmojiDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    .line 2518
    iget-object v4, p0, Lorg/telegram/ui/VoIPFragment;->emojiViews:[Lorg/telegram/ui/Components/BackupImageView;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    goto :goto_4

    .line 2521
    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/VoIPFragment;->emojiViews:[Lorg/telegram/ui/Components/BackupImageView;

    aget-object v4, v4, v1

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2523
    :goto_4
    iget-object v4, p0, Lorg/telegram/ui/VoIPFragment;->emojiViews:[Lorg/telegram/ui/Components/BackupImageView;

    aget-object v4, v4, v1

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2525
    :cond_5
    iget-object v4, p0, Lorg/telegram/ui/VoIPFragment;->emojiDrawables:[Landroid/graphics/drawable/Drawable;

    aput-object v2, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 2527
    :cond_6
    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPFragment;->checkEmojiLoaded(Z)V

    return-void
.end method

.method private updateSpeakerPhoneIcon()V
    .locals 2

    .line 2782
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2787
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isBluetoothOn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2788
    sget v0, Lorg/telegram/messenger/R$drawable;->calls_bluetooth:I

    goto :goto_0

    .line 2789
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/voip/VoipAudioManager;->get()Lorg/telegram/messenger/voip/VoipAudioManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/voip/VoipAudioManager;->isSpeakerphoneOn()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2790
    sget v0, Lorg/telegram/messenger/R$drawable;->calls_speaker:I

    goto :goto_0

    .line 2792
    :cond_2
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isHeadsetPlugged()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2793
    sget v0, Lorg/telegram/messenger/R$drawable;->calls_menu_headset:I

    goto :goto_0

    .line 2795
    :cond_3
    sget v0, Lorg/telegram/messenger/R$drawable;->calls_menu_phone:I

    .line 2798
    :goto_0
    iget v1, p0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIconResId:I

    if-eq v1, v0, :cond_4

    .line 2800
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->updateImageViewImageAnimated(Landroid/widget/ImageView;I)V

    goto :goto_1

    .line 2802
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2804
    :goto_1
    iput v0, p0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIconResId:I

    return-void
.end method

.method private updateSystemBarColors()V
    .locals 4

    .line 3002
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->overlayPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x42cc0000    # 102.0f

    iget v2, p0, Lorg/telegram/ui/VoIPFragment;->uiVisibilityAlpha:F

    mul-float/2addr v2, v1

    iget v1, p0, Lorg/telegram/ui/VoIPFragment;->enterTransitionProgress:F

    mul-float/2addr v2, v1

    float-to-int v1, v2

    const/high16 v2, -0x1000000

    invoke-static {v2, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3003
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->overlayBottomPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/VoIPFragment;->fillNaviagtionBarValue:F

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v1, v3

    add-float/2addr v1, v3

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v1, v3

    iget v3, p0, Lorg/telegram/ui/VoIPFragment;->enterTransitionProgress:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-static {v2, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3004
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->fragmentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 3005
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private updateViewState()V
    .locals 28

    move-object/from16 v0, p0

    .line 1795
    iget-boolean v1, v0, Lorg/telegram/ui/VoIPFragment;->isFinished:Z

    if-nez v1, :cond_6c

    iget-boolean v1, v0, Lorg/telegram/ui/VoIPFragment;->switchingToPip:Z

    if-eqz v1, :cond_0

    goto/16 :goto_37

    :cond_0
    const/4 v1, 0x0

    .line 1798
    iput-boolean v1, v0, Lorg/telegram/ui/VoIPFragment;->lockOnScreen:Z

    .line 1799
    iget v2, v0, Lorg/telegram/ui/VoIPFragment;->previousState:I

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v1

    .line 1804
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedState()Lorg/telegram/messenger/voip/VoIPServiceState;

    move-result-object v5

    .line 1805
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v6

    .line 1807
    iget v7, v0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    const/16 v10, 0xc

    const/16 v12, 0x10

    const/4 v14, 0x5

    const/4 v15, 0x3

    const/high16 v16, 0x42700000    # 60.0f

    const/16 v11, 0x8

    const/4 v3, 0x4

    const/4 v13, 0x2

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    if-eq v7, v4, :cond_18

    if-eq v7, v13, :cond_18

    if-eq v7, v15, :cond_15

    if-eq v7, v3, :cond_b

    if-eq v7, v14, :cond_15

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_7

    .line 1847
    :pswitch_0
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    sget v7, Lorg/telegram/messenger/R$string;->VoipBusy:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v1, v2}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->setText(Ljava/lang/String;ZZ)V

    .line 1848
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {v5, v4}, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->setRetryMod(Z)V

    .line 1849
    iput-boolean v1, v0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    .line 1850
    iput-boolean v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    :goto_1
    move v5, v1

    move v14, v5

    move v12, v4

    goto/16 :goto_8

    .line 1836
    :pswitch_1
    iget v5, v0, Lorg/telegram/ui/VoIPFragment;->previousState:I

    if-eq v5, v12, :cond_19

    .line 1837
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    sget v7, Lorg/telegram/messenger/R$string;->VoipRinging:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v4, v2}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->setText(Ljava/lang/String;ZZ)V

    goto/16 :goto_7

    .line 1810
    :pswitch_2
    iput-boolean v1, v0, Lorg/telegram/ui/VoIPFragment;->lockOnScreen:Z

    .line 1811
    iget-object v7, v0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {v7, v1}, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->setRetryMod(Z)V

    if-eqz v5, :cond_2

    .line 1812
    invoke-interface {v5}, Lorg/telegram/messenger/voip/VoIPServiceState;->isConference()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1813
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    sget v7, Lorg/telegram/messenger/R$string;->VoipInConferenceCallBranding:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v1, v2}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->setText(Ljava/lang/String;ZZ)V

    .line 1814
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {v5, v9}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    :cond_2
    if-eqz v5, :cond_3

    .line 1815
    invoke-interface {v5}, Lorg/telegram/messenger/voip/VoIPServiceState;->isCallingVideo()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1816
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    sget v7, Lorg/telegram/messenger/R$string;->VoipInVideoCallBranding:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v1, v2}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->setText(Ljava/lang/String;ZZ)V

    .line 1817
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v5, v7}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 1819
    :cond_3
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    sget v7, Lorg/telegram/messenger/R$string;->VoipInCallBranding:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v1, v2}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->setText(Ljava/lang/String;ZZ)V

    .line 1820
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {v5, v9}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 1841
    :pswitch_3
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    sget v7, Lorg/telegram/messenger/R$string;->VoipRequesting:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v4, v2}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->setText(Ljava/lang/String;ZZ)V

    goto/16 :goto_7

    .line 1833
    :pswitch_4
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    sget v7, Lorg/telegram/messenger/R$string;->VoipWaiting:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v4, v2}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->setText(Ljava/lang/String;ZZ)V

    goto/16 :goto_7

    .line 1828
    :pswitch_5
    iget v5, v0, Lorg/telegram/ui/VoIPFragment;->previousState:I

    if-eq v5, v10, :cond_19

    .line 1829
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    sget v7, Lorg/telegram/messenger/R$string;->VoipExchangingKeys:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v4, v2}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->setText(Ljava/lang/String;ZZ)V

    goto/16 :goto_7

    :pswitch_6
    if-eqz v6, :cond_4

    .line 1866
    invoke-virtual {v6}, Lorg/telegram/messenger/voip/VoIPService;->hasRate()Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v4

    goto :goto_2

    :cond_4
    move v5, v1

    .line 1867
    :goto_2
    iget-object v7, v0, Lorg/telegram/ui/VoIPFragment;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->saveCameraLastBitmap()V

    if-eqz v5, :cond_a

    .line 1868
    iget-boolean v5, v0, Lorg/telegram/ui/VoIPFragment;->isFinished:Z

    if-nez v5, :cond_a

    .line 1869
    iget-boolean v5, v0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    if-eqz v5, :cond_5

    .line 1871
    new-array v5, v13, [I

    .line 1872
    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    .line 1873
    iget-object v10, v0, Lorg/telegram/ui/VoIPFragment;->bottomEndCallBtn:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    invoke-virtual {v10, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1874
    aget v10, v5, v1

    sub-int/2addr v7, v10

    iget-object v10, v0, Lorg/telegram/ui/VoIPFragment;->bottomEndCallBtn:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    const/high16 v22, 0x42500000    # 52.0f

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v23

    sub-int v10, v10, v23

    div-int/2addr v10, v13

    sub-int/2addr v7, v10

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sub-int/2addr v7, v10

    .line 1875
    iget-object v10, v0, Lorg/telegram/ui/VoIPFragment;->endCloseLayout:Lorg/telegram/ui/Components/voip/EndCloseLayout;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1876
    iput v7, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1877
    iput v7, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1878
    iget-object v7, v0, Lorg/telegram/ui/VoIPFragment;->endCloseLayout:Lorg/telegram/ui/Components/voip/EndCloseLayout;

    aget v5, v5, v4

    int-to-float v5, v5

    invoke-virtual {v7, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 1879
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->endCloseLayout:Lorg/telegram/ui/Components/voip/EndCloseLayout;

    invoke-virtual {v5, v8}, Landroid/view/View;->setAlpha(F)V

    .line 1880
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->endCloseLayout:Lorg/telegram/ui/Components/voip/EndCloseLayout;

    invoke-virtual {v5, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1881
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->buttonsLayout:Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;

    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const-wide/16 v12, 0x50

    invoke-virtual {v5, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1882
    new-instance v5, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda10;

    invoke-direct {v5, v0, v6}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/VoIPFragment;Lorg/telegram/messenger/voip/VoIPService;)V

    const-wide/16 v12, 0x2

    invoke-static {v5, v12, v13}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_3

    .line 1889
    :cond_5
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->buttonsLayout:Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1890
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->endCloseLayout:Lorg/telegram/ui/Components/voip/EndCloseLayout;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v12, 0x41900000    # 18.0f

    .line 1891
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    iput v13, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1892
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    iput v12, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/high16 v12, 0x42100000    # 36.0f

    .line 1893
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    iput v12, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1894
    iget-object v13, v0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    if-eqz v13, :cond_6

    .line 1895
    invoke-virtual {v13}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v13

    add-int/2addr v12, v13

    iput v12, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :cond_6
    const/16 v12, 0x50

    .line 1897
    iput v12, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1898
    iget-object v12, v0, Lorg/telegram/ui/VoIPFragment;->endCloseLayout:Lorg/telegram/ui/Components/voip/EndCloseLayout;

    invoke-virtual {v12, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1899
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->endCloseLayout:Lorg/telegram/ui/Components/voip/EndCloseLayout;

    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const-wide/16 v12, 0xfa

    invoke-virtual {v5, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1900
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->endCloseLayout:Lorg/telegram/ui/Components/voip/EndCloseLayout;

    new-instance v12, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda11;

    invoke-direct {v12, v0, v6}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/VoIPFragment;Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {v5, v12, v1}, Lorg/telegram/ui/Components/voip/EndCloseLayout;->switchToClose(Landroid/view/View$OnClickListener;Z)V

    .line 1908
    :goto_3
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->rateCallLayout:Lorg/telegram/ui/Components/voip/RateCallLayout;

    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1909
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->rateCallLayout:Lorg/telegram/ui/Components/voip/RateCallLayout;

    new-instance v12, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda12;

    invoke-direct {v12, v0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {v5, v12}, Lorg/telegram/ui/Components/voip/RateCallLayout;->show(Lorg/telegram/ui/Components/voip/RateCallLayout$OnRateSelected;)V

    .line 1910
    iget-boolean v5, v0, Lorg/telegram/ui/VoIPFragment;->emojiExpanded:Z

    if-eqz v5, :cond_7

    .line 1911
    iput-boolean v1, v0, Lorg/telegram/ui/VoIPFragment;->emojiExpanded:Z

    .line 1912
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->hideEmojiLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const v12, 0x3e99999a    # 0.3f

    invoke-virtual {v5, v12}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const-wide/16 v12, 0xfa

    invoke-virtual {v5, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    sget-object v12, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v5, v12}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v13, Lorg/telegram/ui/Components/HideViewAfterAnimation;

    iget-object v7, v0, Lorg/telegram/ui/VoIPFragment;->hideEmojiLayout:Landroid/widget/FrameLayout;

    invoke-direct {v13, v7}, Lorg/telegram/ui/Components/HideViewAfterAnimation;-><init>(Landroid/view/View;)V

    invoke-virtual {v5, v13}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1913
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->emojiLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const-wide/16 v14, 0xfa

    invoke-virtual {v5, v14, v15}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1914
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->emojiRationalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const v14, 0x3f333333    # 0.7f

    invoke-virtual {v5, v14}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v14}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const/high16 v14, 0x42f00000    # 120.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    neg-int v14, v14

    int-to-float v14, v14

    invoke-virtual {v5, v14}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v14, Lorg/telegram/ui/Components/HideViewAfterAnimation;

    iget-object v15, v0, Lorg/telegram/ui/VoIPFragment;->hideEmojiLayout:Landroid/widget/FrameLayout;

    invoke-direct {v14, v15}, Lorg/telegram/ui/Components/HideViewAfterAnimation;-><init>(Landroid/view/View;)V

    invoke-virtual {v5, v14}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const-wide/16 v14, 0xfa

    invoke-virtual {v5, v14, v15}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1916
    :cond_7
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->emojiViews:[Lorg/telegram/ui/Components/BackupImageView;

    array-length v12, v5

    move v14, v1

    :goto_4
    if-ge v14, v12, :cond_8

    aget-object v15, v5, v14

    .line 1917
    invoke-virtual {v15}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v15

    invoke-virtual {v15, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v15

    invoke-virtual {v15, v9}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v15

    invoke-virtual {v15, v9}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v15

    sget-object v7, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v15, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    move/from16 v24, v14

    const-wide/16 v13, 0xfa

    invoke-virtual {v7, v13, v14}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewPropertyAnimator;->start()V

    add-int/lit8 v14, v24, 0x1

    goto :goto_4

    .line 1919
    :cond_8
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTitle:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const-wide/16 v12, 0x46

    invoke-virtual {v5, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v7, Lorg/telegram/ui/VoIPFragment$18;

    invoke-direct {v7, v0}, Lorg/telegram/ui/VoIPFragment$18;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {v5, v7}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    .line 1925
    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1926
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    sget-object v7, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v5, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const-wide/16 v12, 0xfa

    invoke-virtual {v5, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1927
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1928
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    invoke-virtual {v5, v1, v4}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->showReconnect(ZZ)V

    .line 1929
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    invoke-virtual {v5, v1, v4}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->showBadConnection(ZZ)V

    .line 1930
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->setDrawCallIcon()V

    .line 1931
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/voip/ImageWithWavesView;->onNeedRating()V

    .line 1932
    invoke-direct {v0, v4}, Lorg/telegram/ui/VoIPFragment;->updateButtons(Z)V

    .line 1933
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->bottomEndCallBtn:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1934
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v5, v9}, Landroid/view/View;->setAlpha(F)V

    .line 1935
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1936
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v5, v9}, Landroid/view/View;->setAlpha(F)V

    .line 1937
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1938
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->previewDialog:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;

    if-eqz v5, :cond_9

    .line 1939
    invoke-virtual {v5, v1, v1}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->dismiss(ZZ)V

    .line 1941
    :cond_9
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const-wide/16 v12, 0xfa

    invoke-virtual {v5, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_7

    .line 1943
    :cond_a
    new-instance v5, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda13;

    invoke-direct {v5, v0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    const-wide/16 v12, 0xc8

    invoke-static {v5, v12, v13}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto/16 :goto_7

    .line 1947
    :cond_b
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    sget v7, Lorg/telegram/messenger/R$string;->VoipFailed:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v1, v2}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->setText(Ljava/lang/String;ZZ)V

    .line 1948
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v5

    .line 1949
    const-string v7, "ERROR_UNKNOWN"

    if-eqz v5, :cond_c

    invoke-virtual {v5}, Lorg/telegram/messenger/voip/VoIPService;->getLastError()Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    :cond_c
    move-object v5, v7

    .line 1950
    :goto_5
    invoke-static {v5, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    const-wide/16 v12, 0x3e8

    if-nez v7, :cond_14

    .line 1951
    const-string v7, "ERROR_INCOMPATIBLE"

    invoke-static {v5, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 1952
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->callingUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v7, v5}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1953
    sget v7, Lorg/telegram/messenger/R$string;->VoipPeerIncompatible:I

    new-array v12, v4, [Ljava/lang/Object;

    aput-object v5, v12, v1

    const-string v5, "VoipPeerIncompatible"

    invoke-static {v5, v7, v12}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1954
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/telegram/ui/VoIPFragment;->showErrorDialog(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 1955
    :cond_d
    const-string v7, "ERROR_PEER_OUTDATED"

    invoke-static {v5, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 1956
    iget-boolean v5, v0, Lorg/telegram/ui/VoIPFragment;->isVideoCall:Z

    if-eqz v5, :cond_e

    .line 1957
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->callingUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v5

    .line 1958
    sget v7, Lorg/telegram/messenger/R$string;->VoipPeerVideoOutdated:I

    new-array v12, v4, [Ljava/lang/Object;

    aput-object v5, v12, v1

    const-string v5, "VoipPeerVideoOutdated"

    invoke-static {v5, v7, v12}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1959
    new-array v7, v4, [Z

    .line 1960
    new-instance v12, Lorg/telegram/ui/ActionBar/DarkAlertDialog$Builder;

    iget-object v13, v0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    invoke-direct {v12, v13}, Lorg/telegram/ui/ActionBar/DarkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v13, Lorg/telegram/messenger/R$string;->VoipFailed:I

    .line 1961
    invoke-static {v13}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v12

    .line 1962
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-virtual {v12, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v5

    sget v12, Lorg/telegram/messenger/R$string;->Cancel:I

    .line 1963
    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda14;

    invoke-direct {v13, v0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {v5, v12, v13}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v5

    sget v12, Lorg/telegram/messenger/R$string;->VoipPeerVideoOutdatedMakeVoice:I

    .line 1964
    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda15;

    invoke-direct {v13, v0, v7}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/VoIPFragment;[Z)V

    invoke-virtual {v5, v12, v13}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v5

    .line 1980
    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v5

    .line 1981
    invoke-virtual {v5, v4}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1982
    new-instance v12, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda16;

    invoke-direct {v12, v0, v7}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/VoIPFragment;[Z)V

    invoke-virtual {v5, v12}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_7

    .line 1988
    :cond_e
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->callingUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v5

    .line 1989
    sget v7, Lorg/telegram/messenger/R$string;->VoipPeerOutdated:I

    new-array v12, v4, [Ljava/lang/Object;

    aput-object v5, v12, v1

    const-string v5, "VoipPeerOutdated"

    invoke-static {v5, v7, v12}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1990
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/telegram/ui/VoIPFragment;->showErrorDialog(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 1992
    :cond_f
    const-string v7, "ERROR_PRIVACY"

    invoke-static {v5, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 1993
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->callingUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v7, v5}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1994
    sget v7, Lorg/telegram/messenger/R$string;->CallNotAvailable:I

    new-array v12, v4, [Ljava/lang/Object;

    aput-object v5, v12, v1

    invoke-static {v7, v12}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1995
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/telegram/ui/VoIPFragment;->showErrorDialog(Ljava/lang/CharSequence;)V

    .line 1996
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    iget v7, v0, Lorg/telegram/ui/VoIPFragment;->currentAccount:I

    iget-object v12, v0, Lorg/telegram/ui/VoIPFragment;->callingUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v12, v12, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const/4 v14, 0x0

    invoke-static {v5, v7, v12, v13, v14}, Lorg/telegram/ui/Components/AlertsCreator;->showCallsForbidden(Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_7

    .line 1997
    :cond_10
    const-string v7, "ERROR_AUDIO_IO"

    invoke-static {v5, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 1998
    const-string v5, "Error initializing audio hardware"

    invoke-direct {v0, v5}, Lorg/telegram/ui/VoIPFragment;->showErrorDialog(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 1999
    :cond_11
    const-string v7, "ERROR_LOCALIZED"

    invoke-static {v5, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 2000
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->finish()V

    goto :goto_7

    .line 2001
    :cond_12
    const-string v7, "ERROR_CONNECTION_SERVICE"

    invoke-static {v5, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 2002
    sget v5, Lorg/telegram/messenger/R$string;->VoipErrorUnknown:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/telegram/ui/VoIPFragment;->showErrorDialog(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 2004
    :cond_13
    new-instance v5, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda17;

    invoke-direct {v5, v0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-static {v5, v12, v13}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_7

    .line 2007
    :cond_14
    new-instance v5, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda18;

    invoke-direct {v5, v0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-static {v5, v12, v13}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_7

    .line 1854
    :cond_15
    invoke-direct {v0, v2}, Lorg/telegram/ui/VoIPFragment;->updateKeyView(Z)V

    .line 1855
    iget v5, v0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    const/4 v7, 0x5

    if-ne v5, v7, :cond_17

    .line 1856
    iget-boolean v5, v0, Lorg/telegram/ui/VoIPFragment;->wasEstablished:Z

    if-nez v5, :cond_16

    .line 1857
    iget v12, v0, Lorg/telegram/ui/VoIPFragment;->previousState:I

    if-eq v12, v7, :cond_16

    .line 1858
    iget-object v12, v0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    sget v13, Lorg/telegram/messenger/R$string;->VoipConnecting:I

    invoke-static {v13}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v4, v2}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->setText(Ljava/lang/String;ZZ)V

    :cond_16
    move v12, v1

    :goto_6
    move v14, v12

    goto :goto_8

    .line 1861
    :cond_17
    iput-boolean v4, v0, Lorg/telegram/ui/VoIPFragment;->wasEstablished:Z

    move v5, v1

    move v12, v5

    move v14, v4

    goto :goto_8

    .line 1825
    :cond_18
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    sget v12, Lorg/telegram/messenger/R$string;->VoipConnecting:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12, v4, v2}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->setText(Ljava/lang/String;ZZ)V

    :cond_19
    :goto_7
    move v5, v1

    move v12, v5

    goto :goto_6

    .line 2011
    :goto_8
    iget-object v13, v0, Lorg/telegram/ui/VoIPFragment;->previewDialog:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;

    if-eqz v13, :cond_1a

    goto/16 :goto_37

    .line 2015
    :cond_1a
    iget-boolean v13, v0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-nez v13, :cond_1c

    iget-boolean v13, v0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-eqz v13, :cond_1b

    goto :goto_9

    :cond_1b
    move v13, v1

    goto :goto_a

    :cond_1c
    :goto_9
    move v13, v4

    :goto_a
    if-eqz v6, :cond_20

    .line 2017
    invoke-virtual {v6}, Lorg/telegram/messenger/voip/VoIPService;->getRemoteVideoState()I

    move-result v7

    const/4 v10, 0x2

    if-ne v7, v10, :cond_1d

    move v7, v4

    goto :goto_b

    :cond_1d
    move v7, v1

    :goto_b
    iput-boolean v7, v0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    .line 2018
    invoke-virtual {v6, v1}, Lorg/telegram/messenger/voip/VoIPService;->getVideoState(Z)I

    move-result v7

    if-eq v7, v10, :cond_1f

    invoke-virtual {v6, v1}, Lorg/telegram/messenger/voip/VoIPService;->getVideoState(Z)I

    move-result v7

    if-ne v7, v4, :cond_1e

    goto :goto_c

    :cond_1e
    move v7, v1

    goto :goto_d

    :cond_1f
    :goto_c
    move v7, v4

    :goto_d
    iput-boolean v7, v0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-eqz v7, :cond_20

    .line 2019
    iget-boolean v7, v0, Lorg/telegram/ui/VoIPFragment;->isVideoCall:Z

    if-nez v7, :cond_20

    .line 2020
    iput-boolean v4, v0, Lorg/telegram/ui/VoIPFragment;->isVideoCall:Z

    :cond_20
    if-eqz v2, :cond_21

    .line 2025
    iget-object v7, v0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->saveRelativePosition()V

    .line 2026
    iget-object v7, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->saveRelativePosition()V

    .line 2029
    :cond_21
    iget-boolean v7, v0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-eqz v7, :cond_24

    .line 2030
    iget-boolean v7, v0, Lorg/telegram/ui/VoIPFragment;->switchingToPip:Z

    if-nez v7, :cond_22

    .line 2031
    iget-object v7, v0, Lorg/telegram/ui/VoIPFragment;->gradientLayout:Lorg/telegram/ui/Components/voip/VoIpGradientLayout;

    invoke-virtual {v7, v8}, Landroid/view/View;->setAlpha(F)V

    :cond_22
    if-eqz v2, :cond_23

    .line 2034
    iget-object v7, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    const-wide/16 v10, 0xfa

    invoke-virtual {v7, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_e

    .line 2036
    :cond_23
    iget-object v7, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2037
    iget-object v7, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v7, v8}, Landroid/view/View;->setAlpha(F)V

    .line 2039
    :goto_e
    iget-object v7, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v7, v7, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v7}, Lorg/webrtc/TextureViewRenderer;->isFirstFrameRendered()Z

    move-result v7

    if-nez v7, :cond_24

    iget-boolean v7, v0, Lorg/telegram/ui/VoIPFragment;->enterFromPiP:Z

    if-nez v7, :cond_24

    .line 2040
    iput-boolean v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    .line 2044
    :cond_24
    iget-boolean v7, v0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-nez v7, :cond_27

    iget-boolean v7, v0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-eqz v7, :cond_25

    goto :goto_f

    .line 2047
    :cond_25
    iget-object v7, v0, Lorg/telegram/ui/VoIPFragment;->gradientLayout:Lorg/telegram/ui/Components/voip/VoIpGradientLayout;

    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz v2, :cond_26

    .line 2049
    iget-object v7, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    const-wide/16 v10, 0xfa

    invoke-virtual {v7, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_10

    .line 2051
    :cond_26
    iget-object v7, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2052
    iget-object v7, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v7, v9}, Landroid/view/View;->setAlpha(F)V

    goto :goto_10

    .line 2045
    :cond_27
    :goto_f
    iget-object v7, v0, Lorg/telegram/ui/VoIPFragment;->gradientLayout:Lorg/telegram/ui/Components/voip/VoIpGradientLayout;

    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2056
    :goto_10
    iget-boolean v7, v0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-eqz v7, :cond_28

    iget-boolean v10, v0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-nez v10, :cond_29

    .line 2057
    :cond_28
    iput-boolean v1, v0, Lorg/telegram/ui/VoIPFragment;->cameraForceExpanded:Z

    :cond_29
    if-eqz v7, :cond_2a

    .line 2060
    iget-boolean v7, v0, Lorg/telegram/ui/VoIPFragment;->cameraForceExpanded:Z

    if-eqz v7, :cond_2a

    iget-object v7, v0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->isInPictureInPictureMode(Landroid/app/Activity;)Z

    move-result v7

    if-nez v7, :cond_2a

    move v7, v4

    goto :goto_11

    :cond_2a
    move v7, v1

    .line 2062
    :goto_11
    invoke-direct {v0, v2, v13}, Lorg/telegram/ui/VoIPFragment;->showCallingUserAvatarMini(ZZ)V

    .line 2063
    iget-object v10, v0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_2b

    move v11, v1

    goto :goto_12

    :cond_2b
    const/high16 v10, 0x43070000    # 135.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    const/high16 v11, 0x41400000    # 12.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    add-int/2addr v10, v11

    move v11, v10

    .line 2064
    :goto_12
    invoke-direct {v0, v12, v2}, Lorg/telegram/ui/VoIPFragment;->showAcceptDeclineView(ZZ)V

    .line 2065
    iget-object v10, v0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    iget-boolean v15, v0, Lorg/telegram/ui/VoIPFragment;->lockOnScreen:Z

    if-nez v15, :cond_2d

    iget-boolean v15, v0, Lorg/telegram/ui/VoIPFragment;->deviceIsLocked:Z

    if-eqz v15, :cond_2c

    goto :goto_13

    :cond_2c
    move v15, v1

    goto :goto_14

    :cond_2d
    :goto_13
    move v15, v4

    :goto_14
    invoke-virtual {v10, v15}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->setLockOnScreen(Z)V

    .line 2066
    iget v10, v0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    const/4 v15, 0x3

    if-ne v10, v15, :cond_2f

    move v15, v13

    iget-boolean v10, v0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-nez v10, :cond_2e

    iget-boolean v10, v0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-eqz v10, :cond_30

    :cond_2e
    move v10, v4

    goto :goto_15

    :cond_2f
    move v15, v13

    :cond_30
    move v10, v1

    :goto_15
    iput-boolean v10, v0, Lorg/telegram/ui/VoIPFragment;->canHideUI:Z

    if-nez v10, :cond_31

    .line 2067
    iget-boolean v10, v0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    if-nez v10, :cond_31

    .line 2068
    invoke-direct {v0, v4}, Lorg/telegram/ui/VoIPFragment;->showUi(Z)V

    .line 2071
    :cond_31
    iget-boolean v10, v0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    if-eqz v10, :cond_32

    iget-boolean v10, v0, Lorg/telegram/ui/VoIPFragment;->canHideUI:Z

    if-eqz v10, :cond_32

    iget-boolean v10, v0, Lorg/telegram/ui/VoIPFragment;->hideUiRunnableWaiting:Z

    if-nez v10, :cond_32

    if-eqz v6, :cond_32

    .line 2072
    iget-object v10, v0, Lorg/telegram/ui/VoIPFragment;->hideUIRunnable:Ljava/lang/Runnable;

    move/from16 v25, v14

    const-wide/16 v13, 0xbb8

    invoke-static {v10, v13, v14}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 2073
    iput-boolean v4, v0, Lorg/telegram/ui/VoIPFragment;->hideUiRunnableWaiting:Z

    goto :goto_16

    :cond_32
    move/from16 v25, v14

    .line 2076
    :goto_16
    iget v10, v0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    const/16 v13, 0xb

    if-eq v10, v13, :cond_33

    iget-boolean v14, v0, Lorg/telegram/ui/VoIPFragment;->lockOnScreen:Z

    if-nez v14, :cond_33

    iget-boolean v14, v0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    if-eqz v14, :cond_33

    move v14, v4

    goto :goto_17

    :cond_33
    move v14, v1

    :goto_17
    if-nez v12, :cond_34

    const/16 v12, 0x10

    if-eq v10, v12, :cond_34

    if-eq v10, v13, :cond_34

    const/16 v12, 0xc

    if-eq v10, v12, :cond_34

    const/16 v12, 0xe

    if-eq v10, v12, :cond_34

    const/4 v12, 0x6

    if-eq v10, v12, :cond_34

    .line 2077
    iget-boolean v10, v0, Lorg/telegram/ui/VoIPFragment;->lockOnScreen:Z

    if-nez v10, :cond_34

    iget-boolean v10, v0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    if-eqz v10, :cond_34

    if-eqz v6, :cond_34

    iget-object v10, v6, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    if-eqz v10, :cond_34

    iget-boolean v10, v10, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->conference_supported:Z

    if-eqz v10, :cond_34

    move v10, v4

    goto :goto_18

    :cond_34
    move v10, v1

    :goto_18
    const/high16 v21, 0x41800000    # 16.0f

    const-wide/16 v3, 0x96

    if-eqz v2, :cond_3a

    if-eqz v14, :cond_35

    .line 2080
    iget-object v14, v0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    invoke-virtual {v14, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_19

    .line 2082
    :cond_35
    iget-object v14, v0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-eqz v14, :cond_36

    .line 2083
    iget-object v14, v0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    invoke-virtual {v14, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2084
    iget-object v14, v0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    invoke-virtual {v14, v9}, Landroid/view/View;->setAlpha(F)V

    .line 2086
    :cond_36
    iget-object v14, v0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    invoke-virtual {v14, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_19
    if-eqz v10, :cond_37

    .line 2089
    iget-object v10, v0, Lorg/telegram/ui/VoIPFragment;->addIcon:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1a

    .line 2091
    :cond_37
    iget-object v10, v0, Lorg/telegram/ui/VoIPFragment;->addIcon:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eqz v10, :cond_38

    .line 2092
    iget-object v10, v0, Lorg/telegram/ui/VoIPFragment;->addIcon:Landroid/widget/ImageView;

    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2093
    iget-object v10, v0, Lorg/telegram/ui/VoIPFragment;->addIcon:Landroid/widget/ImageView;

    invoke-virtual {v10, v9}, Landroid/view/View;->setAlpha(F)V

    .line 2095
    :cond_38
    iget-object v10, v0, Lorg/telegram/ui/VoIPFragment;->addIcon:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2097
    :goto_1a
    iget-object v10, v0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    invoke-virtual {v10}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    neg-int v14, v14

    const/high16 v26, 0x42a00000    # 80.0f

    iget-boolean v12, v0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    if-eqz v12, :cond_39

    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    goto :goto_1b

    :cond_39
    move v12, v1

    :goto_1b
    sub-int/2addr v14, v12

    int-to-float v12, v14

    invoke-virtual {v10, v12}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    invoke-virtual {v10, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    sget-object v12, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v10, v12}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/ViewPropertyAnimator;->start()V

    move/from16 v27, v1

    goto :goto_21

    :cond_3a
    const/high16 v26, 0x42a00000    # 80.0f

    .line 2099
    iget-object v12, v0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    move/from16 v27, v1

    if-eqz v14, :cond_3b

    goto :goto_1c

    :cond_3b
    const/16 v1, 0x8

    :goto_1c
    invoke-virtual {v12, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2100
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    if-eqz v14, :cond_3c

    move v12, v8

    goto :goto_1d

    :cond_3c
    move v12, v9

    :goto_1d
    invoke-virtual {v1, v12}, Landroid/view/View;->setAlpha(F)V

    .line 2101
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->addIcon:Landroid/widget/ImageView;

    if-eqz v10, :cond_3d

    move/from16 v12, v27

    goto :goto_1e

    :cond_3d
    const/16 v12, 0x8

    :goto_1e
    invoke-virtual {v1, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2102
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->addIcon:Landroid/widget/ImageView;

    if-eqz v10, :cond_3e

    move v10, v8

    goto :goto_1f

    :cond_3e
    move v10, v9

    :goto_1f
    invoke-virtual {v1, v10}, Landroid/view/View;->setAlpha(F)V

    .line 2103
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    neg-int v10, v10

    iget-boolean v12, v0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    if-eqz v12, :cond_3f

    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    goto :goto_20

    :cond_3f
    move/from16 v12, v27

    :goto_20
    sub-int/2addr v10, v12

    int-to-float v10, v10

    invoke-virtual {v1, v10}, Landroid/view/View;->setTranslationY(F)V

    .line 2106
    :goto_21
    iget v1, v0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    const/16 v10, 0xa

    if-eq v1, v10, :cond_40

    if-eq v1, v13, :cond_40

    .line 2107
    invoke-direct {v0, v2}, Lorg/telegram/ui/VoIPFragment;->updateButtons(Z)V

    :cond_40
    if-eqz v25, :cond_41

    .line 2111
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->showTimer(Z)V

    .line 2114
    :cond_41
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    invoke-virtual {v1, v5, v2}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->showReconnect(ZZ)V

    .line 2116
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/high16 v5, 0x41c00000    # 24.0f

    if-nez v1, :cond_42

    iget-boolean v1, v0, Lorg/telegram/ui/VoIPFragment;->emojiExpanded:Z

    if-eqz v1, :cond_42

    .line 2117
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v11, v1

    .line 2118
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->emojiRationalTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-eqz v1, :cond_42

    .line 2120
    invoke-virtual {v1}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    const/4 v10, 0x2

    if-le v1, v10, :cond_42

    const/high16 v12, 0x41a00000    # 20.0f

    .line 2122
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    sub-int/2addr v1, v10

    mul-int/2addr v12, v1

    add-int/2addr v11, v12

    .line 2127
    :cond_42
    iget v1, v0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    if-ne v1, v13, :cond_43

    iget-boolean v1, v0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-nez v1, :cond_43

    iget-boolean v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-nez v1, :cond_43

    .line 2128
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v11, v1

    .line 2131
    :cond_43
    iget-boolean v1, v0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-nez v1, :cond_44

    iget-boolean v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-eqz v1, :cond_45

    .line 2132
    :cond_44
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v11, v1

    :cond_45
    if-eqz v2, :cond_49

    .line 2136
    iget-boolean v1, v0, Lorg/telegram/ui/VoIPFragment;->emojiExpanded:Z

    const-wide/16 v13, 0x0

    if-eqz v1, :cond_47

    iget-boolean v1, v0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-nez v1, :cond_46

    iget-boolean v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-eqz v1, :cond_47

    .line 2137
    :cond_46
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->statusLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v13, v14}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v12, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v12}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    const-wide/16 v13, 0xfa

    goto :goto_22

    .line 2139
    :cond_47
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->statusLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v13, 0xfa

    invoke-virtual {v1, v13, v14}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v12, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v12}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2141
    :goto_22
    iget v1, v0, Lorg/telegram/ui/VoIPFragment;->statusLayoutAnimateToOffset:I

    if-eq v11, v1, :cond_4a

    .line 2142
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->statusLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v12, v0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    const/16 v5, 0xb

    if-ne v12, v5, :cond_48

    goto :goto_23

    :cond_48
    const-wide/16 v13, 0x0

    :goto_23
    invoke-virtual {v1, v13, v14}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-float v12, v11

    invoke-virtual {v1, v12}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v12, 0xc8

    invoke-virtual {v1, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v12, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v12}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_24

    .line 2145
    :cond_49
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->statusLayout:Landroid/widget/LinearLayout;

    int-to-float v12, v11

    invoke-virtual {v1, v12}, Landroid/view/View;->setTranslationY(F)V

    .line 2147
    :cond_4a
    :goto_24
    iput v11, v0, Lorg/telegram/ui/VoIPFragment;->statusLayoutAnimateToOffset:I

    if-eqz v6, :cond_4b

    .line 2148
    invoke-virtual {v6}, Lorg/telegram/messenger/voip/VoIPService;->isScreencast()Z

    move-result v1

    if-eqz v1, :cond_4b

    const/4 v1, 0x1

    goto :goto_25

    :cond_4b
    move/from16 v1, v27

    .line 2149
    :goto_25
    iget v11, v0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    const/16 v5, 0xb

    if-eq v11, v5, :cond_4e

    const/16 v5, 0x11

    if-eq v11, v5, :cond_4e

    iget-boolean v5, v0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-eqz v5, :cond_4c

    if-eqz v1, :cond_4d

    :cond_4c
    iget-boolean v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-eqz v1, :cond_4e

    :cond_4d
    const/4 v1, 0x1

    goto :goto_26

    :cond_4e
    move/from16 v1, v27

    :goto_26
    iput-boolean v1, v0, Lorg/telegram/ui/VoIPFragment;->canSwitchToPip:Z

    if-eqz v6, :cond_5d

    .line 2153
    iget-boolean v1, v0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-eqz v1, :cond_4f

    .line 2154
    iget-object v1, v6, Lorg/telegram/messenger/voip/VoIPService;->sharedUIParams:Lorg/telegram/messenger/voip/VoIPService$SharedUIParams;

    const/4 v5, 0x1

    iput-boolean v5, v1, Lorg/telegram/messenger/voip/VoIPService$SharedUIParams;->tapToVideoTooltipWasShowed:Z

    .line 2156
    :cond_4f
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v6}, Lorg/telegram/messenger/voip/VoIPService;->isScreencast()Z

    move-result v5

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->setIsScreencast(Z)V

    .line 2157
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v6}, Lorg/telegram/messenger/voip/VoIPService;->isFrontFaceCamera()Z

    move-result v5

    invoke-virtual {v1, v5}, Lorg/webrtc/TextureViewRenderer;->setMirror(Z)V

    .line 2158
    iget-boolean v1, v0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-eqz v1, :cond_50

    invoke-virtual {v6}, Lorg/telegram/messenger/voip/VoIPService;->isScreencast()Z

    move-result v1

    if-nez v1, :cond_50

    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    goto :goto_27

    :cond_50
    const/4 v1, 0x0

    :goto_27
    iget-boolean v5, v0, Lorg/telegram/ui/VoIPFragment;->windowViewSkipRender:Z

    if-eqz v5, :cond_51

    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->pipTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    if-eqz v5, :cond_51

    :goto_28
    iget-object v5, v5, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    goto :goto_29

    :cond_51
    if-eqz v7, :cond_52

    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniTextureRenderer:Lorg/webrtc/TextureViewRenderer;

    goto :goto_29

    :cond_52
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    goto :goto_28

    :goto_29
    invoke-virtual {v6, v1, v5}, Lorg/telegram/messenger/voip/VoIPService;->setSinks(Lorg/webrtc/VideoSink;Lorg/webrtc/VideoSink;)V

    if-eqz v2, :cond_53

    .line 2161
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->beforeLayoutChanges()V

    .line 2163
    :cond_53
    invoke-virtual {v6}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result v1

    const-string/jumbo v5, "self-muted"

    if-eqz v1, :cond_54

    .line 2164
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    sget v11, Lorg/telegram/messenger/R$drawable;->calls_mute_mini:I

    sget v12, Lorg/telegram/messenger/R$string;->VoipMyMicrophoneState:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v11, v12, v5, v2}, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->addNotification(ILjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2a

    .line 2166
    :cond_54
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->removeNotification(Ljava/lang/String;)V

    .line 2168
    :goto_2a
    iget-boolean v1, v0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    const-string v5, "VoipUserMicrophoneIsOff"

    const-string/jumbo v11, "video"

    const-string v12, "muted"

    if-nez v1, :cond_55

    iget-boolean v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-eqz v1, :cond_59

    :cond_55
    iget v1, v0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    const/4 v13, 0x3

    if-eq v1, v13, :cond_56

    const/4 v14, 0x5

    if-ne v1, v14, :cond_59

    :cond_56
    invoke-virtual {v6}, Lorg/telegram/messenger/voip/VoIPService;->getCallDuration()J

    move-result-wide v17

    const-wide/16 v19, 0x1f4

    cmp-long v1, v17, v19

    if-lez v1, :cond_59

    .line 2169
    invoke-virtual {v6}, Lorg/telegram/messenger/voip/VoIPService;->getRemoteAudioState()I

    move-result v1

    if-nez v1, :cond_57

    .line 2170
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    sget v14, Lorg/telegram/messenger/R$drawable;->calls_mute_mini:I

    sget v10, Lorg/telegram/messenger/R$string;->VoipUserMicrophoneIsOff:I

    iget-object v13, v0, Lorg/telegram/ui/VoIPFragment;->callingUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v13}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->ellipsize(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v13

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v13, v4, v27

    invoke-static {v5, v10, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v14, v3, v12, v2}, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->addNotification(ILjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2b

    .line 2172
    :cond_57
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    invoke-virtual {v1, v12}, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->removeNotification(Ljava/lang/String;)V

    .line 2174
    :goto_2b
    invoke-virtual {v6}, Lorg/telegram/messenger/voip/VoIPService;->getRemoteVideoState()I

    move-result v1

    if-nez v1, :cond_58

    .line 2175
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    sget v3, Lorg/telegram/messenger/R$drawable;->calls_camera_mini:I

    sget v4, Lorg/telegram/messenger/R$string;->VoipUserCameraIsOff:I

    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->callingUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->ellipsize(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v10, 0x1

    new-array v12, v10, [Ljava/lang/Object;

    aput-object v5, v12, v27

    const-string v5, "VoipUserCameraIsOff"

    invoke-static {v5, v4, v12}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v11, v2}, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->addNotification(ILjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2d

    .line 2177
    :cond_58
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    invoke-virtual {v1, v11}, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->removeNotification(Ljava/lang/String;)V

    goto :goto_2d

    .line 2180
    :cond_59
    invoke-virtual {v6}, Lorg/telegram/messenger/voip/VoIPService;->getRemoteAudioState()I

    move-result v1

    if-nez v1, :cond_5a

    .line 2181
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    sget v3, Lorg/telegram/messenger/R$drawable;->calls_mute_mini:I

    sget v4, Lorg/telegram/messenger/R$string;->VoipUserMicrophoneIsOff:I

    iget-object v10, v0, Lorg/telegram/ui/VoIPFragment;->callingUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v10}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->ellipsize(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/Object;

    aput-object v10, v14, v27

    invoke-static {v5, v4, v14}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v12, v2}, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->addNotification(ILjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2c

    .line 2183
    :cond_5a
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    invoke-virtual {v1, v12}, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->removeNotification(Ljava/lang/String;)V

    .line 2185
    :goto_2c
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    invoke-virtual {v1, v11}, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->removeNotification(Ljava/lang/String;)V

    .line 2188
    :goto_2d
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_5b

    iget-boolean v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-eqz v1, :cond_5b

    iget-object v1, v6, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    if-eqz v1, :cond_5b

    iget-boolean v1, v1, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->video:Z

    if-nez v1, :cond_5b

    iget-object v1, v6, Lorg/telegram/messenger/voip/VoIPService;->sharedUIParams:Lorg/telegram/messenger/voip/VoIPService$SharedUIParams;

    iget-boolean v3, v1, Lorg/telegram/messenger/voip/VoIPService$SharedUIParams;->tapToVideoTooltipWasShowed:Z

    if-nez v3, :cond_5b

    const/4 v3, 0x1

    .line 2189
    iput-boolean v3, v1, Lorg/telegram/messenger/voip/VoIPService$SharedUIParams;->tapToVideoTooltipWasShowed:Z

    .line 2190
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->tapToVideoTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    iget-object v3, v0, Lorg/telegram/ui/VoIPFragment;->fragmentView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->buttonsLayout:Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    neg-float v3, v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 2191
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->tapToVideoTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    iget-object v3, v0, Lorg/telegram/ui/VoIPFragment;->buttonsLayout:Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->bottomVideoBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v1, v9, v3}, Lorg/telegram/ui/Stories/recorder/HintView2;->setJointPx(FF)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 2192
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->tapToVideoTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->show()Lorg/telegram/ui/Stories/recorder/HintView2;

    goto :goto_2e

    .line 2193
    :cond_5b
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_5c

    .line 2194
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->tapToVideoTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    :cond_5c
    :goto_2e
    if-eqz v2, :cond_5d

    .line 2198
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->animateLayoutChanges()V

    .line 2202
    :cond_5d
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->getChildsHight()I

    move-result v1

    .line 2204
    iget-object v3, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v3, v1, v2}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setBottomOffset(IZ)V

    .line 2205
    iget-object v3, v0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v3, v1, v2}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setBottomOffset(IZ)V

    .line 2206
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    iget-boolean v3, v0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setUiVisible(Z)V

    .line 2207
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    iget-boolean v3, v0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setUiVisible(Z)V

    .line 2209
    iget-boolean v1, v0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-eqz v1, :cond_60

    .line 2210
    iget-boolean v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-eqz v1, :cond_5e

    iget-boolean v1, v0, Lorg/telegram/ui/VoIPFragment;->cameraForceExpanded:Z

    if-eqz v1, :cond_5f

    :cond_5e
    const/4 v3, 0x1

    goto :goto_2f

    :cond_5f
    const/4 v10, 0x2

    .line 2213
    invoke-direct {v0, v10, v2}, Lorg/telegram/ui/VoIPFragment;->showFloatingLayout(IZ)V

    const/4 v3, 0x1

    goto :goto_30

    .line 2211
    :goto_2f
    invoke-direct {v0, v3, v2}, Lorg/telegram/ui/VoIPFragment;->showFloatingLayout(IZ)V

    goto :goto_30

    :cond_60
    move/from16 v1, v27

    const/4 v3, 0x1

    .line 2216
    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/VoIPFragment;->showFloatingLayout(IZ)V

    :goto_30
    const/high16 v1, 0x3f000000    # 0.5f

    if-eqz v7, :cond_62

    .line 2219
    iget-object v2, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_62

    .line 2220
    iget-object v2, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setIsActive(Z)V

    .line 2221
    iget-object v2, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_61

    .line 2222
    iget-object v2, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2223
    iget-object v2, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v2, v9}, Landroid/view/View;->setAlpha(F)V

    .line 2224
    iget-object v2, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setScaleX(F)V

    .line 2225
    iget-object v2, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setScaleY(F)V

    .line 2227
    :cond_61
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2228
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->isAppearing:Z

    .line 2229
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 2230
    invoke-virtual {v1, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x96

    .line 2231
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda19;

    invoke-direct {v2, v0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    .line 2232
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 2235
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2236
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_31

    :cond_62
    if-nez v7, :cond_63

    .line 2237
    iget-object v2, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_63

    .line 2238
    iget-object v2, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setIsActive(Z)V

    .line 2239
    iget-object v2, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/VoIPFragment$19;

    invoke-direct {v2, v0}, Lorg/telegram/ui/VoIPFragment$19;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x96

    .line 2246
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2247
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2250
    :cond_63
    :goto_31
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->restoreRelativePosition()V

    .line 2251
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->restoreRelativePosition()V

    .line 2253
    invoke-direct {v0}, Lorg/telegram/ui/VoIPFragment;->updateSpeakerPhoneIcon()V

    .line 2255
    iget v1, v0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    const/4 v13, 0x3

    if-ne v1, v13, :cond_65

    .line 2256
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->voIpCoverView:Lorg/telegram/ui/Components/voip/VoIpCoverView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/voip/VoIpCoverView;->onConnected()V

    .line 2257
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/voip/ImageWithWavesView;->onConnected()V

    .line 2258
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->gradientLayout:Lorg/telegram/ui/Components/voip/VoIpGradientLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->isConnectedCalled()Z

    move-result v1

    if-nez v1, :cond_65

    const/4 v10, 0x2

    .line 2259
    new-array v1, v10, [I

    .line 2260
    iget-object v2, v0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2261
    iget v2, v0, Lorg/telegram/ui/VoIPFragment;->previousState:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_64

    const/4 v2, 0x1

    goto :goto_32

    :cond_64
    const/4 v2, 0x0

    .line 2262
    :goto_32
    iget-object v3, v0, Lorg/telegram/ui/VoIPFragment;->gradientLayout:Lorg/telegram/ui/Components/voip/VoIpGradientLayout;

    const/16 v27, 0x0

    aget v4, v1, v27

    const/high16 v5, 0x42d40000    # 106.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v4, v7

    const/16 v22, 0x1

    aget v1, v1, v22

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v1, v5

    invoke-virtual {v3, v4, v1, v2}, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->switchToCallConnected(IIZ)V

    goto :goto_33

    :cond_65
    const/16 v22, 0x1

    .line 2265
    :goto_33
    iget-boolean v1, v0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-nez v1, :cond_67

    iget-boolean v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-eqz v1, :cond_66

    goto :goto_34

    :cond_66
    const/4 v4, 0x0

    goto :goto_35

    :cond_67
    :goto_34
    move/from16 v4, v22

    .line 2266
    :goto_35
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->voIpSnowView:Lorg/telegram/ui/Components/voip/VoIpSnowView;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/voip/VoIpSnowView;->setState(Z)V

    .line 2267
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->voIpCoverView:Lorg/telegram/ui/Components/voip/VoIpCoverView;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/voip/VoIpCoverView;->setState(Z)V

    .line 2268
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->backgroundProvider:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->setHasVideo(Z)V

    .line 2270
    iget-boolean v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-eqz v1, :cond_68

    if-nez v15, :cond_68

    iget-boolean v1, v0, Lorg/telegram/ui/VoIPFragment;->isNearEar:Z

    if-eqz v1, :cond_68

    const/4 v3, 0x0

    .line 2271
    iput-boolean v3, v0, Lorg/telegram/ui/VoIPFragment;->isNearEar:Z

    if-eqz v6, :cond_68

    .line 2273
    invoke-virtual {v6}, Lorg/telegram/messenger/voip/VoIPService;->playStartRecordSound()V

    :cond_68
    if-nez v4, :cond_69

    .line 2278
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->topShadow:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_6a

    .line 2279
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->topShadow:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2280
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->bottomShadow:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_36

    .line 2283
    :cond_69
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->topShadow:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_6a

    .line 2284
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->topShadow:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2285
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->bottomShadow:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2288
    :cond_6a
    :goto_36
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->stopAnimatingBgRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 2289
    iget v1, v0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    const/4 v13, 0x3

    if-ne v1, v13, :cond_6b

    .line 2290
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->stopAnimatingBgRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 2293
    :cond_6b
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->pipSource:Lorg/telegram/messenger/pip/PipSource;

    if-eqz v1, :cond_6c

    .line 2294
    invoke-virtual {v1}, Lorg/telegram/messenger/pip/PipSource;->invalidateActions()V

    :cond_6c
    :goto_37
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public createPiPTransition(Z)Landroid/animation/Animator;
    .locals 23

    move-object/from16 v1, p0

    .line 1599
    iget-object v0, v1, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1600
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->getInstance()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPPiPView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->getInstance()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v2

    iget v2, v2, Lorg/telegram/ui/Components/voip/VoIPPiPView;->xOffset:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    .line 1601
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->getInstance()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/Components/voip/VoIPPiPView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->getInstance()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v3

    iget v3, v3, Lorg/telegram/ui/Components/voip/VoIPPiPView;->yOffset:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    .line 1603
    iget-object v3, v1, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v5

    .line 1604
    iget-object v3, v1, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v7

    .line 1605
    iget-object v3, v1, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v3}, Landroid/view/View;->getScaleX()F

    move-result v3

    .line 1614
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->isExpanding()Z

    move-result v4

    if-eqz v4, :cond_0

    const v14, 0x3ecccccd    # 0.4f

    goto :goto_0

    :cond_0
    const/high16 v4, 0x3e800000    # 0.25f

    move v14, v4

    .line 1616
    :goto_0
    iget-object v4, v1, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v8, v1, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v14

    sub-float/2addr v4, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v4, v8

    sub-float v4, v0, v4

    .line 1617
    iget-object v9, v1, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, v1, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v14

    sub-float/2addr v9, v10

    div-float/2addr v9, v8

    sub-float v9, v2, v9

    .line 1618
    iget-boolean v10, v1, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    const/high16 v12, 0x40800000    # 4.0f

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x1

    if-eqz v10, :cond_2

    .line 1619
    iget-object v10, v1, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    const v17, 0x3ecccccd    # 0.4f

    .line 1620
    iget-boolean v6, v1, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-eqz v6, :cond_1

    if-eqz v10, :cond_1

    .line 1621
    iget-object v6, v1, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    int-to-float v10, v10

    div-float/2addr v6, v10

    mul-float/2addr v6, v14

    mul-float v6, v6, v17

    .line 1622
    iget-object v10, v1, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    move/from16 v18, v8

    iget-object v8, v1, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v6

    sub-float/2addr v10, v8

    div-float v10, v10, v18

    sub-float/2addr v0, v10

    .line 1623
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->getInstance()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v8

    iget v8, v8, Lorg/telegram/ui/Components/voip/VoIPPiPView;->parentWidth:I

    int-to-float v8, v8

    mul-float/2addr v8, v14

    add-float/2addr v0, v8

    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->getInstance()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v8

    iget v8, v8, Lorg/telegram/ui/Components/voip/VoIPPiPView;->parentWidth:I

    int-to-float v8, v8

    mul-float/2addr v8, v14

    mul-float v8, v8, v17

    sub-float/2addr v0, v8

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v0, v8

    .line 1624
    iget-object v8, v1, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    iget-object v10, v1, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v6

    sub-float/2addr v8, v10

    div-float v8, v8, v18

    sub-float/2addr v2, v8

    .line 1625
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->getInstance()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v8

    iget v8, v8, Lorg/telegram/ui/Components/voip/VoIPPiPView;->parentHeight:I

    int-to-float v8, v8

    mul-float/2addr v8, v14

    add-float/2addr v2, v8

    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->getInstance()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v8

    iget v8, v8, Lorg/telegram/ui/Components/voip/VoIPPiPView;->parentHeight:I

    int-to-float v8, v8

    mul-float/2addr v8, v14

    mul-float v8, v8, v17

    sub-float/2addr v2, v8

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v2, v8

    move/from16 v8, v16

    goto :goto_1

    :cond_1
    move v0, v15

    move v2, v0

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_1
    move/from16 v22, v6

    move v6, v0

    move/from16 v0, v22

    move/from16 v22, v8

    move v8, v2

    move/from16 v2, v22

    goto :goto_2

    :cond_2
    move/from16 v18, v8

    .line 1634
    iget-object v6, v1, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    iget-object v8, v1, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v14

    sub-float/2addr v6, v8

    div-float v6, v6, v18

    sub-float/2addr v0, v6

    .line 1635
    iget-object v6, v1, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    iget-object v8, v1, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v14

    sub-float/2addr v6, v8

    div-float v6, v6, v18

    sub-float/2addr v2, v6

    move v6, v0

    move v8, v2

    move v0, v14

    move/from16 v2, v16

    .line 1638
    :goto_2
    iget-boolean v10, v1, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-eqz v10, :cond_3

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    goto :goto_3

    :cond_3
    const/4 v10, 0x0

    .line 1639
    :goto_3
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v15

    div-float/2addr v12, v0

    const/16 v17, 0x0

    .line 1643
    iget-boolean v11, v1, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-eqz v11, :cond_5

    .line 1644
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->isExpanding()Z

    move-result v11

    if-eqz v11, :cond_4

    goto :goto_4

    :cond_4
    const/4 v11, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    move v11, v15

    :goto_5
    if-eqz p1, :cond_7

    if-eqz v2, :cond_6

    .line 1649
    iget-object v13, v1, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v13, v0}, Landroid/view/View;->setScaleX(F)V

    .line 1650
    iget-object v13, v1, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v13, v0}, Landroid/view/View;->setScaleY(F)V

    .line 1651
    iget-object v13, v1, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v13, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 1652
    iget-object v13, v1, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v13, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 1653
    iget-object v13, v1, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v13, v12}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setCornerRadius(F)V

    .line 1654
    iget-object v13, v1, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v13, v11}, Landroid/view/View;->setAlpha(F)V

    .line 1656
    :cond_6
    iget-object v13, v1, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v13, v14}, Landroid/view/View;->setScaleX(F)V

    .line 1657
    iget-object v13, v1, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v13, v14}, Landroid/view/View;->setScaleY(F)V

    .line 1658
    iget-object v13, v1, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v13, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 1659
    iget-object v13, v1, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v13, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 1660
    iget-object v13, v1, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    const/high16 v19, 0x40c00000    # 6.0f

    move/from16 v20, v15

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-float v15, v15

    mul-float v15, v15, v20

    div-float/2addr v15, v14

    invoke-virtual {v13, v15}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->setRoundCorners(F)V

    goto :goto_6

    :cond_7
    move/from16 v20, v15

    :goto_6
    if-eqz p1, :cond_8

    move/from16 v13, v20

    goto :goto_7

    :cond_8
    const/4 v13, 0x0

    :goto_7
    if-eqz p1, :cond_9

    const/4 v15, 0x0

    :goto_8
    move/from16 v19, v0

    goto :goto_9

    :cond_9
    move/from16 v15, v20

    goto :goto_8

    :goto_9
    const/4 v0, 0x2

    .line 1662
    new-array v0, v0, [F

    aput v13, v0, v17

    aput v15, v0, v16

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz p1, :cond_a

    const/4 v13, 0x0

    goto :goto_a

    :cond_a
    move/from16 v13, v20

    .line 1664
    :goto_a
    iput v13, v1, Lorg/telegram/ui/VoIPFragment;->enterTransitionProgress:F

    .line 1665
    invoke-direct {v1}, Lorg/telegram/ui/VoIPFragment;->updateSystemBarColors()V

    move-object v13, v0

    .line 1669
    new-instance v0, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda35;

    move/from16 v18, v9

    move v9, v10

    move v10, v12

    move v12, v11

    const/high16 v11, 0x3f800000    # 1.0f

    move-object v15, v13

    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v16, v15

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object/from16 v21, v16

    move/from16 v16, v4

    move/from16 v4, v19

    invoke-direct/range {v0 .. v18}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda35;-><init>(Lorg/telegram/ui/VoIPFragment;ZFFFFFFFFFFFFFFFF)V

    move-object/from16 v15, v21

    invoke-virtual {v15, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v15
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    .line 676
    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lorg/telegram/ui/VoIPFragment;->touchSlop:F

    .line 677
    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 679
    new-instance v7, Lorg/telegram/ui/VoIPFragment$2;

    invoke-direct {v7, v0, v2}, Lorg/telegram/ui/VoIPFragment$2;-><init>(Lorg/telegram/ui/VoIPFragment;Landroid/content/Context;)V

    const/4 v8, 0x0

    .line 847
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 848
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    const/high16 v9, -0x1000000

    .line 849
    invoke-virtual {v7, v9}, Landroid/view/View;->setBackgroundColor(I)V

    .line 850
    invoke-direct {v0}, Lorg/telegram/ui/VoIPFragment;->updateSystemBarColors()V

    .line 851
    iput-object v7, v0, Lorg/telegram/ui/VoIPFragment;->fragmentView:Landroid/view/ViewGroup;

    const/4 v10, 0x1

    .line 852
    invoke-virtual {v7, v10}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 854
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedState()Lorg/telegram/messenger/voip/VoIPServiceState;

    move-result-object v11

    .line 855
    new-instance v1, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;

    if-eqz v11, :cond_0

    invoke-interface {v11}, Lorg/telegram/messenger/voip/VoIPServiceState;->isConference()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v10

    goto :goto_0

    :cond_0
    move v3, v8

    :goto_0
    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->backgroundProvider:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;-><init>(Landroid/content/Context;ZLorg/telegram/ui/Components/voip/VoIPBackgroundProvider;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->gradientLayout:Lorg/telegram/ui/Components/voip/VoIpGradientLayout;

    .line 856
    new-instance v1, Lorg/telegram/ui/Components/voip/VoIPTextureView;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/voip/VoIPTextureView;-><init>(Landroid/content/Context;ZZZZ)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    .line 857
    iget-object v1, v1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    sget-object v3, Lorg/webrtc/RendererCommon$ScalingType;->SCALE_ASPECT_FIT:Lorg/webrtc/RendererCommon$ScalingType;

    invoke-virtual {v1, v3}, Lorg/webrtc/TextureViewRenderer;->setScalingType(Lorg/webrtc/RendererCommon$ScalingType;)V

    .line 858
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v1, v10}, Lorg/webrtc/TextureViewRenderer;->setEnableHardwareScaler(Z)V

    .line 859
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v1, v10}, Lorg/webrtc/TextureViewRenderer;->setRotateTextureWithScreen(Z)V

    .line 860
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    sget v4, Lorg/telegram/ui/Components/voip/VoIPTextureView;->SCALE_TYPE_FIT:I

    iput v4, v1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->scaleType:I

    .line 863
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->gradientLayout:Lorg/telegram/ui/Components/voip/VoIpGradientLayout;

    const/4 v4, -0x1

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v7, v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 864
    new-instance v1, Lorg/telegram/ui/Components/voip/VoIpCoverView;

    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->callingUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v12, v0, Lorg/telegram/ui/VoIPFragment;->backgroundProvider:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    invoke-direct {v1, v2, v6, v12}, Lorg/telegram/ui/Components/voip/VoIpCoverView;-><init>(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->voIpCoverView:Lorg/telegram/ui/Components/voip/VoIpCoverView;

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 865
    new-instance v1, Lorg/telegram/ui/Components/voip/VoIpSnowView;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/voip/VoIpSnowView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->voIpSnowView:Lorg/telegram/ui/Components/voip/VoIpSnowView;

    const/high16 v5, 0x435c0000    # 220.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 866
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 868
    new-instance v1, Lorg/telegram/ui/Components/BackgroundGradientDrawable;

    sget-object v5, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const v6, -0xe4cab2

    const v12, -0xdaa483

    filled-new-array {v6, v12}, [I

    move-result-object v6

    invoke-direct {v1, v5, v6}, Lorg/telegram/ui/Components/BackgroundGradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 869
    sget-object v6, Lorg/telegram/ui/Components/BackgroundGradientDrawable$Sizes$Orientation;->PORTRAIT:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Sizes$Orientation;

    invoke-static {v6}, Lorg/telegram/ui/Components/BackgroundGradientDrawable$Sizes;->ofDeviceScreen(Lorg/telegram/ui/Components/BackgroundGradientDrawable$Sizes$Orientation;)Lorg/telegram/ui/Components/BackgroundGradientDrawable$Sizes;

    move-result-object v6

    .line 870
    new-instance v12, Lorg/telegram/ui/VoIPFragment$3;

    invoke-direct {v12, v0}, Lorg/telegram/ui/VoIPFragment$3;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {v1, v6, v12}, Lorg/telegram/ui/Components/BackgroundGradientDrawable;->startDithering(Lorg/telegram/ui/Components/BackgroundGradientDrawable$Sizes;Lorg/telegram/ui/Components/BackgroundGradientDrawable$Listener;)Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    .line 877
    new-instance v1, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    .line 878
    new-instance v6, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda21;

    invoke-direct {v6, v0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setDelegate(Lorg/telegram/ui/Components/voip/VoIPFloatingLayout$VoIPFloatingLayoutDelegate;)V

    .line 879
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v1, v6, v6}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setRelativePosition(FF)V

    .line 880
    iput-boolean v10, v0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraIsFullscreen:Z

    .line 881
    new-instance v1, Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-direct {v1, v2, v10, v8}, Lorg/telegram/ui/Components/voip/VoIPTextureView;-><init>(Landroid/content/Context;ZZ)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    .line 882
    iget-object v1, v1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v1, v10}, Lorg/webrtc/TextureViewRenderer;->setIsCamera(Z)V

    .line 883
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v1, v10}, Lorg/webrtc/TextureViewRenderer;->setUseCameraRotation(Z)V

    .line 884
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    new-instance v12, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda22;

    invoke-direct {v12, v0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {v1, v12}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setOnTapListener(Landroid/view/View$OnClickListener;)V

    .line 896
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v1, v10}, Lorg/webrtc/TextureViewRenderer;->setMirror(Z)V

    .line 897
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    iget-object v12, v0, Lorg/telegram/ui/VoIPFragment;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v1, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 899
    new-instance v1, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    .line 900
    iput-boolean v10, v1, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->alwaysFloating:Z

    .line 901
    invoke-virtual {v1, v10, v8}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setFloatingMode(ZZ)V

    .line 902
    new-instance v1, Lorg/webrtc/TextureViewRenderer;

    invoke-direct {v1, v2}, Lorg/webrtc/TextureViewRenderer;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniTextureRenderer:Lorg/webrtc/TextureViewRenderer;

    .line 903
    invoke-virtual {v1, v10}, Lorg/webrtc/TextureViewRenderer;->setEnableHardwareScaler(Z)V

    .line 904
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniTextureRenderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v1, v8}, Lorg/webrtc/TextureViewRenderer;->setIsCamera(Z)V

    .line 905
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniTextureRenderer:Lorg/webrtc/TextureViewRenderer;

    const/high16 v12, 0x41f00000    # 30.0f

    invoke-virtual {v1, v12}, Lorg/webrtc/TextureViewRenderer;->setFpsReduction(F)V

    .line 906
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniTextureRenderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v1, v3}, Lorg/webrtc/TextureViewRenderer;->setScalingType(Lorg/webrtc/RendererCommon$ScalingType;)V

    .line 911
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    iget-object v3, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniTextureRenderer:Lorg/webrtc/TextureViewRenderer;

    const/4 v13, -0x2

    const/16 v14, 0x11

    invoke-static {v4, v13, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v1, v3, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 912
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    new-instance v3, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda23;

    invoke-direct {v3, v0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setOnTapListener(Landroid/view/View$OnClickListener;)V

    .line 924
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 926
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    const/high16 v15, -0x40000000    # -2.0f

    invoke-static {v13, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v7, v1, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 927
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 929
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->bottomShadow:Landroid/view/View;

    .line 930
    new-instance v15, Landroid/graphics/drawable/GradientDrawable;

    move/from16 v16, v12

    const/16 v12, 0x7f

    invoke-static {v9, v12}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v12

    filled-new-array {v8, v12}, [I

    move-result-object v12

    invoke-direct {v15, v5, v12}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {v1, v15}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 931
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->bottomShadow:Landroid/view/View;

    const/16 v12, 0xa0

    const/16 v15, 0x50

    invoke-static {v4, v12, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v7, v1, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 933
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->topShadow:Landroid/view/View;

    .line 934
    new-instance v13, Landroid/graphics/drawable/GradientDrawable;

    const/16 v15, 0x66

    invoke-static {v9, v15}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v9

    filled-new-array {v9, v8}, [I

    move-result-object v9

    invoke-direct {v13, v5, v9}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {v1, v13}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 935
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->topShadow:Landroid/view/View;

    const/16 v5, 0x30

    invoke-static {v4, v12, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 937
    new-instance v1, Lorg/telegram/ui/VoIPFragment$4;

    invoke-direct {v1, v0, v2}, Lorg/telegram/ui/VoIPFragment$4;-><init>(Lorg/telegram/ui/VoIPFragment;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->emojiLayout:Landroid/widget/LinearLayout;

    .line 944
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 945
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->emojiLayout:Landroid/widget/LinearLayout;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v1, v8, v8, v8, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 946
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->emojiLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 947
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->emojiLayout:Landroid/widget/LinearLayout;

    sget v5, Lorg/telegram/messenger/R$string;->VoipHintEncryptionKey:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 948
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->emojiLayout:Landroid/widget/LinearLayout;

    new-instance v5, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda24;

    invoke-direct {v5, v0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 959
    new-instance v1, Lorg/telegram/ui/Components/voip/HideEmojiTextView;

    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->backgroundProvider:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    invoke-direct {v1, v2, v5}, Lorg/telegram/ui/Components/voip/HideEmojiTextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->hideEmojiTextView:Landroid/widget/TextView;

    .line 960
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->hideEmojiLayout:Landroid/widget/FrameLayout;

    .line 961
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->hideEmojiTextView:Landroid/widget/TextView;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v18, -0x2

    const/high16 v19, -0x40000000    # -2.0f

    const/16 v20, 0x3

    const/16 v21, 0x0

    const/high16 v22, 0x41800000    # 16.0f

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v1, v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 962
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->hideEmojiLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 963
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->hideEmojiLayout:Landroid/widget/FrameLayout;

    new-instance v5, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda25;

    invoke-direct {v5, v0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 973
    new-instance v1, Lorg/telegram/ui/Components/voip/EmojiRationalLayout;

    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->backgroundProvider:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    invoke-direct {v1, v2, v5}, Lorg/telegram/ui/Components/voip/EmojiRationalLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->emojiRationalLayout:Landroid/widget/LinearLayout;

    .line 974
    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 976
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->emojiRationalTopTextView:Landroid/widget/TextView;

    .line 977
    sget v5, Lorg/telegram/messenger/R$string;->VoipCallEncryptionEndToEnd:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 978
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->emojiRationalTopTextView:Landroid/widget/TextView;

    const/high16 v5, 0x41700000    # 15.0f

    invoke-virtual {v1, v10, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 979
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->emojiRationalTopTextView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 980
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->emojiRationalTopTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 981
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->emojiRationalTopTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 983
    new-instance v1, Lorg/telegram/ui/VoIPFragment$5;

    invoke-direct {v1, v0, v2}, Lorg/telegram/ui/VoIPFragment$5;-><init>(Lorg/telegram/ui/VoIPFragment;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->emojiRationalTextView:Landroid/widget/TextView;

    .line 992
    invoke-virtual {v1, v10, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 993
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->emojiRationalTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 994
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->emojiRationalTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 995
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    iget-object v9, v0, Lorg/telegram/ui/VoIPFragment;->emojiRationalTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    const/high16 v12, 0x43960000    # 300.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    sget-object v13, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v1, v9, v12, v13}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 996
    iget-object v9, v0, Lorg/telegram/ui/VoIPFragment;->emojiRationalTextView:Landroid/widget/TextView;

    sget v12, Lorg/telegram/messenger/R$string;->CallEmojiKeyTooltip:I

    new-array v13, v10, [Ljava/lang/Object;

    aput-object v1, v13, v8

    const-string v1, "CallEmojiKeyTooltip"

    invoke-static {v1, v12, v13}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 998
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->emojiRationalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 999
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->emojiRationalLayout:Landroid/widget/LinearLayout;

    iget-object v9, v0, Lorg/telegram/ui/VoIPFragment;->emojiRationalTopTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1000
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->emojiRationalLayout:Landroid/widget/LinearLayout;

    iget-object v9, v0, Lorg/telegram/ui/VoIPFragment;->emojiRationalTextView:Landroid/widget/TextView;

    const/16 v22, 0x0

    const/16 v19, -0x2

    const/16 v20, 0x0

    const/high16 v21, 0x41000000    # 8.0f

    invoke-static/range {v18 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v1, v9, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1001
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->emojiRationalLayout:Landroid/widget/LinearLayout;

    const/high16 v9, 0x41900000    # 18.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    const/high16 v13, 0x42a00000    # 80.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-virtual {v1, v12, v13, v14, v9}, Landroid/view/View;->setPadding(IIII)V

    move v1, v8

    :goto_1
    const/4 v9, 0x4

    const/4 v13, 0x0

    if-ge v1, v9, :cond_2

    .line 1004
    iget-object v9, v0, Lorg/telegram/ui/VoIPFragment;->emojiViews:[Lorg/telegram/ui/Components/BackupImageView;

    new-instance v14, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v14, v2}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    aput-object v14, v9, v1

    .line 1005
    iget-object v9, v0, Lorg/telegram/ui/VoIPFragment;->emojiViews:[Lorg/telegram/ui/Components/BackupImageView;

    aget-object v9, v9, v1

    invoke-virtual {v9}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v9

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/ImageReceiver;->setAspectFit(Z)V

    .line 1006
    iget-object v9, v0, Lorg/telegram/ui/VoIPFragment;->emojiLayout:Landroid/widget/LinearLayout;

    iget-object v14, v0, Lorg/telegram/ui/VoIPFragment;->emojiViews:[Lorg/telegram/ui/Components/BackupImageView;

    aget-object v14, v14, v1

    if-nez v1, :cond_1

    move/from16 v20, v13

    goto :goto_2

    :cond_1
    const/high16 v20, 0x40c00000    # 6.0f

    :goto_2
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v18, 0x19

    const/16 v19, 0x19

    const/16 v21, 0x0

    invoke-static/range {v18 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v9, v14, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1008
    :cond_2
    new-instance v1, Lorg/telegram/ui/VoIPFragment$6;

    invoke-direct {v1, v0, v2}, Lorg/telegram/ui/VoIPFragment$6;-><init>(Lorg/telegram/ui/VoIPFragment;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->statusLayout:Landroid/widget/LinearLayout;

    .line 1034
    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1035
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->statusLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v10}, Landroid/view/View;->setFocusable(Z)V

    .line 1036
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->statusLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v10}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 1038
    new-instance v1, Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/voip/ImageWithWavesView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    .line 1039
    new-instance v1, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v1}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    .line 1040
    iget-object v14, v0, Lorg/telegram/ui/VoIPFragment;->callingUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v1, v14}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 1041
    iget-object v14, v0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    iget-object v15, v0, Lorg/telegram/ui/VoIPFragment;->callingUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v15, v8}, Lorg/telegram/messenger/ImageLocation;->getForUserOrChat(Lorg/telegram/tgnet/TLObject;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v15

    move/from16 v16, v5

    const/4 v5, 0x0

    iget-object v12, v0, Lorg/telegram/ui/VoIPFragment;->callingUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v14, v15, v5, v1, v12}, Lorg/telegram/ui/Components/voip/ImageWithWavesView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    .line 1042
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    const/high16 v5, 0x43070000    # 135.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v12, 0x2

    div-int/2addr v5, v12

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/voip/ImageWithWavesView;->setRoundRadius(I)V

    .line 1044
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTitle:Landroid/widget/TextView;

    const/high16 v5, 0x41e00000    # 28.0f

    .line 1045
    invoke-virtual {v1, v10, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1046
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v5, v1}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1047
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTitle:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v5

    invoke-static {v1, v5, v8}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1048
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTitle:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1049
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1050
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTitle:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1051
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1052
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 1053
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1054
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->statusLayout:Landroid/widget/LinearLayout;

    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTitle:Landroid/widget/TextView;

    const/16 v24, 0x8

    const/16 v25, 0x6

    const/16 v19, -0x2

    const/16 v20, -0x2

    const/16 v21, 0x1

    const/16 v22, 0x8

    const/16 v23, 0x0

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v1, v5, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1056
    new-instance v1, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->backgroundProvider:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    invoke-direct {v1, v2, v5}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    .line 1057
    invoke-static {v1, v9}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 1058
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->statusLayout:Landroid/widget/LinearLayout;

    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    const/16 v24, 0x0

    const/16 v22, 0x0

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v1, v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v11, :cond_3

    .line 1060
    invoke-interface {v11}, Lorg/telegram/messenger/voip/VoIPServiceState;->getUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v11}, Lorg/telegram/messenger/voip/VoIPServiceState;->isConference()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v11}, Lorg/telegram/messenger/voip/VoIPServiceState;->getGroupCall()Lorg/telegram/tgnet/TLRPC$GroupCall;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1061
    new-instance v1, Lorg/telegram/ui/VoIPFragment$ConferenceParticipantsView;

    invoke-direct {v1, v2}, Lorg/telegram/ui/VoIPFragment$ConferenceParticipantsView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->participantsView:Lorg/telegram/ui/VoIPFragment$ConferenceParticipantsView;

    .line 1062
    iget v5, v0, Lorg/telegram/ui/VoIPFragment;->currentAccount:I

    invoke-interface {v11}, Lorg/telegram/messenger/voip/VoIPServiceState;->getUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v9

    iget-wide v14, v9, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-interface {v11}, Lorg/telegram/messenger/voip/VoIPServiceState;->getGroupParticipants()Ljava/util/ArrayList;

    move-result-object v23

    invoke-interface {v11}, Lorg/telegram/messenger/voip/VoIPServiceState;->getGroupCall()Lorg/telegram/tgnet/TLRPC$GroupCall;

    move-result-object v9

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$GroupCall;->participants_count:I

    move-object/from16 v19, v1

    move/from16 v20, v5

    move/from16 v24, v9

    move-wide/from16 v21, v14

    invoke-virtual/range {v19 .. v24}, Lorg/telegram/ui/VoIPFragment$ConferenceParticipantsView;->set(IJLjava/util/ArrayList;I)V

    .line 1063
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->statusLayout:Landroid/widget/LinearLayout;

    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->participantsView:Lorg/telegram/ui/VoIPFragment$ConferenceParticipantsView;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v19, -0x1

    const/16 v20, 0x1e

    const/16 v21, 0x0

    const/high16 v22, 0x41b00000    # 22.0f

    invoke-static/range {v19 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v1, v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1066
    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->statusLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 1067
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->statusLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 1068
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->statusLayout:Landroid/widget/LinearLayout;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v1, v8, v8, v8, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 1070
    new-instance v1, Lorg/telegram/ui/Components/voip/EndCloseLayout;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/voip/EndCloseLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->endCloseLayout:Lorg/telegram/ui/Components/voip/EndCloseLayout;

    .line 1071
    new-instance v1, Lorg/telegram/ui/Components/voip/RateCallLayout;

    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->backgroundProvider:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    invoke-direct {v1, v2, v5}, Lorg/telegram/ui/Components/voip/RateCallLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->rateCallLayout:Lorg/telegram/ui/Components/voip/RateCallLayout;

    .line 1072
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->endCloseLayout:Lorg/telegram/ui/Components/voip/EndCloseLayout;

    invoke-virtual {v1, v13}, Landroid/view/View;->setAlpha(F)V

    .line 1073
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->rateCallLayout:Lorg/telegram/ui/Components/voip/RateCallLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1075
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v19, 0xcc

    const/high16 v20, 0x434c0000    # 204.0f

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/high16 v23, 0x42ba0000    # 93.0f

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1076
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->statusLayout:Landroid/widget/LinearLayout;

    const/16 v19, -0x1

    const/high16 v20, -0x40000000    # -2.0f

    const/16 v21, 0x0

    const/high16 v23, 0x43070000    # 135.0f

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1077
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->hideEmojiLayout:Landroid/widget/FrameLayout;

    const/16 v19, -0x2

    const/16 v21, 0x1

    const/16 v23, 0x0

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1078
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->emojiRationalLayout:Landroid/widget/LinearLayout;

    const/16 v19, 0x130

    const/16 v21, 0x31

    const/high16 v23, 0x42ec0000    # 118.0f

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1079
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->emojiLayout:Landroid/widget/LinearLayout;

    const/16 v19, -0x2

    const/16 v21, 0x1

    const/16 v23, 0x0

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1080
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->endCloseLayout:Lorg/telegram/ui/Components/voip/EndCloseLayout;

    const/16 v19, -0x1

    const/high16 v20, 0x42500000    # 52.0f

    const/16 v21, 0x5

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1081
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->rateCallLayout:Lorg/telegram/ui/Components/voip/RateCallLayout;

    const/high16 v20, -0x40000000    # -2.0f

    const/16 v21, 0x3

    const/high16 v23, 0x43be0000    # 380.0f

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1083
    new-instance v1, Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->buttonsLayout:Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;

    .line 1084
    new-instance v1, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->backgroundProvider:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    invoke-direct {v1, v2, v5}, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->bottomSpeakerBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    .line 1085
    new-instance v1, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->backgroundProvider:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    invoke-direct {v1, v2, v5}, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->bottomVideoBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    .line 1086
    new-instance v1, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->backgroundProvider:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    invoke-direct {v1, v2, v5}, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->bottomMuteBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    .line 1087
    new-instance v1, Lorg/telegram/ui/VoIPFragment$7;

    const/high16 v5, 0x42500000    # 52.0f

    invoke-direct {v1, v0, v2, v5}, Lorg/telegram/ui/VoIPFragment$7;-><init>(Lorg/telegram/ui/VoIPFragment;Landroid/content/Context;F)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->bottomEndCallBtn:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    .line 1095
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->bottomSpeakerBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    const/high16 v5, 0x42c80000    # 100.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v1, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 1096
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->bottomSpeakerBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v1, v13}, Landroid/view/View;->setScaleX(F)V

    .line 1097
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->bottomSpeakerBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v1, v13}, Landroid/view/View;->setScaleY(F)V

    .line 1098
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->bottomSpeakerBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/16 v9, 0x96

    int-to-long v11, v9

    invoke-virtual {v1, v11, v12}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v11, 0xfa

    invoke-virtual {v1, v11, v12}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1099
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->bottomVideoBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v1, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 1100
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->bottomVideoBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v1, v13}, Landroid/view/View;->setScaleX(F)V

    .line 1101
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->bottomVideoBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v1, v13}, Landroid/view/View;->setScaleY(F)V

    .line 1102
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->bottomVideoBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/16 v9, 0xa6

    int-to-long v14, v9

    invoke-virtual {v1, v14, v15}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v11, v12}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1103
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->bottomMuteBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v1, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 1104
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->bottomMuteBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v1, v13}, Landroid/view/View;->setScaleX(F)V

    .line 1105
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->bottomMuteBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v1, v13}, Landroid/view/View;->setScaleY(F)V

    .line 1106
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->bottomMuteBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/16 v9, 0xb6

    int-to-long v14, v9

    invoke-virtual {v1, v14, v15}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v11, v12}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1107
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->bottomEndCallBtn:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 1108
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->bottomEndCallBtn:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    invoke-virtual {v1, v13}, Landroid/view/View;->setScaleX(F)V

    .line 1109
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->bottomEndCallBtn:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    invoke-virtual {v1, v13}, Landroid/view/View;->setScaleY(F)V

    .line 1110
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->bottomEndCallBtn:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/16 v5, 0xc6

    int-to-long v14, v5

    invoke-virtual {v1, v14, v15}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v11, v12}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1112
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->buttonsLayout:Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;

    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->bottomSpeakerBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1113
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->buttonsLayout:Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;

    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->bottomVideoBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1114
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->buttonsLayout:Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;

    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->bottomMuteBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1115
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->buttonsLayout:Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;

    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->bottomEndCallBtn:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1117
    new-instance v1, Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/voip/AcceptDeclineView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    .line 1118
    new-instance v5, Lorg/telegram/ui/VoIPFragment$8;

    invoke-direct {v5, v0}, Lorg/telegram/ui/VoIPFragment$8;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->setListener(Lorg/telegram/ui/Components/voip/AcceptDeclineView$Listener;)V

    .line 1166
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    const v5, 0x3f933333    # 1.15f

    invoke-virtual {v1, v5}, Landroid/view/View;->setScaleX(F)V

    .line 1167
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setScaleY(F)V

    .line 1169
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->buttonsLayout:Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;

    const/16 v5, 0x50

    const/4 v6, -0x2

    invoke-static {v4, v6, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v7, v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1170
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x64

    goto :goto_3

    :cond_4
    const/16 v1, 0x1b

    .line 1171
    :goto_3
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    int-to-float v1, v1

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v19, -0x1

    const/high16 v20, 0x433a0000    # 186.0f

    const/16 v21, 0x50

    move/from16 v24, v1

    move/from16 v22, v1

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1173
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->addIcon:Landroid/widget/ImageView;

    const/16 v5, 0x4c

    .line 1174
    invoke-static {v4, v5}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v6

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1175
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->addIcon:Landroid/widget/ImageView;

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_addcontact:I

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1176
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->addIcon:Landroid/widget/ImageView;

    const/high16 v6, 0x41800000    # 16.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    invoke-virtual {v1, v9, v11, v12, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 1177
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->addIcon:Landroid/widget/ImageView;

    const/16 v9, 0x35

    const/16 v11, 0x38

    invoke-static {v11, v11, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v7, v1, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1178
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->addIcon:Landroid/widget/ImageView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    .line 1180
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    .line 1181
    invoke-static {v4, v5}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v9

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1182
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    sget v9, Lorg/telegram/messenger/R$drawable;->msg_call_minimize_shadow:I

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1183
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v1, v9, v12, v14, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 1184
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    sget v6, Lorg/telegram/messenger/R$string;->Back:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1185
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    const/16 v6, 0x33

    invoke-static {v11, v11, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v7, v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1186
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    .line 1188
    new-instance v1, Lorg/telegram/ui/VoIPFragment$9;

    invoke-direct {v1, v0, v2}, Lorg/telegram/ui/VoIPFragment$9;-><init>(Lorg/telegram/ui/VoIPFragment;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    .line 1200
    sget v6, Lorg/telegram/messenger/R$string;->VoipSpeaker:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1201
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    invoke-static {v4, v5}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1202
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v1, v5, v6, v9, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 1203
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    const/16 v24, 0x0

    const/16 v19, 0x38

    const/high16 v20, 0x42600000    # 56.0f

    const/16 v21, 0x35

    const/16 v22, 0x0

    const/high16 v23, 0x42600000    # 56.0f

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v7, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1204
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v13}, Landroid/view/View;->setAlpha(F)V

    .line 1205
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    new-instance v4, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda26;

    invoke-direct {v4, v0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1224
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    new-instance v4, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda27;

    invoke-direct {v4, v0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1228
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->addIcon:Landroid/widget/ImageView;

    new-instance v4, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda28;

    invoke-direct {v4, v0, v2}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/VoIPFragment;Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1244
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->isLockOnScreen()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1245
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1246
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->addIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1249
    :cond_5
    new-instance v1, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    iget-object v3, v0, Lorg/telegram/ui/VoIPFragment;->backgroundProvider:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    const/16 v5, 0x50

    .line 1250
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1251
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    new-instance v3, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda29;

    invoke-direct {v3, v0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->setOnViewsUpdated(Ljava/lang/Runnable;)V

    .line 1255
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    const/high16 v16, 0x41800000    # 16.0f

    const/16 v17, 0x0

    const/4 v11, -0x1

    const/high16 v12, 0x43480000    # 200.0f

    const/16 v13, 0x50

    const/high16 v14, 0x41800000    # 16.0f

    const/4 v15, 0x0

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1257
    new-instance v1, Lorg/telegram/ui/Components/voip/VoIpHintView;

    const/4 v3, 0x3

    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->backgroundProvider:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    invoke-direct {v1, v2, v3, v4, v10}, Lorg/telegram/ui/Components/voip/VoIpHintView;-><init>(Landroid/content/Context;ILorg/telegram/ui/Components/voip/VoIPBackgroundProvider;Z)V

    .line 1258
    invoke-virtual {v1, v10}, Lorg/telegram/ui/Stories/recorder/HintView2;->setMultilineText(Z)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v1

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 1259
    invoke-virtual {v1, v3}, Lorg/telegram/ui/Stories/recorder/HintView2;->setTextAlign(Landroid/text/Layout$Alignment;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v1

    const-wide/16 v4, -0x1

    .line 1260
    invoke-virtual {v1, v4, v5}, Lorg/telegram/ui/Stories/recorder/HintView2;->setDuration(J)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v1

    new-instance v4, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda30;

    invoke-direct {v4, v0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    .line 1261
    invoke-virtual {v1, v4}, Lorg/telegram/ui/Stories/recorder/HintView2;->setOnHiddenListener(Ljava/lang/Runnable;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v1

    .line 1262
    invoke-virtual {v1, v10}, Lorg/telegram/ui/Stories/recorder/HintView2;->setHideByTouch(Z)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v1

    const/high16 v4, 0x43a00000    # 320.0f

    .line 1263
    invoke-virtual {v1, v4}, Lorg/telegram/ui/Stories/recorder/HintView2;->setMaxWidth(F)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v1

    .line 1264
    invoke-virtual {v1, v10}, Lorg/telegram/ui/Stories/recorder/HintView2;->useScale(Z)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v1

    const/high16 v5, 0x41200000    # 10.0f

    const/high16 v6, 0x40c00000    # 6.0f

    .line 1265
    invoke-virtual {v1, v5, v6, v5, v6}, Lorg/telegram/ui/Stories/recorder/HintView2;->setInnerPadding(FFFF)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v1

    const/high16 v6, 0x41000000    # 8.0f

    .line 1266
    invoke-virtual {v1, v6}, Lorg/telegram/ui/Stories/recorder/HintView2;->setRounding(F)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->tapToVideoTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1267
    sget v9, Lorg/telegram/messenger/R$string;->TapToTurnCamera:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lorg/telegram/ui/Stories/recorder/HintView2;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1268
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->tapToVideoTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/high16 v16, 0x41980000    # 19.0f

    const/4 v11, -0x2

    const/high16 v12, -0x40000000    # -2.0f

    const/high16 v14, 0x41980000    # 19.0f

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v7, v1, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1270
    new-instance v1, Lorg/telegram/ui/Components/voip/VoIpHintView;

    iget-object v9, v0, Lorg/telegram/ui/VoIPFragment;->backgroundProvider:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    invoke-direct {v1, v2, v10, v9, v8}, Lorg/telegram/ui/Components/voip/VoIpHintView;-><init>(Landroid/content/Context;ILorg/telegram/ui/Components/voip/VoIPBackgroundProvider;Z)V

    .line 1271
    invoke-virtual {v1, v10}, Lorg/telegram/ui/Stories/recorder/HintView2;->setMultilineText(Z)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v1

    .line 1272
    invoke-virtual {v1, v3}, Lorg/telegram/ui/Stories/recorder/HintView2;->setTextAlign(Landroid/text/Layout$Alignment;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v1

    const-wide/16 v2, 0xfa0

    .line 1273
    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Stories/recorder/HintView2;->setDuration(J)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v1

    .line 1274
    invoke-virtual {v1, v10}, Lorg/telegram/ui/Stories/recorder/HintView2;->setHideByTouch(Z)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v1

    .line 1275
    invoke-virtual {v1, v4}, Lorg/telegram/ui/Stories/recorder/HintView2;->setMaxWidth(F)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v1

    .line 1276
    invoke-virtual {v1, v10}, Lorg/telegram/ui/Stories/recorder/HintView2;->useScale(Z)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v1

    const/high16 v2, 0x40c00000    # 6.0f

    .line 1277
    invoke-virtual {v1, v5, v2, v5, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->setInnerPadding(FFFF)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v1

    .line 1278
    invoke-virtual {v1, v6}, Lorg/telegram/ui/Stories/recorder/HintView2;->setRounding(F)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->encryptionTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1279
    sget v2, Lorg/telegram/messenger/R$string;->VoipHintEncryptionKey:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1280
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->encryptionTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/16 v16, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1282
    invoke-direct {v0}, Lorg/telegram/ui/VoIPFragment;->updateViewState()V

    .line 1284
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 1286
    iget-boolean v2, v0, Lorg/telegram/ui/VoIPFragment;->isVideoCall:Z

    if-nez v2, :cond_7

    .line 1287
    iget-object v1, v1, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    if-eqz v1, :cond_6

    iget-boolean v1, v1, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->video:Z

    if-eqz v1, :cond_6

    move v8, v10

    :cond_6
    iput-boolean v8, v0, Lorg/telegram/ui/VoIPFragment;->isVideoCall:Z

    .line 1289
    :cond_7
    invoke-direct {v0}, Lorg/telegram/ui/VoIPFragment;->initRenderers()V

    :cond_8
    return-object v7
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 2

    .line 585
    sget p2, Lorg/telegram/messenger/NotificationCenter;->voipServiceCreated:I

    if-ne p1, p2, :cond_0

    .line 586
    iget p1, p0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    const/16 p2, 0x11

    if-ne p1, p2, :cond_4

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 587
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object p1, p1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {p1}, Lorg/webrtc/TextureViewRenderer;->release()V

    .line 588
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object p1, p1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {p1}, Lorg/webrtc/TextureViewRenderer;->release()V

    .line 589
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniTextureRenderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {p1}, Lorg/webrtc/TextureViewRenderer;->release()V

    .line 590
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->initRenderers()V

    .line 591
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/telegram/messenger/voip/VoIPService;->registerStateListener(Lorg/telegram/messenger/voip/VoIPService$StateListener;)V

    return-void

    .line 593
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    const/4 v0, 0x1

    if-ne p1, p2, :cond_1

    .line 594
    invoke-direct {p0, v0}, Lorg/telegram/ui/VoIPFragment;->updateKeyView(Z)V

    return-void

    .line 595
    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->closeInCallActivity:I

    if-ne p1, p2, :cond_2

    .line 596
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->finish()V

    return-void

    .line 597
    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->webRtcSpeakerAmplitudeEvent:I

    const/4 v1, 0x0

    if-ne p1, p2, :cond_3

    .line 598
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    aget-object p2, p3, v1

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const/high16 p3, 0x41700000    # 15.0f

    mul-float/2addr p2, p3

    float-to-double p2, p2

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/voip/ImageWithWavesView;->setAmplitude(D)V

    return-void

    .line 599
    :cond_3
    sget p2, Lorg/telegram/messenger/NotificationCenter;->nearEarEvent:I

    if-ne p1, p2, :cond_4

    .line 600
    aget-object p1, p3, v1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->isNearEar:Z

    if-eqz p1, :cond_4

    .line 602
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    invoke-virtual {p1, v0, v0}, Lorg/telegram/ui/Components/voip/ImageWithWavesView;->setMute(ZZ)V

    :cond_4
    return-void
.end method

.method public finish()V
    .locals 1

    .line 477
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->finish()V

    return-void
.end method

.method public onAudioSettingsChanged()V
    .locals 1

    const/4 v0, 0x1

    .line 630
    invoke-direct {p0, v0}, Lorg/telegram/ui/VoIPFragment;->updateButtons(Z)V

    return-void
.end method

.method public synthetic onCameraFirstFrameAvailable()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/messenger/voip/VoIPService$StateListener$-CC;->$default$onCameraFirstFrameAvailable(Lorg/telegram/messenger/voip/VoIPService$StateListener;)V

    return-void
.end method

.method public onCameraSwitch(Z)V
    .locals 0

    .line 657
    iget p1, p0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->previousState:I

    .line 658
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateViewState()V

    return-void
.end method

.method public onMediaStateUpdated(II)V
    .locals 1

    .line 635
    iget p1, p0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->previousState:I

    const/4 p1, 0x1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 636
    iget-boolean p2, p0, Lorg/telegram/ui/VoIPFragment;->isVideoCall:Z

    if-nez p2, :cond_0

    .line 637
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->isVideoCall:Z

    .line 639
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 640
    invoke-virtual {p2}, Lorg/telegram/messenger/voip/VoIPService;->getRemoteVideoState()I

    move-result p2

    if-ne p2, v0, :cond_1

    .line 641
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->pipSource:Lorg/telegram/messenger/pip/PipSource;

    if-nez p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    invoke-static {p2}, Lorg/telegram/messenger/pip/utils/PipUtils;->checkPermissions(Landroid/content/Context;)I

    move-result p2

    if-ne p2, p1, :cond_2

    .line 642
    new-instance p1, Lorg/telegram/messenger/pip/PipSource$Builder;

    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    invoke-direct {p1, p2, v0}, Lorg/telegram/messenger/pip/PipSource$Builder;-><init>(Landroid/app/Activity;Lorg/telegram/messenger/pip/source/IPipSourceDelegate;)V

    const-string/jumbo p2, "voip-fragment-pip"

    .line 643
    invoke-virtual {p1, p2}, Lorg/telegram/messenger/pip/PipSource$Builder;->setTagPrefix(Ljava/lang/String;)Lorg/telegram/messenger/pip/PipSource$Builder;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object p2, p2, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    .line 644
    invoke-virtual {p1, p2}, Lorg/telegram/messenger/pip/PipSource$Builder;->setContentView(Landroid/view/View;)Lorg/telegram/messenger/pip/PipSource$Builder;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    .line 645
    invoke-virtual {p2}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->getPlaceholderView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/pip/PipSource$Builder;->setPlaceholderView(Landroid/view/View;)Lorg/telegram/messenger/pip/PipSource$Builder;

    move-result-object p1

    .line 646
    invoke-virtual {p1}, Lorg/telegram/messenger/pip/PipSource$Builder;->build()Lorg/telegram/messenger/pip/PipSource;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/VoIPFragment;->pipSource:Lorg/telegram/messenger/pip/PipSource;

    goto :goto_0

    .line 648
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->pipSource:Lorg/telegram/messenger/pip/PipSource;

    if-eqz p1, :cond_2

    .line 649
    invoke-virtual {p1}, Lorg/telegram/messenger/pip/PipSource;->destroy()V

    const/4 p1, 0x0

    .line 650
    iput-object p1, p0, Lorg/telegram/ui/VoIPFragment;->pipSource:Lorg/telegram/messenger/pip/PipSource;

    .line 652
    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateViewState()V

    return-void
.end method

.method public onPauseInternal()V
    .locals 8

    .line 3028
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 3031
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    .line 3033
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lorg/telegram/messenger/pip/utils/PipUtils;->checkPermissions(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 3036
    :goto_0
    iget-boolean v5, p0, Lorg/telegram/ui/VoIPFragment;->canSwitchToPip:Z

    if-eqz v5, :cond_1

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/voip/VoIPService;->isConverting()Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x2

    if-ne v1, v5, :cond_1

    .line 3037
    sget-object v1, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v1, v1, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 3038
    sget-object v5, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v6, v5, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    iget v7, v5, Lorg/telegram/ui/VoIPFragment;->currentAccount:I

    iget-object v5, v5, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-static {v6, v7, v5, v1, v3}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->show(Landroid/app/Activity;IIII)V

    .line 3039
    sget-object v1, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v1, v1, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    if-eqz v1, :cond_1

    .line 3040
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    sput v1, Lorg/telegram/ui/Components/voip/VoIPPiPView;->topInset:I

    .line 3041
    sget-object v1, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v1, v1, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v1

    sput v1, Lorg/telegram/ui/Components/voip/VoIPPiPView;->bottomInset:I

    .line 3045
    :cond_1
    iget-boolean v1, p0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-eqz v1, :cond_3

    if-eqz v4, :cond_2

    if-nez v0, :cond_3

    .line 3046
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3048
    invoke-virtual {v0, v3, v2}, Lorg/telegram/messenger/voip/VoIPService;->setVideoState(ZI)V

    :cond_3
    return-void
.end method

.method public onResumeInternal()V
    .locals 4

    .line 3054
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->getInstance()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3055
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->finish()V

    .line 3057
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 3059
    invoke-virtual {v0, v1}, Lorg/telegram/messenger/voip/VoIPService;->getVideoState(Z)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x2

    .line 3060
    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/voip/VoIPService;->setVideoState(ZI)V

    .line 3062
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateViewState()V

    goto :goto_0

    .line 3063
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedState()Lorg/telegram/messenger/voip/VoIPServiceState;

    move-result-object v0

    if-nez v0, :cond_3

    .line 3064
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->finish()V

    .line 3067
    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->deviceIsLocked:Z

    return-void
.end method

.method public onScreenCastStart()V
    .locals 2

    .line 2865
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->previewDialog:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 2868
    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->dismiss(ZZ)V

    return-void
.end method

.method public onScreenOnChange(Z)V
    .locals 0

    return-void
.end method

.method public onSignalBarsCountChanged(I)V
    .locals 3

    if-lez p1, :cond_0

    const/4 v0, 0x1

    .line 612
    iput-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->signalBarWasReceived:Z

    .line 614
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->gradientLayout:Lorg/telegram/ui/Components/voip/VoIpGradientLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->isConnectedCalled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->signalBarWasReceived:Z

    if-eqz v0, :cond_1

    .line 615
    new-instance v0, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/VoIPFragment;I)V

    const-wide/16 v1, 0x190

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method

.method public onStateChanged(I)V
    .locals 1

    .line 574
    iget v0, p0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    if-eq v0, p1, :cond_0

    .line 575
    iput v0, p0, Lorg/telegram/ui/VoIPFragment;->previousState:I

    .line 576
    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    .line 577
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    if-eqz p1, :cond_0

    .line 578
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateViewState()V

    :cond_0
    return-void
.end method

.method public onVideoAvailableChange(Z)V
    .locals 1

    .line 663
    iget v0, p0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    iput v0, p0, Lorg/telegram/ui/VoIPFragment;->previousState:I

    if-eqz p1, :cond_0

    .line 664
    iget-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->isVideoCall:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 665
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->isVideoCall:Z

    .line 667
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateViewState()V

    return-void
.end method

.method public pipCreatePictureInPictureView()Landroid/view/View;
    .locals 6

    .line 3145
    new-instance v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/voip/VoIPTextureView;-><init>(Landroid/content/Context;ZZZZ)V

    iput-object v0, p0, Lorg/telegram/ui/VoIPFragment;->pipTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    .line 3146
    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    sget-object v1, Lorg/webrtc/RendererCommon$ScalingType;->SCALE_ASPECT_FIT:Lorg/webrtc/RendererCommon$ScalingType;

    invoke-virtual {v0, v1}, Lorg/webrtc/TextureViewRenderer;->setScalingType(Lorg/webrtc/RendererCommon$ScalingType;)V

    .line 3147
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->pipTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/webrtc/TextureViewRenderer;->setEnableHardwareScaler(Z)V

    .line 3148
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->pipTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v0, v1}, Lorg/webrtc/TextureViewRenderer;->setRotateTextureWithScreen(Z)V

    .line 3149
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->pipTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    sget v1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->SCALE_TYPE_FIT:I

    iput v1, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->scaleType:I

    .line 3150
    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-static {}, Lorg/telegram/messenger/voip/VideoCapturerDevice;->getEglBase()Lorg/webrtc/EglBase;

    move-result-object v1

    invoke-interface {v1}, Lorg/webrtc/EglBase;->getEglBaseContext()Lorg/webrtc/EglBase$Context;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/VoIPFragment$25;

    invoke-direct {v2, p0}, Lorg/telegram/ui/VoIPFragment$25;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {v0, v1, v2}, Lorg/webrtc/TextureViewRenderer;->init(Lorg/webrtc/EglBase$Context;Lorg/webrtc/RendererCommon$RendererEvents;)V

    .line 3164
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->pipTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->backgroundView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 3165
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3168
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->pipTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    return-object v0
.end method

.method public pipCreatePictureInPictureViewBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 3188
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->pipTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3192
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->pipTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public pipCreatePrimaryWindowViewBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 3131
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3135
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public pipHidePrimaryWindowView(Ljava/lang/Runnable;)V
    .locals 1

    .line 3173
    iput-object p1, p0, Lorg/telegram/ui/VoIPFragment;->firstFrameCallback:Ljava/lang/Runnable;

    .line 3174
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    if-eqz p1, :cond_0

    .line 3175
    iget-object p1, p1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {p1}, Lorg/webrtc/TextureViewRenderer;->clearFirstFrame()V

    :cond_0
    const/4 p1, 0x1

    .line 3178
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->windowViewSkipRender:Z

    .line 3179
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateViewState()V

    .line 3181
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 3182
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-interface {p1, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 3183
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public synthetic pipIsAvailable()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/messenger/pip/source/IPipSourceDelegate$-CC;->$default$pipIsAvailable(Lorg/telegram/messenger/pip/source/IPipSourceDelegate;)Z

    move-result v0

    return v0
.end method

.method public pipRenderBackground(Landroid/graphics/Canvas;)V
    .locals 1

    const v0, -0xe4e0dd

    .line 3140
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    return-void
.end method

.method public synthetic pipRenderForeground(Landroid/graphics/Canvas;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/messenger/pip/source/IPipSourceDelegate$-CC;->$default$pipRenderForeground(Lorg/telegram/messenger/pip/source/IPipSourceDelegate;Landroid/graphics/Canvas;)V

    return-void
.end method

.method public pipShowPrimaryWindowView(Ljava/lang/Runnable;)V
    .locals 2

    .line 3197
    iput-object p1, p0, Lorg/telegram/ui/VoIPFragment;->firstFrameCallback:Ljava/lang/Runnable;

    .line 3198
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 3199
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->createWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 3201
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->windowViewSkipRender:Z

    .line 3202
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateViewState()V

    .line 3203
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 3205
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->pipTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    if-eqz p1, :cond_0

    .line 3206
    iget-object p1, p1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {p1}, Lorg/webrtc/TextureViewRenderer;->release()V

    const/4 p1, 0x0

    .line 3207
    iput-object p1, p0, Lorg/telegram/ui/VoIPFragment;->pipTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    :cond_0
    return-void
.end method

.method public replaceEmojiToLottieFrame(Ljava/lang/CharSequence;[I)Lorg/telegram/tgnet/TLRPC$Document;
    .locals 11

    .line 3093
    instance-of v0, p1, Landroid/text/Spannable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 3096
    :cond_0
    check-cast p1, Landroid/text/Spannable;

    .line 3097
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-class v2, Lorg/telegram/messenger/Emoji$EmojiSpan;

    const/4 v3, 0x0

    invoke-interface {p1, v3, v0, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/messenger/Emoji$EmojiSpan;

    .line 3098
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-class v4, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-interface {p1, v3, v2, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-eqz v0, :cond_8

    if-nez p2, :cond_1

    move p2, v3

    goto :goto_0

    .line 3100
    :cond_1
    aget p2, p2, v3

    :goto_0
    array-length v2, v0

    sub-int/2addr p2, v2

    if-nez p1, :cond_2

    move p1, v3

    goto :goto_1

    :cond_2
    array-length p1, p1

    :goto_1
    sub-int/2addr p2, p1

    if-lez p2, :cond_3

    goto :goto_4

    .line 3104
    :cond_3
    array-length p1, v0

    move p2, v3

    :goto_2
    if-ge p2, p1, :cond_8

    aget-object v2, v0, p2

    .line 3105
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;-><init>()V

    .line 3106
    const-string v4, "StaticEmoji"

    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->short_name:Ljava/lang/String;

    .line 3107
    iget v4, p0, Lorg/telegram/ui/VoIPFragment;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v9, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda8;

    invoke-direct {v9, p0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/messenger/MediaDataController;->getStickerSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Ljava/lang/Integer;ZZLorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v4

    if-nez v4, :cond_4

    return-object v1

    .line 3110
    :cond_4
    iget-object v2, v2, Lorg/telegram/messenger/Emoji$EmojiSpan;->emoji:Ljava/lang/String;

    const-string/jumbo v5, "\ufe0f"

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 3112
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v3

    :cond_5
    if-ge v8, v7, :cond_6

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Lorg/telegram/tgnet/TLRPC$Document;

    .line 3113
    invoke-static {v9, v1}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    goto :goto_3

    :cond_6
    move-object v9, v1

    :goto_3
    if-eqz v9, :cond_7

    return-object v9

    :cond_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_8
    :goto_4
    return-object v1
.end method

.method public startTransitionFromPiP()V
    .locals 3

    const/4 v0, 0x1

    .line 1538
    iput-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->enterFromPiP:Z

    .line 1539
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 1540
    invoke-virtual {v1, v2}, Lorg/telegram/messenger/voip/VoIPService;->getVideoState(Z)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1541
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->getInstance()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/Components/voip/VoIPPiPView;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->setStub(Lorg/telegram/ui/Components/voip/VoIPTextureView;)V

    .line 1542
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->getInstance()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/Components/voip/VoIPPiPView;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->setStub(Lorg/telegram/ui/Components/voip/VoIPTextureView;)V

    .line 1544
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1545
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateViewState()V

    .line 1546
    iput-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->switchingToPip:Z

    .line 1547
    sput-boolean v0, Lorg/telegram/ui/Components/voip/VoIPPiPView;->switchingToPip:Z

    .line 1548
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->prepareForTransition()V

    .line 1549
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {v0}, Lorg/telegram/messenger/AnimationNotificationsLocker;->lock()V

    .line 1550
    new-instance v0, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    const-wide/16 v1, 0x20

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public switchToPip()V
    .locals 6

    .line 1482
    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->isFinished:Z

    if-nez v0, :cond_3

    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 1485
    iput-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->isFinished:Z

    .line 1486
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1487
    sget-object v1, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v1, v1, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 1488
    sget-object v2, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v3, v2, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    iget v4, v2, Lorg/telegram/ui/VoIPFragment;->currentAccount:I

    iget-object v2, v2, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-static {v3, v4, v2, v1, v0}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->show(Landroid/app/Activity;IIII)V

    .line 1489
    sget-object v1, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v1, v1, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    if-eqz v1, :cond_1

    .line 1490
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    sput v1, Lorg/telegram/ui/Components/voip/VoIPPiPView;->topInset:I

    .line 1491
    sget-object v1, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v1, v1, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v1

    sput v1, Lorg/telegram/ui/Components/voip/VoIPPiPView;->bottomInset:I

    .line 1494
    :cond_1
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->getInstance()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v1

    if-nez v1, :cond_2

    goto/16 :goto_0

    .line 1498
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v3, 0x96

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v5, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1499
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1500
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->addIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1501
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->emojiLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1502
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->statusLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1503
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->buttonsLayout:Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v3, 0x15e

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1504
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->bottomShadow:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1505
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->topShadow:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1506
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1507
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1509
    sput-boolean v0, Lorg/telegram/ui/Components/voip/VoIPPiPView;->switchingToPip:Z

    .line 1510
    iput-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->switchingToPip:Z

    const/4 v0, 0x0

    .line 1511
    invoke-virtual {p0, v0}, Lorg/telegram/ui/VoIPFragment;->createPiPTransition(Z)Landroid/animation/Animator;

    move-result-object v0

    .line 1512
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {v1}, Lorg/telegram/messenger/AnimationNotificationsLocker;->lock()V

    .line 1513
    new-instance v1, Lorg/telegram/ui/VoIPFragment$14;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VoIPFragment$14;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1532
    invoke-virtual {v0, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1533
    invoke-virtual {v0, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1534
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_3
    :goto_0
    return-void
.end method
