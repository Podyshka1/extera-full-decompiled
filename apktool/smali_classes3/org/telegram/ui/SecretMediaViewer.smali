.class public Lorg/telegram/ui/SecretMediaViewer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;,
        Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;,
        Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;,
        Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;
    }
.end annotation


# static fields
.field private static volatile Instance:Lorg/telegram/ui/SecretMediaViewer;


# instance fields
.field public final ANIMATION_VALUE:Landroid/util/Property;

.field public final VIDEO_CROSSFADE_ALPHA:Landroid/util/Property;

.field private actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

.field private animateFromRadius:[I

.field private animateToClipBottom:F

.field private animateToClipBottomOrigin:F

.field private animateToClipHorizontal:F

.field private animateToClipTop:F

.field private animateToClipTopOrigin:F

.field private animateToRadius:Z

.field private animateToScale:F

.field private animateToX:F

.field private animateToY:F

.field private animationStartTime:J

.field private animationValue:F
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

.field private blackPaint:Landroid/graphics/Paint;

.field private canDragDown:Z

.field private captionContainer:Landroid/widget/FrameLayout;

.field private captionHwLayerEnabled:Z

.field private captionScrollView:Lorg/telegram/ui/PhotoViewer$CaptionScrollView;

.field private captionTextViewSwitcher:Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;

.field private centerImage:Lorg/telegram/messenger/ImageReceiver;

.field private clipBottom:F

.field private clipBottomOrigin:F

.field private clipHorizontal:F

.field private clipTop:F

.field private clipTopOrigin:F

.field private closeAfterAnimation:Z

.field private closeTime:J

.field private closeVideoAfterWatch:Z

.field private containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

.field private coords:[I

.field private currentAccount:I

.field private currentActionBarAnimation:Landroid/animation/AnimatorSet;

.field private currentDialogId:J

.field private currentMessageObject:Lorg/telegram/messenger/MessageObject;

.field private currentProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

.field private currentRadii:[F

.field private currentThumb:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

.field private disableShowCheck:Z

.field private discardTap:Z

.field private doubleTap:Z

.field private dragY:F

.field private draggingDown:Z

.field private gestureDetector:Landroid/view/GestureDetector;

.field private final hideActionBarRunnable:Ljava/lang/Runnable;

.field private ignoreDelete:Z

.field private imageMoveAnimation:Landroid/animation/AnimatorSet;

.field private interpolator:Landroid/view/animation/DecelerateInterpolator;

.field private invalidCoords:Z

.field private isActionBarVisible:Z

.field private isPhotoVisible:Z

.field private isPlaying:Z

.field private isVideo:Z

.field private isVisible:Z

.field private lastInsets:Ljava/lang/Object;

.field private maxX:F

.field private maxY:F

.field private minX:F

.field private minY:F

.field private moveStartX:F

.field private moveStartY:F

.field private moving:Z

.field private navigationBar:Landroid/view/View;

.field private onClose:Ljava/lang/Runnable;

.field private openTime:J

.field private parentActivity:Landroid/app/Activity;

.field private photoAnimationEndRunnable:Ljava/lang/Runnable;

.field private photoAnimationInProgress:I

.field private photoBackgroundDrawable:Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;

.field private photoTransitionAnimationStartTime:J

.field private pinchCenterX:F

.field private pinchCenterY:F

.field private pinchStartDistance:F

.field private pinchStartScale:F

.field private pinchStartX:F

.field private pinchStartY:F

.field private playButton:Landroid/widget/ImageView;

.field private playButtonDrawable:Lorg/telegram/ui/Components/PlayPauseDrawable;

.field private playButtonShown:Z

.field private playerRetryPlayCount:I

.field private roundRectPath:Landroid/graphics/Path;

.field private scale:F

.field private scroller:Lorg/telegram/ui/Components/Scroller;

.field private secretDeleteTimer:Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;

.field private secretHint:Lorg/telegram/ui/Stories/recorder/HintView2;

.field private seekbar:Lorg/telegram/ui/Components/VideoPlayerSeekBar;

.field private seekbarBackground:Landroid/view/View;

.field private seekbarContainer:Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;

.field private seekbarView:Landroid/view/View;

.field private textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

.field private textureUploaded:Z

.field private translationX:F

.field private translationY:F

.field private final updateProgressRunnable:Ljava/lang/Runnable;

.field private useOvershootForScale:Z

.field private velocityTracker:Landroid/view/VelocityTracker;

.field private videoCrossfadeAlpha:F

.field private videoCrossfadeAlphaLastTime:J

.field private videoCrossfadeStarted:Z

.field private videoHeight:I

.field private videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

.field private final videoPlayerCurrentTime:[I

.field private videoPlayerTime:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private final videoPlayerTotalTime:[I

.field private videoTextureView:Landroid/view/TextureView;

.field private videoWatchedOneTime:Z

.field private videoWidth:I

.field private wasLightNavigationBar:Z

.field private wasNavigationBarColor:I

.field private windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private windowView:Landroid/widget/FrameLayout;

.field private zoomAnimation:Z

.field private zooming:Z


# direct methods
.method public static synthetic $r8$lambda$9_bBPmc18HLT1Aq1wXrbVY6wSxE(Lorg/telegram/ui/SecretMediaViewer;Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/SecretMediaViewer;->lambda$closePhoto$7(Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BCy5P08fbt0ycfYQ10yQTXXjEaY(Lorg/telegram/ui/SecretMediaViewer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/SecretMediaViewer;->lambda$new$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$EWQ7Sl9piLT-cczkh9yi_b-drXQ(Lorg/telegram/ui/SecretMediaViewer;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/SecretMediaViewer;->lambda$openMedia$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Gp2LGaC3LJXX4ig72SEPpNGIakk(Lorg/telegram/ui/SecretMediaViewer;Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/SecretMediaViewer;->lambda$openMedia$5(Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LYEiahgzo6Rj4iN7bD3NKI9fid0(Lorg/telegram/ui/SecretMediaViewer;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SecretMediaViewer;->lambda$setParentActivity$1(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$QGDTjLK7maK1kSY3-ro-2_aU_qo(Lorg/telegram/ui/SecretMediaViewer;Landroid/text/style/ClickableSpan;Landroid/widget/TextView;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SecretMediaViewer;->onLinkClick(Landroid/text/style/ClickableSpan;Landroid/widget/TextView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QiUGmfKr7jQQJRynQBs59jiLWxY(Lorg/telegram/ui/SecretMediaViewer;Landroid/text/style/ClickableSpan;Landroid/widget/TextView;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/SecretMediaViewer;->onLinkLongPress(Landroid/text/style/ClickableSpan;Landroid/widget/TextView;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RKdrl_5fQ5FPnxyr51MY_aIXUfE(Lorg/telegram/ui/SecretMediaViewer;Landroid/app/Activity;)Landroid/view/View;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/SecretMediaViewer;->lambda$setParentActivity$2(Landroid/app/Activity;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$fydE63aVfJjYVLIPyLtuGUWR60E(Lorg/telegram/ui/SecretMediaViewer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/SecretMediaViewer;->lambda$onPhotoClosed$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$iHYg6kKKtUy-3elqMLe7GxagX-o(Lorg/telegram/ui/SecretMediaViewer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/SecretMediaViewer;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$irj9U8yasrMtxHVMBxW6kwkAKm0(Lorg/telegram/ui/SecretMediaViewer;Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/SecretMediaViewer;->lambda$closePhoto$8(Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wRZBueEE62yGHJgOTdLZ46x6ld4(Lorg/telegram/ui/SecretMediaViewer;Ljava/lang/Runnable;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SecretMediaViewer;->lambda$openMedia$4(Ljava/lang/Runnable;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetactionBar(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SecretMediaViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetaspectRatioFrameLayout(Lorg/telegram/ui/SecretMediaViewer;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SecretMediaViewer;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcaptionScrollView(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/PhotoViewer$CaptionScrollView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SecretMediaViewer;->captionScrollView:Lorg/telegram/ui/PhotoViewer$CaptionScrollView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcaptionTextViewSwitcher(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SecretMediaViewer;->captionTextViewSwitcher:Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcenterImage(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/messenger/ImageReceiver;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SecretMediaViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcloseVideoAfterWatch(Lorg/telegram/ui/SecretMediaViewer;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/SecretMediaViewer;->closeVideoAfterWatch:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcontainerView(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentAccount(Lorg/telegram/ui/SecretMediaViewer;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/SecretMediaViewer;->currentAccount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentActionBarAnimation(Lorg/telegram/ui/SecretMediaViewer;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SecretMediaViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/messenger/MessageObject;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SecretMediaViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgethideActionBarRunnable(Lorg/telegram/ui/SecretMediaViewer;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SecretMediaViewer;->hideActionBarRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetignoreDelete(Lorg/telegram/ui/SecretMediaViewer;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/SecretMediaViewer;->ignoreDelete:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetimageMoveAnimation(Lorg/telegram/ui/SecretMediaViewer;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SecretMediaViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisActionBarVisible(Lorg/telegram/ui/SecretMediaViewer;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/SecretMediaViewer;->isActionBarVisible:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisPhotoVisible(Lorg/telegram/ui/SecretMediaViewer;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/SecretMediaViewer;->isPhotoVisible:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisPlaying(Lorg/telegram/ui/SecretMediaViewer;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/SecretMediaViewer;->isPlaying:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisVideo(Lorg/telegram/ui/SecretMediaViewer;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/SecretMediaViewer;->isVideo:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlastInsets(Lorg/telegram/ui/SecretMediaViewer;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SecretMediaViewer;->lastInsets:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnavigationBar(Lorg/telegram/ui/SecretMediaViewer;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SecretMediaViewer;->navigationBar:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetparentActivity(Lorg/telegram/ui/SecretMediaViewer;)Landroid/app/Activity;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SecretMediaViewer;->parentActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetphotoAnimationEndRunnable(Lorg/telegram/ui/SecretMediaViewer;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SecretMediaViewer;->photoAnimationEndRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetplayButtonDrawable(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/Components/PlayPauseDrawable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SecretMediaViewer;->playButtonDrawable:Lorg/telegram/ui/Components/PlayPauseDrawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetplayerRetryPlayCount(Lorg/telegram/ui/SecretMediaViewer;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/SecretMediaViewer;->playerRetryPlayCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetscale(Lorg/telegram/ui/SecretMediaViewer;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsecretDeleteTimer(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SecretMediaViewer;->secretDeleteTimer:Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsecretHint(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SecretMediaViewer;->secretHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetseekbar(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/Components/VideoPlayerSeekBar;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SecretMediaViewer;->seekbar:Lorg/telegram/ui/Components/VideoPlayerSeekBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetseekbarContainer(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SecretMediaViewer;->seekbarContainer:Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetseekbarView(Lorg/telegram/ui/SecretMediaViewer;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SecretMediaViewer;->seekbarView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettextureUploaded(Lorg/telegram/ui/SecretMediaViewer;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/SecretMediaViewer;->textureUploaded:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetupdateProgressRunnable(Lorg/telegram/ui/SecretMediaViewer;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SecretMediaViewer;->updateProgressRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetvideoPlayer(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/Components/VideoPlayer;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SecretMediaViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetvideoPlayerTime(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/ActionBar/SimpleTextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SecretMediaViewer;->videoPlayerTime:Lorg/telegram/ui/ActionBar/SimpleTextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputcurrentActionBarAnimation(Lorg/telegram/ui/SecretMediaViewer;Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputimageMoveAnimation(Lorg/telegram/ui/SecretMediaViewer;Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisPlaying(Lorg/telegram/ui/SecretMediaViewer;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/SecretMediaViewer;->isPlaying:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisVisible(Lorg/telegram/ui/SecretMediaViewer;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/SecretMediaViewer;->isVisible:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputphotoAnimationEndRunnable(Lorg/telegram/ui/SecretMediaViewer;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->photoAnimationEndRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputplayerRetryPlayCount(Lorg/telegram/ui/SecretMediaViewer;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/SecretMediaViewer;->playerRetryPlayCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputscale(Lorg/telegram/ui/SecretMediaViewer;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtextureUploaded(Lorg/telegram/ui/SecretMediaViewer;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/SecretMediaViewer;->textureUploaded:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtranslationX(Lorg/telegram/ui/SecretMediaViewer;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/SecretMediaViewer;->translationX:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtranslationY(Lorg/telegram/ui/SecretMediaViewer;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputvideoWatchedOneTime(Lorg/telegram/ui/SecretMediaViewer;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/SecretMediaViewer;->videoWatchedOneTime:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$monDraw(Lorg/telegram/ui/SecretMediaViewer;Landroid/graphics/Canvas;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/SecretMediaViewer;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpreparePlayer(Lorg/telegram/ui/SecretMediaViewer;Ljava/io/File;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/SecretMediaViewer;->preparePlayer(Ljava/io/File;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mprocessTouchEvent(Lorg/telegram/ui/SecretMediaViewer;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/SecretMediaViewer;->processTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mshowPlayButton(Lorg/telegram/ui/SecretMediaViewer;ZZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SecretMediaViewer;->showPlayButton(ZZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateMinMax(Lorg/telegram/ui/SecretMediaViewer;F)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/SecretMediaViewer;->updateMinMax(F)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v0, 0x2

    .line 386
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/telegram/ui/SecretMediaViewer;->coords:[I

    const/4 v1, 0x1

    .line 390
    iput-boolean v1, p0, Lorg/telegram/ui/SecretMediaViewer;->isActionBarVisible:Z

    .line 392
    new-instance v2, Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;

    const/high16 v3, -0x1000000

    invoke-direct {v2, p0, v3}, Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;-><init>(Lorg/telegram/ui/SecretMediaViewer;I)V

    iput-object v2, p0, Lorg/telegram/ui/SecretMediaViewer;->photoBackgroundDrawable:Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;

    .line 393
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/SecretMediaViewer;->blackPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 408
    iput v2, p0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    .line 426
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v3, p0, Lorg/telegram/ui/SecretMediaViewer;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 428
    iput v2, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchStartScale:F

    .line 443
    iput-boolean v1, p0, Lorg/telegram/ui/SecretMediaViewer;->canDragDown:Z

    .line 657
    new-instance v1, Lorg/telegram/ui/SecretMediaViewer$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/SecretMediaViewer$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/SecretMediaViewer;)V

    iput-object v1, p0, Lorg/telegram/ui/SecretMediaViewer;->updateProgressRunnable:Ljava/lang/Runnable;

    .line 679
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/telegram/ui/SecretMediaViewer;->videoPlayerCurrentTime:[I

    .line 680
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->videoPlayerTotalTime:[I

    .line 1647
    new-instance v0, Lorg/telegram/ui/SecretMediaViewer$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/SecretMediaViewer$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/SecretMediaViewer;)V

    iput-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->hideActionBarRunnable:Ljava/lang/Runnable;

    .line 1738
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->roundRectPath:Landroid/graphics/Path;

    .line 1927
    new-instance v0, Lorg/telegram/ui/SecretMediaViewer$16;

    const-string/jumbo v1, "videoCrossfadeAlpha"

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/SecretMediaViewer$16;-><init>(Lorg/telegram/ui/SecretMediaViewer;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->VIDEO_CROSSFADE_ALPHA:Landroid/util/Property;

    .line 2422
    new-instance v0, Lorg/telegram/ui/SecretMediaViewer$20;

    const-string v1, "animationValue"

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/SecretMediaViewer$20;-><init>(Lorg/telegram/ui/SecretMediaViewer;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->ANIMATION_VALUE:Landroid/util/Property;

    return-void
.end method

.method private animateTo(FFFZ)V
    .locals 6

    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 2394
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/SecretMediaViewer;->animateTo(FFFZI)V

    return-void
.end method

.method private animateTo(FFFZI)V
    .locals 1

    .line 2398
    iget v0, p0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/SecretMediaViewer;->translationX:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    cmpl-float v0, v0, p3

    if-nez v0, :cond_0

    return-void

    .line 2401
    :cond_0
    iput-boolean p4, p0, Lorg/telegram/ui/SecretMediaViewer;->zoomAnimation:Z

    .line 2402
    iput p1, p0, Lorg/telegram/ui/SecretMediaViewer;->animateToScale:F

    .line 2403
    iput p2, p0, Lorg/telegram/ui/SecretMediaViewer;->animateToX:F

    .line 2404
    iput p3, p0, Lorg/telegram/ui/SecretMediaViewer;->animateToY:F

    .line 2405
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/ui/SecretMediaViewer;->animationStartTime:J

    .line 2406
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    const/4 p2, 0x2

    .line 2407
    new-array p2, p2, [F

    fill-array-data p2, :array_0

    .line 2408
    const-string p3, "animationValue"

    invoke-static {p0, p3, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const/4 p3, 0x1

    new-array p3, p3, [Landroid/animation/Animator;

    const/4 p4, 0x0

    aput-object p2, p3, p4

    .line 2407
    invoke-virtual {p1, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2410
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    iget-object p2, p0, Lorg/telegram/ui/SecretMediaViewer;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2411
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    int-to-long p2, p5

    invoke-virtual {p1, p2, p3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2412
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    new-instance p2, Lorg/telegram/ui/SecretMediaViewer$19;

    invoke-direct {p2, p0}, Lorg/telegram/ui/SecretMediaViewer$19;-><init>(Lorg/telegram/ui/SecretMediaViewer;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2419
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private checkMinMax(Z)V
    .locals 5

    .line 2377
    iget v0, p0, Lorg/telegram/ui/SecretMediaViewer;->translationX:F

    .line 2378
    iget v1, p0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    .line 2379
    iget v2, p0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    invoke-direct {p0, v2}, Lorg/telegram/ui/SecretMediaViewer;->updateMinMax(F)V

    .line 2380
    iget v2, p0, Lorg/telegram/ui/SecretMediaViewer;->translationX:F

    iget v3, p0, Lorg/telegram/ui/SecretMediaViewer;->minX:F

    cmpg-float v4, v2, v3

    if-gez v4, :cond_0

    :goto_0
    move v0, v3

    goto :goto_1

    .line 2382
    :cond_0
    iget v3, p0, Lorg/telegram/ui/SecretMediaViewer;->maxX:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    goto :goto_0

    .line 2385
    :cond_1
    :goto_1
    iget v2, p0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    iget v3, p0, Lorg/telegram/ui/SecretMediaViewer;->minY:F

    cmpg-float v4, v2, v3

    if-gez v4, :cond_2

    :goto_2
    move v1, v3

    goto :goto_3

    .line 2387
    :cond_2
    iget v3, p0, Lorg/telegram/ui/SecretMediaViewer;->maxY:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    goto :goto_2

    .line 2390
    :cond_3
    :goto_3
    iget v2, p0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    invoke-direct {p0, v2, v0, v1, p1}, Lorg/telegram/ui/SecretMediaViewer;->animateTo(FFFZ)V

    return-void
.end method

.method private checkPhotoAnimation()Z
    .locals 6

    .line 1951
    iget v0, p0, Lorg/telegram/ui/SecretMediaViewer;->photoAnimationInProgress:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1952
    iget-wide v2, p0, Lorg/telegram/ui/SecretMediaViewer;->photoTransitionAnimationStartTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    .line 1953
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->photoAnimationEndRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1954
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 1955
    iput-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->photoAnimationEndRunnable:Ljava/lang/Runnable;

    .line 1957
    :cond_0
    iput v1, p0, Lorg/telegram/ui/SecretMediaViewer;->photoAnimationInProgress:I

    .line 1960
    :cond_1
    iget v0, p0, Lorg/telegram/ui/SecretMediaViewer;->photoAnimationInProgress:I

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method private getContainerViewHeight()I
    .locals 1

    .line 2204
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method private getContainerViewWidth()I
    .locals 1

    .line 2200
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public static getInstance()Lorg/telegram/ui/SecretMediaViewer;
    .locals 2

    .line 454
    sget-object v0, Lorg/telegram/ui/SecretMediaViewer;->Instance:Lorg/telegram/ui/SecretMediaViewer;

    if-nez v0, :cond_1

    .line 456
    const-class v1, Lorg/telegram/ui/PhotoViewer;

    monitor-enter v1

    .line 457
    :try_start_0
    sget-object v0, Lorg/telegram/ui/SecretMediaViewer;->Instance:Lorg/telegram/ui/SecretMediaViewer;

    if-nez v0, :cond_0

    .line 459
    new-instance v0, Lorg/telegram/ui/SecretMediaViewer;

    invoke-direct {v0}, Lorg/telegram/ui/SecretMediaViewer;-><init>()V

    sput-object v0, Lorg/telegram/ui/SecretMediaViewer;->Instance:Lorg/telegram/ui/SecretMediaViewer;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 461
    :cond_0
    :goto_0
    monitor-exit v1

    return-object v0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    return-object v0
.end method

.method public static hasInstance()Z
    .locals 1

    .line 467
    sget-object v0, Lorg/telegram/ui/SecretMediaViewer;->Instance:Lorg/telegram/ui/SecretMediaViewer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private synthetic lambda$closePhoto$7(Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V
    .locals 3

    const/4 v0, 0x0

    .line 2085
    iput-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    const/4 v1, 0x0

    .line 2086
    iput v1, p0, Lorg/telegram/ui/SecretMediaViewer;->photoAnimationInProgress:I

    .line 2087
    iget-object v2, p0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {v2, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2088
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2089
    invoke-direct {p0, p1}, Lorg/telegram/ui/SecretMediaViewer;->onPhotoClosed(Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V

    return-void
.end method

.method private synthetic lambda$closePhoto$8(Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V
    .locals 3

    .line 2127
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2130
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2131
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2132
    iput v2, p0, Lorg/telegram/ui/SecretMediaViewer;->photoAnimationInProgress:I

    .line 2133
    invoke-direct {p0, p1}, Lorg/telegram/ui/SecretMediaViewer;->onPhotoClosed(Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V

    .line 2134
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 2135
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 7

    .line 658
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-nez v0, :cond_0

    goto :goto_0

    .line 662
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v0

    .line 663
    iget-object v2, p0, Lorg/telegram/ui/SecretMediaViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v4

    const-wide/16 v5, 0x0

    if-nez v4, :cond_1

    move-wide v0, v5

    move-wide v2, v0

    :cond_1
    cmp-long v4, v2, v5

    if-lez v4, :cond_2

    .line 668
    iget-object v4, p0, Lorg/telegram/ui/SecretMediaViewer;->seekbar:Lorg/telegram/ui/Components/VideoPlayerSeekBar;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->isDragging()Z

    move-result v4

    if-nez v4, :cond_2

    .line 669
    iget-object v4, p0, Lorg/telegram/ui/SecretMediaViewer;->seekbar:Lorg/telegram/ui/Components/VideoPlayerSeekBar;

    long-to-float v0, v0

    long-to-float v1, v2

    div-float/2addr v0, v1

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->setProgress(F)V

    .line 670
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->seekbarView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 672
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/SecretMediaViewer;->updateVideoPlayerTime()V

    .line 674
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 675
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->updateProgressRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x11

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$6()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1648
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/SecretMediaViewer;->toggleActionBar(ZZ)V

    return-void
.end method

.method private synthetic lambda$onPhotoClosed$9()V
    .locals 2

    .line 2165
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->currentThumb:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2166
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->release()V

    .line 2167
    iput-object v1, p0, Lorg/telegram/ui/SecretMediaViewer;->currentThumb:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    .line 2169
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2171
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2172
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->parentActivity:Landroid/app/Activity;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 2173
    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2176
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 2178
    iput-boolean v0, p0, Lorg/telegram/ui/SecretMediaViewer;->isPhotoVisible:Z

    return-void
.end method

.method private synthetic lambda$openMedia$3(Landroid/view/View;)V
    .locals 1

    .line 1550
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->destroyTime:I

    if-nez v0, :cond_0

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    const v0, 0x7fffffff

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1553
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->secretHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->shown()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1554
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->secretHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    return-void

    .line 1557
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/SecretMediaViewer;->showSecretHint()V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$openMedia$4(Ljava/lang/Runnable;Lorg/telegram/messenger/MessageObject;)V
    .locals 7

    const/4 v0, 0x0

    .line 1601
    iput v0, p0, Lorg/telegram/ui/SecretMediaViewer;->photoAnimationInProgress:I

    const/4 v1, 0x0

    .line 1602
    iput-object v1, p0, Lorg/telegram/ui/SecretMediaViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_0

    .line 1604
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1606
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    if-nez p1, :cond_1

    goto :goto_0

    .line 1609
    :cond_1
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1610
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 1611
    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer;->secretDeleteTimer:Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;

    iget-object p1, p2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$Message;->destroyTimeMillis:J

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    int-to-long v4, p1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->-$$Nest$msetDestroyTime(Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;JJZ)V

    .line 1612
    iget-boolean p1, p0, Lorg/telegram/ui/SecretMediaViewer;->closeAfterAnimation:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 1613
    invoke-virtual {p0, p1, p1}, Lorg/telegram/ui/SecretMediaViewer;->closePhoto(ZZ)Z

    return-void

    .line 1615
    :cond_2
    iget-boolean p1, p0, Lorg/telegram/ui/SecretMediaViewer;->ignoreDelete:Z

    if-eqz p1, :cond_3

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string/jumbo p2, "viewoncehint"

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x3

    if-ge p1, p2, :cond_3

    .line 1616
    invoke-direct {p0}, Lorg/telegram/ui/SecretMediaViewer;->showSecretHint()V

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic lambda$openMedia$5(Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V
    .locals 2

    const/4 v0, 0x0

    .line 1637
    iput-boolean v0, p0, Lorg/telegram/ui/SecretMediaViewer;->disableShowCheck:Z

    .line 1638
    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    return-void
.end method

.method private synthetic lambda$setParentActivity$1(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 844
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->lastInsets:Ljava/lang/Object;

    check-cast p1, Landroid/view/WindowInsets;

    .line 845
    iput-object p2, p0, Lorg/telegram/ui/SecretMediaViewer;->lastInsets:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 846
    invoke-virtual {p1}, Landroid/view/WindowInsets;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/WindowInsets;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 847
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 849
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p1, v0, :cond_2

    .line 850
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Impl30$$ExternalSyntheticApiModelOutline0;->m()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1

    .line 852
    :cond_2
    invoke-virtual {p2}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$setParentActivity$2(Landroid/app/Activity;)Landroid/view/View;
    .locals 6

    .line 950
    new-instance v0, Lorg/telegram/ui/PhotoViewer$CaptionTextView;

    iget-object v2, p0, Lorg/telegram/ui/SecretMediaViewer;->captionScrollView:Lorg/telegram/ui/PhotoViewer$CaptionScrollView;

    iget-object v3, p0, Lorg/telegram/ui/SecretMediaViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    new-instance v4, Lorg/telegram/ui/SecretMediaViewer$$ExternalSyntheticLambda10;

    invoke-direct {v4, p0}, Lorg/telegram/ui/SecretMediaViewer$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/SecretMediaViewer;)V

    new-instance v5, Lorg/telegram/ui/SecretMediaViewer$$ExternalSyntheticLambda11;

    invoke-direct {v5, p0}, Lorg/telegram/ui/SecretMediaViewer$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/SecretMediaViewer;)V

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/PhotoViewer$CaptionTextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/PhotoViewer$CaptionScrollView;Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback3;)V

    return-object v0
.end method

.method private onDraw(Landroid/graphics/Canvas;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1741
    iget-boolean v2, v0, Lorg/telegram/ui/SecretMediaViewer;->isPhotoVisible:Z

    if-nez v2, :cond_0

    return-void

    .line 1755
    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v2, :cond_5

    .line 1756
    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1757
    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Scroller;->abortAnimation()V

    .line 1760
    :cond_1
    iget-boolean v2, v0, Lorg/telegram/ui/SecretMediaViewer;->useOvershootForScale:Z

    if-eqz v2, :cond_3

    .line 1764
    iget v2, v0, Lorg/telegram/ui/SecretMediaViewer;->animationValue:F

    const v7, 0x3f666666    # 0.9f

    cmpg-float v8, v2, v7

    if-gez v8, :cond_2

    div-float/2addr v2, v7

    .line 1766
    iget v7, v0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    iget v8, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToScale:F

    const v9, 0x3f828f5c    # 1.02f

    mul-float/2addr v8, v9

    sub-float/2addr v8, v7

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    goto :goto_0

    .line 1769
    :cond_2
    iget v8, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToScale:F

    const v9, 0x3ca3d700    # 0.01999998f

    mul-float/2addr v9, v8

    sub-float/2addr v2, v7

    const v7, 0x3dccccd0    # 0.100000024f

    div-float/2addr v2, v7

    sub-float v2, v6, v2

    mul-float/2addr v9, v2

    add-float v7, v8, v9

    move v2, v6

    .line 1771
    :goto_0
    iget v8, v0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    iget v9, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToY:F

    sub-float/2addr v9, v8

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    .line 1772
    iget v9, v0, Lorg/telegram/ui/SecretMediaViewer;->translationX:F

    iget v10, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToX:F

    sub-float/2addr v10, v9

    mul-float/2addr v10, v2

    add-float/2addr v9, v10

    .line 1773
    iget v10, v0, Lorg/telegram/ui/SecretMediaViewer;->clipTop:F

    iget v11, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToClipTop:F

    sub-float/2addr v11, v10

    mul-float/2addr v11, v2

    add-float/2addr v10, v11

    .line 1774
    iget v11, v0, Lorg/telegram/ui/SecretMediaViewer;->clipBottom:F

    iget v12, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToClipBottom:F

    sub-float/2addr v12, v11

    mul-float/2addr v12, v2

    add-float/2addr v11, v12

    .line 1775
    iget v12, v0, Lorg/telegram/ui/SecretMediaViewer;->clipTopOrigin:F

    iget v13, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToClipTopOrigin:F

    sub-float/2addr v13, v12

    mul-float/2addr v13, v2

    add-float/2addr v12, v13

    .line 1776
    iget v13, v0, Lorg/telegram/ui/SecretMediaViewer;->clipBottomOrigin:F

    iget v14, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToClipBottomOrigin:F

    sub-float/2addr v14, v13

    mul-float/2addr v14, v2

    add-float/2addr v13, v14

    .line 1777
    iget v14, v0, Lorg/telegram/ui/SecretMediaViewer;->clipHorizontal:F

    iget v15, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToClipHorizontal:F

    sub-float/2addr v15, v14

    mul-float/2addr v15, v2

    add-float/2addr v14, v15

    goto :goto_1

    .line 1779
    :cond_3
    iget v2, v0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    iget v7, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToScale:F

    sub-float/2addr v7, v2

    iget v8, v0, Lorg/telegram/ui/SecretMediaViewer;->animationValue:F

    mul-float/2addr v7, v8

    add-float/2addr v7, v2

    .line 1780
    iget v2, v0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    iget v9, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToY:F

    sub-float/2addr v9, v2

    mul-float/2addr v9, v8

    add-float/2addr v2, v9

    .line 1781
    iget v9, v0, Lorg/telegram/ui/SecretMediaViewer;->translationX:F

    iget v10, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToX:F

    sub-float/2addr v10, v9

    mul-float/2addr v10, v8

    add-float/2addr v9, v10

    .line 1782
    iget v10, v0, Lorg/telegram/ui/SecretMediaViewer;->clipTop:F

    iget v11, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToClipTop:F

    sub-float/2addr v11, v10

    mul-float/2addr v11, v8

    add-float/2addr v10, v11

    .line 1783
    iget v11, v0, Lorg/telegram/ui/SecretMediaViewer;->clipBottom:F

    iget v12, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToClipBottom:F

    sub-float/2addr v12, v11

    mul-float/2addr v12, v8

    add-float/2addr v11, v12

    .line 1784
    iget v12, v0, Lorg/telegram/ui/SecretMediaViewer;->clipTopOrigin:F

    iget v13, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToClipTopOrigin:F

    sub-float/2addr v13, v12

    mul-float/2addr v13, v8

    add-float/2addr v12, v13

    .line 1785
    iget v13, v0, Lorg/telegram/ui/SecretMediaViewer;->clipBottomOrigin:F

    iget v14, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToClipBottomOrigin:F

    sub-float/2addr v14, v13

    mul-float/2addr v14, v8

    add-float/2addr v13, v14

    .line 1786
    iget v14, v0, Lorg/telegram/ui/SecretMediaViewer;->clipHorizontal:F

    iget v15, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToClipHorizontal:F

    sub-float/2addr v15, v14

    mul-float/2addr v15, v8

    add-float/2addr v14, v15

    move v8, v2

    .line 1789
    :goto_1
    iget v2, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToScale:F

    cmpl-float v2, v2, v6

    if-nez v2, :cond_4

    iget v2, v0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    cmpl-float v2, v2, v6

    if-nez v2, :cond_4

    iget v2, v0, Lorg/telegram/ui/SecretMediaViewer;->translationX:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_4

    move v2, v8

    goto :goto_2

    :cond_4
    const/high16 v2, -0x40800000    # -1.0f

    .line 1793
    :goto_2
    iget-object v15, v0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {v15}, Landroid/view/View;->invalidate()V

    goto/16 :goto_3

    .line 1795
    :cond_5
    iget-wide v7, v0, Lorg/telegram/ui/SecretMediaViewer;->animationStartTime:J

    const-wide/16 v9, 0x0

    cmp-long v2, v7, v9

    if-eqz v2, :cond_6

    .line 1796
    iget v2, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToX:F

    iput v2, v0, Lorg/telegram/ui/SecretMediaViewer;->translationX:F

    .line 1797
    iget v2, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToY:F

    iput v2, v0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    .line 1798
    iget v2, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToClipBottom:F

    iput v2, v0, Lorg/telegram/ui/SecretMediaViewer;->clipBottom:F

    .line 1799
    iget v2, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToClipTop:F

    iput v2, v0, Lorg/telegram/ui/SecretMediaViewer;->clipTop:F

    .line 1800
    iget v2, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToClipTopOrigin:F

    iput v2, v0, Lorg/telegram/ui/SecretMediaViewer;->clipTopOrigin:F

    .line 1801
    iget v2, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToClipBottomOrigin:F

    iput v2, v0, Lorg/telegram/ui/SecretMediaViewer;->clipBottomOrigin:F

    .line 1802
    iget v2, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToClipHorizontal:F

    iput v2, v0, Lorg/telegram/ui/SecretMediaViewer;->clipHorizontal:F

    .line 1803
    iget v2, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToScale:F

    iput v2, v0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    .line 1804
    iput-wide v9, v0, Lorg/telegram/ui/SecretMediaViewer;->animationStartTime:J

    .line 1805
    invoke-direct {v0, v2}, Lorg/telegram/ui/SecretMediaViewer;->updateMinMax(F)V

    .line 1806
    iput-boolean v4, v0, Lorg/telegram/ui/SecretMediaViewer;->zoomAnimation:Z

    .line 1807
    iput-boolean v4, v0, Lorg/telegram/ui/SecretMediaViewer;->useOvershootForScale:Z

    .line 1809
    :cond_6
    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_9

    .line 1810
    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Scroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1811
    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Scroller;->getStartX()I

    move-result v2

    int-to-float v2, v2

    iget v7, v0, Lorg/telegram/ui/SecretMediaViewer;->maxX:F

    cmpg-float v2, v2, v7

    if-gez v2, :cond_7

    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Scroller;->getStartX()I

    move-result v2

    int-to-float v2, v2

    iget v7, v0, Lorg/telegram/ui/SecretMediaViewer;->minX:F

    cmpl-float v2, v2, v7

    if-lez v2, :cond_7

    .line 1812
    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Scroller;->getCurrX()I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Lorg/telegram/ui/SecretMediaViewer;->translationX:F

    .line 1814
    :cond_7
    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Scroller;->getStartY()I

    move-result v2

    int-to-float v2, v2

    iget v7, v0, Lorg/telegram/ui/SecretMediaViewer;->maxY:F

    cmpg-float v2, v2, v7

    if-gez v2, :cond_8

    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Scroller;->getStartY()I

    move-result v2

    int-to-float v2, v2

    iget v7, v0, Lorg/telegram/ui/SecretMediaViewer;->minY:F

    cmpl-float v2, v2, v7

    if-lez v2, :cond_8

    .line 1815
    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Scroller;->getCurrY()I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    .line 1817
    :cond_8
    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 1820
    :cond_9
    iget v7, v0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    .line 1821
    iget v8, v0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    .line 1822
    iget v9, v0, Lorg/telegram/ui/SecretMediaViewer;->translationX:F

    .line 1823
    iget v10, v0, Lorg/telegram/ui/SecretMediaViewer;->clipTop:F

    .line 1824
    iget v11, v0, Lorg/telegram/ui/SecretMediaViewer;->clipBottom:F

    .line 1825
    iget v12, v0, Lorg/telegram/ui/SecretMediaViewer;->clipTopOrigin:F

    .line 1826
    iget v13, v0, Lorg/telegram/ui/SecretMediaViewer;->clipBottomOrigin:F

    .line 1827
    iget v14, v0, Lorg/telegram/ui/SecretMediaViewer;->clipHorizontal:F

    .line 1828
    iget-boolean v2, v0, Lorg/telegram/ui/SecretMediaViewer;->moving:Z

    if-nez v2, :cond_a

    move v2, v8

    goto :goto_3

    :cond_a
    const/high16 v2, -0x40800000    # -1.0f

    .line 1834
    :goto_3
    iget-object v15, v0, Lorg/telegram/ui/SecretMediaViewer;->animateFromRadius:[I

    const/high16 v16, -0x40800000    # -1.0f

    if-eqz v15, :cond_f

    .line 1835
    iget-object v15, v0, Lorg/telegram/ui/SecretMediaViewer;->currentRadii:[F

    const/16 v4, 0x8

    if-nez v15, :cond_b

    .line 1836
    new-array v15, v4, [F

    iput-object v15, v0, Lorg/telegram/ui/SecretMediaViewer;->currentRadii:[F

    .line 1838
    :cond_b
    iget-boolean v15, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToRadius:Z

    if-eqz v15, :cond_c

    iget v15, v0, Lorg/telegram/ui/SecretMediaViewer;->animationValue:F

    goto :goto_4

    :cond_c
    iget v15, v0, Lorg/telegram/ui/SecretMediaViewer;->animationValue:F

    sub-float v15, v6, v15

    :goto_4
    const/4 v3, 0x0

    const/16 v18, 0x1

    :goto_5
    if-ge v3, v4, :cond_e

    .line 1841
    iget-object v4, v0, Lorg/telegram/ui/SecretMediaViewer;->currentRadii:[F

    add-int/lit8 v19, v3, 0x1

    move/from16 v20, v6

    iget-object v6, v0, Lorg/telegram/ui/SecretMediaViewer;->animateFromRadius:[I

    div-int/lit8 v21, v3, 0x2

    aget v6, v6, v21

    int-to-float v6, v6

    const/high16 v21, 0x40000000    # 2.0f

    mul-float v6, v6, v21

    invoke-static {v6, v5, v15}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v6

    aput v6, v4, v19

    aput v6, v4, v3

    .line 1842
    iget-object v4, v0, Lorg/telegram/ui/SecretMediaViewer;->currentRadii:[F

    aget v4, v4, v3

    cmpl-float v4, v4, v5

    if-lez v4, :cond_d

    const/16 v18, 0x0

    :cond_d
    add-int/lit8 v3, v3, 0x2

    move/from16 v6, v20

    const/16 v4, 0x8

    goto :goto_5

    :cond_e
    :goto_6
    move/from16 v20, v6

    goto :goto_7

    :cond_f
    const/16 v18, 0x1

    goto :goto_6

    .line 1851
    :goto_7
    iget v3, v0, Lorg/telegram/ui/SecretMediaViewer;->photoAnimationInProgress:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_11

    .line 1852
    iget v3, v0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    cmpl-float v3, v3, v20

    if-nez v3, :cond_10

    cmpl-float v3, v2, v16

    if-eqz v3, :cond_10

    iget-boolean v3, v0, Lorg/telegram/ui/SecretMediaViewer;->zoomAnimation:Z

    if-nez v3, :cond_10

    .line 1853
    invoke-direct {v0}, Lorg/telegram/ui/SecretMediaViewer;->getContainerViewHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr v3, v4

    .line 1854
    iget-object v4, v0, Lorg/telegram/ui/SecretMediaViewer;->photoBackgroundDrawable:Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    div-float/2addr v2, v3

    sub-float v6, v20, v2

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v6, v2

    const/high16 v2, 0x42fe0000    # 127.0f

    invoke-static {v2, v6}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v4, v2}, Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;->setAlpha(I)V

    goto :goto_8

    .line 1856
    :cond_10
    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->photoBackgroundDrawable:Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;->setAlpha(I)V

    .line 1858
    :goto_8
    iget-boolean v2, v0, Lorg/telegram/ui/SecretMediaViewer;->zoomAnimation:Z

    if-nez v2, :cond_11

    iget v2, v0, Lorg/telegram/ui/SecretMediaViewer;->maxX:F

    cmpl-float v3, v9, v2

    if-lez v3, :cond_11

    sub-float/2addr v9, v2

    .line 1859
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v9, v2

    move/from16 v2, v20

    invoke-static {v2, v9}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const v4, 0x3e99999a    # 0.3f

    mul-float/2addr v4, v3

    sub-float v3, v2, v3

    .line 1862
    iget v9, v0, Lorg/telegram/ui/SecretMediaViewer;->maxX:F

    goto :goto_9

    :cond_11
    move v4, v5

    const/high16 v3, 0x3f800000    # 1.0f

    .line 1866
    :goto_9
    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_12

    const/16 v17, 0x1

    goto :goto_a

    :cond_12
    const/16 v17, 0x0

    .line 1867
    :goto_a
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    sub-float/2addr v7, v4

    .line 1869
    invoke-direct {v0}, Lorg/telegram/ui/SecretMediaViewer;->getContainerViewWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v2, v9

    invoke-direct {v0}, Lorg/telegram/ui/SecretMediaViewer;->getContainerViewHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v4, v8

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1870
    invoke-virtual {v1, v7, v7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1872
    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getBitmapWidth()I

    move-result v2

    .line 1873
    iget-object v4, v0, Lorg/telegram/ui/SecretMediaViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getBitmapHeight()I

    move-result v4

    .line 1874
    iget v6, v0, Lorg/telegram/ui/SecretMediaViewer;->videoWidth:I

    if-eqz v6, :cond_13

    iget v8, v0, Lorg/telegram/ui/SecretMediaViewer;->videoHeight:I

    if-eqz v8, :cond_13

    move v2, v6

    move v4, v8

    :cond_13
    if-eqz v17, :cond_14

    .line 1878
    iget-boolean v6, v0, Lorg/telegram/ui/SecretMediaViewer;->textureUploaded:Z

    if-eqz v6, :cond_14

    int-to-float v6, v2

    int-to-float v8, v4

    div-float/2addr v6, v8

    .line 1880
    iget-object v8, v0, Lorg/telegram/ui/SecretMediaViewer;->videoTextureView:Landroid/view/TextureView;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, v0, Lorg/telegram/ui/SecretMediaViewer;->videoTextureView:Landroid/view/TextureView;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    sub-float/2addr v6, v8

    .line 1881
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v8, 0x3c23d70a    # 0.01f

    cmpl-float v6, v6, v8

    if-lez v6, :cond_14

    .line 1882
    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->videoTextureView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 1883
    iget-object v4, v0, Lorg/telegram/ui/SecretMediaViewer;->videoTextureView:Landroid/view/TextureView;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 1887
    :cond_14
    invoke-direct {v0}, Lorg/telegram/ui/SecretMediaViewer;->getContainerViewHeight()I

    move-result v6

    int-to-float v6, v6

    int-to-float v4, v4

    div-float/2addr v6, v4

    invoke-direct {v0}, Lorg/telegram/ui/SecretMediaViewer;->getContainerViewWidth()I

    move-result v8

    int-to-float v8, v8

    int-to-float v2, v2

    div-float/2addr v8, v2

    invoke-static {v6, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    mul-float/2addr v2, v6

    float-to-int v2, v2

    mul-float/2addr v4, v6

    float-to-int v4, v4

    neg-int v6, v2

    .line 1891
    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    div-float/2addr v14, v7

    add-float v8, v6, v14

    neg-int v9, v4

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    div-float/2addr v10, v7

    add-float/2addr v10, v9

    div-int/lit8 v15, v2, 0x2

    int-to-float v15, v15

    sub-float/2addr v15, v14

    div-int/lit8 v14, v4, 0x2

    int-to-float v14, v14

    div-float/2addr v11, v7

    sub-float v11, v14, v11

    invoke-virtual {v1, v8, v10, v15, v11}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    if-nez v18, :cond_15

    .line 1893
    iget-object v10, v0, Lorg/telegram/ui/SecretMediaViewer;->roundRectPath:Landroid/graphics/Path;

    invoke-virtual {v10}, Landroid/graphics/Path;->reset()V

    .line 1894
    sget-object v10, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    div-float/2addr v12, v7

    add-float/2addr v12, v9

    div-float/2addr v13, v7

    sub-float/2addr v14, v13

    invoke-virtual {v10, v8, v12, v15, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1895
    iget-object v7, v0, Lorg/telegram/ui/SecretMediaViewer;->roundRectPath:Landroid/graphics/Path;

    iget-object v8, v0, Lorg/telegram/ui/SecretMediaViewer;->currentRadii:[F

    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v7, v10, v8, v11}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 1896
    iget-object v7, v0, Lorg/telegram/ui/SecretMediaViewer;->roundRectPath:Landroid/graphics/Path;

    invoke-virtual {v1, v7}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :cond_15
    if-eqz v17, :cond_16

    .line 1899
    iget-boolean v7, v0, Lorg/telegram/ui/SecretMediaViewer;->textureUploaded:Z

    if-eqz v7, :cond_16

    iget-boolean v7, v0, Lorg/telegram/ui/SecretMediaViewer;->videoCrossfadeStarted:Z

    if-eqz v7, :cond_16

    iget v7, v0, Lorg/telegram/ui/SecretMediaViewer;->videoCrossfadeAlpha:F

    const/high16 v20, 0x3f800000    # 1.0f

    cmpl-float v7, v7, v20

    if-eqz v7, :cond_17

    .line 1900
    :cond_16
    iget-object v7, v0, Lorg/telegram/ui/SecretMediaViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v7, v3}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 1901
    iget-object v7, v0, Lorg/telegram/ui/SecretMediaViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    int-to-float v2, v2

    int-to-float v4, v4

    invoke-virtual {v7, v6, v9, v2, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 1902
    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    :cond_17
    if-eqz v17, :cond_19

    .line 1905
    iget-boolean v2, v0, Lorg/telegram/ui/SecretMediaViewer;->videoCrossfadeStarted:Z

    if-nez v2, :cond_18

    iget-boolean v2, v0, Lorg/telegram/ui/SecretMediaViewer;->textureUploaded:Z

    if-eqz v2, :cond_18

    const/4 v2, 0x1

    .line 1906
    iput-boolean v2, v0, Lorg/telegram/ui/SecretMediaViewer;->videoCrossfadeStarted:Z

    .line 1907
    iput v5, v0, Lorg/telegram/ui/SecretMediaViewer;->videoCrossfadeAlpha:F

    .line 1908
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lorg/telegram/ui/SecretMediaViewer;->videoCrossfadeAlphaLastTime:J

    .line 1910
    :cond_18
    invoke-virtual {v1, v6, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1911
    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->videoTextureView:Landroid/view/TextureView;

    iget v4, v0, Lorg/telegram/ui/SecretMediaViewer;->videoCrossfadeAlpha:F

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1912
    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1913
    iget-boolean v2, v0, Lorg/telegram/ui/SecretMediaViewer;->videoCrossfadeStarted:Z

    if-eqz v2, :cond_19

    iget v2, v0, Lorg/telegram/ui/SecretMediaViewer;->videoCrossfadeAlpha:F

    const/high16 v20, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v20

    if-gez v2, :cond_19

    .line 1914
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1915
    iget-wide v4, v0, Lorg/telegram/ui/SecretMediaViewer;->videoCrossfadeAlphaLastTime:J

    sub-long v4, v2, v4

    .line 1916
    iput-wide v2, v0, Lorg/telegram/ui/SecretMediaViewer;->videoCrossfadeAlphaLastTime:J

    .line 1917
    iget v2, v0, Lorg/telegram/ui/SecretMediaViewer;->videoCrossfadeAlpha:F

    long-to-float v3, v4

    const/high16 v4, 0x43480000    # 200.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Lorg/telegram/ui/SecretMediaViewer;->videoCrossfadeAlpha:F

    .line 1918
    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 1919
    iget v2, v0, Lorg/telegram/ui/SecretMediaViewer;->videoCrossfadeAlpha:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_19

    .line 1920
    iput v3, v0, Lorg/telegram/ui/SecretMediaViewer;->videoCrossfadeAlpha:F

    .line 1924
    :cond_19
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private onLinkClick(Landroid/text/style/ClickableSpan;Landroid/widget/TextView;)V
    .locals 0

    return-void
.end method

.method private onLinkLongPress(Landroid/text/style/ClickableSpan;Landroid/widget/TextView;Ljava/lang/Runnable;)V
    .locals 0

    return-void
.end method

.method private onPhotoClosed(Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V
    .locals 2

    const/4 p1, 0x0

    .line 2159
    iput-boolean p1, p0, Lorg/telegram/ui/SecretMediaViewer;->isVisible:Z

    const/4 v0, 0x0

    .line 2160
    iput-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->currentProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    .line 2161
    iput-boolean p1, p0, Lorg/telegram/ui/SecretMediaViewer;->disableShowCheck:Z

    .line 2162
    invoke-direct {p0}, Lorg/telegram/ui/SecretMediaViewer;->releasePlayer()V

    .line 2163
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2164
    new-instance p1, Lorg/telegram/ui/SecretMediaViewer$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lorg/telegram/ui/SecretMediaViewer$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/SecretMediaViewer;)V

    const-wide/16 v0, 0x32

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private preparePlayer(Ljava/io/File;)V
    .locals 6

    .line 531
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->parentActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 534
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/SecretMediaViewer;->releasePlayer()V

    .line 535
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->videoTextureView:Landroid/view/TextureView;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 536
    new-instance v0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/SecretMediaViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    .line 537
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 538
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    iget-object v2, p0, Lorg/telegram/ui/SecretMediaViewer;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    const/4 v3, -0x1

    const/16 v4, 0x11

    invoke-static {v3, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v2, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 540
    new-instance v0, Landroid/view/TextureView;

    iget-object v2, p0, Lorg/telegram/ui/SecretMediaViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->videoTextureView:Landroid/view/TextureView;

    .line 541
    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setOpaque(Z)V

    .line 542
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/SecretMediaViewer;->videoTextureView:Landroid/view/TextureView;

    invoke-static {v3, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 544
    :cond_1
    iput-boolean v1, p0, Lorg/telegram/ui/SecretMediaViewer;->textureUploaded:Z

    .line 545
    iput-boolean v1, p0, Lorg/telegram/ui/SecretMediaViewer;->videoCrossfadeStarted:Z

    .line 547
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->videoTextureView:Landroid/view/TextureView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 548
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-nez v0, :cond_2

    .line 549
    new-instance v0, Lorg/telegram/ui/SecretMediaViewer$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/SecretMediaViewer$1;-><init>(Lorg/telegram/ui/SecretMediaViewer;)V

    iput-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 568
    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer;->videoTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setTextureView(Landroid/view/TextureView;)V

    .line 569
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    new-instance v1, Lorg/telegram/ui/SecretMediaViewer$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/SecretMediaViewer$2;-><init>(Lorg/telegram/ui/SecretMediaViewer;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setDelegate(Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;)V

    .line 652
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "other"

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/VideoPlayer;->preparePlayer(Landroid/net/Uri;Ljava/lang/String;)V

    .line 653
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/VideoPlayer;->setPlayWhenReady(Z)V

    .line 654
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->playButtonDrawable:Lorg/telegram/ui/Components/PlayPauseDrawable;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/PlayPauseDrawable;->setPause(Z)V

    return-void
.end method

.method private processTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 2208
    iget v0, p0, Lorg/telegram/ui/SecretMediaViewer;->photoAnimationInProgress:I

    const/4 v1, 0x0

    if-nez v0, :cond_28

    iget-wide v2, p0, Lorg/telegram/ui/SecretMediaViewer;->animationStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    goto/16 :goto_d

    .line 2212
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/SecretMediaViewer;->doubleTap:Z

    if-eqz v0, :cond_1

    .line 2213
    iput-boolean v1, p0, Lorg/telegram/ui/SecretMediaViewer;->doubleTap:Z

    .line 2214
    iput-boolean v1, p0, Lorg/telegram/ui/SecretMediaViewer;->moving:Z

    .line 2215
    iput-boolean v1, p0, Lorg/telegram/ui/SecretMediaViewer;->zooming:Z

    .line 2216
    invoke-direct {p0, v1}, Lorg/telegram/ui/SecretMediaViewer;->checkMinMax(Z)V

    return v2

    .line 2220
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v6, 0x2

    if-eqz v0, :cond_25

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v7, 0x5

    if-ne v0, v7, :cond_2

    goto/16 :goto_c

    .line 2248
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x40400000    # 3.0f

    const/4 v9, 0x0

    if-ne v0, v6, :cond_15

    .line 2249
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v6, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/SecretMediaViewer;->draggingDown:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/SecretMediaViewer;->zooming:Z

    if-eqz v0, :cond_3

    .line 2250
    iput-boolean v2, p0, Lorg/telegram/ui/SecretMediaViewer;->discardTap:Z

    .line 2251
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v0, v3

    float-to-double v3, v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr v0, p1

    float-to-double v7, v0

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float p1, v2

    iget v0, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchStartDistance:F

    div-float/2addr p1, v0

    iget v0, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchStartScale:F

    mul-float/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    .line 2252
    iget p1, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchCenterX:F

    invoke-direct {p0}, Lorg/telegram/ui/SecretMediaViewer;->getContainerViewWidth()I

    move-result v0

    div-int/2addr v0, v6

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchCenterX:F

    invoke-direct {p0}, Lorg/telegram/ui/SecretMediaViewer;->getContainerViewWidth()I

    move-result v2

    div-int/2addr v2, v6

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchStartX:F

    sub-float/2addr v0, v2

    iget v2, p0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    iget v3, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchStartScale:F

    div-float/2addr v2, v3

    mul-float/2addr v0, v2

    sub-float/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/SecretMediaViewer;->translationX:F

    .line 2253
    iget p1, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchCenterY:F

    invoke-direct {p0}, Lorg/telegram/ui/SecretMediaViewer;->getContainerViewHeight()I

    move-result v0

    div-int/2addr v0, v6

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchCenterY:F

    invoke-direct {p0}, Lorg/telegram/ui/SecretMediaViewer;->getContainerViewHeight()I

    move-result v2

    div-int/2addr v2, v6

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchStartY:F

    sub-float/2addr v0, v2

    iget v2, p0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    iget v3, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchStartScale:F

    div-float v3, v2, v3

    mul-float/2addr v0, v3

    sub-float/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    .line 2254
    invoke-direct {p0, v2}, Lorg/telegram/ui/SecretMediaViewer;->updateMinMax(F)V

    .line 2255
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto/16 :goto_d

    .line 2256
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v2, :cond_28

    .line 2257
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_4

    .line 2258
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2260
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v6, p0, Lorg/telegram/ui/SecretMediaViewer;->moveStartX:F

    sub-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 2261
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget v10, p0, Lorg/telegram/ui/SecretMediaViewer;->dragY:F

    sub-float/2addr v6, v10

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 2262
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    cmpl-float v10, v0, v10

    if-gtz v10, :cond_5

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    cmpl-float v10, v6, v10

    if-lez v10, :cond_6

    .line 2263
    :cond_5
    iput-boolean v2, p0, Lorg/telegram/ui/SecretMediaViewer;->discardTap:Z

    .line 2265
    :cond_6
    iget-boolean v10, p0, Lorg/telegram/ui/SecretMediaViewer;->canDragDown:Z

    if-eqz v10, :cond_8

    iget-boolean v10, p0, Lorg/telegram/ui/SecretMediaViewer;->draggingDown:Z

    if-nez v10, :cond_8

    iget v10, p0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    cmpl-float v10, v10, v7

    if-nez v10, :cond_8

    const/high16 v10, 0x41f00000    # 30.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    cmpl-float v10, v6, v10

    if-ltz v10, :cond_8

    div-float/2addr v6, v3

    cmpl-float v0, v6, v0

    if-lez v0, :cond_8

    .line 2266
    iput-boolean v2, p0, Lorg/telegram/ui/SecretMediaViewer;->draggingDown:Z

    .line 2267
    iput-boolean v1, p0, Lorg/telegram/ui/SecretMediaViewer;->moving:Z

    .line 2268
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/SecretMediaViewer;->dragY:F

    .line 2269
    iget-boolean p1, p0, Lorg/telegram/ui/SecretMediaViewer;->isActionBarVisible:Z

    if-eqz p1, :cond_7

    .line 2270
    invoke-direct {p0, v1, v2}, Lorg/telegram/ui/SecretMediaViewer;->toggleActionBar(ZZ)V

    :cond_7
    return v2

    .line 2273
    :cond_8
    iget-boolean v0, p0, Lorg/telegram/ui/SecretMediaViewer;->draggingDown:Z

    if-eqz v0, :cond_9

    .line 2274
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lorg/telegram/ui/SecretMediaViewer;->dragY:F

    sub-float/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    .line 2275
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto/16 :goto_d

    .line 2276
    :cond_9
    iget-boolean v0, p0, Lorg/telegram/ui/SecretMediaViewer;->invalidCoords:Z

    if-nez v0, :cond_14

    iget-wide v10, p0, Lorg/telegram/ui/SecretMediaViewer;->animationStartTime:J

    cmp-long v0, v10, v4

    if-nez v0, :cond_14

    .line 2277
    iget v0, p0, Lorg/telegram/ui/SecretMediaViewer;->moveStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v0, v3

    .line 2278
    iget v3, p0, Lorg/telegram/ui/SecretMediaViewer;->moveStartY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    .line 2279
    iget-boolean v4, p0, Lorg/telegram/ui/SecretMediaViewer;->moving:Z

    if-nez v4, :cond_b

    iget v4, p0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    cmpl-float v4, v4, v7

    if-nez v4, :cond_a

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_b

    :cond_a
    iget v4, p0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_28

    .line 2280
    :cond_b
    iget-boolean v4, p0, Lorg/telegram/ui/SecretMediaViewer;->moving:Z

    if-nez v4, :cond_c

    .line 2283
    iput-boolean v2, p0, Lorg/telegram/ui/SecretMediaViewer;->moving:Z

    .line 2284
    iput-boolean v1, p0, Lorg/telegram/ui/SecretMediaViewer;->canDragDown:Z

    move v0, v9

    move v3, v0

    .line 2287
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lorg/telegram/ui/SecretMediaViewer;->moveStartX:F

    .line 2288
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/SecretMediaViewer;->moveStartY:F

    .line 2289
    iget p1, p0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    invoke-direct {p0, p1}, Lorg/telegram/ui/SecretMediaViewer;->updateMinMax(F)V

    .line 2290
    iget p1, p0, Lorg/telegram/ui/SecretMediaViewer;->translationX:F

    iget v2, p0, Lorg/telegram/ui/SecretMediaViewer;->minX:F

    cmpg-float v2, p1, v2

    if-ltz v2, :cond_d

    iget v2, p0, Lorg/telegram/ui/SecretMediaViewer;->maxX:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_e

    :cond_d
    div-float/2addr v0, v8

    .line 2293
    :cond_e
    iget v2, p0, Lorg/telegram/ui/SecretMediaViewer;->maxY:F

    cmpl-float v4, v2, v9

    if-nez v4, :cond_10

    iget v4, p0, Lorg/telegram/ui/SecretMediaViewer;->minY:F

    cmpl-float v5, v4, v9

    if-nez v5, :cond_10

    .line 2294
    iget v5, p0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    sub-float v6, v5, v3

    cmpg-float v6, v6, v4

    if-gez v6, :cond_f

    .line 2295
    iput v4, p0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    goto :goto_1

    :cond_f
    sub-float/2addr v5, v3

    cmpl-float v4, v5, v2

    if-lez v4, :cond_11

    .line 2298
    iput v2, p0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    goto :goto_1

    .line 2302
    :cond_10
    iget v4, p0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    iget v5, p0, Lorg/telegram/ui/SecretMediaViewer;->minY:F

    cmpg-float v5, v4, v5

    if-ltz v5, :cond_12

    cmpl-float v2, v4, v2

    if-lez v2, :cond_11

    goto :goto_0

    :cond_11
    move v9, v3

    goto :goto_1

    :cond_12
    :goto_0
    div-float v9, v3, v8

    :goto_1
    sub-float/2addr p1, v0

    .line 2307
    iput p1, p0, Lorg/telegram/ui/SecretMediaViewer;->translationX:F

    .line 2308
    iget p1, p0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    cmpl-float p1, p1, v7

    if-eqz p1, :cond_13

    .line 2309
    iget p1, p0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    sub-float/2addr p1, v9

    iput p1, p0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    .line 2311
    :cond_13
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto/16 :goto_d

    .line 2314
    :cond_14
    iput-boolean v1, p0, Lorg/telegram/ui/SecretMediaViewer;->invalidCoords:Z

    .line 2315
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/SecretMediaViewer;->moveStartX:F

    .line 2316
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/SecretMediaViewer;->moveStartY:F

    goto/16 :goto_d

    .line 2319
    :cond_15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_16

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v2, :cond_16

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_28

    .line 2320
    :cond_16
    iget-boolean v0, p0, Lorg/telegram/ui/SecretMediaViewer;->zooming:Z

    if-eqz v0, :cond_1d

    .line 2321
    iput-boolean v2, p0, Lorg/telegram/ui/SecretMediaViewer;->invalidCoords:Z

    .line 2322
    iget p1, p0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    cmpg-float v0, p1, v7

    if-gez v0, :cond_17

    .line 2323
    invoke-direct {p0, v7}, Lorg/telegram/ui/SecretMediaViewer;->updateMinMax(F)V

    .line 2324
    invoke-direct {p0, v7, v9, v9, v2}, Lorg/telegram/ui/SecretMediaViewer;->animateTo(FFFZ)V

    goto :goto_6

    :cond_17
    cmpl-float p1, p1, v8

    if-lez p1, :cond_1c

    .line 2326
    iget p1, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchCenterX:F

    invoke-direct {p0}, Lorg/telegram/ui/SecretMediaViewer;->getContainerViewWidth()I

    move-result v0

    div-int/2addr v0, v6

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchCenterX:F

    invoke-direct {p0}, Lorg/telegram/ui/SecretMediaViewer;->getContainerViewWidth()I

    move-result v3

    div-int/2addr v3, v6

    int-to-float v3, v3

    sub-float/2addr v0, v3

    iget v3, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchStartX:F

    sub-float/2addr v0, v3

    iget v3, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchStartScale:F

    div-float v3, v8, v3

    mul-float/2addr v0, v3

    sub-float/2addr p1, v0

    .line 2327
    iget v0, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchCenterY:F

    invoke-direct {p0}, Lorg/telegram/ui/SecretMediaViewer;->getContainerViewHeight()I

    move-result v3

    div-int/2addr v3, v6

    int-to-float v3, v3

    sub-float/2addr v0, v3

    iget v3, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchCenterY:F

    invoke-direct {p0}, Lorg/telegram/ui/SecretMediaViewer;->getContainerViewHeight()I

    move-result v4

    div-int/2addr v4, v6

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchStartY:F

    sub-float/2addr v3, v4

    iget v4, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchStartScale:F

    div-float v4, v8, v4

    mul-float/2addr v3, v4

    sub-float/2addr v0, v3

    .line 2328
    invoke-direct {p0, v8}, Lorg/telegram/ui/SecretMediaViewer;->updateMinMax(F)V

    .line 2329
    iget v3, p0, Lorg/telegram/ui/SecretMediaViewer;->minX:F

    cmpg-float v4, p1, v3

    if-gez v4, :cond_18

    :goto_2
    move p1, v3

    goto :goto_3

    .line 2331
    :cond_18
    iget v3, p0, Lorg/telegram/ui/SecretMediaViewer;->maxX:F

    cmpl-float v4, p1, v3

    if-lez v4, :cond_19

    goto :goto_2

    .line 2334
    :cond_19
    :goto_3
    iget v3, p0, Lorg/telegram/ui/SecretMediaViewer;->minY:F

    cmpg-float v4, v0, v3

    if-gez v4, :cond_1a

    :goto_4
    move v0, v3

    goto :goto_5

    .line 2336
    :cond_1a
    iget v3, p0, Lorg/telegram/ui/SecretMediaViewer;->maxY:F

    cmpl-float v4, v0, v3

    if-lez v4, :cond_1b

    goto :goto_4

    .line 2339
    :cond_1b
    :goto_5
    invoke-direct {p0, v8, p1, v0, v2}, Lorg/telegram/ui/SecretMediaViewer;->animateTo(FFFZ)V

    goto :goto_6

    .line 2341
    :cond_1c
    invoke-direct {p0, v2}, Lorg/telegram/ui/SecretMediaViewer;->checkMinMax(Z)V

    .line 2343
    :goto_6
    iput-boolean v1, p0, Lorg/telegram/ui/SecretMediaViewer;->zooming:Z

    goto/16 :goto_d

    .line 2344
    :cond_1d
    iget-boolean v0, p0, Lorg/telegram/ui/SecretMediaViewer;->draggingDown:Z

    if-eqz v0, :cond_1f

    .line 2345
    iget v0, p0, Lorg/telegram/ui/SecretMediaViewer;->dragY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-direct {p0}, Lorg/telegram/ui/SecretMediaViewer;->getContainerViewHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x40c00000    # 6.0f

    div-float/2addr v0, v3

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1e

    .line 2346
    invoke-virtual {p0, v2, v1}, Lorg/telegram/ui/SecretMediaViewer;->closePhoto(ZZ)Z

    goto :goto_7

    .line 2348
    :cond_1e
    invoke-direct {p0, v7, v9, v9, v1}, Lorg/telegram/ui/SecretMediaViewer;->animateTo(FFFZ)V

    .line 2350
    :goto_7
    iput-boolean v1, p0, Lorg/telegram/ui/SecretMediaViewer;->draggingDown:Z

    goto/16 :goto_d

    .line 2351
    :cond_1f
    iget-boolean p1, p0, Lorg/telegram/ui/SecretMediaViewer;->moving:Z

    if-eqz p1, :cond_28

    .line 2352
    iget p1, p0, Lorg/telegram/ui/SecretMediaViewer;->translationX:F

    .line 2353
    iget v0, p0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    .line 2354
    iget v3, p0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    invoke-direct {p0, v3}, Lorg/telegram/ui/SecretMediaViewer;->updateMinMax(F)V

    .line 2355
    iput-boolean v1, p0, Lorg/telegram/ui/SecretMediaViewer;->moving:Z

    .line 2356
    iput-boolean v2, p0, Lorg/telegram/ui/SecretMediaViewer;->canDragDown:Z

    .line 2357
    iget-object v2, p0, Lorg/telegram/ui/SecretMediaViewer;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_20

    iget v3, p0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    cmpl-float v3, v3, v7

    if-nez v3, :cond_20

    const/16 v3, 0x3e8

    .line 2358
    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 2360
    :cond_20
    iget v2, p0, Lorg/telegram/ui/SecretMediaViewer;->translationX:F

    iget v3, p0, Lorg/telegram/ui/SecretMediaViewer;->minX:F

    cmpg-float v4, v2, v3

    if-gez v4, :cond_21

    :goto_8
    move p1, v3

    goto :goto_9

    .line 2362
    :cond_21
    iget v3, p0, Lorg/telegram/ui/SecretMediaViewer;->maxX:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_22

    goto :goto_8

    .line 2365
    :cond_22
    :goto_9
    iget v2, p0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    iget v3, p0, Lorg/telegram/ui/SecretMediaViewer;->minY:F

    cmpg-float v4, v2, v3

    if-gez v4, :cond_23

    :goto_a
    move v0, v3

    goto :goto_b

    .line 2367
    :cond_23
    iget v3, p0, Lorg/telegram/ui/SecretMediaViewer;->maxY:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_24

    goto :goto_a

    .line 2370
    :cond_24
    :goto_b
    iget v2, p0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    invoke-direct {p0, v2, p1, v0, v1}, Lorg/telegram/ui/SecretMediaViewer;->animateTo(FFFZ)V

    goto/16 :goto_d

    .line 2221
    :cond_25
    :goto_c
    iput-boolean v1, p0, Lorg/telegram/ui/SecretMediaViewer;->discardTap:Z

    .line 2222
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_26

    .line 2223
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Scroller;->abortAnimation()V

    .line 2225
    :cond_26
    iget-boolean v0, p0, Lorg/telegram/ui/SecretMediaViewer;->draggingDown:Z

    if-nez v0, :cond_28

    .line 2226
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v6, :cond_27

    .line 2227
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    sub-float/2addr v0, v4

    float-to-double v4, v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    sub-float/2addr v0, v6

    float-to-double v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v0, v4

    iput v0, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchStartDistance:F

    .line 2228
    iget v0, p0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    iput v0, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchStartScale:F

    .line 2229
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    add-float/2addr v0, v4

    div-float/2addr v0, v3

    iput v0, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchCenterX:F

    .line 2230
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr v0, p1

    div-float/2addr v0, v3

    iput v0, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchCenterY:F

    .line 2231
    iget p1, p0, Lorg/telegram/ui/SecretMediaViewer;->translationX:F

    iput p1, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchStartX:F

    .line 2232
    iget p1, p0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    iput p1, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchStartY:F

    .line 2233
    iput-boolean v2, p0, Lorg/telegram/ui/SecretMediaViewer;->zooming:Z

    .line 2234
    iput-boolean v1, p0, Lorg/telegram/ui/SecretMediaViewer;->moving:Z

    .line 2235
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_28

    .line 2236
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_d

    .line 2238
    :cond_27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v2, :cond_28

    .line 2239
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/SecretMediaViewer;->moveStartX:F

    .line 2240
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/SecretMediaViewer;->moveStartY:F

    iput p1, p0, Lorg/telegram/ui/SecretMediaViewer;->dragY:F

    .line 2241
    iput-boolean v1, p0, Lorg/telegram/ui/SecretMediaViewer;->draggingDown:Z

    .line 2242
    iput-boolean v2, p0, Lorg/telegram/ui/SecretMediaViewer;->canDragDown:Z

    .line 2243
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_28

    .line 2244
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    :cond_28
    :goto_d
    return v1
.end method

.method private releasePlayer()V
    .locals 4

    .line 709
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 710
    iput v1, p0, Lorg/telegram/ui/SecretMediaViewer;->playerRetryPlayCount:I

    const/4 v3, 0x1

    .line 711
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer(Z)V

    .line 712
    iput-object v2, p0, Lorg/telegram/ui/SecretMediaViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 715
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 716
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x80

    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 719
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 721
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v0, :cond_2

    .line 722
    iget-object v3, p0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 723
    iput-object v2, p0, Lorg/telegram/ui/SecretMediaViewer;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    .line 725
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->videoTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_3

    .line 726
    iput-object v2, p0, Lorg/telegram/ui/SecretMediaViewer;->videoTextureView:Landroid/view/TextureView;

    .line 728
    :cond_3
    iput-boolean v1, p0, Lorg/telegram/ui/SecretMediaViewer;->isPlaying:Z

    return-void
.end method

.method private setCaptionHwLayerEnabled(Z)V
    .locals 2

    .line 2730
    iget-boolean v0, p0, Lorg/telegram/ui/SecretMediaViewer;->captionHwLayerEnabled:Z

    if-eq v0, p1, :cond_0

    .line 2731
    iput-boolean p1, p0, Lorg/telegram/ui/SecretMediaViewer;->captionHwLayerEnabled:Z

    .line 2732
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->captionTextViewSwitcher:Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2733
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->captionTextViewSwitcher:Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/TextViewSwitcher;->getCurrentView()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2734
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->captionTextViewSwitcher:Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/TextViewSwitcher;->getNextView()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private setCurrentCaption(Lorg/telegram/messenger/MessageObject;Ljava/lang/CharSequence;ZZ)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p4

    const/4 v3, 0x3

    move-object/from16 v4, p2

    .line 992
    invoke-static {v4, v3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->cloneSpans(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 993
    iget-object v4, v1, Lorg/telegram/ui/SecretMediaViewer;->captionScrollView:Lorg/telegram/ui/PhotoViewer$CaptionScrollView;

    const/4 v5, -0x2

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-nez v4, :cond_0

    .line 994
    new-instance v4, Landroid/widget/FrameLayout;

    iget-object v8, v1, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v4, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v1, Lorg/telegram/ui/SecretMediaViewer;->captionContainer:Landroid/widget/FrameLayout;

    .line 995
    iget-object v8, v1, Lorg/telegram/ui/SecretMediaViewer;->captionTextViewSwitcher:Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;

    invoke-virtual {v8, v4}, Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;->setContainer(Landroid/widget/FrameLayout;)V

    .line 996
    new-instance v4, Lorg/telegram/ui/SecretMediaViewer$10;

    iget-object v8, v1, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, v1, Lorg/telegram/ui/SecretMediaViewer;->captionTextViewSwitcher:Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;

    iget-object v10, v1, Lorg/telegram/ui/SecretMediaViewer;->captionContainer:Landroid/widget/FrameLayout;

    invoke-direct {v4, v1, v8, v9, v10}, Lorg/telegram/ui/SecretMediaViewer$10;-><init>(Lorg/telegram/ui/SecretMediaViewer;Landroid/content/Context;Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;Landroid/widget/FrameLayout;)V

    iput-object v4, v1, Lorg/telegram/ui/SecretMediaViewer;->captionScrollView:Lorg/telegram/ui/PhotoViewer$CaptionScrollView;

    .line 1016
    iget-object v8, v1, Lorg/telegram/ui/SecretMediaViewer;->captionTextViewSwitcher:Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;

    invoke-virtual {v8, v4}, Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;->setScrollView(Landroidx/core/widget/NestedScrollView;)V

    .line 1017
    iget-object v4, v1, Lorg/telegram/ui/SecretMediaViewer;->captionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 1018
    iget-object v4, v1, Lorg/telegram/ui/SecretMediaViewer;->captionScrollView:Lorg/telegram/ui/PhotoViewer$CaptionScrollView;

    iget-object v8, v1, Lorg/telegram/ui/SecretMediaViewer;->captionContainer:Landroid/widget/FrameLayout;

    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v9, v6, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v8, v9}, Landroidx/core/widget/NestedScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1019
    iget-object v4, v1, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    iget-object v8, v1, Lorg/telegram/ui/SecretMediaViewer;->captionScrollView:Lorg/telegram/ui/PhotoViewer$CaptionScrollView;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v9, -0x1

    const/high16 v10, -0x40800000    # -1.0f

    const/16 v11, 0x50

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1020
    iget-object v4, v1, Lorg/telegram/ui/SecretMediaViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    iget-object v8, v1, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getOverlayView(Landroid/content/Context;)Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->bringToFront()V

    .line 1022
    :cond_0
    iget-object v4, v1, Lorg/telegram/ui/SecretMediaViewer;->captionTextViewSwitcher:Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    iget-object v8, v1, Lorg/telegram/ui/SecretMediaViewer;->captionContainer:Landroid/widget/FrameLayout;

    const/4 v9, 0x1

    if-eq v4, v8, :cond_1

    .line 1023
    iget-object v4, v1, Lorg/telegram/ui/SecretMediaViewer;->captionTextViewSwitcher:Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;

    invoke-virtual {v4, v9}, Landroid/widget/FrameLayout;->setMeasureAllChildren(Z)V

    .line 1024
    iget-object v4, v1, Lorg/telegram/ui/SecretMediaViewer;->captionContainer:Landroid/widget/FrameLayout;

    iget-object v8, v1, Lorg/telegram/ui/SecretMediaViewer;->captionTextViewSwitcher:Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;

    invoke-virtual {v4, v8, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 1027
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 1028
    iget-object v5, v1, Lorg/telegram/ui/SecretMediaViewer;->captionTextViewSwitcher:Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/TextViewSwitcher;->getCurrentView()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 1030
    iget-object v8, v1, Lorg/telegram/ui/SecretMediaViewer;->captionTextViewSwitcher:Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;

    if-eqz v2, :cond_2

    invoke-virtual {v8}, Lorg/telegram/ui/Components/TextViewSwitcher;->getNextView()Landroid/widget/TextView;

    move-result-object v8

    goto :goto_0

    :cond_2
    invoke-virtual {v8}, Lorg/telegram/ui/Components/TextViewSwitcher;->getCurrentView()Landroid/widget/TextView;

    move-result-object v8

    .line 1042
    :goto_0
    invoke-virtual {v8}, Landroid/widget/TextView;->getMaxLines()I

    move-result v10

    if-ne v10, v9, :cond_3

    .line 1044
    iget-object v11, v1, Lorg/telegram/ui/SecretMediaViewer;->captionTextViewSwitcher:Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;

    invoke-virtual {v11}, Lorg/telegram/ui/Components/TextViewSwitcher;->getCurrentView()Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1045
    iget-object v11, v1, Lorg/telegram/ui/SecretMediaViewer;->captionTextViewSwitcher:Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;

    invoke-virtual {v11}, Lorg/telegram/ui/Components/TextViewSwitcher;->getNextView()Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    :cond_3
    const v11, 0x7fffffff

    const/4 v12, 0x0

    if-eq v10, v11, :cond_4

    .line 1049
    iget-object v10, v1, Lorg/telegram/ui/SecretMediaViewer;->captionTextViewSwitcher:Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/TextViewSwitcher;->getCurrentView()Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1050
    iget-object v10, v1, Lorg/telegram/ui/SecretMediaViewer;->captionTextViewSwitcher:Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/TextViewSwitcher;->getNextView()Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1051
    iget-object v10, v1, Lorg/telegram/ui/SecretMediaViewer;->captionTextViewSwitcher:Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/TextViewSwitcher;->getCurrentView()Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1052
    iget-object v10, v1, Lorg/telegram/ui/SecretMediaViewer;->captionTextViewSwitcher:Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/TextViewSwitcher;->getNextView()Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1056
    :cond_4
    invoke-virtual {v8, v7}, Landroid/view/View;->setScrollX(I)V

    .line 1059
    iget-object v10, v1, Lorg/telegram/ui/SecretMediaViewer;->captionScrollView:Lorg/telegram/ui/PhotoViewer$CaptionScrollView;

    iput-boolean v7, v10, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->dontChangeTopMargin:Z

    if-eqz v2, :cond_7

    .line 1064
    invoke-static {v10}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    .line 1066
    new-instance v10, Landroid/transition/TransitionSet;

    invoke-direct {v10}, Landroid/transition/TransitionSet;-><init>()V

    new-instance v11, Lorg/telegram/ui/SecretMediaViewer$12;

    const/4 v13, 0x2

    invoke-direct {v11, v1, v13, v5, v4}, Lorg/telegram/ui/SecretMediaViewer$12;-><init>(Lorg/telegram/ui/SecretMediaViewer;IZZ)V

    .line 1067
    invoke-virtual {v10, v11}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v10

    new-instance v11, Lorg/telegram/ui/SecretMediaViewer$11;

    invoke-direct {v11, v1, v9, v5, v4}, Lorg/telegram/ui/SecretMediaViewer$11;-><init>(Lorg/telegram/ui/SecretMediaViewer;IZZ)V

    .line 1087
    invoke-virtual {v10, v11}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v10

    const-wide/16 v13, 0xc8

    .line 1106
    invoke-virtual {v10, v13, v14}, Landroid/transition/TransitionSet;->setDuration(J)Landroid/transition/TransitionSet;

    move-result-object v10

    if-nez v5, :cond_5

    .line 1109
    iget-object v11, v1, Lorg/telegram/ui/SecretMediaViewer;->captionScrollView:Lorg/telegram/ui/PhotoViewer$CaptionScrollView;

    iput-boolean v9, v11, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->dontChangeTopMargin:Z

    .line 1110
    new-instance v11, Lorg/telegram/ui/SecretMediaViewer$13;

    invoke-direct {v11, v1}, Lorg/telegram/ui/SecretMediaViewer$13;-><init>(Lorg/telegram/ui/SecretMediaViewer;)V

    invoke-virtual {v10, v11}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    :cond_5
    if-eqz v5, :cond_6

    if-nez v4, :cond_6

    .line 1162
    iget-object v11, v1, Lorg/telegram/ui/SecretMediaViewer;->captionTextViewSwitcher:Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;

    invoke-virtual {v10, v11}, Landroid/transition/TransitionSet;->addTarget(Landroid/view/View;)Landroid/transition/TransitionSet;

    .line 1165
    :cond_6
    iget-object v11, v1, Lorg/telegram/ui/SecretMediaViewer;->captionScrollView:Lorg/telegram/ui/PhotoViewer$CaptionScrollView;

    invoke-static {v11, v10}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    move v10, v9

    goto :goto_1

    .line 1167
    :cond_7
    iget-object v10, v1, Lorg/telegram/ui/SecretMediaViewer;->captionTextViewSwitcher:Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/TextViewSwitcher;->getCurrentView()Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1168
    iget-object v10, v1, Lorg/telegram/ui/SecretMediaViewer;->captionScrollView:Lorg/telegram/ui/PhotoViewer$CaptionScrollView;

    if-eqz v10, :cond_8

    .line 1169
    invoke-virtual {v10, v7, v7}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    :cond_8
    move v10, v7

    :goto_1
    const/4 v11, 0x4

    if-nez v4, :cond_e

    .line 1175
    invoke-static {v12, v9}, Lorg/telegram/ui/ActionBar/Theme;->createChatResources(Landroid/content/Context;Z)V

    if-eqz v0, :cond_9

    .line 1177
    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v4, :cond_9

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->translatedText:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    if-eqz v5, :cond_9

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->translatedToLanguage:Ljava/lang/String;

    invoke-static {}, Lorg/telegram/ui/Components/TranslateAlert2;->getToLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_2

    :cond_9
    if-eqz v0, :cond_b

    .line 1179
    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b

    .line 1180
    new-instance v13, Landroid/text/SpannableString;

    invoke-direct {v13, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1181
    invoke-virtual {v0, v13, v9, v7}, Lorg/telegram/messenger/MessageObject;->addEntitiesToText(Ljava/lang/CharSequence;ZZ)Z

    .line 1182
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1183
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v12

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDuration()D

    move-result-wide v3

    double-to-int v0, v3

    const/16 v17, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x3

    move/from16 v16, v0

    invoke-static/range {v12 .. v17}, Lorg/telegram/messenger/MessageObject;->addUrlsByPattern(ZLjava/lang/CharSequence;ZIIZ)V

    .line 1185
    :cond_a
    invoke-virtual {v8}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    invoke-static {v13, v0, v7}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_2

    .line 1187
    :cond_b
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    invoke-static {v0, v3, v7}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1189
    :goto_2
    iget-object v0, v1, Lorg/telegram/ui/SecretMediaViewer;->captionTextViewSwitcher:Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1191
    :try_start_0
    iget-object v0, v1, Lorg/telegram/ui/SecretMediaViewer;->captionTextViewSwitcher:Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;

    invoke-virtual {v0, v3, v2, v7}, Lorg/telegram/ui/Components/TextViewSwitcher;->setText(Ljava/lang/CharSequence;ZZ)Z

    .line 1192
    iget-object v0, v1, Lorg/telegram/ui/SecretMediaViewer;->captionScrollView:Lorg/telegram/ui/PhotoViewer$CaptionScrollView;

    if-eqz v0, :cond_c

    .line 1193
    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->updateTopMargin()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 1196
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1198
    :cond_c
    :goto_3
    invoke-virtual {v8, v7}, Landroid/view/View;->setScrollY(I)V

    .line 1199
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1200
    iget-object v0, v1, Lorg/telegram/ui/SecretMediaViewer;->captionTextViewSwitcher:Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;

    iget-boolean v2, v1, Lorg/telegram/ui/SecretMediaViewer;->isActionBarVisible:Z

    if-eqz v2, :cond_d

    goto :goto_4

    :cond_d
    move v7, v11

    :goto_4
    invoke-virtual {v0, v7}, Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;->setVisibility(I)V

    goto :goto_5

    .line 1202
    :cond_e
    iget-object v0, v1, Lorg/telegram/ui/SecretMediaViewer;->captionTextViewSwitcher:Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;

    invoke-virtual {v0, v12, v2}, Lorg/telegram/ui/Components/TextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    .line 1203
    iget-object v0, v1, Lorg/telegram/ui/SecretMediaViewer;->captionTextViewSwitcher:Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/TextViewSwitcher;->getCurrentView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1204
    iget-object v0, v1, Lorg/telegram/ui/SecretMediaViewer;->captionTextViewSwitcher:Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;

    if-eqz v10, :cond_f

    if-eqz v5, :cond_10

    :cond_f
    move v7, v9

    :cond_10
    invoke-virtual {v0, v11, v7}, Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;->setVisibility(IZ)V

    .line 1205
    iget-object v0, v1, Lorg/telegram/ui/SecretMediaViewer;->captionTextViewSwitcher:Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;

    invoke-virtual {v0, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1207
    :goto_5
    iget-object v0, v1, Lorg/telegram/ui/SecretMediaViewer;->captionTextViewSwitcher:Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/TextViewSwitcher;->getCurrentView()Landroid/widget/TextView;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/PhotoViewer$CaptionTextView;

    if-eqz v0, :cond_11

    .line 1208
    iget-object v0, v1, Lorg/telegram/ui/SecretMediaViewer;->captionTextViewSwitcher:Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/TextViewSwitcher;->getCurrentView()Landroid/widget/TextView;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/PhotoViewer$CaptionTextView;

    move/from16 v2, p3

    invoke-virtual {v0, v2}, Lorg/telegram/ui/PhotoViewer$CaptionTextView;->setLoading(Z)V

    :cond_11
    return-void
.end method

.method private showPlayButton(ZZ)V
    .locals 4

    .line 1341
    iget-boolean v0, p0, Lorg/telegram/ui/SecretMediaViewer;->isVideo:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1342
    :goto_0
    iget-boolean v0, p0, Lorg/telegram/ui/SecretMediaViewer;->playButtonShown:Z

    if-ne v0, p1, :cond_1

    if-eqz p2, :cond_1

    return-void

    .line 1346
    :cond_1
    iput-boolean p1, p0, Lorg/telegram/ui/SecretMediaViewer;->playButtonShown:Z

    .line 1347
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v0, 0x0

    const v1, 0x3f19999a    # 0.6f

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p2, :cond_5

    .line 1349
    iget-object p2, p0, Lorg/telegram/ui/SecretMediaViewer;->playButton:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    .line 1350
    :goto_1
    invoke-virtual {p2, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_3

    move v1, v2

    .line 1351
    :cond_3
    invoke-virtual {p2, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_4

    move v0, v2

    .line 1352
    :cond_4
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x154

    .line 1353
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    .line 1354
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1355
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    .line 1357
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/SecretMediaViewer;->playButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    move v3, v2

    goto :goto_2

    :cond_6
    move v3, v1

    :goto_2
    invoke-virtual {p2, v3}, Landroid/view/View;->setScaleX(F)V

    .line 1358
    iget-object p2, p0, Lorg/telegram/ui/SecretMediaViewer;->playButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_7

    move v1, v2

    :cond_7
    invoke-virtual {p2, v1}, Landroid/view/View;->setScaleY(F)V

    .line 1359
    iget-object p2, p0, Lorg/telegram/ui/SecretMediaViewer;->playButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_8

    move v0, v2

    :cond_8
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private showSecretHint()V
    .locals 5

    .line 1364
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->secretHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setMultilineText(Z)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1365
    iget-boolean v0, p0, Lorg/telegram/ui/SecretMediaViewer;->isVideo:Z

    if-eqz v0, :cond_0

    sget v0, Lorg/telegram/messenger/R$string;->VideoShownOnce:I

    goto :goto_0

    :cond_0
    sget v0, Lorg/telegram/messenger/R$string;->PhotoShownOnce:I

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1366
    iget-object v2, p0, Lorg/telegram/ui/SecretMediaViewer;->secretHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/telegram/ui/Stories/recorder/HintView2;->cutInFancyHalf(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Stories/recorder/HintView2;->setMaxWidthPx(I)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1367
    iget-object v2, p0, Lorg/telegram/ui/SecretMediaViewer;->secretHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1368
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->secretHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/high16 v2, 0x41400000    # 12.0f

    const/high16 v3, 0x41300000    # 11.0f

    const/high16 v4, 0x40e00000    # 7.0f

    invoke-virtual {v0, v2, v4, v3, v4}, Lorg/telegram/ui/Stories/recorder/HintView2;->setInnerPadding(FFFF)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1369
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->secretHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->setIconMargin(I)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1370
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->secretHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->setIconTranslate(FF)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1371
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->secretHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    sget v2, Lorg/telegram/messenger/R$raw;->fire_on:I

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->setIcon(I)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1372
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->secretHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->show()Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1373
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v3, 0x0

    const-string/jumbo v4, "viewoncehint"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/2addr v2, v1

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private toggleActionBar(ZZ)V
    .locals 9

    .line 1652
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->hideActionBarRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_0

    .line 1653
    iget-boolean v0, p0, Lorg/telegram/ui/SecretMediaViewer;->isVideo:Z

    if-eqz v0, :cond_0

    .line 1654
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->hideActionBarRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1657
    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1659
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->setEnabled(Z)V

    .line 1660
    iput-boolean p1, p0, Lorg/telegram/ui/SecretMediaViewer;->isActionBarVisible:Z

    .line 1662
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SecretMediaViewer;->showPlayButton(ZZ)V

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p2, :cond_8

    .line 1664
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1665
    iget-object v3, p0, Lorg/telegram/ui/SecretMediaViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    if-eqz p1, :cond_2

    move v5, v2

    goto :goto_0

    :cond_2
    move v5, v1

    :goto_0
    const/4 v6, 0x1

    new-array v7, v6, [F

    aput v5, v7, v0

    invoke-static {v3, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1666
    iget-object v3, p0, Lorg/telegram/ui/SecretMediaViewer;->seekbarContainer:Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;

    iget-object v5, v3, Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;->SEEKBAR_ALPHA:Landroid/util/Property;

    if-eqz p1, :cond_3

    move v7, v2

    goto :goto_1

    :cond_3
    move v7, v1

    :goto_1
    new-array v8, v6, [F

    aput v7, v8, v0

    invoke-static {v3, v5, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1667
    iget-object v3, p0, Lorg/telegram/ui/SecretMediaViewer;->captionScrollView:Lorg/telegram/ui/PhotoViewer$CaptionScrollView;

    if-eqz p1, :cond_4

    move v5, v2

    goto :goto_2

    :cond_4
    move v5, v1

    :goto_2
    new-array v7, v6, [F

    aput v5, v7, v0

    invoke-static {v3, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1668
    iget-object v3, p0, Lorg/telegram/ui/SecretMediaViewer;->seekbarBackground:Landroid/view/View;

    if-eqz p1, :cond_5

    move v5, v2

    goto :goto_3

    :cond_5
    move v5, v1

    :goto_3
    new-array v7, v6, [F

    aput v5, v7, v0

    invoke-static {v3, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1669
    iget-object v3, p0, Lorg/telegram/ui/SecretMediaViewer;->navigationBar:Landroid/view/View;

    if-eqz p1, :cond_6

    move v1, v2

    :cond_6
    new-array v2, v6, [F

    aput v1, v2, v0

    invoke-static {v3, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1670
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    .line 1671
    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    if-nez p1, :cond_7

    .line 1673
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    new-instance p2, Lorg/telegram/ui/SecretMediaViewer$15;

    invoke-direct {p2, p0}, Lorg/telegram/ui/SecretMediaViewer$15;-><init>(Lorg/telegram/ui/SecretMediaViewer;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1685
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1686
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    .line 1688
    :cond_8
    iget-object p2, p0, Lorg/telegram/ui/SecretMediaViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz p1, :cond_9

    move v3, v2

    goto :goto_4

    :cond_9
    move v3, v1

    :goto_4
    invoke-virtual {p2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1689
    iget-object p2, p0, Lorg/telegram/ui/SecretMediaViewer;->captionScrollView:Lorg/telegram/ui/PhotoViewer$CaptionScrollView;

    if-eqz p1, :cond_a

    move v3, v2

    goto :goto_5

    :cond_a
    move v3, v1

    :goto_5
    invoke-virtual {p2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1690
    iget-object p2, p0, Lorg/telegram/ui/SecretMediaViewer;->seekbarBackground:Landroid/view/View;

    if-eqz p1, :cond_b

    move v3, v2

    goto :goto_6

    :cond_b
    move v3, v1

    :goto_6
    invoke-virtual {p2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1691
    iget-object p2, p0, Lorg/telegram/ui/SecretMediaViewer;->navigationBar:Landroid/view/View;

    if-eqz p1, :cond_c

    move v1, v2

    :cond_c
    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    if-nez p1, :cond_d

    .line 1693
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 1694
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->captionScrollView:Lorg/telegram/ui/PhotoViewer$CaptionScrollView;

    invoke-virtual {p1, v0, v0}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    :cond_d
    return-void
.end method

.method private updateMinMax(F)V
    .locals 3

    .line 2183
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v0

    mul-float/2addr v0, p1

    invoke-direct {p0}, Lorg/telegram/ui/SecretMediaViewer;->getContainerViewWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    .line 2184
    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v1

    mul-float/2addr v1, p1

    invoke-direct {p0}, Lorg/telegram/ui/SecretMediaViewer;->getContainerViewHeight()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v1, p1

    float-to-int p1, v1

    div-int/lit8 p1, p1, 0x2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    neg-int v2, v0

    int-to-float v2, v2

    .line 2186
    iput v2, p0, Lorg/telegram/ui/SecretMediaViewer;->minX:F

    int-to-float v0, v0

    .line 2187
    iput v0, p0, Lorg/telegram/ui/SecretMediaViewer;->maxX:F

    goto :goto_0

    .line 2189
    :cond_0
    iput v1, p0, Lorg/telegram/ui/SecretMediaViewer;->maxX:F

    iput v1, p0, Lorg/telegram/ui/SecretMediaViewer;->minX:F

    :goto_0
    if-lez p1, :cond_1

    neg-int v0, p1

    int-to-float v0, v0

    .line 2192
    iput v0, p0, Lorg/telegram/ui/SecretMediaViewer;->minY:F

    int-to-float p1, p1

    .line 2193
    iput p1, p0, Lorg/telegram/ui/SecretMediaViewer;->maxY:F

    return-void

    .line 2195
    :cond_1
    iput v1, p0, Lorg/telegram/ui/SecretMediaViewer;->maxY:F

    iput v1, p0, Lorg/telegram/ui/SecretMediaViewer;->minY:F

    return-void
.end method

.method private updateVideoPlayerTime()V
    .locals 12

    .line 682
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->videoPlayerCurrentTime:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 683
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->videoPlayerTotalTime:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 684
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 685
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 686
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    .line 687
    div-long/2addr v3, v7

    .line 688
    div-long/2addr v5, v7

    .line 689
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->videoPlayerCurrentTime:[I

    const-wide/16 v7, 0x3c

    div-long v9, v3, v7

    long-to-int v9, v9

    aput v9, v0, v1

    .line 690
    rem-long/2addr v3, v7

    long-to-int v3, v3

    aput v3, v0, v2

    .line 691
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->videoPlayerTotalTime:[I

    div-long v3, v5, v7

    long-to-int v3, v3

    aput v3, v0, v1

    .line 692
    rem-long/2addr v5, v7

    long-to-int v3, v5

    aput v3, v0, v2

    .line 695
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->videoPlayerCurrentTime:[I

    aget v0, v0, v1

    const/4 v3, 0x3

    const/4 v4, 0x2

    const-string v5, "%02d:%02d"

    const-string v6, "%02d:%02d:%02d"

    const/16 v7, 0x3c

    if-lt v0, v7, :cond_1

    .line 696
    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    div-int/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v9, p0, Lorg/telegram/ui/SecretMediaViewer;->videoPlayerCurrentTime:[I

    aget v9, v9, v1

    rem-int/2addr v9, v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, p0, Lorg/telegram/ui/SecretMediaViewer;->videoPlayerCurrentTime:[I

    aget v10, v10, v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-array v11, v3, [Ljava/lang/Object;

    aput-object v0, v11, v1

    aput-object v9, v11, v2

    aput-object v10, v11, v4

    invoke-static {v8, v6, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 698
    :cond_1
    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v9, p0, Lorg/telegram/ui/SecretMediaViewer;->videoPlayerCurrentTime:[I

    aget v9, v9, v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-array v10, v4, [Ljava/lang/Object;

    aput-object v0, v10, v1

    aput-object v9, v10, v2

    invoke-static {v8, v5, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 700
    :goto_0
    iget-object v8, p0, Lorg/telegram/ui/SecretMediaViewer;->videoPlayerTotalTime:[I

    aget v8, v8, v1

    if-lt v8, v7, :cond_2

    .line 701
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    div-int/2addr v8, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/ui/SecretMediaViewer;->videoPlayerTotalTime:[I

    aget v9, v9, v1

    rem-int/2addr v9, v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v9, p0, Lorg/telegram/ui/SecretMediaViewer;->videoPlayerTotalTime:[I

    aget v9, v9, v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v8, v3, v1

    aput-object v7, v3, v2

    aput-object v9, v3, v4

    invoke-static {v5, v6, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 703
    :cond_2
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/SecretMediaViewer;->videoPlayerTotalTime:[I

    aget v7, v7, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v6, v8, v1

    aput-object v7, v8, v2

    invoke-static {v3, v5, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 705
    :goto_1
    iget-object v5, p0, Lorg/telegram/ui/SecretMediaViewer;->videoPlayerTime:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v1

    aput-object v3, v4, v2

    const-string v0, "%s / %s"

    invoke-static {v6, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    return-void
.end method


# virtual methods
.method public closePhoto(ZZ)Z
    .locals 25

    move-object/from16 v0, p0

    .line 1976
    iget-object v1, v0, Lorg/telegram/ui/SecretMediaViewer;->parentActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lorg/telegram/ui/SecretMediaViewer;->isPhotoVisible:Z

    if-eqz v1, :cond_0

    invoke-direct {v0}, Lorg/telegram/ui/SecretMediaViewer;->checkPhotoAnimation()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move/from16 v23, v2

    goto/16 :goto_8

    .line 1980
    :cond_1
    iget-boolean v1, v0, Lorg/telegram/ui/SecretMediaViewer;->ignoreDelete:Z

    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    return v2

    .line 1984
    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/SecretMediaViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v1, :cond_4

    .line 1985
    iget-boolean v3, v0, Lorg/telegram/ui/SecretMediaViewer;->wasLightNavigationBar:Z

    invoke-static {v1, v3}, Lorg/telegram/messenger/AndroidUtilities;->setLightNavigationBar(Landroid/app/Activity;Z)V

    .line 1986
    iget-object v1, v0, Lorg/telegram/ui/SecretMediaViewer;->parentActivity:Landroid/app/Activity;

    iget v3, v0, Lorg/telegram/ui/SecretMediaViewer;->wasNavigationBarColor:I

    invoke-static {v1, v3}, Lorg/telegram/messenger/AndroidUtilities;->setNavigationBarColor(Landroid/app/Activity;I)V

    .line 1987
    iget-object v1, v0, Lorg/telegram/ui/SecretMediaViewer;->parentActivity:Landroid/app/Activity;

    instance-of v3, v1, Lorg/telegram/ui/LaunchActivity;

    if-eqz v3, :cond_3

    .line 1988
    check-cast v1, Lorg/telegram/ui/LaunchActivity;

    iget v3, v0, Lorg/telegram/ui/SecretMediaViewer;->wasNavigationBarColor:I

    invoke-virtual {v1, v3}, Lorg/telegram/ui/LaunchActivity;->animateNavigationBarColor(I)V

    goto :goto_0

    .line 1990
    :cond_3
    iget v3, v0, Lorg/telegram/ui/SecretMediaViewer;->wasNavigationBarColor:I

    invoke-static {v1, v3}, Lorg/telegram/messenger/AndroidUtilities;->setNavigationBarColor(Landroid/app/Activity;I)V

    .line 1994
    :cond_4
    :goto_0
    iget v1, v0, Lorg/telegram/ui/SecretMediaViewer;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    invoke-virtual {v1, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1995
    iget v1, v0, Lorg/telegram/ui/SecretMediaViewer;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/NotificationCenter;->updateMessageMedia:I

    invoke-virtual {v1, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1996
    iget v1, v0, Lorg/telegram/ui/SecretMediaViewer;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/NotificationCenter;->didCreatedNewDeleteTask:I

    invoke-virtual {v1, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1998
    iput-boolean v2, v0, Lorg/telegram/ui/SecretMediaViewer;->isActionBarVisible:Z

    .line 2000
    iget-object v1, v0, Lorg/telegram/ui/SecretMediaViewer;->velocityTracker:Landroid/view/VelocityTracker;

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    .line 2001
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 2002
    iput-object v3, v0, Lorg/telegram/ui/SecretMediaViewer;->velocityTracker:Landroid/view/VelocityTracker;

    .line 2004
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lorg/telegram/ui/SecretMediaViewer;->closeTime:J

    .line 2006
    iget-object v6, v0, Lorg/telegram/ui/SecretMediaViewer;->currentProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    if-eqz v6, :cond_7

    iget-object v7, v0, Lorg/telegram/ui/SecretMediaViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_photoEmpty;

    if-nez v4, :cond_7

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_documentEmpty;

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 2009
    invoke-interface/range {v6 .. v11}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->getPlaceForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;IZZ)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    move-result-object v1

    goto :goto_2

    :cond_7
    :goto_1
    move-object v1, v3

    .line 2011
    :goto_2
    iget-object v4, v0, Lorg/telegram/ui/SecretMediaViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v4, :cond_8

    .line 2012
    invoke-virtual {v4}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    :cond_8
    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz p1, :cond_c

    .line 2016
    iput v9, v0, Lorg/telegram/ui/SecretMediaViewer;->photoAnimationInProgress:I

    .line 2017
    iget-object v13, v0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {v13}, Landroid/view/View;->invalidate()V

    .line 2019
    new-instance v13, Landroid/animation/AnimatorSet;

    invoke-direct {v13}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v13, v0, Lorg/telegram/ui/SecretMediaViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_9

    .line 2021
    iget-object v13, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v13}, Lorg/telegram/messenger/ImageReceiver;->getThumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v13

    if-eqz v13, :cond_9

    if-nez p2, :cond_9

    iget-object v13, v0, Lorg/telegram/ui/SecretMediaViewer;->onClose:Ljava/lang/Runnable;

    if-nez v13, :cond_9

    .line 2022
    iget-object v13, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v13, v2, v11}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 2024
    iget-object v13, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v13}, Lorg/telegram/messenger/ImageReceiver;->getDrawRegion()Landroid/graphics/RectF;

    move-result-object v13

    .line 2026
    iget v14, v13, Landroid/graphics/RectF;->right:F

    iget v15, v13, Landroid/graphics/RectF;->left:F

    sub-float/2addr v14, v15

    .line 2027
    iget v15, v13, Landroid/graphics/RectF;->bottom:F

    const/16 v16, 0x7

    iget v5, v13, Landroid/graphics/RectF;->top:F

    sub-float/2addr v15, v5

    .line 2028
    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    const/16 v17, 0x6

    iget v6, v5, Landroid/graphics/Point;->x:I

    .line 2029
    iget v5, v5, Landroid/graphics/Point;->y:I

    sget v18, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int v5, v5, v18

    const/16 v18, 0x5

    int-to-float v7, v6

    div-float v7, v14, v7

    const/16 v19, 0x4

    int-to-float v8, v5

    div-float v8, v15, v8

    .line 2030
    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToScale:F

    .line 2031
    iget v7, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewX:I

    int-to-float v7, v7

    iget v8, v13, Landroid/graphics/RectF;->left:F

    add-float/2addr v7, v8

    const/high16 v20, 0x40000000    # 2.0f

    div-float v14, v14, v20

    add-float/2addr v7, v14

    div-int/2addr v6, v10

    int-to-float v6, v6

    sub-float/2addr v7, v6

    iput v7, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToX:F

    .line 2032
    iget v6, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    int-to-float v6, v6

    iget v7, v13, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, v7

    div-float v7, v15, v20

    add-float/2addr v6, v7

    div-int/2addr v5, v10

    int-to-float v5, v5

    sub-float/2addr v6, v5

    iput v6, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToY:F

    .line 2033
    iget-object v5, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v5

    sub-float/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iput v5, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToClipHorizontal:F

    .line 2034
    iget v5, v13, Landroid/graphics/RectF;->top:F

    iget-object v6, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v5, v5

    .line 2035
    new-array v6, v10, [I

    .line 2036
    iget-object v7, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->getLocationInWindow([I)V

    .line 2037
    aget v7, v6, v11

    int-to-float v7, v7

    iget v8, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    int-to-float v8, v8

    iget v14, v13, Landroid/graphics/RectF;->top:F

    add-float/2addr v8, v14

    sub-float/2addr v7, v8

    iget v8, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->clipTopAddition:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    iput v7, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToClipTop:F

    int-to-float v5, v5

    .line 2038
    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v7

    invoke-static {v12, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToClipTop:F

    .line 2039
    iget v7, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    int-to-float v7, v7

    iget v8, v13, Landroid/graphics/RectF;->top:F

    add-float/2addr v7, v8

    float-to-int v8, v15

    int-to-float v8, v8

    add-float/2addr v7, v8

    aget v6, v6, v11

    iget-object v8, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v6, v8

    int-to-float v6, v6

    sub-float/2addr v7, v6

    iget v6, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->clipBottomAddition:I

    int-to-float v6, v6

    add-float/2addr v7, v6

    iput v7, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToClipBottom:F

    .line 2040
    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-static {v12, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToClipBottom:F

    .line 2042
    iput v12, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToClipTopOrigin:F

    .line 2043
    invoke-static {v12, v5}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-static {v12, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToClipTopOrigin:F

    .line 2044
    iput v12, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToClipBottomOrigin:F

    .line 2045
    invoke-static {v12, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v12, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToClipBottomOrigin:F

    .line 2047
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Lorg/telegram/ui/SecretMediaViewer;->animationStartTime:J

    .line 2048
    iput-boolean v11, v0, Lorg/telegram/ui/SecretMediaViewer;->zoomAnimation:Z

    goto :goto_5

    :cond_9
    const/16 v16, 0x7

    const/16 v17, 0x6

    const/16 v18, 0x5

    const/16 v19, 0x4

    .line 2050
    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v5, v6

    .line 2051
    iget v6, v0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    cmpl-float v6, v6, v12

    if-ltz v6, :cond_a

    :goto_3
    int-to-float v5, v5

    goto :goto_4

    :cond_a
    neg-int v5, v5

    goto :goto_3

    :goto_4
    iput v5, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToY:F

    .line 2053
    :goto_5
    iput-boolean v2, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToRadius:Z

    .line 2054
    invoke-direct {v0, v2, v11}, Lorg/telegram/ui/SecretMediaViewer;->showPlayButton(ZZ)V

    .line 2055
    iget-boolean v5, v0, Lorg/telegram/ui/SecretMediaViewer;->isVideo:Z

    const/16 v6, 0x9

    if-eqz v5, :cond_b

    .line 2056
    iput-boolean v2, v0, Lorg/telegram/ui/SecretMediaViewer;->videoCrossfadeStarted:Z

    .line 2057
    iput-boolean v2, v0, Lorg/telegram/ui/SecretMediaViewer;->textureUploaded:Z

    .line 2058
    iget-object v5, v0, Lorg/telegram/ui/SecretMediaViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    iget-object v7, v0, Lorg/telegram/ui/SecretMediaViewer;->photoBackgroundDrawable:Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;

    sget-object v8, Lorg/telegram/ui/Components/AnimationProperties;->COLOR_DRAWABLE_ALPHA:Landroid/util/Property;

    filled-new-array {v2}, [I

    move-result-object v13

    .line 2059
    invoke-static {v7, v8, v13}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v7

    iget-object v8, v0, Lorg/telegram/ui/SecretMediaViewer;->ANIMATION_VALUE:Landroid/util/Property;

    new-array v13, v10, [F

    fill-array-data v13, :array_0

    .line 2060
    invoke-static {v0, v8, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    iget-object v13, v0, Lorg/telegram/ui/SecretMediaViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget-object v14, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v15, v11, [F

    aput v12, v15, v2

    .line 2061
    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    iget-object v15, v0, Lorg/telegram/ui/SecretMediaViewer;->captionScrollView:Lorg/telegram/ui/PhotoViewer$CaptionScrollView;

    move/from16 v20, v9

    new-array v9, v11, [F

    aput v12, v9, v2

    .line 2062
    invoke-static {v15, v14, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    iget-object v15, v0, Lorg/telegram/ui/SecretMediaViewer;->navigationBar:Landroid/view/View;

    move/from16 v21, v12

    new-array v12, v11, [F

    aput v21, v12, v2

    .line 2063
    invoke-static {v15, v14, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    iget-object v15, v0, Lorg/telegram/ui/SecretMediaViewer;->seekbarContainer:Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;

    const/16 v22, 0x8

    iget-object v4, v15, Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;->SEEKBAR_ALPHA:Landroid/util/Property;

    move/from16 v23, v2

    new-array v2, v11, [F

    aput v21, v2, v23

    .line 2064
    invoke-static {v15, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v4, v0, Lorg/telegram/ui/SecretMediaViewer;->seekbarContainer:Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;

    new-array v15, v11, [F

    aput v21, v15, v23

    .line 2065
    invoke-static {v4, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v15, v0, Lorg/telegram/ui/SecretMediaViewer;->secretHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    new-array v3, v11, [F

    aput v21, v3, v23

    .line 2066
    invoke-static {v15, v14, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v14, v0, Lorg/telegram/ui/SecretMediaViewer;->VIDEO_CROSSFADE_ALPHA:Landroid/util/Property;

    new-array v15, v11, [F

    aput v21, v15, v23

    .line 2067
    invoke-static {v0, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v7, v6, v23

    aput-object v8, v6, v11

    aput-object v13, v6, v10

    aput-object v9, v6, v20

    aput-object v12, v6, v19

    aput-object v2, v6, v18

    aput-object v4, v6, v17

    aput-object v3, v6, v16

    aput-object v14, v6, v22

    .line 2058
    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    move/from16 v24, v10

    goto/16 :goto_6

    :cond_b
    move/from16 v23, v2

    move/from16 v20, v9

    move/from16 v21, v12

    const/16 v22, 0x8

    .line 2070
    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v11}, Lorg/telegram/messenger/ImageReceiver;->setManualAlphaAnimator(Z)V

    .line 2071
    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    iget-object v3, v0, Lorg/telegram/ui/SecretMediaViewer;->photoBackgroundDrawable:Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;

    sget-object v4, Lorg/telegram/ui/Components/AnimationProperties;->COLOR_DRAWABLE_ALPHA:Landroid/util/Property;

    filled-new-array/range {v23 .. v23}, [I

    move-result-object v5

    .line 2072
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/SecretMediaViewer;->ANIMATION_VALUE:Landroid/util/Property;

    new-array v5, v10, [F

    fill-array-data v5, :array_1

    .line 2073
    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/SecretMediaViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v11, [F

    aput v21, v8, v23

    .line 2074
    invoke-static {v5, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-object v8, v0, Lorg/telegram/ui/SecretMediaViewer;->captionScrollView:Lorg/telegram/ui/PhotoViewer$CaptionScrollView;

    new-array v9, v11, [F

    aput v21, v9, v23

    .line 2075
    invoke-static {v8, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    iget-object v9, v0, Lorg/telegram/ui/SecretMediaViewer;->navigationBar:Landroid/view/View;

    new-array v12, v11, [F

    aput v21, v12, v23

    .line 2076
    invoke-static {v9, v7, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    iget-object v12, v0, Lorg/telegram/ui/SecretMediaViewer;->seekbarContainer:Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;

    iget-object v13, v12, Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;->SEEKBAR_ALPHA:Landroid/util/Property;

    new-array v14, v11, [F

    aput v21, v14, v23

    .line 2077
    invoke-static {v12, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    iget-object v13, v0, Lorg/telegram/ui/SecretMediaViewer;->seekbarContainer:Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;

    new-array v14, v11, [F

    aput v21, v14, v23

    .line 2078
    invoke-static {v13, v7, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    iget-object v14, v0, Lorg/telegram/ui/SecretMediaViewer;->secretHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    new-array v15, v11, [F

    aput v21, v15, v23

    .line 2079
    invoke-static {v14, v7, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    iget-object v14, v0, Lorg/telegram/ui/SecretMediaViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    sget-object v15, Lorg/telegram/ui/Components/AnimationProperties;->IMAGE_RECEIVER_ALPHA:Landroid/util/Property;

    move/from16 v24, v10

    new-array v10, v11, [F

    aput v21, v10, v23

    .line 2080
    invoke-static {v14, v15, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v3, v6, v23

    aput-object v4, v6, v11

    aput-object v5, v6, v24

    aput-object v8, v6, v20

    aput-object v9, v6, v19

    aput-object v12, v6, v18

    aput-object v13, v6, v17

    aput-object v7, v6, v16

    aput-object v10, v6, v22

    .line 2071
    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2084
    :goto_6
    new-instance v2, Lorg/telegram/ui/SecretMediaViewer$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/SecretMediaViewer$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/SecretMediaViewer;Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V

    iput-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->photoAnimationEndRunnable:Ljava/lang/Runnable;

    .line 2092
    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2093
    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v3, 0xfa

    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2094
    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Lorg/telegram/ui/SecretMediaViewer$17;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/SecretMediaViewer$17;-><init>(Lorg/telegram/ui/SecretMediaViewer;Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/ui/SecretMediaViewer;->photoTransitionAnimationStartTime:J

    .line 2110
    iget-object v1, v0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    move/from16 v3, v24

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2111
    iget-object v1, v0, Lorg/telegram/ui/SecretMediaViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    const/4 v2, 0x0

    goto/16 :goto_7

    :cond_c
    move/from16 v20, v9

    move/from16 v21, v12

    const/16 v16, 0x7

    const/16 v17, 0x6

    const/16 v18, 0x5

    const/16 v19, 0x4

    const/16 v22, 0x8

    .line 2113
    invoke-direct {v0, v2, v11}, Lorg/telegram/ui/SecretMediaViewer;->showPlayButton(ZZ)V

    .line 2114
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2115
    iget-object v4, v0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v11, [F

    const v7, 0x3f666666    # 0.9f

    aput v7, v6, v2

    .line 2116
    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v8, v11, [F

    aput v7, v8, v2

    .line 2117
    invoke-static {v5, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/SecretMediaViewer;->photoBackgroundDrawable:Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;

    sget-object v7, Lorg/telegram/ui/Components/AnimationProperties;->COLOR_DRAWABLE_ALPHA:Landroid/util/Property;

    filled-new-array {v2}, [I

    move-result-object v8

    .line 2118
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/ui/SecretMediaViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v11, [F

    aput v21, v9, v2

    .line 2119
    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    iget-object v9, v0, Lorg/telegram/ui/SecretMediaViewer;->captionScrollView:Lorg/telegram/ui/PhotoViewer$CaptionScrollView;

    new-array v10, v11, [F

    aput v21, v10, v2

    .line 2120
    invoke-static {v9, v8, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    iget-object v10, v0, Lorg/telegram/ui/SecretMediaViewer;->navigationBar:Landroid/view/View;

    new-array v12, v11, [F

    aput v21, v12, v2

    .line 2121
    invoke-static {v10, v8, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    iget-object v12, v0, Lorg/telegram/ui/SecretMediaViewer;->seekbarContainer:Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;

    iget-object v13, v12, Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;->SEEKBAR_ALPHA:Landroid/util/Property;

    new-array v14, v11, [F

    aput v21, v14, v2

    .line 2122
    invoke-static {v12, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    iget-object v13, v0, Lorg/telegram/ui/SecretMediaViewer;->seekbarContainer:Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;

    new-array v14, v11, [F

    aput v21, v14, v2

    .line 2123
    invoke-static {v13, v8, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    move/from16 v13, v22

    new-array v13, v13, [Landroid/animation/Animator;

    aput-object v4, v13, v2

    aput-object v5, v13, v11

    const/4 v2, 0x2

    aput-object v6, v13, v2

    aput-object v7, v13, v20

    aput-object v9, v13, v19

    aput-object v10, v13, v18

    aput-object v12, v13, v17

    aput-object v8, v13, v16

    .line 2115
    invoke-virtual {v3, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2125
    iput v2, v0, Lorg/telegram/ui/SecretMediaViewer;->photoAnimationInProgress:I

    .line 2126
    new-instance v2, Lorg/telegram/ui/SecretMediaViewer$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/SecretMediaViewer$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/SecretMediaViewer;Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V

    iput-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->photoAnimationEndRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xc8

    .line 2137
    invoke-virtual {v3, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2138
    new-instance v1, Lorg/telegram/ui/SecretMediaViewer$18;

    invoke-direct {v1, v0}, Lorg/telegram/ui/SecretMediaViewer$18;-><init>(Lorg/telegram/ui/SecretMediaViewer;)V

    invoke-virtual {v3, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/ui/SecretMediaViewer;->photoTransitionAnimationStartTime:J

    .line 2148
    iget-object v1, v0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    const/4 v2, 0x0

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2149
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 2151
    :goto_7
    iget-object v1, v0, Lorg/telegram/ui/SecretMediaViewer;->onClose:Ljava/lang/Runnable;

    if-eqz v1, :cond_d

    .line 2152
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 2153
    iput-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->onClose:Ljava/lang/Runnable;

    :cond_d
    return v11

    :goto_8
    return v23

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public destroyPhotoViewer()V
    .locals 3

    .line 1708
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->onClose:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1709
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1710
    iput-object v1, p0, Lorg/telegram/ui/SecretMediaViewer;->onClose:Ljava/lang/Runnable;

    .line 1712
    :cond_0
    iget v0, p0, Lorg/telegram/ui/SecretMediaViewer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1713
    iget v0, p0, Lorg/telegram/ui/SecretMediaViewer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->updateMessageMedia:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1714
    iget v0, p0, Lorg/telegram/ui/SecretMediaViewer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didCreatedNewDeleteTask:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    const/4 v0, 0x0

    .line 1715
    iput-boolean v0, p0, Lorg/telegram/ui/SecretMediaViewer;->isVisible:Z

    .line 1716
    iput-object v1, p0, Lorg/telegram/ui/SecretMediaViewer;->currentProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    .line 1717
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->currentThumb:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    if-eqz v0, :cond_1

    .line 1718
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->release()V

    .line 1719
    iput-object v1, p0, Lorg/telegram/ui/SecretMediaViewer;->currentThumb:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    .line 1721
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/SecretMediaViewer;->releasePlayer()V

    .line 1722
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->windowView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3

    .line 1724
    :try_start_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1725
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->parentActivity:Landroid/app/Activity;

    const-string/jumbo v2, "window"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1726
    iget-object v2, p0, Lorg/telegram/ui/SecretMediaViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 1728
    :cond_2
    :goto_0
    iput-object v1, p0, Lorg/telegram/ui/SecretMediaViewer;->windowView:Landroid/widget/FrameLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1730
    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1733
    :cond_3
    :goto_2
    sput-object v1, Lorg/telegram/ui/SecretMediaViewer;->Instance:Lorg/telegram/ui/SecretMediaViewer;

    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 7

    .line 473
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, p2, :cond_4

    const/4 p1, 0x2

    .line 474
    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_2

    .line 478
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez p1, :cond_1

    goto/16 :goto_2

    .line 481
    :cond_1
    aget-object p1, p3, v1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const-wide/16 v2, 0x0

    cmp-long p1, p1, v2

    if-eqz p1, :cond_2

    goto/16 :goto_2

    .line 485
    :cond_2
    aget-object p1, p3, v0

    check-cast p1, Ljava/util/ArrayList;

    .line 486
    iget-object p2, p0, Lorg/telegram/ui/SecretMediaViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 487
    iget-boolean p1, p0, Lorg/telegram/ui/SecretMediaViewer;->isVideo:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lorg/telegram/ui/SecretMediaViewer;->videoWatchedOneTime:Z

    if-nez p1, :cond_3

    .line 488
    iput-boolean v1, p0, Lorg/telegram/ui/SecretMediaViewer;->closeVideoAfterWatch:Z

    return-void

    .line 490
    :cond_3
    invoke-virtual {p0, v1, v1}, Lorg/telegram/ui/SecretMediaViewer;->closePhoto(ZZ)Z

    move-result p1

    if-nez p1, :cond_b

    .line 491
    iput-boolean v1, p0, Lorg/telegram/ui/SecretMediaViewer;->closeAfterAnimation:Z

    return-void

    .line 495
    :cond_4
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didCreatedNewDeleteTask:I

    if-ne p1, p2, :cond_9

    .line 496
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz p1, :cond_b

    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->secretDeleteTimer:Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;

    if-nez p1, :cond_5

    goto/16 :goto_2

    .line 499
    :cond_5
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 500
    iget-wide v2, p0, Lorg/telegram/ui/SecretMediaViewer;->currentDialogId:J

    cmp-long p1, p1, v2

    if-eqz p1, :cond_6

    goto :goto_2

    .line 503
    :cond_6
    aget-object p1, p3, v1

    check-cast p1, Landroid/util/SparseArray;

    move p2, v0

    .line 504
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-ge p2, p3, :cond_b

    .line 505
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p3

    .line 506
    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    move v2, v0

    .line 507
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 508
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    .line 509
    iget-object v5, p0, Lorg/telegram/ui/SecretMediaViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    int-to-long v5, v5

    cmp-long v3, v5, v3

    if-nez v3, :cond_7

    .line 510
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iput p3, p1, Lorg/telegram/tgnet/TLRPC$Message;->destroyTime:I

    .line 511
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->secretDeleteTimer:Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 516
    :cond_9
    sget p2, Lorg/telegram/messenger/NotificationCenter;->updateMessageMedia:I

    if-ne p1, p2, :cond_b

    .line 517
    aget-object p1, p3, v0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Message;

    .line 518
    iget-object p2, p0, Lorg/telegram/ui/SecretMediaViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p2

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ne p2, p1, :cond_b

    .line 519
    iget-boolean p1, p0, Lorg/telegram/ui/SecretMediaViewer;->isVideo:Z

    if-eqz p1, :cond_a

    iget-boolean p1, p0, Lorg/telegram/ui/SecretMediaViewer;->videoWatchedOneTime:Z

    if-nez p1, :cond_a

    .line 520
    iput-boolean v1, p0, Lorg/telegram/ui/SecretMediaViewer;->closeVideoAfterWatch:Z

    return-void

    .line 522
    :cond_a
    invoke-virtual {p0, v1, v1}, Lorg/telegram/ui/SecretMediaViewer;->closePhoto(ZZ)Z

    move-result p1

    if-nez p1, :cond_b

    .line 523
    iput-boolean v1, p0, Lorg/telegram/ui/SecretMediaViewer;->closeAfterAnimation:Z

    :cond_b
    :goto_2
    return-void
.end method

.method public getAnimationValue()F
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 2442
    iget v0, p0, Lorg/telegram/ui/SecretMediaViewer;->animationValue:F

    return v0
.end method

.method public getCloseTime()J
    .locals 2

    .line 1968
    iget-wide v0, p0, Lorg/telegram/ui/SecretMediaViewer;->closeTime:J

    return-wide v0
.end method

.method public getCurrentMessageObject()Lorg/telegram/messenger/MessageObject;
    .locals 1

    .line 1972
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method public getOpenTime()J
    .locals 2

    .line 1964
    iget-wide v0, p0, Lorg/telegram/ui/SecretMediaViewer;->openTime:J

    return-wide v0
.end method

.method public getVideoCrossfadeAlpha()F
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1941
    iget v0, p0, Lorg/telegram/ui/SecretMediaViewer;->videoCrossfadeAlpha:F

    return v0
.end method

.method public isShowingImage(Lorg/telegram/messenger/MessageObject;)Z
    .locals 1

    .line 1644
    iget-boolean v0, p0, Lorg/telegram/ui/SecretMediaViewer;->isVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/SecretMediaViewer;->disableShowCheck:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isVisible()Z
    .locals 1

    .line 1700
    iget-boolean v0, p0, Lorg/telegram/ui/SecretMediaViewer;->isVisible:Z

    return v0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 2505
    iget v0, p0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v2, :cond_1

    iget v2, p0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_0

    iget v2, p0, Lorg/telegram/ui/SecretMediaViewer;->translationX:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_1

    :cond_0
    return v3

    .line 2508
    :cond_1
    iget-wide v5, p0, Lorg/telegram/ui/SecretMediaViewer;->animationStartTime:J

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-nez v2, :cond_8

    iget v2, p0, Lorg/telegram/ui/SecretMediaViewer;->photoAnimationInProgress:I

    if-eqz v2, :cond_2

    goto/16 :goto_5

    :cond_2
    cmpl-float v0, v0, v1

    const/4 v2, 0x1

    if-nez v0, :cond_7

    .line 2512
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0}, Lorg/telegram/ui/SecretMediaViewer;->getContainerViewWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-direct {p0}, Lorg/telegram/ui/SecretMediaViewer;->getContainerViewWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget v3, p0, Lorg/telegram/ui/SecretMediaViewer;->translationX:F

    sub-float/2addr v1, v3

    iget v3, p0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    const/high16 v4, 0x40400000    # 3.0f

    div-float v3, v4, v3

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    .line 2513
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0}, Lorg/telegram/ui/SecretMediaViewer;->getContainerViewHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v1, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0}, Lorg/telegram/ui/SecretMediaViewer;->getContainerViewHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr p1, v3

    iget v3, p0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    sub-float/2addr p1, v3

    iget v3, p0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    div-float v3, v4, v3

    mul-float/2addr p1, v3

    sub-float/2addr v1, p1

    .line 2514
    invoke-direct {p0, v4}, Lorg/telegram/ui/SecretMediaViewer;->updateMinMax(F)V

    .line 2515
    iget p1, p0, Lorg/telegram/ui/SecretMediaViewer;->minX:F

    cmpg-float v3, v0, p1

    if-gez v3, :cond_3

    :goto_0
    move v0, p1

    goto :goto_1

    .line 2517
    :cond_3
    iget p1, p0, Lorg/telegram/ui/SecretMediaViewer;->maxX:F

    cmpl-float v3, v0, p1

    if-lez v3, :cond_4

    goto :goto_0

    .line 2520
    :cond_4
    :goto_1
    iget p1, p0, Lorg/telegram/ui/SecretMediaViewer;->minY:F

    cmpg-float v3, v1, p1

    if-gez v3, :cond_5

    :goto_2
    move v1, p1

    goto :goto_3

    .line 2522
    :cond_5
    iget p1, p0, Lorg/telegram/ui/SecretMediaViewer;->maxY:F

    cmpl-float v3, v1, p1

    if-lez v3, :cond_6

    goto :goto_2

    .line 2525
    :cond_6
    :goto_3
    invoke-direct {p0, v4, v0, v1, v2}, Lorg/telegram/ui/SecretMediaViewer;->animateTo(FFFZ)V

    goto :goto_4

    .line 2527
    :cond_7
    invoke-direct {p0, v1, v4, v4, v2}, Lorg/telegram/ui/SecretMediaViewer;->animateTo(FFFZ)V

    .line 2529
    :goto_4
    iput-boolean v2, p0, Lorg/telegram/ui/SecretMediaViewer;->doubleTap:Z

    return v2

    :cond_8
    :goto_5
    return v3
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9

    .line 2472
    iget p1, p0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_0

    .line 2473
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Scroller;->abortAnimation()V

    .line 2474
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    iget p1, p0, Lorg/telegram/ui/SecretMediaViewer;->translationX:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget p1, p0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget p1, p0, Lorg/telegram/ui/SecretMediaViewer;->minX:F

    float-to-int v5, p1

    iget p1, p0, Lorg/telegram/ui/SecretMediaViewer;->maxX:F

    float-to-int v6, p1

    iget p1, p0, Lorg/telegram/ui/SecretMediaViewer;->minY:F

    float-to-int v7, p1

    iget p1, p0, Lorg/telegram/ui/SecretMediaViewer;->maxY:F

    float-to-int v8, p1

    invoke-virtual/range {v0 .. v8}, Lorg/telegram/ui/Components/Scroller;->fling(IIIIIIII)V

    .line 2475
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 2482
    iget-boolean v0, p0, Lorg/telegram/ui/SecretMediaViewer;->discardTap:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2485
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/SecretMediaViewer;->isActionBarVisible:Z

    if-eqz v0, :cond_2

    .line 2486
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/SecretMediaViewer;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_2

    .line 2487
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/SecretMediaViewer;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_2

    .line 2488
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/SecretMediaViewer;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/SecretMediaViewer;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_2

    .line 2489
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/SecretMediaViewer;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_2

    .line 2491
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->getPlayWhenReady()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/VideoPlayer;->setPlayWhenReady(Z)V

    .line 2492
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->getPlayWhenReady()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2493
    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/SecretMediaViewer;->toggleActionBar(ZZ)V

    goto :goto_0

    .line 2495
    :cond_1
    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/SecretMediaViewer;->showPlayButton(ZZ)V

    goto :goto_0

    .line 2498
    :cond_2
    iget-boolean p1, p0, Lorg/telegram/ui/SecretMediaViewer;->isActionBarVisible:Z

    xor-int/2addr p1, v1

    invoke-direct {p0, p1, v1}, Lorg/telegram/ui/SecretMediaViewer;->toggleActionBar(ZZ)V

    :goto_0
    return v1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public openMedia(Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 19

    move-object/from16 v1, p0

    .line 1383
    const-string/jumbo v11, "window"

    iget-object v0, v1, Lorg/telegram/ui/SecretMediaViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_17

    if-eqz p1, :cond_17

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->needDrawBluredPreview()Z

    move-result v0

    if-eqz v0, :cond_17

    if-nez p2, :cond_0

    goto/16 :goto_e

    :cond_0
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v3, p1

    move-object/from16 v2, p2

    .line 1386
    invoke-interface/range {v2 .. v7}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->getPlaceForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;IZZ)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    move-result-object v12

    move-object v9, v3

    if-nez v12, :cond_1

    goto/16 :goto_e

    .line 1393
    :cond_1
    iget-object v0, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    const v3, 0x7fffffff

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-ne v0, v3, :cond_2

    move v0, v13

    goto :goto_0

    :cond_2
    move v0, v14

    :goto_0
    iput-boolean v0, v1, Lorg/telegram/ui/SecretMediaViewer;->ignoreDelete:Z

    move-object/from16 v0, p4

    .line 1394
    iput-object v0, v1, Lorg/telegram/ui/SecretMediaViewer;->onClose:Ljava/lang/Runnable;

    .line 1396
    iput-object v2, v1, Lorg/telegram/ui/SecretMediaViewer;->currentProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    .line 1397
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lorg/telegram/ui/SecretMediaViewer;->openTime:J

    const-wide/16 v2, 0x0

    .line 1398
    iput-wide v2, v1, Lorg/telegram/ui/SecretMediaViewer;->closeTime:J

    .line 1399
    iput-boolean v13, v1, Lorg/telegram/ui/SecretMediaViewer;->isActionBarVisible:Z

    .line 1400
    iput-boolean v13, v1, Lorg/telegram/ui/SecretMediaViewer;->isPhotoVisible:Z

    .line 1401
    iput-boolean v14, v1, Lorg/telegram/ui/SecretMediaViewer;->draggingDown:Z

    .line 1402
    iget-object v0, v1, Lorg/telegram/ui/SecretMediaViewer;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    const/4 v15, 0x4

    if-eqz v0, :cond_3

    .line 1403
    invoke-virtual {v0, v15}, Landroid/view/View;->setVisibility(I)V

    .line 1405
    :cond_3
    invoke-direct {v1}, Lorg/telegram/ui/SecretMediaViewer;->releasePlayer()V

    const/4 v2, 0x0

    .line 1407
    iput v2, v1, Lorg/telegram/ui/SecretMediaViewer;->pinchStartDistance:F

    const/high16 v3, 0x3f800000    # 1.0f

    .line 1408
    iput v3, v1, Lorg/telegram/ui/SecretMediaViewer;->pinchStartScale:F

    .line 1409
    iput v2, v1, Lorg/telegram/ui/SecretMediaViewer;->pinchCenterX:F

    .line 1410
    iput v2, v1, Lorg/telegram/ui/SecretMediaViewer;->pinchCenterY:F

    .line 1411
    iput v2, v1, Lorg/telegram/ui/SecretMediaViewer;->pinchStartX:F

    .line 1412
    iput v2, v1, Lorg/telegram/ui/SecretMediaViewer;->pinchStartY:F

    .line 1413
    iput v2, v1, Lorg/telegram/ui/SecretMediaViewer;->moveStartX:F

    .line 1414
    iput v2, v1, Lorg/telegram/ui/SecretMediaViewer;->moveStartY:F

    .line 1415
    iput-boolean v14, v1, Lorg/telegram/ui/SecretMediaViewer;->zooming:Z

    .line 1416
    iput-boolean v14, v1, Lorg/telegram/ui/SecretMediaViewer;->moving:Z

    .line 1417
    iput-boolean v14, v1, Lorg/telegram/ui/SecretMediaViewer;->doubleTap:Z

    .line 1418
    iput-boolean v14, v1, Lorg/telegram/ui/SecretMediaViewer;->invalidCoords:Z

    .line 1419
    iput-boolean v13, v1, Lorg/telegram/ui/SecretMediaViewer;->canDragDown:Z

    .line 1420
    iget v0, v1, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    invoke-direct {v1, v0}, Lorg/telegram/ui/SecretMediaViewer;->updateMinMax(F)V

    .line 1421
    iget-object v0, v1, Lorg/telegram/ui/SecretMediaViewer;->photoBackgroundDrawable:Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;

    invoke-virtual {v0, v14}, Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;->setAlpha(I)V

    .line 1422
    iget-object v0, v1, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1423
    iget-object v0, v1, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    .line 1424
    iget-object v0, v1, Lorg/telegram/ui/SecretMediaViewer;->secretDeleteTimer:Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1425
    iput-boolean v14, v1, Lorg/telegram/ui/SecretMediaViewer;->isVideo:Z

    .line 1426
    iput-boolean v14, v1, Lorg/telegram/ui/SecretMediaViewer;->videoWatchedOneTime:Z

    .line 1427
    iput-boolean v14, v1, Lorg/telegram/ui/SecretMediaViewer;->closeVideoAfterWatch:Z

    .line 1428
    iput-boolean v13, v1, Lorg/telegram/ui/SecretMediaViewer;->disableShowCheck:Z

    .line 1429
    iget-object v0, v1, Lorg/telegram/ui/SecretMediaViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v14}, Lorg/telegram/messenger/ImageReceiver;->setManualAlphaAnimator(Z)V

    .line 1430
    iput v14, v1, Lorg/telegram/ui/SecretMediaViewer;->videoWidth:I

    .line 1431
    iput v14, v1, Lorg/telegram/ui/SecretMediaViewer;->videoHeight:I

    .line 1433
    iget-object v0, v12, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getDrawRegion()Landroid/graphics/RectF;

    move-result-object v0

    .line 1434
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 1435
    iget v0, v4, Landroid/graphics/RectF;->left:F

    iget-object v5, v12, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, v4, Landroid/graphics/RectF;->left:F

    .line 1436
    iget v0, v4, Landroid/graphics/RectF;->top:F

    iget-object v5, v12, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, v4, Landroid/graphics/RectF;->top:F

    .line 1437
    iget v0, v4, Landroid/graphics/RectF;->right:F

    iget-object v5, v12, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageX2()F

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, v4, Landroid/graphics/RectF;->right:F

    .line 1438
    iget v0, v4, Landroid/graphics/RectF;->bottom:F

    iget-object v5, v12, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageY2()F

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, v4, Landroid/graphics/RectF;->bottom:F

    .line 1440
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v0

    .line 1441
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v5

    .line 1442
    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v7, v6, Landroid/graphics/Point;->x:I

    .line 1443
    iget v6, v6, Landroid/graphics/Point;->y:I

    sget v8, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v6, v8

    int-to-float v8, v7

    div-float v8, v0, v8

    int-to-float v10, v6

    div-float v10, v5, v10

    .line 1444
    invoke-static {v8, v10}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iput v8, v1, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    .line 1446
    iget-object v8, v12, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->radius:[I

    const/4 v10, 0x0

    if-eqz v8, :cond_4

    .line 1447
    array-length v8, v8

    new-array v8, v8, [I

    iput-object v8, v1, Lorg/telegram/ui/SecretMediaViewer;->animateFromRadius:[I

    move v8, v14

    move/from16 p2, v15

    .line 1448
    :goto_1
    iget-object v15, v12, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->radius:[I

    array-length v14, v15

    if-ge v8, v14, :cond_5

    .line 1449
    iget-object v14, v1, Lorg/telegram/ui/SecretMediaViewer;->animateFromRadius:[I

    aget v15, v15, v8

    aput v15, v14, v8

    add-int/lit8 v8, v8, 0x1

    const/4 v14, 0x0

    goto :goto_1

    :cond_4
    move/from16 p2, v15

    .line 1452
    iput-object v10, v1, Lorg/telegram/ui/SecretMediaViewer;->animateFromRadius:[I

    .line 1454
    :cond_5
    iget v8, v12, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewX:I

    int-to-float v8, v8

    iget v14, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v8, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v0, v15

    add-float/2addr v8, v0

    move/from16 p4, v15

    const/4 v15, 0x2

    div-int/2addr v7, v15

    int-to-float v0, v7

    sub-float/2addr v8, v0

    iput v8, v1, Lorg/telegram/ui/SecretMediaViewer;->translationX:F

    .line 1455
    iget v0, v12, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    int-to-float v0, v0

    iget v7, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v7

    div-float v7, v5, p4

    add-float/2addr v0, v7

    div-int/2addr v6, v15

    int-to-float v6, v6

    sub-float/2addr v0, v6

    iput v0, v1, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    .line 1456
    iget-object v0, v12, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v0

    sub-float/2addr v14, v0

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, v1, Lorg/telegram/ui/SecretMediaViewer;->clipHorizontal:F

    .line 1457
    iget v0, v4, Landroid/graphics/RectF;->top:F

    iget-object v6, v12, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v6

    sub-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 1458
    new-array v6, v15, [I

    .line 1459
    iget-object v7, v12, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1460
    aget v7, v6, v13

    int-to-float v7, v7

    iget v8, v12, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    int-to-float v8, v8

    iget v14, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v8, v14

    sub-float/2addr v7, v8

    iget v8, v12, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->clipTopAddition:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    iput v7, v1, Lorg/telegram/ui/SecretMediaViewer;->clipTop:F

    int-to-float v0, v0

    .line 1461
    invoke-static {v7, v0}, Ljava/lang/Math;->max(FF)F

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, v1, Lorg/telegram/ui/SecretMediaViewer;->clipTop:F

    .line 1462
    iget v7, v12, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    int-to-float v7, v7

    iget v4, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v7, v4

    float-to-int v4, v5

    int-to-float v4, v4

    add-float/2addr v7, v4

    aget v4, v6, v13

    iget-object v5, v12, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    sub-float/2addr v7, v4

    iget v4, v12, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->clipBottomAddition:I

    int-to-float v4, v4

    add-float/2addr v7, v4

    iput v7, v1, Lorg/telegram/ui/SecretMediaViewer;->clipBottom:F

    .line 1463
    invoke-static {v7, v0}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, v1, Lorg/telegram/ui/SecretMediaViewer;->clipBottom:F

    .line 1465
    iput v2, v1, Lorg/telegram/ui/SecretMediaViewer;->clipTopOrigin:F

    .line 1466
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, v1, Lorg/telegram/ui/SecretMediaViewer;->clipTopOrigin:F

    .line 1467
    iput v2, v1, Lorg/telegram/ui/SecretMediaViewer;->clipBottomOrigin:F

    .line 1468
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, v1, Lorg/telegram/ui/SecretMediaViewer;->clipBottomOrigin:F

    .line 1470
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Lorg/telegram/ui/SecretMediaViewer;->animationStartTime:J

    .line 1471
    iput v2, v1, Lorg/telegram/ui/SecretMediaViewer;->animateToX:F

    .line 1472
    iput v2, v1, Lorg/telegram/ui/SecretMediaViewer;->animateToY:F

    .line 1473
    iput v2, v1, Lorg/telegram/ui/SecretMediaViewer;->animateToClipBottom:F

    .line 1474
    iput v2, v1, Lorg/telegram/ui/SecretMediaViewer;->animateToClipBottomOrigin:F

    .line 1475
    iput v2, v1, Lorg/telegram/ui/SecretMediaViewer;->animateToClipHorizontal:F

    .line 1476
    iput v2, v1, Lorg/telegram/ui/SecretMediaViewer;->animateToClipTop:F

    .line 1477
    iput v2, v1, Lorg/telegram/ui/SecretMediaViewer;->animateToClipTopOrigin:F

    .line 1478
    iput v3, v1, Lorg/telegram/ui/SecretMediaViewer;->animateToScale:F

    .line 1479
    iput-boolean v13, v1, Lorg/telegram/ui/SecretMediaViewer;->animateToRadius:Z

    .line 1480
    iput-boolean v13, v1, Lorg/telegram/ui/SecretMediaViewer;->zoomAnimation:Z

    .line 1482
    iget v0, v1, Lorg/telegram/ui/SecretMediaViewer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v4, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1483
    iget v0, v1, Lorg/telegram/ui/SecretMediaViewer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v4, Lorg/telegram/messenger/NotificationCenter;->updateMessageMedia:I

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1484
    iget v0, v1, Lorg/telegram/ui/SecretMediaViewer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v4, Lorg/telegram/messenger/NotificationCenter;->didCreatedNewDeleteTask:I

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1485
    iget-object v0, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v4

    iput-wide v4, v1, Lorg/telegram/ui/SecretMediaViewer;->currentDialogId:J

    .line 1486
    iput-object v9, v1, Lorg/telegram/ui/SecretMediaViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 1487
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    .line 1488
    iget-object v4, v1, Lorg/telegram/ui/SecretMediaViewer;->currentThumb:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    if-eqz v4, :cond_6

    .line 1489
    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->release()V

    .line 1490
    iput-object v10, v1, Lorg/telegram/ui/SecretMediaViewer;->currentThumb:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    .line 1492
    :cond_6
    iget-object v4, v12, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getThumbBitmapSafe()Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    move-result-object v4

    iput-object v4, v1, Lorg/telegram/ui/SecretMediaViewer;->currentThumb:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    .line 1493
    iget-object v4, v1, Lorg/telegram/ui/SecretMediaViewer;->seekbarContainer:Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    if-eqz v0, :cond_f

    const/4 v4, 0x0

    .line 1495
    :goto_2
    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_8

    .line 1496
    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 1497
    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v6, :cond_7

    .line 1498
    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    .line 1499
    iget v4, v5, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    iput v4, v1, Lorg/telegram/ui/SecretMediaViewer;->videoWidth:I

    .line 1500
    iget v4, v5, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I

    iput v4, v1, Lorg/telegram/ui/SecretMediaViewer;->videoHeight:I

    goto :goto_3

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1504
    :cond_8
    :goto_3
    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1505
    iget-object v4, v1, Lorg/telegram/ui/SecretMediaViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/messenger/R$string;->DisappearingGif:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1507
    iget-object v4, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v4, :cond_9

    iget-boolean v5, v9, Lorg/telegram/messenger/MessageObject;->attachPathExists:Z

    if-eqz v5, :cond_9

    .line 1508
    invoke-static {v4}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v0

    :goto_4
    move v4, v2

    goto :goto_5

    .line 1510
    :cond_9
    invoke-static {v0}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v0

    goto :goto_4

    .line 1512
    :goto_5
    iget-object v2, v1, Lorg/telegram/ui/SecretMediaViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v5, v1, Lorg/telegram/ui/SecretMediaViewer;->currentThumb:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    if-eqz v5, :cond_a

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, v1, Lorg/telegram/ui/SecretMediaViewer;->currentThumb:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    iget-object v6, v6, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_6

    :cond_a
    move-object v5, v10

    :goto_6
    const/4 v8, 0x0

    move-object v6, v10

    const/4 v10, 0x1

    move v7, v4

    const/4 v4, 0x0

    move-object v14, v6

    move/from16 v17, v7

    const-wide/16 v6, -0x1

    move/from16 v18, v3

    move-object v3, v0

    invoke-virtual/range {v2 .. v10}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_a

    :cond_b
    move/from16 v17, v2

    move/from16 v18, v3

    move-object v14, v10

    .line 1514
    iput v13, v1, Lorg/telegram/ui/SecretMediaViewer;->playerRetryPlayCount:I

    .line 1515
    iget-object v0, v1, Lorg/telegram/ui/SecretMediaViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/messenger/R$string;->DisappearingVideo:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1516
    new-instance v0, Ljava/io/File;

    iget-object v2, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1517
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1518
    invoke-direct {v1, v0}, Lorg/telegram/ui/SecretMediaViewer;->preparePlayer(Ljava/io/File;)V

    goto :goto_7

    .line 1520
    :cond_c
    iget v0, v1, Lorg/telegram/ui/SecretMediaViewer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v2, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v0

    .line 1521
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".enc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1522
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_d

    move-object v0, v2

    .line 1525
    :cond_d
    invoke-direct {v1, v0}, Lorg/telegram/ui/SecretMediaViewer;->preparePlayer(Ljava/io/File;)V

    .line 1527
    :goto_7
    iput-boolean v13, v1, Lorg/telegram/ui/SecretMediaViewer;->isVideo:Z

    .line 1528
    iget-object v0, v1, Lorg/telegram/ui/SecretMediaViewer;->seekbarContainer:Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1529
    iget-object v2, v1, Lorg/telegram/ui/SecretMediaViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v0, v1, Lorg/telegram/ui/SecretMediaViewer;->currentThumb:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    if-eqz v0, :cond_e

    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, v1, Lorg/telegram/ui/SecretMediaViewer;->currentThumb:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    iget-object v0, v0, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v10, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object v5, v10

    goto :goto_8

    :cond_e
    move-object v5, v14

    :goto_8
    const/4 v8, 0x0

    const/4 v10, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v6, -0x1

    invoke-virtual/range {v2 .. v10}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_a

    :cond_f
    move/from16 v17, v2

    move/from16 v18, v3

    move-object v14, v10

    .line 1532
    iget-object v0, v1, Lorg/telegram/ui/SecretMediaViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/messenger/R$string;->DisappearingPhoto:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1533
    iget-object v0, v9, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v2

    invoke-static {v0, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    .line 1534
    iget-object v2, v1, Lorg/telegram/ui/SecretMediaViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v3, v9, Lorg/telegram/messenger/MessageObject;->photoThumbsObject:Lorg/telegram/tgnet/TLObject;

    invoke-static {v0, v3}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    iget-object v4, v1, Lorg/telegram/ui/SecretMediaViewer;->currentThumb:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    if-eqz v4, :cond_10

    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, v1, Lorg/telegram/ui/SecretMediaViewer;->currentThumb:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    iget-object v4, v4, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v10, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object v5, v10

    goto :goto_9

    :cond_10
    move-object v5, v14

    :goto_9
    const/4 v8, 0x0

    const/4 v10, 0x2

    const/4 v4, 0x0

    const-wide/16 v6, -0x1

    invoke-virtual/range {v2 .. v10}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    if-eqz v0, :cond_11

    .line 1537
    iget v2, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v2, v1, Lorg/telegram/ui/SecretMediaViewer;->videoWidth:I

    .line 1538
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v0, v1, Lorg/telegram/ui/SecretMediaViewer;->videoHeight:I

    .line 1541
    :cond_11
    :goto_a
    const-string v0, ""

    const/4 v2, 0x0

    invoke-direct {v1, v9, v0, v2, v2}, Lorg/telegram/ui/SecretMediaViewer;->setCurrentCaption(Lorg/telegram/messenger/MessageObject;Ljava/lang/CharSequence;ZZ)V

    .line 1542
    iget-object v0, v9, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    invoke-direct {v1, v9, v0, v2, v13}, Lorg/telegram/ui/SecretMediaViewer;->setCurrentCaption(Lorg/telegram/messenger/MessageObject;Ljava/lang/CharSequence;ZZ)V

    .line 1543
    invoke-direct {v1, v13, v2}, Lorg/telegram/ui/SecretMediaViewer;->toggleActionBar(ZZ)V

    .line 1544
    invoke-direct {v1, v2, v2}, Lorg/telegram/ui/SecretMediaViewer;->showPlayButton(ZZ)V

    .line 1545
    iget-object v0, v1, Lorg/telegram/ui/SecretMediaViewer;->playButtonDrawable:Lorg/telegram/ui/Components/PlayPauseDrawable;

    invoke-virtual {v0, v13}, Lorg/telegram/ui/Components/PlayPauseDrawable;->setPause(Z)V

    .line 1547
    iget-boolean v0, v1, Lorg/telegram/ui/SecretMediaViewer;->ignoreDelete:Z

    if-eqz v0, :cond_12

    .line 1548
    iget-object v0, v1, Lorg/telegram/ui/SecretMediaViewer;->secretDeleteTimer:Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;

    invoke-static {v0}, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->-$$Nest$msetOnce(Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;)V

    .line 1549
    iget-object v0, v1, Lorg/telegram/ui/SecretMediaViewer;->secretDeleteTimer:Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;

    new-instance v2, Lorg/telegram/ui/SecretMediaViewer$$ExternalSyntheticLambda7;

    invoke-direct {v2, v1}, Lorg/telegram/ui/SecretMediaViewer$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/SecretMediaViewer;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_b

    .line 1560
    :cond_12
    iget-object v0, v1, Lorg/telegram/ui/SecretMediaViewer;->secretDeleteTimer:Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;

    invoke-virtual {v0, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1563
    :goto_b
    :try_start_0
    iget-object v0, v1, Lorg/telegram/ui/SecretMediaViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1564
    iget-object v0, v1, Lorg/telegram/ui/SecretMediaViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v0, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1565
    iget-object v2, v1, Lorg/telegram/ui/SecretMediaViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-interface {v0, v2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_c

    :catch_0
    move-exception v0

    .line 1568
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1571
    :cond_13
    :goto_c
    iget-object v0, v1, Lorg/telegram/ui/SecretMediaViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v0, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1572
    iget-object v2, v1, Lorg/telegram/ui/SecretMediaViewer;->windowView:Landroid/widget/FrameLayout;

    iget-object v3, v1, Lorg/telegram/ui/SecretMediaViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v2, v3}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1573
    iget-object v0, v1, Lorg/telegram/ui/SecretMediaViewer;->secretDeleteTimer:Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1574
    iput-boolean v13, v1, Lorg/telegram/ui/SecretMediaViewer;->isVisible:Z

    .line 1576
    iget-object v0, v1, Lorg/telegram/ui/SecretMediaViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1577
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getLightNavigationBar(Landroid/view/Window;)Z

    move-result v2

    iput-boolean v2, v1, Lorg/telegram/ui/SecretMediaViewer;->wasLightNavigationBar:Z

    .line 1578
    iget-object v2, v1, Lorg/telegram/ui/SecretMediaViewer;->parentActivity:Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->setLightNavigationBar(Landroid/app/Activity;Z)V

    .line 1579
    iget-object v2, v1, Lorg/telegram/ui/SecretMediaViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->setLightNavigationBar(Landroid/view/View;Z)V

    .line 1580
    iget-object v2, v1, Lorg/telegram/ui/SecretMediaViewer;->parentActivity:Landroid/app/Activity;

    instance-of v3, v2, Lorg/telegram/ui/LaunchActivity;

    const/high16 v4, -0x1000000

    if-eqz v3, :cond_14

    .line 1581
    check-cast v2, Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/LaunchActivity;->getNavigationBarColor()I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/SecretMediaViewer;->wasNavigationBarColor:I

    .line 1582
    iget-object v0, v1, Lorg/telegram/ui/SecretMediaViewer;->parentActivity:Landroid/app/Activity;

    check-cast v0, Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/LaunchActivity;->animateNavigationBarColor(I)V

    goto :goto_d

    .line 1584
    :cond_14
    invoke-virtual {v0}, Landroid/view/Window;->getNavigationBarColor()I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/SecretMediaViewer;->wasNavigationBarColor:I

    .line 1585
    iget-object v0, v1, Lorg/telegram/ui/SecretMediaViewer;->parentActivity:Landroid/app/Activity;

    invoke-static {v0, v4}, Lorg/telegram/messenger/AndroidUtilities;->setNavigationBarColor(Landroid/app/Activity;I)V

    .line 1588
    :goto_d
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/SecretMediaViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    .line 1589
    iget-object v2, v1, Lorg/telegram/ui/SecretMediaViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v15, [F

    fill-array-data v4, :array_0

    .line 1590
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v4, v1, Lorg/telegram/ui/SecretMediaViewer;->captionScrollView:Lorg/telegram/ui/PhotoViewer$CaptionScrollView;

    new-array v5, v15, [F

    fill-array-data v5, :array_1

    .line 1591
    invoke-static {v4, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v5, v1, Lorg/telegram/ui/SecretMediaViewer;->secretHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    new-array v6, v15, [F

    fill-array-data v6, :array_2

    .line 1592
    invoke-static {v5, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-object v6, v1, Lorg/telegram/ui/SecretMediaViewer;->photoBackgroundDrawable:Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;

    sget-object v7, Lorg/telegram/ui/Components/AnimationProperties;->COLOR_DRAWABLE_ALPHA:Landroid/util/Property;

    const/16 v8, 0xff

    const/4 v10, 0x0

    filled-new-array {v10, v8}, [I

    move-result-object v8

    .line 1593
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iget-object v7, v1, Lorg/telegram/ui/SecretMediaViewer;->ANIMATION_VALUE:Landroid/util/Property;

    new-array v8, v15, [F

    fill-array-data v8, :array_3

    .line 1594
    invoke-static {v1, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    iget-object v8, v1, Lorg/telegram/ui/SecretMediaViewer;->seekbarContainer:Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;

    iget-object v11, v8, Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;->SEEKBAR_ALPHA:Landroid/util/Property;

    move/from16 v16, v10

    new-array v10, v13, [F

    aput v18, v10, v16

    .line 1595
    invoke-static {v8, v11, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    iget-object v10, v1, Lorg/telegram/ui/SecretMediaViewer;->seekbarContainer:Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;

    .line 1596
    iget-boolean v11, v1, Lorg/telegram/ui/SecretMediaViewer;->isVideo:Z

    if-eqz v11, :cond_15

    move/from16 v17, v18

    :cond_15
    new-array v11, v13, [F

    aput v17, v11, v16

    invoke-static {v10, v3, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const/4 v10, 0x7

    new-array v10, v10, [Landroid/animation/Animator;

    aput-object v2, v10, v16

    aput-object v4, v10, v13

    aput-object v5, v10, v15

    const/4 v2, 0x3

    aput-object v6, v10, v2

    aput-object v7, v10, p2

    const/4 v4, 0x5

    aput-object v8, v10, v4

    const/4 v4, 0x6

    aput-object v3, v10, v4

    .line 1589
    invoke-virtual {v0, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1598
    iput v2, v1, Lorg/telegram/ui/SecretMediaViewer;->photoAnimationInProgress:I

    .line 1600
    new-instance v0, Lorg/telegram/ui/SecretMediaViewer$$ExternalSyntheticLambda8;

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2, v9}, Lorg/telegram/ui/SecretMediaViewer$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/SecretMediaViewer;Ljava/lang/Runnable;Lorg/telegram/messenger/MessageObject;)V

    iput-object v0, v1, Lorg/telegram/ui/SecretMediaViewer;->photoAnimationEndRunnable:Ljava/lang/Runnable;

    .line 1620
    iget-object v0, v1, Lorg/telegram/ui/SecretMediaViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1621
    iget-object v0, v1, Lorg/telegram/ui/SecretMediaViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    new-instance v2, Lorg/telegram/ui/SecretMediaViewer$14;

    invoke-direct {v2, v1}, Lorg/telegram/ui/SecretMediaViewer$14;-><init>(Lorg/telegram/ui/SecretMediaViewer;)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1630
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lorg/telegram/ui/SecretMediaViewer;->photoTransitionAnimationStartTime:J

    .line 1631
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    if-nez v0, :cond_16

    .line 1632
    iget-object v0, v1, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {v0, v15, v14}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1634
    :cond_16
    iget-object v0, v1, Lorg/telegram/ui/SecretMediaViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1635
    iget-object v0, v1, Lorg/telegram/ui/SecretMediaViewer;->photoBackgroundDrawable:Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;->-$$Nest$fputframe(Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;I)V

    .line 1636
    iget-object v0, v1, Lorg/telegram/ui/SecretMediaViewer;->photoBackgroundDrawable:Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;

    new-instance v2, Lorg/telegram/ui/SecretMediaViewer$$ExternalSyntheticLambda9;

    invoke-direct {v2, v1, v12}, Lorg/telegram/ui/SecretMediaViewer$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/SecretMediaViewer;Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V

    invoke-static {v0, v2}, Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;->-$$Nest$fputdrawRunnable(Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;Ljava/lang/Runnable;)V

    .line 1640
    iget-object v0, v1, Lorg/telegram/ui/SecretMediaViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_17
    :goto_e
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setAnimationValue(F)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 2436
    iput p1, p0, Lorg/telegram/ui/SecretMediaViewer;->animationValue:F

    .line 2437
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOnClose(Ljava/lang/Runnable;)V
    .locals 0

    .line 1704
    iput-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->onClose:Ljava/lang/Runnable;

    return-void
.end method

.method public setParentActivity(Landroid/app/Activity;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 732
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v2, v0, Lorg/telegram/ui/SecretMediaViewer;->currentAccount:I

    .line 733
    iget-object v3, v0, Lorg/telegram/ui/SecretMediaViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/ImageReceiver;->setCurrentAccount(I)V

    .line 734
    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->parentActivity:Landroid/app/Activity;

    if-ne v2, v1, :cond_0

    return-void

    .line 737
    :cond_0
    iput-object v1, v0, Lorg/telegram/ui/SecretMediaViewer;->parentActivity:Landroid/app/Activity;

    .line 739
    new-instance v2, Lorg/telegram/ui/Components/Scroller;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    .line 741
    new-instance v2, Lorg/telegram/ui/SecretMediaViewer$3;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/SecretMediaViewer$3;-><init>(Lorg/telegram/ui/SecretMediaViewer;Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->windowView:Landroid/widget/FrameLayout;

    .line 786
    iget-object v3, v0, Lorg/telegram/ui/SecretMediaViewer;->photoBackgroundDrawable:Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 787
    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->windowView:Landroid/widget/FrameLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 788
    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 789
    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->windowView:Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 790
    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 792
    new-instance v2, Lorg/telegram/ui/SecretMediaViewer$4;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/SecretMediaViewer$4;-><init>(Lorg/telegram/ui/SecretMediaViewer;Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    .line 832
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->navigationBar:Landroid/view/View;

    const/high16 v5, 0x7f000000

    .line 833
    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 834
    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    iget-object v6, v0, Lorg/telegram/ui/SecretMediaViewer;->navigationBar:Landroid/view/View;

    const/4 v7, -0x2

    const/4 v8, -0x1

    const/16 v9, 0x50

    invoke-static {v8, v7, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 835
    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {v2, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 836
    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->windowView:Landroid/widget/FrameLayout;

    iget-object v6, v0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 837
    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 838
    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 839
    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v6, 0x33

    .line 840
    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 841
    iget-object v6, v0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 842
    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {v2, v3}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 843
    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    new-instance v6, Lorg/telegram/ui/SecretMediaViewer$$ExternalSyntheticLambda5;

    invoke-direct {v6, v0}, Lorg/telegram/ui/SecretMediaViewer$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/SecretMediaViewer;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 855
    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    const/16 v6, 0x700

    invoke-virtual {v2, v6}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 857
    new-instance v2, Landroid/view/GestureDetector;

    iget-object v6, v0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, v6, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->gestureDetector:Landroid/view/GestureDetector;

    .line 858
    invoke-virtual {v2, v0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 860
    new-instance v2, Lorg/telegram/ui/SecretMediaViewer$5;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/SecretMediaViewer$5;-><init>(Lorg/telegram/ui/SecretMediaViewer;Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 868
    invoke-virtual {v2, v8}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 869
    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2, v8}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitleColor(I)V

    .line 870
    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 871
    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 872
    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v6, 0x40ffffff    # 7.9999995f

    invoke-virtual {v2, v6, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 873
    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2, v8, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 874
    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v2, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 875
    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/high16 v6, 0x428c0000    # 70.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v2, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleRightMargin(I)V

    .line 876
    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    iget-object v6, v0, Lorg/telegram/ui/SecretMediaViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/high16 v7, -0x40000000    # -2.0f

    invoke-static {v8, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 877
    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v6, Lorg/telegram/ui/SecretMediaViewer$6;

    invoke-direct {v6, v0}, Lorg/telegram/ui/SecretMediaViewer$6;-><init>(Lorg/telegram/ui/SecretMediaViewer;)V

    invoke-virtual {v2, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 886
    new-instance v2, Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-direct {v2, v1, v3}, Lorg/telegram/ui/Stories/recorder/HintView2;-><init>(Landroid/content/Context;I)V

    iput-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->secretHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, -0x3e300000    # -26.0f

    .line 887
    invoke-virtual {v2, v6, v7}, Lorg/telegram/ui/Stories/recorder/HintView2;->setJoint(FF)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 888
    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->secretHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v2, v7, v10, v11, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 889
    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    iget-object v6, v0, Lorg/telegram/ui/SecretMediaViewer;->secretHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v10, -0x1

    const/high16 v11, 0x42a00000    # 80.0f

    const/16 v12, 0x35

    const/4 v13, 0x0

    const/high16 v14, 0x42400000    # 48.0f

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 891
    new-instance v2, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;-><init>(Lorg/telegram/ui/SecretMediaViewer;Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->secretDeleteTimer:Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;

    .line 892
    iget-object v6, v0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    const/16 v10, 0x77

    const/high16 v11, 0x42400000    # 48.0f

    const/4 v14, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 894
    new-instance v2, Lorg/telegram/ui/SecretMediaViewer$7;

    invoke-direct {v2, v0}, Lorg/telegram/ui/SecretMediaViewer$7;-><init>(Lorg/telegram/ui/SecretMediaViewer;)V

    .line 917
    new-instance v6, Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;

    invoke-direct {v6, v0, v1}, Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;-><init>(Lorg/telegram/ui/SecretMediaViewer;Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/SecretMediaViewer;->seekbarContainer:Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;

    .line 918
    new-instance v6, Landroid/view/View;

    invoke-direct {v6, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/SecretMediaViewer;->seekbarBackground:Landroid/view/View;

    .line 919
    invoke-virtual {v6, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 920
    iget-object v5, v0, Lorg/telegram/ui/SecretMediaViewer;->seekbarContainer:Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;

    iget-object v6, v0, Lorg/telegram/ui/SecretMediaViewer;->seekbarBackground:Landroid/view/View;

    const/16 v7, 0x77

    invoke-static {v8, v8, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 921
    new-instance v5, Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v6, v0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/SecretMediaViewer;->videoPlayerTime:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 922
    invoke-virtual {v5, v8}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 923
    iget-object v5, v0, Lorg/telegram/ui/SecretMediaViewer;->videoPlayerTime:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v6, 0x35

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 924
    iget-object v5, v0, Lorg/telegram/ui/SecretMediaViewer;->videoPlayerTime:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v6, 0xe

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 925
    iget-object v5, v0, Lorg/telegram/ui/SecretMediaViewer;->videoPlayerTime:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 926
    iget-object v5, v0, Lorg/telegram/ui/SecretMediaViewer;->seekbarContainer:Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;

    iget-object v6, v0, Lorg/telegram/ui/SecretMediaViewer;->videoPlayerTime:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/high16 v15, 0x41400000    # 12.0f

    const/4 v10, -0x2

    const/high16 v11, -0x40000000    # -2.0f

    const/high16 v14, 0x41700000    # 15.0f

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 927
    new-instance v5, Lorg/telegram/ui/SecretMediaViewer$8;

    invoke-direct {v5, v0, v1}, Lorg/telegram/ui/SecretMediaViewer$8;-><init>(Lorg/telegram/ui/SecretMediaViewer;Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/SecretMediaViewer;->seekbarView:Landroid/view/View;

    .line 933
    new-instance v6, Lorg/telegram/ui/Components/VideoPlayerSeekBar;

    invoke-direct {v6, v5}, Lorg/telegram/ui/Components/VideoPlayerSeekBar;-><init>(Landroid/view/View;)V

    iput-object v6, v0, Lorg/telegram/ui/SecretMediaViewer;->seekbar:Lorg/telegram/ui/Components/VideoPlayerSeekBar;

    const/high16 v5, 0x40000000    # 2.0f

    .line 934
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v6, v5}, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->setHorizontalPadding(I)V

    .line 935
    iget-object v10, v0, Lorg/telegram/ui/SecretMediaViewer;->seekbar:Lorg/telegram/ui/Components/VideoPlayerSeekBar;

    const/4 v15, -0x1

    const v16, 0x59ffffff

    const v11, 0x33ffffff

    const v12, 0x33ffffff

    const/4 v13, -0x1

    const/4 v14, -0x1

    invoke-virtual/range {v10 .. v16}, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->setColors(IIIIII)V

    .line 936
    iget-object v5, v0, Lorg/telegram/ui/SecretMediaViewer;->seekbar:Lorg/telegram/ui/Components/VideoPlayerSeekBar;

    invoke-virtual {v5, v2}, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->setDelegate(Lorg/telegram/ui/Components/VideoPlayerSeekBar$SeekBarDelegate;)V

    .line 937
    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->seekbarContainer:Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;

    iget-object v5, v0, Lorg/telegram/ui/SecretMediaViewer;->seekbarView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 938
    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    iget-object v5, v0, Lorg/telegram/ui/SecretMediaViewer;->seekbarContainer:Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;

    const/16 v6, 0x30

    invoke-static {v8, v6, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 940
    new-instance v2, Lorg/telegram/ui/SecretMediaViewer$9;

    new-instance v5, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;

    invoke-direct {v5}, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;-><init>()V

    const/4 v7, 0x0

    invoke-direct {v2, v0, v7, v5}, Lorg/telegram/ui/SecretMediaViewer$9;-><init>(Lorg/telegram/ui/SecretMediaViewer;Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleSelectabeleView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    .line 946
    iput-boolean v3, v2, Lorg/telegram/ui/Cells/TextSelectionHelper;->allowScrollPrentRelative:Z

    .line 947
    iput-boolean v4, v2, Lorg/telegram/ui/Cells/TextSelectionHelper;->useMovingOffset:Z

    .line 949
    new-instance v2, Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;

    iget-object v4, v0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->captionTextViewSwitcher:Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;

    .line 950
    new-instance v4, Lorg/telegram/ui/SecretMediaViewer$$ExternalSyntheticLambda6;

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/SecretMediaViewer$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/SecretMediaViewer;Landroid/app/Activity;)V

    invoke-virtual {v2, v4}, Landroid/widget/ViewSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 951
    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->captionTextViewSwitcher:Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;->setVisibility(I)V

    .line 952
    invoke-direct {v0, v3}, Lorg/telegram/ui/SecretMediaViewer;->setCaptionHwLayerEnabled(Z)V

    .line 954
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->playButton:Landroid/widget/ImageView;

    const/high16 v1, 0x42800000    # 64.0f

    .line 955
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v4, 0x66000000

    invoke-static {v1, v4}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 956
    new-instance v1, Lorg/telegram/ui/Components/PlayPauseDrawable;

    const/16 v2, 0x1c

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/PlayPauseDrawable;-><init>(I)V

    iput-object v1, v0, Lorg/telegram/ui/SecretMediaViewer;->playButtonDrawable:Lorg/telegram/ui/Components/PlayPauseDrawable;

    .line 957
    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 958
    iget-object v1, v0, Lorg/telegram/ui/SecretMediaViewer;->playButton:Landroid/widget/ImageView;

    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->playButtonDrawable:Lorg/telegram/ui/Components/PlayPauseDrawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 959
    iget-object v1, v0, Lorg/telegram/ui/SecretMediaViewer;->playButton:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 960
    iget-object v1, v0, Lorg/telegram/ui/SecretMediaViewer;->playButton:Landroid/widget/ImageView;

    const v2, 0x3f19999a    # 0.6f

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 961
    iget-object v1, v0, Lorg/telegram/ui/SecretMediaViewer;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 962
    iget-object v1, v0, Lorg/telegram/ui/SecretMediaViewer;->playButton:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 963
    iget-object v1, v0, Lorg/telegram/ui/SecretMediaViewer;->playButton:Landroid/widget/ImageView;

    const/high16 v2, 0x42000000    # 32.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setPivotX(F)V

    .line 964
    iget-object v1, v0, Lorg/telegram/ui/SecretMediaViewer;->playButton:Landroid/widget/ImageView;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotY(F)V

    .line 965
    iget-object v1, v0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->playButton:Landroid/widget/ImageView;

    const/16 v4, 0x11

    const/16 v5, 0x40

    invoke-static {v5, v5, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 967
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/SecretMediaViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 968
    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v2, -0x3

    .line 969
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 970
    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 971
    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v2, 0x63

    .line 972
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const v2, -0x7ffefef8

    or-int/lit16 v2, v2, 0x2000

    .line 977
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 978
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->logFlagSecure()V

    .line 979
    iget-object v1, v0, Lorg/telegram/ui/SecretMediaViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 980
    iget-object v1, v0, Lorg/telegram/ui/SecretMediaViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/ImageReceiver;->setForceCrossfade(Z)V

    .line 982
    iget-object v1, v0, Lorg/telegram/ui/SecretMediaViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getOverlayView(Landroid/content/Context;)Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 984
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    .line 985
    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 987
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/SecretMediaViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextSelectionHelper;->setParentView(Landroid/view/ViewGroup;)V

    .line 988
    iget-object v1, v0, Lorg/telegram/ui/SecretMediaViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->setInvalidateParent()V

    return-void
.end method

.method public setVideoCrossfadeAlpha(F)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1946
    iput p1, p0, Lorg/telegram/ui/SecretMediaViewer;->videoCrossfadeAlpha:F

    .line 1947
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
