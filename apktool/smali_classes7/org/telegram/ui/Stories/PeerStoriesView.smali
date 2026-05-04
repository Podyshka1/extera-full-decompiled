.class public abstract Lorg/telegram/ui/Stories/PeerStoriesView;
.super Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;,
        Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;,
        Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;,
        Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;,
        Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;
    }
.end annotation


# static fields
.field public static DISABLE_STORY_REPOSTING:Z = false

.field private static activeCount:I


# instance fields
.field private BIG_SCREEN:Z

.field private albumItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private albumLayout:Landroid/view/ViewGroup;

.field private allowDrawSurface:Z

.field allowDrawSurfaceRunnable:Ljava/lang/Runnable;

.field private allowRepost:Z

.field private allowShare:Z

.field private allowShareLink:Z

.field private alpha:F

.field animateKeyboardOpening:Z

.field private animatingKeyboardHeight:F

.field areLiveCommentsDisabled:Z

.field private attachedToWindow:Z

.field private final avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private final bitmapShaderTools:Lorg/telegram/ui/Components/BitmapShaderTools;

.field private blurredBackgroundColorProvider:Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProviderThemed;

.field private blurredBackgroundDrawableFactory:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

.field private final blurredBackgroundSourceFallback:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;

.field private final blurredBackgroundSourceRenderNodeWithSaturation:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

.field private final blurredBackgroundSourceWithSaturation:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;

.field private boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

.field private final bottomActionsLinearLayout:Landroid/widget/LinearLayout;

.field private canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

.field private cancellableViews:Ljava/lang/Runnable;

.field private changeBoundAnimator:Landroid/animation/ValueAnimator;

.field chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

.field private chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

.field checkBlackoutMode:Z

.field private classGuid:I

.field private final clipPath:Landroid/graphics/Path;

.field private commentButton:Lorg/telegram/ui/Stories/CommentButton;

.field count:I

.field private currentAccount:I

.field private currentImageTime:J

.field public final currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

.field day:Ljava/util/ArrayList;

.field delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

.field private deletedPeer:Z

.field private dialogId:J

.field documentsToPrepare:Ljava/util/ArrayList;

.field private drawAnimatedEmojiAsMovingReaction:Z

.field private drawReactionEffect:Z

.field public editOpened:Z

.field editStoryItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private editedPrivacy:Z

.field private emojiAnimationsOverlay:Lorg/telegram/ui/EmojiAnimationsOverlay;

.field emojiKeyboardBackground:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

.field private emojiReactionEffect:Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

.field private enterViewBottomOffset:I

.field private failView:Lorg/telegram/ui/Stories/StoryFailView;

.field private failViewAnimator:Landroid/view/ViewPropertyAnimator;

.field public forceUpdateOffsets:Z

.field headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

.field highlightMessageHintView:Lorg/telegram/ui/Stories/recorder/HintView2;

.field private imageChanged:Z

.field private final imageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field inBlackoutMode:Z

.field inputBackgroundPaint:Landroid/graphics/Paint;

.field inputBottomBorderPaint:Landroid/graphics/Paint;

.field inputFieldBackground:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

.field inputTopBorderPaint:Landroid/graphics/Paint;

.field private instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;

.field isActive:Z

.field private isCaptionPartVisible:Z

.field isChannel:Z

.field private isEditing:Z

.field private isFailed:Z

.field isGroup:Z

.field private isLongPressed:Z

.field isPremiumBlocked:Z

.field private isRecording:Z

.field isSelf:Z

.field private isUploading:Z

.field private isVisible:Z

.field keyboardAnimator:Landroid/animation/ValueAnimator;

.field public keyboardVisible:Z

.field lastAnimatingKeyboardHeight:F

.field private lastDrawTime:J

.field lastKeyboardHeight:I

.field private lastNoThumb:Z

.field lastOpenedKeyboardHeight:I

.field private final leftPreloadImageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field private final likeButtonContainer:Landroid/widget/FrameLayout;

.field private likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

.field private likesReactionShowProgress:F

.field private likesReactionShowing:Z

.field private linesAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

.field private linesCount:I

.field private linesPosition:I

.field private listPosition:I

.field public final liveCommentsShadowView:Landroid/view/View;

.field public final liveCommentsView:Lorg/telegram/ui/Stories/LiveCommentsView;

.field private mediaBanTooltip:Lorg/telegram/ui/Components/HintView;

.field private mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

.field private mentionsDelegate:Lorg/telegram/ui/Components/MentionsContainerView$Delegate;

.field private messageSent:Z

.field private messageStars:J

.field private movingReaction:Z

.field private movingReactionFromSize:I

.field private movingReactionFromX:I

.field private movingReactionFromY:I

.field private movingReactionProgress:F

.field private muteButton:Lorg/telegram/ui/Stories/MuteButton;

.field private final muteIconContainer:Landroid/widget/FrameLayout;

.field private final muteIconView:Lorg/telegram/ui/Components/RLottieImageView;

.field private muteIconViewAlpha:F

.field private final noSoundIconView:Landroid/widget/ImageView;

.field final notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

.field private onImageReceiverThumbLoaded:Ljava/lang/Runnable;

.field private final optionsIconView:Landroid/widget/ImageView;

.field private outAnimator:Landroid/animation/ValueAnimator;

.field private outT:F

.field outlineProvider:Lorg/telegram/ui/Stories/RoundRectOutlineProvider;

.field private paused:Z

.field public pinchToZoomHelper:Lorg/telegram/ui/PinchToZoomHelper;

.field private final pipIconView:Landroid/widget/ImageView;

.field final playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

.field popupMenu:Lorg/telegram/ui/Components/CustomPopupMenu;

.field private final preloadReactionHolders:Ljava/util/ArrayList;

.field private premiumBlockedText:Landroid/widget/LinearLayout;

.field private premiumBlockedText1:Landroid/widget/TextView;

.field private premiumBlockedText2:Landroid/widget/TextView;

.field private prevToHideProgress:F

.field private previousSelectedPotision:I

.field private final privacyButton:Lorg/telegram/ui/Stories/StoryPrivacyButton;

.field private privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

.field progressToDismiss:F

.field private progressToHideInterface:Lorg/telegram/ui/Components/AnimatedFloat;

.field progressToKeyboard:F

.field progressToRecording:Lorg/telegram/ui/Components/AnimatedFloat;

.field progressToReply:F

.field progressToStickerExpanded:Lorg/telegram/ui/Components/AnimatedFloat;

.field progressToTextA:Lorg/telegram/ui/Components/AnimatedFloat;

.field private reactionEffectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field private reactionMoveDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

.field private reactionMoveImageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field private reactionsContainerIndex:I

.field reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

.field private reactionsCounter:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field private reactionsCounterProgress:Lorg/telegram/ui/Components/AnimatedFloat;

.field private reactionsCounterVisible:Z

.field private reactionsLongpressTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

.field private reactionsTooltipRunnable:Ljava/lang/Runnable;

.field private realKeyboardHeight:I

.field private replyDisabledTextView:Landroid/widget/TextView;

.field private repostButton:Landroid/widget/ImageView;

.field private repostButtonContainer:Landroid/widget/FrameLayout;

.field private repostCounter:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field private repostCounterProgress:Lorg/telegram/ui/Components/AnimatedFloat;

.field private repostCounterVisible:Z

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private final rightPreloadImageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field private selectedPosition:I

.field private selfAvatarsContainer:Landroid/view/View;

.field private selfAvatarsView:Lorg/telegram/ui/Components/AvatarsImageView;

.field private selfStatusView:Landroid/widget/TextView;

.field private selfView:Landroid/widget/FrameLayout;

.field private sendAsPeersObj:Lorg/telegram/tgnet/TLRPC$TL_channels_sendAsPeers;

.field public shareAlert:Lorg/telegram/ui/Components/ShareAlert;

.field private final shareButton:Landroid/widget/ImageView;

.field final sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

.field private shiftDp:I

.field private final showTapToSoundHint:Ljava/lang/Runnable;

.field showViewsProgress:Z

.field private soundTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

.field private speedItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private speedLayout:Lorg/telegram/ui/ChooseSpeedLayout;

.field private starsButton:Lorg/telegram/ui/Stories/PaidReactionButton;

.field private starsButtonEffectsView:Lorg/telegram/ui/Stories/PaidReactionButton$PaidReactionButtonEffectsView;

.field starsPriceBlocked:J

.field private stealthModeIsActive:Z

.field storiesController:Lorg/telegram/ui/Stories/StoriesController;

.field private storiesLikeButton:Lorg/telegram/ui/Stories/StoriesLikeButton;

.field private storyAreasView:Lorg/telegram/ui/Stories/StoryMediaAreasView;

.field private final storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

.field public storyContainer:Landroid/widget/FrameLayout;

.field private storyEditCaptionView:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

.field final storyItems:Ljava/util/ArrayList;

.field private final storyLines:Lorg/telegram/ui/Stories/StoryLinesDrawable;

.field private storyPositionView:Lorg/telegram/ui/Stories/StoryPositionView;

.field private final storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

.field private switchEventSent:Z

.field private titleLastDialogId:J

.field private titleLastLive:Z

.field public topBulletinContainer:Landroid/widget/FrameLayout;

.field private totalStoriesCount:I

.field public unsupported:Z

.field private unsupportedContainer:Landroid/widget/FrameLayout;

.field updateStealthModeTimer:Ljava/lang/Runnable;

.field final uploadingStories:Ljava/util/ArrayList;

.field uriesToPrepare:Ljava/util/ArrayList;

.field private userCanSeeViews:Z

.field userStories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

.field public videoDuration:J

.field private viewsThumbAlpha:F

.field private viewsThumbImageReceiver:Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;

.field private viewsThumbPivotY:F

.field private viewsThumbScale:F

.field private wasBigScreen:Z

.field private watchersCount:I


# direct methods
.method public static synthetic $r8$lambda$-xtfHL-NjnamAIlhA98_odHTza8(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$createStealthModeItem$12(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$0ik2qzRppnVEXF6yez2nNoRQKek(Lorg/telegram/messenger/MessagesController;JZ)V
    .locals 6

    .line 2747
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-wide v1, p1

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Stories/StoriesController;->toggleHidden(JZZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$1XDBPAFVIL65g_QKQe6Ak4MfJmY(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;ZZZZLorg/telegram/tgnet/TLRPC$InputPeer;ILjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p10}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$editPrivacy$57(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;ZZZZLorg/telegram/tgnet/TLRPC$InputPeer;ILjava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1_uhfTrphZEJYmllXhHoMXfqU6w(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$new$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1vsNu69vGqr4c2a2THkjfbMVTMo(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->openChat()V

    return-void
.end method

.method public static synthetic $r8$lambda$3jgcyNkQyA7nr4-eEFpmPDDdZfQ(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 4584
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$4QfFWPrcWsFSMYACY9YyEqp58jw(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/lang/Long;Ljava/lang/Runnable;Ljava/lang/Boolean;Ljava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$openRepostStory$37(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/lang/Long;Ljava/lang/Runnable;Ljava/lang/Boolean;Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5KJw3gRqyrfOl5vWB-O9Ab4AuMk(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$updatePosition$49()V

    return-void
.end method

.method public static synthetic $r8$lambda$5LKF-z3khgZaUzGgbmsjLCOKKIU(Ljava/lang/Runnable;J)V
    .locals 2

    .line 4046
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 4047
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x20

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$5xzY5ErVdMpVdCSqYpLFOwZKI-c(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$deleteStory$41(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$7oE_FylRRoL_vJqTS0F4cMrIsNc(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Stories/StoryViewer;Landroid/content/Context;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$new$8(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Stories/StoryViewer;Landroid/content/Context;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8NMi2dZpQtON4zAjbfIwQ8oDV3g(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$updatePosition$46()V

    return-void
.end method

.method public static synthetic $r8$lambda$8pnBe_uVJxc1JQEJVstxae5hmfc(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$new$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$9uU2MBUp6sdZJHyDEBxgzIVlnnA(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BYdA9VG7E_xKOnRsTCRlSFgmBiM(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$new$43()V

    return-void
.end method

.method public static synthetic $r8$lambda$CGrB28kLKakMFYO7pnVAyg-PJuQ(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/view/View;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$updatePosition$48(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$FV05YVKLNnG6Nogkjo_sZGm3rJc(Lorg/telegram/ui/Stories/PeerStoriesView;ZLandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$createQualityItem$14(ZLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HayBQhPDWnBIai626debILH914g(Lorg/telegram/ui/Stories/PeerStoriesView;JLandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$updatePosition$45(JLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KSHY7XvlCAUI6Ni0K_xjj2ck39Q(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$updatePosition$47()V

    return-void
.end method

.method public static synthetic $r8$lambda$O5m93U_myNI-8FXLnvSP_9n5Z2A(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Stories/StoryViewer;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$new$6(Lorg/telegram/ui/Stories/StoryViewer;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PN1FrjSE21BsynY2F6vuqU-gX_Y(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$new$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$Q6cAXzzauPjOkEqEQrjWrlwbhQo(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/view/View;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$createPaidReactionsButton$27(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$R2WwYItA3rMERtNmuEtytpxNGm0(Lorg/telegram/ui/Stories/PeerStoriesView;ZLandroid/net/Uri;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$saveToGallery$32(ZLandroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$S4TktP5MG9zqBMsUaNWBVeHiby4(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$onMeasure$53(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UmcccKOvVGe4OMdiW4bd6pocNXk(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$createUnsupportedContainer$39(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WIQdYGX8NQkld8rM3v9aQ2HsozU(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$showLikesReaction$17(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Wb47ShyNFTzpt6g3X1rq9FKVKzs(Lorg/telegram/ui/Stories/PeerStoriesView;Ljava/lang/Runnable;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$editPrivacy$56(Ljava/lang/Runnable;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y01zRq7bsRDS4GAgYm2ciFYwpgo(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Stories/StoryCaptionView$Reply;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$updatePosition$44(Lorg/telegram/ui/Stories/StoryCaptionView$Reply;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YMmDo2roC-6nicrVE9FqmOlzLac(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Stories/StoryViewer;Landroid/view/View;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$new$5(Lorg/telegram/ui/Stories/StoryViewer;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Z9uBd80okTFl8oyUeHO9OPZQ-QM(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$createSelfPeerView$40(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bAB5Tjs6HGRUntNB0i3LB6WqxzU(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Stories/StoryViewer;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$new$11(Lorg/telegram/ui/Stories/StoryViewer;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bQQLK47OWJYBUy4EPEsq22Ty2Qo(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$c5s3qrKYqSp3aM3D-aaaySlX3Os(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$new$51()V

    return-void
.end method

.method public static synthetic $r8$lambda$cf_0-6TVVv7-__CbfQXiWcZqoxg(Lorg/telegram/ui/Stories/PeerStoriesView;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$editPrivacy$55(Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cxdbtxb8pQlafTJToZDEIZlL48A(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$new$10(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dGoH3A6sk-lctbRIH2lSj7RSHyg(Ljava/lang/Runnable;)V
    .locals 0

    .line 4035
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 4036
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fVFkGTmttaqhqQpRRXIWpHYmyGw(Lorg/telegram/ui/Stories/PeerStoriesView;Ljava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$onHighlightLiveMessage$52(Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hd55xIhXjbo74cE5-o2aTpFbJ3E(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$createMuteButton$28(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hdgaMXjz6yqSszZqq8ft9dfov7g(Lorg/telegram/ui/Stories/PeerStoriesView;ZLorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$checkRecordLocked$58(ZLorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$jA4fkKqznuxN95Or9apwqDlfdeI(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$animateOut$59(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jR00T5OmQpVeDzMqC5466hFMv2s(Lorg/telegram/messenger/MessagesController;JZ)V
    .locals 6

    .line 2744
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    xor-int/lit8 v3, p3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Stories/StoriesController;->toggleHidden(JZZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$jRkMhX5UHD4i59raDrtgVIXpqc8(Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 3664
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic $r8$lambda$jzARVG_9OEeMS1QkC8XbpzmsZCM(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$showPremiumBlockedToast$23(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V

    return-void
.end method

.method public static synthetic $r8$lambda$luXKqCCUWbDbt8ZcUnGhjc-YbZo(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->openRepostStory()V

    return-void
.end method

.method public static synthetic $r8$lambda$mxGPJEWMSp-b4uf8QmM1MBHYlVk(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$showPremiumBlockedToast$22(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;)V

    return-void
.end method

.method public static synthetic $r8$lambda$n8j5lYXqepsOFM0MCcC7k04E5FQ(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nc6_wodA1XVon4YBpxgGFC9Quu8(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$showPremiumBlockedToast$24()V

    return-void
.end method

.method public static synthetic $r8$lambda$oclH5F_UUYV_FQ4CsOjqSEBIeCs(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 3666
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$p4uqUxirvZKRyFdxrFDlUQahTtY(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$updatePosition$50()V

    return-void
.end method

.method public static synthetic $r8$lambda$q3DfS3VR2ccA9RnyXSgBWMIRJAw(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$createPaidReactionsButton$26(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$r-zynHh0TQU2ngjF77eATLid5Bk(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$openRepostStory$33()V

    return-void
.end method

.method public static synthetic $r8$lambda$sNhOCT8-iZ6oSy3jK5gQeSVpJjs(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$needEnterText$54()V

    return-void
.end method

.method public static synthetic $r8$lambda$tdnXoK8I_D7AEKL67ibpIUlNKC0(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/messenger/MessagesController;JZLjava/lang/String;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$toggleArchiveForStory$20(Lorg/telegram/messenger/MessagesController;JZLjava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uFICWupu_4RPPg3nKb_c_sQ3uPs(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Stories/recorder/HintView2;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$showPaidMessageHint$29(Lorg/telegram/ui/Stories/recorder/HintView2;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uMZr2oFJQo_6IPHQMyJ80NyBLRA(Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;Lorg/telegram/ui/Stories/DialogStoriesCell;Ljava/lang/Long;Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/lang/Runnable;)V
    .locals 2

    if-nez p0, :cond_0

    .line 4018
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Stories/DialogStoriesCell;->findStoryCell(J)Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;

    move-result-object p0

    .line 4020
    :cond_0
    invoke-static {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->fromStoryCell(Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    move-result-object p0

    invoke-virtual {p3, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->replaceSourceView(Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;)V

    .line 4021
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic $r8$lambda$vwvz4GSsncuxfnwBKyPYOh1YEgk(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$createFailView$21(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xJ585UAb_mfEYS1its-uU-qc8m4(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$createCommentButton$25(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xhuXrgHK0uviQyFyVzNSs2yHv-A(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/app/Activity;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$openRepostStory$38(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yJHJR1bijBsghFqqIA0QqbKSXoo(Lorg/telegram/ui/Stories/StoryViewer;Landroid/view/View;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1284
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->switchToPip()V

    :cond_0
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetBIG_SCREEN(Lorg/telegram/ui/Stories/PeerStoriesView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->BIG_SCREEN:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetalbumItem(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->albumItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetalbumLayout(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/view/ViewGroup;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->albumLayout:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetallowDrawSurface(Lorg/telegram/ui/Stories/PeerStoriesView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowDrawSurface:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetallowShare(Lorg/telegram/ui/Stories/PeerStoriesView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShare:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetallowShareLink(Lorg/telegram/ui/Stories/PeerStoriesView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShareLink:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetalpha(Lorg/telegram/ui/Stories/PeerStoriesView;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->alpha:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbitmapShaderTools(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/BitmapShaderTools;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->bitmapShaderTools:Lorg/telegram/ui/Components/BitmapShaderTools;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetblurredBackgroundSourceRenderNodeWithSaturation(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->blurredBackgroundSourceRenderNodeWithSaturation:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetchangeBoundAnimator(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->changeBoundAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetchatAttachAlert(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/ChatAttachAlert;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetclassGuid(Lorg/telegram/ui/Stories/PeerStoriesView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->classGuid:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcommentButton(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/CommentButton;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->commentButton:Lorg/telegram/ui/Stories/CommentButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/PeerStoriesView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentImageTime(Lorg/telegram/ui/Stories/PeerStoriesView;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentImageTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetdialogId(Lorg/telegram/ui/Stories/PeerStoriesView;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetemojiAnimationsOverlay(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/EmojiAnimationsOverlay;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->emojiAnimationsOverlay:Lorg/telegram/ui/EmojiAnimationsOverlay;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetemojiReactionEffect(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->emojiReactionEffect:Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetimageChanged(Lorg/telegram/ui/Stories/PeerStoriesView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageChanged:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetimageReceiver(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/messenger/ImageReceiver;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinstantCameraView(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/InstantCameraView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisCaptionPartVisible(Lorg/telegram/ui/Stories/PeerStoriesView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isCaptionPartVisible:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisEditing(Lorg/telegram/ui/Stories/PeerStoriesView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isEditing:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisFailed(Lorg/telegram/ui/Stories/PeerStoriesView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isFailed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisLongPressed(Lorg/telegram/ui/Stories/PeerStoriesView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isLongPressed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisRecording(Lorg/telegram/ui/Stories/PeerStoriesView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isRecording:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisUploading(Lorg/telegram/ui/Stories/PeerStoriesView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isUploading:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlastDrawTime(Lorg/telegram/ui/Stories/PeerStoriesView;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->lastDrawTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetlastNoThumb(Lorg/telegram/ui/Stories/PeerStoriesView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->lastNoThumb:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlikeButtonContainer(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlikesReactionLayout(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/ReactionsContainerLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlinesAlpha(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/AnimatedFloat;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->linesAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlinesCount(Lorg/telegram/ui/Stories/PeerStoriesView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->linesCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlinesPosition(Lorg/telegram/ui/Stories/PeerStoriesView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->linesPosition:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlistPosition(Lorg/telegram/ui/Stories/PeerStoriesView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->listPosition:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmediaBanTooltip(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/HintView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->mediaBanTooltip:Lorg/telegram/ui/Components/HintView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmentionContainer(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/MentionsContainerView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmessageStars(Lorg/telegram/ui/Stories/PeerStoriesView;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->messageStars:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmovingReactionProgress(Lorg/telegram/ui/Stories/PeerStoriesView;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->movingReactionProgress:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmuteIconContainer(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmuteIconView(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/RLottieImageView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconView:Lorg/telegram/ui/Components/RLottieImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmuteIconViewAlpha(Lorg/telegram/ui/Stories/PeerStoriesView;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconViewAlpha:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetonImageReceiverThumbLoaded(Lorg/telegram/ui/Stories/PeerStoriesView;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->onImageReceiverThumbLoaded:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetoptionsIconView(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/widget/ImageView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->optionsIconView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetoutT(Lorg/telegram/ui/Stories/PeerStoriesView;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpaused(Lorg/telegram/ui/Stories/PeerStoriesView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->paused:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpipIconView(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/widget/ImageView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->pipIconView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpremiumBlockedText(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/widget/LinearLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->premiumBlockedText:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpremiumBlockedText2(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->premiumBlockedText2:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetprivacyButton(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryPrivacyButton;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyButton:Lorg/telegram/ui/Stories/StoryPrivacyButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetreactionEffectImageReceiver(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/messenger/ImageReceiver;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionEffectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetreactionMoveDrawable(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionMoveDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetreactionMoveImageReceiver(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/messenger/ImageReceiver;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionMoveImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetreactionsCounter(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsCounter:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetreactionsCounterProgress(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/AnimatedFloat;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsCounterProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetreactionsCounterVisible(Lorg/telegram/ui/Stories/PeerStoriesView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsCounterVisible:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetrepostButtonContainer(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->repostButtonContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrepostCounter(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->repostCounter:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrepostCounterProgress(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/AnimatedFloat;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->repostCounterProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrepostCounterVisible(Lorg/telegram/ui/Stories/PeerStoriesView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->repostCounterVisible:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetselfAvatarsContainer(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfAvatarsContainer:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetselfStatusView(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfStatusView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetselfView(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsendAsPeersObj(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/tgnet/TLRPC$TL_channels_sendAsPeers;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->sendAsPeersObj:Lorg/telegram/tgnet/TLRPC$TL_channels_sendAsPeers;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetshareButton(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/widget/ImageView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->shareButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetshiftDp(Lorg/telegram/ui/Stories/PeerStoriesView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->shiftDp:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetspeedItem(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->speedItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetspeedLayout(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/ChooseSpeedLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->speedLayout:Lorg/telegram/ui/ChooseSpeedLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstarsButton(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/PaidReactionButton;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->starsButton:Lorg/telegram/ui/Stories/PaidReactionButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstarsButtonEffectsView(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/PaidReactionButton$PaidReactionButtonEffectsView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->starsButtonEffectsView:Lorg/telegram/ui/Stories/PaidReactionButton$PaidReactionButtonEffectsView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstoriesLikeButton(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoriesLikeButton;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesLikeButton:Lorg/telegram/ui/Stories/StoriesLikeButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstoryAreasView(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryMediaAreasView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyAreasView:Lorg/telegram/ui/Stories/StoryMediaAreasView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstoryCaptionView(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstoryLines(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryLinesDrawable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyLines:Lorg/telegram/ui/Stories/StoryLinesDrawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstoryPositionView(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryPositionView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyPositionView:Lorg/telegram/ui/Stories/StoryPositionView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstoryViewer(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryViewer;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetswitchEventSent(Lorg/telegram/ui/Stories/PeerStoriesView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->switchEventSent:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetviewsThumbAlpha(Lorg/telegram/ui/Stories/PeerStoriesView;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->viewsThumbAlpha:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetviewsThumbImageReceiver(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->viewsThumbImageReceiver:Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetviewsThumbScale(Lorg/telegram/ui/Stories/PeerStoriesView;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->viewsThumbScale:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fputalbumItem(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->albumItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputalbumLayout(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/view/ViewGroup;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->albumLayout:Landroid/view/ViewGroup;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputanimatingKeyboardHeight(Lorg/telegram/ui/Stories/PeerStoriesView;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->animatingKeyboardHeight:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputchangeBoundAnimator(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->changeBoundAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcurrentImageTime(Lorg/telegram/ui/Stories/PeerStoriesView;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentImageTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputdrawAnimatedEmojiAsMovingReaction(Lorg/telegram/ui/Stories/PeerStoriesView;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->drawAnimatedEmojiAsMovingReaction:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputdrawReactionEffect(Lorg/telegram/ui/Stories/PeerStoriesView;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->drawReactionEffect:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputemojiReactionEffect(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->emojiReactionEffect:Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputimageChanged(Lorg/telegram/ui/Stories/PeerStoriesView;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageChanged:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisCaptionPartVisible(Lorg/telegram/ui/Stories/PeerStoriesView;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isCaptionPartVisible:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisRecording(Lorg/telegram/ui/Stories/PeerStoriesView;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isRecording:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastDrawTime(Lorg/telegram/ui/Stories/PeerStoriesView;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->lastDrawTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastNoThumb(Lorg/telegram/ui/Stories/PeerStoriesView;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->lastNoThumb:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlikesReactionShowProgress(Lorg/telegram/ui/Stories/PeerStoriesView;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionShowProgress:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmediaBanTooltip(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Components/HintView;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->mediaBanTooltip:Lorg/telegram/ui/Components/HintView;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmessageStars(Lorg/telegram/ui/Stories/PeerStoriesView;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->messageStars:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmovingReaction(Lorg/telegram/ui/Stories/PeerStoriesView;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->movingReaction:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmovingReactionFromSize(Lorg/telegram/ui/Stories/PeerStoriesView;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->movingReactionFromSize:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmovingReactionFromX(Lorg/telegram/ui/Stories/PeerStoriesView;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->movingReactionFromX:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmovingReactionFromY(Lorg/telegram/ui/Stories/PeerStoriesView;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->movingReactionFromY:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmovingReactionProgress(Lorg/telegram/ui/Stories/PeerStoriesView;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->movingReactionProgress:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputonImageReceiverThumbLoaded(Lorg/telegram/ui/Stories/PeerStoriesView;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->onImageReceiverThumbLoaded:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputoutT(Lorg/telegram/ui/Stories/PeerStoriesView;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputreactionMoveDrawable(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionMoveDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputshiftDp(Lorg/telegram/ui/Stories/PeerStoriesView;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->shiftDp:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputspeedItem(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->speedItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputspeedLayout(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/ChooseSpeedLayout;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->speedLayout:Lorg/telegram/ui/ChooseSpeedLayout;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputstoriesLikeButton(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Stories/StoriesLikeButton;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesLikeButton:Lorg/telegram/ui/Stories/StoriesLikeButton;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputstoryPositionView(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Stories/StoryPositionView;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyPositionView:Lorg/telegram/ui/Stories/StoryPositionView;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputswitchEventSent(Lorg/telegram/ui/Stories/PeerStoriesView;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->switchEventSent:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mafterMessageSend(Lorg/telegram/ui/Stories/PeerStoriesView;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->afterMessageSend(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mapplyMessageToChat(Lorg/telegram/ui/Stories/PeerStoriesView;Ljava/lang/Runnable;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->applyMessageToChat(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mcheckInstantCameraView(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->checkInstantCameraView()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckStealthMode(Lorg/telegram/ui/Stories/PeerStoriesView;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->checkStealthMode(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateMentionsContainer(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->createMentionsContainer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateQualityItem(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->createQualityItem(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateStealthModeItem(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->createStealthModeItem(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdeleteStory(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->deleteStory()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdisabledPaidFeatures(Lorg/telegram/ui/Stories/PeerStoriesView;Z)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->disabledPaidFeatures(Z)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mdrawLinesAsCounter(Lorg/telegram/ui/Stories/PeerStoriesView;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->drawLinesAsCounter()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$meditPrivacy(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/PeerStoriesView;->editPrivacy(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfindActivity(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/app/Activity;
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->findActivity()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetAccountInstance(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/messenger/AccountInstance;
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetAnimatedEmojiSets(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->getAnimatedEmojiSets(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetHideInterfaceAlpha(Lorg/telegram/ui/Stories/PeerStoriesView;)F
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->getHideInterfaceAlpha()F

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetMessageMinPrice(Lorg/telegram/ui/Stories/PeerStoriesView;)J
    .locals 2

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->getMessageMinPrice()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$mhideCaptionWithInterface(Lorg/telegram/ui/Stories/PeerStoriesView;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->hideCaptionWithInterface()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misBotsPreview(Lorg/telegram/ui/Stories/PeerStoriesView;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->isBotsPreview()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misEditBotsPreview(Lorg/telegram/ui/Stories/PeerStoriesView;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->isEditBotsPreview()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mlikeStory(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->likeStory(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monHighlightLiveMessage(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->onHighlightLiveMessage()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monLinkCopied(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->onLinkCopied()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mopenAttachMenu(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->openAttachMenu()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mopenChat(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->openChat()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msaveToGallery(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->saveToGallery()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshareStory(Lorg/telegram/ui/Stories/PeerStoriesView;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->shareStory(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowDownloadAlert(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->showDownloadAlert()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowLikesReaction(Lorg/telegram/ui/Stories/PeerStoriesView;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->showLikesReaction(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowPremiumBlockedToast(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->showPremiumBlockedToast()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtoggleArchiveForStory(Lorg/telegram/ui/Stories/PeerStoriesView;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/PeerStoriesView;->toggleArchiveForStory(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtryToOpenRepostStory(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->tryToOpenRepostStory()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSpeedItem(Lorg/telegram/ui/Stories/PeerStoriesView;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->updateSpeedItem(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateStoryItems(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updateStoryItems()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateUserViews(Lorg/telegram/ui/Stories/PeerStoriesView;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->updateUserViews(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateViewOffsets(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updateViewOffsets()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v6, p3

    move-object/from16 v2, p4

    .line 426
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x1

    .line 263
    iput-boolean v7, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->allowDrawSurface:Z

    .line 270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->preloadReactionHolders:Ljava/util/ArrayList;

    const/4 v0, -0x5

    .line 284
    iput v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->shiftDp:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 305
    iput v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->alpha:F

    const/4 v8, -0x1

    .line 306
    iput v8, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->previousSelectedPotision:I

    .line 313
    new-instance v9, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-direct {v9, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    iput-object v9, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    const/high16 v10, -0x40800000    # -1.0f

    .line 345
    iput v10, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToKeyboard:F

    .line 346
    iput v10, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToDismiss:F

    .line 347
    iput v10, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->lastAnimatingKeyboardHeight:F

    .line 354
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->generateClassGuid()I

    move-result v4

    iput v4, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->classGuid:I

    .line 372
    new-instance v4, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;)V

    iput-object v4, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToHideInterface:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 373
    new-instance v4, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;)V

    iput-object v4, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->linesAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 380
    new-instance v4, Lorg/telegram/ui/PinchToZoomHelper;

    invoke-direct {v4}, Lorg/telegram/ui/PinchToZoomHelper;-><init>()V

    iput-object v4, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->pinchToZoomHelper:Lorg/telegram/ui/PinchToZoomHelper;

    .line 388
    iput v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconViewAlpha:F

    .line 4834
    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda3;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->updateStealthModeTimer:Ljava/lang/Runnable;

    .line 5617
    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda6;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->showTapToSoundHint:Ljava/lang/Runnable;

    .line 5660
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->uriesToPrepare:Ljava/util/ArrayList;

    .line 5661
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->documentsToPrepare:Ljava/util/ArrayList;

    .line 6452
    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$34;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$34;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->allowDrawSurfaceRunnable:Ljava/lang/Runnable;

    .line 7344
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToRecording:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 7345
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToTextA:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 7346
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToStickerExpanded:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 7577
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->clipPath:Landroid/graphics/Path;

    .line 427
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->pinchToZoomHelper:Lorg/telegram/ui/PinchToZoomHelper;

    new-instance v4, Lorg/telegram/ui/Stories/PeerStoriesView$1;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$1;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v0, v4}, Lorg/telegram/ui/PinchToZoomHelper;->setCallback(Lorg/telegram/ui/PinchToZoomHelper$Callback;)V

    .line 438
    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    .line 439
    new-instance v0, Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-direct {v0}, Lorg/telegram/messenger/AnimationNotificationsLocker;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    .line 440
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    .line 441
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->uploadingStories:Ljava/util/ArrayList;

    .line 443
    new-instance v11, Lorg/telegram/ui/Stories/PeerStoriesView$2;

    invoke-direct {v11, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$2;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    iput-object v11, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v12, 0x0

    .line 455
    invoke-virtual {v11, v12}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeWithOldImage(Z)V

    .line 456
    invoke-virtual {v11, v7}, Lorg/telegram/messenger/ImageReceiver;->setAllowLoadingOnAttachedOnly(Z)V

    .line 457
    iput-boolean v7, v11, Lorg/telegram/messenger/ImageReceiver;->ignoreNotifications:Z

    .line 458
    invoke-virtual {v11, v12}, Lorg/telegram/messenger/ImageReceiver;->setFileLoadingPriority(I)V

    .line 460
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionEffectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 461
    invoke-virtual {v0, v7}, Lorg/telegram/messenger/ImageReceiver;->setAllowLoadingOnAttachedOnly(Z)V

    .line 462
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionEffectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iput-boolean v7, v0, Lorg/telegram/messenger/ImageReceiver;->ignoreNotifications:Z

    const/4 v13, 0x3

    .line 463
    invoke-virtual {v0, v13}, Lorg/telegram/messenger/ImageReceiver;->setFileLoadingPriority(I)V

    .line 465
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionMoveImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 466
    invoke-virtual {v0, v7}, Lorg/telegram/messenger/ImageReceiver;->setAllowLoadingOnAttachedOnly(Z)V

    .line 467
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionMoveImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iput-boolean v7, v0, Lorg/telegram/messenger/ImageReceiver;->ignoreNotifications:Z

    .line 468
    invoke-virtual {v0, v13}, Lorg/telegram/messenger/ImageReceiver;->setFileLoadingPriority(I)V

    .line 470
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->leftPreloadImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 471
    invoke-virtual {v0, v7}, Lorg/telegram/messenger/ImageReceiver;->setAllowLoadingOnAttachedOnly(Z)V

    .line 472
    iput-boolean v7, v0, Lorg/telegram/messenger/ImageReceiver;->ignoreNotifications:Z

    .line 473
    invoke-virtual {v0, v12}, Lorg/telegram/messenger/ImageReceiver;->setFileLoadingPriority(I)V

    .line 475
    new-instance v4, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v4}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v4, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->rightPreloadImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 476
    invoke-virtual {v4, v7}, Lorg/telegram/messenger/ImageReceiver;->setAllowLoadingOnAttachedOnly(Z)V

    .line 477
    iput-boolean v7, v4, Lorg/telegram/messenger/ImageReceiver;->ignoreNotifications:Z

    .line 478
    invoke-virtual {v4, v12}, Lorg/telegram/messenger/ImageReceiver;->setFileLoadingPriority(I)V

    const/4 v14, 0x2

    .line 479
    new-array v5, v14, [Lorg/telegram/messenger/ImageReceiver;

    aput-object v0, v5, v12

    aput-object v4, v5, v7

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v11, v0}, Lorg/telegram/messenger/ImageReceiver;->setPreloadingReceivers(Ljava/util/List;)V

    .line 481
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 482
    iput-object v3, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    .line 483
    iput-object v6, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    .line 484
    iget-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->bitmapShaderTools:Lorg/telegram/ui/Components/BitmapShaderTools;

    iput-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->bitmapShaderTools:Lorg/telegram/ui/Components/BitmapShaderTools;

    .line 485
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    .line 486
    invoke-static {v6}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->-$$Nest$fgetdimPaint(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v15, -0x1000000

    invoke-virtual {v0, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 487
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->inputBackgroundPaint:Landroid/graphics/Paint;

    .line 488
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->inputTopBorderPaint:Landroid/graphics/Paint;

    .line 489
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 490
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->inputTopBorderPaint:Landroid/graphics/Paint;

    const v5, 0x28ffffff

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 491
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->inputBottomBorderPaint:Landroid/graphics/Paint;

    .line 492
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 493
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->inputBottomBorderPaint:Landroid/graphics/Paint;

    const v4, 0x14ffffff

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 494
    iput-object v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 495
    invoke-virtual {v1, v12}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 497
    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$3;

    iget-object v3, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    move-object/from16 v5, p2

    move-object v4, v2

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/PeerStoriesView$3;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/content/Context;Landroid/view/View;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Stories/StoryViewer;)V

    move-object v3, v4

    move-object v4, v0

    move-object v0, v2

    move-object v2, v3

    move-object v3, v5

    iput-object v4, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->storyAreasView:Lorg/telegram/ui/Stories/StoryMediaAreasView;

    .line 542
    new-instance v4, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProviderThemed;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelBackground:I

    const v14, 0x3f4ccccd    # 0.8f

    invoke-direct {v4, v2, v5, v14}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProviderThemed;-><init>(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;IF)V

    iput-object v4, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->blurredBackgroundColorProvider:Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProviderThemed;

    .line 544
    new-instance v4, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;

    invoke-direct {v4}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;-><init>()V

    iput-object v4, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->blurredBackgroundSourceFallback:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;

    const v5, 0x3e4ccccd    # 0.2f

    .line 545
    invoke-static {v15, v8, v5}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;->setColor(I)V

    .line 546
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x1f

    const/high16 v16, 0x41000000    # 8.0f

    if-lt v5, v14, :cond_0

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->canBlurChat()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 547
    new-instance v5, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    invoke-direct {v5, v4}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;-><init>(Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;)V

    iput-object v5, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->blurredBackgroundSourceRenderNodeWithSaturation:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    .line 548
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v5, v4}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->setBlur(F)V

    .line 549
    iput-object v5, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->blurredBackgroundSourceWithSaturation:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 551
    iput-object v5, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->blurredBackgroundSourceRenderNodeWithSaturation:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    .line 553
    iput-object v4, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->blurredBackgroundSourceWithSaturation:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;

    .line 556
    :goto_0
    new-instance v4, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    new-instance v5, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;

    invoke-direct {v5, v1}, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;-><init>(Landroid/view/View;)V

    iget-object v14, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->blurredBackgroundSourceWithSaturation:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;

    invoke-direct {v4, v5, v1, v14}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;-><init>(Lorg/telegram/ui/Components/chat/ViewPositionWatcher;Landroid/view/ViewGroup;Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;)V

    iput-object v4, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->blurredBackgroundDrawableFactory:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    .line 558
    iget-object v5, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->blurredBackgroundColorProvider:Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProviderThemed;

    invoke-virtual {v4, v1, v5}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;->create(Landroid/view/View;Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    move-result-object v4

    iput-object v4, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->inputFieldBackground:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    .line 559
    iget-object v4, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->blurredBackgroundDrawableFactory:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    iget-object v5, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->blurredBackgroundColorProvider:Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProviderThemed;

    invoke-virtual {v4, v1, v5}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;->create(Landroid/view/View;Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    move-result-object v4

    iput-object v4, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->emojiKeyboardBackground:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    const/high16 v5, 0x42000000    # 32.0f

    .line 560
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setThickness(I)V

    .line 562
    new-instance v4, Lorg/telegram/ui/Stories/PeerStoriesView$4;

    invoke-direct {v4, v1, v0, v6, v3}, Lorg/telegram/ui/Stories/PeerStoriesView$4;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/content/Context;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;Lorg/telegram/ui/Stories/StoryViewer;)V

    iput-object v4, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    .line 927
    invoke-virtual {v4, v12}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 928
    new-instance v4, Lorg/telegram/ui/EmojiAnimationsOverlay;

    iget-object v5, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    iget v14, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-direct {v4, v5, v14}, Lorg/telegram/ui/EmojiAnimationsOverlay;-><init>(Landroid/widget/FrameLayout;I)V

    iput-object v4, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->emojiAnimationsOverlay:Lorg/telegram/ui/EmojiAnimationsOverlay;

    .line 930
    iget-object v4, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    iget-object v5, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->storyAreasView:Lorg/telegram/ui/Stories/StoryMediaAreasView;

    invoke-static {v8, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v4, v5, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 932
    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$5;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v4, v3

    iget-object v3, v4, Lorg/telegram/ui/Stories/StoryViewer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object/from16 v10, p1

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/PeerStoriesView$5;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    move-object v14, v0

    move-object v3, v4

    iput-object v14, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    .line 1116
    iget-object v0, v14, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    new-instance v2, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda7;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1129
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->shareButton:Landroid/widget/ImageView;

    .line 1130
    iget-object v2, v6, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->shareDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1131
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    .line 1132
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 1133
    new-instance v4, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda8;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1136
    invoke-static {v0}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    .line 1138
    sget-boolean v4, Lorg/telegram/ui/Stories/PeerStoriesView;->DISABLE_STORY_REPOSTING:Z

    if-nez v4, :cond_2

    .line 1139
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->repostButton:Landroid/widget/ImageView;

    .line 1140
    iget-object v5, v6, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->repostDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1141
    iget-object v4, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->repostButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 1143
    new-instance v4, Lorg/telegram/ui/Stories/PeerStoriesView$6;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lorg/telegram/ui/Stories/PeerStoriesView$6;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/content/Context;)V

    iput-object v4, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->repostButtonContainer:Landroid/widget/FrameLayout;

    .line 1163
    iget-object v5, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->repostCounter:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eqz v5, :cond_1

    .line 1164
    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1166
    :cond_1
    iget-object v4, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->repostButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v12}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 1167
    iget-object v4, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->repostButtonContainer:Landroid/widget/FrameLayout;

    new-instance v5, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda9;

    invoke-direct {v5, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1170
    :cond_2
    new-instance v4, Lorg/telegram/ui/Stories/PeerStoriesView$7;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lorg/telegram/ui/Stories/PeerStoriesView$7;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/content/Context;)V

    iput-object v4, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    .line 1190
    iget-object v5, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsCounter:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eqz v5, :cond_3

    .line 1191
    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1193
    :cond_3
    invoke-virtual {v4, v12}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 1194
    new-instance v5, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda10;

    invoke-direct {v5, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1203
    new-instance v5, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda11;

    invoke-direct {v5, v1, v3}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Stories/StoryViewer;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1217
    new-instance v5, Lorg/telegram/ui/Stories/StoriesLikeButton;

    invoke-direct {v5, v10, v6}, Lorg/telegram/ui/Stories/StoriesLikeButton;-><init>(Landroid/content/Context;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)V

    iput-object v5, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesLikeButton:Lorg/telegram/ui/Stories/StoriesLikeButton;

    .line 1218
    invoke-virtual {v5, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 1219
    iget-object v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesLikeButton:Lorg/telegram/ui/Stories/StoriesLikeButton;

    const/16 v5, 0x28

    move/from16 v17, v8

    invoke-static {v5, v5, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v4, v2, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1220
    iget-object v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->repostButtonContainer:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_4

    .line 1221
    iget-object v8, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->repostButton:Landroid/widget/ImageView;

    invoke-static {v5, v5, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v2, v8, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    const v2, 0x3e99999a    # 0.3f

    const/high16 v8, 0x40a00000    # 5.0f

    .line 1223
    invoke-static {v4, v2, v8}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    .line 1224
    iget-object v13, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->repostButtonContainer:Landroid/widget/FrameLayout;

    if-eqz v13, :cond_5

    .line 1225
    invoke-static {v13, v2, v8}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    .line 1228
    :cond_5
    invoke-virtual {v11, v7}, Lorg/telegram/messenger/ImageReceiver;->setAllowLoadingOnAttachedOnly(Z)V

    .line 1229
    iget-object v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v11, v2}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 1231
    new-instance v2, Lorg/telegram/ui/Stories/RoundRectOutlineProvider;

    const/16 v8, 0xa

    invoke-direct {v2, v8}, Lorg/telegram/ui/Stories/RoundRectOutlineProvider;-><init>(I)V

    iput-object v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->outlineProvider:Lorg/telegram/ui/Stories/RoundRectOutlineProvider;

    .line 1232
    iget-object v8, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 1233
    iget-object v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v7}, Landroid/view/View;->setClipToOutline(Z)V

    .line 1235
    iget-object v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1236
    new-instance v2, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    invoke-direct {v2, v10, v9}, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)V

    iput-object v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    .line 1237
    new-instance v7, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda12;

    invoke-direct {v7, v1, v3}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Stories/StoryViewer;)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1252
    iget-object v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    iget-object v7, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v18, -0x1

    const/high16 v19, -0x40000000    # -2.0f

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/high16 v22, 0x41880000    # 17.0f

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1254
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v10}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->topBulletinContainer:Landroid/widget/FrameLayout;

    .line 1256
    new-instance v2, Landroid/animation/LayoutTransition;

    invoke-direct {v2}, Landroid/animation/LayoutTransition;-><init>()V

    const-wide/16 v7, 0x96

    .line 1257
    invoke-virtual {v2, v7, v8}, Landroid/animation/LayoutTransition;->setDuration(J)V

    const/4 v7, 0x2

    .line 1258
    invoke-virtual {v2, v7}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    const/4 v7, 0x4

    .line 1259
    invoke-virtual {v2, v7}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 1260
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->bottomActionsLinearLayout:Landroid/widget/LinearLayout;

    .line 1261
    invoke-virtual {v7, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1262
    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    const/4 v2, 0x5

    .line 1263
    invoke-static {v5, v5, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v7, v0, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1264
    iget-object v8, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->repostButtonContainer:Landroid/widget/FrameLayout;

    if-eqz v8, :cond_6

    .line 1265
    invoke-static {v5, v5, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1267
    :cond_6
    invoke-static {v5, v5, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v7, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v23, 0x40800000    # 4.0f

    const/16 v24, 0x0

    const/16 v18, -0x2

    const/high16 v19, -0x40000000    # -2.0f

    const/16 v20, 0x5

    const/16 v21, 0x0

    const/16 v22, 0x0

    .line 1269
    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1271
    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v8, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->optionsIconView:Landroid/widget/ImageView;

    .line 1272
    iget-object v2, v6, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->optionsDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1273
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-virtual {v8, v2, v5, v7, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 1274
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1275
    iget-object v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    const/high16 v23, 0x40000000    # 2.0f

    const/16 v18, 0x28

    const/high16 v19, 0x42200000    # 40.0f

    const/16 v20, 0x35

    const/high16 v21, 0x40000000    # 2.0f

    const/high16 v22, 0x41700000    # 15.0f

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v8, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1277
    new-instance v9, Landroid/widget/ImageView;

    invoke-direct {v9, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v9, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->pipIconView:Landroid/widget/ImageView;

    .line 1278
    iget-object v2, v6, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->pipDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1279
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-virtual {v9, v2, v5, v7, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 1280
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1281
    iget-object v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    const/high16 v23, 0x42280000    # 42.0f

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v9, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1282
    new-instance v2, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda13;

    invoke-direct {v2, v3}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Stories/StoryViewer;)V

    invoke-virtual {v9, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v2, v0

    .line 1288
    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda14;

    move-object v11, v4

    move-object v5, v6

    move-object v4, v10

    move-object v10, v2

    move-object/from16 v2, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Stories/StoryViewer;Landroid/content/Context;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)V

    move-object v2, v4

    invoke-virtual {v8, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2170
    new-instance v13, Lorg/telegram/ui/Stories/PeerStoriesView$9;

    invoke-direct {v13, v1, v2}, Lorg/telegram/ui/Stories/PeerStoriesView$9;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/content/Context;)V

    iput-object v13, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconContainer:Landroid/widget/FrameLayout;

    .line 2181
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v13, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2183
    new-instance v0, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconView:Lorg/telegram/ui/Components/RLottieImageView;

    const/high16 v4, 0x40c00000    # 6.0f

    .line 2184
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    move/from16 p4, v4

    invoke-static/range {p4 .. p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static/range {p4 .. p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-virtual {v0, v6, v7, v4, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 2185
    invoke-virtual {v13, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2187
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->noSoundIconView:Landroid/widget/ImageView;

    .line 2188
    invoke-static/range {p4 .. p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static/range {p4 .. p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static/range {p4 .. p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static/range {p4 .. p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-virtual {v0, v4, v6, v7, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 2189
    iget-object v4, v5, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->noSoundDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2190
    invoke-virtual {v13, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/16 v4, 0x8

    .line 2191
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2193
    new-instance v0, Lorg/telegram/ui/Stories/StoryPrivacyButton;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Stories/StoryPrivacyButton;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyButton:Lorg/telegram/ui/Stories/StoryPrivacyButton;

    .line 2194
    new-instance v4, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda4;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2248
    iget-object v4, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    const/16 v18, 0x3c

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2250
    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda5;

    invoke-direct {v0, v1, v3}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Stories/StoryViewer;)V

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2261
    new-instance v0, Lorg/telegram/ui/Stories/StoryLinesDrawable;

    invoke-direct {v0, v1, v5}, Lorg/telegram/ui/Stories/StoryLinesDrawable;-><init>(Landroid/view/View;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->storyLines:Lorg/telegram/ui/Stories/StoryLinesDrawable;

    .line 2263
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    const/16 v23, 0x0

    const/16 v18, -0x1

    const/high16 v19, -0x40800000    # -1.0f

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/high16 v22, 0x42800000    # 64.0f

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v14, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2265
    new-instance v5, Landroid/view/View;

    invoke-direct {v5, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v5, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->liveCommentsShadowView:Landroid/view/View;

    .line 2266
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v6, 0x0

    filled-new-array {v6, v15}, [I

    move-result-object v7

    invoke-direct {v0, v4, v7}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {v5, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2267
    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$10;

    iget-object v4, v3, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    iget-object v6, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->topBulletinContainer:Landroid/widget/FrameLayout;

    move-object/from16 v7, p2

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Stories/PeerStoriesView$10;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/content/Context;Lorg/telegram/ui/Stories/StoryViewer;Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/FrameLayout;Lorg/telegram/ui/Stories/StoryViewer;)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->liveCommentsView:Lorg/telegram/ui/Stories/LiveCommentsView;

    .line 2346
    iget-object v3, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    const/16 v4, 0xc8

    const/16 v6, 0x57

    move/from16 v7, v17

    invoke-static {v7, v4, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2347
    iget-object v3, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2348
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    iget-object v3, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->topBulletinContainer:Landroid/widget/FrameLayout;

    const/high16 v19, 0x42c80000    # 100.0f

    const/high16 v22, 0x425c0000    # 55.0f

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v0, 0x41a00000    # 20.0f

    .line 2350
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/16 v4, 0x64

    const/4 v7, -0x1

    invoke-static {v7, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v3, v6, v5}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2351
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v7, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v5

    invoke-static {v3, v6, v5}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2352
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v7, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v5

    invoke-static {v3, v6, v5}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2353
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v7, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v5

    invoke-static {v3, v6, v5}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2354
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v7, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v5

    invoke-static {v3, v6, v5}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2355
    iget-object v3, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->repostButtonContainer:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_7

    .line 2356
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v7, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    invoke-static {v0, v6, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2359
    :cond_7
    iget-object v0, v14, Lorg/telegram/ui/Stories/StoryCaptionView;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getOverlayView(Landroid/content/Context;)Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 2361
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    .line 2362
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2364
    :cond_8
    iget-object v0, v14, Lorg/telegram/ui/Stories/StoryCaptionView;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    new-instance v2, Lorg/telegram/ui/Stories/PeerStoriesView$11;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$11;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextSelectionHelper;->setCallback(Lorg/telegram/ui/Cells/TextSelectionHelper$Callback;)V

    .line 2370
    iget-object v0, v14, Lorg/telegram/ui/Stories/StoryCaptionView;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->setParentView(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private afterMessageSend(Z)V
    .locals 8

    .line 7753
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 7754
    invoke-virtual {v0}, Lorg/telegram/ui/Components/InstantCameraView;->resetCameraFile()V

    .line 7755
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/InstantCameraView;->cancel(Z)V

    .line 7757
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-wide v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v4, v4, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-virtual {v0, v2, v3, v4}, Lorg/telegram/ui/Stories/StoryViewer;->clearDraft(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    const/4 v0, 0x1

    .line 7758
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->messageSent:Z

    .line 7759
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryViewer;->closeKeyboardOrEmoji()Z

    if-eqz p1, :cond_1

    .line 7761
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 7763
    sget v3, Lorg/telegram/messenger/R$raw;->forward:I

    sget p1, Lorg/telegram/messenger/R$string;->MessageSent:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget p1, Lorg/telegram/messenger/R$string;->ViewInChat:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda20;

    invoke-direct {v7, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    const/16 v6, 0x1388

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/Bulletin;->hideAfterBottomSheet(Z)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    .line 7766
    :cond_1
    iget p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    const/4 v0, 0x0

    invoke-virtual {p1, v2, v3, v1, v0}, Lorg/telegram/messenger/MessagesController;->ensureMessagesLoaded(JILorg/telegram/messenger/MessagesController$MessagesLoadedCallback;)Ljava/lang/Runnable;

    return-void
.end method

.method private animateLikeButton()V
    .locals 8

    .line 2604
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesLikeButton:Lorg/telegram/ui/Stories/StoriesLikeButton;

    .line 2605
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const v3, 0x3f4ccccd    # 0.8f

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v4, Lorg/telegram/ui/Stories/PeerStoriesView$16;

    invoke-direct {v4, p0, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$16;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/view/View;)V

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v4, 0x96

    .line 2610
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    const/high16 v0, 0x41000000    # 8.0f

    .line 2611
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 2612
    new-instance v1, Lorg/telegram/ui/Stories/StoriesLikeButton;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-direct {v1, v6, v7}, Lorg/telegram/ui/Stories/StoriesLikeButton;-><init>(Landroid/content/Context;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesLikeButton:Lorg/telegram/ui/Stories/StoriesLikeButton;

    .line 2613
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 2614
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesLikeButton:Lorg/telegram/ui/Stories/StoriesLikeButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2615
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesLikeButton:Lorg/telegram/ui/Stories/StoriesLikeButton;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    .line 2616
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesLikeButton:Lorg/telegram/ui/Stories/StoriesLikeButton;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    .line 2617
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesLikeButton:Lorg/telegram/ui/Stories/StoriesLikeButton;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2618
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesLikeButton:Lorg/telegram/ui/Stories/StoriesLikeButton;

    const/16 v2, 0x28

    const/4 v3, 0x3

    invoke-static {v2, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    .line 2619
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->drawReactionEffect:Z

    return-void
.end method

.method private applyMessageToChat(Ljava/lang/Runnable;)Z
    .locals 5

    .line 3653
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->isFrozen()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3654
    iget p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/AccountFrozenAlert;->show(I)V

    return v1

    .line 3657
    :cond_0
    sget v0, Lorg/telegram/messenger/SharedConfig;->stealthModeSendMessageConfirm:I

    if-lez v0, :cond_1

    iget-boolean v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->stealthModeIsActive:Z

    if-eqz v2, :cond_1

    sub-int/2addr v0, v1

    .line 3658
    sput v0, Lorg/telegram/messenger/SharedConfig;->stealthModeSendMessageConfirm:I

    .line 3659
    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->updateStealthModeSendMessageConfirm(I)V

    .line 3660
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v2, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 3661
    sget v2, Lorg/telegram/messenger/R$string;->StealthModeConfirmTitle:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 3662
    sget v2, Lorg/telegram/messenger/R$string;->StealthModeConfirmMessage:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 3663
    sget v2, Lorg/telegram/messenger/R$string;->Proceed:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda37;

    invoke-direct {v3, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda37;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)V

    .line 3666
    sget p1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda38;

    invoke-direct {v2}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda38;-><init>()V

    invoke-virtual {v0, p1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)V

    .line 3667
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    goto :goto_0

    .line 3669
    :cond_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return v1
.end method

.method private bindInternal(I)V
    .locals 13

    const/4 v0, 0x0

    .line 4152
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->deletedPeer:Z

    const/4 v1, 0x1

    .line 4153
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->forceUpdateOffsets:Z

    .line 4154
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->userCanSeeViews:Z

    .line 4155
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isChannel:Z

    .line 4156
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isGroup:Z

    .line 4157
    iget-wide v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_2

    .line 4158
    iget v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v6

    cmp-long v2, v2, v6

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    .line 4159
    iget v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    .line 4160
    iget v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-virtual {v3, v6, v7}, Lorg/telegram/messenger/MessagesController;->isUserContactBlocked(J)Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;

    move-result-object v3

    .line 4161
    iget v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v3}, Lorg/telegram/messenger/DialogObject;->isPremiumBlocked(Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v1

    goto :goto_1

    :cond_1
    move v6, v0

    :goto_1
    iput-boolean v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isPremiumBlocked:Z

    .line 4162
    invoke-static {v3}, Lorg/telegram/messenger/DialogObject;->getMessagesStarsPrice(Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;)J

    move-result-wide v6

    iput-wide v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->starsPriceBlocked:J

    .line 4163
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-virtual {v3, v6, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$User;)V

    .line 4164
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object v3, v3, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v3, v2, v6}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V

    .line 4165
    iget-wide v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-direct {p0, v1, v2, v3, v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->setTitle(ZJZ)V

    goto/16 :goto_3

    .line 4167
    :cond_2
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    .line 4168
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isChannel:Z

    .line 4170
    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v6, v2, v3}, Lorg/telegram/ui/Stories/StoriesController;->canEditStories(J)Z

    move-result v2

    if-nez v2, :cond_3

    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v2, :cond_4

    .line 4171
    :cond_3
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->userCanSeeViews:Z

    .line 4173
    :cond_4
    iget v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    neg-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    .line 4174
    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    xor-int/lit8 v6, v3, 0x1

    iput-boolean v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isGroup:Z

    if-nez v3, :cond_5

    .line 4175
    iget v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    neg-long v6, v6

    invoke-virtual {v3, v6, v7}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    if-nez v3, :cond_5

    .line 4176
    iget v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v6

    iget-wide v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    neg-long v7, v7

    new-instance v10, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v10, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/messenger/MessagesStorage;->loadChatInfo(JZLjava/util/concurrent/CountDownLatch;ZZ)Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 4178
    :cond_5
    iget-boolean v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isGroup:Z

    if-eqz v3, :cond_6

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->canSendPlain(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-nez v3, :cond_6

    move v3, v1

    goto :goto_2

    :cond_6
    move v3, v0

    :goto_2
    iput-boolean v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isPremiumBlocked:Z

    .line 4179
    iget v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-virtual {v3, v6, v7}, Lorg/telegram/messenger/MessagesController;->getSendPaidMessagesStars(J)J

    move-result-wide v6

    iput-wide v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->starsPriceBlocked:J

    .line 4180
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-virtual {v3, v6, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$Chat;)V

    .line 4181
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object v3, v3, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v3, v2, v6}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V

    .line 4182
    iget-wide v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-direct {p0, v1, v2, v3, v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->setTitle(ZJZ)V

    .line 4184
    :goto_3
    iget-boolean v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-nez v2, :cond_7

    iget-boolean v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isChannel:Z

    if-eqz v2, :cond_8

    .line 4185
    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-virtual {v2, v6, v7, v1}, Lorg/telegram/ui/Stories/StoriesController;->pollViewsForSelfStories(JZ)V

    .line 4187
    :cond_8
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updateStoryItems()V

    .line 4188
    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    if-gez p1, :cond_9

    .line 4190
    iput v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    .line 4192
    :cond_9
    iput-wide v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentImageTime:J

    .line 4193
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->switchEventSent:Z

    const/4 v2, 0x0

    .line 4194
    iput-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    .line 4195
    iput-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    .line 4196
    iget-boolean v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isChannel:Z

    const/4 v4, -0x1

    const/16 v5, 0x8

    if-eqz v3, :cond_14

    .line 4197
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->createSelfPeerView()V

    .line 4198
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-nez v3, :cond_b

    iget-boolean v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isGroup:Z

    if-nez v3, :cond_a

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v3}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 4199
    :cond_a
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->createEnterView()V

    .line 4201
    :cond_b
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v3, :cond_10

    .line 4202
    iget v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    neg-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    .line 4203
    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v7}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v7

    if-nez v7, :cond_c

    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->isBotsPreview()Z

    move-result v7

    if-nez v7, :cond_d

    iget-boolean v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isGroup:Z

    if-eqz v7, :cond_d

    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->canSendPlain(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v7

    if-nez v7, :cond_c

    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isPossibleRemoveChatRestrictionsByBoosts(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v7

    if-eqz v7, :cond_d

    :cond_c
    move v5, v0

    :cond_d
    invoke-virtual {v6, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setVisibility(I)V

    .line 4204
    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v6}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v6

    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->disabledPaidFeatures(Z)Z

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setLiveComment(ZZ)V

    .line 4205
    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v6}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->disabledPaidFeatures(Z)Z

    move-result v6

    if-nez v6, :cond_f

    iget-boolean v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardVisible:Z

    if-nez v6, :cond_e

    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v6, v6, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiViewVisible:Z

    if-eqz v6, :cond_f

    :cond_e
    move v6, v1

    goto :goto_4

    :cond_f
    move v6, v0

    :goto_4
    invoke-virtual {v5, v6, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setSuggestionButtonVisible(ZZ)V

    .line 4206
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v1

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-wide v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iget-object v8, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v8, v8, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-virtual {v5, v6, v7, v8}, Lorg/telegram/ui/Stories/StoryViewer;->getDraft(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4207
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-wide v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iget v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-virtual {v1, v5, v6, v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setDialogId(JI)V

    .line 4208
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1, v3, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateRecordButton(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$UserFull;)V

    .line 4210
    :cond_10
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsCounter:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/high16 v2, 0x41600000    # 14.0f

    if-nez v1, :cond_11

    .line 4211
    new-instance v1, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-direct {v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsCounter:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    .line 4212
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 4213
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsCounter:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-interface {v3, v5}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    .line 4214
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsCounter:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    .line 4215
    new-instance v1, Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    invoke-direct {v1, v3}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsCounterProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 4218
    :cond_11
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->repostButtonContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->repostCounter:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-nez v1, :cond_12

    .line 4219
    new-instance v1, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-direct {v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->repostCounter:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    .line 4220
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->repostButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 4221
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->repostCounter:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-interface {v3, v5}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    .line 4222
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->repostCounter:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    .line 4223
    new-instance v1, Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->repostButtonContainer:Landroid/widget/FrameLayout;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->repostCounterProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    :cond_12
    if-ne p1, v4, :cond_13

    .line 4227
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updateSelectedPosition()V

    .line 4229
    :cond_13
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePosition()V

    .line 4230
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->getStoriesCount()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->count:I

    .line 4231
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 4232
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_f

    .line 4233
    :cond_14
    iget-boolean v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-eqz v3, :cond_22

    .line 4234
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->createSelfPeerView()V

    .line 4235
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 4236
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 4237
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-nez v2, :cond_15

    .line 4238
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->createEnterView()V

    .line 4240
    :cond_15
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setVisibility(I)V

    goto :goto_5

    .line 4242
    :cond_16
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4243
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v2, :cond_17

    .line 4244
    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setVisibility(I)V

    .line 4247
    :cond_17
    :goto_5
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v2, :cond_1a

    .line 4248
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v3}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v3

    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->disabledPaidFeatures(Z)Z

    move-result v5

    invoke-virtual {v2, v3, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setLiveComment(ZZ)V

    .line 4249
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v3}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->disabledPaidFeatures(Z)Z

    move-result v3

    if-nez v3, :cond_19

    iget-boolean v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardVisible:Z

    if-nez v3, :cond_18

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v3, v3, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiViewVisible:Z

    if-eqz v3, :cond_19

    :cond_18
    move v3, v1

    goto :goto_6

    :cond_19
    move v3, v0

    :goto_6
    invoke-virtual {v2, v3, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setSuggestionButtonVisible(ZZ)V

    :cond_1a
    if-ne p1, v4, :cond_21

    .line 4252
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->day:Ljava/util/ArrayList;

    if-eqz p1, :cond_1d

    .line 4253
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->dayStoryId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_1c

    .line 4255
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->day:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 4256
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->dayStoryId:I

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->day:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v2, v3, :cond_1b

    move p1, v0

    goto :goto_7

    .line 4258
    :cond_1b
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->dayStoryId:I

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->day:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v2, v3, :cond_1c

    .line 4259
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->day:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v1

    .line 4263
    :cond_1c
    :goto_7
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    goto :goto_a

    .line 4264
    :cond_1d
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1e

    .line 4265
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    goto :goto_a

    :cond_1e
    move p1, v0

    .line 4267
    :goto_8
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_21

    .line 4268
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-boolean v1, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->justUploaded:Z

    if-nez v1, :cond_20

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget v1, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoriesController;->dialogIdToMaxReadId:Lorg/telegram/messenger/support/LongSparseIntArray;

    iget-wide v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(J)I

    move-result v2

    if-le v1, v2, :cond_1f

    goto :goto_9

    :cond_1f
    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    .line 4269
    :cond_20
    :goto_9
    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    .line 4275
    :cond_21
    :goto_a
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePosition()V

    .line 4276
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 4277
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_f

    .line 4279
    :cond_22
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-nez v3, :cond_23

    .line 4280
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->createEnterView()V

    .line 4282
    :cond_23
    iget-boolean v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isPremiumBlocked:Z

    if-eqz v3, :cond_24

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->premiumBlockedText:Landroid/widget/LinearLayout;

    if-nez v3, :cond_24

    .line 4283
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->createPremiumBlockedText()V

    .line 4285
    :cond_24
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->premiumBlockedText:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_2a

    .line 4286
    iget-boolean v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isPremiumBlocked:Z

    if-nez v3, :cond_25

    iget-boolean v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->areLiveCommentsDisabled:Z

    if-eqz v3, :cond_26

    .line 4287
    :cond_25
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePremiumBlockedText()V

    .line 4289
    :cond_26
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->premiumBlockedText:Landroid/widget/LinearLayout;

    iget-boolean v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isPremiumBlocked:Z

    if-eqz v6, :cond_27

    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v6}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v6

    if-eqz v6, :cond_28

    :cond_27
    iget-boolean v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->areLiveCommentsDisabled:Z

    if-eqz v6, :cond_29

    :cond_28
    move v6, v0

    goto :goto_b

    :cond_29
    move v6, v5

    :goto_b
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 4291
    :cond_2a
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->failView:Lorg/telegram/ui/Stories/StoryFailView;

    if-eqz v3, :cond_2b

    .line 4292
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_2b
    if-ne p1, v4, :cond_2c

    .line 4295
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updateSelectedPosition()V

    .line 4297
    :cond_2c
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePosition()V

    .line 4298
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz p1, :cond_31

    .line 4299
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->isBotsPreview()Z

    move-result v3

    if-nez v3, :cond_2d

    iget-wide v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-static {v3, v4}, Lorg/telegram/messenger/UserObject;->isService(J)Z

    move-result v3

    if-nez v3, :cond_2d

    move v3, v0

    goto :goto_c

    :cond_2d
    move v3, v5

    :goto_c
    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setVisibility(I)V

    .line 4300
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v3}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v3

    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->disabledPaidFeatures(Z)Z

    move-result v4

    invoke-virtual {p1, v3, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setLiveComment(ZZ)V

    .line 4301
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v3}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->disabledPaidFeatures(Z)Z

    move-result v3

    if-nez v3, :cond_2f

    iget-boolean v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardVisible:Z

    if-nez v3, :cond_2e

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v3, v3, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiViewVisible:Z

    if-eqz v3, :cond_2f

    :cond_2e
    move v3, v1

    goto :goto_d

    :cond_2f
    move v3, v0

    :goto_d
    invoke-virtual {p1, v3, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setSuggestionButtonVisible(ZZ)V

    .line 4302
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-wide v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v6, v6, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-virtual {v1, v3, v4, v6}, Lorg/telegram/ui/Stories/StoryViewer;->getDraft(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4303
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-wide v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iget v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-virtual {p1, v3, v4, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setDialogId(JI)V

    .line 4304
    iget p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-virtual {p1, v3, v4}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object p1

    if-eqz p1, :cond_30

    .line 4306
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1, v2, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateRecordButton(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$UserFull;)V

    goto :goto_e

    .line 4308
    :cond_30
    iget p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    .line 4309
    iget v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->classGuid:I

    invoke-virtual {v1, p1, v2, v0}, Lorg/telegram/messenger/MessagesController;->loadFullUser(Lorg/telegram/tgnet/TLRPC$User;IZ)V

    .line 4312
    :cond_31
    :goto_e
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->getStoriesCount()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->count:I

    .line 4313
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfView:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_32

    .line 4314
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 4317
    :cond_32
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 4318
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4320
    :goto_f
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->checkStealthMode(Z)V

    return-void
.end method

.method private cancelWaiting()V
    .locals 2

    .line 5802
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->cancellableViews:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 5803
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 5804
    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->cancellableViews:Ljava/lang/Runnable;

    :cond_0
    const/4 v0, 0x0

    .line 5806
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->showViewsProgress:Z

    .line 5807
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz v1, :cond_1

    .line 5808
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {v1, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setIsWaiting(Z)V

    :cond_1
    return-void
.end method

.method private checkInstantCameraView()V
    .locals 5

    .line 7697
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;

    if-nez v0, :cond_1

    invoke-static {}, Lorg/telegram/messenger/camera/CameraView;->isCameraAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 7700
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/InstantCameraView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stories/PeerStoriesView$36;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$36;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Components/InstantCameraView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/InstantCameraView$Delegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;

    .line 7748
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getRecordCircle()Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->controlsView:Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 7749
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;

    const/16 v2, 0x33

    const/4 v3, -0x1

    invoke-static {v3, v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private checkStealthMode(Z)V
    .locals 11

    const/16 v0, 0x63

    .line 4856
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 4837
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isVisible:Z

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->attachedToWindow:Z

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 4840
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->updateStealthModeTimer:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 4841
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoriesController;->getStealthMode()Lorg/telegram/tgnet/tl/TL_stories$TL_storiesStealthMode;

    move-result-object v1

    .line 4842
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->checkSendButton(Z)V

    .line 4843
    iget-boolean v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isPremiumBlocked:Z

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-boolean v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->areLiveCommentsDisabled:Z

    if-eqz v2, :cond_3

    .line 4844
    :cond_2
    iput-boolean v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->stealthModeIsActive:Z

    .line 4845
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 4846
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const-string v1, " "

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setOverrideHint(Ljava/lang/CharSequence;Z)V

    return-void

    .line 4847
    :cond_3
    iget-wide v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->starsPriceBlocked:J

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    const/16 v5, 0x2c

    if-lez v2, :cond_4

    .line 4848
    iput-boolean v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->stealthModeIsActive:Z

    .line 4849
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 4850
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    sget v1, Lorg/telegram/messenger/R$string;->TypeMessageForStars:I

    iget-wide v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->starsPriceBlocked:J

    invoke-static {v6, v7, v5}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v4

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStars(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setOverrideHint(Ljava/lang/CharSequence;Z)V

    return-void

    .line 4851
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v2

    if-nez v2, :cond_6

    if-eqz v1, :cond_6

    iget v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    iget v1, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_storiesStealthMode;->active_until_date:I

    if-ge v2, v1, :cond_6

    .line 4852
    iput-boolean v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->stealthModeIsActive:Z

    .line 4853
    iget v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    sub-int/2addr v1, v2

    .line 4854
    div-int/lit8 v2, v1, 0x3c

    .line 4855
    rem-int/lit8 v1, v1, 0x3c

    .line 4856
    sget v5, Lorg/telegram/messenger/R$string;->StealthModeActiveHintShort:I

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    aput-object v0, v8, v4

    aput-object v0, v8, v3

    const-string v0, "%02d:%02d"

    invoke-static {v6, v0, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-array v9, v3, [Ljava/lang/Object;

    aput-object v8, v9, v4

    invoke-static {v5, v9}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 4857
    iget-object v8, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    .line 4858
    iget-object v8, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v8, v3}, Landroid/view/View;->setEnabled(Z)V

    int-to-float v5, v5

    const v8, 0x3f99999a    # 1.2f

    mul-float/2addr v5, v8

    .line 4859
    iget-object v8, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v5, v5, v8

    if-ltz v5, :cond_5

    .line 4860
    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    sget v8, Lorg/telegram/messenger/R$string;->StealthModeActiveHintShort:I

    new-array v9, v3, [Ljava/lang/Object;

    const-string v10, ""

    aput-object v10, v9, v4

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v4

    aput-object v1, v7, v3

    invoke-static {v6, v0, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v8, v0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setOverrideHint(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 4862
    :cond_5
    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    sget v8, Lorg/telegram/messenger/R$string;->StealthModeActiveHint:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v4

    aput-object v1, v7, v3

    invoke-static {v6, v0, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v4

    invoke-static {v8, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setOverrideHint(Ljava/lang/CharSequence;Z)V

    .line 4864
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->updateStealthModeTimer:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    .line 4866
    :cond_6
    iput-boolean v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->stealthModeIsActive:Z

    .line 4867
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 4868
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4869
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getStarsPrice()J

    move-result-wide v0

    cmp-long v2, v0, v7

    if-lez v2, :cond_7

    .line 4871
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    sget v6, Lorg/telegram/messenger/R$string;->CommentFor:I

    long-to-int v0, v0

    int-to-long v0, v0

    invoke-static {v0, v1, v5}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v4

    invoke-static {v6, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->spans:[Lorg/telegram/ui/Components/ColoredImageSpan;

    invoke-static {v0, v1}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStars(Ljava/lang/CharSequence;[Lorg/telegram/ui/Components/ColoredImageSpan;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v2, v0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setOverrideHint(Ljava/lang/CharSequence;Z)V

    .line 4872
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->spans:[Lorg/telegram/ui/Components/ColoredImageSpan;

    aget-object p1, p1, v4

    if-eqz p1, :cond_a

    const v0, 0x3f666666    # 0.9f

    .line 4873
    iput v0, p1, Lorg/telegram/ui/Components/ColoredImageSpan;->spaceScaleX:F

    return-void

    .line 4876
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    sget v1, Lorg/telegram/messenger/R$string;->Comment:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setOverrideHint(Ljava/lang/CharSequence;Z)V

    return-void

    .line 4879
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isGroup:Z

    if-eqz v1, :cond_9

    sget v1, Lorg/telegram/messenger/R$string;->ReplyToGroupStory:I

    goto :goto_1

    :cond_9
    sget v1, Lorg/telegram/messenger/R$string;->ReplyPrivately:I

    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setOverrideHint(Ljava/lang/CharSequence;Z)V

    :cond_a
    :goto_2
    return-void
.end method

.method private createChatAttachView()V
    .locals 9

    .line 3731
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-nez v0, :cond_0

    .line 3732
    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$23;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v7, 0x1

    iget-object v8, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/Stories/PeerStoriesView$23;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    .line 3743
    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$24;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$24;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->setDelegate(Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;)V

    .line 3843
    iget-object v0, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->loadGalleryPhotos()V

    .line 3844
    iget-object v0, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->setAllowEnterCaption(Z)V

    .line 3845
    iget-object v0, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->init()V

    .line 3846
    iget-object v0, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$25;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$25;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->setDocumentsDelegate(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;)V

    .line 3871
    iget-object v0, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentView()Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v0

    iget-object v1, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getFieldText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    move-object v2, p0

    return-void
.end method

.method private createCommentButton()V
    .locals 8

    .line 2970
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->commentButton:Lorg/telegram/ui/Stories/CommentButton;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2971
    :cond_0
    new-instance v0, Lorg/telegram/ui/Stories/CommentButton;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->blurredBackgroundColorProvider:Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProviderThemed;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Stories/CommentButton;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->commentButton:Lorg/telegram/ui/Stories/CommentButton;

    .line 2972
    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2975
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->commentButton:Lorg/telegram/ui/Stories/CommentButton;

    const/high16 v6, 0x40e00000    # 7.0f

    const/high16 v7, 0x40400000    # 3.0f

    const/16 v1, 0x2e

    const/high16 v2, 0x42280000    # 42.0f

    const/16 v3, 0x53

    const/high16 v4, 0x40e00000    # 7.0f

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private createEnterView()V
    .locals 11

    .line 3078
    new-instance v6, Lorg/telegram/ui/Stories/PeerStoriesView$18;

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v6, p0, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$18;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 3084
    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$19;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v3, p0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stories/PeerStoriesView$19;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/app/Activity;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ChatActivity;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    .line 3314
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->useAnimatedTextDrawable()V

    .line 3315
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 3316
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setOverrideKeyboardAnimation(Z)V

    .line 3317
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 3318
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    new-instance v4, Lorg/telegram/ui/Stories/PeerStoriesView$20;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$20;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setDelegate(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;)V

    .line 3557
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setDelegate(Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;)V

    .line 3558
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iput-boolean v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->shouldDrawBackground:Z

    .line 3559
    iput-boolean v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->shouldDrawRecordedAudioPanelInParent:Z

    .line 3560
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3561
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0, v2, v3, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setAllowStickersAndGifs(ZZZ)V

    goto :goto_0

    .line 3563
    :cond_0
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0, v2, v2, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setAllowStickersAndGifs(ZZZ)V

    .line 3565
    :goto_0
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateColors()V

    .line 3566
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iput-boolean v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->isStories:Z

    const/high16 v9, 0x40e00000    # 7.0f

    const/4 v10, 0x0

    const/4 v4, -0x1

    const/high16 v5, -0x40000000    # -2.0f

    const/16 v6, 0x53

    const/high16 v7, 0x40e00000    # 7.0f

    const/4 v8, 0x0

    .line 3567
    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3568
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->sendAsPeersObj:Lorg/telegram/tgnet/TLRPC$TL_channels_sendAsPeers;

    if-eqz v0, :cond_1

    .line 3569
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateSendAsButton(Z)V

    .line 3572
    :cond_1
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->classGuid:I

    iput v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordingGuid:I

    .line 3573
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->viewsToInvalidate:Ljava/util/ArrayList;

    iget-object v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3574
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->viewsToInvalidate:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3575
    iget-boolean v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->attachedToWindow:Z

    if-eqz v0, :cond_2

    .line 3576
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->onResume()V

    .line 3578
    :cond_2
    invoke-direct {p0, v3}, Lorg/telegram/ui/Stories/PeerStoriesView;->checkStealthMode(Z)V

    .line 3580
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->isBotsPreview()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3581
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setVisibility(I)V

    .line 3584
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerIndex:I

    return-void
.end method

.method private createFailView()V
    .locals 8

    .line 2764
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->failView:Lorg/telegram/ui/Stories/StoryFailView;

    if-eqz v0, :cond_0

    return-void

    .line 2767
    :cond_0
    new-instance v0, Lorg/telegram/ui/Stories/StoryFailView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Stories/StoryFailView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->failView:Lorg/telegram/ui/Stories/StoryFailView;

    .line 2768
    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda30;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/StoryFailView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2774
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->failView:Lorg/telegram/ui/Stories/StoryFailView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2775
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->failView:Lorg/telegram/ui/Stories/StoryFailView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2776
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->failView:Lorg/telegram/ui/Stories/StoryFailView;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v1, -0x1

    const/high16 v2, -0x40000000    # -2.0f

    const/16 v3, 0x53

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private createMentionsContainer()V
    .locals 9

    .line 3589
    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$21;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-wide v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v7, v1, Lorg/telegram/ui/Stories/StoryViewer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v8, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-wide/16 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Stories/PeerStoriesView$21;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/content/Context;JJLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    .line 3606
    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$22;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$22;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->mentionsDelegate:Lorg/telegram/ui/Components/MentionsContainerView$Delegate;

    .line 3648
    iget-object v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/MentionsContainerView;->withDelegate(Lorg/telegram/ui/Components/MentionsContainerView$Delegate;)V

    .line 3649
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    const/4 v2, -0x1

    const/16 v3, 0x53

    invoke-static {v2, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private createMuteButton()V
    .locals 8

    .line 3003
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteButton:Lorg/telegram/ui/Stories/MuteButton;

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 3004
    :cond_0
    new-instance v0, Lorg/telegram/ui/Stories/MuteButton;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->blurredBackgroundColorProvider:Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProviderThemed;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Stories/MuteButton;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteButton:Lorg/telegram/ui/Stories/MuteButton;

    .line 3005
    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda33;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda33;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3011
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteButton:Lorg/telegram/ui/Stories/MuteButton;

    sget-object v1, Lorg/telegram/ui/Stories/LivePlayer;->recording:Lorg/telegram/ui/Stories/LivePlayer;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/LivePlayer;->isMuted()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Stories/MuteButton;->setMuted(ZZ)V

    .line 3012
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteButton:Lorg/telegram/ui/Stories/MuteButton;

    sget-object v1, Lorg/telegram/ui/Stories/LivePlayer;->recording:Lorg/telegram/ui/Stories/LivePlayer;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/LivePlayer;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :cond_3
    :goto_1
    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Stories/MuteButton;->setConnected(ZZ)V

    .line 3013
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteButton:Lorg/telegram/ui/Stories/MuteButton;

    const/high16 v6, 0x40e00000    # 7.0f

    const/high16 v7, 0x40400000    # 3.0f

    const/16 v1, 0x2e

    const/high16 v2, 0x42280000    # 42.0f

    const/16 v3, 0x55

    const/high16 v4, 0x40e00000    # 7.0f

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private createPaidReactionsButton()V
    .locals 8

    .line 2979
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->starsButton:Lorg/telegram/ui/Stories/PaidReactionButton;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2980
    :cond_0
    new-instance v0, Lorg/telegram/ui/Stories/PaidReactionButton$PaidReactionButtonEffectsView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Stories/PaidReactionButton$PaidReactionButtonEffectsView;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->starsButtonEffectsView:Lorg/telegram/ui/Stories/PaidReactionButton$PaidReactionButtonEffectsView;

    .line 2981
    new-instance v0, Lorg/telegram/ui/Stories/PaidReactionButton;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->starsButtonEffectsView:Lorg/telegram/ui/Stories/PaidReactionButton$PaidReactionButtonEffectsView;

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->blurredBackgroundColorProvider:Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProviderThemed;

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/Stories/PaidReactionButton;-><init>(Landroid/content/Context;Lorg/telegram/ui/Stories/PaidReactionButton$PaidReactionButtonEffectsView;Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->starsButton:Lorg/telegram/ui/Stories/PaidReactionButton;

    .line 2982
    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda35;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda35;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2994
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->starsButton:Lorg/telegram/ui/Stories/PaidReactionButton;

    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda36;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda36;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2998
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->starsButton:Lorg/telegram/ui/Stories/PaidReactionButton;

    const/high16 v6, 0x40e00000    # 7.0f

    const/high16 v7, 0x40400000    # 3.0f

    const/16 v1, 0x2e

    const/high16 v2, 0x42280000    # 42.0f

    const/16 v3, 0x55

    const/high16 v4, 0x40e00000    # 7.0f

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2999
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->starsButtonEffectsView:Lorg/telegram/ui/Stories/PaidReactionButton$PaidReactionButtonEffectsView;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v1, 0xc8

    const/high16 v2, 0x43480000    # 200.0f

    const/4 v4, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private createPremiumBlockedText()V
    .locals 9

    .line 2780
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->premiumBlockedText:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    return-void

    .line 2783
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-nez v0, :cond_1

    .line 2784
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->createEnterView()V

    .line 2786
    :cond_1
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->premiumBlockedText:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    .line 2787
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2789
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2790
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const v2, 0x3faccccd    # 1.35f

    .line 2791
    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 2792
    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 2793
    sget v2, Lorg/telegram/messenger/R$drawable;->mini_switch_lock:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2794
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const v4, -0x7a7a7b

    invoke-direct {v2, v4, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2796
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->premiumBlockedText1:Landroid/widget/TextView;

    .line 2797
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2798
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->premiumBlockedText1:Landroid/widget/TextView;

    const/high16 v3, 0x41800000    # 16.0f

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2799
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->premiumBlockedText1:Landroid/widget/TextView;

    iget-boolean v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isGroup:Z

    if-eqz v3, :cond_2

    sget v3, Lorg/telegram/messenger/R$string;->StoryGroupRepliesLocked:I

    goto :goto_0

    :cond_2
    sget v3, Lorg/telegram/messenger/R$string;->StoryRepliesLocked:I

    :goto_0
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2801
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->premiumBlockedText2:Landroid/widget/TextView;

    const/4 v3, -0x1

    .line 2802
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2803
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->premiumBlockedText2:Landroid/widget/TextView;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2804
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->premiumBlockedText2:Landroid/widget/TextView;

    const/high16 v3, 0x42200000    # 40.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const v4, 0x1affffff

    const v5, 0x32ffffff

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2805
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->premiumBlockedText2:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 2806
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->premiumBlockedText2:Landroid/widget/TextView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    .line 2807
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->premiumBlockedText2:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->StoryRepliesLockedButton:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2808
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->premiumBlockedText2:Landroid/widget/TextView;

    const/high16 v3, 0x40e00000    # 7.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v4, v1, v3, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2810
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->premiumBlockedText:Landroid/widget/LinearLayout;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/16 v2, 0x16

    const/16 v3, 0x16

    const/16 v4, 0x10

    const/16 v5, 0xc

    const/4 v6, 0x1

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2811
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->premiumBlockedText:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->premiumBlockedText1:Landroid/widget/TextView;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, -0x2

    const/4 v3, -0x2

    const/4 v5, 0x0

    const v6, -0x41570a3d    # -0.33f

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2812
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->premiumBlockedText:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->premiumBlockedText2:Landroid/widget/TextView;

    const/4 v2, -0x2

    const/16 v3, 0x13

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2814
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->premiumBlockedText:Landroid/widget/LinearLayout;

    const/high16 v7, 0x41000000    # 8.0f

    const/4 v2, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    const/16 v4, 0x77

    const/high16 v5, 0x41600000    # 14.0f

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private createQualityItem(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)V
    .locals 5

    .line 2412
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController;->storyQualityFull:Z

    .line 2413
    iget v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_0

    .line 2414
    sget v1, Lorg/telegram/messenger/R$drawable;->menu_quality_sd:I

    goto :goto_0

    :cond_0
    sget v1, Lorg/telegram/messenger/R$drawable;->menu_quality_hd:I

    :goto_0
    if-eqz v0, :cond_1

    sget v2, Lorg/telegram/messenger/R$string;->StoryQualityDecrease:I

    goto :goto_1

    :cond_1
    sget v2, Lorg/telegram/messenger/R$string;->StoryQualityIncrease:I

    :goto_1
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Landroid/view/ViewGroup;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object p1

    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda51;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda51;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Z)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method private createReplyDisabledView()V
    .locals 8

    .line 5644
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->replyDisabledTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-void

    .line 5647
    :cond_0
    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$33;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$33;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->replyDisabledTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    .line 5653
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 5654
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->replyDisabledTextView:Landroid/widget/TextView;

    const/4 v1, -0x1

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, -0x1000000

    invoke-static {v3, v1, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5655
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->replyDisabledTextView:Landroid/widget/TextView;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 5656
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->replyDisabledTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->StoryReplyDisabled:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5657
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->replyDisabledTextView:Landroid/widget/TextView;

    const/high16 v6, 0x41800000    # 16.0f

    const/4 v7, 0x0

    const/4 v1, -0x2

    const/high16 v2, 0x42200000    # 40.0f

    const/4 v3, 0x3

    const/high16 v4, 0x41800000    # 16.0f

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private createSelfPeerView()V
    .locals 11

    .line 4475
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    return-void

    .line 4478
    :cond_0
    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$30;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$30;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfView:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    .line 4492
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 4493
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfView:Landroid/widget/FrameLayout;

    const/high16 v7, 0x43080000    # 136.0f

    const/4 v8, 0x0

    const/4 v2, -0x1

    const/high16 v3, 0x42400000    # 48.0f

    const/16 v4, 0x30

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4495
    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$31;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lorg/telegram/ui/Stories/PeerStoriesView$31;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfAvatarsContainer:Landroid/view/View;

    .line 4522
    new-instance v2, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda31;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4525
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfAvatarsContainer:Landroid/view/View;

    const/4 v9, 0x0

    const/4 v3, -0x1

    const/high16 v4, 0x42000000    # 32.0f

    const/4 v5, 0x0

    const/high16 v6, 0x41100000    # 9.0f

    const/high16 v7, 0x41300000    # 11.0f

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4527
    new-instance v0, Lorg/telegram/ui/Stories/HwAvatarsImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/Stories/HwAvatarsImageView;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfAvatarsView:Lorg/telegram/ui/Components/AvatarsImageView;

    const/high16 v2, 0x41900000    # 18.0f

    .line 4528
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AvatarsImageView;->setAvatarsTextSize(I)V

    .line 4529
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfAvatarsView:Lorg/telegram/ui/Components/AvatarsImageView;

    const/4 v10, 0x0

    const/4 v4, -0x1

    const/high16 v5, 0x41e00000    # 28.0f

    const/4 v6, 0x0

    const/high16 v7, 0x41500000    # 13.0f

    const/high16 v8, 0x41500000    # 13.0f

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4531
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfStatusView:Landroid/widget/TextView;

    const/high16 v2, 0x41600000    # 14.0f

    .line 4532
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 4533
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfStatusView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4534
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfStatusView:Landroid/widget/TextView;

    const/high16 v10, 0x41100000    # 9.0f

    const/4 v4, -0x2

    const/high16 v5, -0x40000000    # -2.0f

    const/4 v7, 0x0

    const/high16 v8, 0x41800000    # 16.0f

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4536
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 4537
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->deleteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4547
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfAvatarsContainer:Landroid/view/View;

    const/high16 v4, 0x41700000    # 15.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/16 v5, 0x78

    invoke-static {v1, v5}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v6

    invoke-static {v4, v3, v6}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4548
    invoke-static {v1, v5}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    neg-int v3, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    invoke-static {v1, v3, v2}, Lorg/telegram/ui/ActionBar/Theme;->createCircleSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private createStealthModeItem(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)V
    .locals 4

    .line 2374
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->isBotsPreview()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2375
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2376
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_stories_stealth2:I

    sget v1, Lorg/telegram/messenger/R$string;->StealthModeButton:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0, v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Landroid/view/ViewGroup;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda53;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda53;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private createUnsupportedContainer()V
    .locals 13

    .line 4324
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->unsupportedContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    return-void

    .line 4327
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 4329
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 4330
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 4332
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 4333
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4334
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v4, 0x41800000    # 16.0f

    .line 4335
    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 4336
    sget v5, Lorg/telegram/messenger/R$string;->StoryUnsupported:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4337
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4339
    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 4340
    invoke-static {v5}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    .line 4341
    sget v6, Lorg/telegram/messenger/R$string;->AppUpdate:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4342
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v6, v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4343
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    const/high16 v8, 0x41400000    # 12.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v5, v7, v9, v4, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v4, 0x11

    .line 4344
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 4345
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v4, 0x41700000    # 15.0f

    .line 4346
    invoke-virtual {v5, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 v2, 0x41000000    # 8.0f

    .line 4348
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 4349
    invoke-static {v4, v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 4350
    invoke-static {v6, v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v6

    const/16 v7, 0x1e

    invoke-static {v6, v7}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v6

    .line 4348
    invoke-static {v2, v4, v6}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 4347
    invoke-virtual {v5, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4352
    new-instance v2, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda28;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v5, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v2, -0x1

    const/4 v4, -0x2

    .line 4355
    invoke-static {v2, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x2

    const/4 v8, 0x0

    const/high16 v9, 0x41c00000    # 24.0f

    .line 4356
    invoke-static/range {v6 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v11, 0x42900000    # 72.0f

    const/4 v12, 0x0

    const/high16 v7, -0x40000000    # -2.0f

    const/16 v8, 0x11

    const/high16 v9, 0x42900000    # 72.0f

    .line 4358
    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4359
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4360
    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->unsupportedContainer:Landroid/widget/FrameLayout;

    return-void
.end method

.method private deleteStory()V
    .locals 3

    .line 4552
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 4553
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->isBotsPreview()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lorg/telegram/messenger/R$string;->DeleteBotPreviewTitle:I

    goto :goto_0

    :cond_0
    sget v1, Lorg/telegram/messenger/R$string;->DeleteStoryTitle:I

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 4554
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->isBotsPreview()Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lorg/telegram/messenger/R$string;->DeleteBotPreviewSubtitle:I

    goto :goto_1

    :cond_1
    sget v1, Lorg/telegram/messenger/R$string;->DeleteStorySubtitle:I

    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 4555
    sget v1, Lorg/telegram/messenger/R$string;->Delete:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda54;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda54;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 4583
    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda55;

    invoke-direct {v2}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda55;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 4586
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    .line 4587
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {v1, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->showDialog(Landroid/app/Dialog;)V

    .line 4588
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->redPositive()V

    return-void
.end method

.method private disabledPaidFeatures(Z)Z
    .locals 9

    .line 3017
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    .line 3018
    iget-wide v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-gez v6, :cond_4

    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v6, v6, Lorg/telegram/ui/Stories/StoryViewer;->livePlayer:Lorg/telegram/ui/Stories/LivePlayer;

    if-eqz v6, :cond_4

    if-nez p1, :cond_0

    return v8

    .line 3020
    :cond_0
    invoke-virtual {v6}, Lorg/telegram/ui/Stories/LivePlayer;->getDefaultSendAs()Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object p1

    .line 3021
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    neg-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 3022
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->livePlayer:Lorg/telegram/ui/Stories/LivePlayer;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/LivePlayer;->isAdmin()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canManageCalls(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    if-eqz p1, :cond_3

    .line 3023
    iget-wide v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-static {p1}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    invoke-static {p1}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    iget p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    return v8

    :cond_3
    :goto_0
    return v7

    :cond_4
    cmp-long v2, v2, v4

    if-ltz v2, :cond_7

    .line 3027
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    if-eqz v2, :cond_7

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->livePlayer:Lorg/telegram/ui/Stories/LivePlayer;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/LivePlayer;->isAdmin()Z

    move-result v2

    if-eqz v2, :cond_7

    if-nez p1, :cond_5

    return v7

    .line 3029
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryViewer;->livePlayer:Lorg/telegram/ui/Stories/LivePlayer;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/LivePlayer;->getDefaultSendAs()Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 3030
    iget-wide v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-static {p1}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    invoke-static {p1}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v2

    cmp-long p1, v2, v0

    if-eqz p1, :cond_6

    iget-wide v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    cmp-long p1, v2, v0

    if-nez p1, :cond_7

    :cond_6
    return v7

    :cond_7
    return v8
.end method

.method private drawLinesAsCounter()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private editPrivacy(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V
    .locals 5

    .line 8187
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v3, p2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->pinned:Z

    if-eqz v3, :cond_0

    const v3, 0x7fffffff

    goto :goto_0

    :cond_0
    iget v3, p2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->expire_date:I

    iget v4, p2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->date:I

    sub-int/2addr v3, v4

    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 8188
    invoke-virtual {v1, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->setValue(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    move-result-object p1

    const/4 v1, 0x0

    .line 8189
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->enableSharing(Z)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    move-result-object p1

    const/4 v2, 0x1

    .line 8191
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->isEdit(Z)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    move-result-object p1

    new-instance v2, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda39;

    invoke-direct {v2, p0, p2}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda39;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    .line 8192
    invoke-virtual {p1, v2, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->whenSelectedRules(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$DoneCallback;Z)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    move-result-object p1

    .line 8187
    invoke-interface {v0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->showDialog(Landroid/app/Dialog;)V

    return-void
.end method

.method private findActivity()Landroid/app/Activity;
    .locals 1

    .line 2838
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->parentActivity:Lorg/telegram/ui/LaunchActivity;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2841
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    .line 2844
    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    :cond_1
    return-object v0
.end method

.method private fragmentForLimit()Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 1

    .line 2850
    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$17;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$17;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    return-object v0
.end method

.method private getAccountInstance()Lorg/telegram/messenger/AccountInstance;
    .locals 1

    .line 7785
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    return-object v0
.end method

.method private getAnimatedEmojiSets(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Ljava/util/ArrayList;
    .locals 7

    if-eqz p1, :cond_15

    .line 2624
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2625
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2626
    iget-object v2, p1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media_areas:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    move v2, v3

    .line 2627
    :goto_0
    iget-object v4, p1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v4, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media_areas:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 2628
    iget-object v4, p1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v4, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media_areas:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    .line 2629
    instance-of v5, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaSuggestedReaction;

    if-eqz v5, :cond_3

    iget-object v4, v4, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;

    if-eqz v5, :cond_3

    .line 2630
    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;->document_id:J

    .line 2631
    iget v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v6, v4, v5}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findDocument(IJ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 2635
    :cond_0
    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->getInputStickerSet(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 2639
    :cond_1
    iget-wide v5, v4, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 2642
    :cond_2
    iget-wide v5, v4, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2643
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2647
    :cond_4
    iget-object v2, p1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v2, :cond_9

    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->entities:Ljava/util/ArrayList;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 2648
    :goto_2
    iget-object v2, p1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->entities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_14

    .line 2649
    iget-object v2, p1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->entities:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    .line 2650
    instance-of v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;

    if-nez v4, :cond_5

    goto :goto_3

    .line 2653
    :cond_5
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v4, :cond_6

    .line 2655
    iget v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    iget-wide v5, v2, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document_id:J

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findDocument(IJ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v4

    :cond_6
    if-nez v4, :cond_7

    goto :goto_3

    .line 2660
    :cond_7
    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->getInputStickerSet(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v2

    .line 2661
    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_3

    .line 2664
    :cond_8
    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2665
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2667
    :cond_9
    iget-object v2, p1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    if-eqz v2, :cond_14

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v2, :cond_14

    .line 2668
    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    if-eqz v2, :cond_e

    move v2, v3

    .line 2669
    :goto_4
    iget-object v4, p1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v4, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_e

    .line 2670
    iget-object v4, p1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v4, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    .line 2671
    iget-byte v5, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    const/4 v6, 0x4

    if-ne v5, v6, :cond_d

    iget-object v4, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    if-eqz v4, :cond_d

    iget-object v4, v4, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;

    if-eqz v5, :cond_d

    .line 2672
    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;->document_id:J

    .line 2673
    iget v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v6, v4, v5}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findDocument(IJ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v4

    if-nez v4, :cond_a

    goto :goto_5

    .line 2677
    :cond_a
    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->getInputStickerSet(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v4

    if-nez v4, :cond_b

    goto :goto_5

    .line 2681
    :cond_b
    iget-wide v5, v4, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    goto :goto_5

    .line 2684
    :cond_c
    iget-wide v5, v4, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2685
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 2689
    :cond_e
    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;

    .line 2690
    instance-of v2, p1, Landroid/text/Spanned;

    if-nez v2, :cond_f

    goto :goto_8

    .line 2693
    :cond_f
    move-object v2, p1

    check-cast v2, Landroid/text/Spanned;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const-class v4, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-interface {v2, v3, p1, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-nez p1, :cond_10

    goto :goto_8

    .line 2697
    :cond_10
    :goto_6
    array-length v2, p1

    if-ge v3, v2, :cond_14

    .line 2698
    aget-object v2, p1, v3

    iget-object v4, v2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v4, :cond_11

    .line 2700
    iget v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    iget-wide v5, v2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentId:J

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findDocument(IJ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v4

    :cond_11
    if-nez v4, :cond_12

    goto :goto_7

    .line 2705
    :cond_12
    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->getInputStickerSet(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v2

    .line 2706
    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    goto :goto_7

    .line 2709
    :cond_13
    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2710
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_14
    :goto_8
    return-object v1

    :cond_15
    const/4 p1, 0x0

    return-object p1
.end method

.method private getHideInterfaceAlpha()F
    .locals 3

    .line 7574
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToHideInterface:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/StoryViewer;->getProgressToSelfViews()F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0
.end method

.method private getMessageMinPrice()J
    .locals 3

    .line 3706
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 3707
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->livePlayer:Lorg/telegram/ui/Stories/LivePlayer;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 3708
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->disabledPaidFeatures(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    return-wide v1

    .line 3711
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->livePlayer:Lorg/telegram/ui/Stories/LivePlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/LivePlayer;->getSendPaidMessagesStars()J

    move-result-wide v0

    return-wide v0

    :cond_3
    :goto_0
    return-wide v1
.end method

.method public static getStoryId(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Stories/StoriesController$UploadingStory;)I
    .locals 0

    if-eqz p0, :cond_0

    .line 7099
    iget p0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    return p0

    :cond_0
    if-eqz p1, :cond_1

    .line 7100
    iget-object p0, p1, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz p0, :cond_1

    .line 7101
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editStoryId:I

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private hideCaptionWithInterface()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private hitButton(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 6445
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v1, v2

    .line 6447
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    cmpl-float v2, v2, v0

    if-ltz v2, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    cmpg-float v0, v2, v0

    if-gtz v0, :cond_0

    .line 6448
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v1, p1

    cmpg-float p1, p2, v1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isBotsPreview()Z
    .locals 2

    .line 5610
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-eqz v0, :cond_0

    iget v0, v0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isEditBotsPreview()Z
    .locals 4

    .line 5604
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->isBotsPreview()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 5605
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-wide v2, v2, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->dialogId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5606
    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v2, :cond_1

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$User;->bot_can_edit:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method private synthetic lambda$animateOut$59(Landroid/animation/ValueAnimator;)V
    .locals 5

    .line 8273
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    .line 8274
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    mul-float/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 8275
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 8276
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->optionsIconView:Landroid/widget/ImageView;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    iget v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    mul-float/2addr v1, v3

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 8277
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->optionsIconView:Landroid/widget/ImageView;

    iget v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    sub-float v1, v2, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 8278
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->pipIconView:Landroid/widget/ImageView;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    iget v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    mul-float/2addr v1, v3

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 8279
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->pipIconView:Landroid/widget/ImageView;

    iget v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    sub-float v1, v2, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 8280
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconContainer:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    iget v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    mul-float/2addr v1, v3

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 8281
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconContainer:Landroid/widget/FrameLayout;

    iget v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconViewAlpha:F

    iget v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    sub-float v3, v2, v3

    mul-float/2addr v1, v3

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 8282
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfView:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    .line 8283
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    mul-float/2addr v1, v3

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 8284
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfView:Landroid/widget/FrameLayout;

    iget v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    sub-float v1, v2, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 8286
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyButton:Lorg/telegram/ui/Stories/StoryPrivacyButton;

    if-eqz p1, :cond_1

    .line 8287
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 8288
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyButton:Lorg/telegram/ui/Stories/StoryPrivacyButton;

    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    sub-float v0, v2, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 8290
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    sub-float v0, v2, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 8291
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->getProgressToDismiss()F

    move-result p1

    .line 8292
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->getHideInterfaceAlpha()F

    move-result v0

    .line 8293
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_3

    sub-float v3, v2, p1

    mul-float/2addr v3, v0

    .line 8294
    iget v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    sub-float v4, v2, v4

    mul-float/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 8296
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->shareButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    sub-float v3, v2, p1

    mul-float/2addr v3, v0

    .line 8297
    iget v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    sub-float v4, v2, v4

    mul-float/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 8299
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->repostButtonContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_5

    sub-float p1, v2, p1

    mul-float/2addr v0, p1

    .line 8300
    iget p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    sub-float p1, v2, p1

    mul-float/2addr v0, p1

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 8302
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz p1, :cond_6

    .line 8303
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    sub-float/2addr v2, v0

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 8304
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 8306
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$checkRecordLocked$58(ZLorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 8250
    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 8252
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/StoryViewer;->close(Z)V

    return-void

    .line 8254
    :cond_0
    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelRecordingAudioVideo()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$createCommentButton$25(Landroid/view/View;)V
    .locals 2

    .line 2973
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->liveCommentsView:Lorg/telegram/ui/Stories/LiveCommentsView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/LiveCommentsView;->isCollapsed()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Stories/LiveCommentsView;->setCollapsed(ZZ)V

    return-void
.end method

.method private synthetic lambda$createFailView$21(Landroid/view/View;)V
    .locals 0

    .line 2769
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    if-eqz p1, :cond_0

    .line 2770
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->tryAgain()V

    .line 2771
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePosition()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createMuteButton$28(Landroid/view/View;)V
    .locals 2

    .line 3006
    sget-object p1, Lorg/telegram/ui/Stories/LivePlayer;->recording:Lorg/telegram/ui/Stories/LivePlayer;

    if-nez p1, :cond_0

    return-void

    .line 3007
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/LivePlayer;->isMuted()Z

    move-result p1

    .line 3008
    sget-object v0, Lorg/telegram/ui/Stories/LivePlayer;->recording:Lorg/telegram/ui/Stories/LivePlayer;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/LivePlayer;->setMuted(Z)V

    .line 3009
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteButton:Lorg/telegram/ui/Stories/MuteButton;

    const/4 v1, 0x1

    xor-int/2addr p1, v1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Stories/MuteButton;->setMuted(ZZ)V

    return-void
.end method

.method private synthetic lambda$createPaidReactionsButton$26(Landroid/view/View;)V
    .locals 4

    const/4 p1, 0x0

    .line 2983
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->disabledPaidFeatures(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2984
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->liveCommentsView:Lorg/telegram/ui/Stories/LiveCommentsView;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->disabledPaidFeatures(Z)Z

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/LiveCommentsView;->openStarsSheet(Z)V

    return-void

    .line 2986
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v0

    .line 2987
    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsController;->balanceAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lorg/telegram/ui/Stars/StarsController;->balance:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    iget-wide v0, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 2988
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->liveCommentsView:Lorg/telegram/ui/Stories/LiveCommentsView;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->disabledPaidFeatures(Z)Z

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/LiveCommentsView;->openStarsSheet(Z)V

    return-void

    .line 2990
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->liveCommentsView:Lorg/telegram/ui/Stories/LiveCommentsView;

    const-wide/16 v0, 0x1

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/Stories/LiveCommentsView;->sendStars(JZ)V

    return-void
.end method

.method private synthetic lambda$createPaidReactionsButton$27(Landroid/view/View;)Z
    .locals 1

    .line 2995
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->liveCommentsView:Lorg/telegram/ui/Stories/LiveCommentsView;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->disabledPaidFeatures(Z)Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/LiveCommentsView;->openStarsSheet(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$createQualityItem$14(ZLandroid/view/View;)V
    .locals 2

    xor-int/lit8 p2, p1, 0x1

    .line 2416
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/telegram/messenger/MessagesController;->setStoryQuality(Z)V

    .line 2417
    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$raw;->chats_infotip:I

    if-nez p1, :cond_0

    .line 2420
    sget v1, Lorg/telegram/messenger/R$string;->StoryQualityIncreasedTitle:I

    goto :goto_0

    :cond_0
    sget v1, Lorg/telegram/messenger/R$string;->StoryQualityDecreasedTitle:I

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez p1, :cond_1

    .line 2421
    sget p1, Lorg/telegram/messenger/R$string;->StoryQualityIncreasedMessage:I

    goto :goto_1

    :cond_1
    sget p1, Lorg/telegram/messenger/R$string;->StoryQualityDecreasedMessage:I

    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 2418
    invoke-virtual {p2, v0, v1, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 2423
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 2424
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->popupMenu:Lorg/telegram/ui/Components/CustomPopupMenu;

    if-eqz p1, :cond_2

    .line 2425
    invoke-virtual {p1}, Lorg/telegram/ui/Components/CustomPopupMenu;->dismiss()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$createSelfPeerView$40(Landroid/view/View;)V
    .locals 0

    .line 4523
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->showUserViewsDialog()V

    return-void
.end method

.method private synthetic lambda$createStealthModeItem$12(Landroid/view/View;)V
    .locals 4

    .line 2377
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->stealthModeIsActive:Z

    if-eqz p1, :cond_0

    .line 2378
    invoke-static {}, Lorg/telegram/ui/Stories/StealthModeAlert;->showStealthModeEnabledBulletin()V

    goto :goto_0

    .line 2380
    :cond_0
    new-instance p1, Lorg/telegram/ui/Stories/StealthModeAlert;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v1, v2

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, v0, v1, v2, v3}, Lorg/telegram/ui/Stories/StealthModeAlert;-><init>(Landroid/content/Context;FILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2381
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {v0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->showDialog(Landroid/app/Dialog;)V

    .line 2383
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->popupMenu:Lorg/telegram/ui/Components/CustomPopupMenu;

    if-eqz p1, :cond_1

    .line 2384
    invoke-virtual {p1}, Lorg/telegram/ui/Components/CustomPopupMenu;->dismiss()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$createUnsupportedContainer$39(Landroid/view/View;)V
    .locals 1

    .line 4353
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lorg/telegram/messenger/BuildVars;->GITHUB_APP_URL:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$deleteStory$41(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 4

    .line 4556
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVideoStream;

    if-eqz v1, :cond_0

    .line 4557
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVideoStream;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVideoStream;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    .line 4558
    sget-object v1, Lorg/telegram/ui/Stories/LivePlayer;->recording:Lorg/telegram/ui/Stories/LivePlayer;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Stories/LivePlayer;->equals(Lorg/telegram/tgnet/TLRPC$InputGroupCall;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4559
    sget-object p1, Lorg/telegram/ui/Stories/LivePlayer;->recording:Lorg/telegram/ui/Stories/LivePlayer;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/LivePlayer;->destroy()V

    .line 4560
    sget-object p1, Lorg/telegram/ui/Stories/LivePlayer;->recording:Lorg/telegram/ui/Stories/LivePlayer;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 4561
    sput-object p1, Lorg/telegram/ui/Stories/LivePlayer;->recording:Lorg/telegram/ui/Stories/LivePlayer;

    .line 4562
    iget p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/NotificationCenter;->liveStoryUpdated:I

    sget-object v2, Lorg/telegram/ui/Stories/LivePlayer;->recording:Lorg/telegram/ui/Stories/LivePlayer;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/LivePlayer;->getCallId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    aput-object v2, v3, p2

    invoke-virtual {p1, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 4567
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->cancelOrDelete()V

    .line 4568
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updateStoryItems()V

    .line 4569
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->count:I

    if-nez p1, :cond_1

    .line 4570
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {p1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->switchToNextAndRemoveCurrentPeer()V

    return-void

    .line 4573
    :cond_1
    iget p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    iget v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->count:I

    if-lt p1, v1, :cond_2

    sub-int/2addr v1, v0

    .line 4574
    iput v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    goto :goto_0

    :cond_2
    if-gez p1, :cond_3

    .line 4576
    iput p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    .line 4578
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePosition()V

    .line 4579
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    if-eqz p1, :cond_4

    .line 4580
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryViewer;->checkSelfStoriesView()V

    :cond_4
    return-void
.end method

.method private synthetic lambda$editPrivacy$55(Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;)V
    .locals 9

    if-eqz p1, :cond_0

    .line 8200
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    if-eqz p2, :cond_2

    .line 8202
    const-string p1, "STORY_NOT_MODIFIED"

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 8231
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->error:I

    sget p3, Lorg/telegram/messenger/R$string;->UnknownError:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto/16 :goto_5

    .line 8204
    :cond_2
    :goto_0
    iput-object p4, p3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->parsedPrivacy:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    .line 8205
    invoke-virtual {p4}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->toValue()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->privacy:Ljava/util/ArrayList;

    .line 8206
    iget p1, p4, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->type:I

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, p2

    :goto_1
    iput-boolean v1, p3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->close_friends:Z

    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    move v2, v0

    goto :goto_2

    :cond_4
    move v2, p2

    .line 8207
    :goto_2
    iput-boolean v2, p3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->contacts:Z

    const/4 v2, 0x3

    if-ne p1, v2, :cond_5

    move p1, v0

    goto :goto_3

    :cond_5
    move p1, p2

    .line 8208
    :goto_3
    iput-boolean p1, p3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->selected_contacts:Z

    .line 8209
    iget p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v3

    iget-wide v4, p3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v6, p3

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/ui/Stories/StoriesController;->updateStoryItem(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;ZZ)V

    .line 8210
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->editedPrivacy:Z

    .line 8212
    iget p1, p4, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->type:I

    const/4 p3, 0x4

    if-ne p1, p3, :cond_6

    .line 8213
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->contact_check:I

    const-string p3, "StorySharedToEveryone"

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto/16 :goto_5

    :cond_6
    if-ne p1, v0, :cond_7

    .line 8215
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->contact_check:I

    const-string p3, "StorySharedToCloseFriends"

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto/16 :goto_5

    :cond_7
    if-ne p1, v1, :cond_9

    .line 8217
    iget-object p1, p4, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 8218
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->contact_check:I

    const-string p3, "StorySharedToAllContacts"

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_5

    .line 8220
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    iget-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, p3}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p3, Lorg/telegram/messenger/R$raw;->contact_check:I

    iget-object p4, p4, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIds:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "StorySharedToAllContactsExcluded"

    invoke-static {v0, p4, p2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_5

    :cond_9
    if-ne p1, v2, :cond_b

    .line 8223
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 8224
    iget-object p3, p4, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIds:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 8225
    iget-object p3, p4, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIdsByGroup:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_a

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/ArrayList;

    .line 8226
    invoke-virtual {p1, p4}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    .line 8228
    :cond_a
    iget-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    iget-object p4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p3, p4}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p3

    sget p4, Lorg/telegram/messenger/R$raw;->contact_check:I

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "StorySharedToContacts"

    invoke-static {v0, p1, p2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p4, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 8234
    :cond_b
    :goto_5
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePosition()V

    return-void
.end method

.method private synthetic lambda$editPrivacy$56(Ljava/lang/Runnable;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    .line 8198
    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda57;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v3, p5

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda57;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$editPrivacy$57(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;ZZZZLorg/telegram/tgnet/TLRPC$InputPeer;ILjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .line 8193
    new-instance p3, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;

    invoke-direct {p3}, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;-><init>()V

    .line 8194
    iget p4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {p4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p4

    iget-wide p5, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    invoke-virtual {p4, p5, p6}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p4

    iput-object p4, p3, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 8195
    iget p4, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    iput p4, p3, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;->id:I

    .line 8196
    iget p4, p3, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;->flags:I

    or-int/lit8 p4, p4, 0x4

    iput p4, p3, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;->flags:I

    .line 8197
    iget-object p4, p2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->rules:Ljava/util/ArrayList;

    iput-object p4, p3, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;->privacy_rules:Ljava/util/ArrayList;

    .line 8198
    iget p4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {p4}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p4

    new-instance p5, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda50;

    invoke-direct {p5, p0, p9, p1, p2}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda50;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Ljava/lang/Runnable;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;)V

    invoke-virtual {p4, p3, p5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private synthetic lambda$needEnterText$54()V
    .locals 2

    .line 8085
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->requestAdjust(Z)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 1

    .line 1117
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    iget-boolean v0, p1, Lorg/telegram/ui/Stories/StoryCaptionView;->expanded:Z

    if-eqz v0, :cond_1

    .line 1118
    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryCaptionView;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1119
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryCaptionView;->collapse()V

    return-void

    .line 1121
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryCaptionView;->checkCancelTextSelection()V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 1124
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->checkBlackoutMode:Z

    .line 1125
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryCaptionView;->expand()V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 1134
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->shareStory(Z)V

    return-void
.end method

.method private synthetic lambda$new$10(Landroid/view/View;)V
    .locals 12

    .line 2195
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-nez p1, :cond_0

    goto/16 :goto_4

    .line 2199
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-eqz v0, :cond_2

    .line 2200
    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->privacy:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2201
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    iget v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x3

    invoke-direct {v0, v3, v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;-><init>(IILjava/util/ArrayList;)V

    goto :goto_0

    .line 2202
    :cond_1
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    iget v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    iget-object v2, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->privacy:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;-><init>(ILjava/util/ArrayList;)V

    .line 2203
    :goto_0
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->editPrivacy(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    return-void

    .line 2205
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v3, 0x41000000    # 8.0f

    if-nez v0, :cond_3

    .line 2206
    new-instance v0, Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;-><init>(Landroid/content/Context;I)V

    .line 2207
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setMultilineText(Z)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 2208
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Stories/recorder/HintView2;->setTextAlign(Landroid/text/Layout$Alignment;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    new-instance v4, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda32;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda32;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    .line 2209
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Stories/recorder/HintView2;->setOnHiddenListener(Ljava/lang/Runnable;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 2210
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v0, v4, v2, v5, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 2211
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v5, -0x1

    const/high16 v6, 0x42700000    # 60.0f

    const/16 v7, 0x37

    const/4 v8, 0x0

    const/high16 v9, 0x42500000    # 52.0f

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2213
    :cond_3
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-nez v0, :cond_4

    goto/16 :goto_4

    .line 2217
    :cond_4
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    const/16 v4, 0x20

    .line 2219
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-lez v4, :cond_5

    .line 2220
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2224
    :cond_5
    iget-boolean v4, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->close_friends:Z

    const/high16 v5, 0x41700000    # 15.0f

    if-eqz v4, :cond_6

    .line 2225
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p1, v5, v3, v5, v3}, Lorg/telegram/ui/Stories/recorder/HintView2;->setInnerPadding(FFFF)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 2226
    sget p1, Lorg/telegram/messenger/R$string;->StoryCloseFriendsHint:I

    new-array v3, v1, [Ljava/lang/Object;

    aput-object v0, v3, v2

    const-string v0, "StoryCloseFriendsHint"

    invoke-static {v0, p1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    :goto_1
    move v0, v1

    goto :goto_2

    .line 2227
    :cond_6
    iget-boolean v4, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->contacts:Z

    if-eqz v4, :cond_7

    .line 2228
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/high16 v3, 0x40c00000    # 6.0f

    const/high16 v4, 0x40e00000    # 7.0f

    const/high16 v5, 0x41300000    # 11.0f

    invoke-virtual {p1, v5, v3, v5, v4}, Lorg/telegram/ui/Stories/recorder/HintView2;->setInnerPadding(FFFF)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 2229
    sget p1, Lorg/telegram/messenger/R$string;->StoryContactsHint:I

    new-array v3, v1, [Ljava/lang/Object;

    aput-object v0, v3, v2

    const-string v0, "StoryContactsHint"

    invoke-static {v0, p1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    move v0, v2

    goto :goto_2

    .line 2231
    :cond_7
    iget-boolean p1, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->selected_contacts:Z

    if-eqz p1, :cond_a

    .line 2232
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p1, v5, v3, v5, v3}, Lorg/telegram/ui/Stories/recorder/HintView2;->setInnerPadding(FFFF)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 2233
    sget p1, Lorg/telegram/messenger/R$string;->StorySelectedContactsHint:I

    new-array v3, v1, [Ljava/lang/Object;

    aput-object v0, v3, v2

    const-string v0, "StorySelectedContactsHint"

    invoke-static {v0, p1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    goto :goto_1

    .line 2237
    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/recorder/HintView2;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    invoke-static {p1, v3, v2}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object p1

    .line 2238
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v0, :cond_8

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->cutInFancyHalf(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result v0

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    :goto_3
    invoke-virtual {v2, v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->setMaxWidthPx(I)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 2239
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 2240
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyButton:Lorg/telegram/ui/Stories/StoryPrivacyButton;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/StoryPrivacyButton;->getCenterX()F

    move-result v2

    sub-float/2addr v0, v2

    neg-float v0, v0

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2, v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->setJoint(FF)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 2241
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {p1, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setIsHintVisible(Z)V

    .line 2242
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->shown()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 2243
    sget-object p1, Lorg/telegram/messenger/BotWebViewVibrationEffect;->IMPACT_LIGHT:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {p1}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    .line 2245
    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->show()Lorg/telegram/ui/Stories/recorder/HintView2;

    :cond_a
    :goto_4
    return-void
.end method

.method private synthetic lambda$new$11(Lorg/telegram/ui/Stories/StoryViewer;Landroid/view/View;)V
    .locals 1

    .line 2251
    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {p2}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->hasSound()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2252
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryViewer;->toggleSilentMode()V

    .line 2253
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryViewer;->soundEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2254
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "taptostorysoundhint"

    const/4 v0, 0x3

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x1

    .line 2257
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->showNoSoundHint(Z)V

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 0

    .line 1167
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->tryToOpenRepostStory()V

    return-void
.end method

.method private synthetic lambda$new$3()V
    .locals 1

    const/4 v0, 0x0

    .line 1197
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->likeStory(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    return-void
.end method

.method private synthetic lambda$new$4(Landroid/view/View;)V
    .locals 0

    .line 1195
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->sent_reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    if-nez p1, :cond_0

    .line 1196
    new-instance p1, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda34;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda34;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->applyMessageToChat(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 1200
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->likeStory(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    return-void
.end method

.method private synthetic lambda$new$43()V
    .locals 1

    const/4 v0, 0x1

    .line 4834
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->checkStealthMode(Z)V

    return-void
.end method

.method private synthetic lambda$new$5(Lorg/telegram/ui/Stories/StoryViewer;Landroid/view/View;)Z
    .locals 1

    .line 1204
    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsTooltipRunnable:Ljava/lang/Runnable;

    if-eqz p2, :cond_0

    .line 1205
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 p2, 0x0

    .line 1206
    iput-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsTooltipRunnable:Ljava/lang/Runnable;

    :cond_0
    const/4 p2, 0x1

    .line 1208
    invoke-static {p2}, Lorg/telegram/messenger/SharedConfig;->setStoriesReactionsLongPressHintUsed(Z)V

    .line 1209
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsLongpressTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v0, :cond_1

    .line 1210
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    .line 1212
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->checkReactionsLayoutForLike()V

    .line 1213
    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->emptyMotionEvent()Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1214
    invoke-direct {p0, p2}, Lorg/telegram/ui/Stories/PeerStoriesView;->showLikesReaction(Z)V

    return p2
.end method

.method private synthetic lambda$new$51()V
    .locals 4

    const/4 v0, 0x0

    .line 5618
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->showNoSoundHint(Z)V

    .line 5619
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "taptostorysoundhint"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private synthetic lambda$new$6(Lorg/telegram/ui/Stories/StoryViewer;Landroid/view/View;)V
    .locals 4

    .line 1238
    iget p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    iget-wide v0, p2, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    iget-wide v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    .line 1239
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 1240
    const-string v0, "type"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1241
    const-string v0, "dialog_id"

    iget-wide v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 1242
    new-instance v0, Lorg/telegram/ui/Components/MediaActivity;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lorg/telegram/ui/Components/MediaActivity;-><init>(Landroid/os/Bundle;Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;)V

    .line 1243
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/StoryViewer;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long p2, v2, v0

    if-lez p2, :cond_1

    .line 1246
    invoke-static {v2, v3}, Lorg/telegram/ui/ProfileActivity;->of(J)Lorg/telegram/ui/ProfileActivity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/StoryViewer;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void

    .line 1248
    :cond_1
    invoke-static {v2, v3}, Lorg/telegram/ui/ChatActivity;->of(J)Lorg/telegram/ui/ChatActivity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/StoryViewer;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method private synthetic lambda$new$8(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Stories/StoryViewer;Landroid/content/Context;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;Landroid/view/View;)V
    .locals 14

    .line 1289
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setPopupIsVisible(Z)V

    const/4 v0, 0x0

    .line 1290
    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->editStoryItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 1291
    new-array v12, v2, [Z

    const/4 v13, 0x0

    aput-boolean v13, v12, v13

    .line 1292
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-eqz v0, :cond_0

    .line 1293
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController;->loadBlocklistAtFirst()V

    .line 1294
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController;->loadSendAs()V

    .line 1295
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController;->getDraftsController()Lorg/telegram/ui/Stories/recorder/DraftsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/DraftsController;->load()V

    .line 1297
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-nez v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v3, v3, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/StoriesController;->canEditStory(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v9, v13

    goto :goto_1

    :cond_2
    :goto_0
    move v9, v2

    .line 1298
    :goto_1
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isChannel:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->isBotsPreview()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    if-eqz v9, :cond_4

    goto :goto_2

    :cond_4
    move v8, v13

    goto :goto_3

    :cond_5
    :goto_2
    move v8, v2

    .line 1299
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisVideo(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v7

    .line 1303
    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$8;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x1

    move-object v5, p1

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v6, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-direct/range {v0 .. v12}, Lorg/telegram/ui/Stories/PeerStoriesView$8;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Stories/StoryViewer;ZZZLandroid/content/Context;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;[Z)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->popupMenu:Lorg/telegram/ui/Components/CustomPopupMenu;

    .line 2167
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->optionsIconView:Landroid/widget/ImageView;

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v3

    neg-int v3, v3

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0, v2, v13, v3}, Lorg/telegram/ui/Components/CustomPopupMenu;->show(Landroid/view/View;II)V

    return-void
.end method

.method private synthetic lambda$new$9()V
    .locals 2

    .line 2209
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setIsHintVisible(Z)V

    return-void
.end method

.method private synthetic lambda$onHighlightLiveMessage$52(Ljava/lang/Long;)V
    .locals 2

    .line 5631
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->messageStars:J

    .line 5632
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 5633
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->checkSendButton(Z)V

    .line 5634
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateSendButtonPaid()V

    .line 5636
    :cond_0
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->checkStealthMode(Z)V

    return-void
.end method

.method private synthetic lambda$onMeasure$53(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 7194
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->animatingKeyboardHeight:F

    .line 7195
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$openRepostStory$33()V
    .locals 1

    const/4 v0, 0x1

    .line 3977
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->editOpened:Z

    const/4 v0, 0x0

    .line 3978
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->setActive(Z)V

    return-void
.end method

.method private synthetic lambda$openRepostStory$37(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/lang/Long;Ljava/lang/Runnable;Ljava/lang/Boolean;Ljava/lang/Long;)V
    .locals 14

    .line 3981
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-wide/16 v1, 0x190

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_6

    .line 3984
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/4 v5, 0x0

    if-eqz v0, :cond_3

    .line 3985
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3987
    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v6

    .line 3988
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3989
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v3

    :goto_0
    if-ltz v8, :cond_3

    .line 3990
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 3991
    instance-of v9, v3, Lorg/telegram/ui/DialogsActivity;

    if-eqz v9, :cond_2

    .line 3992
    check-cast v3, Lorg/telegram/ui/DialogsActivity;

    .line 3993
    invoke-virtual {v3}, Lorg/telegram/ui/DialogsActivity;->closeSearching()V

    .line 3994
    iget-object v3, v3, Lorg/telegram/ui/DialogsActivity;->dialogStoriesCell:Lorg/telegram/ui/Stories/DialogStoriesCell;

    if-eqz v3, :cond_0

    .line 3996
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lorg/telegram/ui/Stories/DialogStoriesCell;->findStoryCell(J)Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;

    move-result-object v5

    :cond_0
    move v6, v4

    .line 3998
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_1

    .line 3999
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-interface {v0, v8}, Lorg/telegram/ui/ActionBar/INavigationLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    move-wide v0, v1

    move-object v2, v3

    goto :goto_2

    .line 4003
    :cond_2
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    :cond_3
    move-wide v0, v1

    move-object v2, v5

    .line 4007
    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoryViewer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v3, :cond_4

    .line 4008
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->clearSheets()V

    .line 4010
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/StoryViewer;->instantClose()V

    .line 4011
    iput-boolean v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->editOpened:Z

    if-eqz v2, :cond_5

    .line 4013
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Stories/DialogStoriesCell;->scrollTo(J)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4015
    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda47;

    move-object v4, p1

    move-object/from16 v3, p5

    move-object v1, v5

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda47;-><init>(Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;Lorg/telegram/ui/Stories/DialogStoriesCell;Ljava/lang/Long;Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->afterNextLayout(Ljava/lang/Runnable;)V

    return-void

    :cond_5
    move-object v2, v5

    move-object/from16 v5, p3

    .line 4024
    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->fromStoryCell(Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->replaceSourceView(Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;)V

    .line 4025
    invoke-static {v5, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    :cond_6
    move-object/from16 v5, p3

    move-wide v0, v1

    .line 4029
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 4030
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    if-eqz p1, :cond_8

    iget-object v2, p1, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->player:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    if-nez v2, :cond_8

    .line 4031
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {p1, v4}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setPopupIsVisible(Z)V

    .line 4032
    invoke-virtual {p0, v3}, Lorg/telegram/ui/Stories/PeerStoriesView;->setActive(Z)V

    .line 4033
    iput-boolean v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->editOpened:Z

    .line 4034
    new-instance p1, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda48;

    invoke-direct {p1, v5}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda48;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->onImageReceiverThumbLoaded:Ljava/lang/Runnable;

    .line 4038
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 4039
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePosition()V

    .line 4041
    :cond_7
    invoke-static {v5, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    .line 4044
    :cond_8
    iget-object v2, p1, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->player:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    iput-boolean v4, v2, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->firstFrameRendered:Z

    iput-boolean v4, p1, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->firstFrameRendered:Z

    .line 4045
    new-instance p1, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda49;

    invoke-direct {p1, v5, v6, v7}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda49;-><init>(Ljava/lang/Runnable;J)V

    invoke-virtual {v2, p1}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->setOnReadyListener(Ljava/lang/Runnable;)V

    .line 4049
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {p1, v4}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setPopupIsVisible(Z)V

    .line 4050
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconView:Lorg/telegram/ui/Components/RLottieImageView;

    if-eqz p1, :cond_9

    .line 4051
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->muteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    .line 4053
    :cond_9
    iget-wide v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->videoDuration:J

    const-wide/16 v8, 0x0

    cmp-long p1, v6, v8

    if-lez p1, :cond_a

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-wide v10, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->videoDuration:J

    const-wide/16 v12, 0x578

    sub-long/2addr v10, v12

    cmp-long p1, v6, v10

    if-lez p1, :cond_a

    .line 4054
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_3

    :cond_a
    move-object/from16 p1, p2

    .line 4056
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7, v3}, Lorg/telegram/ui/Stories/PeerStoriesView;->setActive(JZ)V

    .line 4057
    iput-boolean v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->editOpened:Z

    .line 4058
    invoke-static {v5, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 4059
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 4060
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePosition()V

    :cond_b
    return-void
.end method

.method private synthetic lambda$openRepostStory$38(Landroid/app/Activity;)V
    .locals 7

    .line 3969
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getInstance(Landroid/app/Activity;I)Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    move-result-object v1

    .line 3971
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->player:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    if-eqz p1, :cond_0

    .line 3972
    iget-wide v2, p1, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->currentPosition:J

    :goto_0
    move-wide v4, v2

    goto :goto_1

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0

    .line 3974
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->getPath()Ljava/io/File;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->repostStoryItem(Ljava/io/File;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v3

    .line 3975
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->fromStoryViewer(Lorg/telegram/ui/Stories/StoryViewer;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    move-result-object v2

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openForward(Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;Lorg/telegram/ui/Stories/recorder/StoryEntry;JZ)V

    .line 3976
    new-instance p1, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda44;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda44;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->setOnFullyOpenListener(Ljava/lang/Runnable;)V

    .line 3980
    new-instance p1, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda45;

    invoke-direct {p1, p0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda45;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->setOnPrepareCloseListener(Lorg/telegram/messenger/Utilities$Callback4;)V

    return-void
.end method

.method private synthetic lambda$saveToGallery$32(ZLandroid/net/Uri;)V
    .locals 1

    .line 3685
    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p2, p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createSaveToGalleryBulletin(Landroid/widget/FrameLayout;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$showLikesReaction$17(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 2511
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionShowProgress:F

    .line 2512
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setTransitionProgress(F)V

    return-void
.end method

.method private synthetic lambda$showPaidMessageHint$29(Lorg/telegram/ui/Stories/recorder/HintView2;)V
    .locals 1

    .line 3067
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3068
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->highlightMessageHintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 3069
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->highlightMessageHintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    :cond_0
    return-void
.end method

.method private synthetic lambda$showPremiumBlockedToast$22(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;)V
    .locals 6

    .line 2916
    iput-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    .line 2917
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->fragmentForLimit()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    iget-wide v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->openBoostsForRemoveRestrictions(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;JZ)Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    .line 2918
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 2919
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/StoryViewer;->setOverlayVisible(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showPremiumBlockedToast$23(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V
    .locals 4

    if-nez p1, :cond_1

    .line 2909
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 2910
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/StoryViewer;->setOverlayVisible(Z)V

    :cond_0
    return-void

    .line 2914
    :cond_1
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    .line 2915
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getBoostsController()Lorg/telegram/messenger/ChannelBoostsController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    new-instance v3, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda46;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda46;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V

    invoke-virtual {v0, v1, v2, p1, v3}, Lorg/telegram/messenger/ChannelBoostsController;->userCanBoostChannel(JLorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void
.end method

.method private synthetic lambda$showPremiumBlockedToast$24()V
    .locals 3

    .line 2938
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    if-eqz v0, :cond_0

    .line 2939
    new-instance v1, Lorg/telegram/ui/PremiumPreviewFragment;

    const-string v2, "noncontacts"

    invoke-direct {v1, v2}, Lorg/telegram/ui/PremiumPreviewFragment;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/StoryViewer;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$toggleArchiveForStory$20(Lorg/telegram/messenger/MessagesController;JZLjava/lang/String;Lorg/telegram/tgnet/TLObject;)V
    .locals 6

    .line 2741
    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-wide v1, p2

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Stories/StoriesController;->toggleHidden(JZZZ)V

    .line 2742
    new-instance p2, Lorg/telegram/ui/Components/BulletinFactory$UndoObject;

    invoke-direct {p2}, Lorg/telegram/ui/Components/BulletinFactory$UndoObject;-><init>()V

    .line 2743
    new-instance p3, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda0;

    invoke-direct {p3, p1, v1, v2, v3}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/MessagesController;JZ)V

    iput-object p3, p2, Lorg/telegram/ui/Components/BulletinFactory$UndoObject;->onUndo:Ljava/lang/Runnable;

    .line 2746
    new-instance p3, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda1;

    invoke-direct {p3, p1, v1, v2, v3}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/MessagesController;JZ)V

    iput-object p3, p2, Lorg/telegram/ui/Components/BulletinFactory$UndoObject;->onAction:Ljava/lang/Runnable;

    const/4 p1, 0x0

    const/4 p3, 0x1

    const/16 p4, 0xa

    const/4 v0, 0x0

    if-nez v3, :cond_0

    .line 2751
    sget v1, Lorg/telegram/messenger/R$string;->StoriesMovedToDialogs:I

    invoke-static {p5, v0, p4}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p4

    new-array p5, p3, [Ljava/lang/Object;

    aput-object p4, p5, p1

    invoke-static {v1, p5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p4

    goto :goto_0

    .line 2753
    :cond_0
    sget v1, Lorg/telegram/messenger/R$string;->StoriesMovedToContacts:I

    invoke-static {p5, v0, p4}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p4

    new-array p5, p3, [Ljava/lang/Object;

    aput-object p4, p5, p1

    invoke-static {v1, p5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p4

    .line 2755
    :goto_0
    iget-object p5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->topBulletinContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p5, v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p5

    new-array v1, p3, [Lorg/telegram/tgnet/TLObject;

    aput-object p6, v1, p1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p5, p1, p4, v0, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createUsersBulletin(Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/telegram/ui/Components/BulletinFactory$UndoObject;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Bulletin;->setTag(I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$updatePosition$44(Lorg/telegram/ui/Stories/StoryCaptionView$Reply;Landroid/view/View;)V
    .locals 4

    .line 5187
    iget-object p2, p1, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->peerId:Ljava/lang/Long;

    if-eqz p2, :cond_2

    .line 5188
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 5189
    iget-object v0, p1, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->peerId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 5190
    iget-object v0, p1, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->peerId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string v2, "user_id"

    invoke-virtual {p2, v2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 5192
    :cond_0
    iget-object v0, p1, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->peerId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    neg-long v0, v0

    const-string v2, "chat_id"

    invoke-virtual {p2, v2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 5194
    :goto_0
    iget-boolean v0, p1, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->isRepostMessage:Z

    if-eqz v0, :cond_1

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->messageId:Ljava/lang/Integer;

    if-eqz p1, :cond_1

    .line 5195
    const-string v0, "message_id"

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2, v0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 5196
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    new-instance v0, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v0, p2}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/StoryViewer;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void

    .line 5198
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    new-instance v0, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {v0, p2}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/StoryViewer;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void

    .line 5201
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->error:I

    sget v0, Lorg/telegram/messenger/R$string;->StoryHidAccount:I

    .line 5202
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    const/4 p2, 0x3

    .line 5203
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Bulletin;->setTag(I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    const/4 p2, 0x1

    .line 5204
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$updatePosition$45(JLandroid/view/View;)V
    .locals 2

    .line 5236
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 5238
    const-string v0, "user_id"

    invoke-virtual {p3, v0, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 5240
    :cond_0
    const-string v0, "chat_id"

    neg-long p1, p1

    invoke-virtual {p3, v0, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 5242
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    new-instance p2, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p2, p3}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/StoryViewer;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method private synthetic lambda$updatePosition$46()V
    .locals 0

    .line 5361
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->onHighlightLiveMessage()V

    return-void
.end method

.method private synthetic lambda$updatePosition$47()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 5364
    iput-wide v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->messageStars:J

    .line 5365
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 5366
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->checkSendButton(Z)V

    .line 5367
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateSendButtonPaid()V

    .line 5368
    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->checkStealthMode(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updatePosition$48(Landroid/view/View;)Z
    .locals 7

    const/4 v0, 0x1

    .line 5356
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->disabledPaidFeatures(Z)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 5359
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v3, p1}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_edit:I

    sget v3, Lorg/telegram/messenger/R$string;->LiveStoryMessageEditStars:I

    .line 5360
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda26;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {p1, v1, v3, v4}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    iget-wide v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->messageStars:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_1

    move v2, v0

    :cond_1
    sget v1, Lorg/telegram/messenger/R$drawable;->menu_delete_paid:I

    sget v3, Lorg/telegram/messenger/R$string;->LiveStoryMessageRemoveStars:I

    .line 5363
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda27;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {p1, v2, v1, v3, v4}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    const/4 v1, 0x5

    .line 5371
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ItemOptions;->setGravity(I)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    .line 5372
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ItemOptions;->forceTop(Z)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    .line 5373
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    return v0
.end method

.method private synthetic lambda$updatePosition$49()V
    .locals 2

    .line 5552
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->failView:Lorg/telegram/ui/Stories/StoryFailView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$updatePosition$50()V
    .locals 10

    .line 5573
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryViewer;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 5576
    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsTooltipRunnable:Ljava/lang/Runnable;

    .line 5577
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsLongpressTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-nez v0, :cond_2

    .line 5578
    new-instance v0, Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;-><init>(Landroid/content/Context;I)V

    const/high16 v1, -0x3e500000    # -22.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setJoint(FF)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsLongpressTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/4 v1, -0x1

    const v3, 0x3e051eb8    # 0.13f

    const/high16 v4, -0x1000000

    .line 5579
    invoke-static {v4, v1, v3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    const/16 v3, 0xf0

    invoke-static {v1, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setBgColor(I)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 5580
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsLongpressTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setBounce(Z)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 5581
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsLongpressTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    sget v3, Lorg/telegram/messenger/R$string;->ReactionLongTapHint:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/recorder/HintView2;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 5582
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsLongpressTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v0, v4, v1, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 5583
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsLongpressTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    iget-boolean v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->BIG_SCREEN:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    move v9, v2

    goto :goto_1

    :cond_1
    const/high16 v2, 0x42600000    # 56.0f

    goto :goto_0

    :goto_1
    const/4 v3, -0x1

    const/high16 v4, -0x40000000    # -2.0f

    const/16 v5, 0x55

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5585
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsLongpressTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->show()Lorg/telegram/ui/Stories/recorder/HintView2;

    const/4 v0, 0x1

    .line 5586
    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setStoriesReactionsLongPressHintUsed(Z)V

    return-void
.end method

.method private likeStory(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V
    .locals 13

    .line 2545
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2548
    iget-object v3, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->sent_reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    .line 2549
    :goto_0
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->sent_reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_1

    .line 2570
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->animateLikeButton()V

    .line 2571
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v7, v7, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-virtual {p1, v5, v6, v7, v4}, Lorg/telegram/ui/Stories/StoriesController;->setStoryReaction(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    goto :goto_2

    :cond_3
    :goto_1
    if-nez p1, :cond_5

    .line 2552
    iget p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaDataController;->getReactionsMap()Ljava/util/HashMap;

    move-result-object p1

    const-string v5, "\u2764"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    if-eqz p1, :cond_6

    .line 2554
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->drawAnimatedEmojiAsMovingReaction:Z

    .line 2555
    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->around_animation:Lorg/telegram/tgnet/TLRPC$Document;

    .line 2556
    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->getFilterForAroundAnimation()Ljava/lang/String;

    move-result-object v8

    .line 2557
    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionEffectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v5}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v7

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 2558
    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionEffectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 2559
    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionEffectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v5

    invoke-virtual {v5, v1, v1, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZZ)V

    .line 2561
    :cond_4
    iput-boolean v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->drawReactionEffect:Z

    .line 2562
    invoke-static {p1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromEmojicon(Lorg/telegram/tgnet/TLRPC$TL_availableReaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object p1

    .line 2563
    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iget-object v8, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v8, v8, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-virtual {v5, v6, v7, v8, p1}, Lorg/telegram/ui/Stories/StoriesController;->setStoryReaction(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    goto :goto_2

    .line 2566
    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->animateLikeButton()V

    .line 2567
    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iget-object v8, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v8, v8, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-virtual {v5, v6, v7, v8, p1}, Lorg/telegram/ui/Stories/StoriesController;->setStoryReaction(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    .line 2575
    :cond_6
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz p1, :cond_8

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->sent_reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    if-nez p1, :cond_7

    goto :goto_3

    :cond_7
    xor-int/lit8 v3, v3, 0x1

    .line 2584
    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesLikeButton:Lorg/telegram/ui/Stories/StoriesLikeButton;

    invoke-static {p1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTL(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object p1

    invoke-virtual {v4, p1}, Lorg/telegram/ui/Stories/StoriesLikeButton;->setReaction(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    const/4 p1, 0x3

    .line 2586
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/view/View;->performHapticFeedback(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move p1, v2

    goto :goto_4

    .line 2579
    :cond_8
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesLikeButton:Lorg/telegram/ui/Stories/StoriesLikeButton;

    invoke-virtual {p1, v4}, Lorg/telegram/ui/Stories/StoriesLikeButton;->setReaction(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    move p1, v1

    .line 2590
    :goto_4
    iget-boolean v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isChannel:Z

    if-eqz v4, :cond_b

    if-eqz v3, :cond_b

    .line 2591
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v3, v3, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v4, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    if-nez v4, :cond_9

    .line 2592
    new-instance v4, Lorg/telegram/tgnet/tl/TL_stories$TL_storyViews;

    invoke-direct {v4}, Lorg/telegram/tgnet/tl/TL_stories$TL_storyViews;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    .line 2594
    :cond_9
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v3, v3, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v3, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    iget v4, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->reactions_count:I

    if-eqz p1, :cond_a

    move p1, v2

    goto :goto_5

    :cond_a
    const/4 p1, -0x1

    :goto_5
    add-int/2addr v4, p1

    iput v4, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->reactions_count:I

    if-gez v4, :cond_b

    .line 2596
    iput v1, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->reactions_count:I

    .line 2599
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v1, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->sent_reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/Components/Reactions/ReactionsUtils;->applyForStoryViews(Lorg/telegram/tgnet/TLRPC$Reaction;Lorg/telegram/tgnet/TLRPC$Reaction;Lorg/telegram/tgnet/tl/TL_stories$StoryViews;)V

    .line 2600
    invoke-direct {p0, v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->updateUserViews(Z)V

    return-void
.end method

.method private loadSendAsPeers(Z)V
    .locals 4

    .line 4822
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->sendAsPeersObj:Lorg/telegram/tgnet/TLRPC$TL_channels_sendAsPeers;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4825
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->livePlayer:Lorg/telegram/ui/Stories/LivePlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/LivePlayer;->sendAsDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4828
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getSendAsPeers(JZ)Lorg/telegram/tgnet/TLRPC$TL_channels_sendAsPeers;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->sendAsPeersObj:Lorg/telegram/tgnet/TLRPC$TL_channels_sendAsPeers;

    .line 4829
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 4830
    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateSendAsButton(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private onHighlightLiveMessage()V
    .locals 13

    .line 5623
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "taptostoryhighlighthint"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5625
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getTextWithEntities()Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    move-result-object v6

    .line 5626
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    .line 5627
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->livePlayer:Lorg/telegram/ui/Stories/LivePlayer;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/LivePlayer;->getDefaultSendAs()Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5629
    invoke-static {v2}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    :cond_0
    move-wide v3, v0

    .line 5630
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    iget-wide v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-static {v2, v7, v8}, Lorg/telegram/messenger/DialogObject;->getShortName(IJ)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->getMessageMinPrice()J

    move-result-wide v7

    iget-wide v9, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->messageStars:J

    new-instance v11, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda41;

    invoke-direct {v11, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda41;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    new-instance v12, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;

    invoke-direct {v12}, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;-><init>()V

    invoke-static/range {v1 .. v12}, Lorg/telegram/ui/Stories/HighlightMessageSheet;->open(Landroid/content/Context;IJLjava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;JJLorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method private onLinkCopied()V
    .locals 4

    .line 4070
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-nez v0, :cond_0

    return-void

    .line 4073
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_exportStoryLink;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_exportStoryLink;-><init>()V

    .line 4074
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget v1, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    iput v1, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_exportStoryLink;->id:I

    .line 4075
    iget v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_exportStoryLink;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 4076
    iget v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stories/PeerStoriesView$29;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$29;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private openAttachMenu()V
    .locals 3

    .line 3715
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-nez v0, :cond_0

    return-void

    .line 3718
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->createChatAttachView()V

    .line 3719
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->loadGalleryPhotos()V

    .line 3723
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->setMaxSelectedPhotos(IZ)V

    .line 3724
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-wide v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->setDialogId(J)V

    .line 3725
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->init()V

    .line 3726
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentView()Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getFieldText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->setText(Ljava/lang/CharSequence;)V

    .line 3727
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-interface {v0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->showDialog(Landroid/app/Dialog;)V

    return-void
.end method

.method private openChat()V
    .locals 5

    .line 7770
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 7771
    iget-wide v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    .line 7772
    const-string v3, "chat_id"

    neg-long v1, v1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 7774
    :cond_0
    const-string v3, "user_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 7776
    :goto_0
    iget v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getDialog(J)Lorg/telegram/tgnet/TLRPC$Dialog;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7778
    const-string v2, "message_id"

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Dialog;->top_message:I

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 7780
    :cond_1
    new-instance v1, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 7781
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/StoryViewer;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method private openRepostStory()V
    .locals 4

    .line 3964
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3968
    :cond_0
    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda40;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda40;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/app/Activity;)V

    .line 4064
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {v0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->releasePlayer(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/16 v2, 0x50

    .line 4065
    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method private requestVideoPlayer(J)V
    .locals 11

    .line 5940
    const-string v0, "UTF-8"

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    .line 5942
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->isLive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5943
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v4, p1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-wide v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iget v7, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    iget-object p1, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object p2, p1

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVideoStream;

    iget-boolean v8, p2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVideoStream;->rtmp_stream:Z

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVideoStream;

    iget-object v9, p1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVideoStream;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    iget-object v10, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    invoke-interface/range {v3 .. v10}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->requestPlayer(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;JIZLorg/telegram/tgnet/TLRPC$InputGroupCall;Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;)V

    .line 5944
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto/16 :goto_2

    .line 5945
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->isVideo()Z

    move-result v1

    const-string v3, "PeerStoriesView.requestVideoPlayer("

    const/4 v4, 0x0

    if-eqz v1, :cond_6

    .line 5947
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    const-string v5, "StoryViewer requestVideoPlayer("

    if-eqz v1, :cond_1

    new-instance v1, Ljava/io/File;

    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v6}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->getLocalPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5948
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 5949
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "): playing from attachPath "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    .line 5950
    iput-wide v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->videoDuration:J

    move-object v6, v0

    move-object v5, v2

    goto/16 :goto_1

    .line 5951
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v1, :cond_4

    .line 5952
    iget-wide v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iput-wide v6, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    .line 5954
    :try_start_0
    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-virtual {v1}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5955
    :try_start_1
    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v6, v6, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget v7, v6, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->fileReference:I

    if-nez v7, :cond_2

    .line 5956
    iget v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v8, v8, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/FileLoader;->getFileReference(Ljava/lang/Object;)I

    move-result v7

    iput v7, v6, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->fileReference:I

    .line 5958
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "?account="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "&id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "&hash="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v1, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "&dc="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "&size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v1, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "&mime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 5963
    invoke-static {v7, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "&rid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v7, v7, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget v7, v7, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->fileReference:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "&name="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5965
    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&reference="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5966
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    new-array v0, v4, [B

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&sid="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "&did="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-wide v7, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5968
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tg://"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 5969
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "): playing from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 5970
    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->getDocumentDuration(Lorg/telegram/tgnet/TLRPC$Document;)D

    move-result-wide v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v6

    double-to-long v4, v4

    iput-wide v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->videoDuration:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, v0

    move-object v5, v1

    goto :goto_1

    :catch_0
    move-object v1, v2

    :catch_1
    move-object v5, v1

    move-object v6, v2

    goto :goto_1

    :cond_4
    move-object v5, v2

    move-object v6, v5

    :goto_1
    if-nez v6, :cond_5

    .line 5976
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "): playing from null?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 5978
    :cond_5
    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    iget-object v9, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    move-wide v7, p1

    invoke-interface/range {v4 .. v9}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->requestPlayer(Lorg/telegram/tgnet/TLRPC$Document;Landroid/net/Uri;JLorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;)V

    .line 5979
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_2

    :cond_6
    move-wide v7, p1

    .line 5981
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "): null, not a video"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 5982
    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    const-wide/16 v8, 0x0

    iget-object v10, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v5 .. v10}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->requestPlayer(Lorg/telegram/tgnet/TLRPC$Document;Landroid/net/Uri;JLorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;)V

    .line 5983
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    iput-object v2, p1, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->renderView:Landroid/view/View;

    .line 5984
    iput-boolean v4, p1, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->firstFrameRendered:Z

    :goto_2
    return-void

    .line 5987
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    iput-object v2, p1, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->renderView:Landroid/view/View;

    return-void
.end method

.method private saveToGallery()V
    .locals 8

    .line 3675
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-nez v1, :cond_0

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    if-nez v2, :cond_0

    goto :goto_0

    .line 3678
    :cond_0
    instance-of v1, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItemSkipped;

    if-eqz v1, :cond_1

    :goto_0
    return-void

    .line 3681
    :cond_1
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->getPath()Ljava/io/File;

    move-result-object v0

    .line 3682
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->isVideo()Z

    move-result v4

    if-eqz v0, :cond_2

    .line 3683
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3684
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v7, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda58;

    invoke-direct {v7, p0, v4}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda58;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Z)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v7}, Lorg/telegram/messenger/MediaController;->saveFile(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void

    .line 3688
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->showDownloadAlert()V

    return-void
.end method

.method private sendUriAsDocument(Landroid/net/Uri;)V
    .locals 21

    move-object/from16 v1, p0

    if-nez p1, :cond_0

    goto/16 :goto_4

    .line 6335
    :cond_0
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v12, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v12, :cond_8

    .line 6336
    instance-of v0, v12, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItemSkipped;

    if-eqz v0, :cond_1

    goto/16 :goto_4

    .line 6339
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6340
    const-string v2, "com.google.android.apps.photos.contentprovider"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    .line 6342
    :try_start_0
    const-string v2, "/1/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v4

    .line 6343
    const-string v2, "/ACTUAL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_2

    .line 6345
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 6346
    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6347
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    move-object/from16 v0, p1

    :goto_0
    move-object v5, v0

    goto :goto_2

    .line 6350
    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_3
    move-object/from16 v5, p1

    .line 6353
    :goto_2
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->getPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 6356
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->NO_SCOPED_STORAGE:Z

    if-nez v2, :cond_4

    move-object v3, v0

    move v0, v4

    move-object v4, v3

    goto :goto_3

    :cond_4
    if-nez v0, :cond_6

    .line 6359
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6360
    const-string v2, "file"

    invoke-static {v5, v2}, Lorg/telegram/messenger/MediaController;->copyFileToCache(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    .line 6363
    invoke-direct {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->showAttachmentError()V

    return-void

    :cond_5
    move-object v4, v0

    move v0, v3

    move-object v3, v2

    goto :goto_3

    :cond_6
    move-object v4, v0

    move v0, v3

    move-object v3, v4

    :goto_3
    if-eqz v0, :cond_7

    .line 6368
    invoke-direct {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    iget-wide v8, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v2 .. v20}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingDocument(Lorg/telegram/messenger/AccountInstance;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ChatActivity$ReplyQuote;Lorg/telegram/messenger/MessageObject;ZILandroidx/core/view/inputmethod/InputContentInfoCompat;Ljava/lang/String;IZ)V

    goto :goto_4

    .line 6370
    :cond_7
    invoke-direct {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    iget-wide v8, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v2 .. v20}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingDocument(Lorg/telegram/messenger/AccountInstance;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ChatActivity$ReplyQuote;Lorg/telegram/messenger/MessageObject;ZILandroidx/core/view/inputmethod/InputContentInfoCompat;Ljava/lang/String;IZ)V

    :cond_8
    :goto_4
    return-void
.end method

.method private setStoryImage(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;)V
    .locals 14

    move-object/from16 v4, p3

    .line 5756
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-virtual {v0, v1, v2, p1}, Lorg/telegram/ui/Stories/StoriesController;->findEditingStory(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;)Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object/from16 v1, p2

    .line 5758
    invoke-direct {p0, v0, v1, v4}, Lorg/telegram/ui/Stories/PeerStoriesView;->setStoryImage(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;)V

    return-void

    :cond_0
    move-object/from16 v1, p2

    .line 5761
    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5763
    :goto_0
    iget-object v2, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->attachPath:Ljava/lang/String;

    const-string v3, "_pframe"

    if-eqz v2, :cond_4

    .line 5764
    iget-object v5, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-nez v5, :cond_2

    .line 5765
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".mp4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    :cond_2
    if-eqz v0, :cond_3

    .line 5768
    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->attachPath:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->firstFramePath:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    invoke-virtual/range {v0 .. v12}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    return-void

    .line 5770
    :cond_3
    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->attachPath:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    invoke-virtual/range {v0 .. v10}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    return-void

    :cond_4
    if-eqz v0, :cond_5

    .line 5774
    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-virtual {v0}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    .line 5775
    iget-object v1, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-virtual {v1}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-virtual {v3}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object v11, p1

    move-object/from16 v0, p2

    invoke-virtual/range {v0 .. v12}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    return-void

    .line 5777
    :cond_5
    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_7

    .line 5778
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    const v2, 0x7fffffff

    .line 5779
    invoke-static {v1, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    .line 5780
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    const/16 v3, 0x320

    invoke-static {v2, v3}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 5784
    invoke-static {v1, v0}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object v11, p1

    move-object/from16 v0, p2

    move-object/from16 v4, p3

    invoke-virtual/range {v0 .. v12}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    return-void

    .line 5787
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    return-void
.end method

.method private setStoryImage(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;)V
    .locals 25

    move-object/from16 v0, p1

    .line 5794
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->isVideo:Z

    if-eqz v1, :cond_0

    .line 5795
    iget-object v0, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->firstFramePath:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    move-object/from16 v1, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v1 .. v13}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    return-void

    .line 5797
    :cond_0
    iget-object v0, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v15

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    move-object/from16 v14, p2

    move-object/from16 v16, p3

    invoke-virtual/range {v14 .. v24}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method private setTitle(ZJZ)V
    .locals 4

    if-nez p1, :cond_0

    .line 4108
    iget-wide v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->titleLastDialogId:J

    cmp-long p1, p2, v0

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->titleLastLive:Z

    if-ne p1, p4, :cond_0

    return-void

    .line 4109
    :cond_0
    iput-wide p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->titleLastDialogId:J

    .line 4110
    iput-boolean p4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->titleLastLive:Z

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    const/4 v0, 0x1

    const/16 v1, 0xff

    const/high16 v2, 0x41800000    # 16.0f

    const/4 v3, 0x0

    if-ltz p1, :cond_4

    .line 4112
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-eqz p1, :cond_1

    if-nez p4, :cond_1

    .line 4113
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget p2, Lorg/telegram/messenger/R$string;->SelfStoryTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 4114
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)Z

    return-void

    .line 4116
    :cond_1
    iget p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4117
    iget-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$User;->verified:Z

    if-eqz p2, :cond_2

    .line 4118
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$drawable;->verified_profile:I

    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 4119
    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4120
    new-instance p3, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {p3, p2, v3}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4121
    invoke-virtual {p3, v0}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    .line 4122
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    invoke-virtual {p3, p2, p4}, Lorg/telegram/ui/Components/CombinedDrawable;->setCustomSize(II)V

    .line 4123
    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object p2, p2, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p2, p3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)Z

    goto :goto_0

    .line 4125
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object p2, p2, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p2, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)Z

    :goto_0
    if-eqz p1, :cond_3

    .line 4128
    invoke-static {p1}, Lorg/telegram/messenger/ContactsController;->formatName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->removeDiacritics(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4129
    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object p2, p2, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object p1

    .line 4130
    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object p2, p2, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    return-void

    .line 4132
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    return-void

    .line 4136
    :cond_4
    iget p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    neg-long p2, p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    .line 4137
    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object p2, p2, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-nez p1, :cond_5

    const-string p3, ""

    goto :goto_1

    :cond_5
    iget-object p3, p1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :goto_1
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->removeDiacritics(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    if-eqz p1, :cond_6

    .line 4138
    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->verified:Z

    if-eqz p1, :cond_6

    .line 4139
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$drawable;->verified_profile:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 4140
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4141
    new-instance p2, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {p2, p1, v3}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4142
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    .line 4143
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    invoke-virtual {p2, p1, p3}, Lorg/telegram/ui/Components/CombinedDrawable;->setCustomSize(II)V

    .line 4144
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)Z

    return-void

    .line 4146
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)Z

    return-void
.end method

.method private shareStory(Z)V
    .locals 17

    move-object/from16 v1, p0

    .line 3891
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v2, :cond_5

    iget-object v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v2, :cond_5

    .line 3893
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->createLink()Ljava/lang/String;

    move-result-object v6

    if-eqz p1, :cond_4

    .line 3895
    new-instance v15, Lorg/telegram/ui/Stories/PeerStoriesView$26;

    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v15, v1, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$26;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 3902
    iget-boolean v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->isChannel:Z

    if-eqz v0, :cond_0

    iget v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    neg-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3903
    :goto_0
    sget-boolean v2, Lorg/telegram/ui/Stories/PeerStoriesView;->DISABLE_STORY_REPOSTING:Z

    const/4 v3, 0x1

    if-nez v2, :cond_3

    iget v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesController;->storiesEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->isChannel:Z

    if-nez v2, :cond_1

    iget-wide v4, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-static {v4, v5}, Lorg/telegram/messenger/UserObject;->isService(J)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v13, v3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    move v13, v0

    .line 3904
    :goto_1
    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$27;

    iget-object v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v12, 0x0

    const/4 v14, 0x0

    move v4, v3

    const/4 v3, 0x0

    move v5, v4

    const/4 v4, 0x0

    move v7, v5

    const/4 v5, 0x0

    move v8, v7

    const/4 v7, 0x0

    move v9, v8

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move/from16 v16, v9

    move-object v9, v6

    invoke-direct/range {v0 .. v15}, Lorg/telegram/ui/Stories/PeerStoriesView$27;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/content/Context;Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZLjava/lang/Integer;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->shareAlert:Lorg/telegram/ui/Components/ShareAlert;

    const/4 v4, 0x1

    .line 3943
    iput-boolean v4, v0, Lorg/telegram/ui/Components/ShareAlert;->forceDarkThemeForHint:Z

    .line 3944
    iget-object v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-wide v3, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iput-wide v3, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    .line 3945
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ShareAlert;->setStoryToShare(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    .line 3946
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->shareAlert:Lorg/telegram/ui/Components/ShareAlert;

    new-instance v2, Lorg/telegram/ui/Stories/PeerStoriesView$28;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$28;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ShareAlert;->setDelegate(Lorg/telegram/ui/Components/ShareAlert$ShareAlertDelegate;)V

    .line 3953
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    iget-object v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->shareAlert:Lorg/telegram/ui/Components/ShareAlert;

    invoke-interface {v0, v2}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->showDialog(Landroid/app/Dialog;)V

    return-void

    .line 3955
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3956
    const-string v2, "text/plain"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3957
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3958
    sget-object v2, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    sget v3, Lorg/telegram/messenger/R$string;->StickersShare:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/16 v3, 0x1f4

    invoke-virtual {v2, v0, v3}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_5
    return-void
.end method

.method private showAttachmentError()V
    .locals 3

    .line 6375
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->UnsupportedAttachment:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private showDownloadAlert()V
    .locals 3

    .line 3693
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 3694
    sget v1, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3695
    sget v1, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3700
    sget v1, Lorg/telegram/messenger/R$string;->PleaseDownload:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3702
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->showDialog(Landroid/app/Dialog;)V

    return-void
.end method

.method private showLikesReaction(Z)V
    .locals 4

    .line 2498
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionShowing:Z

    if-eq v0, p1, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 2501
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionShowing:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2503
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2505
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setStoryItem(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    .line 2506
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {v1, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setIsLikesReaction(Z)V

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 2508
    iget v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionShowProgress:F

    if-eqz p1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_2
    const/4 v3, 0x2

    new-array v3, v3, [F

    aput v2, v3, v0

    const/4 v0, 0x1

    aput v1, v3, v0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 2509
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionShowProgress:F

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setTransitionProgress(F)V

    .line 2510
    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2514
    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$14;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$14;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v1, 0xc8

    .line 2523
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2524
    sget-object p1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2525
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 2527
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 2528
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->dismissWithAlpha()V

    .line 2530
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$15;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$15;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 2538
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_5
    :goto_0
    return-void
.end method

.method private showPaidMessageHint()V
    .locals 6

    .line 3046
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->highlightMessageHintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v0, :cond_0

    .line 3047
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->shown()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3048
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->highlightMessageHintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x1

    .line 3053
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->disabledPaidFeatures(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 3056
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "taptostoryhighlighthint"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v4, 0x3

    if-lt v1, v4, :cond_3

    :cond_2
    :goto_0
    return-void

    .line 3059
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    add-int/2addr v5, v0

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3062
    new-instance v0, Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lorg/telegram/ui/Stories/recorder/HintView2;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->highlightMessageHintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 3063
    sget v1, Lorg/telegram/messenger/R$string;->LiveStoryHighlightHint:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 3064
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->highlightMessageHintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v1, v4, v3, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 3065
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->highlightMessageHintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->setTextAlign(Landroid/text/Layout$Alignment;)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 3066
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->highlightMessageHintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    new-instance v2, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda24;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Stories/recorder/HintView2;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->setOnHiddenListener(Ljava/lang/Runnable;)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 3072
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->highlightMessageHintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/16 v1, 0x64

    const/16 v2, 0x57

    const/4 v3, -0x1

    invoke-static {v3, v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3073
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->highlightMessageHintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->show()Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 3074
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updateViewOffsets()V

    return-void
.end method

.method private showPremiumBlockedToast()V
    .locals 8

    .line 2898
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->areLiveCommentsDisabled:Z

    if-eqz v0, :cond_0

    return-void

    .line 2899
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isGroup:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 2900
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    if-eqz v0, :cond_1

    .line 2901
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->fragmentForLimit()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    iget-wide v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->openBoostsForRemoveRestrictions(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;JZ)Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    return-void

    .line 2904
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    if-eqz v0, :cond_2

    .line 2905
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/StoryViewer;->setOverlayVisible(Z)V

    .line 2907
    :cond_2
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getBoostsController()Lorg/telegram/messenger/ChannelBoostsController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    new-instance v3, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda42;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda42;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/ChannelBoostsController;->getBoostsStats(JLcom/google/android/exoplayer2/util/Consumer;)V

    return-void

    .line 2925
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->shiftDp:I

    neg-int v2, v2

    iput v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->shiftDp:I

    int-to-float v2, v2

    invoke-static {v0, v2}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    .line 2926
    sget-object v0, Lorg/telegram/messenger/BotWebViewVibrationEffect;->APP_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {v0}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    .line 2928
    iget-wide v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_4

    .line 2929
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2928
    :cond_4
    const-string v0, ""

    .line 2932
    :goto_0
    iget v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesController;->premiumFeaturesBlocked()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 2933
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v4}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/R$raw;->star_premium_2:I

    sget v5, Lorg/telegram/messenger/R$string;->UserBlockedRepliesNonPremium:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v3

    .line 2934
    invoke-static {v5, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    goto :goto_1

    .line 2936
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v4}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/R$raw;->star_premium_2:I

    sget v5, Lorg/telegram/messenger/R$string;->UserBlockedRepliesNonPremium:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v3

    .line 2937
    invoke-static {v5, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->UserBlockedNonPremiumButton:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda43;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda43;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v2, v4, v0, v1, v3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    .line 2943
    :goto_1
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private showUserViewsDialog()V
    .locals 1

    .line 4599
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryViewer;->openViews()V

    return-void
.end method

.method private toggleArchiveForStory(J)V
    .locals 11

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 2725
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 2727
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 2728
    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$User;->stories_hidden:Z

    :goto_0
    xor-int/lit8 v2, v2, 0x1

    move-object v10, v0

    move-object v9, v1

    move v8, v2

    goto :goto_1

    .line 2730
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-long v1, p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 2732
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 2733
    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$Chat;->stories_hidden:Z

    goto :goto_0

    .line 2735
    :goto_1
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    .line 2740
    new-instance v3, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda56;

    move-object v4, p0

    move-wide v6, p1

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda56;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/messenger/MessagesController;JZLjava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    const-wide/16 p1, 0xc8

    invoke-static {v3, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private tryToOpenRepostStory()V
    .locals 3

    .line 3876
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->storiesEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3879
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->getPath()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3880
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3881
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->shareAlert:Lorg/telegram/ui/Components/ShareAlert;

    if-eqz v0, :cond_1

    .line 3882
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ShareAlert;->dismiss()V

    .line 3884
    :cond_1
    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda29;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    const-wide/16 v1, 0x78

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    .line 3886
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->showDownloadAlert()V

    return-void
.end method

.method private updatePosition(Z)V
    .locals 43

    move-object/from16 v0, p0

    .line 4890
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_65

    :cond_0
    const/4 v1, 0x1

    .line 4893
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->forceUpdateOffsets:Z

    .line 4894
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v3, v2, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    .line 4895
    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    .line 4897
    invoke-static {}, Lorg/telegram/ui/Stories/StoriesUtilities;->getStoryImageFilter()Ljava/lang/String;

    move-result-object v8

    const/4 v4, 0x0

    .line 4899
    iput-boolean v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->lastNoThumb:Z

    .line 4900
    iput-boolean v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->unsupported:Z

    .line 4901
    iget v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    .line 4903
    iget-boolean v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isUploading:Z

    .line 4904
    iget-boolean v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isEditing:Z

    .line 4905
    iget-boolean v9, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isFailed:Z

    .line 4910
    iget-object v10, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    const/4 v11, 0x4

    const/4 v12, 0x0

    if-eqz v10, :cond_3

    iget-object v10, v10, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-eqz v10, :cond_3

    iget v10, v10, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->type:I

    if-ne v10, v11, :cond_3

    if-ltz v5, :cond_1

    .line 4911
    iget-object v10, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_1

    iget-object v10, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    goto :goto_0

    :cond_1
    move-object v10, v12

    .line 4912
    :goto_0
    iget-object v13, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    sub-int v13, v5, v13

    if-ltz v13, :cond_2

    .line 4913
    iget-object v14, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v13, v14, :cond_2

    iget-object v14, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    goto :goto_1

    :cond_2
    move-object v13, v12

    :goto_1
    move-object v15, v13

    goto :goto_3

    :cond_3
    if-ltz v5, :cond_4

    .line 4915
    iget-object v10, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_4

    iget-object v10, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    move-object v13, v10

    goto :goto_2

    :cond_4
    move-object v13, v12

    .line 4916
    :goto_2
    iget-object v10, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int v10, v5, v10

    if-ltz v10, :cond_5

    .line 4917
    iget-object v14, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v10, v14, :cond_5

    iget-object v14, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    goto :goto_1

    :cond_5
    move-object v10, v12

    goto :goto_1

    .line 4920
    :goto_3
    iget-object v13, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iput-object v12, v13, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->editingSourceItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    const/16 v13, 0x96

    if-eqz v10, :cond_9

    .line 4923
    iput-boolean v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isEditing:Z

    .line 4924
    iget-boolean v14, v10, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->failed:Z

    iput-boolean v14, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isFailed:Z

    xor-int/2addr v14, v1

    .line 4925
    iput-boolean v14, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isUploading:Z

    .line 4927
    iget-object v14, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v14, v4}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeWithOldImage(Z)V

    .line 4928
    iget-object v14, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v14, v13}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeDuration(I)V

    .line 4929
    iget-object v13, v10, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v13, v13, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v13, :cond_6

    .line 4930
    invoke-static {v13}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 4931
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v19

    const/4 v15, 0x3

    const/16 v16, 0x1

    invoke-static/range {v14 .. v19}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    .line 4932
    new-instance v13, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v13, v14}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_4

    :cond_6
    move-object v13, v12

    .line 4934
    :goto_4
    iget-boolean v14, v10, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->isVideo:Z

    if-nez v14, :cond_7

    iget-boolean v14, v10, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->hadFailed:Z

    if-eqz v14, :cond_8

    :cond_7
    move/from16 v26, v5

    move/from16 v27, v6

    move/from16 v28, v7

    move/from16 v29, v9

    move-object v1, v10

    move/from16 v22, v11

    move-object v11, v13

    goto :goto_5

    :cond_8
    move v14, v4

    .line 4937
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v15, v10, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    invoke-static {v15}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v15

    move/from16 v16, v7

    move-object v7, v15

    const/4 v15, 0x0

    move/from16 v17, v16

    const/16 v16, 0x0

    move/from16 v18, v5

    const/4 v5, 0x0

    move/from16 v19, v6

    const/4 v6, 0x0

    move/from16 v20, v9

    const/4 v9, 0x0

    move-object/from16 v21, v10

    const/4 v10, 0x0

    move/from16 v22, v11

    move-object/from16 v23, v12

    move-object v11, v13

    const-wide/16 v12, 0x0

    move/from16 v24, v14

    const/4 v14, 0x0

    move/from16 v28, v17

    move/from16 v26, v18

    move/from16 v27, v19

    move/from16 v29, v20

    move-object/from16 v1, v21

    invoke-virtual/range {v4 .. v16}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_6

    .line 4935
    :goto_5
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v5, v1, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->firstFramePath:Ljava/lang/String;

    invoke-static {v5}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v7

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v4 .. v16}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    .line 4939
    :goto_6
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->set(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;)V

    .line 4940
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyAreasView:Lorg/telegram/ui/Stories/StoryMediaAreasView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-static {v1}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->getMediaAreasFor(Lorg/telegram/ui/Stories/recorder/StoryEntry;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->emojiAnimationsOverlay:Lorg/telegram/ui/EmojiAnimationsOverlay;

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v1, v5}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->set(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Ljava/util/ArrayList;Lorg/telegram/ui/EmojiAnimationsOverlay;)V

    const/4 v14, 0x0

    .line 4941
    iput-boolean v14, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShareLink:Z

    iput-boolean v14, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowRepost:Z

    iput-boolean v14, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShare:Z

    :goto_7
    move/from16 v17, v28

    goto/16 :goto_1b

    :cond_9
    move v14, v4

    move/from16 v26, v5

    move/from16 v27, v6

    move/from16 v28, v7

    move/from16 v29, v9

    move/from16 v22, v11

    .line 4943
    iput-boolean v14, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isUploading:Z

    .line 4944
    iput-boolean v14, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isEditing:Z

    .line 4945
    iput-boolean v14, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isFailed:Z

    if-nez v15, :cond_a

    .line 4947
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    if-eqz v1, :cond_c4

    const/4 v4, 0x1

    .line 4948
    invoke-virtual {v1, v4}, Lorg/telegram/ui/Stories/StoryViewer;->close(Z)V

    return-void

    :cond_a
    const/4 v4, 0x1

    .line 4952
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-virtual {v1, v5, v6, v15}, Lorg/telegram/ui/Stories/StoriesController;->findEditingStory(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;)Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 4954
    iput-boolean v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isEditing:Z

    .line 4955
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeWithOldImage(Z)V

    .line 4956
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->onImageReceiverThumbLoaded:Ljava/lang/Runnable;

    if-nez v5, :cond_b

    goto :goto_8

    :cond_b
    const/4 v13, 0x0

    :goto_8
    invoke-virtual {v4, v13}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeDuration(I)V

    .line 4957
    iget-boolean v4, v1, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->isVideo:Z

    if-eqz v4, :cond_c

    .line 4958
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v5, v1, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->firstFramePath:Ljava/lang/String;

    invoke-static {v5}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v7

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v4 .. v14}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_9

    .line 4960
    :cond_c
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v5, v1, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->firstFramePath:Ljava/lang/String;

    invoke-static {v5}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v7

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v4 .. v14}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    .line 4962
    :goto_9
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->set(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;)V

    .line 4963
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyAreasView:Lorg/telegram/ui/Stories/StoryMediaAreasView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-static {v1}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->getMediaAreasFor(Lorg/telegram/ui/Stories/recorder/StoryEntry;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->emojiAnimationsOverlay:Lorg/telegram/ui/EmojiAnimationsOverlay;

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v1, v5}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->set(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Ljava/util/ArrayList;Lorg/telegram/ui/EmojiAnimationsOverlay;)V

    .line 4964
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iput-object v15, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->editingSourceItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    const/4 v14, 0x0

    .line 4965
    iput-boolean v14, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShareLink:Z

    iput-boolean v14, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowRepost:Z

    iput-boolean v14, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShare:Z

    goto/16 :goto_7

    .line 4967
    :cond_d
    iget-object v1, v15, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v4, 0x1

    goto :goto_a

    :cond_e
    const/4 v4, 0x0

    .line 4969
    :goto_a
    iget-wide v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iput-wide v5, v15, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    .line 4970
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move/from16 v5, v28

    invoke-virtual {v1, v5}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeWithOldImage(Z)V

    .line 4971
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v13}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeDuration(I)V

    .line 4972
    iget-object v1, v15, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v6, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported;

    if-eqz v6, :cond_f

    const/4 v6, 0x1

    .line 4973
    iput-boolean v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->unsupported:Z

    .line 4974
    iget v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v1

    iget-wide v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iget v4, v15, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-virtual {v1, v6, v7, v4}, Lorg/telegram/ui/Stories/StoriesController;->checkUnsupportedStory(JI)V

    move/from16 v17, v5

    goto/16 :goto_11

    .line 4975
    :cond_f
    iget-object v6, v15, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->attachPath:Ljava/lang/String;

    const-string v7, "_pframe"

    if-eqz v6, :cond_17

    if-nez v1, :cond_10

    .line 4977
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v4, ".mp4"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    :cond_10
    if-eqz v4, :cond_13

    .line 4980
    iget-object v1, v15, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v1, :cond_11

    .line 4981
    invoke-virtual {v1}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {v1}, Lorg/telegram/messenger/ImageLoader;->createStripedBitmap(Ljava/util/ArrayList;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    move-object/from16 v37, v12

    goto :goto_b

    :cond_11
    const/16 v37, 0x0

    .line 4983
    :goto_b
    iget-object v1, v15, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->firstFramePath:Ljava/lang/String;

    if-eqz v1, :cond_12

    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v15, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->firstFramePath:Ljava/lang/String;

    invoke-static {v6}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v6

    const/4 v9, 0x0

    const/4 v14, 0x0

    invoke-virtual {v6, v9, v9, v14}, Lorg/telegram/messenger/ImageLocation;->getKey(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "@"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v14}, Lorg/telegram/messenger/ImageLoader;->isInMemCache(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 4984
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, v15, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->firstFramePath:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v7

    move-object v13, v15

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v17, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, v13

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v11, v37

    invoke-virtual/range {v4 .. v16}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    :goto_c
    move-object v15, v1

    goto/16 :goto_11

    :cond_12
    move/from16 v17, v5

    move-object v1, v15

    .line 4986
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v5, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->attachPath:Ljava/lang/String;

    invoke-static {v5}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v33

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const-wide/16 v38, 0x0

    const/16 v40, 0x0

    move-object/from16 v30, v4

    invoke-virtual/range {v30 .. v42}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_c

    :cond_13
    move/from16 v17, v5

    move-object v1, v15

    .line 4989
    iget-object v4, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v4, :cond_14

    iget-object v12, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    goto :goto_d

    :cond_14
    const/4 v12, 0x0

    :goto_d
    if-eqz v12, :cond_15

    .line 4991
    iget-object v4, v12, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {v4}, Lorg/telegram/messenger/ImageLoader;->createStripedBitmap(Ljava/util/ArrayList;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    move-object v9, v12

    goto :goto_e

    :cond_15
    const/4 v9, 0x0

    :goto_e
    if-eqz v17, :cond_16

    .line 4994
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v5, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->attachPath:Ljava/lang/String;

    invoke-static {v5}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v5

    iget-object v6, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->firstFramePath:Ljava/lang/String;

    invoke-static {v6}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v7

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    move-object v6, v8

    invoke-virtual/range {v4 .. v14}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_c

    .line 4996
    :cond_16
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v5, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->attachPath:Ljava/lang/String;

    invoke-static {v5}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v5

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v7, 0x0

    move-object v6, v8

    const/4 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v4 .. v14}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_c

    :cond_17
    move/from16 v17, v5

    move-object v1, v15

    .line 5000
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v6, v5, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-nez v6, :cond_18

    iget-boolean v6, v5, Lorg/telegram/ui/Stories/StoryViewer;->isSingleStory:Z

    if-eqz v6, :cond_19

    :cond_18
    iget-object v5, v5, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    if-eqz v5, :cond_19

    iget-object v6, v5, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v6, :cond_19

    iget v5, v5, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyId:I

    iget v9, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    if-ne v5, v9, :cond_19

    .line 5001
    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    goto :goto_f

    :cond_19
    const/4 v12, 0x0

    .line 5003
    :goto_f
    iget-wide v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iput-wide v5, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    if-eqz v4, :cond_1b

    .line 5005
    iget-object v4, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-virtual {v4}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 v5, 0x3e8

    invoke-static {v4, v5}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v4

    if-nez v12, :cond_1a

    .line 5007
    iget-object v5, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-virtual {v5}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {v5}, Lorg/telegram/messenger/ImageLoader;->createStripedBitmap(Ljava/util/ArrayList;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    :cond_1a
    move-object v11, v12

    .line 5009
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v6, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-virtual {v6}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v9, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-virtual {v9}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v9

    invoke-static {v4, v9}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v9

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object v4, v5

    const/4 v5, 0x0

    move-object v10, v8

    move-object v8, v7

    move-object v7, v6

    const/4 v6, 0x0

    const-wide/16 v12, 0x0

    move-object v15, v1

    invoke-virtual/range {v4 .. v16}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_11

    :cond_1b
    move-object v15, v1

    .line 5011
    iget-object v1, v15, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v1, :cond_1c

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    goto :goto_10

    :cond_1c
    const/4 v1, 0x0

    :goto_10
    if-eqz v1, :cond_1e

    .line 5012
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    if-eqz v4, :cond_1e

    if-nez v12, :cond_1d

    .line 5014
    invoke-static {v4}, Lorg/telegram/messenger/ImageLoader;->createStripedBitmap(Ljava/util/ArrayList;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    :cond_1d
    move-object v11, v12

    .line 5016
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    const v5, 0x7fffffff

    invoke-static {v4, v5}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v4

    .line 5017
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    const/16 v6, 0x320

    invoke-static {v5, v6}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 5021
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v4, v1}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v7

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v12, 0x0

    invoke-virtual/range {v4 .. v16}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_11

    .line 5024
    :cond_1e
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    .line 5028
    :goto_11
    iget-wide v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iput-wide v4, v15, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    .line 5029
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyAreasView:Lorg/telegram/ui/Stories/StoryMediaAreasView;

    if-eqz p1, :cond_1f

    const/4 v12, 0x0

    goto :goto_12

    :cond_1f
    move-object v12, v15

    :goto_12
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->emojiAnimationsOverlay:Lorg/telegram/ui/EmojiAnimationsOverlay;

    invoke-virtual {v1, v12, v4}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->set(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/EmojiAnimationsOverlay;)V

    .line 5030
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v1, v15}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->set(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    .line 5031
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->unsupported:Z

    if-nez v1, :cond_20

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v1, :cond_20

    instance-of v4, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItemDeleted;

    if-nez v4, :cond_20

    instance-of v1, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItemSkipped;

    if-nez v1, :cond_20

    const/4 v4, 0x1

    goto :goto_13

    :cond_20
    const/4 v4, 0x0

    :goto_13
    iput-boolean v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShareLink:Z

    iput-boolean v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShare:Z

    if-eqz v4, :cond_22

    .line 5033
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->allowScreenshots()Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-boolean v1, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->isPublic:Z

    if-eqz v1, :cond_21

    const/4 v4, 0x1

    goto :goto_14

    :cond_21
    const/4 v4, 0x0

    :goto_14
    iput-boolean v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShare:Z

    .line 5035
    :cond_22
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShare:Z

    if-eqz v1, :cond_25

    .line 5036
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-boolean v4, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->pinned:Z

    if-nez v4, :cond_24

    iget v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v4, v1}, Lorg/telegram/ui/Stories/StoriesUtilities;->isExpired(ILorg/telegram/tgnet/tl/TL_stories$StoryItem;)Z

    move-result v1

    if-nez v1, :cond_23

    goto :goto_15

    :cond_23
    const/4 v4, 0x0

    goto :goto_16

    :cond_24
    :goto_15
    const/4 v4, 0x1

    :goto_16
    iput-boolean v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShare:Z

    .line 5038
    :cond_25
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShare:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowRepost:Z

    if-eqz v1, :cond_27

    .line 5039
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isChannel:Z

    if-eqz v1, :cond_27

    .line 5040
    iget v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    neg-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 5041
    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_26

    const/4 v4, 0x1

    goto :goto_17

    :cond_26
    const/4 v4, 0x0

    :goto_17
    iput-boolean v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowRepost:Z

    .line 5043
    :cond_27
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShareLink:Z

    if-eqz v1, :cond_2b

    .line 5044
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isChannel:Z

    if-eqz v1, :cond_29

    .line 5045
    iget v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    neg-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 5046
    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_28

    const/4 v4, 0x1

    goto :goto_18

    :cond_28
    const/4 v4, 0x0

    :goto_18
    iput-boolean v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShareLink:Z

    goto :goto_1a

    .line 5048
    :cond_29
    iget v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 5049
    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2a

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-boolean v1, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->isPublic:Z

    if-eqz v1, :cond_2a

    const/4 v4, 0x1

    goto :goto_19

    :cond_2a
    const/4 v4, 0x0

    :goto_19
    iput-boolean v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShareLink:Z

    .line 5052
    :cond_2b
    :goto_1a
    iget v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationsController;->getInstance(I)Lorg/telegram/messenger/NotificationsController;

    move-result-object v1

    iget-wide v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iget v6, v15, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-virtual {v1, v4, v5, v6}, Lorg/telegram/messenger/NotificationsController;->processReadStories(JI)V

    .line 5056
    :goto_1b
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v1, :cond_2c

    if-nez p1, :cond_2c

    .line 5057
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget v1, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    iput v1, v4, Lorg/telegram/ui/Stories/StoryViewer;->dayStoryId:I

    .line 5060
    :cond_2c
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoriesViewPager;->checkAllowScreenshots()V

    const/4 v4, 0x1

    .line 5061
    iput-boolean v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageChanged:Z

    .line 5062
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-nez v1, :cond_2d

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isChannel:Z

    if-eqz v1, :cond_2e

    :cond_2d
    const/4 v14, 0x0

    .line 5063
    invoke-direct {v0, v14}, Lorg/telegram/ui/Stories/PeerStoriesView;->updateUserViews(Z)V

    .line 5066
    :cond_2e
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v4, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    .line 5067
    invoke-static {v4, v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->getStoryId(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Stories/StoriesController$UploadingStory;)I

    move-result v1

    invoke-static {v3, v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->getStoryId(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Stories/StoriesController$UploadingStory;)I

    move-result v4

    if-eq v1, v4, :cond_30

    if-eqz v2, :cond_2f

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v1, :cond_2f

    iget-object v4, v2, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->attachPath:Ljava/lang/String;

    .line 5068
    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2f

    goto :goto_1c

    :cond_2f
    const/4 v4, 0x0

    goto :goto_1d

    :cond_30
    :goto_1c
    const/4 v4, 0x1

    :goto_1d
    if-eqz v4, :cond_32

    .line 5069
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isEditing:Z

    move/from16 v5, v17

    if-ne v1, v5, :cond_31

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isUploading:Z

    move/from16 v5, v27

    if-ne v1, v5, :cond_31

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isFailed:Z

    move/from16 v5, v29

    if-eq v1, v5, :cond_32

    :cond_31
    const/4 v1, 0x1

    goto :goto_1e

    :cond_32
    const/4 v1, 0x0

    .line 5072
    :goto_1e
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    if-eqz v5, :cond_33

    iget-object v5, v5, Lorg/telegram/ui/Stories/StoryViewer;->livePlayer:Lorg/telegram/ui/Stories/LivePlayer;

    if-eqz v5, :cond_33

    iget v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->watchersCount:I

    invoke-virtual {v5}, Lorg/telegram/ui/Stories/LivePlayer;->getWatchersCount()I

    move-result v5

    if-eq v6, v5, :cond_33

    const/4 v5, 0x1

    goto :goto_1f

    :cond_33
    const/4 v5, 0x0

    :goto_1f
    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    if-eqz v2, :cond_34

    .line 5075
    iget-object v9, v2, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    if-eqz v9, :cond_34

    iget-object v10, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    .line 5076
    invoke-virtual {v10}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->getLocalPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3d

    :cond_34
    if-eqz v3, :cond_35

    iget-object v9, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v9, v9, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v9, :cond_35

    iget v10, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    iget v9, v9, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    if-eq v10, v9, :cond_3d

    .line 5080
    :cond_35
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v5, :cond_38

    if-eqz v3, :cond_36

    .line 5081
    invoke-virtual {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_36

    .line 5082
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-wide v9, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    iget-object v11, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v11}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v5, v9, v10, v3, v11}, Lorg/telegram/ui/Stories/StoryViewer;->saveDraft(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;Ljava/lang/CharSequence;)V

    .line 5084
    :cond_36
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v5

    iget-object v9, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-wide v10, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iget-object v12, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v12, v12, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-virtual {v9, v10, v11, v12}, Lorg/telegram/ui/Stories/StoryViewer;->getDraft(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5085
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v5}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 5086
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v9, 0x1

    const/4 v14, 0x0

    invoke-virtual {v5, v9, v14, v14}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setAllowStickersAndGifs(ZZZ)V

    goto :goto_20

    :cond_37
    const/4 v9, 0x1

    .line 5088
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v5, v9, v9, v9}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setAllowStickersAndGifs(ZZZ)V

    goto :goto_20

    :cond_38
    const/4 v9, 0x1

    .line 5091
    :goto_20
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v5}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 5092
    invoke-direct {v0, v9}, Lorg/telegram/ui/Stories/PeerStoriesView;->loadSendAsPeers(Z)V

    .line 5094
    :cond_39
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->emojiAnimationsOverlay:Lorg/telegram/ui/EmojiAnimationsOverlay;

    invoke-virtual {v5}, Lorg/telegram/ui/EmojiAnimationsOverlay;->clear()V

    .line 5095
    iput-wide v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentImageTime:J

    const/4 v14, 0x0

    .line 5096
    iput-boolean v14, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->switchEventSent:Z

    .line 5098
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v5, v5, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    if-eqz v5, :cond_3b

    .line 5099
    iget-object v9, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object v9, v9, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    if-eqz v9, :cond_3a

    .line 5100
    iget v5, v5, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->progress:F

    invoke-virtual {v9, v5, v14}, Lorg/telegram/ui/Components/RadialProgress;->setProgress(FZ)V

    .line 5102
    :cond_3a
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object v5, v5, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    goto :goto_21

    :cond_3b
    if-nez v1, :cond_3c

    .line 5104
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    invoke-static {v5, v6}, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->-$$Nest$fputprogressToUploading(Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;F)V

    .line 5106
    :cond_3c
    :goto_21
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/Bulletin;->hideVisible(Landroid/view/ViewGroup;)V

    .line 5107
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    invoke-virtual {v5}, Lorg/telegram/ui/Stories/StoryCaptionView;->reset()V

    .line 5108
    invoke-direct {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->cancelWaiting()V

    const/4 v5, 0x1

    .line 5111
    :cond_3d
    const-string v10, " "

    if-nez v5, :cond_3f

    if-eqz v2, :cond_3e

    iget-object v11, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v11, v11, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    if-nez v11, :cond_3e

    goto :goto_22

    :cond_3e
    move-wide/from16 v19, v7

    const/16 v16, 0x2

    goto/16 :goto_2a

    .line 5112
    :cond_3f
    :goto_22
    iget-object v11, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->setOnSubtitleClick(Landroid/view/View$OnClickListener;)V

    const/4 v14, 0x0

    .line 5114
    iput v14, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->watchersCount:I

    .line 5115
    iget-wide v11, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iget-object v13, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v13}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v13

    invoke-direct {v0, v14, v11, v12, v13}, Lorg/telegram/ui/Stories/PeerStoriesView;->setTitle(ZJZ)V

    .line 5116
    iget-object v11, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v11, v11, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    const/16 v12, 0x21

    if-eqz v11, :cond_41

    .line 5117
    iget-boolean v11, v11, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->failed:Z

    if-eqz v11, :cond_40

    .line 5118
    sget v11, Lorg/telegram/messenger/R$string;->FailedToUploadStory:I

    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    :goto_23
    move-wide/from16 v19, v7

    :goto_24
    const/16 v16, 0x2

    goto/16 :goto_29

    .line 5120
    :cond_40
    iget-object v11, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    invoke-static {v11}, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->-$$Nest$fgetsubtitleView(Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;)[Landroid/widget/TextView;

    move-result-object v11

    const/4 v14, 0x0

    aget-object v11, v11, v14

    iget-boolean v13, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isEditing:Z

    invoke-static {v11, v14, v13}, Lorg/telegram/ui/Stories/StoriesUtilities;->getUploadingStr(Landroid/widget/TextView;ZZ)Ljava/lang/CharSequence;

    move-result-object v11

    goto :goto_23

    .line 5122
    :cond_41
    invoke-direct {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->isBotsPreview()Z

    move-result v11

    if-eqz v11, :cond_45

    .line 5123
    iget-object v11, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v11, v11, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    const-string v13, ""

    if-eqz v11, :cond_44

    iget-object v11, v11, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-nez v11, :cond_42

    goto :goto_25

    .line 5125
    :cond_42
    iget-object v14, v11, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v14, :cond_43

    .line 5126
    iget v11, v14, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    int-to-long v13, v11

    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->formatStoryDate(J)Ljava/lang/String;

    move-result-object v11

    goto :goto_23

    .line 5127
    :cond_43
    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v11, :cond_44

    .line 5128
    iget v11, v11, Lorg/telegram/tgnet/TLRPC$Photo;->date:I

    int-to-long v13, v11

    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->formatStoryDate(J)Ljava/lang/String;

    move-result-object v11

    goto :goto_23

    :cond_44
    :goto_25
    move-wide/from16 v19, v7

    move-object v11, v13

    goto :goto_24

    .line 5132
    :cond_45
    iget-object v11, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v13, v11, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v13, :cond_51

    .line 5133
    iget-object v14, v13, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v14, v14, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVideoStream;

    if-eqz v14, :cond_47

    .line 5134
    new-instance v11, Landroid/text/SpannableStringBuilder;

    sget v13, Lorg/telegram/messenger/R$string;->LiveStoryBadge:I

    invoke-static {v13}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 5135
    new-instance v13, Lorg/telegram/ui/Stories/PeerStoriesView$32;

    invoke-direct {v13, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$32;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    .line 5151
    invoke-virtual {v11}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v14

    const/4 v15, 0x0

    .line 5135
    invoke-virtual {v11, v13, v15, v14, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 5152
    const-string v13, "  "

    invoke-virtual {v11, v13}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 5153
    iget-object v13, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    if-eqz v13, :cond_46

    iget-object v13, v13, Lorg/telegram/ui/Stories/StoryViewer;->livePlayer:Lorg/telegram/ui/Stories/LivePlayer;

    if-eqz v13, :cond_46

    .line 5154
    invoke-virtual {v13}, Lorg/telegram/ui/Stories/LivePlayer;->getWatchersCount()I

    move-result v13

    iput v13, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->watchersCount:I

    .line 5156
    :cond_46
    iget v13, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->watchersCount:I

    const/4 v14, 0x1

    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    const-string v14, "LiveStoryWatching"

    invoke-static {v14, v13}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_23

    .line 5158
    :cond_47
    iget v13, v13, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->date:I

    const/4 v14, -0x1

    if-ne v13, v14, :cond_48

    .line 5159
    sget v11, Lorg/telegram/messenger/R$string;->CachedStory:I

    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_23

    .line 5160
    :cond_48
    invoke-virtual {v11}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->getReply()Lorg/telegram/ui/Stories/StoryCaptionView$Reply;

    move-result-object v11

    const-string v13, "."

    const-string v14, "a"

    const/high16 v15, 0x41700000    # 15.0f

    const/16 v16, 0x2

    const/high16 v17, 0x3fc00000    # 1.5f

    if-eqz v11, :cond_4c

    .line 5161
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->getReply()Lorg/telegram/ui/Stories/StoryCaptionView$Reply;

    move-result-object v1

    .line 5163
    new-instance v11, Landroid/text/SpannableStringBuilder;

    invoke-direct {v11}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 5164
    new-instance v6, Landroid/text/SpannableString;

    move-wide/from16 v19, v7

    const-string v7, "r"

    invoke-direct {v6, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 5165
    new-instance v7, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v8, Lorg/telegram/messenger/R$drawable;->mini_repost_story:I

    invoke-direct {v7, v8}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    invoke-virtual {v6}, Landroid/text/SpannableString;->length()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v9, v8, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 5166
    invoke-virtual {v11, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 5167
    iget-object v6, v1, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->peerId:Ljava/lang/Long;

    if-eqz v6, :cond_4a

    .line 5168
    new-instance v6, Lorg/telegram/ui/AvatarSpan;

    iget-object v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    invoke-static {v7}, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->-$$Nest$fgetsubtitleView(Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;)[Landroid/widget/TextView;

    move-result-object v7

    aget-object v7, v7, v9

    iget v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-direct {v6, v7, v8, v15}, Lorg/telegram/ui/AvatarSpan;-><init>(Landroid/view/View;IF)V

    .line 5169
    new-instance v7, Landroid/text/SpannableString;

    invoke-direct {v7, v14}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v14, 0x1

    .line 5170
    invoke-virtual {v7, v6, v9, v14, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 5171
    invoke-virtual {v11, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 5172
    iget-object v7, v1, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->peerId:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v7, v7, v19

    if-lez v7, :cond_49

    .line 5173
    iget v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-object v8, v1, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->peerId:Ljava/lang/Long;

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v7

    .line 5174
    invoke-virtual {v6, v7}, Lorg/telegram/ui/AvatarSpan;->setUser(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 5175
    invoke-static {v7}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_26

    .line 5177
    :cond_49
    iget v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-object v8, v1, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->peerId:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    neg-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    .line 5178
    invoke-virtual {v6, v7}, Lorg/telegram/ui/AvatarSpan;->setChat(Lorg/telegram/tgnet/TLRPC$Chat;)V

    if-eqz v7, :cond_4b

    .line 5180
    iget-object v6, v7, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v11, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_26

    .line 5183
    :cond_4a
    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v6, v6, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v6, v6, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->fwd_from:Lorg/telegram/tgnet/tl/TL_stories$StoryFwdHeader;

    iget-object v6, v6, Lorg/telegram/tgnet/tl/TL_stories$StoryFwdHeader;->from_name:Ljava/lang/String;

    if-eqz v6, :cond_4b

    .line 5184
    invoke-virtual {v11, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 5186
    :cond_4b
    :goto_26
    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    new-instance v7, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda15;

    invoke-direct {v7, v0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Stories/StoryCaptionView$Reply;)V

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->setOnSubtitleClick(Landroid/view/View$OnClickListener;)V

    .line 5208
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v13}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 5209
    new-instance v6, Lorg/telegram/ui/Components/DotDividerSpan;

    invoke-direct {v6}, Lorg/telegram/ui/Components/DotDividerSpan;-><init>()V

    .line 5210
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/DotDividerSpan;->setTopPadding(I)V

    const/high16 v7, 0x40a00000    # 5.0f

    .line 5211
    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/DotDividerSpan;->setSize(F)V

    .line 5212
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v7

    const/4 v14, 0x0

    invoke-virtual {v1, v6, v14, v7, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 5214
    invoke-virtual {v11, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v6, v6, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget v6, v6, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->date:I

    int-to-long v6, v6

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->formatShortDate(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_27
    const/4 v1, 0x0

    goto/16 :goto_29

    :cond_4c
    move-wide/from16 v19, v7

    .line 5217
    iget-boolean v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isGroup:Z

    if-eqz v6, :cond_4f

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v6, v6, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v6, :cond_4f

    iget-object v6, v6, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v6, :cond_4f

    .line 5218
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 5219
    new-instance v6, Lorg/telegram/ui/AvatarSpan;

    iget-object v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    invoke-static {v7}, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->-$$Nest$fgetsubtitleView(Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;)[Landroid/widget/TextView;

    move-result-object v7

    const/4 v9, 0x0

    aget-object v7, v7, v9

    iget v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-direct {v6, v7, v8, v15}, Lorg/telegram/ui/AvatarSpan;-><init>(Landroid/view/View;IF)V

    .line 5220
    new-instance v7, Landroid/text/SpannableString;

    invoke-direct {v7, v14}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v14, 0x1

    .line 5221
    invoke-virtual {v7, v6, v9, v14, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 5222
    invoke-virtual {v1, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 5223
    iget-object v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v7, v7, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v7, v7, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v7}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v7

    cmp-long v9, v7, v19

    if-lez v9, :cond_4d

    .line 5225
    iget v9, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v11}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v9

    .line 5226
    invoke-virtual {v6, v9}, Lorg/telegram/ui/AvatarSpan;->setUser(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 5227
    invoke-static {v9}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_28

    .line 5229
    :cond_4d
    iget v9, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    neg-long v14, v7

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v11}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v9

    .line 5230
    invoke-virtual {v6, v9}, Lorg/telegram/ui/AvatarSpan;->setChat(Lorg/telegram/tgnet/TLRPC$Chat;)V

    if-eqz v9, :cond_4e

    .line 5232
    iget-object v6, v9, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 5235
    :cond_4e
    :goto_28
    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    new-instance v9, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda16;

    invoke-direct {v9, v0, v7, v8}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;J)V

    invoke-virtual {v6, v9}, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->setOnSubtitleClick(Landroid/view/View$OnClickListener;)V

    .line 5245
    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v13}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 5246
    new-instance v7, Lorg/telegram/ui/Components/DotDividerSpan;

    invoke-direct {v7}, Lorg/telegram/ui/Components/DotDividerSpan;-><init>()V

    .line 5247
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/DotDividerSpan;->setTopPadding(I)V

    const/high16 v8, 0x40a00000    # 5.0f

    .line 5248
    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/DotDividerSpan;->setSize(F)V

    .line 5249
    invoke-virtual {v6}, Landroid/text/SpannableString;->length()I

    move-result v8

    const/4 v14, 0x0

    invoke-virtual {v6, v7, v14, v8, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 5251
    invoke-virtual {v1, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v7, v7, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget v7, v7, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->date:I

    int-to-long v7, v7

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->formatShortDate(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-object v11, v1

    goto/16 :goto_27

    .line 5255
    :cond_4f
    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v6, v6, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget v6, v6, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->date:I

    int-to-long v6, v6

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->formatStoryDate(J)Ljava/lang/String;

    move-result-object v6

    .line 5256
    iget-object v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v7, v7, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-boolean v7, v7, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->edited:Z

    if-eqz v7, :cond_50

    .line 5257
    invoke-static {v6}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    .line 5258
    new-instance v7, Lorg/telegram/ui/Components/DotDividerSpan;

    invoke-direct {v7}, Lorg/telegram/ui/Components/DotDividerSpan;-><init>()V

    .line 5259
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/DotDividerSpan;->setTopPadding(I)V

    const/high16 v8, 0x40a00000    # 5.0f

    .line 5260
    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/DotDividerSpan;->setSize(F)V

    .line 5261
    const-string v8, " . "

    invoke-virtual {v6, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x2

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    const/16 v25, 0x1

    add-int/lit8 v11, v11, -0x1

    const/4 v14, 0x0

    invoke-virtual {v8, v7, v9, v11, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 5262
    sget v7, Lorg/telegram/messenger/R$string;->EditedMessage:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_50
    move-object v11, v6

    goto :goto_29

    :cond_51
    move-wide/from16 v19, v7

    const/16 v16, 0x2

    const/4 v11, 0x0

    :goto_29
    if-eqz v11, :cond_54

    .line 5269
    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    if-eqz v6, :cond_53

    iget-object v6, v6, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-eqz v6, :cond_53

    iget-object v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v7, v7, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v7, :cond_53

    iget v7, v7, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->isPinned(I)Z

    move-result v6

    if-eqz v6, :cond_53

    .line 5270
    instance-of v6, v11, Landroid/text/SpannableStringBuilder;

    if-nez v6, :cond_52

    .line 5271
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6, v11}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object v11, v6

    .line 5274
    :cond_52
    new-instance v6, Landroid/text/SpannableString;

    const-string v7, "p "

    invoke-direct {v6, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 5275
    new-instance v7, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v8, Lorg/telegram/messenger/R$drawable;->msg_pin_mini:I

    invoke-direct {v7, v8}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    const/4 v9, 0x0

    const/4 v14, 0x1

    invoke-virtual {v6, v7, v9, v14, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 5276
    move-object v7, v11

    check-cast v7, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7, v9, v6}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 5278
    :cond_53
    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    invoke-virtual {v6, v11, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->setSubtitle(Ljava/lang/CharSequence;Z)V

    .line 5280
    :cond_54
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/4 v14, 0x0

    if-eqz v1, :cond_55

    .line 5281
    invoke-virtual {v1, v14}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide(Z)V

    .line 5283
    :cond_55
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->soundTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v1, :cond_56

    .line 5284
    invoke-virtual {v1, v14}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide(Z)V

    .line 5287
    :cond_56
    :goto_2a
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v6, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-ne v3, v6, :cond_58

    iget-object v7, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    if-ne v2, v7, :cond_58

    iget-boolean v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->captionTranslated:Z

    if-eqz v6, :cond_57

    iget-boolean v2, v6, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->translated:Z

    if-eqz v2, :cond_57

    iget-object v2, v6, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->translatedText:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    if-eqz v2, :cond_57

    iget-object v2, v6, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->translatedLng:Ljava/lang/String;

    .line 5290
    invoke-static {}, Lorg/telegram/ui/Components/TranslateAlert2;->getToLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_57

    const/4 v2, 0x1

    goto :goto_2b

    :cond_57
    const/4 v2, 0x0

    :goto_2b
    if-eq v1, v2, :cond_59

    .line 5292
    :cond_58
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->updateCaption()V

    .line 5294
    :cond_59
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-boolean v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->captionTranslated:Z

    if-nez v2, :cond_5a

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eq v3, v1, :cond_5b

    .line 5295
    :cond_5a
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    if-eqz v1, :cond_5b

    const/4 v14, 0x0

    .line 5296
    invoke-interface {v1, v14}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setTranslating(Z)V

    .line 5300
    :cond_5b
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v1

    if-eqz v1, :cond_5c

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    if-eqz v1, :cond_5c

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->livePlayer:Lorg/telegram/ui/Stories/LivePlayer;

    if-eqz v1, :cond_5c

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/LivePlayer;->getCallId()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->isThisCall(J)Z

    move-result v1

    if-eqz v1, :cond_5c

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->livePlayer:Lorg/telegram/ui/Stories/LivePlayer;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/LivePlayer;->commentsDisabled()Z

    move-result v1

    if-eqz v1, :cond_5c

    const/4 v1, 0x1

    goto :goto_2c

    :cond_5c
    const/4 v1, 0x0

    .line 5301
    :goto_2c
    iget-boolean v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->areLiveCommentsDisabled:Z

    if-eq v1, v2, :cond_63

    .line 5302
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->areLiveCommentsDisabled:Z

    if-eqz v1, :cond_5d

    .line 5304
    invoke-direct {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->createPremiumBlockedText()V

    .line 5306
    :cond_5d
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->premiumBlockedText:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_5f

    .line 5307
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isPremiumBlocked:Z

    if-nez v1, :cond_5e

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->areLiveCommentsDisabled:Z

    if-eqz v1, :cond_5f

    .line 5308
    :cond_5e
    invoke-direct {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePremiumBlockedText()V

    .line 5311
    :cond_5f
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v1, :cond_62

    .line 5312
    iget-boolean v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isPremiumBlocked:Z

    if-eqz v2, :cond_60

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v2

    if-eqz v2, :cond_61

    :cond_60
    iget-boolean v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->areLiveCommentsDisabled:Z

    if-nez v2, :cond_61

    const/4 v2, 0x1

    goto :goto_2d

    :cond_61
    const/4 v2, 0x0

    :goto_2d
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 5313
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateSendAsButton()V

    :cond_62
    const/4 v14, 0x1

    .line 5315
    invoke-direct {v0, v14}, Lorg/telegram/ui/Stories/PeerStoriesView;->checkStealthMode(Z)V

    .line 5317
    :cond_63
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->premiumBlockedText:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    if-eqz v1, :cond_67

    .line 5318
    iget-boolean v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isPremiumBlocked:Z

    if-eqz v6, :cond_64

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v6}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v6

    if-eqz v6, :cond_65

    :cond_64
    iget-boolean v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->areLiveCommentsDisabled:Z

    if-eqz v6, :cond_66

    :cond_65
    const/4 v6, 0x0

    goto :goto_2e

    :cond_66
    move v6, v2

    :goto_2e
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 5321
    :cond_67
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->unsupported:Z

    if-eqz v1, :cond_6a

    .line 5322
    invoke-direct {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->createUnsupportedContainer()V

    .line 5323
    invoke-direct {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->createReplyDisabledView()V

    .line 5324
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->unsupportedContainer:Landroid/widget/FrameLayout;

    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    .line 5325
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->replyDisabledTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    .line 5326
    iput-boolean v14, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShareLink:Z

    iput-boolean v14, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowRepost:Z

    iput-boolean v14, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShare:Z

    .line 5327
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v1, :cond_68

    .line 5328
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setVisibility(I)V

    .line 5330
    :cond_68
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfView:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_69

    .line 5331
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5333
    :cond_69
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->bottomActionsLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_87

    const/4 v14, 0x0

    .line 5334
    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_39

    .line 5337
    :cond_6a
    iget-wide v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    cmp-long v1, v6, v19

    if-gez v1, :cond_6b

    iget v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    neg-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v12

    goto :goto_2f

    :cond_6b
    const/4 v12, 0x0

    .line 5338
    :goto_2f
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 5339
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-nez v1, :cond_6c

    .line 5340
    invoke-direct {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->createEnterView()V

    .line 5342
    :cond_6c
    invoke-direct {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->createCommentButton()V

    .line 5343
    invoke-direct {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->createPaidReactionsButton()V

    .line 5344
    invoke-direct {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->createMuteButton()V

    .line 5345
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setVisibility(I)V

    goto :goto_30

    .line 5346
    :cond_6d
    iget-wide v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-static {v6, v7}, Lorg/telegram/messenger/UserObject;->isService(J)Z

    move-result v1

    if-nez v1, :cond_6e

    invoke-direct {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->isBotsPreview()Z

    move-result v1

    if-eqz v1, :cond_6f

    :cond_6e
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v1, :cond_6f

    .line 5347
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setVisibility(I)V

    goto :goto_30

    .line 5348
    :cond_6f
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-nez v1, :cond_72

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isChannel:Z

    if-eqz v1, :cond_70

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isGroup:Z

    if-eqz v1, :cond_72

    invoke-static {v12}, Lorg/telegram/messenger/ChatObject;->canSendPlain(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-nez v1, :cond_70

    invoke-static {v12}, Lorg/telegram/messenger/ChatObject;->isPossibleRemoveChatRestrictionsByBoosts(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_72

    :cond_70
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v1, :cond_72

    if-nez v1, :cond_71

    .line 5350
    invoke-direct {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->createEnterView()V

    .line 5352
    :cond_71
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setVisibility(I)V

    .line 5354
    :cond_72
    :goto_30
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v1, :cond_76

    .line 5355
    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v6}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v6

    if-eqz v6, :cond_73

    new-instance v12, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda17;

    invoke-direct {v12, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    goto :goto_31

    :cond_73
    const/4 v12, 0x0

    :goto_31
    invoke-virtual {v1, v12}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setOnSendButtonLongClick(Landroid/view/View$OnLongClickListener;)V

    .line 5376
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v6}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v6

    const/4 v14, 0x1

    invoke-direct {v0, v14}, Lorg/telegram/ui/Stories/PeerStoriesView;->disabledPaidFeatures(Z)Z

    move-result v7

    invoke-virtual {v1, v6, v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setLiveComment(ZZ)V

    .line 5377
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v6}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v6

    if-eqz v6, :cond_75

    invoke-direct {v0, v14}, Lorg/telegram/ui/Stories/PeerStoriesView;->disabledPaidFeatures(Z)Z

    move-result v6

    if-nez v6, :cond_75

    iget-boolean v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardVisible:Z

    if-nez v6, :cond_74

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v6, v6, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiViewVisible:Z

    if-eqz v6, :cond_75

    :cond_74
    const/4 v6, 0x1

    :goto_32
    const/4 v14, 0x1

    goto :goto_33

    :cond_75
    const/4 v6, 0x0

    goto :goto_32

    :goto_33
    invoke-virtual {v1, v6, v14}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setSuggestionButtonVisible(ZZ)V

    .line 5379
    :cond_76
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isPremiumBlocked:Z

    if-eqz v1, :cond_77

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->premiumBlockedText:Landroid/widget/LinearLayout;

    if-nez v1, :cond_77

    .line 5380
    invoke-direct {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->createPremiumBlockedText()V

    .line 5382
    :cond_77
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->premiumBlockedText:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_7d

    .line 5383
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isPremiumBlocked:Z

    if-nez v1, :cond_78

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->areLiveCommentsDisabled:Z

    if-eqz v1, :cond_79

    .line 5384
    :cond_78
    invoke-direct {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePremiumBlockedText()V

    .line 5386
    :cond_79
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->premiumBlockedText:Landroid/widget/LinearLayout;

    iget-boolean v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isPremiumBlocked:Z

    if-eqz v6, :cond_7a

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v6}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v6

    if-eqz v6, :cond_7b

    :cond_7a
    iget-boolean v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->areLiveCommentsDisabled:Z

    if-eqz v6, :cond_7c

    :cond_7b
    const/4 v6, 0x0

    goto :goto_34

    :cond_7c
    move v6, v2

    :goto_34
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 5388
    :cond_7d
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v1, :cond_80

    .line 5389
    iget-boolean v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isPremiumBlocked:Z

    if-eqz v6, :cond_7e

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v6}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v6

    if-eqz v6, :cond_7f

    :cond_7e
    iget-boolean v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->areLiveCommentsDisabled:Z

    if-nez v6, :cond_7f

    const/4 v6, 0x1

    goto :goto_35

    :cond_7f
    const/4 v6, 0x0

    :goto_35
    invoke-virtual {v1, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 5391
    :cond_80
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfView:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_82

    .line 5392
    iget-boolean v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-eqz v6, :cond_81

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v6}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v6

    if-nez v6, :cond_81

    const/4 v6, 0x0

    goto :goto_36

    :cond_81
    move v6, v2

    :goto_36
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 5394
    :cond_82
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->unsupportedContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_83

    .line 5395
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5397
    :cond_83
    iget-wide v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-static {v6, v7}, Lorg/telegram/messenger/UserObject;->isService(J)Z

    move-result v1

    if-eqz v1, :cond_84

    .line 5398
    invoke-direct {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->createReplyDisabledView()V

    .line 5399
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->replyDisabledTextView:Landroid/widget/TextView;

    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_37

    .line 5400
    :cond_84
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->replyDisabledTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_85

    .line 5401
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5403
    :cond_85
    :goto_37
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->bottomActionsLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_87

    .line 5404
    invoke-direct {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->isBotsPreview()Z

    move-result v6

    if-eqz v6, :cond_86

    move v6, v2

    goto :goto_38

    :cond_86
    const/4 v6, 0x0

    :goto_38
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 5407
    :cond_87
    :goto_39
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->commentButton:Lorg/telegram/ui/Stories/CommentButton;

    if-eqz v1, :cond_89

    .line 5408
    iget-boolean v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->unsupported:Z

    if-nez v6, :cond_88

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v6}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v6

    if-eqz v6, :cond_88

    const/4 v6, 0x0

    goto :goto_3a

    :cond_88
    move v6, v2

    :goto_3a
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 5409
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->commentButton:Lorg/telegram/ui/Stories/CommentButton;

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->liveCommentsView:Lorg/telegram/ui/Stories/LiveCommentsView;

    invoke-virtual {v6}, Lorg/telegram/ui/Stories/LiveCommentsView;->isCollapsed()Z

    move-result v6

    const/4 v14, 0x0

    invoke-virtual {v1, v6, v14}, Lorg/telegram/ui/Stories/CommentButton;->setCollapsed(ZZ)V

    .line 5410
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->commentButton:Lorg/telegram/ui/Stories/CommentButton;

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->liveCommentsView:Lorg/telegram/ui/Stories/LiveCommentsView;

    invoke-virtual {v6}, Lorg/telegram/ui/Stories/LiveCommentsView;->getUnreadMessagesCount()I

    move-result v6

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Stories/CommentButton;->setCount(I)V

    .line 5412
    :cond_89
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteButton:Lorg/telegram/ui/Stories/MuteButton;

    if-eqz v1, :cond_8e

    .line 5413
    iget-boolean v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->unsupported:Z

    if-nez v6, :cond_8a

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v6}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v6

    if-eqz v6, :cond_8a

    sget-object v6, Lorg/telegram/ui/Stories/LivePlayer;->recording:Lorg/telegram/ui/Stories/LivePlayer;

    if-eqz v6, :cond_8a

    iget-object v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v6}, Lorg/telegram/ui/Stories/LivePlayer;->getCallId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->isThisCall(J)Z

    move-result v6

    if-eqz v6, :cond_8a

    const/4 v6, 0x0

    goto :goto_3b

    :cond_8a
    move v6, v2

    :goto_3b
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 5414
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteButton:Lorg/telegram/ui/Stories/MuteButton;

    sget-object v6, Lorg/telegram/ui/Stories/LivePlayer;->recording:Lorg/telegram/ui/Stories/LivePlayer;

    if-eqz v6, :cond_8b

    invoke-virtual {v6}, Lorg/telegram/ui/Stories/LivePlayer;->isMuted()Z

    move-result v6

    if-eqz v6, :cond_8b

    const/4 v6, 0x1

    :goto_3c
    const/4 v14, 0x1

    goto :goto_3d

    :cond_8b
    const/4 v6, 0x0

    goto :goto_3c

    :goto_3d
    invoke-virtual {v1, v6, v14}, Lorg/telegram/ui/Stories/MuteButton;->setMuted(ZZ)V

    .line 5415
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteButton:Lorg/telegram/ui/Stories/MuteButton;

    sget-object v6, Lorg/telegram/ui/Stories/LivePlayer;->recording:Lorg/telegram/ui/Stories/LivePlayer;

    if-eqz v6, :cond_8d

    invoke-virtual {v6}, Lorg/telegram/ui/Stories/LivePlayer;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_8c

    goto :goto_3e

    :cond_8c
    const/4 v6, 0x0

    goto :goto_3f

    :cond_8d
    :goto_3e
    move v6, v14

    :goto_3f
    invoke-virtual {v1, v6, v14}, Lorg/telegram/ui/Stories/MuteButton;->setConnected(ZZ)V

    .line 5417
    :cond_8e
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->starsButton:Lorg/telegram/ui/Stories/PaidReactionButton;

    if-eqz v1, :cond_92

    .line 5418
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->starsButtonEffectsView:Lorg/telegram/ui/Stories/PaidReactionButton$PaidReactionButtonEffectsView;

    iget-boolean v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->unsupported:Z

    if-nez v6, :cond_8f

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v6}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v6

    if-eqz v6, :cond_8f

    const/4 v6, 0x0

    goto :goto_40

    :cond_8f
    move v6, v2

    :goto_40
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 5419
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->starsButton:Lorg/telegram/ui/Stories/PaidReactionButton;

    iget-boolean v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->unsupported:Z

    if-nez v6, :cond_90

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v6}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v6

    if-eqz v6, :cond_90

    const/4 v6, 0x0

    goto :goto_41

    :cond_90
    move v6, v2

    :goto_41
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 5420
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->starsButton:Lorg/telegram/ui/Stories/PaidReactionButton;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 5421
    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteButton:Lorg/telegram/ui/Stories/MuteButton;

    if-eqz v6, :cond_91

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_91

    const/high16 v6, 0x42580000    # 54.0f

    :goto_42
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    goto :goto_43

    :cond_91
    const/high16 v6, 0x40e00000    # 7.0f

    goto :goto_42

    .line 5422
    :goto_43
    iget v7, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    if-eq v7, v6, :cond_92

    .line 5423
    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 5424
    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->starsButton:Lorg/telegram/ui/Stories/PaidReactionButton;

    invoke-virtual {v6, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5428
    :cond_92
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v1

    if-nez v1, :cond_93

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v6, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->caption:Ljava/lang/CharSequence;

    if-nez v6, :cond_94

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->getReply()Lorg/telegram/ui/Stories/StoryCaptionView$Reply;

    move-result-object v1

    if-eqz v1, :cond_93

    goto :goto_44

    :cond_93
    const/4 v14, 0x0

    goto :goto_47

    :cond_94
    :goto_44
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->unsupported:Z

    if-nez v1, :cond_93

    .line 5429
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v7, v6, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->caption:Ljava/lang/CharSequence;

    invoke-virtual {v6}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->getReply()Lorg/telegram/ui/Stories/StoryCaptionView$Reply;

    move-result-object v6

    iget-object v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean v8, v8, Lorg/telegram/ui/Stories/StoryViewer;->isTranslating:Z

    if-eqz v8, :cond_95

    iget-object v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-boolean v9, v8, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->captionTranslated:Z

    if-nez v9, :cond_95

    iget-object v8, v8, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v8, :cond_95

    iget-boolean v8, v8, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->translated:Z

    if-eqz v8, :cond_95

    const/4 v8, 0x1

    goto :goto_45

    :cond_95
    const/4 v8, 0x0

    :goto_45
    iget-object v9, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v9, v9, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-ne v3, v9, :cond_96

    const/4 v3, 0x1

    goto :goto_46

    :cond_96
    const/4 v3, 0x0

    :goto_46
    invoke-virtual {v1, v7, v6, v8, v3}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->setText(Ljava/lang/CharSequence;Lorg/telegram/ui/Stories/StoryCaptionView$Reply;ZZ)V

    .line 5430
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_48

    .line 5432
    :goto_47
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz v1, :cond_97

    .line 5433
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {v1, v14}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setIsCaption(Z)V

    .line 5434
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    iput-boolean v14, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isCaptionPartVisible:Z

    invoke-interface {v1, v14}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setIsCaptionPartVisible(Z)V

    .line 5436
    :cond_97
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5438
    :goto_48
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v1, :cond_99

    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVideoStream;

    if-eqz v3, :cond_99

    .line 5439
    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->liveCommentsView:Lorg/telegram/ui/Stories/LiveCommentsView;

    iget-wide v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVideoStream;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVideoStream;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    invoke-virtual {v3, v6, v7, v1}, Lorg/telegram/ui/Stories/LiveCommentsView;->setup(JLorg/telegram/tgnet/TLRPC$InputGroupCall;)Z

    move-result v1

    if-eqz v1, :cond_98

    .line 5440
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->liveCommentsView:Lorg/telegram/ui/Stories/LiveCommentsView;

    const/4 v14, 0x0

    invoke-virtual {v1, v14, v14}, Lorg/telegram/ui/Stories/LiveCommentsView;->setCollapsed(ZZ)V

    move-wide/from16 v6, v19

    .line 5441
    iput-wide v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->messageStars:J

    .line 5442
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v1, :cond_98

    const/4 v14, 0x1

    .line 5443
    invoke-virtual {v1, v14}, Lorg/telegram/ui/Components/ChatActivityEnterView;->checkSendButton(Z)V

    .line 5444
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateSendButtonPaid()V

    .line 5445
    invoke-direct {v0, v14}, Lorg/telegram/ui/Stories/PeerStoriesView;->checkStealthMode(Z)V

    .line 5448
    :cond_98
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->liveCommentsView:Lorg/telegram/ui/Stories/LiveCommentsView;

    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_49

    .line 5450
    :cond_99
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->liveCommentsView:Lorg/telegram/ui/Stories/LiveCommentsView;

    iget-wide v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    const/4 v9, 0x0

    invoke-virtual {v1, v6, v7, v9}, Lorg/telegram/ui/Stories/LiveCommentsView;->setup(JLorg/telegram/tgnet/TLRPC$InputGroupCall;)Z

    .line 5451
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->liveCommentsView:Lorg/telegram/ui/Stories/LiveCommentsView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5453
    :goto_49
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 5454
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    if-eqz v1, :cond_9a

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelectedPeer()Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 5455
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    iget-wide v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iget v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    invoke-interface {v1, v6, v7, v3}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->onPeerSelected(JI)V

    .line 5457
    :cond_9a
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isChannel:Z

    if-eqz v1, :cond_9f

    .line 5458
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->shareButton:Landroid/widget/ImageView;

    iget-boolean v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShare:Z

    if-eqz v3, :cond_9b

    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v3}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v3

    if-nez v3, :cond_9b

    const/4 v3, 0x0

    goto :goto_4a

    :cond_9b
    move/from16 v3, v22

    :goto_4a
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5459
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->repostButtonContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_9d

    .line 5460
    iget-boolean v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowRepost:Z

    if-eqz v3, :cond_9c

    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v3}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v3

    if-nez v3, :cond_9c

    const/4 v3, 0x0

    goto :goto_4b

    :cond_9c
    move v3, v2

    :goto_4b
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 5462
    :cond_9d
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    iget-boolean v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isFailed:Z

    if-nez v3, :cond_9e

    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v3}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v3

    if-nez v3, :cond_9e

    const/4 v3, 0x0

    goto :goto_4c

    :cond_9e
    move v3, v2

    :goto_4c
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4f

    .line 5464
    :cond_9f
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->shareButton:Landroid/widget/ImageView;

    iget-boolean v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShare:Z

    if-eqz v3, :cond_a0

    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v3}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v3

    if-nez v3, :cond_a0

    const/4 v3, 0x0

    goto :goto_4d

    :cond_a0
    move/from16 v3, v22

    :goto_4d
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5465
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->repostButtonContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_a1

    .line 5466
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5468
    :cond_a1
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    iget-boolean v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-nez v3, :cond_a2

    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v3}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v3

    if-nez v3, :cond_a2

    const/4 v3, 0x0

    goto :goto_4e

    :cond_a2
    move v3, v2

    :goto_4e
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 5469
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/high16 v3, 0x42200000    # 40.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 5471
    :goto_4f
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 5472
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->savedPositions:Lorg/telegram/messenger/support/LongSparseIntArray;

    iget-wide v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    move/from16 v3, v26

    invoke-virtual {v1, v6, v7, v3}, Lorg/telegram/messenger/support/LongSparseIntArray;->append(JI)V

    .line 5474
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz v1, :cond_a3

    const-wide/16 v6, 0x0

    .line 5475
    invoke-direct {v0, v6, v7}, Lorg/telegram/ui/Stories/PeerStoriesView;->requestVideoPlayer(J)V

    .line 5476
    invoke-direct {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePreloadImages()V

    .line 5477
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->bumpPriority()V

    .line 5480
    :cond_a3
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->liveCommentsView:Lorg/telegram/ui/Stories/LiveCommentsView;

    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoryViewer;->livePlayer:Lorg/telegram/ui/Stories/LivePlayer;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Stories/LiveCommentsView;->setLivePlayer(Lorg/telegram/ui/Stories/LivePlayer;)V

    const/4 v14, 0x0

    .line 5482
    iput v14, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->listPosition:I

    .line 5483
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-eqz v1, :cond_a5

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v1, :cond_a5

    .line 5484
    iget v1, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    const/4 v3, 0x0

    .line 5485
    :goto_50
    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v6, v6, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-object v6, v6, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_a5

    .line 5486
    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v6, v6, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-object v6, v6, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject;

    if-eqz v6, :cond_a4

    .line 5487
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    if-ne v6, v1, :cond_a4

    .line 5488
    iput v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->listPosition:I

    goto :goto_51

    :cond_a4
    add-int/lit8 v3, v3, 0x1

    goto :goto_50

    .line 5493
    :cond_a5
    :goto_51
    iget v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    iput v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->linesPosition:I

    .line 5494
    iget v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->count:I

    iput v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->linesCount:I

    .line 5495
    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean v6, v6, Lorg/telegram/ui/Stories/StoryViewer;->reversed:Z

    if-eqz v6, :cond_a6

    const/16 v25, 0x1

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v1

    .line 5496
    iput v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->linesPosition:I

    .line 5499
    :cond_a6
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->isVideo()Z

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_a9

    .line 5500
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconContainer:Landroid/widget/FrameLayout;

    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    .line 5501
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->hasSound()Z

    move-result v1

    if-eqz v1, :cond_a7

    move v1, v3

    goto :goto_52

    :cond_a7
    const/high16 v1, 0x3f000000    # 0.5f

    :goto_52
    iput v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconViewAlpha:F

    .line 5502
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->hasSound()Z

    move-result v1

    if-eqz v1, :cond_a8

    .line 5503
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    .line 5504
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->noSoundIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_53

    :cond_a8
    const/4 v14, 0x0

    .line 5506
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5507
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->noSoundIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5509
    :goto_53
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconContainer:Landroid/widget/FrameLayout;

    iget v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconViewAlpha:F

    iget v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    sub-float v7, v3, v7

    mul-float/2addr v6, v7

    invoke-virtual {v1, v6}, Landroid/view/View;->setAlpha(F)V

    goto :goto_54

    .line 5511
    :cond_a9
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5514
    :goto_54
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v6, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    if-eqz v6, :cond_ab

    .line 5515
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyButton:Lorg/telegram/ui/Stories/StoryPrivacyButton;

    iget-boolean v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-eqz v4, :cond_aa

    iget-boolean v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->editedPrivacy:Z

    if-eqz v8, :cond_aa

    const/4 v8, 0x1

    goto :goto_55

    :cond_aa
    const/4 v8, 0x0

    :goto_55
    invoke-virtual {v1, v7, v6, v8}, Lorg/telegram/ui/Stories/StoryPrivacyButton;->set(ZLorg/telegram/ui/Stories/StoriesController$UploadingStory;Z)Z

    :goto_56
    const/4 v14, 0x0

    goto :goto_5a

    .line 5516
    :cond_ab
    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v1, :cond_ad

    .line 5517
    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyButton:Lorg/telegram/ui/Stories/StoryPrivacyButton;

    iget-boolean v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-eqz v4, :cond_ac

    iget-boolean v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->editedPrivacy:Z

    if-eqz v8, :cond_ac

    const/4 v8, 0x1

    goto :goto_57

    :cond_ac
    const/4 v8, 0x0

    :goto_57
    invoke-virtual {v6, v7, v1, v8}, Lorg/telegram/ui/Stories/StoryPrivacyButton;->set(ZLorg/telegram/tgnet/tl/TL_stories$StoryItem;Z)Z

    goto :goto_56

    .line 5519
    :cond_ad
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyButton:Lorg/telegram/ui/Stories/StoryPrivacyButton;

    iget-boolean v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-eqz v4, :cond_ae

    iget-boolean v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->editedPrivacy:Z

    if-eqz v7, :cond_ae

    const/4 v7, 0x1

    :goto_58
    const/4 v9, 0x0

    goto :goto_59

    :cond_ae
    const/4 v7, 0x0

    goto :goto_58

    :goto_59
    invoke-virtual {v1, v6, v9, v7}, Lorg/telegram/ui/Stories/StoryPrivacyButton;->set(ZLorg/telegram/tgnet/tl/TL_stories$StoryItem;Z)Z

    goto :goto_56

    .line 5521
    :goto_5a
    iput-boolean v14, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->editedPrivacy:Z

    .line 5522
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyButton:Lorg/telegram/ui/Stories/StoryPrivacyButton;

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_af

    const/high16 v6, 0x42300000    # 44.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    goto :goto_5b

    :cond_af
    const/4 v6, 0x0

    :goto_5b
    invoke-virtual {v1, v6}, Landroid/view/View;->setTranslationX(F)V

    if-eqz v5, :cond_b2

    const/4 v14, 0x0

    .line 5524
    iput-boolean v14, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->drawReactionEffect:Z

    .line 5525
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v1, :cond_b1

    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->sent_reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    if-nez v1, :cond_b0

    goto :goto_5c

    .line 5528
    :cond_b0
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesLikeButton:Lorg/telegram/ui/Stories/StoriesLikeButton;

    invoke-static {v1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTL(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v1

    invoke-virtual {v5, v1}, Lorg/telegram/ui/Stories/StoriesLikeButton;->setReaction(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    goto :goto_5d

    .line 5526
    :cond_b1
    :goto_5c
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesLikeButton:Lorg/telegram/ui/Stories/StoriesLikeButton;

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Lorg/telegram/ui/Stories/StoriesLikeButton;->setReaction(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    .line 5532
    :cond_b2
    :goto_5d
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    const-wide/16 v5, 0xb4

    if-eqz v1, :cond_b5

    iget-boolean v1, v1, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->failed:Z

    if-eqz v1, :cond_b5

    .line 5533
    invoke-direct {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->createFailView()V

    .line 5534
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->failView:Lorg/telegram/ui/Stories/StoryFailView;

    iget-object v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v7, v7, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    iget-object v7, v7, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v7, v7, Lorg/telegram/ui/Stories/recorder/StoryEntry;->error:Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-virtual {v1, v7}, Lorg/telegram/ui/Stories/StoryFailView;->set(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    .line 5535
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->failView:Lorg/telegram/ui/Stories/StoryFailView;

    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    .line 5536
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->failViewAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v1, :cond_b3

    .line 5537
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v9, 0x0

    .line 5538
    iput-object v9, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->failViewAnimator:Landroid/view/ViewPropertyAnimator;

    :cond_b3
    if-eqz v4, :cond_b4

    .line 5541
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->failView:Lorg/telegram/ui/Stories/StoryFailView;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->failViewAnimator:Landroid/view/ViewPropertyAnimator;

    .line 5542
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_5e

    .line 5544
    :cond_b4
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->failView:Lorg/telegram/ui/Stories/StoryFailView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_5e

    .line 5546
    :cond_b5
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->failView:Lorg/telegram/ui/Stories/StoryFailView;

    if-eqz v1, :cond_b8

    .line 5547
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->failViewAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v1, :cond_b6

    .line 5548
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v9, 0x0

    .line 5549
    iput-object v9, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->failViewAnimator:Landroid/view/ViewPropertyAnimator;

    :cond_b6
    if-eqz v4, :cond_b7

    .line 5551
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->failView:Lorg/telegram/ui/Stories/StoryFailView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_b7

    .line 5552
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->failView:Lorg/telegram/ui/Stories/StoryFailView;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v3, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda18;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->failViewAnimator:Landroid/view/ViewPropertyAnimator;

    .line 5553
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_5e

    .line 5555
    :cond_b7
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->failView:Lorg/telegram/ui/Stories/StoryFailView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 5556
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->failView:Lorg/telegram/ui/Stories/StoryFailView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5560
    :cond_b8
    :goto_5e
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/StoryViewer;->soundEnabled()Z

    move-result v3

    const/16 v25, 0x1

    xor-int/lit8 v3, v3, 0x1

    const/4 v14, 0x0

    invoke-virtual {v1, v3, v14}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->setIconMuted(ZZ)V

    .line 5561
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz v1, :cond_b9

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v1, :cond_b9

    .line 5562
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StoryViewer displayed story dialogId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " storyId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v3, v3, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget v3, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v3}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$mgetMediaDebugString(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 5564
    :cond_b9
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-eqz v1, :cond_ba

    .line 5565
    iget v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    iget-wide v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v5, v5, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-static {v1, v3, v4, v5}, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->preload(IJLorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    .line 5567
    :cond_ba
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-eqz v3, :cond_bb

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->getCount()I

    move-result v3

    iget v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->linesCount:I

    if-eq v3, v4, :cond_bb

    const/high16 v3, 0x42600000    # 56.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    :goto_5f
    const/4 v14, 0x0

    goto :goto_60

    :cond_bb
    const/4 v4, 0x0

    goto :goto_5f

    :goto_60
    invoke-virtual {v1, v14, v14, v4, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 5569
    iget v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->getTranslateController()Lorg/telegram/messenger/TranslateController;

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v3, v3, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/TranslateController;->detectStoryLanguage(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    if-nez p1, :cond_bc

    .line 5571
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-nez v1, :cond_bc

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsTooltipRunnable:Ljava/lang/Runnable;

    if-nez v1, :cond_bc

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->storyReactionsLongPressHint:Z

    if-nez v1, :cond_bc

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->storiesIntroShown:Z

    if-eqz v1, :cond_bc

    .line 5572
    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda19;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    iput-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsTooltipRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1f4

    invoke-static {v1, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 5590
    :cond_bc
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->soundTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v1, :cond_be

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->shown()Z

    move-result v1

    if-nez v1, :cond_bd

    goto :goto_61

    :cond_bd
    const/4 v14, 0x0

    goto :goto_62

    :cond_be
    :goto_61
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->hasSound()Z

    move-result v1

    if-eqz v1, :cond_bd

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoryViewer;->soundEnabled()Z

    move-result v1

    if-nez v1, :cond_bd

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "taptostorysoundhint"

    const/4 v14, 0x0

    invoke-interface {v1, v3, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    move/from16 v3, v16

    if-ge v1, v3, :cond_bf

    .line 5591
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->showTapToSoundHint:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 5592
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->showTapToSoundHint:Ljava/lang/Runnable;

    const-wide/16 v3, 0xfa

    invoke-static {v1, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 5595
    :cond_bf
    :goto_62
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->optionsIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_c2

    .line 5596
    invoke-direct {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->isBotsPreview()Z

    move-result v3

    if-eqz v3, :cond_c1

    invoke-direct {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->isEditBotsPreview()Z

    move-result v3

    if-nez v3, :cond_c1

    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    if-eqz v3, :cond_c0

    invoke-static {v3}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisVideo(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v3

    if-nez v3, :cond_c1

    :cond_c0
    move v4, v2

    goto :goto_63

    :cond_c1
    move v4, v14

    :goto_63
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5598
    :cond_c2
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->pipIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_c4

    .line 5599
    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v3}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v3

    if-eqz v3, :cond_c3

    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyButton:Lorg/telegram/ui/Stories/StoryPrivacyButton;

    iget-boolean v3, v3, Lorg/telegram/ui/Stories/StoryPrivacyButton;->draw:Z

    if-nez v3, :cond_c3

    move v4, v14

    goto :goto_64

    :cond_c3
    move v4, v2

    :goto_64
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_c4
    :goto_65
    return-void
.end method

.method private updatePreloadImages()V
    .locals 10

    .line 5664
    const-string v0, "UTF-8"

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getRealScreenSize()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getRealScreenSize()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    .line 5665
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 5666
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5668
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->uriesToPrepare:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 5669
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->documentsToPrepare:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    move v3, v2

    .line 5670
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->preloadReactionHolders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 5671
    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->preloadReactionHolders:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->onAttachedToWindow(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5673
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->preloadReactionHolders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    move v3, v2

    :goto_1
    const/4 v4, 0x2

    if-ge v3, v4, :cond_c

    .line 5676
    iget v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    if-nez v3, :cond_1

    add-int/lit8 v4, v4, -0x1

    .line 5680
    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->leftPreloadImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-gez v4, :cond_2

    .line 5682
    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    goto/16 :goto_5

    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 5687
    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->rightPreloadImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 5688
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->getStoriesCount()I

    move-result v6

    if-lt v4, v6, :cond_2

    .line 5689
    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    goto/16 :goto_5

    .line 5693
    :cond_2
    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v4, v6, :cond_3

    .line 5694
    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v4, v6

    .line 5695
    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    .line 5696
    invoke-direct {p0, v4, v5, v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->setStoryImage(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 5698
    :cond_3
    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    goto/16 :goto_5

    :cond_4
    if-gez v4, :cond_5

    move v4, v2

    .line 5704
    :cond_5
    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v4, v6, :cond_6

    .line 5705
    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 5707
    :cond_6
    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    .line 5708
    iget-wide v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iput-wide v6, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    .line 5709
    invoke-direct {p0, v4, v5, v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->setStoryImage(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;)V

    .line 5711
    iget-object v5, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 5713
    iget-object v5, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-virtual {v5}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v5

    .line 5714
    iget v6, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->fileReference:I

    if-nez v6, :cond_7

    .line 5715
    iget v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v6

    invoke-virtual {v6, v4}, Lorg/telegram/messenger/FileLoader;->getFileReference(Ljava/lang/Object;)I

    move-result v6

    iput v6, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->fileReference:I

    .line 5719
    :cond_7
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "?account="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "&id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v5, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "&hash="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v5, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "&dc="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "&size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v5, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "&mime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 5724
    invoke-static {v7, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "&rid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->fileReference:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "&name="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5726
    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "&reference="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5727
    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    if-eqz v7, :cond_8

    goto :goto_2

    :cond_8
    new-array v7, v2, [B

    :goto_2
    invoke-static {v7}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "&sid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "&did="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 5729
    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->uriesToPrepare:Ljava/util/ArrayList;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "tg://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5730
    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->documentsToPrepare:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v5

    .line 5732
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 5736
    :cond_9
    :goto_3
    iget-object v5, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media_areas:Ljava/util/ArrayList;

    if-eqz v5, :cond_b

    move v5, v2

    .line 5737
    :goto_4
    iget-object v6, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media_areas:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_b

    .line 5738
    iget-object v6, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media_areas:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaSuggestedReaction;

    if-eqz v6, :cond_a

    .line 5739
    iget-object v6, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media_areas:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaSuggestedReaction;

    .line 5740
    new-instance v7, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;

    invoke-direct {v7, p0}, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;-><init>(Landroid/view/View;)V

    .line 5741
    iget-object v6, v6, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-static {v6}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTL(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v6

    invoke-virtual {v7, v6}, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->setVisibleReaction(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    .line 5742
    iget-boolean v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->attachedToWindow:Z

    invoke-virtual {v7, v6}, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->onAttachedToWindow(Z)V

    .line 5743
    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->preloadReactionHolders:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_b
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 5752
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->documentsToPrepare:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->uriesToPrepare:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v2}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->preparePlayer(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method private updatePremiumBlockedText()V
    .locals 2

    .line 2818
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->areLiveCommentsDisabled:Z

    if-eqz v0, :cond_1

    .line 2819
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->premiumBlockedText1:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2820
    sget v1, Lorg/telegram/messenger/R$string;->LiveStoryCommentsDisabled:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2822
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->premiumBlockedText2:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    const/16 v1, 0x8

    .line 2823
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 2826
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->premiumBlockedText1:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 2827
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isGroup:Z

    if-eqz v1, :cond_2

    sget v1, Lorg/telegram/messenger/R$string;->StoryGroupRepliesLocked:I

    goto :goto_0

    :cond_2
    sget v1, Lorg/telegram/messenger/R$string;->StoryRepliesLocked:I

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2829
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->premiumBlockedText2:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    .line 2830
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2831
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->premiumBlockedText2:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->StoryRepliesLockedButton:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method private updateSelectedPosition()V
    .locals 7

    .line 4380
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->day:Ljava/util/ArrayList;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 4382
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->uploadingStories:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4383
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v3, v2

    .line 4384
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 4385
    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    iget-wide v4, v4, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->random_id:J

    invoke-static {v4, v5}, Landroidx/camera/camera2/pipe/CameraTimestamp$$ExternalSyntheticBackport0;->m(J)I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget v5, v5, Lorg/telegram/ui/Stories/StoryViewer;->dayStoryId:I

    if-ne v4, v5, :cond_0

    .line 4386
    iput v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    return-void

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 4391
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->day:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget v4, v4, Lorg/telegram/ui/Stories/StoryViewer;->dayStoryId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_4

    .line 4393
    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->day:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 4394
    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget v4, v4, Lorg/telegram/ui/Stories/StoryViewer;->dayStoryId:I

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->day:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v4, v5, :cond_3

    move v3, v2

    goto :goto_1

    .line 4396
    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget v4, v4, Lorg/telegram/ui/Stories/StoryViewer;->dayStoryId:I

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->day:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 4397
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->day:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :cond_4
    :goto_1
    add-int/2addr v0, v3

    .line 4401
    iput v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    goto :goto_3

    .line 4403
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->savedPositions:Lorg/telegram/messenger/support/LongSparseIntArray;

    iget-wide v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-virtual {v0, v3, v4, v1}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(JI)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    if-ne v0, v1, :cond_7

    .line 4405
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->isSingleStory:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->userStories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    if-eqz v0, :cond_7

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->max_read_id:I

    if-lez v0, :cond_7

    move v0, v2

    .line 4406
    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_7

    .line 4407
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget v3, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->userStories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    iget v4, v4, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->max_read_id:I

    if-le v3, v4, :cond_6

    .line 4408
    iput v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    goto :goto_3

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4415
    :cond_7
    :goto_3
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    if-ne v0, v1, :cond_8

    .line 4416
    iput v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    :cond_8
    return-void
.end method

.method private updateSpeedItem(Z)V
    .locals 5

    .line 2947
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->speedItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->speedLayout:Lorg/telegram/ui/ChooseSpeedLayout;

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 2948
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    :cond_1
    if-eqz p1, :cond_7

    .line 2952
    sget v0, Lorg/telegram/ui/Stories/StoryViewer;->currentSpeed:F

    const v1, 0x3e4ccccd    # 0.2f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3d4ccccd    # 0.05f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 2953
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->speedItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v1, Lorg/telegram/messenger/R$string;->VideoSpeedVerySlow:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSubtext(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 2954
    :cond_2
    sget v0, Lorg/telegram/ui/Stories/StoryViewer;->currentSpeed:F

    const/high16 v2, 0x3f000000    # 0.5f

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 2955
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->speedItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v1, Lorg/telegram/messenger/R$string;->VideoSpeedSlow:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSubtext(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2956
    :cond_3
    sget v0, Lorg/telegram/ui/Stories/StoryViewer;->currentSpeed:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 2957
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->speedItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v1, Lorg/telegram/messenger/R$string;->VideoSpeedNormal:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSubtext(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2958
    :cond_4
    sget v0, Lorg/telegram/ui/Stories/StoryViewer;->currentSpeed:F

    const/high16 v2, 0x3fc00000    # 1.5f

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    .line 2959
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->speedItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v1, Lorg/telegram/messenger/R$string;->VideoSpeedFast:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSubtext(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2960
    :cond_5
    sget v0, Lorg/telegram/ui/Stories/StoryViewer;->currentSpeed:F

    const/high16 v2, 0x40000000    # 2.0f

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    .line 2961
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->speedItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v1, Lorg/telegram/messenger/R$string;->VideoSpeedVeryFast:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSubtext(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2963
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->speedItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v1, Lorg/telegram/messenger/R$string;->VideoSpeedCustom:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lorg/telegram/ui/Stories/StoryViewer;->currentSpeed:F

    invoke-static {v3}, Lorg/telegram/ui/Components/SpeedIconDrawable;->formatNumber(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSubtext(Ljava/lang/CharSequence;)V

    .line 2966
    :cond_7
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->speedLayout:Lorg/telegram/ui/ChooseSpeedLayout;

    sget v1, Lorg/telegram/ui/Stories/StoryViewer;->currentSpeed:F

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/ChooseSpeedLayout;->update(FZ)V

    :cond_8
    :goto_1
    return-void
.end method

.method private updateStoryItems()V
    .locals 7

    .line 4421
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4422
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->isSingleStory:Z

    if-eqz v1, :cond_0

    .line 4423
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->singleStoryDeleted:Z

    if-nez v1, :cond_9

    .line 4424
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->singleStory:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 4426
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->day:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-eqz v1, :cond_4

    .line 4427
    instance-of v0, v1, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;

    if-eqz v0, :cond_2

    .line 4428
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4429
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    iget-wide v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Stories/StoriesController;->getUploadingStories(J)Ljava/util/ArrayList;

    move-result-object v0

    .line 4430
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    check-cast v1, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->lang_code:Ljava/lang/String;

    if-eqz v0, :cond_2

    move v3, v2

    .line 4432
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 4433
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    .line 4434
    iget-object v5, v4, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v5, :cond_1

    iget-boolean v6, v5, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-nez v6, :cond_1

    iget-object v5, v5, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botLang:Ljava/lang/String;

    invoke-static {v5, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4435
    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4440
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->day:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_3
    :goto_1
    if-ge v2, v1, :cond_9

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 4441
    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->findMessageObject(I)Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 4442
    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v3, :cond_3

    .line 4443
    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4446
    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-eqz v1, :cond_5

    .line 4448
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_9

    .line 4449
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 4452
    :cond_5
    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->overrideUserStories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    iget-wide v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_6

    .line 4453
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->overrideUserStories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->userStories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    goto :goto_3

    .line 4455
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Stories/StoriesController;->getStories(J)Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->userStories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    if-nez v0, :cond_7

    .line 4457
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Stories/StoriesController;->getStoriesFromFullPeer(J)Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->userStories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    .line 4460
    :cond_7
    :goto_3
    iput v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->totalStoriesCount:I

    .line 4461
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->userStories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    if-eqz v0, :cond_8

    .line 4462
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->totalStoriesCount:I

    .line 4463
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->userStories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4465
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4466
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/StoriesController;->getUploadingStories(J)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 4468
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4471
    :cond_9
    :goto_4
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->getStoriesCount()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->count:I

    return-void
.end method

.method private updateUserViews(Z)V
    .locals 12

    .line 5813
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-nez v1, :cond_0

    .line 5815
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->editingSourceItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    .line 5817
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isChannel:Z

    if-nez v0, :cond_1

    iget-boolean v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-nez v2, :cond_1

    return-void

    .line 5820
    :cond_1
    const-string v2, ""

    const/16 v3, 0x8

    if-eqz v1, :cond_1c

    const/4 v4, 0x3

    const/high16 v5, 0x41800000    # 16.0f

    const/high16 v6, 0x42200000    # 40.0f

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v0, :cond_12

    .line 5822
    iget-object v0, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    if-nez v0, :cond_2

    .line 5823
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stories$TL_storyViews;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stories$TL_storyViews;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    .line 5825
    :cond_2
    iget-object v0, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    iget v9, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->views_count:I

    if-gtz v9, :cond_3

    .line 5826
    iput v8, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->views_count:I

    .line 5828
    :cond_3
    iget-object v9, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->repostCounter:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eqz v9, :cond_5

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->forwards_count:I

    if-lez v0, :cond_5

    .line 5829
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_4

    iget-boolean v10, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->repostCounterVisible:Z

    if-eqz v10, :cond_4

    move v10, v8

    goto :goto_0

    :cond_4
    move v10, v7

    :goto_0
    invoke-virtual {v9, v0, v10}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    .line 5830
    iput-boolean v8, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->repostCounterVisible:Z

    goto :goto_1

    .line 5832
    :cond_5
    iput-boolean v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->repostCounterVisible:Z

    .line 5834
    :goto_1
    iget-object v0, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->reactions_count:I

    if-lez v0, :cond_7

    .line 5835
    iget-object v9, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsCounter:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_6

    iget-boolean v10, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsCounterVisible:Z

    if-eqz v10, :cond_6

    move v10, v8

    goto :goto_2

    :cond_6
    move v10, v7

    :goto_2
    invoke-virtual {v9, v0, v10}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    .line 5836
    iput-boolean v8, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsCounterVisible:Z

    goto :goto_3

    .line 5838
    :cond_7
    iput-boolean v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsCounterVisible:Z

    :goto_3
    const/4 v0, 0x0

    if-nez p1, :cond_a

    .line 5841
    iget-object v9, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsCounterProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v10, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsCounterVisible:Z

    const/high16 v11, 0x3f800000    # 1.0f

    if-eqz v10, :cond_8

    move v10, v11

    goto :goto_4

    :cond_8
    move v10, v0

    :goto_4
    invoke-virtual {v9, v10, v8}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    .line 5842
    iget-object v9, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->repostCounterProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    if-eqz v9, :cond_a

    .line 5843
    iget-boolean v10, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->repostCounterVisible:Z

    if-eqz v10, :cond_9

    goto :goto_5

    :cond_9
    move v11, v0

    :goto_5
    invoke-virtual {v9, v11, v8}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    .line 5846
    :cond_a
    iget v8, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget-wide v9, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    neg-long v9, v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v8

    .line 5847
    iget-boolean v9, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isGroup:Z

    if-eqz v9, :cond_b

    invoke-static {v8}, Lorg/telegram/messenger/ChatObject;->canSendPlain(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v9

    if-nez v9, :cond_d

    invoke-static {v8}, Lorg/telegram/messenger/ChatObject;->isPossibleRemoveChatRestrictionsByBoosts(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v8

    if-nez v8, :cond_d

    :cond_b
    iget-object v8, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    iget v8, v8, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->views_count:I

    if-lez v8, :cond_d

    .line 5848
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfStatusView:Landroid/widget/TextView;

    iget-object v8, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v8, v8, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-nez v8, :cond_c

    sget v8, Lorg/telegram/messenger/R$string;->NobodyViews:I

    :goto_6
    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_7

    :cond_c
    sget v8, Lorg/telegram/messenger/R$string;->NobodyViewsArchived:I

    goto :goto_6

    :goto_7
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5849
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfStatusView:Landroid/widget/TextView;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 5850
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 5851
    const-string v5, "d  "

    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 5852
    new-instance v5, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v8, Lorg/telegram/messenger/R$drawable;->filled_views:I

    invoke-direct {v5, v8}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    .line 5853
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    sub-int/2addr v8, v4

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v2, v5, v8, v4, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 5854
    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    iget v1, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->views_count:I

    invoke-static {v1, v7}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 5855
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfStatusView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5857
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfView:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_e

    .line 5858
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v4, 0x42a00000    # 80.0f

    .line 5859
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfStatusView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    add-float/2addr v4, v2

    float-to-int v2, v4

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_8

    .line 5863
    :cond_d
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfStatusView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5865
    :cond_e
    :goto_8
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-boolean v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsCounterVisible:Z

    const/high16 v5, 0x40800000    # 4.0f

    if-eqz v4, :cond_f

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsCounter:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getAnimateToWidth()F

    move-result v4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v4, v7

    goto :goto_9

    :cond_f
    move v4, v0

    :goto_9
    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 5866
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v2, v4

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 5867
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->repostButtonContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_11

    .line 5868
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-boolean v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->repostCounterVisible:Z

    if-eqz v4, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->repostCounter:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getAnimateToWidth()F

    move-result v0

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v0, v4

    :cond_10
    add-float/2addr v2, v0

    float-to-int v0, v2

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 5869
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->repostButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 5870
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->repostButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 5872
    :cond_11
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 5873
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 5874
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfAvatarsView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 5875
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfAvatarsContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 5876
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyAreasView:Lorg/telegram/ui/Stories/StoryMediaAreasView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->onStoryItemUpdated(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Z)V

    return-void

    .line 5878
    :cond_12
    iget-object p1, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    if-eqz p1, :cond_1a

    iget p1, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->views_count:I

    if-lez p1, :cond_1a

    move p1, v7

    move v0, p1

    .line 5881
    :goto_a
    iget-object v2, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->recent_viewers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_15

    .line 5882
    iget v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v9, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    iget-object v9, v9, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->recent_viewers:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v2, v9, v10}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(J)Lorg/telegram/tgnet/TLObject;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 5884
    iget-object v9, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfAvatarsView:Lorg/telegram/ui/Components/AvatarsImageView;

    iget v10, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-virtual {v9, v0, v10, v2}, Lorg/telegram/ui/Components/AvatarsImageView;->setObject(IILorg/telegram/tgnet/TLObject;)V

    add-int/lit8 v0, v0, 0x1

    :cond_13
    if-lt v0, v4, :cond_14

    goto :goto_b

    :cond_14
    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    :cond_15
    :goto_b
    move p1, v0

    :goto_c
    if-ge p1, v4, :cond_16

    .line 5893
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfAvatarsView:Lorg/telegram/ui/Components/AvatarsImageView;

    iget v9, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    const/4 v10, 0x0

    invoke-virtual {v2, p1, v9, v10}, Lorg/telegram/ui/Components/AvatarsImageView;->setObject(IILorg/telegram/tgnet/TLObject;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_c

    .line 5896
    :cond_16
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfAvatarsView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {p1, v7}, Lorg/telegram/ui/Components/AvatarsImageView;->commitTransition(Z)V

    .line 5897
    new-instance p1, Landroid/text/SpannableStringBuilder;

    iget-object v2, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    iget v2, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->views_count:I

    const-string v4, "Views"

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 5898
    iget-object v2, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    iget v2, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->reactions_count:I

    const v4, 0x3e4ccccd    # 0.2f

    const-string v9, "  d "

    if-lez v2, :cond_17

    .line 5899
    invoke-virtual {p1, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 5900
    new-instance v2, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v10, Lorg/telegram/messenger/R$drawable;->mini_views_likes:I

    invoke-direct {v2, v10}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    const v10, -0xd1c8

    .line 5901
    invoke-virtual {v2, v10}, Lorg/telegram/ui/Components/ColoredImageSpan;->setOverrideColor(I)V

    .line 5902
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-virtual {v2, v10}, Lorg/telegram/ui/Components/ColoredImageSpan;->setTopOffset(I)V

    .line 5903
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x2

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    sub-int/2addr v11, v8

    invoke-virtual {p1, v2, v10, v11, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 5904
    iget-object v2, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    iget v2, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->reactions_count:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 5906
    :cond_17
    iget-object v2, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    iget v2, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->forwards_count:I

    if-lez v2, :cond_18

    .line 5907
    invoke-virtual {p1, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 5908
    new-instance v2, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v9, Lorg/telegram/messenger/R$drawable;->mini_repost_story:I

    invoke-direct {v2, v9}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    const v9, -0xd8179f

    .line 5909
    invoke-virtual {v2, v9}, Lorg/telegram/ui/Components/ColoredImageSpan;->setOverrideColor(I)V

    .line 5910
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/ColoredImageSpan;->setTopOffset(I)V

    .line 5911
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    sub-int/2addr v9, v8

    invoke-virtual {p1, v2, v4, v9, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 5912
    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    iget v1, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->forwards_count:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 5914
    :cond_18
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfStatusView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v0, :cond_19

    .line 5916
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfAvatarsView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 5917
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfStatusView:Landroid/widget/TextView;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_d

    .line 5919
    :cond_19
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfAvatarsView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 5920
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfStatusView:Landroid/widget/TextView;

    const/high16 v1, 0x41500000    # 13.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v8

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v1, v0

    int-to-float v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 5922
    :goto_d
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfAvatarsContainer:Landroid/view/View;

    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_10

    .line 5924
    :cond_1a
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfStatusView:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-nez v0, :cond_1b

    sget v0, Lorg/telegram/messenger/R$string;->NobodyViews:I

    :goto_e
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_1b
    sget v0, Lorg/telegram/messenger/R$string;->NobodyViewsArchived:I

    goto :goto_e

    :goto_f
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5925
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfStatusView:Landroid/widget/TextView;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 5926
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfAvatarsView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 5927
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfAvatarsContainer:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 5929
    :goto_10
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 5930
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->bottomActionsLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void

    .line 5933
    :cond_1c
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfStatusView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5934
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfAvatarsContainer:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 5935
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfAvatarsView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateViewOffsets()V
    .locals 15

    .line 7350
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->getProgressToDismiss()F

    move-result v0

    .line 7352
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToHideInterface:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isLongPressed:Z

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    .line 7354
    iget v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->lastOpenedKeyboardHeight:I

    if-eqz v1, :cond_1

    iget-boolean v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->animateKeyboardOpening:Z

    if-eqz v2, :cond_1

    .line 7355
    iget v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->animatingKeyboardHeight:F

    int-to-float v1, v1

    div-float/2addr v2, v1

    invoke-static {v2, v3, v4}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v1

    goto :goto_1

    .line 7357
    :cond_1
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardVisible:Z

    if-eqz v1, :cond_2

    move v1, v4

    goto :goto_1

    :cond_2
    move v1, v3

    .line 7359
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToRecording:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v2

    .line 7360
    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToTextA:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v5

    .line 7361
    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToStickerExpanded:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v6

    .line 7362
    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToRecording:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v8, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isRecording:Z

    if-eqz v8, :cond_3

    move v8, v4

    goto :goto_2

    :cond_3
    move v8, v3

    :goto_2
    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    .line 7363
    iget-boolean v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->messageSent:Z

    if-nez v7, :cond_5

    .line 7364
    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToTextA:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v8, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getFieldText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    move v8, v4

    goto :goto_3

    :cond_4
    move v8, v3

    :goto_3
    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    .line 7366
    :cond_5
    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToStickerExpanded:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v8, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v8, :cond_6

    invoke-virtual {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isStickersExpanded()Z

    move-result v8

    if-eqz v8, :cond_6

    move v8, v4

    goto :goto_4

    :cond_6
    move v8, v3

    :goto_4
    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    .line 7367
    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v7, :cond_7

    .line 7368
    invoke-virtual {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->checkAnimation()V

    .line 7370
    :cond_7
    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v7, :cond_8

    invoke-virtual {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupShowing()Z

    move-result v7

    if-eqz v7, :cond_8

    move v7, v8

    goto :goto_5

    :cond_8
    move v7, v9

    .line 7371
    :goto_5
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->getHideInterfaceAlpha()F

    move-result v10

    .line 7372
    iget-boolean v11, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->BIG_SCREEN:Z

    const/high16 v12, -0x1000000

    if-eqz v11, :cond_9

    .line 7373
    iget-object v11, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->inputBackgroundPaint:Landroid/graphics/Paint;

    const v13, 0x3ee147ae    # 0.44f

    .line 7376
    invoke-static {v12, v13}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v12

    iget v13, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToKeyboard:F

    const v14, -0xe3ddd7

    .line 7374
    invoke-static {v14, v12, v13}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v12

    .line 7373
    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 7380
    iget-object v11, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->inputBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v11}, Landroid/graphics/Paint;->getAlpha()I

    move-result v12

    int-to-float v12, v12

    iget v13, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToDismiss:F

    sub-float v13, v4, v13

    mul-float/2addr v12, v13

    mul-float/2addr v12, v10

    iget v13, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    sub-float v13, v4, v13

    mul-float/2addr v12, v13

    float-to-int v12, v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_6

    .line 7382
    :cond_9
    iget-object v11, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->inputBackgroundPaint:Landroid/graphics/Paint;

    const v13, 0x4309b334    # 137.70001f

    mul-float/2addr v13, v10

    iget v14, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    sub-float v14, v4, v14

    mul-float/2addr v13, v14

    float-to-int v13, v13

    invoke-static {v12, v13}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 7384
    :goto_6
    iget-boolean v11, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->forceUpdateOffsets:Z

    if-nez v11, :cond_a

    iget v11, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToReply:F

    iget-object v12, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget v12, v12, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyProgress:F

    cmpl-float v11, v11, v12

    if-nez v11, :cond_a

    iget-object v11, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToHideInterface:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 7387
    invoke-virtual {v11}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v11

    iget v12, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->prevToHideProgress:F

    cmpl-float v11, v11, v12

    if-nez v11, :cond_a

    iget v11, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->lastAnimatingKeyboardHeight:F

    iget v12, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->animatingKeyboardHeight:F

    cmpl-float v11, v11, v12

    if-nez v11, :cond_a

    iget v11, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToKeyboard:F

    cmpl-float v11, v1, v11

    if-nez v11, :cond_a

    iget v11, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToDismiss:F

    cmpl-float v11, v0, v11

    if-nez v11, :cond_a

    iget-object v11, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToRecording:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 7391
    invoke-virtual {v11}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v11

    cmpl-float v2, v2, v11

    if-nez v2, :cond_a

    if-nez v7, :cond_a

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToStickerExpanded:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 7393
    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v2

    cmpl-float v2, v6, v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToTextA:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 7394
    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v2

    cmpl-float v2, v5, v2

    if-eqz v2, :cond_3d

    .line 7396
    :cond_a
    iput-boolean v9, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->forceUpdateOffsets:Z

    .line 7397
    iget v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->animatingKeyboardHeight:F

    iput v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->lastAnimatingKeyboardHeight:F

    .line 7398
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToHideInterface:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v2

    iget v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->prevToHideProgress:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_b

    .line 7399
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    :cond_b
    cmpl-float v2, v0, v3

    const/4 v5, 0x0

    if-eqz v2, :cond_c

    .line 7403
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    const/4 v7, 0x2

    invoke-virtual {v2, v7, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_7

    .line 7405
    :cond_c
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v9, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 7407
    :goto_7
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToHideInterface:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->prevToHideProgress:F

    .line 7408
    iput v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToDismiss:F

    .line 7409
    iput v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToKeyboard:F

    .line 7410
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyProgress:F

    iput v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToReply:F

    .line 7415
    iget v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->animatingKeyboardHeight:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    sub-int/2addr v5, v7

    int-to-float v5, v5

    sub-float/2addr v2, v5

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-nez v5, :cond_d

    move v5, v3

    goto :goto_8

    :cond_d
    invoke-virtual {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getHeightWithTopView()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v1

    :goto_8
    add-float/2addr v2, v5

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 7416
    iget v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->lastKeyboardHeight:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    iget-object v11, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v11

    sub-int/2addr v7, v11

    sub-int/2addr v5, v7

    int-to-float v5, v5

    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-nez v7, :cond_e

    move v7, v3

    goto :goto_a

    :cond_e
    invoke-virtual {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getHeightWithTopView()I

    move-result v7

    int-to-float v7, v7

    iget-boolean v11, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardVisible:Z

    if-eqz v11, :cond_f

    move v11, v4

    goto :goto_9

    :cond_f
    move v11, v3

    :goto_9
    mul-float/2addr v7, v11

    :goto_a
    add-float/2addr v5, v7

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 7417
    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const v11, 0x3f4ccccd    # 0.8f

    const/high16 v12, 0x40c00000    # 6.0f

    if-eqz v7, :cond_13

    .line 7418
    iget-object v13, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->highlightMessageHintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v13, :cond_11

    .line 7419
    invoke-virtual {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getSuggestButton()Landroid/widget/ImageView;

    move-result-object v7

    if-eqz v7, :cond_10

    .line 7421
    iget-object v13, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->highlightMessageHintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/high16 v14, 0x42940000    # 74.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    invoke-virtual {v7}, Landroid/view/View;->getTranslationX()F

    move-result v7

    sub-float/2addr v14, v7

    neg-float v7, v14

    invoke-virtual {v13, v4, v7}, Lorg/telegram/ui/Stories/recorder/HintView2;->setJointPx(FF)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 7423
    :cond_10
    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->highlightMessageHintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v13

    int-to-float v13, v13

    iget-object v14, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v14}, Landroid/view/View;->getY()F

    move-result v14

    sub-float/2addr v13, v14

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v13, v14

    neg-float v13, v13

    invoke-virtual {v7, v13}, Landroid/view/View;->setTranslationY(F)V

    .line 7425
    :cond_11
    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v7

    .line 7426
    iget-object v13, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v13}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getSenderSelectView()Lorg/telegram/ui/Components/SenderSelectView;

    move-result-object v13

    if-eqz v7, :cond_12

    const v14, 0x3f6147ae    # 0.88f

    .line 7428
    invoke-static {v14, v4, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v14

    .line 7429
    invoke-virtual {v7, v14}, Landroid/view/View;->setScaleX(F)V

    .line 7430
    invoke-virtual {v7, v14}, Landroid/view/View;->setScaleY(F)V

    :cond_12
    if-eqz v13, :cond_13

    .line 7433
    invoke-static {v11, v4, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v7

    .line 7434
    invoke-virtual {v13, v7}, Landroid/view/View;->setScaleX(F)V

    .line 7435
    invoke-virtual {v13, v7}, Landroid/view/View;->setScaleY(F)V

    const/high16 v7, 0x40000000    # 2.0f

    .line 7436
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    neg-int v7, v7

    invoke-static {v7, v9, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v13, v7}, Landroid/view/View;->setTranslationY(F)V

    .line 7439
    :cond_13
    iget-boolean v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->BIG_SCREEN:Z

    const/high16 v13, 0x42680000    # 58.0f

    if-eqz v7, :cond_14

    move v7, v3

    goto :goto_b

    :cond_14
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    sub-float v14, v4, v1

    mul-float/2addr v7, v14

    :goto_b
    add-float/2addr v7, v2

    invoke-static {v3, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 7440
    iget-boolean v14, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->BIG_SCREEN:Z

    if-nez v14, :cond_16

    iget-boolean v14, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardVisible:Z

    if-eqz v14, :cond_15

    goto :goto_c

    :cond_15
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    goto :goto_d

    :cond_16
    :goto_c
    move v13, v9

    :goto_d
    int-to-float v13, v13

    add-float/2addr v5, v13

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 7441
    iget-object v13, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->liveCommentsView:Lorg/telegram/ui/Stories/LiveCommentsView;

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v1

    add-float/2addr v7, v12

    invoke-virtual {v13, v1, v7, v5}, Lorg/telegram/ui/Stories/LiveCommentsView;->setKeyboardOffset(FFF)V

    .line 7442
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    if-eqz v1, :cond_17

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->liveView:Lorg/telegram/ui/Stories/recorder/LivePlayerView;

    if-eqz v1, :cond_17

    .line 7443
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stories/recorder/LivePlayerView;->setKeyboardOffset(F)V

    .line 7446
    :cond_17
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-eqz v1, :cond_1a

    .line 7447
    iget v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToKeyboard:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_19

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    if-eqz v2, :cond_18

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v2

    if-nez v2, :cond_19

    :cond_18
    move v2, v9

    goto :goto_e

    :cond_19
    const/16 v2, 0x8

    :goto_e
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1a
    move v1, v9

    .line 7449
    :goto_f
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2c

    .line 7450
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 7452
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_29

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfView:Landroid/widget/FrameLayout;

    if-eq v2, v5, :cond_29

    sget v5, Lorg/telegram/messenger/R$id;->parent_tag:I

    invoke-virtual {v2, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_29

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    iget-object v5, v5, Lorg/telegram/ui/Stories/StoryCaptionView;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getOverlayView(Landroid/content/Context;)Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    move-result-object v5

    if-ne v2, v5, :cond_1b

    goto/16 :goto_11

    .line 7462
    :cond_1b
    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v5, :cond_1c

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiView()Lorg/telegram/ui/Components/EmojiView;

    move-result-object v5

    if-ne v2, v5, :cond_1c

    .line 7463
    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiView()Lorg/telegram/ui/Components/EmojiView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    iget v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->animatingKeyboardHeight:F

    sub-float/2addr v5, v7

    invoke-virtual {v2, v5}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_12

    .line 7464
    :cond_1c
    instance-of v5, v2, Lorg/telegram/ui/Components/HintView;

    if-eqz v5, :cond_1d

    .line 7465
    check-cast v2, Lorg/telegram/ui/Components/HintView;

    .line 7466
    invoke-virtual {v2}, Lorg/telegram/ui/Components/HintView;->updatePosition()V

    goto/16 :goto_12

    .line 7467
    :cond_1d
    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;

    if-eq v2, v5, :cond_2b

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    if-eq v2, v5, :cond_2b

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->shareButton:Landroid/widget/ImageView;

    if-eq v2, v5, :cond_2b

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->bottomActionsLinearLayout:Landroid/widget/LinearLayout;

    if-eq v2, v5, :cond_2b

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->repostButtonContainer:Landroid/widget/FrameLayout;

    if-eq v2, v5, :cond_2b

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->mediaBanTooltip:Lorg/telegram/ui/Components/HintView;

    if-eq v2, v5, :cond_2b

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->highlightMessageHintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eq v2, v5, :cond_2b

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    if-eq v2, v5, :cond_2b

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-eqz v5, :cond_1e

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v5

    if-eqz v5, :cond_1e

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    if-eq v2, v5, :cond_2b

    .line 7468
    :cond_1e
    iget v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToKeyboard:F

    .line 7469
    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->commentButton:Lorg/telegram/ui/Stories/CommentButton;

    if-eq v2, v7, :cond_1f

    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->starsButton:Lorg/telegram/ui/Stories/PaidReactionButton;

    if-eq v2, v7, :cond_1f

    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteButton:Lorg/telegram/ui/Stories/MuteButton;

    if-eq v2, v7, :cond_1f

    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->starsButtonEffectsView:Lorg/telegram/ui/Stories/PaidReactionButton$PaidReactionButtonEffectsView;

    if-ne v2, v7, :cond_20

    :cond_1f
    move v5, v3

    .line 7474
    :cond_20
    iget v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->enterViewBottomOffset:I

    neg-int v7, v7

    int-to-float v7, v7

    sub-float v12, v4, v5

    mul-float/2addr v7, v12

    const/high16 v13, 0x40e00000    # 7.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v5

    sub-float/2addr v7, v13

    iget v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->animatingKeyboardHeight:F

    sub-float/2addr v7, v5

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v12

    sub-float/2addr v7, v5

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    iget-object v13, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget v13, v13, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyProgress:F

    mul-float/2addr v12, v13

    sub-float/2addr v7, v12

    .line 7475
    iget-object v12, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->commentButton:Lorg/telegram/ui/Stories/CommentButton;

    if-eq v2, v12, :cond_21

    iget-object v12, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->starsButton:Lorg/telegram/ui/Stories/PaidReactionButton;

    if-eq v2, v12, :cond_21

    iget-object v12, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteButton:Lorg/telegram/ui/Stories/MuteButton;

    if-eq v2, v12, :cond_21

    iget-object v12, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->starsButtonEffectsView:Lorg/telegram/ui/Stories/PaidReactionButton$PaidReactionButtonEffectsView;

    if-ne v2, v12, :cond_22

    .line 7476
    :cond_21
    iget v12, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->animatingKeyboardHeight:F

    add-float/2addr v7, v12

    .line 7478
    :cond_22
    iget-boolean v12, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->BIG_SCREEN:Z

    if-eqz v12, :cond_23

    .line 7479
    iget v12, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToDismiss:F

    sub-float v12, v4, v12

    mul-float/2addr v12, v10

    goto :goto_10

    :cond_23
    mul-float v12, v10, v4

    .line 7483
    :goto_10
    iget-object v13, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->replyDisabledTextView:Landroid/widget/TextView;

    if-ne v2, v13, :cond_24

    .line 7484
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget v7, v7, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyProgress:F

    mul-float/2addr v7, v5

    .line 7486
    :cond_24
    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-ne v2, v5, :cond_25

    .line 7487
    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget-object v12, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v12}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getAnimatedTop()I

    move-result v12

    sub-int/2addr v5, v12

    int-to-float v5, v5

    sub-float/2addr v7, v5

    .line 7488
    iget v12, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToKeyboard:F

    .line 7489
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 7491
    :cond_25
    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-ne v2, v5, :cond_27

    .line 7492
    iget v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToKeyboard:F

    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToRecording:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v7

    sub-float v7, v4, v7

    mul-float/2addr v5, v7

    sub-float v7, v4, v6

    mul-float/2addr v5, v7

    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToTextA:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v7

    sub-float v7, v4, v7

    mul-float/2addr v5, v7

    mul-float/2addr v12, v5

    mul-float/2addr v12, v4

    .line 7494
    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v7

    cmpl-float v7, v7, v3

    if-eqz v7, :cond_26

    cmpl-float v7, v12, v3

    if-nez v7, :cond_26

    .line 7495
    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->reset()V

    .line 7497
    :cond_26
    invoke-virtual {v2, v12}, Landroid/view/View;->setAlpha(F)V

    const v7, 0x3e4ccccd    # 0.2f

    mul-float/2addr v5, v7

    add-float/2addr v5, v11

    .line 7499
    invoke-virtual {v2, v5}, Landroid/view/View;->setScaleX(F)V

    .line 7500
    invoke-virtual {v2, v5}, Landroid/view/View;->setScaleY(F)V

    goto :goto_12

    .line 7502
    :cond_27
    invoke-virtual {v2, v7}, Landroid/view/View;->setTranslationY(F)V

    .line 7503
    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v5, :cond_28

    iget-object v5, v5, Lorg/telegram/ui/Components/ChatActivityEnterView;->controlsView:Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;

    if-eq v2, v5, :cond_2b

    .line 7504
    :cond_28
    invoke-virtual {v2, v12}, Landroid/view/View;->setAlpha(F)V

    goto :goto_12

    .line 7453
    :cond_29
    :goto_11
    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfView:Landroid/widget/FrameLayout;

    if-ne v2, v5, :cond_2b

    .line 7454
    iget-boolean v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->BIG_SCREEN:Z

    if-eqz v5, :cond_2a

    .line 7455
    iget v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToDismiss:F

    sub-float v5, v4, v5

    mul-float/2addr v5, v10

    iget v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    sub-float v7, v4, v7

    mul-float/2addr v5, v7

    invoke-virtual {v2, v5}, Landroid/view/View;->setAlpha(F)V

    goto :goto_12

    .line 7457
    :cond_2a
    iget v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    sub-float v5, v4, v5

    mul-float/2addr v5, v10

    invoke-virtual {v2, v5}, Landroid/view/View;->setAlpha(F)V

    :cond_2b
    :goto_12
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_f

    .line 7509
    :cond_2c
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->shareButton:Landroid/widget/ImageView;

    sub-float v0, v4, v0

    mul-float/2addr v0, v10

    iget v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    sub-float v2, v4, v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 7510
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    iget v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    sub-float v2, v4, v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 7511
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->repostButtonContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_2d

    .line 7512
    iget v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    sub-float v2, v4, v2

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_2d
    move v0, v9

    .line 7515
    :goto_13
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_35

    .line 7516
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_34

    .line 7517
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->liveCommentsShadowView:Landroid/view/View;

    if-ne v1, v2, :cond_2e

    goto :goto_17

    .line 7520
    :cond_2e
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    if-eq v1, v2, :cond_30

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->optionsIconView:Landroid/widget/ImageView;

    if-eq v1, v2, :cond_30

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->pipIconView:Landroid/widget/ImageView;

    if-eq v1, v2, :cond_30

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconContainer:Landroid/widget/FrameLayout;

    if-eq v1, v2, :cond_30

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfView:Landroid/widget/FrameLayout;

    if-eq v1, v2, :cond_30

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    if-eq v1, v2, :cond_30

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyButton:Lorg/telegram/ui/Stories/StoryPrivacyButton;

    if-ne v1, v2, :cond_2f

    goto :goto_14

    .line 7532
    :cond_2f
    invoke-virtual {v1, v10}, Landroid/view/View;->setAlpha(F)V

    goto :goto_17

    .line 7522
    :cond_30
    :goto_14
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconContainer:Landroid/widget/FrameLayout;

    if-ne v1, v2, :cond_31

    .line 7523
    iget v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconViewAlpha:F

    goto :goto_15

    :cond_31
    move v2, v4

    .line 7525
    :goto_15
    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    if-ne v1, v5, :cond_33

    .line 7526
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->hideCaptionWithInterface()Z

    move-result v5

    if-eqz v5, :cond_32

    move v5, v10

    goto :goto_16

    :cond_32
    move v5, v4

    :goto_16
    mul-float/2addr v2, v5

    .line 7527
    iget v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    sub-float v5, v4, v5

    mul-float/2addr v2, v5

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_17

    :cond_33
    mul-float/2addr v2, v10

    .line 7529
    iget v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    sub-float v5, v4, v5

    mul-float/2addr v2, v5

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_34
    :goto_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 7535
    :cond_35
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_3d

    const/high16 v0, 0x42200000    # 40.0f

    .line 7537
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    .line 7538
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v2

    const/high16 v4, 0x42380000    # 46.0f

    if-nez v2, :cond_38

    .line 7539
    iget-boolean v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShare:Z

    if-eqz v2, :cond_36

    .line 7540
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 7542
    :cond_36
    iget-boolean v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowRepost:Z

    if-eqz v2, :cond_37

    iget-boolean v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isChannel:Z

    if-eqz v2, :cond_37

    .line 7543
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 7545
    :cond_37
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_39

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_39

    .line 7546
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v1, v0

    .line 7547
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_18
    int-to-float v0, v0

    add-float/2addr v1, v0

    goto :goto_19

    .line 7550
    :cond_38
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v3, v0

    .line 7551
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v1, v0

    .line 7552
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteButton:Lorg/telegram/ui/Stories/MuteButton;

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_39

    .line 7553
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_18

    .line 7557
    :cond_39
    :goto_19
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/high16 v2, 0x41200000    # 10.0f

    .line 7558
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    .line 7559
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v1

    add-float/2addr v2, v3

    neg-float v1, v2

    iget v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToKeyboard:F

    iget-boolean v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShare:Z

    if-nez v3, :cond_3a

    iget-boolean v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isGroup:Z

    if-eqz v3, :cond_3b

    :cond_3a
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    if-eqz v3, :cond_3c

    invoke-static {v3}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v3

    if-nez v3, :cond_3b

    goto :goto_1a

    :cond_3b
    move v8, v9

    .line 7557
    :cond_3c
    :goto_1a
    invoke-virtual {v0, v4, v1, v2, v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setHorizontalPadding(FFFZ)V

    .line 7563
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiView()Lorg/telegram/ui/Components/EmojiView;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 7564
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiView()Lorg/telegram/ui/Components/EmojiView;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToKeyboard:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_3d
    return-void
.end method


# virtual methods
.method public animateOut(Z)V
    .locals 4

    .line 8268
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 8269
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 8271
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    if-eqz p1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outAnimator:Landroid/animation/ValueAnimator;

    .line 8272
    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda52;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda52;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 8308
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$41;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$41;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 8347
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x1a4

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 8348
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 8349
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public cancelTextSelection()V
    .locals 1

    .line 6510
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryCaptionView;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6511
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryCaptionView;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->clear()V

    :cond_0
    return-void
.end method

.method public cancelTouch()V
    .locals 1

    .line 6426
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryCaptionView;->cancelTouch()V

    return-void
.end method

.method public checkPinchToZoom(Landroid/view/MotionEvent;)V
    .locals 7

    .line 6399
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->pinchToZoomHelper:Lorg/telegram/ui/PinchToZoomHelper;

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/PinchToZoomHelper;->checkPinchToZoom(Landroid/view/MotionEvent;Landroid/view/View;Lorg/telegram/messenger/ImageReceiver;Landroid/view/View;Landroid/view/View;Lorg/telegram/messenger/MessageObject;)Z

    return-void
.end method

.method public checkReactionEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 6516
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    move-object v4, p0

    move v3, v2

    :goto_0
    if-eqz v4, :cond_0

    .line 6520
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Landroid/view/View;

    if-eqz v5, :cond_0

    .line 6521
    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v5

    add-float/2addr v2, v5

    .line 6522
    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v5

    add-float/2addr v3, v5

    .line 6523
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    goto :goto_0

    .line 6525
    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_1

    neg-float v0, v2

    neg-float v1, v3

    .line 6526
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 6527
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return v5

    .line 6530
    :cond_1
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    float-to-int v2, v2

    float-to-int v3, v3

    .line 6532
    invoke-virtual {v4, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 6533
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_2

    .line 6534
    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->showLikesReaction(Z)V

    return v5

    .line 6537
    :cond_2
    iget v1, v4, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, v4, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 6538
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return v5

    :cond_3
    return v1
.end method

.method checkReactionsLayout()V
    .locals 10

    .line 7809
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-nez v0, :cond_1

    .line 7810
    new-instance v1, Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    new-instance v6, Lorg/telegram/ui/Stories/PeerStoriesView$37;

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v6, p0, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$37;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v2, 0x1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/ReactionsContainerLayout;-><init>(ILorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    .line 7816
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isGroup:Z

    if-eqz v0, :cond_0

    sget v0, Lorg/telegram/messenger/R$string;->StoryGroupReactionsHint:I

    goto :goto_0

    :cond_0
    sget v0, Lorg/telegram/messenger/R$string;->StoryReactionsHint:I

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 7817
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->skipEnterAnimation:Z

    .line 7818
    iget v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerIndex:I

    const/4 v8, 0x0

    const/high16 v9, 0x42800000    # 64.0f

    const/4 v3, -0x2

    const/high16 v4, 0x42900000    # 72.0f

    const/16 v5, 0x31

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 7819
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    new-instance v2, Lorg/telegram/ui/Stories/PeerStoriesView$38;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$38;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setDelegate(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;)V

    .line 7928
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setMessage(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ChatFull;Z)V

    .line 7930
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 7931
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isGroup:Z

    if-eqz v1, :cond_2

    sget v1, Lorg/telegram/messenger/R$string;->StoryGroupReactionsHint:I

    goto :goto_1

    :cond_2
    sget v1, Lorg/telegram/messenger/R$string;->StoryReactionsHint:I

    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method checkReactionsLayoutForLike()V
    .locals 10

    .line 7935
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-nez v0, :cond_0

    .line 7936
    new-instance v1, Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    new-instance v6, Lorg/telegram/ui/Stories/PeerStoriesView$39;

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v6, p0, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$39;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v2, 0x2

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/ReactionsContainerLayout;-><init>(ILorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/high16 v0, 0x41b00000    # 22.0f

    .line 7942
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 7944
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/high16 v8, 0x41400000    # 12.0f

    const/high16 v9, 0x42800000    # 64.0f

    const/4 v3, -0x2

    const/high16 v4, 0x42940000    # 74.0f

    const/16 v5, 0x35

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 7945
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7946
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$40;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$40;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setDelegate(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;)V

    .line 8068
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setMessage(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ChatFull;Z)V

    goto :goto_0

    .line 8070
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 8071
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->reset()V

    .line 8073
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method public checkRecordLocked(Z)Z
    .locals 3

    .line 8240
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isRecordLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8241
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 8242
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8243
    sget v1, Lorg/telegram/messenger/R$string;->DiscardVideoMessageTitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 8244
    sget v1, Lorg/telegram/messenger/R$string;->DiscardVideoMessageDescription:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_0

    .line 8246
    :cond_0
    sget v1, Lorg/telegram/messenger/R$string;->DiscardVoiceMessageTitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 8247
    sget v1, Lorg/telegram/messenger/R$string;->DiscardVoiceMessageDescription:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 8249
    :goto_0
    sget v1, Lorg/telegram/messenger/R$string;->DiscardVoiceMessageAction:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Z)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 8258
    sget p1, Lorg/telegram/messenger/R$string;->Continue:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 8259
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->showDialog(Landroid/app/Dialog;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public checkTextSelectionEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 6496
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryCaptionView;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6497
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v0

    .line 6498
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v1, v2

    neg-float v2, v0

    neg-float v3, v1

    .line 6499
    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 6500
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryCaptionView;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getOverlayView(Landroid/content/Context;)Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    .line 6503
    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public closeKeyboardOrEmoji()Z
    .locals 6

    .line 6092
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionShowing:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 6093
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6094
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->realKeyboardHeight:I

    if-lez v0, :cond_0

    .line 6095
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    goto :goto_0

    .line 6097
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->dismiss()V

    :goto_0
    return v2

    .line 6101
    :cond_1
    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->showLikesReaction(Z)V

    return v2

    .line 6104
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyAreasView:Lorg/telegram/ui/Stories/StoryMediaAreasView;

    if-eqz v0, :cond_3

    .line 6105
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->closeHint()V

    .line 6107
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryCaptionView;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6108
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryCaptionView;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->clear(Z)V

    return v2

    .line 6111
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v0, :cond_5

    .line 6112
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    .line 6114
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->soundTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v0, :cond_6

    .line 6115
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    .line 6118
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->mediaBanTooltip:Lorg/telegram/ui/Components/HintView;

    if-eqz v0, :cond_7

    .line 6119
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/HintView;->hide(Z)V

    .line 6121
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyEditCaptionView:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_8

    return v2

    .line 6123
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->popupMenu:Lorg/telegram/ui/Components/CustomPopupMenu;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CustomPopupMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 6124
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->popupMenu:Lorg/telegram/ui/Components/CustomPopupMenu;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CustomPopupMenu;->dismiss()V

    return v2

    .line 6126
    :cond_9
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->checkRecordLocked(Z)Z

    move-result v0

    if-eqz v0, :cond_a

    return v2

    .line 6128
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 6129
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->dismiss()V

    return v2

    .line 6131
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 6132
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->realKeyboardHeight:I

    if-lez v0, :cond_c

    .line 6133
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiView()Lorg/telegram/ui/Components/EmojiView;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    goto :goto_1

    .line 6135
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->hidePopup(ZZ)Z

    :goto_1
    return v2

    .line 6138
    :cond_d
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getKeyboardHeight()I

    move-result v0

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    if-lt v0, v3, :cond_f

    .line 6139
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_e

    .line 6140
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-wide v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v5, v5, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v1, v3, v4, v5, v0}, Lorg/telegram/ui/Stories/StoryViewer;->saveDraft(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;Ljava/lang/CharSequence;)V

    .line 6142
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    return v2

    .line 6144
    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryCaptionView;->getProgressToBlackout()F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_10

    .line 6145
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryCaptionView;->collapse()V

    .line 6146
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->inBlackoutMode:Z

    .line 6147
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return v2

    :cond_10
    return v1
.end method

.method public createBlurredBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 13

    .line 6049
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->drawPlayingBitmap(IILandroid/graphics/Canvas;)V

    .line 6050
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->getDominantColor(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 6051
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v0

    const v1, 0x3e19999a    # 0.15f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, -0x1

    const/16 v1, 0x66

    .line 6053
    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 6056
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v6

    const/4 v2, 0x3

    const/4 v3, 0x1

    move-object v1, p2

    invoke-static/range {v1 .. v6}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    .line 6057
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v12

    const/4 v8, 0x3

    const/4 v9, 0x1

    move-object v7, v1

    invoke-static/range {v7 .. v12}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 6

    .line 4738
    sget p2, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    if-eq p1, p2, :cond_c

    sget p2, Lorg/telegram/messenger/NotificationCenter;->storiesListUpdated:I

    const/4 v3, 0x0

    if-ne p1, p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object p2, p2, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    aget-object v4, p3, v3

    if-ne p2, v4, :cond_0

    goto/16 :goto_0

    .line 4767
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->storyQualityUpdate:I

    if-ne p1, p2, :cond_1

    .line 4768
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePosition()V

    return-void

    .line 4769
    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    if-ne p1, p2, :cond_2

    .line 4770
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void

    .line 4771
    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->stealthModeChanged:I

    if-ne p1, p2, :cond_3

    .line 4772
    invoke-direct {p0, v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->checkStealthMode(Z)V

    return-void

    .line 4773
    :cond_3
    sget p2, Lorg/telegram/messenger/NotificationCenter;->storiesLimitUpdate:I

    if-ne p1, p2, :cond_5

    .line 4774
    iget p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesController;->checkStoryLimit()Lorg/telegram/ui/Stories/StoriesController$StoryLimit;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 4775
    iget p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/StoriesController$StoryLimit;->active(I)Z

    move-result p2

    if-eqz p2, :cond_15

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    if-nez p2, :cond_4

    goto/16 :goto_3

    .line 4778
    :cond_4
    new-instance v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->fragmentForLimit()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->findActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesController$StoryLimit;->getLimitReachedType()I

    move-result v3

    iget v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 4779
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {p1, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->showDialog(Landroid/app/Dialog;)V

    return-void

    .line 4780
    :cond_5
    sget p2, Lorg/telegram/messenger/NotificationCenter;->userIsPremiumBlockedUpadted:I

    if-ne p1, p2, :cond_8

    .line 4781
    iget p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/MessagesController;->isUserContactBlocked(J)Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;

    move-result-object p1

    .line 4782
    iget-wide p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    cmp-long p2, p2, v0

    if-ltz p2, :cond_6

    iget p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p2

    if-nez p2, :cond_6

    invoke-static {p1}, Lorg/telegram/messenger/DialogObject;->isPremiumBlocked(Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;)Z

    move-result p2

    if-eqz p2, :cond_6

    move v3, v2

    .line 4783
    :cond_6
    iget-boolean p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isPremiumBlocked:Z

    if-ne p2, v3, :cond_7

    iget-wide p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->starsPriceBlocked:J

    invoke-static {p1}, Lorg/telegram/messenger/DialogObject;->getMessagesStarsPrice(Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;)J

    move-result-wide v0

    cmp-long p2, p2, v0

    if-eqz p2, :cond_15

    .line 4784
    :cond_7
    iput-boolean v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isPremiumBlocked:Z

    .line 4785
    invoke-static {p1}, Lorg/telegram/messenger/DialogObject;->getMessagesStarsPrice(Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->starsPriceBlocked:J

    .line 4786
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePosition()V

    .line 4787
    invoke-direct {p0, v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->checkStealthMode(Z)V

    return-void

    .line 4789
    :cond_8
    sget p2, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    if-ne p1, p2, :cond_9

    .line 4790
    aget-object p1, p3, v3

    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz p2, :cond_15

    .line 4791
    check-cast p1, Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 4792
    iget-wide p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    neg-long v0, v0

    cmp-long p1, p2, v0

    if-nez p1, :cond_15

    .line 4793
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePosition()V

    return-void

    .line 4796
    :cond_9
    sget p2, Lorg/telegram/messenger/NotificationCenter;->liveStoryUpdated:I

    if-ne p1, p2, :cond_b

    .line 4797
    aget-object p1, p3, v3

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 4798
    iget-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    if-eqz p3, :cond_15

    iget-object p3, p3, Lorg/telegram/ui/Stories/StoryViewer;->livePlayer:Lorg/telegram/ui/Stories/LivePlayer;

    if-eqz p3, :cond_15

    invoke-virtual {p3}, Lorg/telegram/ui/Stories/LivePlayer;->getCallId()J

    move-result-wide v0

    cmp-long p1, v0, p1

    if-nez p1, :cond_15

    .line 4799
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePosition()V

    .line 4801
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz p1, :cond_a

    .line 4802
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->checkSendButton(Z)V

    .line 4803
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateSendAsButton(Z)V

    .line 4804
    invoke-direct {p0, v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->checkStealthMode(Z)V

    .line 4807
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->liveCommentsView:Lorg/telegram/ui/Stories/LiveCommentsView;

    if-eqz p1, :cond_15

    .line 4808
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/LiveCommentsView;->updatedMinStars()V

    return-void

    .line 4811
    :cond_b
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didLoadSendAsPeers:I

    if-ne p1, p2, :cond_15

    const/4 p1, 0x2

    .line 4812
    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 4814
    invoke-direct {p0, v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->loadSendAsPeers(Z)V

    return-void

    .line 4739
    :cond_c
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    if-eqz p1, :cond_d

    invoke-interface {p1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->isClosed()Z

    move-result p1

    if-eqz p1, :cond_d

    goto/16 :goto_3

    .line 4742
    :cond_d
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz p1, :cond_11

    .line 4743
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updateStoryItems()V

    .line 4744
    iget p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->count:I

    if-nez p1, :cond_e

    .line 4745
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->deletedPeer:Z

    if-nez p1, :cond_15

    .line 4746
    iput-boolean v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->deletedPeer:Z

    .line 4747
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {p1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->switchToNextAndRemoveCurrentPeer()V

    return-void

    .line 4751
    :cond_e
    iget p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    iget-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/2addr p2, p3

    if-lt p1, p2, :cond_f

    .line 4752
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/2addr p1, p2

    sub-int/2addr p1, v2

    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    .line 4754
    :cond_f
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePosition()V

    .line 4755
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-nez p1, :cond_10

    iget-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isChannel:Z

    if-eqz p1, :cond_11

    .line 4756
    :cond_10
    invoke-direct {p0, v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->updateUserViews(Z)V

    .line 4759
    :cond_11
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryViewer;->overrideUserStories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    if-eqz p1, :cond_12

    .line 4760
    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {p2, p1, v2}, Lorg/telegram/ui/Stories/StoriesController;->loadSkippedStories(Lorg/telegram/tgnet/tl/TL_stories$PeerStories;Z)V

    goto :goto_1

    .line 4761
    :cond_12
    iget-wide p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    cmp-long p3, p1, v0

    if-eqz p3, :cond_13

    .line 4762
    iget-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {p3, p1, p2}, Lorg/telegram/ui/Stories/StoriesController;->loadSkippedStories(J)V

    .line 4764
    :cond_13
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->editStoryItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz p1, :cond_15

    .line 4765
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-virtual {p2, v0, v1}, Lorg/telegram/ui/Stories/StoriesController;->hasUploadingStories(J)Z

    move-result p2

    if-eqz p2, :cond_14

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisVideo(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result p2

    if-eqz p2, :cond_14

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->allowPreparingHevcPlayers()Z

    move-result p2

    if-nez p2, :cond_14

    const/high16 p2, 0x3f000000    # 0.5f

    goto :goto_2

    :cond_14
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_15
    :goto_3
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 4611
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updateViewOffsets()V

    .line 4612
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isChannel:Z

    const/high16 v1, 0x42200000    # 40.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsCounter:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eqz v0, :cond_0

    .line 4613
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v0, v2, v2, v3, v4}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(IIII)V

    .line 4615
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isChannel:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->repostCounter:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eqz v0, :cond_1

    .line 4616
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v2, v2, v3, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(IIII)V

    .line 4618
    :cond_1
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 4619
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->movingReaction:Z

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_3

    .line 4620
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->bottomActionsLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    add-float/2addr v0, v3

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    add-float/2addr v0, v3

    .line 4621
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->bottomActionsLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    add-float/2addr v3, v4

    const/high16 v4, 0x41c00000    # 24.0f

    .line 4622
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    .line 4623
    iget v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->movingReactionFromX:I

    int-to-float v5, v5

    int-to-float v6, v4

    div-float/2addr v6, v1

    sub-float/2addr v0, v6

    sget-object v7, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v8, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->movingReactionProgress:F

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v7

    invoke-static {v5, v0, v7}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    .line 4624
    iget v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->movingReactionFromY:I

    int-to-float v5, v5

    sub-float/2addr v3, v6

    iget v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->movingReactionProgress:F

    invoke-static {v5, v3, v6}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    .line 4625
    iget v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->movingReactionFromSize:I

    iget v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->movingReactionProgress:F

    invoke-static {v5, v4, v6}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v4

    .line 4626
    iget-boolean v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->drawAnimatedEmojiAsMovingReaction:Z

    if-eqz v5, :cond_2

    .line 4627
    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionMoveDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v5, :cond_3

    float-to-int v6, v0

    float-to-int v7, v3

    int-to-float v4, v4

    add-float/2addr v0, v4

    float-to-int v0, v0

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 4628
    invoke-virtual {v5, v6, v7, v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4629
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionMoveDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 4632
    :cond_2
    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionMoveImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    int-to-float v4, v4

    invoke-virtual {v5, v0, v3, v4, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 4633
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionMoveImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 4636
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->drawReactionEffect:Z

    if-eqz v0, :cond_6

    .line 4637
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->bottomActionsLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    add-float/2addr v0, v3

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    add-float/2addr v0, v3

    .line 4638
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->bottomActionsLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    add-float/2addr v3, v4

    const/high16 v4, 0x42f00000    # 120.0f

    .line 4639
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    .line 4640
    iget-boolean v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->drawAnimatedEmojiAsMovingReaction:Z

    if-nez v5, :cond_4

    .line 4641
    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionEffectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    int-to-float v4, v4

    div-float v1, v4, v1

    sub-float/2addr v0, v1

    sub-float/2addr v3, v1

    invoke-virtual {v5, v0, v3, v4, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 4642
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionEffectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 4643
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionEffectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionEffectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->isLastFrame()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4644
    iput-boolean v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->drawReactionEffect:Z

    goto :goto_1

    .line 4647
    :cond_4
    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->emojiReactionEffect:Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    if-eqz v5, :cond_5

    int-to-float v4, v4

    div-float/2addr v4, v1

    sub-float v1, v0, v4

    float-to-int v1, v1

    sub-float v6, v3, v4

    float-to-int v6, v6

    add-float/2addr v0, v4

    float-to-int v0, v0

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 4649
    invoke-virtual {v5, v1, v6, v0, v3}, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->setBounds(IIII)V

    .line 4650
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->emojiReactionEffect:Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->draw(Landroid/graphics/Canvas;)V

    .line 4651
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->emojiReactionEffect:Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->isDone()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4652
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->emojiReactionEffect:Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 4653
    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->emojiReactionEffect:Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    .line 4654
    iput-boolean v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->drawReactionEffect:Z

    goto :goto_1

    .line 4657
    :cond_5
    iput-boolean v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->drawReactionEffect:Z

    .line 4661
    :cond_6
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_7

    .line 4662
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->drawRecordedPannel(Landroid/graphics/Canvas;)V

    :cond_7
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 10

    .line 7581
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 7582
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 7583
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    .line 7584
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 7585
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 7586
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    .line 7588
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/high16 v2, 0x3f800000    # 1.0f

    if-ne p2, v0, :cond_9

    .line 7589
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToKeyboard:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7590
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->-$$Nest$fgetdimPaint(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v3, 0x427f0000    # 63.75f

    iget v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToKeyboard:F

    mul-float/2addr v4, v3

    float-to-int v3, v4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 7591
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v6, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v7, v0

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->-$$Nest$fgetdimPaint(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/Paint;

    move-result-object v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    move-object v3, p1

    .line 7594
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->-$$Nest$fgetrect1(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/RectF;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    .line 7595
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    .line 7596
    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getAnimatedTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    const v5, 0x3faa3d71    # 1.33f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    .line 7597
    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    .line 7598
    invoke-virtual {v6}, Landroid/view/View;->getY()F

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    .line 7594
    invoke-virtual {p1, v0, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 p1, 0x42200000    # 40.0f

    .line 7601
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    .line 7602
    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v4}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v4

    const/high16 v5, 0x42380000    # 46.0f

    if-nez v4, :cond_5

    .line 7603
    iget-boolean v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShare:Z

    if-eqz v4, :cond_2

    .line 7604
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v0, v4

    .line 7606
    :cond_2
    iget-boolean v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowRepost:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isChannel:Z

    if-eqz v4, :cond_3

    .line 7607
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v0, v4

    .line 7609
    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_4

    .line 7610
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v0, p1

    .line 7611
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float p1, p1

    add-float/2addr v0, p1

    :cond_4
    move p1, v1

    goto :goto_1

    .line 7614
    :cond_5
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    .line 7615
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    .line 7616
    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteButton:Lorg/telegram/ui/Stories/MuteButton;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_6

    .line 7617
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v0, v4

    .line 7620
    :cond_6
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v4}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->-$$Nest$fgetrect2(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/RectF;

    move-result-object v4

    const/high16 v5, 0x41200000    # 10.0f

    .line 7621
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, p1

    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    .line 7622
    invoke-virtual {v7}, Landroid/view/View;->getY()F

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    const/high16 v8, 0x40a00000    # 5.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v7, v9

    const/high16 v9, 0x42180000    # 38.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v7, v9

    .line 7623
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v9, v5

    int-to-float v5, v9

    sub-float/2addr v5, v0

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    .line 7624
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    iget-object v9, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v0, v9

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v0, v8

    .line 7620
    invoke-virtual {v4, v6, v7, v5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 7626
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToKeyboard:F

    sub-float v4, v2, v4

    mul-float/2addr p1, v4

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 7628
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    if-le p1, v4, :cond_7

    .line 7629
    iget p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToKeyboard:F

    sub-float p1, v2, p1

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr p1, v4

    add-float/2addr v1, p1

    :cond_7
    const/high16 p1, 0x40000000    # 2.0f

    .line 7631
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToKeyboard:F

    sub-float v5, v2, v5

    mul-float/2addr v4, v5

    add-float/2addr v1, v4

    .line 7632
    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 7633
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p1

    .line 7634
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->-$$Nest$fgetrect2(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/RectF;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->-$$Nest$fgetrect1(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/RectF;

    move-result-object v1

    iget v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToKeyboard:F

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v5}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->-$$Nest$fgetfinalRect(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/RectF;

    move-result-object v5

    invoke-static {p1, v1, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(Landroid/graphics/RectF;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V

    .line 7635
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->inputFieldBackground:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    if-eqz p1, :cond_8

    .line 7636
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->-$$Nest$fgetfinalRect(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v4}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->-$$Nest$fgetfinalRect(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v5}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->-$$Nest$fgetfinalRect(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/RectF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v6}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->-$$Nest$fgetfinalRect(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    float-to-int v6, v6

    invoke-virtual {p1, v1, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 7637
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->inputFieldBackground:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setRadius(F)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    .line 7638
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->inputFieldBackground:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToDismiss:F

    sub-float v0, v2, v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->getHideInterfaceAlpha()F

    move-result v1

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    sub-float/2addr v2, v1

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setAlpha(I)V

    .line 7639
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->inputFieldBackground:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 7641
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->-$$Nest$fgetfinalRect(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/RectF;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->inputBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p1, v0, v0, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 7643
    :goto_2
    iget p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToKeyboard:F

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_e

    .line 7644
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 7645
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->-$$Nest$fgetfinalRect(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 7646
    invoke-super {p0, v3, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    .line 7647
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    return p1

    :cond_9
    move-object v3, p1

    if-eqz v0, :cond_b

    .line 7650
    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupView(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_b

    const/high16 p1, 0x41f00000    # 30.0f

    .line 7651
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    .line 7652
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->-$$Nest$fgetpopupRect(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/RectF;

    move-result-object v0

    .line 7654
    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v4, v2

    .line 7655
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 7656
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    .line 7652
    invoke-virtual {v0, v1, v4, v2, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 7658
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 7659
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->clipPath:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->-$$Nest$fgetpopupRect(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/RectF;

    move-result-object v1

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, p1, p1, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 7660
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 7661
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v3, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 7663
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->emojiKeyboardBackground:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    if-eqz v0, :cond_a

    .line 7664
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->-$$Nest$fgetpopupRect(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->-$$Nest$fgetpopupRect(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v4}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->-$$Nest$fgetpopupRect(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v5}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->-$$Nest$fgetpopupRect(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/RectF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 7665
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->emojiKeyboardBackground:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    invoke-virtual {v0, p1, p1, p1, p1}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setRadius(FFFF)V

    .line 7666
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->emojiKeyboardBackground:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setAlpha(I)V

    .line 7667
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->emojiKeyboardBackground:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    .line 7669
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->-$$Nest$fgetpopupRect(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->inputBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0, p1, p1, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 7671
    :goto_3
    invoke-super {p0, v3, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    .line 7672
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    return p1

    .line 7674
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/high16 v0, 0x41900000    # 18.0f

    if-ne p2, p1, :cond_c

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v1, :cond_c

    .line 7675
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getAnimatedTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    add-float/2addr p1, v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_4

    .line 7676
    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-ne p2, p1, :cond_d

    .line 7677
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr p1, v1

    neg-int p1, p1

    int-to-float p1, p1

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    add-float/2addr p1, v1

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->bottomActionsLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    add-float/2addr p1, v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_4

    .line 7682
    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    if-ne p2, p1, :cond_e

    .line 7683
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1f

    if-lt p1, v0, :cond_e

    invoke-virtual {v3}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->blurredBackgroundSourceRenderNodeWithSaturation:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    if-eqz p1, :cond_e

    .line 7684
    invoke-virtual {p1}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->inRecording()Z

    move-result p1

    if-nez p1, :cond_e

    .line 7685
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->blurredBackgroundSourceRenderNodeWithSaturation:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->beginRecording(II)Landroid/graphics/RecordingCanvas;

    move-result-object p1

    const/4 v0, -0x1

    const v1, 0x3e4ccccd    # 0.2f

    const/high16 v2, -0x1000000

    .line 7686
    invoke-static {v2, v0, v1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 7687
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7688
    invoke-virtual {p2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 7689
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->blurredBackgroundSourceRenderNodeWithSaturation:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->endRecording()V

    .line 7693
    :cond_e
    :goto_4
    invoke-super {p0, v3, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public drawPlayingBitmap(IILandroid/graphics/Canvas;)V
    .locals 5

    .line 6021
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->renderView:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->surfaceView:Landroid/view/SurfaceView;

    if-eqz v4, :cond_1

    .line 6022
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 6023
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p2, v0, :cond_0

    .line 6024
    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    iget-object p2, p2, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->surfaceView:Landroid/view/SurfaceView;

    invoke-static {p2, p1}, Lorg/telegram/messenger/AndroidUtilities;->getBitmapFromSurface(Landroid/view/SurfaceView;Landroid/graphics/Bitmap;)V

    :cond_0
    if-eqz p1, :cond_2

    .line 6027
    invoke-virtual {p3, p1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void

    :cond_1
    if-eqz v1, :cond_3

    .line 6029
    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->textureView:Landroid/view/TextureView;

    if-eqz v0, :cond_3

    .line 6030
    invoke-virtual {v0, p1, p2}, Landroid/view/TextureView;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6032
    invoke-virtual {p3, p1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_2
    return-void

    .line 6035
    :cond_3
    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    int-to-float p1, p1

    .line 6036
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    int-to-float p2, p2

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    invoke-virtual {p3, p1, p2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 6037
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1, p3}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 6038
    invoke-virtual {p3}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public findClickableView(Landroid/view/ViewGroup;FFZ)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 6157
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->shown()Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 6160
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->soundTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->shown()Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    move v1, v0

    .line 6164
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_12

    .line 6165
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 6166
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_3

    goto/16 :goto_1

    .line 6169
    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    if-ne v3, v4, :cond_4

    .line 6170
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    float-to-int v5, p2

    float-to-int v6, p3

    .line 6171
    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    sub-float v5, p3, v5

    invoke-virtual {v4, p2, v5}, Lorg/telegram/ui/Stories/StoryCaptionView;->allowInterceptTouchEvent(FF)Z

    move-result v4

    if-eqz v4, :cond_4

    return v2

    .line 6175
    :cond_4
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 6176
    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    if-ne v3, v5, :cond_5

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    if-eqz v5, :cond_5

    iget-object v5, v5, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->renderView:Landroid/view/View;

    instance-of v6, v5, Landroid/view/ViewGroup;

    if-eqz v6, :cond_5

    .line 6177
    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v6

    sub-float v6, p2, v6

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v7

    sub-float v7, p3, v7

    invoke-virtual {p0, v5, v6, v7, p4}, Lorg/telegram/ui/Stories/PeerStoriesView;->findClickableView(Landroid/view/ViewGroup;FFZ)Z

    move-result v5

    if-eqz v5, :cond_5

    return v2

    .line 6181
    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->isClickable()Z

    move-result v5

    if-eqz v5, :cond_6

    float-to-int v5, p2

    float-to-int v6, p3

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_6

    return v2

    .line 6184
    :cond_6
    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyAreasView:Lorg/telegram/ui/Stories/StoryMediaAreasView;

    if-ne v3, v5, :cond_8

    invoke-virtual {v5}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->hasSelected()Z

    move-result v5

    if-nez v5, :cond_8

    const/high16 v5, 0x42700000    # 60.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    cmpg-float v6, p2, v6

    if-ltz v6, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v6, v5

    int-to-float v5, v6

    cmpl-float v5, p2, v5

    if-lez v5, :cond_8

    .line 6185
    :cond_7
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyAreasView:Lorg/telegram/ui/Stories/StoryMediaAreasView;

    invoke-virtual {v3, p2, p3}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->hasClickableViews(FF)Z

    move-result v3

    if-eqz v3, :cond_11

    return v2

    .line 6188
    :cond_8
    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->liveCommentsView:Lorg/telegram/ui/Stories/LiveCommentsView;

    if-ne v3, v5, :cond_b

    .line 6189
    iget-object v3, v5, Lorg/telegram/ui/Stories/LiveCommentsView;->topListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 6190
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->liveCommentsView:Lorg/telegram/ui/Stories/LiveCommentsView;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    sub-float v3, p2, v3

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->liveCommentsView:Lorg/telegram/ui/Stories/LiveCommentsView;

    iget-object v5, v5, Lorg/telegram/ui/Stories/LiveCommentsView;->topListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v5

    sub-float/2addr v3, v5

    float-to-int v3, v3

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->liveCommentsView:Lorg/telegram/ui/Stories/LiveCommentsView;

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v5

    sub-float v5, p3, v5

    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->liveCommentsView:Lorg/telegram/ui/Stories/LiveCommentsView;

    iget-object v6, v6, Lorg/telegram/ui/Stories/LiveCommentsView;->topListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6}, Landroid/view/View;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v3, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_9

    return v2

    .line 6193
    :cond_9
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->liveCommentsView:Lorg/telegram/ui/Stories/LiveCommentsView;

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/LiveCommentsView;->isCollapsed()Z

    move-result v3

    if-nez v3, :cond_11

    iget-boolean v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardVisible:Z

    if-nez v3, :cond_a

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->liveCommentsView:Lorg/telegram/ui/Stories/LiveCommentsView;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->liveCommentsView:Lorg/telegram/ui/Stories/LiveCommentsView;

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/LiveCommentsView;->top()F

    move-result v4

    add-float/2addr v3, v4

    cmpl-float v3, p3, v3

    if-gtz v3, :cond_a

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->liveCommentsView:Lorg/telegram/ui/Stories/LiveCommentsView;

    iget-object v4, v3, Lorg/telegram/ui/Stories/LiveCommentsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    sub-float v3, p3, v3

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->liveCommentsView:Lorg/telegram/ui/Stories/LiveCommentsView;

    iget-object v5, v5, Lorg/telegram/ui/Stories/LiveCommentsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v5

    sub-float/2addr v3, v5

    invoke-virtual {v4, p2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_11

    :cond_a
    return v2

    .line 6196
    :cond_b
    iget-boolean v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardVisible:Z

    if-eqz v5, :cond_c

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-ne v3, v5, :cond_c

    iget v5, v4, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    cmpl-float v5, p3, v5

    if-lez v5, :cond_c

    return v2

    :cond_c
    if-nez p4, :cond_10

    float-to-int v5, p2

    float-to-int v6, p3

    .line 6198
    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual {v3}, Landroid/view/View;->isClickable()Z

    move-result v4

    if-nez v4, :cond_d

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-ne v3, v4, :cond_e

    :cond_d
    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_f

    :cond_e
    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v4, :cond_10

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getRecordCircle()Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object v4

    if-ne v3, v4, :cond_10

    :cond_f
    return v2

    .line 6200
    :cond_10
    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_11

    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_11

    move-object v4, v3

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v5

    sub-float v5, p2, v5

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    sub-float v3, p3, v3

    invoke-virtual {p0, v4, v5, v3, p4}, Lorg/telegram/ui/Stories/PeerStoriesView;->findClickableView(Landroid/view/ViewGroup;FFZ)Z

    move-result v3

    if-eqz v3, :cond_11

    return v2

    :cond_11
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_12
    return v0
.end method

.method public getCurrentDay()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 6075
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->day:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCurrentPeer()J
    .locals 2

    .line 6071
    iget-wide v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    return-wide v0
.end method

.method public getListPosition()I
    .locals 1

    .line 8353
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->listPosition:I

    return v0
.end method

.method public getPlayingBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .line 6043
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 6044
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1, v2, v3}, Lorg/telegram/ui/Stories/PeerStoriesView;->drawPlayingBitmap(IILandroid/graphics/Canvas;)V

    return-object v0
.end method

.method public getSelectedPosition()I
    .locals 1

    .line 6088
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    return v0
.end method

.method public getStoriesController()Lorg/telegram/ui/Stories/StoriesController;
    .locals 1

    .line 8357
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    .line 8358
    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    return-object v0
.end method

.method public getStoriesCount()I
    .locals 3

    .line 6734
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->totalStoriesCount:I

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getStoryItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/tl/TL_stories$StoryItem;",
            ">;"
        }
    .end annotation

    .line 6415
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public abstract isSelectedPeer()Z
.end method

.method public needEnterText()Z
    .locals 4

    .line 8077
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 8080
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isKeyboardVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8082
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->showEmojiView()V

    .line 8084
    :cond_1
    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    const-wide/16 v2, 0x12c

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return v0
.end method

.method public onActionDown(Landroid/view/MotionEvent;)V
    .locals 4

    .line 6430
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->shown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyButton:Lorg/telegram/ui/Stories/StoryPrivacyButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 6431
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v0, p1, v1, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->containsTouch(Landroid/view/MotionEvent;FF)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyButton:Lorg/telegram/ui/Stories/StoryPrivacyButton;

    .line 6432
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->hitButton(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6434
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    .line 6436
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->soundTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->shown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->soundTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 6437
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->soundTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->soundTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v0, p1, v1, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->containsTouch(Landroid/view/MotionEvent;FF)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconContainer:Landroid/widget/FrameLayout;

    .line 6438
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->hitButton(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 6440
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->soundTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_7

    if-eqz p1, :cond_6

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    goto :goto_2

    :cond_0
    const/16 p2, 0x15

    if-ne p1, p2, :cond_7

    if-nez p3, :cond_1

    .line 6310
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->showAttachmentError()V

    return-void

    .line 6313
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6314
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->sendUriAsDocument(Landroid/net/Uri;)V

    goto :goto_1

    .line 6315
    :cond_2
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 6316
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p1

    const/4 p2, 0x0

    .line 6317
    :goto_0
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result p3

    if-ge p2, p3, :cond_4

    .line 6318
    invoke-virtual {p1, p2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object p3

    invoke-direct {p0, p3}, Lorg/telegram/ui/Stories/PeerStoriesView;->sendUriAsDocument(Landroid/net/Uri;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 6321
    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->showAttachmentError()V

    .line 6323
    :cond_4
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz p1, :cond_5

    .line 6324
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    :cond_5
    const/4 p1, 0x1

    .line 6326
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->afterMessageSend(Z)V

    return-void

    .line 6304
    :cond_6
    :goto_2
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->createChatAttachView()V

    .line 6305
    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz p2, :cond_7

    .line 6306
    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p1, p3, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->onActivityResultFragment(ILandroid/content/Intent;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 4668
    invoke-super {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 4669
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->attachedToWindow:Z

    .line 4670
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 4671
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->rightPreloadImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 4672
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->leftPreloadImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 4673
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionEffectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 4674
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionMoveImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 4675
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v1, :cond_0

    .line 4676
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->onResume()V

    :cond_0
    const/4 v1, 0x0

    .line 4678
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->preloadReactionHolders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4679
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->preloadReactionHolders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->onAttachedToWindow(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4682
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4683
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->liveStoryUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4684
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4685
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storyQualityUpdate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4686
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesListUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4687
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stealthModeChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4688
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesLimitUpdate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4689
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->userIsPremiumBlockedUpadted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4690
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didLoadSendAsPeers:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4691
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 4696
    invoke-super {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 4697
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->attachedToWindow:Z

    .line 4698
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 4699
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->rightPreloadImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 4700
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->leftPreloadImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 4701
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionEffectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 4702
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionMoveImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 4703
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v1, :cond_0

    .line 4704
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->onPause()V

    .line 4710
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->onDestroy()V

    .line 4712
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionMoveDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 4713
    invoke-virtual {v1, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Landroid/view/View;)V

    .line 4714
    iput-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionMoveDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    .line 4716
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->emojiReactionEffect:Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    if-eqz v1, :cond_2

    .line 4717
    invoke-virtual {v1, p0}, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->removeView(Landroid/view/View;)V

    .line 4718
    iput-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->emojiReactionEffect:Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    :cond_2
    move v1, v0

    .line 4720
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->preloadReactionHolders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 4721
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->preloadReactionHolders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->onAttachedToWindow(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4724
    :cond_3
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4725
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->liveStoryUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4726
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4727
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storyQualityUpdate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4728
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesListUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4729
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stealthModeChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4730
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesLimitUpdate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4731
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->userIsPremiumBlockedUpadted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4732
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didLoadSendAsPeers:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4733
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 4605
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onLayout(ZIIII)V

    move-object p1, p0

    .line 4606
    iget-object p2, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {p2}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->-$$Nest$fgettopOverlayGradient(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    const/high16 p4, 0x42900000    # 72.0f

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    const/4 p5, 0x0

    invoke-virtual {p2, p5, p5, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 17

    move-object/from16 v0, p0

    .line 7109
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->ATTACH_TO_FRAGMENT:Z

    if-eqz v1, :cond_0

    .line 7110
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 7111
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 7114
    :cond_0
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->shareAlert:Lorg/telegram/ui/Components/ShareAlert;

    if-nez v1, :cond_1

    .line 7115
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->getKeyboardHeight()I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->realKeyboardHeight:I

    goto :goto_0

    .line 7117
    :cond_1
    iput v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->realKeyboardHeight:I

    .line 7120
    :goto_0
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->ATTACH_TO_FRAGMENT:Z

    if-eqz v1, :cond_2

    .line 7121
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    goto :goto_1

    .line 7123
    :cond_2
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->realKeyboardHeight:I

    add-int/2addr v1, v3

    .line 7125
    :goto_1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    const/high16 v4, 0x41800000    # 16.0f

    int-to-float v3, v3

    mul-float/2addr v3, v4

    const/high16 v4, 0x41100000    # 9.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    if-le v1, v3, :cond_3

    if-le v3, v1, :cond_4

    :cond_3
    move v3, v1

    .line 7135
    :cond_4
    iget v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->realKeyboardHeight:I

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 7136
    iput v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->realKeyboardHeight:I

    .line 7138
    :cond_5
    iget v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->realKeyboardHeight:I

    .line 7139
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const-wide/16 v6, 0xfa

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v5

    if-eqz v5, :cond_6

    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 7140
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->realKeyboardHeight:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 7141
    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    sget-object v5, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    .line 7142
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 7143
    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    move v4, v2

    goto :goto_2

    .line 7146
    :cond_6
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupShowing()Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isWaitingForKeyboard()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 7147
    :cond_7
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiView()Lorg/telegram/ui/Components/EmojiView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-nez v4, :cond_8

    .line 7148
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiPadding()I

    move-result v4

    goto :goto_2

    .line 7149
    :cond_8
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isStickersExpanded()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 7150
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->checkStickresExpandHeight()V

    .line 7151
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getStickersExpandedHeight()I

    move-result v4

    goto :goto_2

    .line 7153
    :cond_9
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getVisibleEmojiPadding()I

    move-result v4

    .line 7157
    :cond_a
    :goto_2
    iget-boolean v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardVisible:Z

    .line 7158
    iget v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->lastKeyboardHeight:I

    const/4 v9, 0x1

    if-eq v8, v4, :cond_19

    .line 7159
    iput-boolean v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardVisible:Z

    if-lez v4, :cond_b

    .line 7160
    iget-boolean v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz v8, :cond_b

    .line 7161
    iput-boolean v9, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardVisible:Z

    .line 7162
    iput-boolean v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->messageSent:Z

    .line 7163
    iput v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->lastOpenedKeyboardHeight:I

    .line 7164
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->checkReactionsLayout()V

    .line 7165
    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->dismissAll()V

    goto :goto_3

    .line 7167
    :cond_b
    iget-object v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v8, :cond_c

    .line 7168
    iget-object v10, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-wide v11, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iget-object v13, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v13, v13, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v10, v11, v12, v13, v8}, Lorg/telegram/ui/Stories/StoryViewer;->saveDraft(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;Ljava/lang/CharSequence;)V

    .line 7171
    :cond_c
    :goto_3
    iget-object v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v8, :cond_e

    .line 7172
    iget-object v10, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v10}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-direct {v0, v9}, Lorg/telegram/ui/Stories/PeerStoriesView;->disabledPaidFeatures(Z)Z

    move-result v10

    if-nez v10, :cond_d

    iget-boolean v10, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardVisible:Z

    if-eqz v10, :cond_d

    move v10, v9

    goto :goto_4

    :cond_d
    move v10, v2

    :goto_4
    invoke-virtual {v8, v10, v9}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setSuggestionButtonVisible(ZZ)V

    .line 7174
    :cond_e
    iget-boolean v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardVisible:Z

    if-eqz v8, :cond_f

    iget-object v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-eqz v8, :cond_f

    .line 7175
    invoke-virtual {v8, v2}, Landroid/view/View;->setVisibility(I)V

    .line 7177
    :cond_f
    iget-boolean v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardVisible:Z

    if-nez v8, :cond_10

    iget-object v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-eqz v8, :cond_10

    .line 7178
    invoke-virtual {v8}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->reset()V

    .line 7180
    :cond_10
    iget-object v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-boolean v10, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardVisible:Z

    xor-int/2addr v10, v9

    invoke-virtual {v8, v10}, Landroid/view/View;->setEnabled(Z)V

    .line 7181
    iget-object v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v8, :cond_11

    .line 7182
    iget-boolean v10, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardVisible:Z

    xor-int/2addr v10, v9

    invoke-virtual {v8, v10}, Lorg/telegram/ui/Components/ChatActivityEnterView;->checkReactionsButton(Z)V

    .line 7184
    :cond_11
    iget-boolean v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz v8, :cond_12

    iget-boolean v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardVisible:Z

    if-eqz v8, :cond_12

    .line 7185
    iget-object v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {v8, v9}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setKeyboardVisible(Z)V

    .line 7187
    :cond_12
    iput v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->lastKeyboardHeight:I

    .line 7188
    iget-object v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardAnimator:Landroid/animation/ValueAnimator;

    if-eqz v8, :cond_13

    .line 7189
    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->cancel()V

    .line 7191
    :cond_13
    iget-object v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {v8}, Lorg/telegram/messenger/AnimationNotificationsLocker;->lock()V

    .line 7192
    iget v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->animatingKeyboardHeight:F

    int-to-float v10, v4

    const/4 v11, 0x2

    new-array v11, v11, [F

    aput v8, v11, v2

    aput v10, v11, v9

    invoke-static {v11}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    iput-object v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardAnimator:Landroid/animation/ValueAnimator;

    .line 7193
    new-instance v10, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda22;

    invoke-direct {v10, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v8, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 7197
    iget-object v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardAnimator:Landroid/animation/ValueAnimator;

    new-instance v10, Lorg/telegram/ui/Stories/PeerStoriesView$35;

    invoke-direct {v10, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$35;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v8, v10}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 7216
    iget-boolean v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardVisible:Z

    if-eqz v8, :cond_14

    .line 7217
    iget-object v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v8, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 7218
    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardAnimator:Landroid/animation/ValueAnimator;

    sget-object v7, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 7219
    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {v6}, Lorg/telegram/ui/Stories/StoryViewer;->cancelSwipeToReply()V

    goto :goto_5

    .line 7221
    :cond_14
    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v7, 0x1f4

    invoke-virtual {v6, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 7222
    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardAnimator:Landroid/animation/ValueAnimator;

    sget-object v7, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 7225
    :goto_5
    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    .line 7227
    iget-boolean v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardVisible:Z

    if-eq v6, v5, :cond_18

    if-eqz v6, :cond_15

    .line 7229
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->bitmapShaderTools:Lorg/telegram/ui/Components/BitmapShaderTools;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/BitmapShaderTools;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->bitmapShaderTools:Lorg/telegram/ui/Components/BitmapShaderTools;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/BitmapShaderTools;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/telegram/ui/Stories/PeerStoriesView;->createBlurredBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    .line 7230
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v5}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 7231
    invoke-direct {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->showPaidMessageHint()V

    goto :goto_6

    .line 7234
    :cond_15
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v5, :cond_16

    .line 7235
    invoke-virtual {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->clearFocus()V

    .line 7237
    :cond_16
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->highlightMessageHintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v5, :cond_17

    .line 7238
    invoke-virtual {v5}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    .line 7241
    :cond_17
    :goto_6
    iput-boolean v9, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->animateKeyboardOpening:Z

    goto :goto_7

    .line 7243
    :cond_18
    iput-boolean v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->animateKeyboardOpening:Z

    .line 7246
    :cond_19
    :goto_7
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v5, :cond_1a

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiView()Lorg/telegram/ui/Components/EmojiView;

    move-result-object v5

    if-eqz v5, :cond_1a

    .line 7247
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiView()Lorg/telegram/ui/Components/EmojiView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v6, 0x50

    .line 7248
    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 7250
    :cond_1a
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 7251
    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sub-int v6, v1, v3

    const/high16 v7, 0x42800000    # 64.0f

    .line 7252
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    if-le v6, v8, :cond_1b

    move v6, v9

    goto :goto_8

    :cond_1b
    move v6, v2

    :goto_8
    iput-boolean v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->BIG_SCREEN:Z

    if-eqz v6, :cond_1c

    .line 7253
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    goto :goto_9

    :cond_1c
    move v6, v2

    :goto_9
    add-int/2addr v6, v3

    sub-int v6, v1, v6

    shr-int/2addr v6, v9

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 7254
    iget-boolean v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->BIG_SCREEN:Z

    if-eqz v8, :cond_1d

    neg-int v8, v6

    add-int/2addr v8, v1

    sub-int/2addr v8, v3

    .line 7255
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sub-int/2addr v8, v10

    iput v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->enterViewBottomOffset:I

    goto :goto_a

    :cond_1d
    neg-int v8, v6

    add-int/2addr v8, v1

    sub-int/2addr v8, v3

    .line 7257
    iput v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->enterViewBottomOffset:I

    .line 7259
    :goto_a
    iget-boolean v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->BIG_SCREEN:Z

    iget-boolean v10, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->wasBigScreen:Z

    if-eq v8, v10, :cond_1e

    .line 7260
    iget-object v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7265
    :cond_1e
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfView:Landroid/widget/FrameLayout;

    const/high16 v8, 0x42400000    # 48.0f

    const/high16 v10, 0x41000000    # 8.0f

    if-eqz v5, :cond_20

    .line 7266
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 7267
    iget-boolean v11, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->BIG_SCREEN:Z

    if-eqz v11, :cond_1f

    add-int v11, v6, v3

    .line 7268
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    add-int/2addr v11, v12

    iput v11, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_b

    :cond_1f
    add-int v11, v6, v3

    .line 7270
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    sub-int/2addr v11, v12

    iput v11, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 7274
    :cond_20
    :goto_b
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->replyDisabledTextView:Landroid/widget/TextView;

    const/high16 v11, 0x42200000    # 40.0f

    const/high16 v12, 0x41400000    # 12.0f

    if-eqz v5, :cond_21

    .line 7275
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 7276
    iget-boolean v13, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->BIG_SCREEN:Z

    const/4 v14, -0x1

    if-nez v13, :cond_22

    .line 7277
    iget-object v13, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->replyDisabledTextView:Landroid/widget/TextView;

    const/16 v15, 0xbf

    invoke-static {v14, v15}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setTextColor(I)V

    add-int v13, v6, v3

    .line 7278
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    sub-int/2addr v13, v14

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    sub-int/2addr v13, v14

    iput v13, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :cond_21
    move/from16 v16, v2

    goto :goto_c

    .line 7280
    :cond_22
    iget-object v13, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->replyDisabledTextView:Landroid/widget/TextView;

    const/high16 v15, -0x1000000

    move/from16 v16, v2

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v15, v14, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v2

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setTextColor(I)V

    add-int v2, v6, v3

    .line 7281
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    add-int/2addr v2, v13

    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 7284
    :goto_c
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;

    if-eqz v2, :cond_24

    .line 7285
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    if-nez v4, :cond_23

    add-int v4, v6, v3

    .line 7287
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v4, v5

    sub-int v4, v1, v4

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_d

    .line 7289
    :cond_23
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 7293
    :cond_24
    :goto_d
    iget-boolean v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->BIG_SCREEN:Z

    if-nez v2, :cond_27

    .line 7294
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->bottomActionsLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    add-int/2addr v6, v3

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v6, v3

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v6, v3

    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 7295
    iget-boolean v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-eqz v2, :cond_25

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    goto :goto_e

    :cond_25
    const/high16 v2, 0x42600000    # 56.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    .line 7296
    :goto_e
    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 7297
    iget-boolean v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->wasBigScreen:Z

    iget-boolean v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->BIG_SCREEN:Z

    if-eq v3, v4, :cond_26

    .line 7298
    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7300
    :cond_26
    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    iput v2, v3, Lorg/telegram/ui/Stories/StoryCaptionView;->blackoutBottomOffset:I

    goto :goto_f

    .line 7302
    :cond_27
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->bottomActionsLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    add-int/2addr v6, v3

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v6, v3

    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 7303
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 7304
    iget-boolean v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->wasBigScreen:Z

    iget-boolean v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->BIG_SCREEN:Z

    if-eq v2, v3, :cond_28

    .line 7305
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7307
    :cond_28
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v2, Lorg/telegram/ui/Stories/StoryCaptionView;->blackoutBottomOffset:I

    .line 7310
    :goto_f
    iput-boolean v9, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->forceUpdateOffsets:Z

    .line 7312
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    .line 7316
    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyButton:Lorg/telegram/ui/Stories/StoryPrivacyButton;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_29

    const/high16 v3, 0x42700000    # 60.0f

    .line 7317
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 7319
    :cond_29
    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2a

    .line 7320
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 7322
    :cond_2a
    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object v3, v3, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 7323
    iget v4, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    int-to-float v4, v4

    cmpl-float v4, v4, v2

    if-eqz v4, :cond_2b

    float-to-int v2, v2

    .line 7324
    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 7325
    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    invoke-static {v3}, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->-$$Nest$fgetsubtitleView(Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;)[Landroid/widget/TextView;

    move-result-object v3

    aget-object v3, v3, v16

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 7326
    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 7327
    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    invoke-static {v3}, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->-$$Nest$fgetsubtitleView(Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;)[Landroid/widget/TextView;

    move-result-object v3

    aget-object v3, v3, v9

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 7328
    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 7329
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    :cond_2b
    const/high16 v2, 0x40000000    # 2.0f

    .line 7331
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    move/from16 v2, p1

    invoke-super {v0, v2, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 7332
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->BIG_SCREEN:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->wasBigScreen:Z

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 7338
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    const/high16 p1, -0x40800000    # -1.0f

    .line 7339
    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToKeyboard:F

    const/4 p1, 0x1

    .line 7340
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->forceUpdateOffsets:Z

    .line 7341
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public preloadMainImage(J)V
    .locals 2

    .line 4365
    iget-wide v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->day:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 4368
    :cond_0
    iput-wide p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    .line 4369
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updateStoryItems()V

    .line 4370
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updateSelectedPosition()V

    const/4 v0, 0x1

    .line 4371
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePosition(Z)V

    .line 4372
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->overrideUserStories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    if-eqz v1, :cond_1

    .line 4373
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Stories/StoriesController;->loadSkippedStories(Lorg/telegram/tgnet/tl/TL_stories$PeerStories;Z)V

    return-void

    .line 4375
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Stories/StoriesController;->loadSkippedStories(J)V

    return-void
.end method

.method public progressToDismissUpdated()V
    .locals 1

    .line 6270
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->BIG_SCREEN:Z

    if-eqz v0, :cond_0

    .line 6271
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 4

    .line 6276
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 6277
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->changeBoundAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 6278
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->reset()V

    .line 6279
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 6281
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-eqz v0, :cond_1

    .line 6282
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->reset()V

    .line 6284
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-eqz v0, :cond_2

    .line 6285
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->reset()V

    .line 6287
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 6288
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    .line 6289
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/InstantCameraView;->hideCamera(Z)V

    .line 6290
    iput-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;

    :cond_3
    const/4 v0, 0x0

    .line 6292
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->setActive(Z)V

    .line 6293
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->setIsVisible(Z)V

    .line 6294
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isLongPressed:Z

    .line 6295
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToHideInterface:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    .line 6296
    iput-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->viewsThumbImageReceiver:Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;

    .line 6297
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->messageSent:Z

    .line 6298
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->cancelTextSelection()V

    return-void
.end method

.method public selectPosition(I)V
    .locals 1

    .line 6419
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    if-eq v0, p1, :cond_0

    .line 6420
    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    .line 6421
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePosition()V

    :cond_0
    return-void
.end method

.method public setAccount(I)V
    .locals 3

    .line 6208
    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    .line 6209
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    .line 6210
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->emojiAnimationsOverlay:Lorg/telegram/ui/EmojiAnimationsOverlay;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/EmojiAnimationsOverlay;->setAccount(I)V

    .line 6211
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-eqz v0, :cond_0

    .line 6212
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setCurrentAccount(I)V

    .line 6213
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setMessage(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ChatFull;Z)V

    .line 6215
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-eqz v0, :cond_1

    .line 6216
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setCurrentAccount(I)V

    :cond_1
    return-void
.end method

.method public setActive(JZ)V
    .locals 4

    .line 6228
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eq v0, p3, :cond_8

    .line 6229
    sget v0, Lorg/telegram/ui/Stories/PeerStoriesView;->activeCount:I

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    add-int/2addr v0, v2

    sput v0, Lorg/telegram/ui/Stories/PeerStoriesView;->activeCount:I

    .line 6230
    iput-boolean p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 6233
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->useSurfaceInViewPagerWorkAround()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 6234
    iget-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {p3, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setIsSwiping(Z)V

    .line 6235
    iget-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowDrawSurfaceRunnable:Ljava/lang/Runnable;

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 6236
    iget-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowDrawSurfaceRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-static {p3, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 6238
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/PeerStoriesView;->requestVideoPlayer(J)V

    .line 6239
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePreloadImages()V

    .line 6240
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconView:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    iget-object p2, p2, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->muteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    .line 6241
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    .line 6242
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 6243
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz p1, :cond_3

    .line 6244
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "StoryViewer displayed story dialogId="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " storyId="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object p2, p2, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget p2, p2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$mgetMediaDebugString(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 6247
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->cancelTextSelection()V

    .line 6248
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->clearAnimationDrawable()V

    const/4 p1, 0x0

    .line 6249
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->viewsThumbImageReceiver:Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;

    .line 6250
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isLongPressed:Z

    .line 6251
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToHideInterface:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    .line 6252
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 6253
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6254
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->cancelWaiting()V

    .line 6255
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {p1, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setIsRecording(Z)V

    .line 6260
    :cond_3
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-boolean p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    const/4 p3, 0x2

    if-eqz p2, :cond_4

    const/4 p2, 0x3

    goto :goto_2

    :cond_4
    move p2, p3

    :goto_2
    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setFileLoadingPriority(I)V

    .line 6261
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->leftPreloadImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-boolean p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz p2, :cond_5

    move p2, p3

    goto :goto_3

    :cond_5
    move p2, v0

    :goto_3
    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setFileLoadingPriority(I)V

    .line 6262
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->rightPreloadImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-boolean p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz p2, :cond_6

    move v0, p3

    :cond_6
    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setFileLoadingPriority(I)V

    .line 6263
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isChannel:Z

    if-eqz p1, :cond_8

    .line 6264
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    invoke-virtual {p1, p2, p3, v0}, Lorg/telegram/ui/Stories/StoriesController;->pollViewsForSelfStories(JZ)V

    :cond_8
    return-void
.end method

.method public setActive(Z)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 6223
    invoke-virtual {p0, v0, v1, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->setActive(JZ)V

    return-void
.end method

.method public setDay(JLjava/util/ArrayList;I)V
    .locals 0

    .line 4085
    iput-wide p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    .line 4086
    iput-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->day:Ljava/util/ArrayList;

    .line 4087
    invoke-direct {p0, p4}, Lorg/telegram/ui/Stories/PeerStoriesView;->bindInternal(I)V

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;)V
    .locals 0

    .line 6017
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    return-void
.end method

.method public setDialogId(JI)V
    .locals 2

    .line 4091
    iget-wide v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 4092
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->clear()V

    .line 4094
    :cond_0
    iput-wide p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    const/4 v0, 0x0

    .line 4095
    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->day:Ljava/util/ArrayList;

    .line 4096
    invoke-direct {p0, p3}, Lorg/telegram/ui/Stories/PeerStoriesView;->bindInternal(I)V

    .line 4097
    iget-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object p3, p3, Lorg/telegram/ui/Stories/StoryViewer;->overrideUserStories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    if-eqz p3, :cond_1

    .line 4098
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    const/4 p2, 0x1

    invoke-virtual {p1, p3, p2}, Lorg/telegram/ui/Stories/StoriesController;->loadSkippedStories(Lorg/telegram/tgnet/tl/TL_stories$PeerStories;Z)V

    return-void

    .line 4100
    :cond_1
    iget-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {p3, p1, p2}, Lorg/telegram/ui/Stories/StoriesController;->loadSkippedStories(J)V

    return-void
.end method

.method public setIsVisible(Z)V
    .locals 1

    .line 6404
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isVisible:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 6407
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isVisible:Z

    if-eqz p1, :cond_1

    .line 6409
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setCurrentAlpha(F)V

    const/4 p1, 0x0

    .line 6410
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->checkStealthMode(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setLongpressed(Z)V
    .locals 1

    .line 6379
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz v0, :cond_0

    .line 6380
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isLongPressed:Z

    .line 6381
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setOffset(F)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    const/4 v0, 0x1

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 6463
    :goto_0
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowDrawSurface:Z

    if-eq v1, p1, :cond_2

    .line 6464
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowDrawSurface:Z

    .line 6465
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 6466
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz v1, :cond_2

    .line 6467
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->useSurfaceInViewPagerWorkAround()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    .line 6469
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowDrawSurfaceRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 6470
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowDrawSurfaceRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0xfa

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    .line 6472
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowDrawSurfaceRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 6473
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {p1, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setIsSwiping(Z)V

    :cond_2
    return-void
.end method

.method public setPaused(Z)V
    .locals 2

    .line 6079
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->paused:Z

    if-eq v0, p1, :cond_0

    .line 6080
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->paused:Z

    .line 6081
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->stopPlaying(Z)V

    const-wide/16 v0, 0x0

    .line 6082
    iput-wide v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->lastDrawTime:J

    .line 6083
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setViewsThumbImageReceiver(FFFLorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;)V
    .locals 0

    .line 8092
    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->viewsThumbAlpha:F

    const/high16 p1, 0x3f800000    # 1.0f

    div-float/2addr p1, p2

    .line 8093
    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->viewsThumbScale:F

    .line 8094
    iput p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->viewsThumbPivotY:F

    .line 8095
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->viewsThumbImageReceiver:Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;

    if-ne p1, p4, :cond_0

    goto :goto_0

    .line 8098
    :cond_0
    iput-object p4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->viewsThumbImageReceiver:Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;

    if-eqz p4, :cond_1

    .line 8099
    iget-object p1, p4, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->receiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8100
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object p2, p4, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->receiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->updateStaticDrawableThump(Landroid/graphics/Bitmap;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public showKeyboard()Z
    .locals 2

    .line 6386
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->replyDisabledTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 6389
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 6393
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 6394
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public showNoSoundHint(Z)V
    .locals 9

    .line 6486
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->soundTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-nez v0, :cond_0

    .line 6487
    new-instance v0, Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;-><init>(Landroid/content/Context;I)V

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x3da00000    # -56.0f

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->setJoint(FF)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->soundTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/high16 v1, 0x41000000    # 8.0f

    .line 6488
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 6489
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->soundTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, -0x1

    const/high16 v3, -0x40000000    # -2.0f

    const/16 v4, 0x37

    const/4 v5, 0x0

    const/high16 v6, 0x42500000    # 52.0f

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6491
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->soundTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz p1, :cond_1

    sget p1, Lorg/telegram/messenger/R$string;->StoryNoSound:I

    goto :goto_0

    :cond_1
    sget p1, Lorg/telegram/messenger/R$string;->StoryTapToSound:I

    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 6492
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->soundTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->show()Lorg/telegram/ui/Stories/recorder/HintView2;

    return-void
.end method

.method public stopPlaying(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 6062
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->stopAnimation()V

    .line 6063
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartAnimation(Z)V

    return-void

    .line 6065
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->startAnimation()V

    .line 6066
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartAnimation(Z)V

    return-void
.end method

.method public switchToNext(Z)Z
    .locals 2

    .line 5997
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->reversed:Z

    if-eqz v0, :cond_0

    xor-int/lit8 p1, p1, 0x1

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 6001
    iget p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->getStoriesCount()I

    move-result v1

    sub-int/2addr v1, v0

    if-ge p1, v1, :cond_2

    .line 6002
    iget p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    .line 6003
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePosition()V

    return v0

    .line 6007
    :cond_1
    iget p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    if-lez p1, :cond_2

    sub-int/2addr p1, v0

    .line 6008
    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    .line 6009
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePosition()V

    return v0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public updatePosition()V
    .locals 1

    const/4 v0, 0x0

    .line 4885
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePosition(Z)V

    return-void
.end method

.method public useSurfaceInViewPagerWorkAround()Z
    .locals 2

    .line 6482
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->USE_SURFACE_VIEW:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public viewsAllowed()Z
    .locals 2

    .line 6546
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 6549
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isChannel:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->userCanSeeViews:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
