.class public Lorg/telegram/ui/Stories/StoryViewer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;
.implements Lorg/telegram/messenger/pip/source/IPipSourceDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;,
        Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;,
        Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;,
        Lorg/telegram/ui/Stories/StoryViewer$HolderClip;,
        Lorg/telegram/ui/Stories/StoryViewer$HolderDrawAbove;
    }
.end annotation


# static fields
.field static J:I

.field public static animationInProgress:Z

.field private static checkSilentMode:Z

.field public static currentSpeed:F

.field public static globalInstances:Ljava/util/ArrayList;

.field private static isInSilentMode:Z

.field private static lastStoryItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

.field private static final replyDrafts:Landroid/util/LongSparseArray;

.field private static runOpenAnimationAfterLayout:Z


# instance fields
.field public ATTACHED_FRAGMENT_IS_EDGE_TO_EDGE:Z

.field public ATTACH_TO_FRAGMENT:Z

.field public USE_SURFACE_VIEW:Z

.field allowIntercept:Z

.field public allowScreenshots:Z

.field allowSelfStoriesView:Z

.field allowSwipeToDissmiss:Z

.field allowSwipeToReply:Z

.field private allowTouchesByViewpager:Z

.field private animateAvatar:Z

.field animateFromCell:Lorg/telegram/ui/Stories/StoriesListPlaceProvider$AvatarOverlaysView;

.field aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

.field avatarRectTmp:Landroid/graphics/RectF;

.field clipBottom:F

.field clipTop:F

.field containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

.field public currentAccount:I

.field currentDialog:Landroid/app/Dialog;

.field currentPlayerScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

.field currentSheet:Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;

.field public dayStoryId:I

.field private delayedTapRunnable:Ljava/lang/Runnable;

.field doOnAnimationReadyRunnables:Ljava/util/ArrayList;

.field private flingCalled:Z

.field public foundViewToClose:Z

.field fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field public fromBottomSheet:Z

.field fromDismissOffset:F

.field fromHeight:F

.field private fromRadius:[I

.field fromWidth:F

.field fromX:F

.field fromXCell:F

.field fromY:F

.field fromYCell:F

.field private fullyVisible:Z

.field gestureDetector:Landroid/view/GestureDetector;

.field private hideEnterViewProgress:F

.field inSeekingMode:Z

.field inSwipeToDissmissMode:Z

.field inputBackgroundPaint:Landroid/graphics/Paint;

.field private invalidateOutRect:Z

.field private isBulletinVisible:Z

.field private isCaption:Z

.field private isCaptionPartVisible:Z

.field private isClosed:Z

.field private isHintVisible:Z

.field private isInPinchToZoom:Z

.field private isInTextSelectionMode:Z

.field private isInTouchMode:Z

.field private isLikesReactions:Z

.field public isLongpressed:Z

.field private isOverlayVisible:Z

.field private isPopupVisible:Z

.field private isRecording:Z

.field isShowing:Z

.field isSingleStory:Z

.field private isSwiping:Z

.field public isTranslating:Z

.field private isWaiting:Z

.field j:I

.field keyboardVisible:Z

.field lastDialogId:J

.field lastPosition:I

.field private lastStoryContainerHeight:F

.field lastUri:Landroid/net/Uri;

.field livePlayer:Lorg/telegram/ui/Stories/LivePlayer;

.field public liveView:Lorg/telegram/ui/Stories/recorder/LivePlayerView;

.field locker:Lorg/telegram/messenger/AnimationNotificationsLocker;

.field longPressRunnable:Ljava/lang/Runnable;

.field private messageId:I

.field private onCloseListener:Ljava/lang/Runnable;

.field openCloseAnimator:Landroid/animation/ValueAnimator;

.field openedFromLightNavigationBar:Z

.field private opening:Z

.field overrideUserStories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

.field parentActivity:Lorg/telegram/ui/LaunchActivity;

.field private paused:Z

.field public pipLiveView:Lorg/telegram/ui/Stories/recorder/LivePlayerView;

.field public placeProvider:Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;

.field playerHolder:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

.field private playerSavedPosition:J

.field pointPosition:[F

.field preparedPlayers:Ljava/util/ArrayList;

.field progressToDismiss:F

.field progressToOpen:F

.field private realKeyboardHeight:I

.field resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field reversed:Z

.field public savedPositions:Lorg/telegram/messenger/support/LongSparseIntArray;

.field selfStoriesViewsOffset:F

.field selfStoryViewsView:Lorg/telegram/ui/Stories/SelfStoryViewsView;

.field private showViewsAfterOpening:Z

.field singleStory:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

.field singleStoryDeleted:Z

.field private storiesIntro:Lorg/telegram/ui/Stories/StoriesIntro;

.field storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

.field public storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

.field private surfaceView:Landroid/view/SurfaceView;

.field swipeToDismissHorizontalDirection:F

.field swipeToDismissHorizontalOffset:F

.field swipeToDismissOffset:F

.field swipeToDissmissBackAnimator:Landroid/animation/ValueAnimator;

.field swipeToReplyBackAnimator:Landroid/animation/ValueAnimator;

.field swipeToReplyOffset:F

.field swipeToReplyProgress:F

.field swipeToReplyWaitingKeyboard:Z

.field swipeToViewsAnimator:Landroid/animation/ValueAnimator;

.field private textureView:Landroid/view/TextureView;

.field public final transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

.field public unreadStateChanged:Z

.field verticalScrollDetected:Z

.field private volumeControl:Lorg/telegram/ui/Stories/StoriesVolumeControl;

.field windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field windowManager:Landroid/view/WindowManager;

.field public windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;


# direct methods
.method public static synthetic $r8$lambda$-fSMPEhd5No0nnnp9OMrYcMPm9k(Lorg/telegram/ui/Stories/StoryViewer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryViewer;->lambda$openViews$12()V

    return-void
.end method

.method public static synthetic $r8$lambda$C2N8F78X6Jm8xlUwJr-S-smKDds(Lorg/telegram/ui/Stories/StoryViewer;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->lambda$cancelSwipeToViews$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FYzPP5Tv-AxvLpALlCIv34YK8-E(Lorg/telegram/ui/Stories/StoryViewer;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->lambda$cancelSwipeToReply$6(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Np4h9Q_S4kYlT2GmXHk23pc_Du0(Lorg/telegram/ui/Stories/StoryViewer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryViewer;->lambda$layoutAndFindView$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$Ve8QkeFbtUaQDy9YTuxK7_T9pXY(Lorg/telegram/ui/Stories/StoryViewer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryViewer;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$XMRDEmBQBoFPFZV4-gQRSr0MzWs(Lorg/telegram/ui/Stories/StoryViewer;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->lambda$startCloseAnimation$10(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Xn9czhiq12GMJSnZJlucGtUT5mA(Lorg/telegram/ui/Stories/StoryViewer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryViewer;->lambda$startCloseAnimation$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$Zcu2EEg2NOWvNY7Zl996DvI_1XU(Lorg/telegram/ui/Stories/StoryViewer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryViewer;->lambda$cleanupBeforeExit$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$eIy7KKAhLK4z6nRuCcnInuglyWc(Lorg/telegram/ui/Stories/StoryViewer;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->lambda$startOpenAnimation$8(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nsTCQeBpS4Jb83c2nn5JkZwsN4E(Lorg/telegram/ui/Stories/StoryViewer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryViewer;->lambda$listenToAttachedSheet$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$pSCs54wB-EfW4iqF5ks6nFenqBw(Lorg/telegram/ui/Stories/StoryViewer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryViewer;->lambda$open$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$qJXh6tuCXdD4Y2hJGfBcF1X8TtI(Lorg/telegram/ui/Stories/StoryViewer;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/StoryViewer;->lambda$open$1(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$s-5ieMD1Q0gK7WFRK1AyOzsKi8w(Lorg/telegram/ui/Stories/StoryViewer;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->lambda$showDialog$4(Landroid/content/DialogInterface;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetallowTouchesByViewpager(Lorg/telegram/ui/Stories/StoryViewer;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/StoryViewer;->allowTouchesByViewpager:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetanimateAvatar(Lorg/telegram/ui/Stories/StoryViewer;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/StoryViewer;->animateAvatar:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdelayedTapRunnable(Lorg/telegram/ui/Stories/StoryViewer;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/StoryViewer;->delayedTapRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetflingCalled(Lorg/telegram/ui/Stories/StoryViewer;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/StoryViewer;->flingCalled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetfromRadius(Lorg/telegram/ui/Stories/StoryViewer;)[I
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/StoryViewer;->fromRadius:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfullyVisible(Lorg/telegram/ui/Stories/StoryViewer;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/StoryViewer;->fullyVisible:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgethideEnterViewProgress(Lorg/telegram/ui/Stories/StoryViewer;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Stories/StoryViewer;->hideEnterViewProgress:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetinvalidateOutRect(Lorg/telegram/ui/Stories/StoryViewer;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/StoryViewer;->invalidateOutRect:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisCaption(Lorg/telegram/ui/Stories/StoryViewer;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isCaption:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisCaptionPartVisible(Lorg/telegram/ui/Stories/StoryViewer;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isCaptionPartVisible:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisClosed(Lorg/telegram/ui/Stories/StoryViewer;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isClosed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisHintVisible(Lorg/telegram/ui/Stories/StoryViewer;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isHintVisible:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisInPinchToZoom(Lorg/telegram/ui/Stories/StoryViewer;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isInPinchToZoom:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisInTextSelectionMode(Lorg/telegram/ui/Stories/StoryViewer;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isInTextSelectionMode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisInTouchMode(Lorg/telegram/ui/Stories/StoryViewer;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isInTouchMode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisLikesReactions(Lorg/telegram/ui/Stories/StoryViewer;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isLikesReactions:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisRecording(Lorg/telegram/ui/Stories/StoryViewer;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isRecording:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlastStoryContainerHeight(Lorg/telegram/ui/Stories/StoryViewer;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Stories/StoryViewer;->lastStoryContainerHeight:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetopening(Lorg/telegram/ui/Stories/StoryViewer;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/StoryViewer;->opening:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetplayerSavedPosition(Lorg/telegram/ui/Stories/StoryViewer;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->playerSavedPosition:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetrealKeyboardHeight(Lorg/telegram/ui/Stories/StoryViewer;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Stories/StoryViewer;->realKeyboardHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetshowViewsAfterOpening(Lorg/telegram/ui/Stories/StoryViewer;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/StoryViewer;->showViewsAfterOpening:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetstoriesIntro(Lorg/telegram/ui/Stories/StoryViewer;)Lorg/telegram/ui/Stories/StoriesIntro;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesIntro:Lorg/telegram/ui/Stories/StoriesIntro;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsurfaceView(Lorg/telegram/ui/Stories/StoryViewer;)Landroid/view/SurfaceView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/StoryViewer;->surfaceView:Landroid/view/SurfaceView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettextureView(Lorg/telegram/ui/Stories/StoryViewer;)Landroid/view/TextureView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/StoryViewer;->textureView:Landroid/view/TextureView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetvolumeControl(Lorg/telegram/ui/Stories/StoryViewer;)Lorg/telegram/ui/Stories/StoriesVolumeControl;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/StoryViewer;->volumeControl:Lorg/telegram/ui/Stories/StoriesVolumeControl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputallowTouchesByViewpager(Lorg/telegram/ui/Stories/StoryViewer;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->allowTouchesByViewpager:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputdelayedTapRunnable(Lorg/telegram/ui/Stories/StoryViewer;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->delayedTapRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputflingCalled(Lorg/telegram/ui/Stories/StoryViewer;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->flingCalled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputfullyVisible(Lorg/telegram/ui/Stories/StoryViewer;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->fullyVisible:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputhideEnterViewProgress(Lorg/telegram/ui/Stories/StoryViewer;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->hideEnterViewProgress:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputinvalidateOutRect(Lorg/telegram/ui/Stories/StoryViewer;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->invalidateOutRect:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisBulletinVisible(Lorg/telegram/ui/Stories/StoryViewer;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->isBulletinVisible:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisCaption(Lorg/telegram/ui/Stories/StoryViewer;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->isCaption:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisCaptionPartVisible(Lorg/telegram/ui/Stories/StoryViewer;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->isCaptionPartVisible:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisHintVisible(Lorg/telegram/ui/Stories/StoryViewer;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->isHintVisible:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisInPinchToZoom(Lorg/telegram/ui/Stories/StoryViewer;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->isInPinchToZoom:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisInTextSelectionMode(Lorg/telegram/ui/Stories/StoryViewer;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->isInTextSelectionMode:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisLikesReactions(Lorg/telegram/ui/Stories/StoryViewer;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->isLikesReactions:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisPopupVisible(Lorg/telegram/ui/Stories/StoryViewer;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->isPopupVisible:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisRecording(Lorg/telegram/ui/Stories/StoryViewer;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->isRecording:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisSwiping(Lorg/telegram/ui/Stories/StoryViewer;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->isSwiping:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisWaiting(Lorg/telegram/ui/Stories/StoryViewer;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->isWaiting:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastStoryContainerHeight(Lorg/telegram/ui/Stories/StoryViewer;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->lastStoryContainerHeight:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputplayerSavedPosition(Lorg/telegram/ui/Stories/StoryViewer;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->playerSavedPosition:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputshowViewsAfterOpening(Lorg/telegram/ui/Stories/StoryViewer;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->showViewsAfterOpening:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputstoriesIntro(Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/Stories/StoriesIntro;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesIntro:Lorg/telegram/ui/Stories/StoriesIntro;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcleanupBeforeExit(Lorg/telegram/ui/Stories/StoryViewer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryViewer;->cleanupBeforeExit()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdispatchVolumeEvent(Lorg/telegram/ui/Stories/StoryViewer;Landroid/view/KeyEvent;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->dispatchVolumeEvent(Landroid/view/KeyEvent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfindClickableView(Lorg/telegram/ui/Stories/StoryViewer;Landroid/widget/FrameLayout;FFZ)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/StoryViewer;->findClickableView(Landroid/widget/FrameLayout;FFZ)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetBlackoutAlpha(Lorg/telegram/ui/Stories/StoryViewer;)F
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryViewer;->getBlackoutAlpha()F

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mlayoutAndFindView(Lorg/telegram/ui/Stories/StoryViewer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryViewer;->layoutAndFindView()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrequestAdjust(Lorg/telegram/ui/Stories/StoryViewer;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->requestAdjust(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetInTouchMode(Lorg/telegram/ui/Stories/StoryViewer;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->setInTouchMode(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetLongPressed(Lorg/telegram/ui/Stories/StoryViewer;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->setLongPressed(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowKeyboard(Lorg/telegram/ui/Stories/StoryViewer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryViewer;->showKeyboard()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartOpenAnimation(Lorg/telegram/ui/Stories/StoryViewer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryViewer;->startOpenAnimation()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateProgressToDismiss(Lorg/telegram/ui/Stories/StoryViewer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryViewer;->updateProgressToDismiss()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetisInSilentMode()Z
    .locals 1

    .line 0
    sget-boolean v0, Lorg/telegram/ui/Stories/StoryViewer;->isInSilentMode:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetrunOpenAnimationAfterLayout()Z
    .locals 1

    .line 0
    sget-boolean v0, Lorg/telegram/ui/Stories/StoryViewer;->runOpenAnimationAfterLayout:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfputrunOpenAnimationAfterLayout(Z)V
    .locals 0

    .line 0
    sput-boolean p0, Lorg/telegram/ui/Stories/StoryViewer;->runOpenAnimationAfterLayout:Z

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/ui/Stories/StoryViewer;->globalInstances:Ljava/util/ArrayList;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 222
    sput v0, Lorg/telegram/ui/Stories/StoryViewer;->currentSpeed:F

    const/4 v0, 0x1

    .line 230
    sput-boolean v0, Lorg/telegram/ui/Stories/StoryViewer;->checkSilentMode:Z

    .line 249
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v0, Lorg/telegram/ui/Stories/StoryViewer;->replyDrafts:Landroid/util/LongSparseArray;

    const/4 v0, 0x0

    .line 1841
    sput v0, Lorg/telegram/ui/Stories/StoryViewer;->J:I

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 3

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useSurfaceInStories:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->USE_SURFACE_VIEW:Z

    const/4 v0, 0x1

    .line 103
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->ATTACH_TO_FRAGMENT:Z

    const/4 v1, 0x0

    .line 104
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->ATTACHED_FRAGMENT_IS_EDGE_TO_EDGE:Z

    .line 105
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->foundViewToClose:Z

    .line 108
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->allowScreenshots:Z

    .line 123
    new-instance v2, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;

    invoke-direct {v2}, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 144
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->avatarRectTmp:Landroid/graphics/RectF;

    const/4 v2, 0x2

    .line 170
    new-array v2, v2, [F

    iput-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->pointPosition:[F

    .line 175
    new-instance v2, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    invoke-direct {v2}, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    .line 179
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->allowTouchesByViewpager:Z

    .line 181
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->doOnAnimationReadyRunnables:Ljava/util/ArrayList;

    .line 197
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isClosed:Z

    .line 199
    new-instance v2, Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-direct {v2}, Lorg/telegram/messenger/AnimationNotificationsLocker;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->locker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    .line 204
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->preparedPlayers:Ljava/util/ArrayList;

    .line 220
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->isTranslating:Z

    .line 226
    new-instance v1, Lorg/telegram/ui/Stories/StoryViewer$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/StoryViewer$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/StoryViewer;)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->longPressRunnable:Ljava/lang/Runnable;

    .line 233
    new-instance v1, Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-direct {v1}, Lorg/telegram/messenger/support/LongSparseIntArray;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->savedPositions:Lorg/telegram/messenger/support/LongSparseIntArray;

    .line 1842
    sget v1, Lorg/telegram/ui/Stories/StoryViewer;->J:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lorg/telegram/ui/Stories/StoryViewer;->J:I

    iput v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->j:I

    .line 296
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->inputBackgroundPaint:Landroid/graphics/Paint;

    .line 297
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-void
.end method

.method private checkInSilentMode()V
    .locals 3

    .line 2081
    sget-boolean v0, Lorg/telegram/ui/Stories/StoryViewer;->checkSilentMode:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2082
    sput-boolean v0, Lorg/telegram/ui/Stories/StoryViewer;->checkSilentMode:Z

    .line 2083
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 2084
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lorg/telegram/ui/Stories/StoryViewer;->isInSilentMode:Z

    :cond_1
    return-void
.end method

.method private cleanupBeforeExit()V
    .locals 4

    .line 2531
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    if-eqz v0, :cond_0

    .line 2532
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/HwFrameLayout;->disableHwAcceleration()V

    .line 2534
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->checkNavBarColor()V

    .line 2535
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->locker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {v0}, Lorg/telegram/messenger/AnimationNotificationsLocker;->unlock()V

    .line 2536
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesIntro:Lorg/telegram/ui/Stories/StoriesIntro;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2537
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesIntro;->stopAnimation()V

    .line 2538
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesIntro:Lorg/telegram/ui/Stories/StoriesIntro;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    .line 2539
    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesIntro:Lorg/telegram/ui/Stories/StoriesIntro;

    .line 2541
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 2542
    invoke-virtual {v0, v2, v2}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 2543
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iput-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    .line 2545
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_3

    const/high16 v3, 0x3f800000    # 1.0f

    .line 2546
    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 2547
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v2, v2}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 2549
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->radialProgressUpload:Lorg/telegram/ui/Components/RadialProgress;

    if-eqz v0, :cond_4

    .line 2550
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2551
    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    if-eqz v0, :cond_4

    .line 2552
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->radialProgressUpload:Lorg/telegram/ui/Components/RadialProgress;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/RadialProgress;->copyParams(Lorg/telegram/ui/Components/RadialProgress;)V

    .line 2555
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->currentPlayerScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    if-eqz v0, :cond_5

    .line 2556
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->invalidate()V

    .line 2558
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->release()V

    .line 2560
    :try_start_0
    new-instance v0, Lorg/telegram/ui/Stories/StoryViewer$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/StoryViewer$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Stories/StoryViewer;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 2578
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isShowing:Z

    .line 2579
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->foundViewToClose:Z

    .line 2580
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->onCloseListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_6

    .line 2581
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2582
    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->onCloseListener:Ljava/lang/Runnable;

    :cond_6
    return-void
.end method

.method public static closeGlobalInstances()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 263
    :goto_0
    sget-object v2, Lorg/telegram/ui/Stories/StoryViewer;->globalInstances:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 264
    sget-object v2, Lorg/telegram/ui/Stories/StoryViewer;->globalInstances:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Stories/StoryViewer;->close(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 266
    :cond_0
    sget-object v0, Lorg/telegram/ui/Stories/StoryViewer;->globalInstances:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private dispatchVolumeEvent(Landroid/view/KeyEvent;)V
    .locals 2

    .line 2051
    sget-boolean v0, Lorg/telegram/ui/Stories/StoryViewer;->isInSilentMode:Z

    if-eqz v0, :cond_0

    .line 2052
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->toggleSilentMode()V

    return-void

    .line 2055
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2056
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->hasSound()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    .line 2057
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->showNoSoundHint(Z)V

    return-void

    .line 2060
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->volumeControl:Lorg/telegram/ui/Stories/StoriesVolumeControl;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Stories/StoriesVolumeControl;->onKeyDown(ILandroid/view/KeyEvent;)Z

    return-void
.end method

.method private draftHash(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;)J
    .locals 3

    const/16 v0, 0x10

    shr-long v1, p1, v0

    add-long/2addr p1, v1

    .line 3034
    iget p3, p3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    int-to-long v1, p3

    shl-long v0, v1, v0

    add-long/2addr p1, v0

    return-wide p1
.end method

.method private findClickableView(Landroid/widget/FrameLayout;FFZ)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2296
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->isPopupVisible:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 2299
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->selfStoryViewsView:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    if-eqz v1, :cond_2

    iget v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->selfStoriesViewsOffset:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_2

    return v2

    .line 2302
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2306
    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    sub-float v3, p2, v3

    iget-object v4, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    .line 2307
    iget-object v4, p0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    sub-float v4, p3, v4

    iget-object v5, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    .line 2308
    invoke-virtual {v1, v1, v3, v4, p4}, Lorg/telegram/ui/Stories/PeerStoriesView;->findClickableView(Landroid/view/ViewGroup;FFZ)Z

    move-result v3

    if-eqz v3, :cond_3

    return v2

    .line 2311
    :cond_3
    iget-boolean v3, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardVisible:Z

    if-eqz v3, :cond_4

    return v0

    :cond_4
    if-eqz p4, :cond_5

    return v0

    :cond_5
    if-eqz v1, :cond_6

    .line 2318
    iget-object p4, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz p4, :cond_6

    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result p4

    if-nez p4, :cond_6

    iget-object p4, p0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {p4}, Landroid/view/View;->getY()F

    move-result p4

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    add-float/2addr p4, v0

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v0

    add-float/2addr p4, v0

    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    add-float/2addr p4, v0

    cmpl-float p4, p3, p4

    if-lez p4, :cond_6

    return v2

    :cond_6
    if-eqz v1, :cond_7

    .line 2321
    iget-object p4, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz p4, :cond_7

    invoke-virtual {p4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isRecordingAudioVideo()Z

    move-result p4

    if-eqz p4, :cond_7

    return v2

    .line 2324
    :cond_7
    iget-object p4, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesIntro:Lorg/telegram/ui/Stories/StoriesIntro;

    if-eqz p4, :cond_8

    return v2

    .line 2327
    :cond_8
    invoke-static {p1, p2, p3, v1}, Lorg/telegram/messenger/AndroidUtilities;->findClickableView(Landroid/view/ViewGroup;FFLandroid/view/View;)Z

    move-result p1

    return p1
.end method

.method private getBlackoutAlpha()F
    .locals 3

    .line 2709
    iget v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->progressToDismiss:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0
.end method

.method public static isShowingImage(Lorg/telegram/messenger/MessageObject;)Z
    .locals 3

    .line 256
    sget-object v0, Lorg/telegram/ui/Stories/StoryViewer;->lastStoryItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v2, 0x17

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->isWebpage()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    sget-boolean v0, Lorg/telegram/ui/Stories/StoryViewer;->runOpenAnimationAfterLayout:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 259
    :cond_1
    sget-object v0, Lorg/telegram/ui/Stories/StoryViewer;->lastStoryItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->messageId:I

    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p0

    if-ne v0, p0, :cond_2

    sget-object p0, Lorg/telegram/ui/Stories/StoryViewer;->lastStoryItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget p0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->messageType:I

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method private synthetic lambda$cancelSwipeToReply$6(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1963
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyOffset:F

    const/high16 p1, 0x43480000    # 200.0f

    .line 1964
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    .line 1965
    iget v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyOffset:F

    int-to-float p1, p1

    div-float/2addr v0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyProgress:F

    .line 1966
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 1968
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$cancelSwipeToViews$3(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1873
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->selfStoriesViewsOffset:F

    .line 1878
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/HwFrameLayout;->invalidate()V

    return-void
.end method

.method private synthetic lambda$cleanupBeforeExit$9()V
    .locals 2

    .line 2562
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-nez v0, :cond_0

    goto :goto_1

    .line 2565
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->ATTACH_TO_FRAGMENT:Z

    if-eqz v1, :cond_1

    .line 2566
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    goto :goto_0

    .line 2568
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :goto_0
    const/4 v0, 0x0

    .line 2570
    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_1
    return-void
.end method

.method private synthetic lambda$layoutAndFindView$7()V
    .locals 3

    .line 2108
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryViewer;->updateTransitionParams()V

    .line 2109
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2110
    invoke-virtual {v0, v2, v1}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 2112
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_1

    .line 2113
    invoke-virtual {v0, v2, v1}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$listenToAttachedSheet$5()V
    .locals 1

    const/4 v0, 0x0

    .line 1946
    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->currentSheet:Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;

    .line 1947
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->updatePlayingMode()V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    const/4 v0, 0x1

    .line 226
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/StoryViewer;->setLongPressed(Z)V

    return-void
.end method

.method private synthetic lambda$open$1(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 1

    .line 1775
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1776
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->ATTACHED_FRAGMENT_IS_EDGE_TO_EDGE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    :goto_0
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1777
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->ATTACHED_FRAGMENT_IS_EDGE_TO_EDGE:Z

    if-eqz v0, :cond_1

    .line 1778
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->navigationBars()I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    goto :goto_1

    .line 1779
    :cond_1
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v0

    :goto_1
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1781
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1782
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1784
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 1785
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 1787
    sget-object p1, Landroidx/core/view/WindowInsetsCompat;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    return-object p1
.end method

.method private synthetic lambda$open$2()V
    .locals 1

    .line 1810
    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-eqz v0, :cond_0

    .line 1811
    invoke-virtual {v0}, Lorg/telegram/ui/LaunchActivity;->onBackPressed()V

    return-void

    .line 1813
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->onAttachedBackPressed()Z

    return-void
.end method

.method private synthetic lambda$openViews$12()V
    .locals 1

    const/4 v0, 0x1

    .line 2869
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->allowSelfStoriesView:Z

    .line 2870
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/StoryViewer;->cancelSwipeToViews(Z)V

    return-void
.end method

.method private synthetic lambda$showDialog$4(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1928
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->currentDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 1929
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->currentDialog:Landroid/app/Dialog;

    .line 1930
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->updatePlayingMode()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$startCloseAnimation$10(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 2594
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    .line 2595
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->checkNavBarColor()V

    .line 2596
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz p1, :cond_0

    .line 2597
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 2599
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->livePlayer:Lorg/telegram/ui/Stories/LivePlayer;

    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2600
    iget v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->progressToDismiss:F

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/LivePlayer;->setVolume(F)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$startCloseAnimation$11()V
    .locals 3

    .line 2617
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->openCloseAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    return-void

    .line 2620
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    if-eqz v0, :cond_1

    .line 2621
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/HwFrameLayout;->enableHwAcceleration()V

    .line 2623
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->openCloseAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Stories/StoryViewer$10;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/StoryViewer$10;-><init>(Lorg/telegram/ui/Stories/StoryViewer;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2630
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->openCloseAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2631
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->openCloseAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2634
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->openCloseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$startOpenAnimation$8(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 2381
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    .line 2382
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    if-eqz v0, :cond_0

    .line 2383
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/HwFrameLayout;->checkHwAcceleration(F)V

    .line 2385
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->livePlayer:Lorg/telegram/ui/Stories/LivePlayer;

    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2386
    iget v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->progressToDismiss:F

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/LivePlayer;->setVolume(F)V

    .line 2388
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->checkNavBarColor()V

    .line 2389
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz p1, :cond_2

    .line 2390
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method private layoutAndFindView()V
    .locals 5

    const/4 v0, 0x1

    .line 2089
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->foundViewToClose:Z

    .line 2090
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v1, :cond_0

    .line 2091
    invoke-virtual {v1, v0, v0}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 2093
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v1, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 2094
    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 2095
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v0, v0}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 2097
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-eqz v0, :cond_2

    .line 2098
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2100
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->getSelectedPosition()I

    move-result v0

    if-ltz v0, :cond_2

    .line 2101
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2102
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->messageId:I

    .line 2106
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->placeProvider:Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;

    if-eqz v0, :cond_3

    .line 2107
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentDialogId()J

    move-result-wide v1

    iget v3, p0, Lorg/telegram/ui/Stories/StoryViewer;->messageId:I

    new-instance v4, Lorg/telegram/ui/Stories/StoryViewer$$ExternalSyntheticLambda7;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Stories/StoryViewer$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Stories/StoryViewer;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;->preLayout(JILjava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method private lockOrientation(Z)V
    .locals 2

    .line 2037
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 2040
    :goto_0
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/16 v1, 0x80

    if-eqz p1, :cond_1

    .line 2043
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_1

    .line 2045
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method private requestAdjust(Z)V
    .locals 2

    .line 2206
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->ATTACH_TO_FRAGMENT:Z

    if-eqz v0, :cond_2

    .line 2207
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->ATTACHED_FRAGMENT_IS_EDGE_TO_EDGE:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 2209
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustNothing(Landroid/app/Activity;I)V

    return-void

    .line 2211
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    :cond_1
    return-void

    .line 2215
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_3

    const/16 p1, 0x30

    goto :goto_0

    :cond_3
    const/16 p1, 0x10

    :goto_0
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 2217
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-interface {p1, v1, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2219
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method private setInTouchMode(Z)V
    .locals 0

    .line 2225
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->isInTouchMode:Z

    if-eqz p1, :cond_0

    .line 2227
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->volumeControl:Lorg/telegram/ui/Stories/StoriesVolumeControl;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesVolumeControl;->hide()V

    .line 2229
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->updatePlayingMode()V

    return-void
.end method

.method private setLongPressed(Z)V
    .locals 2

    .line 270
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isLongpressed:Z

    if-eq v0, p1, :cond_3

    .line 271
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->isLongpressed:Z

    if-eqz p1, :cond_2

    .line 272
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->isInPinchToZoom:Z

    if-nez p1, :cond_2

    .line 273
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 274
    iget-object v0, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->isLive()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    if-nez v0, :cond_2

    .line 275
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->inSeekingMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->inSwipeToDissmissMode:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->currentPlayerScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->player:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    if-eqz v0, :cond_0

    .line 276
    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 277
    sget-object p1, Lorg/telegram/messenger/BotWebViewVibrationEffect;->IMPACT_LIGHT:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {p1}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    .line 279
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->currentPlayerScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->player:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->inSeekingMode:Z

    if-nez v1, :cond_1

    .line 280
    invoke-virtual {p1, v0}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->setSeeking(Z)V

    .line 282
    :cond_1
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->inSeekingMode:Z

    .line 285
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->updatePlayingMode()V

    .line 286
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    if-eqz p1, :cond_3

    .line 287
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 289
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isLongpressed:Z

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->setLongpressed(Z)V

    :cond_3
    return-void
.end method

.method private setNavigationButtonsColor(Z)V
    .locals 2

    .line 2745
    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    .line 2746
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->ATTACH_TO_FRAGMENT:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 2748
    invoke-virtual {v0}, Lorg/telegram/ui/LaunchActivity;->isLightNavigationBar()Z

    move-result v1

    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->openedFromLightNavigationBar:Z

    .line 2750
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->openedFromLightNavigationBar:Z

    if-eqz v1, :cond_1

    xor-int/lit8 p1, p1, 0x1

    .line 2751
    invoke-static {v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->setLightNavigationBar(Landroid/app/Activity;Z)V

    :cond_1
    return-void
.end method

.method private showKeyboard()V
    .locals 3

    .line 1845
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1847
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->showKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1848
    new-instance v0, Lorg/telegram/ui/Stories/StoryViewer$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/StoryViewer$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Stories/StoryViewer;)V

    const-wide/16 v1, 0xc8

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    .line 1852
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->cancelSwipeToReply()V

    return-void
.end method

.method private startCloseAnimation(Z)V
    .locals 4

    const/4 v0, 0x0

    .line 2587
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/StoryViewer;->setNavigationButtonsColor(Z)V

    .line 2588
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryViewer;->updateTransitionParams()V

    .line 2589
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->locker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {v1}, Lorg/telegram/messenger/AnimationNotificationsLocker;->lock()V

    .line 2590
    iget v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissOffset:F

    iput v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->fromDismissOffset:F

    .line 2591
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->opening:Z

    .line 2592
    iget v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    const/4 v2, 0x2

    new-array v2, v2, [F

    aput v1, v2, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput v1, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->openCloseAnimator:Landroid/animation/ValueAnimator;

    .line 2593
    new-instance v3, Lorg/telegram/ui/Stories/StoryViewer$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Stories/StoryViewer$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/StoryViewer;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-nez p1, :cond_2

    .line 2604
    iput v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->fromY:F

    iput v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->fromX:F

    .line 2605
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    if-eqz p1, :cond_0

    .line 2606
    invoke-virtual {p1, v0, v0}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 2608
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    if-eqz p1, :cond_1

    .line 2609
    invoke-virtual {p1, v0, v0}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 2611
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    .line 2612
    iput-object v0, p1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    goto :goto_0

    .line 2614
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryViewer;->layoutAndFindView()V

    .line 2616
    :goto_0
    new-instance p1, Lorg/telegram/ui/Stories/StoryViewer$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/StoryViewer$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/StoryViewer;)V

    const-wide/16 v0, 0x10

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private startOpenAnimation()V
    .locals 4

    .line 2366
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryViewer;->updateTransitionParams()V

    const/4 v0, 0x0

    .line 2367
    iput v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    const/4 v0, 0x1

    .line 2368
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/StoryViewer;->setNavigationButtonsColor(Z)V

    const/4 v1, 0x0

    .line 2369
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->foundViewToClose:Z

    .line 2370
    sput-boolean v0, Lorg/telegram/ui/Stories/StoryViewer;->animationInProgress:Z

    .line 2371
    iget v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissOffset:F

    iput v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->fromDismissOffset:F

    .line 2372
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->radialProgressUpload:Lorg/telegram/ui/Components/RadialProgress;

    if-eqz v2, :cond_0

    .line 2373
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2374
    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    if-eqz v2, :cond_0

    .line 2375
    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->radialProgressUpload:Lorg/telegram/ui/Components/RadialProgress;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RadialProgress;->copyParams(Lorg/telegram/ui/Components/RadialProgress;)V

    .line 2378
    :cond_0
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->opening:Z

    const/4 v0, 0x2

    .line 2379
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->openCloseAnimator:Landroid/animation/ValueAnimator;

    .line 2380
    new-instance v2, Lorg/telegram/ui/Stories/StoryViewer$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/StoryViewer$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Stories/StoryViewer;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2393
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->locker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {v0}, Lorg/telegram/messenger/AnimationNotificationsLocker;->lock()V

    .line 2394
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    if-eqz v0, :cond_1

    .line 2395
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/HwFrameLayout;->enableHwAcceleration()V

    .line 2397
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->openCloseAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lorg/telegram/ui/Stories/StoryViewer$9;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/StoryViewer$9;-><init>(Lorg/telegram/ui/Stories/StoryViewer;)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2475
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->openCloseAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x28

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 2476
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->openCloseAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2477
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->openCloseAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2478
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->openCloseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 2480
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->doOnAnimationReadyRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2481
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->doOnAnimationReadyRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 2482
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->doOnAnimationReadyRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2484
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->doOnAnimationReadyRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_3
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updatePipSource()V
    .locals 0

    return-void
.end method

.method private updateProgressToDismiss()V
    .locals 3

    .line 2342
    iget v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissHorizontalOffset:F

    iget v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissOffset:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x42a00000    # 80.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->clamp01(F)F

    move-result v0

    .line 2343
    iget v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->progressToDismiss:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_1

    .line 2344
    iput v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->progressToDismiss:F

    .line 2345
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->checkNavBarColor()V

    .line 2346
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2348
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToDismissUpdated()V

    .line 2350
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->livePlayer:Lorg/telegram/ui/Stories/LivePlayer;

    if-eqz v0, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2351
    iget v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->progressToDismiss:F

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/LivePlayer;->setVolume(F)V

    .line 2355
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz v0, :cond_2

    .line 2356
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method private updateTransitionParams()V
    .locals 17

    move-object/from16 v0, p0

    .line 2120
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->placeProvider:Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_14

    .line 2121
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    .line 2122
    invoke-virtual {v1, v4, v4}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 2124
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v1, :cond_1

    const/high16 v5, 0x3f800000    # 1.0f

    .line 2125
    invoke-virtual {v1, v5}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 2126
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v4, v4}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 2128
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v1

    if-nez v1, :cond_2

    move v5, v3

    goto :goto_0

    .line 2129
    :cond_2
    invoke-virtual {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->getSelectedPosition()I

    move-result v5

    :goto_0
    if-eqz v1, :cond_4

    if-ltz v5, :cond_4

    .line 2130
    iget-object v6, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v5, v6, :cond_3

    goto :goto_1

    :cond_3
    iget-object v6, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget v6, v6, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    goto :goto_2

    :cond_4
    :goto_1
    move v6, v3

    :goto_2
    const/4 v7, 0x0

    if-eqz v1, :cond_6

    if-ltz v5, :cond_6

    .line 2131
    iget-object v8, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v5, v8, :cond_5

    goto :goto_3

    :cond_5
    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    goto :goto_4

    :cond_6
    :goto_3
    move-object v1, v7

    :goto_4
    if-nez v1, :cond_7

    .line 2132
    iget-boolean v5, v0, Lorg/telegram/ui/Stories/StoryViewer;->isSingleStory:Z

    if-eqz v5, :cond_7

    .line 2133
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->singleStory:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    .line 2135
    :cond_7
    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v5}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentDialogId()J

    move-result-wide v8

    .line 2136
    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    instance-of v10, v5, Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;

    if-eqz v10, :cond_9

    if-eqz v1, :cond_9

    .line 2137
    iget-wide v8, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    .line 2138
    iget v6, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->messageId:I

    :cond_8
    :goto_5
    move v14, v6

    move-wide v11, v8

    goto :goto_6

    :cond_9
    if-eqz v5, :cond_8

    .line 2140
    iget v6, v0, Lorg/telegram/ui/Stories/StoryViewer;->dayStoryId:I

    goto :goto_5

    .line 2142
    :goto_6
    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    invoke-virtual {v5}, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clear()V

    .line 2143
    iget-object v10, v0, Lorg/telegram/ui/Stories/StoryViewer;->placeProvider:Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;

    iget v13, v0, Lorg/telegram/ui/Stories/StoryViewer;->messageId:I

    if-nez v1, :cond_a

    const/4 v1, -0x1

    :goto_7
    move v15, v1

    goto :goto_8

    :cond_a
    iget v1, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->messageType:I

    goto :goto_7

    :goto_8
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    move-object/from16 v16, v1

    invoke-interface/range {v10 .. v16}, Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;->findView(JIIILorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2144
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iput v14, v1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyId:I

    .line 2145
    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->view:Landroid/view/View;

    if-eqz v1, :cond_12

    const/4 v5, 0x2

    .line 2146
    new-array v5, v5, [I

    .line 2147
    invoke-virtual {v1, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2148
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->view:Landroid/view/View;

    instance-of v6, v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v6, :cond_b

    .line 2149
    aget v6, v5, v4

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v6, v1

    aput v6, v5, v4

    .line 2151
    :cond_b
    aget v1, v5, v3

    int-to-float v6, v1

    iput v6, v0, Lorg/telegram/ui/Stories/StoryViewer;->fromXCell:F

    .line 2152
    aget v6, v5, v4

    int-to-float v6, v6

    iput v6, v0, Lorg/telegram/ui/Stories/StoryViewer;->fromYCell:F

    .line 2153
    iget-object v6, v0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v8, v6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->view:Landroid/view/View;

    instance-of v9, v8, Lorg/telegram/ui/Stories/StoriesListPlaceProvider$AvatarOverlaysView;

    if-eqz v9, :cond_c

    .line 2154
    check-cast v8, Lorg/telegram/ui/Stories/StoriesListPlaceProvider$AvatarOverlaysView;

    iput-object v8, v0, Lorg/telegram/ui/Stories/StoryViewer;->animateFromCell:Lorg/telegram/ui/Stories/StoriesListPlaceProvider$AvatarOverlaysView;

    goto :goto_9

    .line 2156
    :cond_c
    iput-object v7, v0, Lorg/telegram/ui/Stories/StoryViewer;->animateFromCell:Lorg/telegram/ui/Stories/StoriesListPlaceProvider$AvatarOverlaysView;

    .line 2158
    :goto_9
    iput-boolean v3, v0, Lorg/telegram/ui/Stories/StoryViewer;->animateAvatar:Z

    .line 2159
    iget-object v7, v6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v7, :cond_f

    int-to-float v1, v1

    .line 2160
    invoke-virtual {v7}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v6

    add-float/2addr v1, v6

    iput v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->fromX:F

    .line 2161
    aget v1, v5, v4

    int-to-float v1, v1

    iget-object v6, v0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v6, v6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v6

    add-float/2addr v1, v6

    iput v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->fromY:F

    .line 2162
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->fromWidth:F

    .line 2163
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->fromHeight:F

    .line 2164
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    if-eqz v1, :cond_d

    .line 2165
    iget v6, v0, Lorg/telegram/ui/Stories/StoryViewer;->fromWidth:F

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->getScale()F

    move-result v1

    mul-float/2addr v6, v1

    iput v6, v0, Lorg/telegram/ui/Stories/StoryViewer;->fromWidth:F

    .line 2166
    iget v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->fromHeight:F

    iget-object v6, v0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v6, v6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    invoke-virtual {v6}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->getScale()F

    move-result v6

    mul-float/2addr v1, v6

    iput v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->fromHeight:F

    .line 2168
    :cond_d
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_e

    .line 2169
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 2170
    aget v3, v5, v3

    int-to-float v3, v3

    iget-object v6, v0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v6, v6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v3, v6

    iput v3, v0, Lorg/telegram/ui/Stories/StoryViewer;->fromX:F

    .line 2171
    aget v3, v5, v4

    int-to-float v3, v3

    iget-object v6, v0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v6, v6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getScaleY()F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v3, v6

    iput v3, v0, Lorg/telegram/ui/Stories/StoryViewer;->fromY:F

    .line 2172
    iget v3, v0, Lorg/telegram/ui/Stories/StoryViewer;->fromWidth:F

    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v6

    mul-float/2addr v3, v6

    iput v3, v0, Lorg/telegram/ui/Stories/StoryViewer;->fromWidth:F

    .line 2173
    iget v3, v0, Lorg/telegram/ui/Stories/StoryViewer;->fromHeight:F

    invoke-virtual {v1}, Landroid/view/View;->getScaleY()F

    move-result v1

    mul-float/2addr v3, v1

    iput v3, v0, Lorg/telegram/ui/Stories/StoryViewer;->fromHeight:F

    .line 2175
    :cond_e
    iput-boolean v4, v0, Lorg/telegram/ui/Stories/StoryViewer;->animateAvatar:Z

    goto :goto_a

    .line 2176
    :cond_f
    iget-object v3, v6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v3, :cond_10

    int-to-float v1, v1

    .line 2177
    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v3

    add-float/2addr v1, v3

    iput v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->fromX:F

    .line 2178
    aget v1, v5, v4

    int-to-float v1, v1

    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v3

    add-float/2addr v1, v3

    iput v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->fromY:F

    .line 2179
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->fromWidth:F

    .line 2180
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->fromHeight:F

    .line 2181
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()[I

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->fromRadius:[I

    .line 2184
    :cond_10
    :goto_a
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipParent:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2185
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget v3, v1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipTop:F

    cmpl-float v6, v3, v2

    if-nez v6, :cond_11

    iget v6, v1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipBottom:F

    cmpl-float v6, v6, v2

    if-nez v6, :cond_11

    .line 2186
    iput v2, v0, Lorg/telegram/ui/Stories/StoryViewer;->clipTop:F

    iput v2, v0, Lorg/telegram/ui/Stories/StoryViewer;->clipBottom:F

    return-void

    .line 2188
    :cond_11
    aget v2, v5, v4

    int-to-float v4, v2

    add-float/2addr v4, v3

    iput v4, v0, Lorg/telegram/ui/Stories/StoryViewer;->clipTop:F

    int-to-float v2, v2

    .line 2189
    iget v1, v1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipBottom:F

    add-float/2addr v2, v1

    iput v2, v0, Lorg/telegram/ui/Stories/StoryViewer;->clipBottom:F

    return-void

    .line 2192
    :cond_12
    iput-boolean v3, v0, Lorg/telegram/ui/Stories/StoryViewer;->animateAvatar:Z

    .line 2193
    iput v2, v0, Lorg/telegram/ui/Stories/StoryViewer;->fromY:F

    iput v2, v0, Lorg/telegram/ui/Stories/StoryViewer;->fromX:F

    return-void

    .line 2196
    :cond_13
    iput-boolean v3, v0, Lorg/telegram/ui/Stories/StoryViewer;->animateAvatar:Z

    .line 2197
    iput v2, v0, Lorg/telegram/ui/Stories/StoryViewer;->fromY:F

    iput v2, v0, Lorg/telegram/ui/Stories/StoryViewer;->fromX:F

    return-void

    .line 2200
    :cond_14
    iput-boolean v3, v0, Lorg/telegram/ui/Stories/StoryViewer;->animateAvatar:Z

    .line 2201
    iput v2, v0, Lorg/telegram/ui/Stories/StoryViewer;->fromY:F

    iput v2, v0, Lorg/telegram/ui/Stories/StoryViewer;->fromX:F

    return-void
.end method


# virtual methods
.method public allowScreenshots(Z)V
    .locals 2

    .line 2880
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 2883
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isShowing:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 2884
    :goto_1
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->allowScreenshots:Z

    if-eq v0, p1, :cond_8

    .line 2885
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->allowScreenshots:Z

    .line 2887
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->surfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_3

    xor-int/lit8 v1, p1, 0x1

    .line 2888
    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setSecure(Z)V

    .line 2890
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->liveView:Lorg/telegram/ui/Stories/recorder/LivePlayerView;

    if-eqz v0, :cond_4

    xor-int/lit8 v1, p1, 0x1

    .line 2891
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/LivePlayerView;->setSecure(Z)V

    .line 2893
    :cond_4
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->ATTACH_TO_FRAGMENT:Z

    const/16 v1, 0x2000

    if-eqz v0, :cond_6

    .line 2894
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_8

    if-eqz p1, :cond_5

    .line 2896
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 2897
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->logFlagSecure()V

    return-void

    .line 2899
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2900
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->logFlagSecure()V

    return-void

    :cond_6
    if-eqz p1, :cond_7

    .line 2905
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2906
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->logFlagSecure()V

    goto :goto_2

    .line 2908
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2909
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->logFlagSecure()V

    .line 2912
    :goto_2
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, v1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2914
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_8
    :goto_3
    return-void
.end method

.method public attachedToParent()Z
    .locals 2

    .line 2758
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->ATTACH_TO_FRAGMENT:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2759
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public cancelSwipeToReply()V
    .locals 3

    .line 1958
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyBackAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1959
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->inSwipeToDissmissMode:Z

    .line 1960
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->allowSwipeToReply:Z

    .line 1961
    iget v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyOffset:F

    const/4 v2, 0x2

    new-array v2, v2, [F

    aput v1, v2, v0

    const/4 v0, 0x0

    const/4 v1, 0x1

    aput v0, v2, v1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyBackAnimator:Landroid/animation/ValueAnimator;

    .line 1962
    new-instance v1, Lorg/telegram/ui/Stories/StoryViewer$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/StoryViewer$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Stories/StoryViewer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1971
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyBackAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Stories/StoryViewer$8;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/StoryViewer$8;-><init>(Lorg/telegram/ui/Stories/StoryViewer;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1983
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyBackAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1984
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyBackAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1985
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyBackAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method public cancelSwipeToViews(Z)V
    .locals 5

    .line 1858
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToViewsAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1861
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->realKeyboardHeight:I

    if-eqz v0, :cond_1

    .line 1862
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->selfStoryViewsView:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    return-void

    .line 1865
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->allowSelfStoriesView:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->selfStoriesViewsOffset:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    .line 1866
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->locker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {v0}, Lorg/telegram/messenger/AnimationNotificationsLocker;->lock()V

    if-nez p1, :cond_4

    .line 1867
    iget v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->selfStoriesViewsOffset:F

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->selfStoryViewsView:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    iget v3, v2, Lorg/telegram/ui/Stories/SelfStoryViewsView;->maxSelfStoriesViewsOffset:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v4, v3, v0

    .line 1868
    iput v4, p0, Lorg/telegram/ui/Stories/StoryViewer;->selfStoriesViewsOffset:F

    sub-float/2addr v3, v0

    .line 1869
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Stories/SelfStoryViewsView;->setOffset(F)V

    .line 1871
    :cond_4
    iget v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->selfStoriesViewsOffset:F

    if-eqz p1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->selfStoryViewsView:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    iget v1, v1, Lorg/telegram/ui/Stories/SelfStoryViewsView;->maxSelfStoriesViewsOffset:F

    :cond_5
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToViewsAnimator:Landroid/animation/ValueAnimator;

    .line 1872
    new-instance v1, Lorg/telegram/ui/Stories/StoryViewer$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/StoryViewer$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/StoryViewer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1880
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToViewsAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Stories/StoryViewer$7;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Stories/StoryViewer$7;-><init>(Lorg/telegram/ui/Stories/StoryViewer;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0x15e

    if-eqz p1, :cond_6

    .line 1894
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToViewsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1895
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToViewsAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_2

    .line 1897
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToViewsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1898
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToViewsAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1900
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToViewsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public checkNavBarColor()V
    .locals 2

    .line 2734
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->ATTACH_TO_FRAGMENT:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2735
    invoke-virtual {v0, v1, v1, v1}, Lorg/telegram/ui/LaunchActivity;->checkSystemBarColors(ZZZ)V

    :cond_0
    return-void
.end method

.method public checkSelfStoriesView()V
    .locals 5

    .line 1905
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->selfStoryViewsView:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1906
    new-instance v0, Lorg/telegram/ui/Stories/SelfStoryViewsView;

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lorg/telegram/ui/Stories/SelfStoryViewsView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Stories/StoryViewer;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->selfStoryViewsView:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    .line 1907
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 1909
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1911
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-eqz v2, :cond_2

    .line 1912
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1913
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1914
    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1916
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->selfStoryViewsView:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-wide v3, v3, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->dialogId:J

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->getListPosition()I

    move-result v0

    invoke-virtual {v1, v3, v4, v2, v0}, Lorg/telegram/ui/Stories/SelfStoryViewsView;->setItems(JLjava/util/ArrayList;I)V

    return-void

    .line 1918
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->selfStoryViewsView:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->getCurrentPeer()J

    move-result-wide v2

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->getStoryItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->getSelectedPosition()I

    move-result v0

    invoke-virtual {v1, v2, v3, v4, v0}, Lorg/telegram/ui/Stories/SelfStoryViewsView;->setItems(JLjava/util/ArrayList;I)V

    :cond_3
    return-void
.end method

.method public clearDraft(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 3030
    :cond_0
    sget-object v0, Lorg/telegram/ui/Stories/StoryViewer;->replyDrafts:Landroid/util/LongSparseArray;

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/StoryViewer;->draftHash(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->remove(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public close(Z)V
    .locals 1

    .line 2677
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 2678
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isClosed:Z

    .line 2679
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->invalidateOutRect:Z

    .line 2680
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->updatePlayingMode()V

    .line 2681
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->startCloseAnimation(Z)V

    .line 2682
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->unreadStateChanged:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2683
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->unreadStateChanged:Z

    :cond_0
    return-void
.end method

.method public closeKeyboardOrEmoji()Z
    .locals 2

    .line 2331
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2334
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2336
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->closeKeyboardOrEmoji()Z

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 7

    .line 2941
    sget p2, Lorg/telegram/messenger/NotificationCenter;->storiesListUpdated:I

    const/4 v0, 0x0

    if-ne p1, p2, :cond_2

    .line 2942
    aget-object p1, p3, v0

    check-cast p1, Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    .line 2943
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-ne p2, p1, :cond_e

    .line 2944
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    .line 2945
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    iget-object p2, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-wide v1, p2, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->dialogId:J

    invoke-virtual {p2}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->getDays()Ljava/util/ArrayList;

    move-result-object p2

    iget p3, p0, Lorg/telegram/ui/Stories/StoryViewer;->currentAccount:I

    invoke-virtual {p1, v1, v2, p2, p3}, Lorg/telegram/ui/Stories/StoriesViewPager;->setDays(JLjava/util/ArrayList;I)V

    .line 2946
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->selfStoryViewsView:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    if-eqz p1, :cond_e

    .line 2947
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/SelfStoryViewsView;->getSelectedStory()Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    move-result-object p1

    .line 2948
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    move p3, v0

    .line 2950
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    if-eqz p1, :cond_0

    .line 2951
    iget v1, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget v2, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    if-ne v1, v2, :cond_0

    move p3, v0

    .line 2954
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2956
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->selfStoryViewsView:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-wide v0, v0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->dialogId:J

    invoke-virtual {p1, v0, v1, p2, p3}, Lorg/telegram/ui/Stories/SelfStoryViewsView;->setItems(JLjava/util/ArrayList;I)V

    return-void

    .line 2959
    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    const/4 v1, 0x1

    if-ne p1, p2, :cond_9

    .line 2960
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->placeProvider:Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;

    instance-of p2, p1, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;

    if-eqz p2, :cond_8

    .line 2961
    check-cast p1, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;

    .line 2962
    iget-boolean p2, p1, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->hasPaginationParams:Z

    if-eqz p2, :cond_e

    iget-boolean p2, p1, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->onlySelfStories:Z

    if-eqz p2, :cond_3

    goto/16 :goto_5

    .line 2965
    :cond_3
    iget p2, p0, Lorg/telegram/ui/Stories/StoryViewer;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object p2

    .line 2966
    iget-boolean p3, p1, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->hiddedStories:Z

    if-eqz p3, :cond_4

    invoke-virtual {p2}, Lorg/telegram/ui/Stories/StoriesController;->getHiddenList()Ljava/util/ArrayList;

    move-result-object p3

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Lorg/telegram/ui/Stories/StoriesController;->getDialogListStories()Ljava/util/ArrayList;

    move-result-object p3

    .line 2968
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/StoriesViewPager;->getDialogIds()Ljava/util/ArrayList;

    move-result-object v2

    move v3, v0

    .line 2969
    :goto_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_7

    .line 2970
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    .line 2971
    iget-object v4, v4, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v4}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v4

    .line 2972
    iget-boolean v6, p1, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->onlyUnreadStories:Z

    if-eqz v6, :cond_5

    invoke-virtual {p2, v4, v5}, Lorg/telegram/ui/Stories/StoriesController;->hasUnreadStories(J)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_3

    .line 2975
    :cond_5
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 2976
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v1

    :cond_6
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    if-eqz v3, :cond_8

    .line 2981
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 2984
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->selfStoryViewsView:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    if-eqz p1, :cond_e

    .line 2985
    iget-object p1, p1, Lorg/telegram/ui/Stories/SelfStoryViewsView;->selfStoriesPreviewView:Lorg/telegram/ui/Stories/SelfStoriesPreviewView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->update()V

    return-void

    .line 2987
    :cond_9
    sget p2, Lorg/telegram/messenger/NotificationCenter;->openArticle:I

    if-eq p1, p2, :cond_b

    sget v2, Lorg/telegram/messenger/NotificationCenter;->articleClosed:I

    if-ne p1, v2, :cond_a

    goto :goto_4

    .line 3003
    :cond_a
    sget p2, Lorg/telegram/messenger/NotificationCenter;->storyDeleted:I

    if-ne p1, p2, :cond_e

    .line 3004
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 3005
    aget-object p3, p3, v1

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 3006
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->singleStory:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v0, :cond_e

    iget-wide v2, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    cmp-long p1, v2, p1

    if-nez p1, :cond_e

    iget p1, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    if-ne p1, p3, :cond_e

    .line 3007
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->singleStoryDeleted:Z

    return-void

    .line 2988
    :cond_b
    :goto_4
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->updatePlayingMode()V

    if-ne p1, p2, :cond_d

    .line 2990
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->playerHolder:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    if-eqz p1, :cond_c

    .line 2991
    iget-wide p1, p1, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->currentPosition:J

    iput-wide p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->playerSavedPosition:J

    .line 2992
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->playerHolder:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->release(Ljava/lang/Runnable;)Z

    .line 2993
    iput-object p2, p0, Lorg/telegram/ui/Stories/StoryViewer;->playerHolder:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    return-void

    :cond_c
    const-wide/16 p1, 0x0

    .line 2995
    iput-wide p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->playerSavedPosition:J

    return-void

    .line 2997
    :cond_d
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->paused:Z

    if-nez p1, :cond_e

    .line 2998
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 3000
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePosition()V

    :cond_e
    :goto_5
    return-void
.end method

.method public dismiss()V
    .locals 1

    const/4 v0, 0x1

    .line 2695
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/StoryViewer;->close(Z)V

    return-void
.end method

.method public synthetic dismiss(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet$-CC;->$default$dismiss(Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;Z)V

    return-void
.end method

.method public dismissVisibleDialogs()V
    .locals 2

    .line 2830
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->currentDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 2831
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2833
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->currentSheet:Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;

    if-eqz v0, :cond_1

    .line 2834
    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;->dismiss()V

    .line 2836
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2838
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2839
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->dismiss()V

    .line 2841
    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->shareAlert:Lorg/telegram/ui/Components/ShareAlert;

    if-eqz v1, :cond_3

    .line 2842
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ShareAlert;->dismiss()V

    .line 2844
    :cond_3
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->needEnterText()Z

    :cond_4
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)V
    .locals 2

    .line 2824
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x19

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 2825
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->dispatchVolumeEvent(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public doOnAnimationReady(Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2935
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->doOnAnimationReadyRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public synthetic getBulletinFactory()Lorg/telegram/ui/Components/BulletinFactory;
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet$-CC;->$default$getBulletinFactory(Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    return-object v0
.end method

.method public getContainerForBulletin()Landroid/widget/FrameLayout;
    .locals 1

    .line 2802
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2804
    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;
    .locals 1

    .line 2030
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2033
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v0

    return-object v0
.end method

.method public getDraft(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;)Ljava/lang/CharSequence;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    .line 3020
    const-string v1, ""

    if-eqz v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 3023
    :cond_0
    sget-object v0, Lorg/telegram/ui/Stories/StoryViewer;->replyDrafts:Landroid/util/LongSparseArray;

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/StoryViewer;->draftHash(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2, v1}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    return-object p1

    :cond_1
    :goto_0
    return-object v1
.end method

.method public getNavigationBarColor(I)I
    .locals 2

    const/high16 v0, -0x1000000

    .line 2700
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryViewer;->getBlackoutAlpha()F

    move-result v1

    invoke-static {p1, v0, v1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    return p1
.end method

.method public getProgressToSelfViews()F
    .locals 1

    .line 2849
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->selfStoryViewsView:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2852
    :cond_0
    iget v0, v0, Lorg/telegram/ui/Stories/SelfStoryViewsView;->progressToOpen:F

    return v0
.end method

.method public getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 1

    .line 2793
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object v0
.end method

.method public getStoryRect(Landroid/graphics/RectF;)Z
    .locals 7

    .line 1990
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1993
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1994
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    if-nez v2, :cond_1

    goto/16 :goto_2

    .line 1997
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    .line 1998
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v2

    .line 1999
    :goto_1
    iget v3, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissHorizontalOffset:F

    add-float/2addr v3, v1

    iget-object v4, p0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    .line 2000
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v4

    add-float/2addr v3, v4

    iget v4, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissOffset:F

    add-float/2addr v4, v2

    iget-object v5, p0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    .line 2001
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v5

    add-float/2addr v4, v5

    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v5

    add-float/2addr v4, v5

    iget v5, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissHorizontalOffset:F

    add-float/2addr v1, v5

    iget-object v5, p0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    .line 2002
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v1, v5

    iget-object v5, p0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    sub-float/2addr v1, v5

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    sub-float/2addr v1, v5

    iget v5, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissOffset:F

    add-float/2addr v2, v5

    iget-object v5, p0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    .line 2003
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v2, v5

    iget-object v5, p0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    sub-float/2addr v2, v5

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    sub-int/2addr v5, v0

    int-to-float v0, v5

    sub-float/2addr v2, v0

    .line 1999
    invoke-virtual {p1, v3, v4, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_2
    return v1
.end method

.method public getWindowView()Landroid/view/View;
    .locals 1

    .line 2690
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    return-object v0
.end method

.method public instantClose()V
    .locals 4

    .line 2489
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isShowing:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 2492
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 2493
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isClosed:Z

    const/4 v1, 0x0

    .line 2494
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->fullyVisible:Z

    const/4 v2, 0x0

    .line 2495
    iput v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    .line 2496
    iput v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->progressToDismiss:F

    .line 2497
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->updatePlayingMode()V

    .line 2498
    iput v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->fromY:F

    iput v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->fromX:F

    .line 2499
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v2, :cond_1

    .line 2500
    invoke-virtual {v2, v0, v0}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 2502
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v2, :cond_2

    .line 2503
    invoke-virtual {v2, v0, v0}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 2505
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    const/4 v2, 0x0

    iput-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    .line 2506
    iput-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    .line 2507
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    if-eqz v0, :cond_3

    .line 2508
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/HwFrameLayout;->disableHwAcceleration()V

    .line 2510
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->locker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {v0}, Lorg/telegram/messenger/AnimationNotificationsLocker;->unlock()V

    .line 2511
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->currentPlayerScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    if-eqz v0, :cond_4

    .line 2512
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->invalidate()V

    .line 2514
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->release()V

    .line 2515
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->ATTACH_TO_FRAGMENT:Z

    if-eqz v0, :cond_5

    .line 2516
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    goto :goto_0

    .line 2518
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-interface {v0, v3}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 2520
    :goto_0
    iput-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    .line 2521
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->isShowing:Z

    .line 2522
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->foundViewToClose:Z

    .line 2523
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->checkNavBarColor()V

    .line 2524
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->onCloseListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_6

    .line 2525
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2526
    iput-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->onCloseListener:Ljava/lang/Runnable;

    :cond_6
    :goto_1
    return-void
.end method

.method public isAttachedLightStatusBar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isFullyVisible()Z
    .locals 1

    .line 2777
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->fullyVisible:Z

    return v0
.end method

.method public isPaused()Z
    .locals 2

    .line 2242
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isPopupVisible:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isTranslating:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isBulletinVisible:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isCaption:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isWaiting:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isInTouchMode:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->keyboardVisible:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->currentDialog:Landroid/app/Dialog;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->currentSheet:Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->allowTouchesByViewpager:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isClosed:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isRecording:Z

    if-nez v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->selfStoriesViewsOffset:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isHintVisible:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isSwiping:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->USE_SURFACE_VIEW:Z

    if-nez v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isOverlayVisible:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isInTextSelectionMode:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isLikesReactions:Z

    if-nez v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->progressToDismiss:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesIntro:Lorg/telegram/ui/Stories/StoriesIntro;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->ATTACH_TO_FRAGMENT:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_1

    .line 2264
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLastStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v0

    if-eq v0, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isShown()Z
    .locals 1

    .line 2730
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isClosed:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public listenToAttachedSheet(Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;)Z
    .locals 1

    .line 1944
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->currentSheet:Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;

    .line 1945
    new-instance v0, Lorg/telegram/ui/Stories/StoryViewer$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/StoryViewer$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/StoryViewer;)V

    invoke-interface {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;->setOnDismissListener(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 2817
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2819
    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Stories/PeerStoriesView;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onAttachedBackPressed()Z
    .locals 2

    .line 2714
    iget v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->selfStoriesViewsOffset:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2715
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->selfStoryViewsView:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/SelfStoryViewsView;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 2718
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/StoryViewer;->cancelSwipeToViews(Z)V

    return v1

    .line 2720
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->closeKeyboardOrEmoji()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 2723
    :cond_2
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Stories/StoryViewer;->close(Z)V

    return v1
.end method

.method public onPause()V
    .locals 4

    const/4 v0, 0x1

    .line 3054
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->paused:Z

    .line 3055
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->playerHolder:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3056
    invoke-virtual {v0, v1}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->release(Ljava/lang/Runnable;)Z

    .line 3057
    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->playerHolder:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    .line 3059
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->pipLiveView:Lorg/telegram/ui/Stories/recorder/LivePlayerView;

    if-nez v0, :cond_3

    .line 3060
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->liveView:Lorg/telegram/ui/Stories/recorder/LivePlayerView;

    if-eqz v0, :cond_1

    const-wide/16 v2, 0x0

    .line 3061
    invoke-virtual {v0, v2, v3, v1}, Lorg/telegram/ui/Stories/recorder/LivePlayerView;->setScope(JLorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;)V

    .line 3063
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->livePlayer:Lorg/telegram/ui/Stories/LivePlayer;

    if-eqz v0, :cond_3

    .line 3064
    iget-boolean v2, v0, Lorg/telegram/ui/Stories/LivePlayer;->outgoing:Z

    if-eqz v2, :cond_2

    .line 3065
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/LivePlayer;->setDisplaySink(Lorg/webrtc/VideoSink;)V

    goto :goto_0

    .line 3067
    :cond_2
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/LivePlayer;->destroy()V

    .line 3069
    :goto_0
    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->livePlayer:Lorg/telegram/ui/Stories/LivePlayer;

    .line 3072
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesIntro:Lorg/telegram/ui/Stories/StoriesIntro;

    if-eqz v0, :cond_4

    .line 3073
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesIntro;->stopAnimation()V

    :cond_4
    return-void
.end method

.method public onResume()V
    .locals 2

    const/4 v0, 0x0

    .line 3038
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->paused:Z

    .line 3039
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3040
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3042
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePosition()V

    .line 3045
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesIntro:Lorg/telegram/ui/Stories/StoriesIntro;

    if-eqz v1, :cond_1

    .line 3046
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Stories/StoriesIntro;->startAnimation(Z)V

    .line 3048
    :cond_1
    invoke-static {}, Lorg/telegram/ui/Stories/LiveStoryPipOverlay;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3049
    invoke-static {}, Lorg/telegram/ui/Stories/LiveStoryPipOverlay;->dismiss()V

    :cond_2
    return-void
.end method

.method public open(ILandroid/content/Context;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Ljava/util/ArrayList;ILorg/telegram/ui/Stories/StoriesController$StoriesList;Lorg/telegram/tgnet/tl/TL_stories$PeerStories;Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;Z)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v0, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p6

    move-object/from16 v2, p7

    .line 379
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->isContextSafe(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 380
    iget-object v0, v1, Lorg/telegram/ui/Stories/StoryViewer;->doOnAnimationReadyRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void

    .line 383
    :cond_0
    iget-object v4, v1, Lorg/telegram/ui/Stories/StoryViewer;->openCloseAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_1

    .line 384
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v4, 0x0

    .line 385
    iput-object v4, v1, Lorg/telegram/ui/Stories/StoryViewer;->openCloseAnimator:Landroid/animation/ValueAnimator;

    .line 387
    :cond_1
    iget-boolean v4, v1, Lorg/telegram/ui/Stories/StoryViewer;->isShowing:Z

    if-eqz v4, :cond_2

    .line 388
    iget-object v0, v1, Lorg/telegram/ui/Stories/StoryViewer;->doOnAnimationReadyRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_2
    const/high16 v4, 0x3f800000    # 1.0f

    .line 391
    invoke-virtual {v1, v4}, Lorg/telegram/ui/Stories/StoryViewer;->setSpeed(F)V

    .line 392
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v4, :cond_3

    iget-boolean v4, v1, Lorg/telegram/ui/Stories/StoryViewer;->fromBottomSheet:Z

    if-nez v4, :cond_3

    move v4, v8

    goto :goto_0

    :cond_3
    move v4, v9

    :goto_0
    iput-boolean v4, v1, Lorg/telegram/ui/Stories/StoryViewer;->ATTACH_TO_FRAGMENT:Z

    .line 393
    sget-boolean v5, Lorg/telegram/messenger/SharedConfig;->useSurfaceInStories:Z

    if-eqz v5, :cond_4

    if-eqz v4, :cond_4

    move v4, v8

    goto :goto_1

    :cond_4
    move v4, v9

    :goto_1
    iput-boolean v4, v1, Lorg/telegram/ui/Stories/StoryViewer;->USE_SURFACE_VIEW:Z

    if-nez v0, :cond_5

    move v4, v9

    goto :goto_2

    .line 394
    :cond_5
    iget v4, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->messageId:I

    :goto_2
    iput v4, v1, Lorg/telegram/ui/Stories/StoryViewer;->messageId:I

    if-eqz v0, :cond_6

    if-nez v7, :cond_6

    if-nez v2, :cond_6

    move v4, v8

    goto :goto_3

    :cond_6
    move v4, v9

    .line 395
    :goto_3
    iput-boolean v4, v1, Lorg/telegram/ui/Stories/StoryViewer;->isSingleStory:Z

    .line 396
    iput-boolean v9, v1, Lorg/telegram/ui/Stories/StoryViewer;->singleStoryDeleted:Z

    if-eqz v0, :cond_7

    .line 398
    iput-object v0, v1, Lorg/telegram/ui/Stories/StoryViewer;->singleStory:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    .line 399
    sput-object v0, Lorg/telegram/ui/Stories/StoryViewer;->lastStoryItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    .line 401
    :cond_7
    iput-object v7, v1, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    .line 402
    iput-object v2, v1, Lorg/telegram/ui/Stories/StoryViewer;->overrideUserStories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    move-object/from16 v0, p8

    .line 403
    iput-object v0, v1, Lorg/telegram/ui/Stories/StoryViewer;->placeProvider:Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;

    move/from16 v0, p9

    .line 404
    iput-boolean v0, v1, Lorg/telegram/ui/Stories/StoryViewer;->reversed:Z

    move/from16 v0, p1

    .line 405
    iput v0, v1, Lorg/telegram/ui/Stories/StoryViewer;->currentAccount:I

    const/4 v10, 0x0

    .line 406
    iput v10, v1, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissOffset:F

    .line 407
    iput v10, v1, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissHorizontalOffset:F

    .line 408
    iget-object v0, v1, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    if-eqz v0, :cond_8

    .line 409
    invoke-virtual {v0, v10}, Lorg/telegram/ui/Stories/StoriesViewPager;->setHorizontalProgressToDismiss(F)V

    .line 410
    iget-object v0, v1, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    iput v9, v0, Lorg/telegram/ui/Stories/StoriesViewPager;->currentState:I

    .line 412
    :cond_8
    iput v10, v1, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyProgress:F

    .line 413
    iput v10, v1, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyOffset:F

    .line 414
    iput-boolean v9, v1, Lorg/telegram/ui/Stories/StoryViewer;->allowSwipeToReply:Z

    .line 415
    iput v10, v1, Lorg/telegram/ui/Stories/StoryViewer;->progressToDismiss:F

    .line 416
    iput-boolean v8, v1, Lorg/telegram/ui/Stories/StoryViewer;->isShowing:Z

    .line 417
    iput-boolean v9, v1, Lorg/telegram/ui/Stories/StoryViewer;->isLongpressed:Z

    .line 418
    iput-boolean v9, v1, Lorg/telegram/ui/Stories/StoryViewer;->isTranslating:Z

    .line 419
    iget-object v0, v1, Lorg/telegram/ui/Stories/StoryViewer;->savedPositions:Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/LongSparseIntArray;->clear()V

    .line 420
    iget-object v0, v1, Lorg/telegram/ui/Stories/StoryViewer;->longPressRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 421
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/Stories/StoryViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v11, -0x1

    .line 422
    iput v11, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v2, -0x3

    .line 423
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 424
    iput v11, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v2, 0x33

    .line 425
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v2, 0x63

    .line 426
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x10

    .line 428
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 430
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v12, v2, :cond_9

    .line 431
    invoke-static {v0, v8}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticApiModelOutline2;->m(Landroid/view/WindowManager$LayoutParams;I)V

    :cond_9
    const v2, -0x7ffefe80

    .line 434
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 440
    iput-boolean v9, v1, Lorg/telegram/ui/Stories/StoryViewer;->isClosed:Z

    .line 441
    iput-boolean v9, v1, Lorg/telegram/ui/Stories/StoryViewer;->unreadStateChanged:Z

    .line 443
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v13

    .line 444
    iget-object v0, v1, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-nez v0, :cond_a

    .line 445
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v2, Lorg/telegram/ui/Stories/StoryViewer$1;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Stories/StoryViewer$1;-><init>(Lorg/telegram/ui/Stories/StoryViewer;)V

    invoke-direct {v0, v2}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/StoryViewer;->gestureDetector:Landroid/view/GestureDetector;

    .line 564
    new-instance v0, Lorg/telegram/ui/Stories/StoryViewer$2;

    invoke-direct {v0, v1, v3, v13}, Lorg/telegram/ui/Stories/StoryViewer$2;-><init>(Lorg/telegram/ui/Stories/StoryViewer;Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    .line 1187
    :cond_a
    iget-object v0, v1, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    if-nez v0, :cond_c

    .line 1188
    new-instance v0, Lorg/telegram/ui/Stories/StoryViewer$3;

    invoke-direct {v0, v1, v3}, Lorg/telegram/ui/Stories/StoryViewer$3;-><init>(Lorg/telegram/ui/Stories/StoryViewer;Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    .line 1276
    new-instance v0, Lorg/telegram/ui/Stories/StoryViewer$4;

    iget v2, v1, Lorg/telegram/ui/Stories/StoryViewer;->currentAccount:I

    iget-object v5, v1, Lorg/telegram/ui/Stories/StoryViewer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object/from16 v4, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/StoryViewer$4;-><init>(Lorg/telegram/ui/Stories/StoryViewer;ILandroid/content/Context;Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    .line 1284
    new-instance v2, Lorg/telegram/ui/Stories/StoryViewer$5;

    invoke-direct {v2, v1, v7, v6, v3}, Lorg/telegram/ui/Stories/StoryViewer$5;-><init>(Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/Stories/StoriesController$StoriesList;Ljava/util/ArrayList;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/StoriesViewPager;->setDelegate(Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;)V

    .line 1719
    iget-object v0, v1, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    iget-object v2, v1, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-static {v11, v11, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1720
    new-instance v0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-direct {v0, v3}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/StoryViewer;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    .line 1721
    iget-boolean v0, v1, Lorg/telegram/ui/Stories/StoryViewer;->USE_SURFACE_VIEW:Z

    if-eqz v0, :cond_b

    .line 1722
    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, v3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/StoryViewer;->surfaceView:Landroid/view/SurfaceView;

    .line 1723
    invoke-virtual {v0, v9}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    .line 1724
    iget-object v0, v1, Lorg/telegram/ui/Stories/StoryViewer;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v9}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 1726
    iget-object v0, v1, Lorg/telegram/ui/Stories/StoryViewer;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object v2, v1, Lorg/telegram/ui/Stories/StoryViewer;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_4

    .line 1728
    :cond_b
    new-instance v0, Lorg/telegram/ui/Stories/StoryViewer$6;

    invoke-direct {v0, v1, v3}, Lorg/telegram/ui/Stories/StoryViewer$6;-><init>(Lorg/telegram/ui/Stories/StoryViewer;Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/StoryViewer;->textureView:Landroid/view/TextureView;

    .line 1737
    iget-object v2, v1, Lorg/telegram/ui/Stories/StoryViewer;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1740
    :goto_4
    new-instance v0, Lorg/telegram/ui/Stories/recorder/LivePlayerView;

    iget v2, v1, Lorg/telegram/ui/Stories/StoryViewer;->currentAccount:I

    invoke-direct {v0, v3, v2, v9}, Lorg/telegram/ui/Stories/recorder/LivePlayerView;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/StoryViewer;->liveView:Lorg/telegram/ui/Stories/recorder/LivePlayerView;

    const/16 v2, 0x8

    .line 1741
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1742
    iget-object v0, v1, Lorg/telegram/ui/Stories/StoryViewer;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object v2, v1, Lorg/telegram/ui/Stories/StoryViewer;->liveView:Lorg/telegram/ui/Stories/recorder/LivePlayerView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1744
    new-instance v0, Lorg/telegram/ui/Stories/StoriesVolumeControl;

    invoke-direct {v0, v3}, Lorg/telegram/ui/Stories/StoriesVolumeControl;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/StoryViewer;->volumeControl:Lorg/telegram/ui/Stories/StoriesVolumeControl;

    .line 1745
    iget-object v2, v1, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    const/high16 v19, 0x40800000    # 4.0f

    const/16 v20, 0x0

    const/4 v14, -0x1

    const/high16 v15, -0x40800000    # -1.0f

    const/16 v16, 0x0

    const/high16 v17, 0x40800000    # 4.0f

    const/16 v18, 0x0

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1747
    :cond_c
    iget-object v0, v1, Lorg/telegram/ui/Stories/StoryViewer;->liveView:Lorg/telegram/ui/Stories/recorder/LivePlayerView;

    if-eqz v0, :cond_d

    .line 1748
    iget v2, v1, Lorg/telegram/ui/Stories/StoryViewer;->currentAccount:I

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/LivePlayerView;->setAccount(I)V

    .line 1750
    :cond_d
    iget-object v0, v1, Lorg/telegram/ui/Stories/StoryViewer;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    .line 1751
    iget-object v0, v1, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v2, v1, Lorg/telegram/ui/Stories/StoryViewer;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1752
    iget-object v0, v1, Lorg/telegram/ui/Stories/StoryViewer;->surfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_e

    const/4 v2, 0x4

    .line 1753
    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1756
    :cond_e
    iget-object v0, v1, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    .line 1757
    iget-object v0, v1, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v2, v1, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1758
    iget-object v0, v1, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 1760
    iget-boolean v0, v1, Lorg/telegram/ui/Stories/StoryViewer;->isSingleStory:Z

    if-eqz v0, :cond_f

    .line 1761
    invoke-direct {v1}, Lorg/telegram/ui/Stories/StoryViewer;->updateTransitionParams()V

    :cond_f
    if-eqz v7, :cond_10

    .line 1764
    iget-object v0, v1, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    iget-wide v4, v7, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->dialogId:J

    invoke-virtual {v7}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->getDays()Ljava/util/ArrayList;

    move-result-object v2

    iget v6, v1, Lorg/telegram/ui/Stories/StoryViewer;->currentAccount:I

    invoke-virtual {v0, v4, v5, v2, v6}, Lorg/telegram/ui/Stories/StoriesViewPager;->setDays(JLjava/util/ArrayList;I)V

    goto :goto_5

    .line 1766
    :cond_10
    iget-object v0, v1, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    iget v2, v1, Lorg/telegram/ui/Stories/StoryViewer;->currentAccount:I

    move/from16 v4, p5

    invoke-virtual {v0, v6, v2, v4}, Lorg/telegram/ui/Stories/StoriesViewPager;->setPeerIds(Ljava/util/ArrayList;II)V

    .line 1769
    :goto_5
    const-string/jumbo v0, "window"

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, v1, Lorg/telegram/ui/Stories/StoryViewer;->windowManager:Landroid/view/WindowManager;

    if-eqz v13, :cond_11

    .line 1770
    invoke-virtual {v13}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLayoutContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v13}, Lorg/telegram/ui/ActionBar/BaseFragment;->isSupportEdgeToEdge()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1771
    :cond_11
    iput-boolean v9, v1, Lorg/telegram/ui/Stories/StoryViewer;->ATTACH_TO_FRAGMENT:Z

    .line 1773
    :cond_12
    iget-boolean v0, v1, Lorg/telegram/ui/Stories/StoryViewer;->ATTACH_TO_FRAGMENT:Z

    if-eqz v0, :cond_13

    if-eqz v13, :cond_13

    invoke-virtual {v13}, Lorg/telegram/ui/ActionBar/BaseFragment;->isSupportEdgeToEdge()Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v8

    goto :goto_6

    :cond_13
    move v0, v9

    :goto_6
    iput-boolean v0, v1, Lorg/telegram/ui/Stories/StoryViewer;->ATTACHED_FRAGMENT_IS_EDGE_TO_EDGE:Z

    .line 1774
    iget-object v0, v1, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    new-instance v2, Lorg/telegram/ui/Stories/StoryViewer$$ExternalSyntheticLambda5;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Stories/StoryViewer$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stories/StoryViewer;)V

    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 1790
    iget-boolean v0, v1, Lorg/telegram/ui/Stories/StoryViewer;->ATTACH_TO_FRAGMENT:Z

    if-eqz v0, :cond_14

    .line 1791
    iget-object v0, v1, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    .line 1792
    iget-object v0, v1, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const v3, -0xeeddcd

    invoke-virtual {v0, v3, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1793
    invoke-virtual {v13}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLayoutContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1794
    iget-boolean v0, v1, Lorg/telegram/ui/Stories/StoryViewer;->ATTACHED_FRAGMENT_IS_EDGE_TO_EDGE:Z

    if-nez v0, :cond_15

    .line 1795
    invoke-virtual {v13}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v13}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result v2

    invoke-static {v0, v2}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    goto :goto_7

    .line 1798
    :cond_14
    iget-object v0, v1, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0, v9}, Landroid/view/View;->setFocusable(Z)V

    .line 1799
    iget-object v0, v1, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {v0, v9}, Landroid/view/View;->setFocusable(Z)V

    .line 1800
    iget-object v0, v1, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    const/16 v2, 0x700

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1801
    iget-object v0, v1, Lorg/telegram/ui/Stories/StoryViewer;->windowManager:Landroid/view/WindowManager;

    iget-object v2, v1, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v3, v1, Lorg/telegram/ui/Stories/StoryViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->setPreferredMaxRefreshRate(Landroid/view/WindowManager;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 1802
    iget-object v0, v1, Lorg/telegram/ui/Stories/StoryViewer;->windowManager:Landroid/view/WindowManager;

    iget-object v2, v1, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v3, v1, Lorg/telegram/ui/Stories/StoryViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v2, v3}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x21

    if-lt v12, v0, :cond_15

    .line 1805
    iget-object v0, v1, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->findOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 1807
    new-instance v2, Lorg/telegram/ui/Stories/StoryViewer$$ExternalSyntheticLambda6;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Stories/StoryViewer$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Stories/StoryViewer;)V

    invoke-interface {v0, v9, v2}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    .line 1820
    :cond_15
    :goto_7
    iget-object v0, v1, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 1821
    sput-boolean v8, Lorg/telegram/ui/Stories/StoryViewer;->runOpenAnimationAfterLayout:Z

    .line 1823
    invoke-direct {v1}, Lorg/telegram/ui/Stories/StoryViewer;->updateTransitionParams()V

    .line 1824
    iput v10, v1, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    .line 1825
    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoryViewer;->checkNavBarColor()V

    .line 1826
    sput-boolean v8, Lorg/telegram/ui/Stories/StoryViewer;->animationInProgress:Z

    .line 1828
    invoke-direct {v1}, Lorg/telegram/ui/Stories/StoryViewer;->checkInSilentMode()V

    .line 1829
    iget-boolean v0, v1, Lorg/telegram/ui/Stories/StoryViewer;->ATTACH_TO_FRAGMENT:Z

    if-eqz v0, :cond_16

    .line 1830
    invoke-direct {v1, v8}, Lorg/telegram/ui/Stories/StoryViewer;->lockOrientation(Z)V

    .line 1833
    :cond_16
    iget-boolean v0, v1, Lorg/telegram/ui/Stories/StoryViewer;->ATTACH_TO_FRAGMENT:Z

    if-nez v0, :cond_17

    .line 1834
    sget-object v0, Lorg/telegram/ui/Stories/StoryViewer;->globalInstances:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    if-eqz v13, :cond_18

    .line 1837
    invoke-virtual {v13}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_18
    return-void
.end method

.method public open(ILandroid/content/Context;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;)V
    .locals 11

    if-nez p3, :cond_0

    goto :goto_0

    .line 326
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->currentAccount:I

    .line 327
    iget-wide v0, p3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v4, p3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 330
    :cond_1
    iget-wide v0, p3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    neg-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_0
    return-void

    .line 333
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 334
    iget-wide v0, p3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v9, p4

    .line 335
    invoke-virtual/range {v1 .. v10}, Lorg/telegram/ui/Stories/StoryViewer;->open(ILandroid/content/Context;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Ljava/util/ArrayList;ILorg/telegram/ui/Stories/StoriesController$StoriesList;Lorg/telegram/tgnet/tl/TL_stories$PeerStories;Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;Z)V

    return-void
.end method

.method public open(Landroid/content/Context;ILorg/telegram/ui/Stories/StoriesController$StoriesList;Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;)V
    .locals 10

    .line 348
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->currentAccount:I

    .line 349
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 350
    iget-wide v0, p3, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->dialogId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    iput p2, p0, Lorg/telegram/ui/Stories/StoryViewer;->dayStoryId:I

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v6, p3

    move-object v8, p4

    .line 352
    invoke-virtual/range {v1 .. v9}, Lorg/telegram/ui/Stories/StoryViewer;->open(Landroid/content/Context;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Ljava/util/ArrayList;ILorg/telegram/ui/Stories/StoriesController$StoriesList;Lorg/telegram/tgnet/tl/TL_stories$PeerStories;Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;Z)V

    return-void
.end method

.method public open(Landroid/content/Context;JLorg/telegram/ui/Stories/StoryViewer$PlaceProvider;)V
    .locals 10

    .line 339
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->currentAccount:I

    .line 341
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 342
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    iget v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/telegram/ui/Stories/StoriesController;->checkExpiredStories(J)V

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v8, p4

    .line 344
    invoke-virtual/range {v1 .. v9}, Lorg/telegram/ui/Stories/StoryViewer;->open(Landroid/content/Context;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Ljava/util/ArrayList;ILorg/telegram/ui/Stories/StoriesController$StoriesList;Lorg/telegram/tgnet/tl/TL_stories$PeerStories;Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;Z)V

    return-void
.end method

.method public open(Landroid/content/Context;Lorg/telegram/tgnet/tl/TL_stories$PeerStories;Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;)V
    .locals 10

    if-eqz p2, :cond_0

    .line 356
    iget-object v0, p2, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v1, p0

    goto :goto_0

    .line 360
    :cond_1
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->currentAccount:I

    .line 361
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 362
    iget-object v0, p2, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    iget-object v0, p2, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v7, p2

    move-object v8, p3

    invoke-virtual/range {v1 .. v9}, Lorg/telegram/ui/Stories/StoryViewer;->open(Landroid/content/Context;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Ljava/util/ArrayList;ILorg/telegram/ui/Stories/StoriesController$StoriesList;Lorg/telegram/tgnet/tl/TL_stories$PeerStories;Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;Z)V

    return-void

    .line 357
    :goto_0
    iget-object p1, v1, Lorg/telegram/ui/Stories/StoryViewer;->doOnAnimationReadyRunnables:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public open(Landroid/content/Context;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;ILorg/telegram/ui/Stories/StoriesController$StoriesList;ZLorg/telegram/ui/Stories/StoryViewer$PlaceProvider;)V
    .locals 9

    .line 367
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->currentAccount:I

    .line 368
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 369
    iget-wide v1, p4, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->dialogId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    iput p3, p0, Lorg/telegram/ui/Stories/StoryViewer;->dayStoryId:I

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    move v8, p5

    move-object v7, p6

    .line 371
    invoke-virtual/range {v0 .. v8}, Lorg/telegram/ui/Stories/StoryViewer;->open(Landroid/content/Context;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Ljava/util/ArrayList;ILorg/telegram/ui/Stories/StoriesController$StoriesList;Lorg/telegram/tgnet/tl/TL_stories$PeerStories;Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;Z)V

    return-void
.end method

.method public open(Landroid/content/Context;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Ljava/util/ArrayList;ILorg/telegram/ui/Stories/StoriesController$StoriesList;Lorg/telegram/tgnet/tl/TL_stories$PeerStories;Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;Z)V
    .locals 10

    .line 376
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/ui/Stories/StoryViewer;->open(ILandroid/content/Context;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Ljava/util/ArrayList;ILorg/telegram/ui/Stories/StoriesController$StoriesList;Lorg/telegram/tgnet/tl/TL_stories$PeerStories;Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;Z)V

    return-void
.end method

.method public open(Landroid/content/Context;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;)V
    .locals 1

    .line 320
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/telegram/ui/Stories/StoryViewer;->open(ILandroid/content/Context;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;)V

    return-void
.end method

.method public openFor(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/RecyclerListView;Lorg/telegram/ui/Cells/ChatActionCell;)V
    .locals 4

    .line 2921
    invoke-virtual {p3}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p3

    if-eqz p1, :cond_1

    .line 2922
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2925
    :cond_0
    iget v0, p3, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v1, 0x18

    if-ne v0, v1, :cond_1

    .line 2926
    iget-object v0, p3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    .line 2927
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    .line 2928
    invoke-virtual {p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    iput v0, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->messageId:I

    .line 2929
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p3, p3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-static {p2}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->of(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Stories/StoriesListPlaceProvider;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lorg/telegram/ui/Stories/StoryViewer;->open(Landroid/content/Context;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public openViews()V
    .locals 3

    .line 2867
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->checkSelfStoriesView()V

    .line 2868
    new-instance v0, Lorg/telegram/ui/Stories/StoryViewer$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/StoryViewer$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Stories/StoryViewer;)V

    const-wide/16 v1, 0x1e

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public pipCreatePictureInPictureView()Landroid/view/View;
    .locals 4

    .line 3260
    new-instance v0, Lorg/telegram/ui/Stories/recorder/LivePlayerView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->liveView:Lorg/telegram/ui/Stories/recorder/LivePlayerView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->currentAccount:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/Stories/recorder/LivePlayerView;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->pipLiveView:Lorg/telegram/ui/Stories/recorder/LivePlayerView;

    return-object v0
.end method

.method public pipCreatePictureInPictureViewBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 3252
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->pipLiveView:Lorg/telegram/ui/Stories/recorder/LivePlayerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/LivePlayerView;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3255
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->pipLiveView:Lorg/telegram/ui/Stories/recorder/LivePlayerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/LivePlayerView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public pipCreatePrimaryWindowViewBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 3244
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->liveView:Lorg/telegram/ui/Stories/recorder/LivePlayerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/LivePlayerView;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3247
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->liveView:Lorg/telegram/ui/Stories/recorder/LivePlayerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/LivePlayerView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public pipHidePrimaryWindowView(Ljava/lang/Runnable;)V
    .locals 1

    .line 3266
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->pipLiveView:Lorg/telegram/ui/Stories/recorder/LivePlayerView;

    if-eqz v0, :cond_0

    .line 3267
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/LivePlayerView;->setOnFirstFrameCallback(Ljava/lang/Runnable;)V

    .line 3269
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->livePlayer:Lorg/telegram/ui/Stories/LivePlayer;

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->pipLiveView:Lorg/telegram/ui/Stories/recorder/LivePlayerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/LivePlayerView;->getSink()Lorg/webrtc/VideoSink;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/LivePlayer;->setDisplaySink(Lorg/webrtc/VideoSink;)V

    .line 3272
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->ATTACH_TO_FRAGMENT:Z

    if-eqz p1, :cond_1

    .line 3273
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    goto :goto_0

    .line 3275
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-interface {p1, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 3277
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public pipIsAvailable()Z
    .locals 2

    .line 3238
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz v0, :cond_1

    .line 3239
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->livePlayer:Lorg/telegram/ui/Stories/LivePlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->liveView:Lorg/telegram/ui/Stories/recorder/LivePlayerView;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isClosed:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public synthetic pipRenderBackground(Landroid/graphics/Canvas;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/messenger/pip/source/IPipSourceDelegate$-CC;->$default$pipRenderBackground(Lorg/telegram/messenger/pip/source/IPipSourceDelegate;Landroid/graphics/Canvas;)V

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

    .line 3282
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->pipLiveView:Lorg/telegram/ui/Stories/recorder/LivePlayerView;

    if-eqz v0, :cond_0

    .line 3283
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/LivePlayerView;->setOnFirstFrameCallback(Ljava/lang/Runnable;)V

    .line 3285
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->ATTACH_TO_FRAGMENT:Z

    if-eqz p1, :cond_1

    .line 3286
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    .line 3287
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLayoutContainer()Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 3289
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, v1}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3292
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->pipLiveView:Lorg/telegram/ui/Stories/recorder/LivePlayerView;

    if-eqz p1, :cond_2

    .line 3293
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/LivePlayerView;->release()V

    const/4 p1, 0x0

    .line 3294
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->pipLiveView:Lorg/telegram/ui/Stories/recorder/LivePlayerView;

    .line 3298
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 3300
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->livePlayer:Lorg/telegram/ui/Stories/LivePlayer;

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->liveView:Lorg/telegram/ui/Stories/recorder/LivePlayerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/LivePlayerView;->getSink()Lorg/webrtc/VideoSink;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/LivePlayer;->setDisplaySink(Lorg/webrtc/VideoSink;)V

    return-void
.end method

.method public presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    .line 2781
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2783
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->ATTACH_TO_FRAGMENT:Z

    if-eqz v1, :cond_1

    .line 2784
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    .line 2786
    :cond_1
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    const/4 p1, 0x0

    .line 2787
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->close(Z)V

    .line 2789
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryViewer;->cleanupBeforeExit()V

    return-void
.end method

.method public release()V
    .locals 5

    const/4 v0, 0x0

    .line 2640
    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->lastUri:Landroid/net/Uri;

    const/4 v1, 0x0

    .line 2641
    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/StoryViewer;->setInTouchMode(Z)V

    const/4 v2, 0x1

    .line 2642
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Stories/StoryViewer;->allowScreenshots(Z)V

    .line 2643
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->playerHolder:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    if-eqz v2, :cond_0

    .line 2644
    invoke-virtual {v2, v0}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->release(Ljava/lang/Runnable;)Z

    .line 2645
    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->playerHolder:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    .line 2647
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->liveView:Lorg/telegram/ui/Stories/recorder/LivePlayerView;

    if-eqz v2, :cond_1

    const-wide/16 v3, 0x0

    .line 2648
    invoke-virtual {v2, v3, v4, v0}, Lorg/telegram/ui/Stories/recorder/LivePlayerView;->setScope(JLorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;)V

    .line 2650
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->livePlayer:Lorg/telegram/ui/Stories/LivePlayer;

    if-eqz v2, :cond_3

    invoke-static {v2}, Lorg/telegram/ui/Stories/LiveStoryPipOverlay;->isVisible(Lorg/telegram/ui/Stories/LivePlayer;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2651
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->livePlayer:Lorg/telegram/ui/Stories/LivePlayer;

    iget-boolean v3, v2, Lorg/telegram/ui/Stories/LivePlayer;->outgoing:Z

    if-eqz v3, :cond_2

    .line 2652
    invoke-virtual {v2, v0}, Lorg/telegram/ui/Stories/LivePlayer;->setDisplaySink(Lorg/webrtc/VideoSink;)V

    goto :goto_0

    .line 2654
    :cond_2
    invoke-virtual {v2}, Lorg/telegram/ui/Stories/LivePlayer;->destroy()V

    .line 2657
    :cond_3
    :goto_0
    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->livePlayer:Lorg/telegram/ui/Stories/LivePlayer;

    move v2, v1

    .line 2658
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryViewer;->preparedPlayers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 2659
    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryViewer;->preparedPlayers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->release(Ljava/lang/Runnable;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2661
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->preparedPlayers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2662
    iget v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/StoriesController;->stopAllPollers()V

    .line 2663
    iget-boolean v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->ATTACH_TO_FRAGMENT:Z

    if-eqz v2, :cond_5

    .line 2664
    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/StoryViewer;->lockOrientation(Z)V

    .line 2666
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v1, :cond_6

    .line 2667
    invoke-virtual {v1, p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSheet(Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;)V

    .line 2670
    :cond_6
    sget-object v1, Lorg/telegram/ui/Stories/StoryViewer;->globalInstances:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2671
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->doOnAnimationReadyRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    .line 2672
    iput v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->selfStoriesViewsOffset:F

    .line 2673
    sput-object v0, Lorg/telegram/ui/Stories/StoryViewer;->lastStoryItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    return-void
.end method

.method public saveDraft(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;Ljava/lang/CharSequence;)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 3016
    :cond_0
    sget-object v0, Lorg/telegram/ui/Stories/StoryViewer;->replyDrafts:Landroid/util/LongSparseArray;

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/StoryViewer;->draftHash(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2, p4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setKeyboardHeightFromParent(I)V
    .locals 1

    .line 2765
    iget v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->realKeyboardHeight:I

    if-eq v0, p1, :cond_0

    .line 2766
    iput p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->realKeyboardHeight:I

    .line 2767
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/StoriesViewPager;->setKeyboardHeight(I)V

    .line 2768
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 2769
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->selfStoryViewsView:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    if-eqz v0, :cond_0

    .line 2770
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/SelfStoryViewsView;->setKeyboardHeight(I)V

    :cond_0
    return-void
.end method

.method public synthetic setLastVisible(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet$-CC;->$default$setLastVisible(Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;Z)V

    return-void
.end method

.method public setOnCloseListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 2238
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->onCloseListener:Ljava/lang/Runnable;

    return-void
.end method

.method public setOnDismissListener(Ljava/lang/Runnable;)V
    .locals 0

    return-void
.end method

.method public setOverlayVisible(Z)V
    .locals 0

    .line 2233
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->isOverlayVisible:Z

    .line 2234
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->updatePlayingMode()V

    return-void
.end method

.method public setSelfStoriesViewsOffset(F)V
    .locals 0

    .line 2856
    iput p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->selfStoriesViewsOffset:F

    .line 2857
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2859
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 2861
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    if-eqz p1, :cond_1

    .line 2862
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/HwFrameLayout;->invalidate()V

    :cond_1
    return-void
.end method

.method public setSpeed(F)V
    .locals 1

    .line 301
    sput p1, Lorg/telegram/ui/Stories/StoryViewer;->currentSpeed:F

    .line 302
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->playerHolder:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->setSpeed(F)V

    :cond_0
    return-void
.end method

.method public showDialog(Landroid/app/Dialog;)Z
    .locals 1

    .line 1926
    :try_start_0
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->currentDialog:Landroid/app/Dialog;

    .line 1927
    new-instance v0, Lorg/telegram/ui/Stories/StoryViewer$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/StoryViewer$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Stories/StoryViewer;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1933
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 1934
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->updatePlayingMode()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 1937
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 1938
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->currentDialog:Landroid/app/Dialog;

    const/4 p1, 0x0

    return p1
.end method

.method public showViewsAfterOpening()V
    .locals 1

    const/4 v0, 0x1

    .line 2362
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->showViewsAfterOpening:Z

    return-void
.end method

.method public soundEnabled()Z
    .locals 1

    .line 2876
    sget-boolean v0, Lorg/telegram/ui/Stories/StoryViewer;->isInSilentMode:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    .line 2810
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2813
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public switchByTap(Z)V
    .locals 2

    .line 2009
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2013
    :cond_0
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->switchToNext(Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2014
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/StoriesViewPager;->switchToNext(Z)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 2016
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->close(Z)V

    return-void

    .line 2018
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->playerHolder:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    if-eqz p1, :cond_3

    .line 2019
    invoke-virtual {p1}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->loopBack()V

    return-void

    .line 2023
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Stories/StoriesViewPager;->lockTouchEvent(J)V

    :cond_3
    :goto_0
    return-void
.end method

.method public switchToPip()V
    .locals 2

    .line 3226
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->livePlayer:Lorg/telegram/ui/Stories/LivePlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->liveView:Lorg/telegram/ui/Stories/recorder/LivePlayerView;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3229
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 3230
    invoke-static {v0}, Lorg/telegram/messenger/pip/utils/PipUtils;->checkAnyPipPermissions(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3231
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->livePlayer:Lorg/telegram/ui/Stories/LivePlayer;

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/LiveStoryPipOverlay;->show(Landroid/app/Activity;Lorg/telegram/ui/Stories/LivePlayer;)V

    .line 3232
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method

.method public toggleSilentMode()V
    .locals 4

    .line 2064
    sget-boolean v0, Lorg/telegram/ui/Stories/StoryViewer;->isInSilentMode:Z

    xor-int/lit8 v1, v0, 0x1

    sput-boolean v1, Lorg/telegram/ui/Stories/StoryViewer;->isInSilentMode:Z

    .line 2065
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->playerHolder:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2066
    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->setAudioEnabled(ZZ)V

    .line 2068
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->preparedPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v2, v0, :cond_1

    .line 2069
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->preparedPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    sget-boolean v3, Lorg/telegram/ui/Stories/StoryViewer;->isInSilentMode:Z

    xor-int/2addr v3, v1

    invoke-virtual {v0, v3, v1}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->setAudioEnabled(ZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2071
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2073
    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->soundEnabled()Z

    move-result v2

    xor-int/2addr v2, v1

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->setIconMuted(ZZ)V

    .line 2075
    :cond_2
    sget-boolean v0, Lorg/telegram/ui/Stories/StoryViewer;->isInSilentMode:Z

    if-nez v0, :cond_3

    .line 2076
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->volumeControl:Lorg/telegram/ui/Stories/StoriesVolumeControl;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesVolumeControl;->unmute()V

    :cond_3
    return-void
.end method

.method public updatePlayingMode()V
    .locals 4

    .line 2269
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryViewer;->updatePipSource()V

    .line 2270
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    if-nez v0, :cond_0

    return-void

    .line 2273
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->isPaused()Z

    move-result v0

    .line 2274
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->ATTACH_TO_FRAGMENT:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v2

    .line 2277
    :cond_1
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v2

    .line 2281
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Stories/StoriesViewPager;->setPaused(Z)V

    .line 2282
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->playerHolder:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    if-eqz v1, :cond_4

    if-eqz v0, :cond_3

    .line 2284
    invoke-virtual {v1}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->pause()V

    goto :goto_0

    .line 2286
    :cond_3
    sget v0, Lorg/telegram/ui/Stories/StoryViewer;->currentSpeed:F

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->play(F)V

    .line 2289
    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->keyboardVisible:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->isClosed:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->isRecording:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->isLongpressed:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->isInPinchToZoom:Z

    if-nez v1, :cond_5

    iget v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->selfStoriesViewsOffset:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->isInTextSelectionMode:Z

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/StoriesViewPager;->enableTouch(Z)V

    return-void
.end method
