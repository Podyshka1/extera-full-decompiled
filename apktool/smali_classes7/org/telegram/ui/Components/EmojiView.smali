.class public Lorg/telegram/ui/Components/EmojiView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/ui/Components/inset/InAppKeyboardInsetView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/EmojiView$Tab;,
        Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;,
        Lorg/telegram/ui/Components/EmojiView$SearchField;,
        Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;,
        Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;,
        Lorg/telegram/ui/Components/EmojiView$EmojiPack;,
        Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;,
        Lorg/telegram/ui/Components/EmojiView$EmojiGridView;,
        Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;,
        Lorg/telegram/ui/Components/EmojiView$EmojiGridSpacing;,
        Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;,
        Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;,
        Lorg/telegram/ui/Components/EmojiView$GifAdapter;,
        Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;,
        Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;,
        Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;,
        Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;,
        Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;,
        Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;,
        Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;,
        Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;,
        Lorg/telegram/ui/Components/EmojiView$DragListener;,
        Lorg/telegram/ui/Components/EmojiView$CustomEmoji;,
        Lorg/telegram/ui/Components/EmojiView$EmojiPackExpand;,
        Lorg/telegram/ui/Components/EmojiView$TrendingListView;,
        Lorg/telegram/ui/Components/EmojiView$EmojiPackButton;
    }
.end annotation


# instance fields
.field private allTabs:Ljava/util/ArrayList;

.field private allowAnimatedEmoji:Z

.field private allowEmojisForNonPremium:Z

.field private animateExpandFromButton:Landroid/view/View;

.field private animateExpandFromPosition:I

.field private animateExpandStartTime:J

.field private animateExpandToPosition:I

.field private animatedEmojiDrawables:Landroid/util/LongSparseArray;

.field private animatedEmojiTextColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private backspaceButton:Landroid/widget/ImageView;

.field private backspaceButtonAnimation:Landroid/animation/AnimatorSet;

.field private backspaceOnce:Z

.field private backspacePressed:Z

.field private final blurCaptureMethod:Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;

.field private final blurredBackgroundDrawableFactory:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

.field private final blurredBackgroundSourceColor:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;

.field private final blurredBackgroundSourceRenderNode:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

.field private final blurredRectF:Landroid/graphics/RectF;

.field private final blurredRectList:Ljava/util/ArrayList;

.field private bottomInset:I

.field private bottomTabContainer:Landroid/widget/FrameLayout;

.field private bottomTabContainerBackground:Landroid/view/View;

.field private final bottomTabVisibility:Lme/vkryl/android/animator/BoolAnimator;

.field private bulletinContainer:Landroid/widget/FrameLayout;

.field private checkExpandStickerTabsRunnable:Ljava/lang/Runnable;

.field private chooseStickerActionTracker:Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;

.field private colorPickerView:Lorg/telegram/ui/Components/EmojiColorPickerWindow;

.field private contentPreviewViewerDelegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

.field public currentAccount:I

.field private currentBackgroundType:I

.field private currentChatId:J

.field private currentPage:I

.field private currentTabs:Ljava/util/ArrayList;

.field public customOutline:Z

.field private delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

.field private dotPaint:Landroid/graphics/Paint;

.field private dragListener:Lorg/telegram/ui/Components/EmojiView$DragListener;

.field private emojiAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

.field emojiBanned:Z

.field public emojiCacheType:I

.field private emojiContainer:Landroid/widget/FrameLayout;

.field private emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

.field private emojiLastX:F

.field private emojiLastY:F

.field private emojiLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field private emojiLockDrawable:Landroid/graphics/drawable/Drawable;

.field private emojiLockPaint:Landroid/graphics/Paint;

.field private emojiPackAlertOpened:Z

.field emojiPagerAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;

.field private emojiScrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

.field private emojiSearchAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

.field private emojiSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

.field private emojiSize:I

.field private emojiSmoothScrolling:Z

.field private emojiTabShadowAnimator:Landroid/animation/AnimatorSet;

.field private emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

.field private emojiTabsShadow:Landroid/view/View;

.field private emojiTitles:[Ljava/lang/String;

.field private emojiTouchedView:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

.field private emojiTouchedX:F

.field private emojiTouchedY:F

.field private emojipacksProcessed:Ljava/util/ArrayList;

.field private expandStickersByDragg:Z

.field private expandedEmojiSets:Ljava/util/ArrayList;

.field private final fadeDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private favTabNum:I

.field private favouriteStickers:Ljava/util/ArrayList;

.field private featuredEmojiSets:Ljava/util/ArrayList;

.field private featuredStickerSets:Ljava/util/ArrayList;

.field private firstEmojiAttach:Z

.field private firstGifAttach:Z

.field private firstStickersAttach:Z

.field private firstTabUpdate:Z

.field public fixBottomTabContainerTranslation:Z

.field private forseMultiwindowLayout:Z

.field private fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private frozen:Z

.field frozenStickerSets:Ljava/util/ArrayList;

.field private gifAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

.field private final gifCache:Ljava/util/Map;

.field private gifContainer:Landroid/widget/FrameLayout;

.field private gifFirstEmojiTabNum:I

.field private gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

.field private gifIcons:[Landroid/graphics/drawable/Drawable;

.field private gifLayoutManager:Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

.field private gifOnItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

.field private gifRecentTabNum:I

.field private gifSearchAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

.field private gifSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

.field private gifSearchPreloader:Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;

.field private gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

.field private gifTrendingTabNum:I

.field private glassDesign:Z

.field private groupStickerPackNum:I

.field private groupStickerPackPosition:I

.field private groupStickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

.field private groupStickersHidden:Z

.field private hasChatStickers:Z

.field private hasRecentEmoji:I

.field private hideStickersBan:Ljava/lang/Runnable;

.field private ignorePagerScroll:Z

.field private ignoreStickersScroll:Z

.field private info:Lorg/telegram/tgnet/TLRPC$ChatFull;

.field public installedEmojiSets:Ljava/util/ArrayList;

.field private installingStickerSets:Landroid/util/LongSparseArray;

.field private isLayout:Z

.field public isNewHeightControl:Z

.field private keepFeaturedDuplicate:Ljava/util/ArrayList;

.field private lastBottomScrollDy:F

.field private lastFadeColor:I

.field private lastNotifyWidth:I

.field private lastRecentArray:Ljava/util/ArrayList;

.field private lastRecentCount:I

.field private lastSearchKeyboardLanguage:[Ljava/lang/String;

.field private lastStickersX:F

.field private location:[I

.field private mediaBanTooltip:Landroid/widget/TextView;

.field private final navbarFillPaint:Landroid/graphics/Paint;

.field private needEmojiSearch:Z

.field private outlineProvider:Ljava/lang/Object;

.field private pager:Landroidx/viewpager/widget/ViewPager;

.field private premiumBulletin:Z

.field private premiumStickers:Ljava/util/ArrayList;

.field private premiumTabNum:I

.field private primaryInstallingStickerSets:[Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

.field private recentGifs:Ljava/util/ArrayList;

.field private recentStickers:Ljava/util/ArrayList;

.field private recentTabNum:I

.field rect:Landroid/graphics/Rect;

.field private removingStickerSets:Landroid/util/LongSparseArray;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private final scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

.field private searchAnimation:Landroid/animation/AnimatorSet;

.field private searchButton:Landroid/widget/ImageView;

.field private searchFieldHeight:I

.field private searchIconDotDrawable:Landroid/graphics/drawable/Drawable;

.field private searchIconDrawable:Landroid/graphics/drawable/Drawable;

.field private shouldDrawBackground:Z

.field public shouldDrawStickerSettings:Z

.field public shouldLightenBackground:Z

.field private showGifs:Z

.field private showStickersBanAnimator:Landroid/animation/AnimatorSet;

.field private showing:Z

.field private shownBottomTabAfterClick:J

.field private stickerIcons:[Landroid/graphics/drawable/Drawable;

.field private stickerSets:Ljava/util/ArrayList;

.field private stickerSettingsButton:Landroid/widget/ImageView;

.field stickersBanned:Z

.field private stickersButtonAnimation:Landroid/animation/AnimatorSet;

.field private stickersContainer:Landroid/widget/FrameLayout;

.field private stickersContainerAttached:Z

.field private stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

.field private stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

.field private stickersLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field private stickersOnItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

.field private stickersScrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

.field private stickersSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

.field private stickersSearchGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

.field private stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

.field private stickersTabContainer:Landroid/widget/FrameLayout;

.field private stickersTabOffset:I

.field private tabIcons:[Landroid/graphics/drawable/Drawable;

.field private final tabsMinusDy:[I

.field private tabsYAnimators:[Landroid/animation/ObjectAnimator;

.field private toInstall:Ljava/util/HashMap;

.field private trendingAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;

.field private trendingEmojiAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;

.field private trendingTabNum:I

.field private typeTabs:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

.field private updateStickersLoadedDelayed:Ljava/lang/Runnable;

.field private visibleInAppKeyboardHeight:F


# direct methods
.method public static synthetic $r8$lambda$48mXTWQgE2HMmMybsYQ4pcTutxM(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->lambda$new$18()V

    return-void
.end method

.method public static synthetic $r8$lambda$4RHjkQcNobqRRzwa1aFLOE98BmA(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->lambda$new$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$7eZKzWRbJDXymbUiIKtHal59vN8(Lorg/telegram/ui/Components/EmojiView;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->lambda$postBackspaceRunnable$24(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$BsMTxty2FUNemkXT5bxhcP6QUSo(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->lambda$new$28()V

    return-void
.end method

.method public static synthetic $r8$lambda$E_C4nuq79yzA8y8yQBXQ-hk0we4(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/EmojiView;->lambda$new$2(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$H-SMmVIIFMggamk2GC5Hsv_tnoI(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->lambda$onOpen$25()V

    return-void
.end method

.method public static synthetic $r8$lambda$HC-mj9QXykA3pAjgNzPHl9-kN5Y(Lorg/telegram/ui/Components/EmojiView;JLorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/EmojiView;->lambda$sendEmoji$0(JLorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IicVhhlEDZ-Et7U3qpo3uihP1cY(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->lambda$new$19()V

    return-void
.end method

.method public static synthetic $r8$lambda$MffY8OrBwecz1D9VKEQmuWPjRdo(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/EmojiView;->lambda$new$6(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$RzQPLhEl5VzLkc6IyGN01fqgTmY(Lorg/telegram/ui/Components/EmojiView;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->lambda$new$8(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$S0myWo1YOKOXo63fdEljksHrBpY(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->lambda$sendEmoji$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$SrUl6WhuXhzLekqz7QqP8xBG0ZI(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/EmojiView;->lambda$new$9(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$TE5ZnSpqcip_TDT-yPMdh2djxOo(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->lambda$new$17()V

    return-void
.end method

.method public static synthetic $r8$lambda$VEqrhCC-y9_IeJe4RZZFJxp1F3A(Lorg/telegram/ui/Components/EmojiView;IFFLme/vkryl/android/animator/FactorAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/EmojiView;->lambda$new$22(IFFLme/vkryl/android/animator/FactorAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Xk_64g5wS6A-v1ihihd46yLawck(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->invalidateBlurCaptures()V

    return-void
.end method

.method public static synthetic $r8$lambda$Yl22aa3zbnxFznP9SnYfvvlNkIs(Lorg/telegram/ui/Components/EmojiView;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->lambda$new$11(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZQrHVr1pdSLI-SgPdIviny4AX8Q(Lorg/telegram/ui/Components/EmojiView;Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView;->lambda$new$16(Landroid/view/View;Landroid/graphics/RectF;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_-vLDT4evKbKRtWvWLZ301gqIJw(Lorg/telegram/ui/Components/EmojiView;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView;->lambda$new$15(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$f8MzuoUYI6jpCMZsNdTmkObUpqQ(Lorg/telegram/ui/Components/EmojiView;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView;->lambda$new$10(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$g5FKL6jI_Wh39IoxaJZGVzep6Ks(Lorg/telegram/ui/Components/EmojiView;Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/EmojiView;->lambda$new$20(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$hDeFvkAjcaLq5gtMfPoSGvPPYw8([Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 3

    .line 2869
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    .line 2871
    invoke-interface {v2, p1, p2}, Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;->capture(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic $r8$lambda$hbn8xDm5MV6U9NZTvv4qzWCWtv0(Lorg/telegram/ui/Components/EmojiView;Landroid/view/View;I)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView;->lambda$new$3(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$i39tGRhN7rrwC9Rq5BrJbJQFi9E(Lorg/telegram/ui/Components/EmojiView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->lambda$new$13(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ieq7zK2n0rytEBejyTkF6_h4MvA(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->openPremiumAnimatedEmojiFeature()V

    return-void
.end method

.method public static synthetic $r8$lambda$ikKRTttmW_F26KruDieMsmfJ6Wo(Lorg/telegram/ui/Components/EmojiView;ZZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView;->lambda$showStickerBanHint$27(ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$mFzuvA0rc3FnRAztxUhCfBSONf0(Lorg/telegram/ui/Components/EmojiView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->lambda$new$14(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oyg5-o6d4fzahNLVdutNAomb3b4(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->lambda$onAttachedToWindow$26()V

    return-void
.end method

.method public static synthetic $r8$lambda$rFRYF32YjNmq1dHP8Y_RFc45B9I(Lorg/telegram/ui/Components/EmojiView;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView;->lambda$new$7(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$roMuldUBeMpvL2VV1XisjntU8Zo(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    const/4 p0, 0x0

    .line 1784
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$t9Ay_eZuwkIiTHrSvlnua7nMEqs(Lorg/telegram/ui/Components/EmojiView;ILandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView;->lambda$animateTabsY$23(ILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ufJW1PqWi9pii7RQrPZ6Ytcc2RM(Landroid/view/View;)V
    .locals 0

    .line 0
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetallowAnimatedEmoji(Lorg/telegram/ui/Components/EmojiView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiView;->allowAnimatedEmoji:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetallowEmojisForNonPremium(Lorg/telegram/ui/Components/EmojiView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiView;->allowEmojisForNonPremium:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetanimateExpandFromButton(Lorg/telegram/ui/Components/EmojiView;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->animateExpandFromButton:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetanimateExpandFromPosition(Lorg/telegram/ui/Components/EmojiView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/EmojiView;->animateExpandFromPosition:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetanimateExpandStartTime(Lorg/telegram/ui/Components/EmojiView;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/Components/EmojiView;->animateExpandStartTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetanimateExpandToPosition(Lorg/telegram/ui/Components/EmojiView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/EmojiView;->animateExpandToPosition:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetanimatedEmojiDrawables(Lorg/telegram/ui/Components/EmojiView;)Landroid/util/LongSparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->animatedEmojiDrawables:Landroid/util/LongSparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetanimatedEmojiTextColorFilter(Lorg/telegram/ui/Components/EmojiView;)Landroid/graphics/PorterDuffColorFilter;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->animatedEmojiTextColorFilter:Landroid/graphics/PorterDuffColorFilter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbackspaceButton(Lorg/telegram/ui/Components/EmojiView;)Landroid/widget/ImageView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbackspaceOnce(Lorg/telegram/ui/Components/EmojiView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceOnce:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbottomInset(Lorg/telegram/ui/Components/EmojiView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/EmojiView;->bottomInset:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbulletinContainer(Lorg/telegram/ui/Components/EmojiView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->bulletinContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcheckExpandStickerTabsRunnable(Lorg/telegram/ui/Components/EmojiView;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->checkExpandStickerTabsRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetchooseStickerActionTracker(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->chooseStickerActionTracker:Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcolorPickerView(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiColorPickerWindow;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->colorPickerView:Lorg/telegram/ui/Components/EmojiColorPickerWindow;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcontentPreviewViewerDelegate(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->contentPreviewViewerDelegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentTabs(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->currentTabs:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdelegate(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdotPaint(Lorg/telegram/ui/Components/EmojiView;)Landroid/graphics/Paint;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->dotPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdragListener(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$DragListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->dragListener:Lorg/telegram/ui/Components/EmojiView$DragListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetemojiAdapter(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetemojiContainer(Lorg/telegram/ui/Components/EmojiView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetemojiGridView(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetemojiLayoutManager(Lorg/telegram/ui/Components/EmojiView;)Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetemojiSearchAdapter(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSearchAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetemojiSearchField(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetemojiSmoothScrolling(Lorg/telegram/ui/Components/EmojiView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSmoothScrolling:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetemojiTabs(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiTabsStrip;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetemojiTabsShadow(Lorg/telegram/ui/Components/EmojiView;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabsShadow:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetemojiTitles(Lorg/telegram/ui/Components/EmojiView;)[Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTitles:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetemojiTouchedView(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTouchedView:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetemojiTouchedX(Lorg/telegram/ui/Components/EmojiView;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTouchedX:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetemojiTouchedY(Lorg/telegram/ui/Components/EmojiView;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTouchedY:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetemojipacksProcessed(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->emojipacksProcessed:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetexpandStickersByDragg(Lorg/telegram/ui/Components/EmojiView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiView;->expandStickersByDragg:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetexpandedEmojiSets(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->expandedEmojiSets:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfavTabNum(Lorg/telegram/ui/Components/EmojiView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/EmojiView;->favTabNum:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetfavouriteStickers(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->favouriteStickers:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfeaturedEmojiSets(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->featuredEmojiSets:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfeaturedStickerSets(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->featuredStickerSets:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfirstEmojiAttach(Lorg/telegram/ui/Components/EmojiView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiView;->firstEmojiAttach:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetfirstGifAttach(Lorg/telegram/ui/Components/EmojiView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiView;->firstGifAttach:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetfirstStickersAttach(Lorg/telegram/ui/Components/EmojiView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiView;->firstStickersAttach:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetfragment(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfrozen(Lorg/telegram/ui/Components/EmojiView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiView;->frozen:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetgifAdapter(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->gifAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetgifCache(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->gifCache:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetgifContainer(Lorg/telegram/ui/Components/EmojiView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->gifContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetgifFirstEmojiTabNum(Lorg/telegram/ui/Components/EmojiView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/EmojiView;->gifFirstEmojiTabNum:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetgifGridView(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetgifLayoutManager(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->gifLayoutManager:Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetgifRecentTabNum(Lorg/telegram/ui/Components/EmojiView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/EmojiView;->gifRecentTabNum:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetgifSearchAdapter(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetgifSearchField(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetgifSearchPreloader(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchPreloader:Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetgifTabs(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/ScrollSlidingTabStrip;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetgifTrendingTabNum(Lorg/telegram/ui/Components/EmojiView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/EmojiView;->gifTrendingTabNum:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetglassDesign(Lorg/telegram/ui/Components/EmojiView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiView;->glassDesign:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetgroupStickerPackNum(Lorg/telegram/ui/Components/EmojiView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/EmojiView;->groupStickerPackNum:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetgroupStickerPackPosition(Lorg/telegram/ui/Components/EmojiView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/EmojiView;->groupStickerPackPosition:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetgroupStickerSet(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->groupStickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetgroupStickersHidden(Lorg/telegram/ui/Components/EmojiView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiView;->groupStickersHidden:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgethasChatStickers(Lorg/telegram/ui/Components/EmojiView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiView;->hasChatStickers:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetignorePagerScroll(Lorg/telegram/ui/Components/EmojiView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiView;->ignorePagerScroll:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetignoreStickersScroll(Lorg/telegram/ui/Components/EmojiView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiView;->ignoreStickersScroll:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetinfo(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/tgnet/TLRPC$ChatFull;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinstallingStickerSets(Lorg/telegram/ui/Components/EmojiView;)Landroid/util/LongSparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->installingStickerSets:Landroid/util/LongSparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlastSearchKeyboardLanguage(Lorg/telegram/ui/Components/EmojiView;)[Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->lastSearchKeyboardLanguage:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlocation(Lorg/telegram/ui/Components/EmojiView;)[I
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->location:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetneedEmojiSearch(Lorg/telegram/ui/Components/EmojiView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiView;->needEmojiSearch:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpager(Lorg/telegram/ui/Components/EmojiView;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpremiumStickers(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->premiumStickers:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpremiumTabNum(Lorg/telegram/ui/Components/EmojiView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/EmojiView;->premiumTabNum:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetrecentGifs(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->recentGifs:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrecentStickers(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrecentTabNum(Lorg/telegram/ui/Components/EmojiView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabNum:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetremovingStickerSets(Lorg/telegram/ui/Components/EmojiView;)Landroid/util/LongSparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->removingStickerSets:Landroid/util/LongSparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetscrollableViewNoiseSuppressor(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchAnimation(Lorg/telegram/ui/Components/EmojiView;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->searchAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchFieldHeight(Lorg/telegram/ui/Components/EmojiView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/EmojiView;->searchFieldHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetshouldDrawBackground(Lorg/telegram/ui/Components/EmojiView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiView;->shouldDrawBackground:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetstickerSets(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstickerSettingsButton(Lorg/telegram/ui/Components/EmojiView;)Landroid/widget/ImageView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSettingsButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstickersContainer(Lorg/telegram/ui/Components/EmojiView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstickersContainerAttached(Lorg/telegram/ui/Components/EmojiView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersContainerAttached:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetstickersGridAdapter(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstickersGridView(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstickersLayoutManager(Lorg/telegram/ui/Components/EmojiView;)Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstickersSearchField(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstickersSearchGridAdapter(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersSearchGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstickersTab(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/ScrollSlidingTabStrip;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstickersTabContainer(Lorg/telegram/ui/Components/EmojiView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstickersTabOffset(Lorg/telegram/ui/Components/EmojiView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettabsMinusDy(Lorg/telegram/ui/Components/EmojiView;)[I
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->tabsMinusDy:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettrendingEmojiAdapter(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->trendingEmojiAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputanimateExpandFromButton(Lorg/telegram/ui/Components/EmojiView;Landroid/view/View;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->animateExpandFromButton:Landroid/view/View;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputanimateExpandFromPosition(Lorg/telegram/ui/Components/EmojiView;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/EmojiView;->animateExpandFromPosition:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputanimateExpandStartTime(Lorg/telegram/ui/Components/EmojiView;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lorg/telegram/ui/Components/EmojiView;->animateExpandStartTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputanimateExpandToPosition(Lorg/telegram/ui/Components/EmojiView;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/EmojiView;->animateExpandToPosition:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputanimatedEmojiDrawables(Lorg/telegram/ui/Components/EmojiView;Landroid/util/LongSparseArray;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->animatedEmojiDrawables:Landroid/util/LongSparseArray;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputbackspaceOnce(Lorg/telegram/ui/Components/EmojiView;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceOnce:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputbackspacePressed(Lorg/telegram/ui/Components/EmojiView;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->backspacePressed:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputemojiLastX(Lorg/telegram/ui/Components/EmojiView;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiLastX:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputemojiLastY(Lorg/telegram/ui/Components/EmojiView;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiLastY:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputemojiPackAlertOpened(Lorg/telegram/ui/Components/EmojiView;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiPackAlertOpened:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputemojiSmoothScrolling(Lorg/telegram/ui/Components/EmojiView;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSmoothScrolling:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputemojiTabShadowAnimator(Lorg/telegram/ui/Components/EmojiView;Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabShadowAnimator:Landroid/animation/AnimatorSet;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputemojiTouchedView(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTouchedView:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputemojiTouchedX(Lorg/telegram/ui/Components/EmojiView;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTouchedX:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputemojiTouchedY(Lorg/telegram/ui/Components/EmojiView;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTouchedY:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputexpandStickersByDragg(Lorg/telegram/ui/Components/EmojiView;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->expandStickersByDragg:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputfirstEmojiAttach(Lorg/telegram/ui/Components/EmojiView;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->firstEmojiAttach:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputfirstGifAttach(Lorg/telegram/ui/Components/EmojiView;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->firstGifAttach:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputfirstStickersAttach(Lorg/telegram/ui/Components/EmojiView;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->firstStickersAttach:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputgroupStickerPackPosition(Lorg/telegram/ui/Components/EmojiView;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/EmojiView;->groupStickerPackPosition:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputignorePagerScroll(Lorg/telegram/ui/Components/EmojiView;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->ignorePagerScroll:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputignoreStickersScroll(Lorg/telegram/ui/Components/EmojiView;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->ignoreStickersScroll:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastSearchKeyboardLanguage(Lorg/telegram/ui/Components/EmojiView;[Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->lastSearchKeyboardLanguage:[Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastStickersX(Lorg/telegram/ui/Components/EmojiView;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/EmojiView;->lastStickersX:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsearchAnimation(Lorg/telegram/ui/Components/EmojiView;Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->searchAnimation:Landroid/animation/AnimatorSet;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputstickersContainerAttached(Lorg/telegram/ui/Components/EmojiView;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersContainerAttached:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtrendingAdapter(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->trendingAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtrendingEmojiAdapter(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->trendingEmojiAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;

    return-void
.end method

.method static bridge synthetic -$$Nest$manimateTabsY(Lorg/telegram/ui/Components/EmojiView;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->animateTabsY(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckBottomTabScroll(Lorg/telegram/ui/Components/EmojiView;F)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->checkBottomTabScroll(F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckEmojiSearchFieldScroll(Lorg/telegram/ui/Components/EmojiView;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->checkEmojiSearchFieldScroll(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckEmojiTabY(Lorg/telegram/ui/Components/EmojiView;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView;->checkEmojiTabY(Landroid/view/View;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckGifSearchFieldScroll(Lorg/telegram/ui/Components/EmojiView;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->checkGifSearchFieldScroll(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckGridVisibility(Lorg/telegram/ui/Components/EmojiView;IF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView;->checkGridVisibility(IF)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckScroll(Lorg/telegram/ui/Components/EmojiView;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->checkScroll(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckStickersSearchFieldScroll(Lorg/telegram/ui/Components/EmojiView;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->checkStickersSearchFieldScroll(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckTabsY(Lorg/telegram/ui/Components/EmojiView;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView;->checkTabsY(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateStickersChooseActionTracker(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->createStickersChooseActionTracker()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetGlassIconColor(Lorg/telegram/ui/Components/EmojiView;F)I
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->getGlassIconColor(F)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetSearchFieldForType(Lorg/telegram/ui/Components/EmojiView;I)Lorg/telegram/ui/Components/EmojiView$SearchField;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->getSearchFieldForType(I)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetThemedColor(Lorg/telegram/ui/Components/EmojiView;I)I
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$minvalidateBlurCaptures(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->invalidateBlurCaptures()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monPageScrolled(Lorg/telegram/ui/Components/EmojiView;III)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/EmojiView;->onPageScrolled(III)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mopenPremiumAnimatedEmojiFeature(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->openPremiumAnimatedEmojiFeature()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mopenSearch(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/EmojiView$SearchField;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->openSearch(Lorg/telegram/ui/Components/EmojiView$SearchField;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mopenTrendingStickers(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/tgnet/TLRPC$StickerSetCovered;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->openTrendingStickers(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpostBackspaceRunnable(Lorg/telegram/ui/Components/EmojiView;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->postBackspaceRunnable(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreloadStickersAdapter(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->reloadStickersAdapter()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msaveNewPage(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->saveNewPage()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mscrollEmojisToPosition(Lorg/telegram/ui/Components/EmojiView;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView;->scrollEmojisToPosition(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mscrollGifsToTop(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->scrollGifsToTop()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendEmoji(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView;->sendEmoji(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowBackspaceButton(Lorg/telegram/ui/Components/EmojiView;ZZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView;->showBackspaceButton(ZZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowBottomTab(Lorg/telegram/ui/Components/EmojiView;ZZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView;->showBottomTab(ZZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowStickerSettingsButton(Lorg/telegram/ui/Components/EmojiView;ZZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView;->showStickerSettingsButton(ZZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartStopVisibleGifs(Lorg/telegram/ui/Components/EmojiView;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->startStopVisibleGifs(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopAnimatingTabsY(Lorg/telegram/ui/Components/EmojiView;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->stopAnimatingTabsY(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateEmojiHeaders(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateEmojiHeaders()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateEmojiTabsPosition(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateEmojiTabsPosition()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateEmojiTabsPosition(Lorg/telegram/ui/Components/EmojiView;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->updateEmojiTabsPosition(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateRecentGifs(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateRecentGifs()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateStickerTabs(Lorg/telegram/ui/Components/EmojiView;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateStickerTabsPosition(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabsPosition()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLandroid/content/Context;ZLorg/telegram/tgnet/TLRPC$ChatFull;Landroid/view/ViewGroup;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V
    .locals 13

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    .line 1583
    invoke-direct/range {v0 .. v12}, Lorg/telegram/ui/Components/EmojiView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLandroid/content/Context;ZLorg/telegram/tgnet/TLRPC$ChatFull;Landroid/view/ViewGroup;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZZ)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLandroid/content/Context;ZLorg/telegram/tgnet/TLRPC$ChatFull;Landroid/view/ViewGroup;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZZ)V
    .locals 38

    move-object/from16 v1, p0

    move-object/from16 v11, p1

    move/from16 v7, p2

    move/from16 v12, p3

    move/from16 v13, p4

    move-object/from16 v2, p5

    move/from16 v14, p6

    move-object/from16 v15, p8

    move/from16 v0, p9

    move-object/from16 v3, p10

    move/from16 v10, p12

    .line 1596
    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x2

    .line 177
    iput v4, v1, Lorg/telegram/ui/Components/EmojiView;->emojiCacheType:I

    .line 179
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Lorg/telegram/ui/Components/EmojiView;->allTabs:Ljava/util/ArrayList;

    .line 180
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Lorg/telegram/ui/Components/EmojiView;->currentTabs:Ljava/util/ArrayList;

    const/4 v5, 0x1

    .line 208
    iput-boolean v5, v1, Lorg/telegram/ui/Components/EmojiView;->firstEmojiAttach:Z

    const/4 v6, -0x1

    .line 210
    iput v6, v1, Lorg/telegram/ui/Components/EmojiView;->hasRecentEmoji:I

    .line 218
    new-instance v8, Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;

    const/4 v9, 0x0

    invoke-direct {v8, v1, v9}, Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;-><init>(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/EmojiView-IA;)V

    iput-object v8, v1, Lorg/telegram/ui/Components/EmojiView;->gifSearchPreloader:Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;

    .line 219
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, v1, Lorg/telegram/ui/Components/EmojiView;->gifCache:Ljava/util/Map;

    .line 224
    iput-boolean v5, v1, Lorg/telegram/ui/Components/EmojiView;->firstGifAttach:Z

    const/4 v8, -0x2

    .line 225
    iput v8, v1, Lorg/telegram/ui/Components/EmojiView;->gifRecentTabNum:I

    .line 226
    iput v8, v1, Lorg/telegram/ui/Components/EmojiView;->gifTrendingTabNum:I

    .line 227
    iput v8, v1, Lorg/telegram/ui/Components/EmojiView;->gifFirstEmojiTabNum:I

    .line 228
    iput-boolean v5, v1, Lorg/telegram/ui/Components/EmojiView;->shouldDrawBackground:Z

    .line 230
    iput-boolean v5, v1, Lorg/telegram/ui/Components/EmojiView;->shouldLightenBackground:Z

    .line 243
    iput-boolean v5, v1, Lorg/telegram/ui/Components/EmojiView;->firstStickersAttach:Z

    const/4 v9, 0x3

    .line 254
    new-array v5, v9, [I

    iput-object v5, v1, Lorg/telegram/ui/Components/EmojiView;->tabsMinusDy:[I

    .line 255
    new-array v5, v9, [Landroid/animation/ObjectAnimator;

    iput-object v5, v1, Lorg/telegram/ui/Components/EmojiView;->tabsYAnimators:[Landroid/animation/ObjectAnimator;

    .line 314
    sget v5, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v5, v1, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    .line 315
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    .line 321
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Lorg/telegram/ui/Components/EmojiView;->recentGifs:Ljava/util/ArrayList;

    .line 322
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    .line 323
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Lorg/telegram/ui/Components/EmojiView;->favouriteStickers:Ljava/util/ArrayList;

    .line 324
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Lorg/telegram/ui/Components/EmojiView;->premiumStickers:Ljava/util/ArrayList;

    .line 325
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Lorg/telegram/ui/Components/EmojiView;->featuredStickerSets:Ljava/util/ArrayList;

    .line 327
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Lorg/telegram/ui/Components/EmojiView;->featuredEmojiSets:Ljava/util/ArrayList;

    .line 328
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Lorg/telegram/ui/Components/EmojiView;->keepFeaturedDuplicate:Ljava/util/ArrayList;

    .line 329
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Lorg/telegram/ui/Components/EmojiView;->expandedEmojiSets:Ljava/util/ArrayList;

    .line 330
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Lorg/telegram/ui/Components/EmojiView;->installedEmojiSets:Ljava/util/ArrayList;

    .line 331
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Lorg/telegram/ui/Components/EmojiView;->emojipacksProcessed:Ljava/util/ArrayList;

    .line 332
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v1, Lorg/telegram/ui/Components/EmojiView;->toInstall:Ljava/util/HashMap;

    const/16 v5, 0xa

    .line 342
    new-array v5, v5, [Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    iput-object v5, v1, Lorg/telegram/ui/Components/EmojiView;->primaryInstallingStickerSets:[Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    .line 343
    new-instance v5, Landroid/util/LongSparseArray;

    invoke-direct {v5}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v5, v1, Lorg/telegram/ui/Components/EmojiView;->installingStickerSets:Landroid/util/LongSparseArray;

    .line 344
    new-instance v5, Landroid/util/LongSparseArray;

    invoke-direct {v5}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v5, v1, Lorg/telegram/ui/Components/EmojiView;->removingStickerSets:Landroid/util/LongSparseArray;

    .line 350
    new-array v5, v4, [I

    iput-object v5, v1, Lorg/telegram/ui/Components/EmojiView;->location:[I

    .line 352
    iput v8, v1, Lorg/telegram/ui/Components/EmojiView;->recentTabNum:I

    .line 353
    iput v8, v1, Lorg/telegram/ui/Components/EmojiView;->favTabNum:I

    .line 354
    iput v8, v1, Lorg/telegram/ui/Components/EmojiView;->trendingTabNum:I

    .line 355
    iput v8, v1, Lorg/telegram/ui/Components/EmojiView;->premiumTabNum:I

    .line 360
    iput v6, v1, Lorg/telegram/ui/Components/EmojiView;->currentBackgroundType:I

    .line 393
    new-instance v5, Lorg/telegram/ui/Components/EmojiView$1;

    invoke-direct {v5, v1}, Lorg/telegram/ui/Components/EmojiView$1;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    iput-object v5, v1, Lorg/telegram/ui/Components/EmojiView;->checkExpandStickerTabsRunnable:Ljava/lang/Runnable;

    .line 523
    new-instance v5, Lorg/telegram/ui/Components/EmojiView$2;

    invoke-direct {v5, v1}, Lorg/telegram/ui/Components/EmojiView$2;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    iput-object v5, v1, Lorg/telegram/ui/Components/EmojiView;->contentPreviewViewerDelegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    const/4 v5, 0x1

    .line 1492
    iput-boolean v5, v1, Lorg/telegram/ui/Components/EmojiView;->premiumBulletin:Z

    const/high16 v8, -0x40800000    # -1.0f

    .line 2939
    iput v8, v1, Lorg/telegram/ui/Components/EmojiView;->visibleInAppKeyboardHeight:F

    .line 2955
    iput v6, v1, Lorg/telegram/ui/Components/EmojiView;->animateExpandFromPosition:I

    iput v6, v1, Lorg/telegram/ui/Components/EmojiView;->animateExpandToPosition:I

    const-wide/16 v8, -0x1

    .line 2956
    iput-wide v8, v1, Lorg/telegram/ui/Components/EmojiView;->animateExpandStartTime:J

    const/4 v8, 0x0

    .line 4233
    iput-boolean v8, v1, Lorg/telegram/ui/Components/EmojiView;->emojiPackAlertOpened:Z

    .line 4386
    iput-boolean v5, v1, Lorg/telegram/ui/Components/EmojiView;->fixBottomTabContainerTranslation:Z

    .line 4419
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, v1, Lorg/telegram/ui/Components/EmojiView;->rect:Landroid/graphics/Rect;

    .line 4455
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    iput-object v9, v1, Lorg/telegram/ui/Components/EmojiView;->blurredRectF:Landroid/graphics/RectF;

    .line 4456
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, v1, Lorg/telegram/ui/Components/EmojiView;->blurredRectList:Ljava/util/ArrayList;

    .line 4457
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4492
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, v1, Lorg/telegram/ui/Components/EmojiView;->navbarFillPaint:Landroid/graphics/Paint;

    .line 4494
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    sget-object v6, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v9, 0x0

    invoke-direct {v5, v6, v9}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v5, v1, Lorg/telegram/ui/Components/EmojiView;->fadeDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 5064
    new-instance v21, Lme/vkryl/android/animator/BoolAnimator;

    new-instance v5, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda1;

    invoke-direct {v5, v1}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    sget-object v24, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v25, 0x17c

    const/16 v27, 0x1

    const/16 v22, 0x0

    move-object/from16 v23, v5

    invoke-direct/range {v21 .. v27}, Lme/vkryl/android/animator/BoolAnimator;-><init>(ILme/vkryl/android/animator/FactorAnimator$Target;Landroid/view/animation/Interpolator;JZ)V

    move-object/from16 v5, v21

    iput-object v5, v1, Lorg/telegram/ui/Components/EmojiView;->bottomTabVisibility:Lme/vkryl/android/animator/BoolAnimator;

    .line 6298
    new-instance v5, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda12;

    invoke-direct {v5, v1}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    iput-object v5, v1, Lorg/telegram/ui/Components/EmojiView;->updateStickersLoadedDelayed:Ljava/lang/Runnable;

    .line 1597
    iput-boolean v0, v1, Lorg/telegram/ui/Components/EmojiView;->shouldDrawBackground:Z

    .line 1598
    iput-object v11, v1, Lorg/telegram/ui/Components/EmojiView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1599
    iput-boolean v7, v1, Lorg/telegram/ui/Components/EmojiView;->allowAnimatedEmoji:Z

    .line 1600
    iput-object v3, v1, Lorg/telegram/ui/Components/EmojiView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 1601
    iput-boolean v10, v1, Lorg/telegram/ui/Components/EmojiView;->glassDesign:Z

    .line 1603
    new-instance v5, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;

    invoke-direct {v5}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;-><init>()V

    iput-object v5, v1, Lorg/telegram/ui/Components/EmojiView;->blurredBackgroundSourceColor:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;

    .line 1604
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-direct {v1, v6}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;->setColor(I)V

    if-eqz p11, :cond_0

    const/4 v6, 0x1

    .line 1607
    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/EmojiView;->freeze(Z)V

    .line 1610
    :cond_0
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_glass_defaultIcon:I

    invoke-direct {v1, v6}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v6

    const/16 v9, 0x1e

    invoke-static {v6, v9}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    const/high16 v6, 0x42480000    # 50.0f

    .line 1612
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iput v6, v1, Lorg/telegram/ui/Components/EmojiView;->searchFieldHeight:I

    .line 1613
    iput-boolean v14, v1, Lorg/telegram/ui/Components/EmojiView;->needEmojiSearch:Z

    .line 1615
    sget v6, Lorg/telegram/messenger/R$drawable;->smiles_tab_smiles:I

    const v9, 0x3ecccccd    # 0.4f

    if-eqz v10, :cond_1

    .line 1616
    invoke-direct {v1, v9}, Lorg/telegram/ui/Components/EmojiView;->getGlassIconColor(F)I

    move-result v21

    move/from16 v22, v21

    move/from16 v21, v8

    move/from16 v8, v22

    :goto_0
    move/from16 v22, v4

    goto :goto_1

    :cond_1
    move/from16 v21, v8

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelBackspace:I

    invoke-direct {v1, v8}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v8

    goto :goto_0

    :goto_1
    const v4, 0x3f4ccccd    # 0.8f

    if-eqz v10, :cond_2

    invoke-direct {v1, v4}, Lorg/telegram/ui/Components/EmojiView;->getGlassIconColor(F)I

    move-result v23

    :goto_2
    move/from16 v4, v23

    goto :goto_3

    :cond_2
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelIconSelected:I

    invoke-direct {v1, v4}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v23

    goto :goto_2

    :goto_3
    invoke-static {v2, v6, v8, v4}, Lorg/telegram/ui/ActionBar/Theme;->createEmojiIconSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/R$drawable;->smiles_tab_gif:I

    if-eqz v10, :cond_3

    .line 1617
    invoke-direct {v1, v9}, Lorg/telegram/ui/Components/EmojiView;->getGlassIconColor(F)I

    move-result v8

    goto :goto_4

    :cond_3
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelBackspace:I

    invoke-direct {v1, v8}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v8

    :goto_4
    if-eqz v10, :cond_4

    const v9, 0x3f4ccccd    # 0.8f

    invoke-direct {v1, v9}, Lorg/telegram/ui/Components/EmojiView;->getGlassIconColor(F)I

    move-result v24

    :goto_5
    move/from16 v9, v24

    goto :goto_6

    :cond_4
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelIconSelected:I

    invoke-direct {v1, v9}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v24

    goto :goto_5

    :goto_6
    invoke-static {v2, v6, v8, v9}, Lorg/telegram/ui/ActionBar/Theme;->createEmojiIconSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    sget v8, Lorg/telegram/messenger/R$drawable;->smiles_tab_stickers:I

    if-eqz v10, :cond_5

    const v9, 0x3ecccccd    # 0.4f

    .line 1618
    invoke-direct {v1, v9}, Lorg/telegram/ui/Components/EmojiView;->getGlassIconColor(F)I

    move-result v24

    :goto_7
    move/from16 v9, v24

    goto :goto_8

    :cond_5
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelBackspace:I

    invoke-direct {v1, v9}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v24

    goto :goto_7

    :goto_8
    if-eqz v10, :cond_6

    const v0, 0x3f4ccccd    # 0.8f

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/EmojiView;->getGlassIconColor(F)I

    move-result v24

    :goto_9
    move/from16 v0, v24

    goto :goto_a

    :cond_6
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelIconSelected:I

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v24

    goto :goto_9

    :goto_a
    invoke-static {v2, v8, v9, v0}, Lorg/telegram/ui/ActionBar/Theme;->createEmojiIconSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v8, 0x3

    new-array v9, v8, [Landroid/graphics/drawable/Drawable;

    aput-object v4, v9, v21

    const/16 v17, 0x1

    aput-object v6, v9, v17

    aput-object v0, v9, v22

    iput-object v9, v1, Lorg/telegram/ui/Components/EmojiView;->tabIcons:[Landroid/graphics/drawable/Drawable;

    .line 1621
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_emoji_recent:I

    if-eqz v10, :cond_7

    const v9, 0x3ecccccd    # 0.4f

    .line 1622
    invoke-direct {v1, v9}, Lorg/telegram/ui/Components/EmojiView;->getGlassIconColor(F)I

    move-result v4

    goto :goto_b

    :cond_7
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelIcon:I

    invoke-direct {v1, v4}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v4

    :goto_b
    if-eqz v10, :cond_8

    const v9, 0x3f4ccccd    # 0.8f

    invoke-direct {v1, v9}, Lorg/telegram/ui/Components/EmojiView;->getGlassIconColor(F)I

    move-result v6

    goto :goto_c

    :cond_8
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelIconSelected:I

    invoke-direct {v1, v6}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v6

    :goto_c
    invoke-static {v2, v0, v4, v6}, Lorg/telegram/ui/ActionBar/Theme;->createEmojiIconSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v4, Lorg/telegram/messenger/R$drawable;->emoji_tabs_faves:I

    if-eqz v10, :cond_9

    const v9, 0x3ecccccd    # 0.4f

    .line 1623
    invoke-direct {v1, v9}, Lorg/telegram/ui/Components/EmojiView;->getGlassIconColor(F)I

    move-result v6

    goto :goto_d

    :cond_9
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelIcon:I

    invoke-direct {v1, v6}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v6

    :goto_d
    if-eqz v10, :cond_a

    const v9, 0x3f4ccccd    # 0.8f

    invoke-direct {v1, v9}, Lorg/telegram/ui/Components/EmojiView;->getGlassIconColor(F)I

    move-result v8

    goto :goto_e

    :cond_a
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelIconSelected:I

    invoke-direct {v1, v8}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v8

    :goto_e
    invoke-static {v2, v4, v6, v8}, Lorg/telegram/ui/ActionBar/Theme;->createEmojiIconSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/R$drawable;->emoji_tabs_new3:I

    if-eqz v10, :cond_b

    const v9, 0x3ecccccd    # 0.4f

    .line 1624
    invoke-direct {v1, v9}, Lorg/telegram/ui/Components/EmojiView;->getGlassIconColor(F)I

    move-result v8

    goto :goto_f

    :cond_b
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelIcon:I

    invoke-direct {v1, v8}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v8

    :goto_f
    if-eqz v10, :cond_c

    const v9, 0x3f4ccccd    # 0.8f

    invoke-direct {v1, v9}, Lorg/telegram/ui/Components/EmojiView;->getGlassIconColor(F)I

    move-result v24

    :goto_10
    move/from16 v9, v24

    goto :goto_11

    :cond_c
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelIconSelected:I

    invoke-direct {v1, v9}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v24

    goto :goto_10

    :goto_11
    invoke-static {v2, v6, v8, v9}, Lorg/telegram/ui/ActionBar/Theme;->createEmojiIconSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    new-instance v8, Landroid/graphics/drawable/LayerDrawable;

    sget v9, Lorg/telegram/messenger/R$drawable;->emoji_tabs_new1:I

    move-object/from16 v24, v0

    if-eqz v10, :cond_d

    const v0, 0x3ecccccd    # 0.4f

    .line 1626
    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/EmojiView;->getGlassIconColor(F)I

    move-result v25

    :goto_12
    move/from16 v0, v25

    goto :goto_13

    :cond_d
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelIcon:I

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v25

    goto :goto_12

    :goto_13
    move-object/from16 v25, v4

    if-eqz v10, :cond_e

    const v4, 0x3f4ccccd    # 0.8f

    invoke-direct {v1, v4}, Lorg/telegram/ui/Components/EmojiView;->getGlassIconColor(F)I

    move-result v26

    :goto_14
    move/from16 v4, v26

    goto :goto_15

    :cond_e
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelIconSelected:I

    invoke-direct {v1, v4}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v26

    goto :goto_14

    :goto_15
    invoke-static {v2, v9, v0, v4}, Lorg/telegram/ui/ActionBar/Theme;->createEmojiIconSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->searchIconDrawable:Landroid/graphics/drawable/Drawable;

    sget v4, Lorg/telegram/messenger/R$drawable;->emoji_tabs_new2:I

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelStickerPackSelectorLine:I

    move-object/from16 v26, v0

    .line 1627
    invoke-direct {v1, v9}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v0

    move-object/from16 v27, v5

    invoke-direct {v1, v9}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v5

    invoke-static {v2, v4, v0, v5}, Lorg/telegram/ui/ActionBar/Theme;->createEmojiIconSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->searchIconDotDrawable:Landroid/graphics/drawable/Drawable;

    move/from16 v4, v22

    new-array v5, v4, [Landroid/graphics/drawable/Drawable;

    aput-object v26, v5, v21

    const/16 v17, 0x1

    aput-object v0, v5, v17

    invoke-direct {v8, v5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x4

    new-array v5, v0, [Landroid/graphics/drawable/Drawable;

    aput-object v24, v5, v21

    aput-object v25, v5, v17

    aput-object v6, v5, v4

    const/16 v18, 0x3

    aput-object v8, v5, v18

    iput-object v5, v1, Lorg/telegram/ui/Components/EmojiView;->stickerIcons:[Landroid/graphics/drawable/Drawable;

    .line 1631
    sget v4, Lorg/telegram/messenger/R$drawable;->msg_emoji_recent:I

    if-eqz v10, :cond_f

    const v5, 0x3ecccccd    # 0.4f

    .line 1632
    invoke-direct {v1, v5}, Lorg/telegram/ui/Components/EmojiView;->getGlassIconColor(F)I

    move-result v6

    goto :goto_16

    :cond_f
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelIcon:I

    invoke-direct {v1, v5}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v6

    :goto_16
    if-eqz v10, :cond_10

    const v5, 0x3f4ccccd    # 0.8f

    invoke-direct {v1, v5}, Lorg/telegram/ui/Components/EmojiView;->getGlassIconColor(F)I

    move-result v8

    goto :goto_17

    :cond_10
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelIconSelected:I

    invoke-direct {v1, v5}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v8

    :goto_17
    invoke-static {v2, v4, v6, v8}, Lorg/telegram/ui/ActionBar/Theme;->createEmojiIconSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->stickers_gifs_trending:I

    if-eqz v10, :cond_11

    const v6, 0x3ecccccd    # 0.4f

    .line 1633
    invoke-direct {v1, v6}, Lorg/telegram/ui/Components/EmojiView;->getGlassIconColor(F)I

    move-result v6

    goto :goto_18

    :cond_11
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelIcon:I

    invoke-direct {v1, v6}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v6

    :goto_18
    if-eqz v10, :cond_12

    const v8, 0x3f4ccccd    # 0.8f

    invoke-direct {v1, v8}, Lorg/telegram/ui/Components/EmojiView;->getGlassIconColor(F)I

    move-result v8

    goto :goto_19

    :cond_12
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelIconSelected:I

    invoke-direct {v1, v8}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v8

    :goto_19
    invoke-static {v2, v5, v6, v8}, Lorg/telegram/ui/ActionBar/Theme;->createEmojiIconSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x2

    new-array v8, v6, [Landroid/graphics/drawable/Drawable;

    aput-object v4, v8, v21

    const/16 v17, 0x1

    aput-object v5, v8, v17

    iput-object v8, v1, Lorg/telegram/ui/Components/EmojiView;->gifIcons:[Landroid/graphics/drawable/Drawable;

    .line 1636
    sget v4, Lorg/telegram/messenger/R$string;->Emoji1:I

    .line 1637
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v28

    sget v4, Lorg/telegram/messenger/R$string;->Emoji2:I

    .line 1638
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v29

    sget v4, Lorg/telegram/messenger/R$string;->Emoji3:I

    .line 1639
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v30

    sget v4, Lorg/telegram/messenger/R$string;->Emoji4:I

    .line 1640
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v31

    sget v4, Lorg/telegram/messenger/R$string;->Emoji5:I

    .line 1641
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v32

    sget v4, Lorg/telegram/messenger/R$string;->Emoji6:I

    .line 1642
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v33

    sget v4, Lorg/telegram/messenger/R$string;->Emoji7:I

    .line 1643
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v34

    sget v4, Lorg/telegram/messenger/R$string;->Emoji8:I

    .line 1644
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v35

    filled-new-array/range {v28 .. v35}, [Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lorg/telegram/ui/Components/EmojiView;->emojiTitles:[Ljava/lang/String;

    .line 1647
    iput-boolean v13, v1, Lorg/telegram/ui/Components/EmojiView;->showGifs:Z

    move-object/from16 v4, p7

    .line 1648
    iput-object v4, v1, Lorg/telegram/ui/Components/EmojiView;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 1650
    new-instance v4, Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, v1, Lorg/telegram/ui/Components/EmojiView;->dotPaint:Landroid/graphics/Paint;

    .line 1651
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelNewTrending:I

    invoke-direct {v1, v5}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1653
    new-instance v4, Lorg/telegram/ui/Components/EmojiView$4;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Components/EmojiView$4;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    iput-object v4, v1, Lorg/telegram/ui/Components/EmojiView;->outlineProvider:Ljava/lang/Object;

    .line 1660
    new-instance v4, Lorg/telegram/ui/Components/EmojiView$5;

    invoke-direct {v4, v1, v2}, Lorg/telegram/ui/Components/EmojiView$5;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    iput-object v4, v1, Lorg/telegram/ui/Components/EmojiView;->emojiContainer:Landroid/widget/FrameLayout;

    .line 1677
    new-instance v4, Lorg/telegram/ui/Components/EmojiView$Tab;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Lorg/telegram/ui/Components/EmojiView$Tab;-><init>(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/EmojiView-IA;)V

    move/from16 v5, v21

    .line 1678
    iput v5, v4, Lorg/telegram/ui/Components/EmojiView$Tab;->type:I

    .line 1679
    iget-object v5, v1, Lorg/telegram/ui/Components/EmojiView;->emojiContainer:Landroid/widget/FrameLayout;

    iput-object v5, v4, Lorg/telegram/ui/Components/EmojiView$Tab;->view:Landroid/view/View;

    .line 1680
    iget-object v5, v1, Lorg/telegram/ui/Components/EmojiView;->allTabs:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x5

    if-eqz v7, :cond_13

    .line 1683
    iget v5, v1, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/telegram/messenger/MediaDataController;->checkStickers(I)V

    .line 1684
    iget v5, v1, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MediaDataController;->checkFeaturedEmoji()V

    .line 1685
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-direct {v1, v8}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v8

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v8, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v5, v1, Lorg/telegram/ui/Components/EmojiView;->animatedEmojiTextColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 1687
    :cond_13
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    .line 1688
    new-instance v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    const-wide/16 v4, 0x0

    .line 1689
    invoke-virtual {v0, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setAddDelay(J)V

    const-wide/16 v4, 0xdc

    .line 1690
    invoke-virtual {v0, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setAddDuration(J)V

    .line 1691
    invoke-virtual {v0, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveDuration(J)V

    const-wide/16 v4, 0xa0

    .line 1692
    invoke-virtual {v0, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    .line 1693
    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1694
    iget-object v4, v1, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 1695
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    new-instance v4, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda17;

    invoke-direct {v4, v1, v3}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1696
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    new-instance v4, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda18;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 1760
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setInstantClick(Z)V

    .line 1761
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    new-instance v4, Lorg/telegram/ui/Components/EmojiView$6;

    const/16 v5, 0x8

    invoke-direct {v4, v1, v2, v5}, Lorg/telegram/ui/Components/EmojiView$6;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;I)V

    iput-object v4, v1, Lorg/telegram/ui/Components/EmojiView;->emojiLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1778
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    const/high16 v4, 0x42180000    # 38.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setTopGlowOffset(I)V

    .line 1779
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    const/high16 v4, 0x42100000    # 36.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/RecyclerView;->setBottomGlowOffset(I)V

    .line 1780
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    const/high16 v8, 0x40a00000    # 5.0f

    move/from16 v22, v4

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    const/high16 v24, 0x42300000    # 44.0f

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v0, v4, v5, v8, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 1781
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelBackground:I

    invoke-direct {v1, v4}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    .line 1782
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    const/16 v5, 0x64

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setSelectorType(I)V

    .line 1783
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setSelectorDrawableColor(I)V

    .line 1784
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    new-instance v6, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda19;

    invoke-direct {v6}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda19;-><init>()V

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setItemSelectorColorProvider(Lorg/telegram/messenger/GenericProvider;)V

    .line 1785
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 1786
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->emojiLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    new-instance v6, Lorg/telegram/ui/Components/EmojiView$7;

    invoke-direct {v6, v1}, Lorg/telegram/ui/Components/EmojiView$7;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 1818
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    new-instance v6, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    const/4 v8, 0x0

    invoke-direct {v6, v1, v8}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;-><init>(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/EmojiView-IA;)V

    iput-object v6, v1, Lorg/telegram/ui/Components/EmojiView;->emojiAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1819
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    new-instance v6, Lorg/telegram/ui/Components/EmojiView$EmojiGridSpacing;

    invoke-direct {v6, v1}, Lorg/telegram/ui/Components/EmojiView$EmojiGridSpacing;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 1820
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

    invoke-direct {v0, v1, v8}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;-><init>(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/EmojiView-IA;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->emojiSearchAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

    .line 1821
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->emojiContainer:Landroid/widget/FrameLayout;

    iget-object v6, v1, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    const/4 v5, -0x1

    const/high16 v8, -0x40800000    # -1.0f

    invoke-static {v5, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1822
    new-instance v0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    iget-object v2, v1, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    iget-object v6, v1, Lorg/telegram/ui/Components/EmojiView;->emojiLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v0, v2, v6}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->emojiScrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    .line 1823
    new-instance v2, Lorg/telegram/ui/Components/EmojiView$8;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/EmojiView$8;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->setAnimationCallback(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimationCallback;)V

    .line 1844
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    new-instance v2, Lorg/telegram/ui/Components/EmojiView$9;

    const/4 v6, 0x1

    invoke-direct {v2, v1, v6}, Lorg/telegram/ui/Components/EmojiView$9;-><init>(Lorg/telegram/ui/Components/EmojiView;I)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 1864
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$10;

    if-eqz v11, :cond_14

    new-instance v2, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda20;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    move/from16 v17, v9

    move-object v9, v2

    move/from16 v2, v17

    :goto_1a
    move/from16 v17, v4

    goto :goto_1b

    :cond_14
    move v2, v9

    const/4 v9, 0x0

    goto :goto_1a

    :goto_1b
    const/4 v4, 0x1

    move/from16 v20, v5

    const/4 v5, 0x0

    move/from16 v19, v6

    const/4 v6, 0x1

    move/from16 v26, v8

    const/4 v8, 0x0

    move/from16 v37, v2

    move/from16 v11, v17

    move/from16 v14, v19

    move-object/from16 v36, v27

    move-object/from16 v2, p5

    .line 1868
    invoke-direct/range {v0 .. v10}, Lorg/telegram/ui/Components/EmojiView$10;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZZZZILjava/lang/Runnable;Z)V

    iput-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    if-eqz p6, :cond_15

    .line 1952
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$11;

    invoke-direct {v0, v1, v2, v14}, Lorg/telegram/ui/Components/EmojiView$11;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;I)V

    iput-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->emojiSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    .line 1961
    iget-object v4, v1, Lorg/telegram/ui/Components/EmojiView;->emojiContainer:Landroid/widget/FrameLayout;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    iget v6, v1, Lorg/telegram/ui/Components/EmojiView;->searchFieldHeight:I

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v7

    add-int/2addr v6, v7

    const/4 v7, -0x1

    invoke-direct {v5, v7, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1962
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->emojiSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$SearchField;->-$$Nest$fgetsearchEditText(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    new-instance v4, Lorg/telegram/ui/Components/EmojiView$12;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Components/EmojiView$12;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_1c

    :cond_15
    const/4 v7, -0x1

    .line 1973
    :goto_1c
    invoke-direct {v1, v11}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v0

    .line 1974
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    const/16 v5, 0xff

    if-lt v4, v5, :cond_16

    .line 1975
    iget-object v4, v1, Lorg/telegram/ui/Components/EmojiView;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1977
    :cond_16
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->emojiAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    invoke-virtual {v0, v14}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->processEmoji(Z)V

    .line 1978
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmojiView;->getEmojipacks()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/EmojiTabsStrip;->updateEmojiPacks(Ljava/util/ArrayList;)V

    .line 1979
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->emojiContainer:Landroid/widget/FrameLayout;

    iget-object v4, v1, Lorg/telegram/ui/Components/EmojiView;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    const/high16 v5, 0x42100000    # 36.0f

    invoke-static {v7, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1981
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->emojiTabsShadow:Landroid/view/View;

    const/4 v4, 0x0

    .line 1982
    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1983
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->emojiTabsShadow:Landroid/view/View;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1984
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->emojiTabsShadow:Landroid/view/View;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelShadowLine:I

    invoke-direct {v1, v6}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1985
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v4

    const/16 v8, 0x33

    invoke-direct {v0, v7, v4, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/high16 v22, 0x42100000    # 36.0f

    .line 1986
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1987
    iget-object v4, v1, Lorg/telegram/ui/Components/EmojiView;->emojiContainer:Landroid/widget/FrameLayout;

    iget-object v5, v1, Lorg/telegram/ui/Components/EmojiView;->emojiTabsShadow:Landroid/view/View;

    invoke-virtual {v4, v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v12, :cond_1a

    if-eqz v13, :cond_17

    .line 1991
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$13;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/EmojiView$13;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->gifContainer:Landroid/widget/FrameLayout;

    .line 2004
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$Tab;

    const/4 v9, 0x0

    invoke-direct {v0, v1, v9}, Lorg/telegram/ui/Components/EmojiView$Tab;-><init>(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/EmojiView-IA;)V

    .line 2005
    iput v14, v0, Lorg/telegram/ui/Components/EmojiView$Tab;->type:I

    .line 2006
    iget-object v4, v1, Lorg/telegram/ui/Components/EmojiView;->gifContainer:Landroid/widget/FrameLayout;

    iput-object v4, v0, Lorg/telegram/ui/Components/EmojiView$Tab;->view:Landroid/view/View;

    .line 2007
    iget-object v4, v1, Lorg/telegram/ui/Components/EmojiView;->allTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2009
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$14;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/EmojiView$14;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v5, 0x0

    .line 2051
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 2052
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    invoke-direct {v4, v1, v2}, Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    iput-object v4, v1, Lorg/telegram/ui/Components/EmojiView;->gifLayoutManager:Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 2053
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/ui/Components/EmojiView$15;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Components/EmojiView$15;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 2073
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v4, v1, Lorg/telegram/ui/Components/EmojiView;->searchFieldHeight:I

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iget v10, v1, Lorg/telegram/ui/Components/EmojiView;->bottomInset:I

    add-int/2addr v5, v10

    const/4 v10, 0x0

    invoke-virtual {v0, v10, v4, v10, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 2074
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/view/View;->setOverScrollMode(I)V

    .line 2075
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 2076
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    invoke-direct {v5, v1, v2, v14}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;Z)V

    iput-object v5, v1, Lorg/telegram/ui/Components/EmojiView;->gifAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 2077
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->gifSearchAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    .line 2078
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/ui/Components/EmojiView$16;

    invoke-direct {v5, v1, v4}, Lorg/telegram/ui/Components/EmojiView$16;-><init>(Lorg/telegram/ui/Components/EmojiView;I)V

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 2088
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda21;

    invoke-direct {v5, v1, v3}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2089
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda22;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->gifOnItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    .line 2121
    iget-object v5, v1, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 2122
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->gifContainer:Landroid/widget/FrameLayout;

    iget-object v5, v1, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v10, -0x40800000    # -1.0f

    invoke-static {v7, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v0, v5, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2124
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$17;

    invoke-direct {v0, v1, v2, v4}, Lorg/telegram/ui/Components/EmojiView$17;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;I)V

    iput-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->gifSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    .line 2134
    iget-object v5, v1, Lorg/telegram/ui/Components/EmojiView;->gifContainer:Landroid/widget/FrameLayout;

    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    iget v8, v1, Lorg/telegram/ui/Components/EmojiView;->searchFieldHeight:I

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v16

    add-int v8, v8, v16

    invoke-direct {v10, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v0, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2136
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    .line 2137
    sget-object v5, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$Type;->TAB:Lorg/telegram/ui/Components/ScrollSlidingTabStrip$Type;

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setType(Lorg/telegram/ui/Components/ScrollSlidingTabStrip$Type;)V

    .line 2138
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v5

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setUnderlineHeight(I)V

    .line 2139
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    move/from16 v8, v37

    invoke-direct {v1, v8}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setIndicatorColor(I)V

    .line 2140
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-direct {v1, v6}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setUnderlineColor(I)V

    .line 2141
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-direct {v1, v11}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2143
    invoke-direct {v1}, Lorg/telegram/ui/Components/EmojiView;->updateGifTabs()V

    .line 2145
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    new-instance v5, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda23;

    invoke-direct {v5, v1}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setDelegate(Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;)V

    .line 2177
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->gifAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->loadTrendingGifs()V

    goto :goto_1d

    :cond_17
    move/from16 v8, v37

    const/4 v4, 0x2

    const/4 v9, 0x0

    .line 2180
    :goto_1d
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$18;

    move/from16 v5, p9

    invoke-direct {v0, v1, v2, v5}, Lorg/telegram/ui/Components/EmojiView$18;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;Z)V

    iput-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->stickersContainer:Landroid/widget/FrameLayout;

    .line 2219
    iget v0, v1, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Lorg/telegram/messenger/MediaDataController;->checkStickers(I)V

    .line 2220
    iget v0, v1, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->checkFeaturedStickers()V

    .line 2221
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$19;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/EmojiView$19;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 2268
    new-instance v10, Lorg/telegram/ui/Components/EmojiView$20;

    const/4 v14, 0x5

    invoke-direct {v10, v1, v2, v14}, Lorg/telegram/ui/Components/EmojiView$20;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;I)V

    iput-object v10, v1, Lorg/telegram/ui/Components/EmojiView;->stickersLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 2294
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->stickersLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    new-instance v10, Lorg/telegram/ui/Components/EmojiView$21;

    invoke-direct {v10, v1}, Lorg/telegram/ui/Components/EmojiView$21;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 2319
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v22, 0x42100000    # 36.0f

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v10, v7, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 2320
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 2322
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$Tab;

    invoke-direct {v0, v1, v9}, Lorg/telegram/ui/Components/EmojiView$Tab;-><init>(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/EmojiView-IA;)V

    .line 2323
    iput v4, v0, Lorg/telegram/ui/Components/EmojiView$Tab;->type:I

    .line 2324
    iget-object v7, v1, Lorg/telegram/ui/Components/EmojiView;->stickersContainer:Landroid/widget/FrameLayout;

    iput-object v7, v0, Lorg/telegram/ui/Components/EmojiView$Tab;->view:Landroid/view/View;

    .line 2325
    iget-object v7, v1, Lorg/telegram/ui/Components/EmojiView;->allTabs:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2326
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->stickersSearchGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    .line 2327
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v7, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    invoke-direct {v7, v1, v2}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    iput-object v7, v1, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 2328
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v7, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda24;

    invoke-direct {v7, v1, v3}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2329
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda2;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->stickersOnItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    .line 2355
    iget-object v7, v1, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 2356
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v1, v11}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v7

    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    .line 2357
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->stickersContainer:Landroid/widget/FrameLayout;

    iget-object v7, v1, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2358
    new-instance v0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    iget-object v7, v1, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v10, v1, Lorg/telegram/ui/Components/EmojiView;->stickersLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v0, v7, v10}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->stickersScrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    .line 2360
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$22;

    const/4 v10, 0x0

    invoke-direct {v0, v1, v2, v10}, Lorg/telegram/ui/Components/EmojiView$22;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;I)V

    iput-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->stickersSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    .line 2369
    iget-object v7, v1, Lorg/telegram/ui/Components/EmojiView;->stickersContainer:Landroid/widget/FrameLayout;

    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    iget v14, v1, Lorg/telegram/ui/Components/EmojiView;->searchFieldHeight:I

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v16

    add-int v14, v14, v16

    const/4 v4, -0x1

    invoke-direct {v10, v4, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v0, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2371
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$23;

    move-object/from16 v4, p1

    const/16 v22, 0x2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/EmojiView$23;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    iput-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    const/4 v14, 0x1

    .line 2463
    invoke-virtual {v0, v14}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setDragEnabled(Z)V

    .line 2464
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 2465
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    sget-object v4, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$Type;->TAB:Lorg/telegram/ui/Components/ScrollSlidingTabStrip$Type;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setType(Lorg/telegram/ui/Components/ScrollSlidingTabStrip$Type;)V

    .line 2466
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget-object v4, v1, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v7, -0x1

    invoke-virtual {v4, v7}, Lorg/telegram/ui/Components/RecyclerListView;->canScrollVertically(I)Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v4

    goto :goto_1e

    :cond_18
    const/4 v4, 0x0

    :goto_1e
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setUnderlineHeight(I)V

    .line 2468
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setIndicatorColor(I)V

    .line 2469
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-direct {v1, v6}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setUnderlineColor(I)V

    const/16 v0, 0x24

    if-eqz v15, :cond_19

    if-eqz v5, :cond_19

    .line 2471
    new-instance v4, Lorg/telegram/ui/Components/EmojiView$24;

    invoke-direct {v4, v1, v2}, Lorg/telegram/ui/Components/EmojiView$24;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    iput-object v4, v1, Lorg/telegram/ui/Components/EmojiView;->stickersTabContainer:Landroid/widget/FrameLayout;

    .line 2498
    iget-object v6, v1, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    const/16 v7, 0x33

    const/4 v8, -0x1

    invoke-static {v8, v0, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2499
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->stickersTabContainer:Landroid/widget/FrameLayout;

    const/high16 v4, -0x40000000    # -2.0f

    invoke-static {v8, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v15, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1f
    const/4 v6, 0x1

    goto :goto_20

    :cond_19
    const/16 v7, 0x33

    const/4 v8, -0x1

    .line 2501
    iget-object v4, v1, Lorg/telegram/ui/Components/EmojiView;->stickersContainer:Landroid/widget/FrameLayout;

    iget-object v6, v1, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-static {v8, v0, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1f

    .line 2503
    :goto_20
    invoke-direct {v1, v6}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs(Z)V

    .line 2504
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    new-instance v4, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda3;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setDelegate(Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;)V

    .line 2563
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;

    const/4 v10, 0x0

    invoke-direct {v4, v1, v10}, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;-><init>(Lorg/telegram/ui/Components/EmojiView;I)V

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    goto :goto_21

    :cond_1a
    move/from16 v5, p9

    const/4 v9, 0x0

    const/16 v22, 0x2

    .line 2566
    :goto_21
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->currentTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2567
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->currentTabs:Ljava/util/ArrayList;

    iget-object v4, v1, Lorg/telegram/ui/Components/EmojiView;->allTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2569
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$25;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/EmojiView$25;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    .line 2609
    new-instance v4, Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;

    invoke-direct {v4, v1, v9}, Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;-><init>(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/EmojiView-IA;)V

    iput-object v4, v1, Lorg/telegram/ui/Components/EmojiView;->emojiPagerAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;

    invoke-virtual {v0, v4}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 2611
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$26;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/EmojiView$26;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    const/4 v6, 0x1

    .line 2632
    invoke-virtual {v0, v6}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 2633
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    sget v4, Lorg/telegram/messenger/R$drawable;->smiles_tab_clear:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2634
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    const v6, 0x3f19999a    # 0.6f

    if-eqz p12, :cond_1b

    invoke-direct {v1, v6}, Lorg/telegram/ui/Components/EmojiView;->getGlassIconColor(F)I

    move-result v7

    goto :goto_22

    :cond_1b
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelBackspace:I

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v7

    :goto_22
    sget-object v8, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v7, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2635
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2636
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    sget v7, Lorg/telegram/messenger/R$string;->AccDescrBackspace:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2637
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    const/4 v14, 0x1

    invoke-virtual {v0, v14}, Landroid/view/View;->setFocusable(Z)V

    .line 2638
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    new-instance v7, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda4;

    invoke-direct {v7}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v0, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2641
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    .line 2643
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->bulletinContainer:Landroid/widget/FrameLayout;

    const/high16 v7, 0x42200000    # 40.0f

    if-eqz p6, :cond_1c

    .line 2645
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v10

    int-to-float v10, v10

    sget v14, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v10, v14

    add-float v30, v10, v7

    const/16 v24, -0x1

    const/high16 v25, 0x42c80000    # 100.0f

    const/16 v26, 0x57

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-static/range {v24 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v1, v0, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_23

    :cond_1c
    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v24, -0x1

    const/high16 v25, 0x42c80000    # 100.0f

    const/16 v26, 0x57

    const/16 v27, 0x0

    const/16 v28, 0x0

    .line 2647
    invoke-static/range {v24 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v1, v0, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2650
    :goto_23
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainer:Landroid/widget/FrameLayout;

    .line 2652
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainerBackground:Landroid/view/View;

    .line 2653
    iget-object v10, v1, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainer:Landroid/widget/FrameLayout;

    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    const/16 v7, 0x53

    const/4 v9, -0x1

    invoke-direct {v14, v9, v15, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v10, v0, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x50

    if-eqz p6, :cond_20

    .line 2656
    iget-object v7, v1, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainer:Landroid/widget/FrameLayout;

    const/16 v10, 0x30

    invoke-static {v9, v10, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2657
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainer:Landroid/widget/FrameLayout;

    iget-object v7, v1, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    const/high16 v29, 0x40000000    # 2.0f

    const/16 v30, 0x0

    const/16 v24, 0x30

    const/high16 v25, 0x42400000    # 48.0f

    const/16 v26, 0x55

    const/high16 v27, 0x40000000    # 2.0f

    const/16 v28, 0x0

    invoke-static/range {v24 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v12, :cond_1e

    .line 2660
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->stickerSettingsButton:Landroid/widget/ImageView;

    .line 2661
    sget v7, Lorg/telegram/messenger/R$drawable;->smiles_tab_settings:I

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2662
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->stickerSettingsButton:Landroid/widget/ImageView;

    new-instance v7, Landroid/graphics/PorterDuffColorFilter;

    if-eqz p12, :cond_1d

    invoke-direct {v1, v6}, Lorg/telegram/ui/Components/EmojiView;->getGlassIconColor(F)I

    move-result v9

    goto :goto_24

    :cond_1d
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelBackspace:I

    invoke-direct {v1, v9}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v9

    :goto_24
    invoke-direct {v7, v9, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2663
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->stickerSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2664
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->stickerSettingsButton:Landroid/widget/ImageView;

    const/4 v14, 0x1

    invoke-virtual {v0, v14}, Landroid/view/View;->setFocusable(Z)V

    .line 2665
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->stickerSettingsButton:Landroid/widget/ImageView;

    sget v7, Lorg/telegram/messenger/R$string;->Settings:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2666
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->stickerSettingsButton:Landroid/widget/ImageView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    .line 2667
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainer:Landroid/widget/FrameLayout;

    iget-object v7, v1, Lorg/telegram/ui/Components/EmojiView;->stickerSettingsButton:Landroid/widget/ImageView;

    const/high16 v29, 0x40000000    # 2.0f

    const/16 v30, 0x0

    const/16 v24, 0x30

    const/high16 v25, 0x42400000    # 48.0f

    const/16 v26, 0x55

    const/high16 v27, 0x40000000    # 2.0f

    const/16 v28, 0x0

    invoke-static/range {v24 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2668
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->stickerSettingsButton:Landroid/widget/ImageView;

    new-instance v7, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda5;

    invoke-direct {v7, v1}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2675
    :cond_1e
    new-instance v0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->typeTabs:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    .line 2676
    iget-object v7, v1, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 2677
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->typeTabs:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->setShouldExpand(Z)V

    .line 2678
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->typeTabs:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    const/high16 v7, 0x40400000    # 3.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->setIndicatorHeight(I)V

    .line 2679
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->typeTabs:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelIconSelected:I

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v7

    const/16 v9, 0x14

    invoke-static {v7, v9}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v7

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->setIndicatorColor(I)V

    .line 2680
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->typeTabs:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->setUnderlineHeight(I)V

    .line 2681
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->typeTabs:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    const/high16 v7, 0x41300000    # 11.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-virtual {v0, v9}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->setTabPaddingLeftRight(I)V

    .line 2682
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->typeTabs:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    const/high16 v9, 0x40800000    # 4.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v0, v11, v14, v9, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 2683
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainer:Landroid/widget/FrameLayout;

    iget-object v7, v1, Lorg/telegram/ui/Components/EmojiView;->typeTabs:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    const/16 v9, 0x51

    const/4 v11, -0x2

    invoke-static {v11, v10, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2684
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->typeTabs:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    new-instance v7, Lorg/telegram/ui/Components/EmojiView$27;

    invoke-direct {v7, v1, v5}, Lorg/telegram/ui/Components/EmojiView$27;-><init>(Lorg/telegram/ui/Components/EmojiView;Z)V

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 2747
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->searchButton:Landroid/widget/ImageView;

    .line 2748
    sget v5, Lorg/telegram/messenger/R$drawable;->smiles_tab_search:I

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2749
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->searchButton:Landroid/widget/ImageView;

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    if-eqz p12, :cond_1f

    invoke-direct {v1, v6}, Lorg/telegram/ui/Components/EmojiView;->getGlassIconColor(F)I

    move-result v6

    goto :goto_25

    :cond_1f
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelBackspace:I

    invoke-direct {v1, v6}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v6

    :goto_25
    invoke-direct {v5, v6, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2750
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->searchButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2751
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->searchButton:Landroid/widget/ImageView;

    sget v4, Lorg/telegram/messenger/R$string;->Search:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2752
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->searchButton:Landroid/widget/ImageView;

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 2753
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->searchButton:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2754
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainer:Landroid/widget/FrameLayout;

    iget-object v4, v1, Lorg/telegram/ui/Components/EmojiView;->searchButton:Landroid/widget/ImageView;

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v11, 0x0

    const/16 v5, 0x30

    const/high16 v6, 0x42400000    # 48.0f

    const/16 v7, 0x53

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v9, 0x0

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2755
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->searchButton:Landroid/widget/ImageView;

    new-instance v4, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda6;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_27

    .line 2777
    :cond_20
    iget-object v4, v1, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainer:Landroid/widget/FrameLayout;

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_21

    const/4 v9, 0x3

    goto :goto_26

    :cond_21
    const/4 v9, 0x5

    :goto_26
    or-int/lit8 v26, v9, 0x50

    const/high16 v29, 0x40000000    # 2.0f

    const/16 v30, 0x0

    const/16 v24, 0x38

    const/high16 v25, 0x42400000    # 48.0f

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-static/range {v24 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v0, 0x42600000    # 56.0f

    .line 2778
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-direct {v1, v11}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v4

    invoke-direct {v1, v11}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v5

    invoke-static {v0, v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2779
    iget-object v4, v1, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    .line 2780
    iget-object v4, v1, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v10, 0x0

    invoke-virtual {v4, v10, v10, v5, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 2781
    iget-object v4, v1, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2782
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionIcon:I

    invoke-direct {v1, v5}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v5

    invoke-direct {v4, v5, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2783
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    sget v4, Lorg/telegram/messenger/R$string;->AccDescrBackspace:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2784
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 2785
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainer:Landroid/widget/FrameLayout;

    iget-object v4, v1, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v11, 0x0

    const/16 v5, 0x30

    const/high16 v6, 0x42400000    # 48.0f

    const/16 v7, 0x33

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v9, 0x0

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2786
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainerBackground:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2789
    :goto_27
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    const/4 v4, -0x1

    const/16 v7, 0x33

    invoke-static {v4, v4, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    const/4 v10, 0x0

    invoke-virtual {v1, v0, v10, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2791
    new-instance v0, Lorg/telegram/ui/Components/CorrectlyMeasuringTextView;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/CorrectlyMeasuringTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    const/high16 v4, 0x40c00000    # 6.0f

    .line 2792
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chat_gifSaveHintBackground:I

    invoke-direct {v1, v5}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v5

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2793
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_gifSaveHintText:I

    invoke-direct {v1, v4}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2794
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v6, 0x40e00000    # 7.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v0, v5, v7, v4, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2795
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    const/16 v4, 0x10

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 2796
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    const/high16 v4, 0x41600000    # 14.0f

    const/4 v6, 0x1

    invoke-virtual {v0, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2797
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2798
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    const/high16 v9, 0x40a00000    # 5.0f

    const/high16 v10, 0x42540000    # 53.0f

    const/4 v4, -0x2

    const/high16 v5, -0x40000000    # -2.0f

    const/16 v6, 0x51

    const/high16 v7, 0x40a00000    # 5.0f

    const/4 v8, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2800
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_22

    const/high16 v7, 0x42200000    # 40.0f

    goto :goto_28

    :cond_22
    const/high16 v7, 0x42000000    # 32.0f

    :goto_28
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Components/EmojiView;->emojiSize:I

    .line 2801
    invoke-static {v2, v3}, Lorg/telegram/ui/Components/EmojiColorPickerWindow;->create(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/EmojiColorPickerWindow;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->colorPickerView:Lorg/telegram/ui/Components/EmojiColorPickerWindow;

    .line 2802
    new-instance v2, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda7;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/EmojiColorPickerWindow;->setOnSelectionUpdateListener(Lorg/telegram/messenger/Utilities$Callback2;)V

    .line 2817
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "selected_page"

    const/4 v10, 0x0

    invoke-interface {v0, v2, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Components/EmojiView;->currentPage:I

    .line 2819
    invoke-static {}, Lorg/telegram/messenger/Emoji;->loadRecentEmoji()V

    .line 2820
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->emojiAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->notifyDataSetChanged()V

    .line 2822
    invoke-virtual {v1, v12, v13, v10}, Lorg/telegram/ui/Components/EmojiView;->setAllow(ZZZ)V

    .line 2825
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v0, v2, :cond_23

    .line 2826
    new-instance v0, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    const/4 v9, 0x0

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;-><init>(Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->blurredBackgroundSourceRenderNode:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    .line 2827
    new-instance v2, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;-><init>(Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;)V

    iput-object v2, v1, Lorg/telegram/ui/Components/EmojiView;->blurredBackgroundDrawableFactory:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    const/high16 v0, 0x40000

    .line 2828
    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;->setLiquidGlassEffectAllowed(Z)V

    .line 2830
    new-instance v0, Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    invoke-direct {v0}, Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    goto :goto_29

    :cond_23
    const/4 v9, 0x0

    .line 2832
    iput-object v9, v1, Lorg/telegram/ui/Components/EmojiView;->blurredBackgroundSourceRenderNode:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    .line 2833
    new-instance v0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    move-object/from16 v2, v36

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;-><init>(Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->blurredBackgroundDrawableFactory:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    .line 2835
    iput-object v9, v1, Lorg/telegram/ui/Components/EmojiView;->scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    .line 2838
    :goto_29
    new-instance v0, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;-><init>(Landroid/view/View;)V

    .line 2839
    iget-object v2, v1, Lorg/telegram/ui/Components/EmojiView;->typeTabs:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    if-eqz v2, :cond_24

    .line 2840
    new-instance v3, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda8;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v0, v2, v1, v3}, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;->subscribe(Landroid/view/View;Landroid/view/ViewGroup;Lorg/telegram/ui/Components/chat/ViewPositionWatcher$OnChangedListener;)V

    .line 2843
    :cond_24
    iget-object v2, v1, Lorg/telegram/ui/Components/EmojiView;->blurredBackgroundDrawableFactory:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;->setSourceRootView(Lorg/telegram/ui/Components/chat/ViewPositionWatcher;Landroid/view/ViewGroup;)V

    const/4 v8, 0x3

    .line 2845
    new-array v0, v8, [Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;

    .line 2846
    iget-object v2, v1, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    if-eqz v2, :cond_25

    .line 2847
    new-instance v3, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda9;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->addEdgeEffectListener(Ljava/lang/Runnable;)V

    .line 2848
    new-instance v2, Lorg/telegram/ui/Components/blur3/ViewGroupPartRenderer;

    iget-object v3, v1, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-static {v3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda10;

    invoke-direct {v4, v3}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/EmojiView$EmojiGridView;)V

    invoke-direct {v2, v3, v1, v4}, Lorg/telegram/ui/Components/blur3/ViewGroupPartRenderer;-><init>(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lorg/telegram/ui/Components/blur3/ViewGroupPartRenderer$DrawChildMethod;)V

    const/16 v21, 0x0

    aput-object v2, v0, v21

    .line 2850
    :cond_25
    iget-object v2, v1, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v2, :cond_26

    .line 2851
    new-instance v3, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda11;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->addEdgeEffectListener(Ljava/lang/Runnable;)V

    .line 2852
    new-instance v2, Lorg/telegram/ui/Components/blur3/ViewGroupPartRenderer;

    iget-object v3, v1, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda13;

    invoke-direct {v4, v3}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/RecyclerListView;)V

    invoke-direct {v2, v3, v1, v4}, Lorg/telegram/ui/Components/blur3/ViewGroupPartRenderer;-><init>(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lorg/telegram/ui/Components/blur3/ViewGroupPartRenderer$DrawChildMethod;)V

    const/16 v17, 0x1

    aput-object v2, v0, v17

    .line 2854
    :cond_26
    iget-object v2, v1, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v2, :cond_27

    .line 2855
    new-instance v3, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda14;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->addEdgeEffectListener(Ljava/lang/Runnable;)V

    .line 2856
    new-instance v2, Lorg/telegram/ui/Components/blur3/ViewGroupPartRenderer;

    iget-object v3, v1, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda15;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-direct {v2, v3, v1, v4}, Lorg/telegram/ui/Components/blur3/ViewGroupPartRenderer;-><init>(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lorg/telegram/ui/Components/blur3/ViewGroupPartRenderer$DrawChildMethod;)V

    aput-object v2, v0, v22

    .line 2868
    :cond_27
    new-instance v2, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda16;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda16;-><init>([Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;)V

    iput-object v2, v1, Lorg/telegram/ui/Components/EmojiView;->blurCaptureMethod:Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;

    .line 2876
    iget-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->blurredBackgroundDrawableFactory:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/EmojiView;->setBlurredBackgroundDrawableFactory(Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;)V

    return-void
.end method

.method public static addColorToCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 4293
    invoke-static {p0}, Lorg/telegram/messenger/CompoundEmoji;->isHandshake(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4294
    invoke-static {p0, p1}, Lorg/telegram/messenger/CompoundEmoji;->applyColor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4298
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/Emoji;->endsWithRightArrow(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    .line 4299
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 4302
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x200d

    if-le v3, v2, :cond_2

    .line 4303
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_2

    .line 4304
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 4305
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    const/4 v2, 0x3

    if-le v3, v2, :cond_3

    .line 4306
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_3

    .line 4307
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 4308
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    .line 4310
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz v3, :cond_4

    .line 4312
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_4
    if-eqz v0, :cond_5

    .line 4315
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\u200d\u27a1"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_5
    return-object p0
.end method

.method private animateSearchField(I)V
    .locals 5

    .line 5150
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->getListViewForType(I)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/high16 v2, 0x42180000    # 38.0f

    goto :goto_0

    :cond_0
    const/high16 v2, 0x42400000    # 48.0f

    .line 5151
    :goto_0
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v3, 0x0

    .line 5152
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 5154
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->tabsMinusDy:[I

    aget v4, v4, p1

    add-int/2addr v2, v4

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/Components/EmojiView;->searchFieldHeight:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-gtz v2, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_3

    :cond_1
    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v3

    .line 5156
    :goto_1
    invoke-direct {p0, p1, v1, v4}, Lorg/telegram/ui/Components/EmojiView;->animateSearchField(IZI)V

    :cond_3
    return-void
.end method

.method private animateSearchField(IZI)V
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 5165
    :cond_0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->getListViewForType(I)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 5168
    :cond_1
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$37;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p3}, Lorg/telegram/ui/Components/EmojiView$37;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;I)V

    xor-int/lit8 p2, p2, 0x1

    .line 5184
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 5185
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->getLayoutManagerForType(I)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method

.method private animateTabsY(I)V
    .locals 7

    .line 5116
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->isSearchOpened()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-nez p1, :cond_2

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    const/high16 v1, 0x42100000    # 36.0f

    goto :goto_0

    :cond_3
    const/high16 v1, 0x42400000    # 48.0f

    .line 5119
    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    .line 5120
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->tabsMinusDy:[I

    aget v2, v2, p1

    int-to-float v2, v2

    neg-float v3, v1

    div-float/2addr v2, v3

    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-lez v3, :cond_9

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_4

    goto :goto_3

    .line 5125
    :cond_4
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->getTabsForType(I)Landroid/view/View;

    move-result-object v3

    const/high16 v4, 0x3f000000    # 0.5f

    cmpl-float v2, v2, v4

    const/4 v4, 0x0

    if-lez v2, :cond_5

    float-to-double v5, v1

    .line 5126
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    neg-double v5, v5

    double-to-int v1, v5

    goto :goto_1

    :cond_5
    move v1, v4

    :goto_1
    if-lez v2, :cond_6

    .line 5128
    invoke-direct {p0, p1, v4, v1}, Lorg/telegram/ui/Components/EmojiView;->animateSearchField(IZI)V

    :cond_6
    if-ne p1, v0, :cond_7

    .line 5131
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/EmojiView;->checkEmojiShadow(I)V

    .line 5133
    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->tabsYAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v5, v2, p1

    const/4 v6, 0x2

    if-nez v5, :cond_8

    .line 5134
    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v5

    int-to-float v1, v1

    new-array v6, v6, [F

    aput v5, v6, v4

    aput v1, v6, v0

    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-static {v3, v0, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v2, p1

    .line 5135
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->tabsYAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v0, v0, p1

    new-instance v1, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda30;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/ui/Components/EmojiView;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5136
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->tabsYAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v0, v0, p1

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_2

    .line 5138
    :cond_8
    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v2

    int-to-float v1, v1

    new-array v3, v6, [F

    aput v2, v3, v4

    aput v1, v3, v0

    invoke-virtual {v5, v3}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 5140
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->tabsYAnimators:[Landroid/animation/ObjectAnimator;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    .line 5122
    :cond_9
    :goto_3
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->animateSearchField(I)V

    return-void
.end method

.method private static applyBottomInsetAsPadding(Landroid/view/View;I)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 2950
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private checkBottomTabScroll(F)V
    .locals 4

    .line 4966
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/Components/EmojiView;->shownBottomTabAfterClick:J

    sub-long/2addr v0, v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    goto :goto_1

    .line 4969
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->lastBottomScrollDy:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Components/EmojiView;->lastBottomScrollDy:F

    .line 4971
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    if-nez p1, :cond_1

    const/high16 p1, 0x42180000    # 38.0f

    .line 4972
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    goto :goto_0

    :cond_1
    const/high16 p1, 0x42400000    # 48.0f

    .line 4974
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    .line 4976
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->lastBottomScrollDy:F

    int-to-float v1, p1

    cmpl-float v1, v0, v1

    const/4 v2, 0x1

    if-ltz v1, :cond_2

    const/4 p1, 0x0

    .line 4977
    invoke-direct {p0, p1, v2}, Lorg/telegram/ui/Components/EmojiView;->showBottomTab(ZZ)V

    return-void

    :cond_2
    neg-int p1, p1

    int-to-float p1, p1

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_3

    .line 4979
    invoke-direct {p0, v2, v2}, Lorg/telegram/ui/Components/EmojiView;->showBottomTab(ZZ)V

    return-void

    .line 4980
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_4

    iget p1, p0, Lorg/telegram/ui/Components/EmojiView;->lastBottomScrollDy:F

    cmpg-float p1, p1, v0

    if-ltz p1, :cond_5

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    iget p1, p0, Lorg/telegram/ui/Components/EmojiView;->lastBottomScrollDy:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_6

    .line 4981
    :cond_5
    iput v0, p0, Lorg/telegram/ui/Components/EmojiView;->lastBottomScrollDy:F

    :cond_6
    :goto_1
    return-void
.end method

.method private checkDocuments(Z)V
    .locals 10

    if-eqz p1, :cond_0

    .line 6093
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateRecentGifs()V

    return-void

    .line 6095
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 6096
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->favouriteStickers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6097
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MediaDataController;->getRecentStickers(IZ)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    .line 6098
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/MediaDataController;->getRecentStickers(I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->favouriteStickers:Ljava/util/ArrayList;

    .line 6102
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->premiumStickers:Ljava/util/ArrayList;

    move v1, v2

    .line 6104
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->favouriteStickers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 6105
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->favouriteStickers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Document;

    move v5, v2

    .line 6106
    :goto_1
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 6107
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Document;

    .line 6108
    iget v7, v6, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    iget v8, v4, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    if-ne v7, v8, :cond_1

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 6109
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6114
    :cond_3
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->premiumFeaturesBlocked()Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v2

    .line 6115
    :goto_3
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->favouriteStickers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 6116
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->favouriteStickers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->isPremiumSticker(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 6117
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->favouriteStickers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    :cond_4
    add-int/2addr v1, v3

    goto :goto_3

    :cond_5
    move v1, v2

    .line 6121
    :goto_4
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_7

    .line 6122
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->isPremiumSticker(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 6123
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    :cond_6
    add-int/2addr v1, v3

    goto :goto_4

    .line 6128
    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne p1, v1, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->favouriteStickers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eq v0, p1, :cond_9

    .line 6129
    :cond_8
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs(Z)V

    .line 6131
    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    if-eqz p1, :cond_a

    .line 6132
    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->notifyDataSetChanged()V

    .line 6134
    :cond_a
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->checkPanels()V

    return-void
.end method

.method private checkEmojiSearchFieldScroll(Z)V
    .locals 5

    .line 5248
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->isSearchOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5249
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5251
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    xor-int/lit8 v3, p1, 0x1

    invoke-static {v0, v2, v3}, Lorg/telegram/ui/Components/EmojiView$SearchField;->-$$Nest$mshowShadow(Lorg/telegram/ui/Components/EmojiView$SearchField;ZZ)V

    goto :goto_1

    .line 5253
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    if-ge v0, v4, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    xor-int/lit8 v4, p1, 0x1

    invoke-static {v3, v0, v4}, Lorg/telegram/ui/Components/EmojiView$SearchField;->-$$Nest$mshowShadow(Lorg/telegram/ui/Components/EmojiView$SearchField;ZZ)V

    :goto_1
    xor-int/2addr p1, v2

    .line 5255
    invoke-direct {p0, v1, p1}, Lorg/telegram/ui/Components/EmojiView;->showEmojiShadow(ZZ)V

    return-void

    .line 5258
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    if-nez v0, :cond_3

    goto :goto_3

    .line 5261
    :cond_3
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 5263
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_2

    .line 5265
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    iget v3, p0, Lorg/telegram/ui/Components/EmojiView;->searchFieldHeight:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 5267
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    xor-int/2addr p1, v2

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->-$$Nest$mshowShadow(Lorg/telegram/ui/Components/EmojiView$SearchField;ZZ)V

    .line 5268
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->checkEmojiShadow(I)V

    :cond_5
    :goto_3
    return-void
.end method

.method private checkEmojiShadow(I)V
    .locals 4

    .line 5272
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->tabsYAnimators:[Landroid/animation/ObjectAnimator;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5275
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    const/high16 v3, 0x42180000    # 38.0f

    .line 5276
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v3, p1

    if-lez v3, :cond_2

    if-eqz v0, :cond_1

    .line 5277
    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    if-ge p1, v3, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    iget-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->isLayout:Z

    xor-int/2addr p1, v1

    invoke-direct {p0, v2, p1}, Lorg/telegram/ui/Components/EmojiView;->showEmojiShadow(ZZ)V

    return-void
.end method

.method private checkEmojiTabY(Landroid/view/View;I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 5282
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->tabsMinusDy:[I

    aput v0, p2, v1

    int-to-float p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    return-void

    .line 5285
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSmoothScrolling:Z

    if-eqz p1, :cond_1

    goto/16 :goto_2

    .line 5288
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->isSearchOpened()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    if-lez p2, :cond_4

    .line 5291
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    .line 5292
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 5293
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iget-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView;->needEmojiSearch:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lorg/telegram/ui/Components/EmojiView;->searchFieldHeight:I

    goto :goto_0

    :cond_3
    move v2, v0

    :goto_0
    add-int/2addr p1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    if-lt p1, v2, :cond_4

    goto :goto_2

    .line 5297
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->tabsMinusDy:[I

    aget v2, p1, v1

    sub-int/2addr v2, p2

    aput v2, p1, v1

    if-lez v2, :cond_5

    .line 5299
    aput v0, p1, v1

    goto :goto_1

    :cond_5
    const/high16 p1, 0x42d80000    # 108.0f

    .line 5300
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    neg-int p2, p2

    if-ge v2, p2, :cond_6

    .line 5301
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->tabsMinusDy:[I

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    neg-int p1, p1

    aput p1, p2, v1

    .line 5303
    :cond_6
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    const/high16 p2, 0x42100000    # 36.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    neg-int p2, p2

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->tabsMinusDy:[I

    aget v0, v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    :cond_7
    :goto_2
    return-void
.end method

.method private checkGifSearchFieldScroll(Z)V
    .locals 7

    .line 5307
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    if-eqz v0, :cond_0

    .line 5308
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    .line 5309
    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->-$$Nest$fgetsearchEndReached(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->-$$Nest$fgetreqId(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->-$$Nest$fgetresults(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5310
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifLayoutManager:Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 5311
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->gifLayoutManager:Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x5

    if-le v0, v2, :cond_0

    .line 5312
    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->-$$Nest$fgetlastSearchImageString(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->-$$Nest$fgetnextSearchOffset(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->-$$Nest$fgetlastSearchIsEmoji(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Z

    move-result v5

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->-$$Nest$fgetlastSearchIsEmoji(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Z

    move-result v6

    const/4 v4, 0x1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->search(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 5316
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->isSearchOpened()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5317
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5319
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    xor-int/2addr p1, v1

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->-$$Nest$mshowShadow(Lorg/telegram/ui/Components/EmojiView$SearchField;ZZ)V

    return-void

    .line 5321
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    if-ge v0, v4, :cond_2

    move v2, v1

    :cond_2
    xor-int/2addr p1, v1

    invoke-static {v3, v2, p1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->-$$Nest$mshowShadow(Lorg/telegram/ui/Components/EmojiView$SearchField;ZZ)V

    return-void

    .line 5325
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    if-eqz v0, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    xor-int/2addr p1, v1

    .line 5334
    invoke-static {v0, v1, p1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->-$$Nest$mshowShadow(Lorg/telegram/ui/Components/EmojiView$SearchField;ZZ)V

    :cond_5
    :goto_0
    return-void
.end method

.method private checkGridVisibility(IF)V
    .locals 4

    .line 3685
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez p1, :cond_3

    .line 3689
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 3690
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    cmpl-float p2, p2, v0

    if-nez p2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 3691
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    if-nez p2, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3692
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 3693
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_7

    .line 3694
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_3
    const/4 v3, 0x1

    if-ne p1, v3, :cond_6

    .line 3697
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 3698
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 3699
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3700
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    cmpl-float p2, p2, v0

    if-nez p2, :cond_4

    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 3701
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_7

    if-nez p2, :cond_5

    move v1, v2

    .line 3702
    :cond_5
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_6
    const/4 p2, 0x2

    if-ne p1, p2, :cond_7

    .line 3705
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 3706
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 3707
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3708
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 3709
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_7

    .line 3710
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    :goto_2
    return-void
.end method

.method private checkPanels()V
    .locals 4

    .line 5623
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    if-nez v0, :cond_0

    goto :goto_1

    .line 5626
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 5629
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->favTabNum:I

    if-lez v1, :cond_1

    goto :goto_0

    .line 5631
    :cond_1
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabNum:I

    if-lez v1, :cond_2

    goto :goto_0

    .line 5634
    :cond_2
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    .line 5636
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->getTabForPosition(I)I

    move-result v0

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    :cond_3
    :goto_1
    return-void
.end method

.method private checkScroll(I)V
    .locals 3

    const/4 v0, -0x1

    if-nez p1, :cond_5

    .line 5344
    iget-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->ignoreStickersScroll:Z

    if-eqz p1, :cond_0

    goto :goto_2

    .line 5347
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    if-ne p1, v0, :cond_1

    goto :goto_2

    .line 5351
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-nez v0, :cond_2

    goto :goto_2

    .line 5355
    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->favTabNum:I

    if-lez v0, :cond_3

    goto :goto_0

    .line 5357
    :cond_3
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabNum:I

    if-lez v0, :cond_4

    goto :goto_0

    .line 5360
    :cond_4
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    .line 5362
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->getTabForPosition(I)I

    move-result p1

    invoke-virtual {v1, p1, v0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    return-void

    :cond_5
    const/4 v1, 0x2

    if-ne p1, v1, :cond_8

    .line 5364
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    if-ne p1, v1, :cond_8

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->-$$Nest$fgettrendingSectionItem(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)I

    move-result p1

    if-ltz p1, :cond_8

    iget p1, p0, Lorg/telegram/ui/Components/EmojiView;->gifTrendingTabNum:I

    if-ltz p1, :cond_8

    iget p1, p0, Lorg/telegram/ui/Components/EmojiView;->gifRecentTabNum:I

    if-ltz p1, :cond_8

    .line 5365
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->gifLayoutManager:Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    if-ne p1, v0, :cond_6

    goto :goto_2

    .line 5369
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->-$$Nest$fgettrendingSectionItem(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)I

    move-result v1

    if-lt p1, v1, :cond_7

    iget p1, p0, Lorg/telegram/ui/Components/EmojiView;->gifTrendingTabNum:I

    goto :goto_1

    :cond_7
    iget p1, p0, Lorg/telegram/ui/Components/EmojiView;->gifRecentTabNum:I

    :goto_1
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    :cond_8
    :goto_2
    return-void
.end method

.method private checkStickersSearchFieldScroll(Z)V
    .locals 5

    .line 4944
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->isSearchOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4945
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4947
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    xor-int/2addr p1, v2

    invoke-static {v0, v2, p1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->-$$Nest$mshowShadow(Lorg/telegram/ui/Components/EmojiView$SearchField;ZZ)V

    return-void

    .line 4949
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickersSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    if-ge v0, v4, :cond_1

    move v1, v2

    :cond_1
    xor-int/2addr p1, v2

    invoke-static {v3, v1, p1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->-$$Nest$mshowShadow(Lorg/telegram/ui/Components/EmojiView$SearchField;ZZ)V

    return-void

    .line 4953
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-nez v0, :cond_3

    goto :goto_1

    .line 4956
    :cond_3
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 4958
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickersSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 4960
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    iget v3, p0, Lorg/telegram/ui/Components/EmojiView;->searchFieldHeight:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 4962
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    xor-int/2addr p1, v2

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->-$$Nest$mshowShadow(Lorg/telegram/ui/Components/EmojiView$SearchField;ZZ)V

    :cond_5
    :goto_1
    return-void
.end method

.method private checkTabsY(II)V
    .locals 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 5082
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView;->checkEmojiTabY(Landroid/view/View;I)V

    return-void

    .line 5085
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->isSearchOpened()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->ignoreStickersScroll:Z

    if-eqz v0, :cond_2

    goto :goto_0

    .line 5088
    :cond_2
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->getListViewForType(I)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    const/4 v1, 0x0

    if-lez p2, :cond_4

    if-eqz v0, :cond_4

    .line 5089
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    .line 5090
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 5091
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Components/EmojiView;->searchFieldHeight:I

    add-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    if-lt v2, v0, :cond_4

    :cond_3
    :goto_0
    return-void

    .line 5095
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->tabsMinusDy:[I

    aget v2, v0, p1

    sub-int/2addr v2, p2

    aput v2, v0, p1

    if-lez v2, :cond_5

    .line 5097
    aput v1, v0, p1

    goto :goto_1

    :cond_5
    const/high16 p2, 0x43900000    # 288.0f

    .line 5098
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    if-ge v2, v0, :cond_6

    .line 5099
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->tabsMinusDy:[I

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    neg-int p2, p2

    aput p2, v0, p1

    :cond_6
    :goto_1
    if-nez p1, :cond_7

    .line 5102
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabsPosition()V

    return-void

    .line 5104
    :cond_7
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->getTabsForType(I)Landroid/view/View;

    move-result-object p2

    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->tabsMinusDy:[I

    aget p1, v1, p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private createStickersChooseActionTracker()V
    .locals 7

    .line 3636
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$28;

    iget v2, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    invoke-interface {v1}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->getDialogId()J

    move-result-wide v3

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    invoke-interface {v1}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->getThreadId()I

    move-result v1

    int-to-long v5, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/EmojiView$28;-><init>(Lorg/telegram/ui/Components/EmojiView;IJJ)V

    iput-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->chooseStickerActionTracker:Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;

    .line 3642
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->checkVisibility()V

    return-void
.end method

.method private getGlassIconColor(F)I
    .locals 2

    .line 9561
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_glass_defaultIcon:I

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 9562
    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    .line 9561
    invoke-static {v0, p1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    return p1
.end method

.method private getLayoutManagerForType(I)Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 3

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 5221
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->gifLayoutManager:Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    return-object p1

    .line 5223
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5219
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    return-object p1

    .line 5217
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    return-object p1
.end method

.method private getListViewForType(I)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 3

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 5208
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p1

    .line 5210
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5206
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    return-object p1

    .line 5204
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p1
.end method

.method private getSearchFieldForType(I)Lorg/telegram/ui/Components/EmojiView$SearchField;
    .locals 3

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 5234
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    return-object p1

    .line 5236
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5232
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    return-object p1

    .line 5230
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    return-object p1
.end method

.method private getTabsForType(I)Landroid/view/View;
    .locals 3

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 5195
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    return-object p1

    .line 5197
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5193
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    return-object p1

    .line 5191
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    return-object p1
.end method

.method private getThemedColor(I)I
    .locals 1

    .line 6405
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    .line 6406
    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(I)I

    move-result p1

    return p1

    .line 6408
    :cond_0
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    return p1
.end method

.method private invalidateBlurCaptures()V
    .locals 5

    .line 4478
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    if-eqz v0, :cond_2

    .line 4479
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->typeTabs:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->blurredRectF:Landroid/graphics/RectF;

    invoke-static {v0, p0, v1}, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;->computeRectInParent(Landroid/view/View;Landroid/view/View;Landroid/graphics/RectF;)Z

    .line 4480
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->blurredRectF:Landroid/graphics/RectF;

    const/high16 v1, 0x40000

    .line 4481
    invoke-static {v1}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v2

    const/high16 v3, 0x42400000    # 48.0f

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    .line 4482
    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v4, v1

    .line 4480
    :goto_1
    invoke-virtual {v0, v2, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 4484
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->blurredRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 4485
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->blurredRectF:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 4487
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->blurredRectList:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;->setupRenderNodes(Ljava/util/List;I)V

    .line 4488
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->blurCaptureMethod:Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;->invalidateResultRenderNodes(Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;II)Z

    :cond_2
    return-void
.end method

.method private synthetic lambda$animateTabsY$23(ILandroid/animation/ValueAnimator;)V
    .locals 1

    .line 5135
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->tabsMinusDy:[I

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    float-to-int p2, p2

    aput p2, v0, p1

    return-void
.end method

.method private synthetic lambda$new$10(Landroid/view/View;I)V
    .locals 12

    .line 2331
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersSearchGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 2332
    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->-$$Nest$fgetsearchQuery(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;)Ljava/lang/String;

    move-result-object v0

    .line 2333
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersSearchGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->-$$Nest$fgetpositionsToSets(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    if-eqz p2, :cond_0

    .line 2335
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    const/4 v0, 0x0

    invoke-interface {p1, p2, v2, v0}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->onShowStickerSet(Lorg/telegram/tgnet/TLRPC$StickerSet;Lorg/telegram/tgnet/TLRPC$InputStickerSet;Z)V

    return-void

    :cond_0
    move-object v6, v0

    goto :goto_0

    :cond_1
    move-object v6, v2

    .line 2339
    :goto_0
    instance-of p2, p1, Lorg/telegram/ui/Cells/StickerEmojiCell;

    if-nez p2, :cond_2

    goto :goto_1

    .line 2342
    :cond_2
    move-object v4, p1

    check-cast v4, Lorg/telegram/ui/Cells/StickerEmojiCell;

    .line 2343
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/StickerEmojiCell;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/StickerEmojiCell;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->isPremiumSticker(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p1

    if-nez p1, :cond_3

    .line 2344
    invoke-static {}, Lorg/telegram/ui/ContentPreviewViewer;->getInstance()Lorg/telegram/ui/ContentPreviewViewer;

    move-result-object p1

    invoke-virtual {p1, v4}, Lorg/telegram/ui/ContentPreviewViewer;->showMenuFor(Landroid/view/View;)Z

    return-void

    .line 2347
    :cond_3
    invoke-static {}, Lorg/telegram/ui/ContentPreviewViewer;->getInstance()Lorg/telegram/ui/ContentPreviewViewer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ContentPreviewViewer;->reset()V

    .line 2349
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/StickerEmojiCell;->isDisabled()Z

    move-result p1

    if-eqz p1, :cond_4

    :goto_1
    return-void

    .line 2352
    :cond_4
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/StickerEmojiCell;->disable()V

    .line 2353
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/StickerEmojiCell;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v5

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/StickerEmojiCell;->getParentObject()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/StickerEmojiCell;->getSendAnimationData()Lorg/telegram/messenger/MessageObject$SendAnimationData;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x1

    invoke-interface/range {v3 .. v11}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->onStickerSelected(Landroid/view/View;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Ljava/lang/Object;Lorg/telegram/messenger/MessageObject$SendAnimationData;ZII)V

    return-void
.end method

.method private synthetic lambda$new$11(I)V
    .locals 4

    .line 2505
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->firstTabUpdate:Z

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 2508
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->trendingTabNum:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 2509
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/EmojiView;->openTrendingStickers(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;)V

    return-void

    .line 2513
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$SearchField;->isCategorySelected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2514
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/EmojiView$SearchField;->search(Ljava/lang/String;Z)V

    .line 2515
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$SearchField;->-$$Nest$fgetcategoriesListView(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/StickerCategoriesListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->selectCategory(Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;)V

    .line 2518
    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabNum:I

    if-ne p1, v0, :cond_4

    .line 2519
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->stopScroll()V

    .line 2520
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    const-string v0, "recent"

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->getPositionForPack(Ljava/lang/Object;)I

    move-result p1

    invoke-direct {p0, p1, v2}, Lorg/telegram/ui/Components/EmojiView;->scrollStickersToPosition(II)V

    .line 2521
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->resetTabsY(I)V

    .line 2522
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabNum:I

    if-lez v0, :cond_3

    move v1, v0

    goto :goto_0

    :cond_3
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    :goto_0
    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    return-void

    .line 2524
    :cond_4
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->favTabNum:I

    if-ne p1, v0, :cond_6

    .line 2525
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->stopScroll()V

    .line 2526
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    const-string v0, "fav"

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->getPositionForPack(Ljava/lang/Object;)I

    move-result p1

    invoke-direct {p0, p1, v2}, Lorg/telegram/ui/Components/EmojiView;->scrollStickersToPosition(II)V

    .line 2527
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->resetTabsY(I)V

    .line 2528
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->favTabNum:I

    if-lez v0, :cond_5

    move v1, v0

    goto :goto_1

    :cond_5
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    :goto_1
    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    return-void

    .line 2530
    :cond_6
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->premiumTabNum:I

    if-ne p1, v0, :cond_8

    .line 2531
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->stopScroll()V

    .line 2532
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    const-string v0, "premium"

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->getPositionForPack(Ljava/lang/Object;)I

    move-result p1

    invoke-direct {p0, p1, v2}, Lorg/telegram/ui/Components/EmojiView;->scrollStickersToPosition(II)V

    .line 2533
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->resetTabsY(I)V

    .line 2534
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->premiumTabNum:I

    if-lez v0, :cond_7

    move v1, v0

    goto :goto_2

    :cond_7
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    :goto_2
    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    return-void

    .line 2538
    :cond_8
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    sub-int v0, p1, v0

    .line 2539
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_9

    :goto_3
    return-void

    .line 2542
    :cond_9
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_a

    .line 2543
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2545
    :cond_a
    iput-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView;->firstStickersAttach:Z

    .line 2546
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->stopScroll()V

    .line 2547
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->getPositionForPack(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, v0, v2}, Lorg/telegram/ui/Components/EmojiView;->scrollStickersToPosition(II)V

    .line 2548
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->resetTabsY(I)V

    .line 2549
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->checkScroll(I)V

    .line 2551
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->favTabNum:I

    if-lez v0, :cond_b

    goto :goto_4

    .line 2553
    :cond_b
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabNum:I

    if-lez v0, :cond_c

    goto :goto_4

    .line 2556
    :cond_c
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    .line 2558
    :goto_4
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v1, p1, v0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    .line 2559
    iput-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView;->expandStickersByDragg:Z

    .line 2560
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabsPosition()V

    return-void
.end method

.method private synthetic lambda$new$13(Landroid/view/View;)V
    .locals 0

    .line 2669
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    if-eqz p1, :cond_0

    .line 2670
    invoke-interface {p1}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->onStickersSettingsClick()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$14(Landroid/view/View;)V
    .locals 10

    .line 2757
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    if-nez p1, :cond_0

    .line 2759
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2761
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    goto :goto_0

    .line 2763
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    :goto_0
    if-nez p1, :cond_2

    return-void

    .line 2768
    :cond_2
    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->-$$Nest$fgetsearchEditText(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 2769
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 2770
    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->-$$Nest$fgetsearchEditText(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2771
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    .line 2772
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 2773
    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->-$$Nest$fgetsearchEditText(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2774
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private synthetic lambda$new$15(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 4

    .line 2803
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTouchedView:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;

    if-eqz v0, :cond_3

    .line 2804
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTouchedView:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;

    .line 2805
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;->update(II)V

    .line 2807
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTouchedView:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2808
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 2809
    sget-object p1, Lorg/telegram/messenger/Emoji;->emojiColor:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2811
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, ""

    if-ltz v2, :cond_1

    sget-object v2, Lorg/telegram/messenger/CompoundEmoji;->skinTones:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object p1, v3

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u200d"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ltz p1, :cond_2

    sget-object p1, Lorg/telegram/messenger/CompoundEmoji;->skinTones:Ljava/util/List;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2812
    sget-object p2, Lorg/telegram/messenger/Emoji;->emojiColor:Ljava/util/HashMap;

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2814
    :goto_1
    invoke-static {}, Lorg/telegram/messenger/Emoji;->saveEmojiColors()V

    :cond_3
    return-void
.end method

.method private synthetic lambda$new$16(Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 0

    .line 2840
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->invalidateBlurCaptures()V

    return-void
.end method

.method private synthetic lambda$new$17()V
    .locals 2

    .line 2847
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    new-instance v1, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$18()V
    .locals 2

    .line 2851
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$19()V
    .locals 2

    .line 2855
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$2(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1695
    invoke-static {}, Lorg/telegram/ui/ContentPreviewViewer;->getInstance()Lorg/telegram/ui/ContentPreviewViewer;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->contentPreviewViewerDelegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-object v6, p1

    move-object v1, p3

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/ContentPreviewViewer;->onTouch(Landroid/view/MotionEvent;Lorg/telegram/ui/Components/RecyclerListView;ILjava/lang/Object;Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Z

    move-result p1

    return p1
.end method

.method private synthetic lambda$new$20(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3

    .line 2857
    instance-of v0, p2, Lorg/telegram/ui/Components/ListView/RecyclerListViewWithOverlayDraw$OverlayView;

    if-eqz v0, :cond_0

    .line 2858
    move-object v0, p2

    check-cast v0, Lorg/telegram/ui/Components/ListView/RecyclerListViewWithOverlayDraw$OverlayView;

    .line 2859
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2860
    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2861
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-interface {v0, v1, p1}, Lorg/telegram/ui/Components/ListView/RecyclerListViewWithOverlayDraw$OverlayView;->preDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 2862
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2865
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/RecyclerListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method private synthetic lambda$new$22(IFFLme/vkryl/android/animator/FactorAnimator;)V
    .locals 0

    .line 5065
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateBottomTabContainerPosition()V

    return-void
.end method

.method private synthetic lambda$new$28()V
    .locals 2

    .line 6299
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 6300
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->notifyDataSetChanged(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$3(Landroid/view/View;I)Z
    .locals 9

    .line 1697
    instance-of p2, p1, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    const/4 v0, 0x0

    if-eqz p2, :cond_c

    .line 1698
    move-object p2, p1

    check-cast p2, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    .line 1700
    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->-$$Nest$fgetisRecent(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 1701
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1702
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView;->getRecentEmoji()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt p2, v0, :cond_0

    .line 1703
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    invoke-interface {p2}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->onClearEmojiRecent()V

    .line 1705
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->clearTouchesFor(Landroid/view/View;)V

    return v2

    .line 1707
    :cond_1
    invoke-virtual {p2}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->getSpan()Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    move-result-object v1

    if-nez v1, :cond_c

    .line 1708
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_2

    return v0

    .line 1712
    :cond_2
    const-string v3, "\ud83c\udffb"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\ud83c\udffc"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\ud83c\udffd"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\ud83c\udffe"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\ud83c\udfff"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1715
    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->-$$Nest$fgetisRecent(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1716
    sget-object v3, Lorg/telegram/messenger/Emoji;->emojiColor:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    .line 1719
    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/CompoundEmoji;->isCompound(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1720
    sget-object v5, Lorg/telegram/messenger/EmojiData;->emojiColoredMap:Ljava/util/HashSet;

    invoke-virtual {v5, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1721
    :cond_4
    iput-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTouchedView:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    .line 1722
    iget v5, p0, Lorg/telegram/ui/Components/EmojiView;->emojiLastX:F

    iput v5, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTouchedX:F

    .line 1723
    iget v5, p0, Lorg/telegram/ui/Components/EmojiView;->emojiLastY:F

    iput v5, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTouchedY:F

    if-eqz v4, :cond_5

    .line 1726
    invoke-static {v1, v3}, Lorg/telegram/ui/Components/EmojiView;->addColorToCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1728
    :cond_5
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->colorPickerView:Lorg/telegram/ui/Components/EmojiColorPickerWindow;

    sget-object v5, Lorg/telegram/messenger/CompoundEmoji;->skinTones:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/EmojiColorPickerWindow;->setSelection(I)V

    .line 1730
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->colorPickerView:Lorg/telegram/ui/Components/EmojiColorPickerWindow;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/EmojiColorPickerWindow;->setEmoji(Ljava/lang/String;)V

    .line 1732
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->colorPickerView:Lorg/telegram/ui/Components/EmojiColorPickerWindow;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmojiColorPickerWindow;->getPopupWidth()I

    move-result v1

    .line 1733
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->colorPickerView:Lorg/telegram/ui/Components/EmojiColorPickerWindow;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/EmojiColorPickerWindow;->getPopupHeight()I

    move-result v3

    .line 1735
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->location:[I

    invoke-virtual {p2, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1737
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->colorPickerView:Lorg/telegram/ui/Components/EmojiColorPickerWindow;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/EmojiColorPickerWindow;->isCompound()Z

    move-result v4

    if-nez v4, :cond_7

    .line 1738
    iget v4, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSize:I

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->colorPickerView:Lorg/telegram/ui/Components/EmojiColorPickerWindow;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/EmojiColorPickerWindow;->getSelection()I

    move-result v5

    mul-int/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->colorPickerView:Lorg/telegram/ui/Components/EmojiColorPickerWindow;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/EmojiColorPickerWindow;->getSelection()I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x5

    goto :goto_2

    :cond_6
    move v6, v2

    :goto_2
    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_3

    :cond_7
    move v4, v0

    .line 1740
    :goto_3
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->location:[I

    aget v5, v5, v0

    sub-int/2addr v5, v4

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    if-ge v5, v7, :cond_8

    .line 1741
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->location:[I

    aget v1, v1, v0

    sub-int/2addr v1, v4

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v1, v5

    add-int/2addr v4, v1

    goto :goto_4

    .line 1742
    :cond_8
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->location:[I

    aget v5, v5, v0

    sub-int/2addr v5, v4

    add-int/2addr v5, v1

    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int/2addr v7, v8

    if-le v5, v7, :cond_9

    .line 1743
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->location:[I

    aget v5, v5, v0

    sub-int/2addr v5, v4

    add-int/2addr v5, v1

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v1, v6

    sub-int/2addr v5, v1

    add-int/2addr v4, v5

    :cond_9
    :goto_4
    neg-int v1, v4

    .line 1746
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    if-gez v4, :cond_a

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 1748
    :cond_a
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->colorPickerView:Lorg/telegram/ui/Components/EmojiColorPickerWindow;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_b

    const/high16 v4, 0x41f00000    # 30.0f

    goto :goto_5

    :cond_b
    const/high16 v4, 0x41b00000    # 22.0f

    :goto_5
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v4, v1

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v4, v5

    invoke-virtual {p2, v4}, Lorg/telegram/ui/Components/EmojiColorPickerWindow;->setupArrow(I)V

    .line 1749
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->colorPickerView:Lorg/telegram/ui/Components/EmojiColorPickerWindow;

    invoke-virtual {p2, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 1750
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->colorPickerView:Lorg/telegram/ui/Components/EmojiColorPickerWindow;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    neg-int v4, v4

    sub-int/2addr v4, v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v5, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSize:I

    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v4, v3

    sub-int/2addr v4, v0

    invoke-virtual {p2, p1, v1, v4}, Lorg/telegram/ui/Components/EmojiColorPickerWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 1751
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 1752
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/RecyclerListView;->hideSelector(Z)V

    .line 1753
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->clearTouchesFor(Landroid/view/View;)V

    return v2

    :cond_c
    return v0
.end method

.method private synthetic lambda$new$5()V
    .locals 2

    .line 1865
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    if-eqz v0, :cond_0

    .line 1866
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->-$$Nest$fgetfrozenEmojiPacks(Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->onEmojiSettingsClick(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$6(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 2088
    invoke-static {}, Lorg/telegram/ui/ContentPreviewViewer;->getInstance()Lorg/telegram/ui/ContentPreviewViewer;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->gifOnItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->contentPreviewViewerDelegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    const/4 v3, 0x0

    move-object v6, p1

    move-object v1, p3

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/ContentPreviewViewer;->onTouch(Landroid/view/MotionEvent;Lorg/telegram/ui/Components/RecyclerListView;ILjava/lang/Object;Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Z

    move-result p1

    return p1
.end method

.method private synthetic lambda$new$7(Landroid/view/View;I)V
    .locals 19

    move-object/from16 v0, p0

    .line 2090
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 2093
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView;->gifAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->-$$Nest$fgetaddSearch(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v1, p2, -0x1

    goto :goto_0

    :cond_1
    move/from16 v1, p2

    .line 2096
    :goto_0
    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView;->gifAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    if-ne v2, v3, :cond_5

    if-gez v1, :cond_2

    goto/16 :goto_1

    .line 2100
    :cond_2
    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->-$$Nest$fgetrecentItemsCount(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 2101
    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->recentGifs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x0

    const-string v7, "gif"

    const/4 v8, 0x1

    move-object/from16 v4, p1

    invoke-interface/range {v3 .. v10}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->onGifSelected(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;ZII)V

    return-void

    .line 2104
    :cond_3
    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->gifAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->-$$Nest$fgetrecentItemsCount(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)I

    move-result v2

    if-lez v2, :cond_4

    .line 2105
    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->gifAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->-$$Nest$fgetrecentItemsCount(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    :cond_4
    if-ltz v1, :cond_7

    .line 2108
    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->gifAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->-$$Nest$fgetresults(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 2109
    iget-object v11, v0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->gifAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->-$$Nest$fgetresults(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView;->gifAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->-$$Nest$fgetbot(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v15

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x1

    move-object/from16 v12, p1

    invoke-interface/range {v11 .. v18}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->onGifSelected(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;ZII)V

    return-void

    .line 2112
    :cond_5
    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView;->gifSearchAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    if-ne v2, v3, :cond_7

    if-ltz v1, :cond_7

    .line 2113
    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->-$$Nest$fgetresults(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_6

    goto :goto_1

    .line 2116
    :cond_6
    iget-object v11, v0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->gifSearchAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->-$$Nest$fgetresults(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView;->gifSearchAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->-$$Nest$fgetlastSearchImageString(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Ljava/lang/String;

    move-result-object v14

    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView;->gifSearchAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->-$$Nest$fgetbot(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v15

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v16, 0x1

    move-object/from16 v12, p1

    invoke-interface/range {v11 .. v18}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->onGifSelected(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;ZII)V

    .line 2117
    invoke-direct {v0}, Lorg/telegram/ui/Components/EmojiView;->updateRecentGifs()V

    :cond_7
    :goto_1
    return-void
.end method

.method private synthetic lambda$new$8(I)V
    .locals 4

    .line 2146
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifTrendingTabNum:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->-$$Nest$fgetresults(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2149
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->stopScroll()V

    .line 2150
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    .line 2151
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifRecentTabNum:I

    const/4 v2, 0x1

    if-eq p1, v0, :cond_3

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifTrendingTabNum:I

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 2165
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->gifSearchEmojies:Ljava/util/ArrayList;

    .line 2166
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    iget v3, p0, Lorg/telegram/ui/Components/EmojiView;->gifFirstEmojiTabNum:I

    sub-int v3, p1, v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->searchEmoji(Ljava/lang/String;)V

    .line 2167
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifFirstEmojiTabNum:I

    sub-int v3, p1, v1

    if-lez v3, :cond_2

    .line 2168
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchPreloader:Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;

    sub-int v1, p1, v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;->preload(Ljava/lang/String;)V

    .line 2170
    :cond_2
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifFirstEmojiTabNum:I

    sub-int v1, p1, v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    if-ge v1, v3, :cond_6

    .line 2171
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchPreloader:Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;

    iget v3, p0, Lorg/telegram/ui/Components/EmojiView;->gifFirstEmojiTabNum:I

    sub-int/2addr p1, v3

    add-int/2addr p1, v2

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;->preload(Ljava/lang/String;)V

    goto :goto_2

    .line 2152
    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$SearchField;->-$$Nest$fgetsearchEditText(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2153
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifTrendingTabNum:I

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->-$$Nest$fgettrendingSectionItem(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)I

    move-result v0

    if-lt v0, v2, :cond_4

    .line 2154
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifLayoutManager:Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->gifAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->-$$Nest$fgettrendingSectionItem(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)I

    move-result v2

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_1

    .line 2156
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifLayoutManager:Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    if-eqz v3, :cond_5

    invoke-interface {v3}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->isExpanded()Z

    move-result v3

    if-eqz v3, :cond_5

    move v2, v1

    :cond_5
    invoke-virtual {v0, v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 2158
    :goto_1
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifTrendingTabNum:I

    if-ne p1, v0, :cond_6

    .line 2159
    iget p1, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MessagesController;->gifSearchEmojies:Ljava/util/ArrayList;

    .line 2160
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2161
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchPreloader:Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;->preload(Ljava/lang/String;)V

    :cond_6
    :goto_2
    const/4 p1, 0x2

    .line 2174
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->resetTabsY(I)V

    return-void
.end method

.method private synthetic lambda$new$9(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 2328
    invoke-static {}, Lorg/telegram/ui/ContentPreviewViewer;->getInstance()Lorg/telegram/ui/ContentPreviewViewer;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->stickersOnItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->contentPreviewViewerDelegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-object v6, p1

    move-object v1, p3

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/ContentPreviewViewer;->onTouch(Landroid/view/MotionEvent;Lorg/telegram/ui/Components/RecyclerListView;ILjava/lang/Object;Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Z

    move-result p1

    return p1
.end method

.method private synthetic lambda$onAttachedToWindow$26()V
    .locals 1

    const/4 v0, 0x0

    .line 6030
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs(Z)V

    .line 6031
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->reloadStickersAdapter()V

    return-void
.end method

.method private synthetic lambda$onOpen$25()V
    .locals 5

    .line 5970
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView;->getEmojipacks()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 5971
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 5972
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    .line 5973
    iget-boolean v3, v3, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->forGroup:Z

    if-eqz v3, :cond_0

    .line 5974
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->emojiAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->-$$Nest$fgetsectionToPosition(Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;)Landroid/util/SparseIntArray;

    move-result-object v3

    sget-object v4, Lorg/telegram/messenger/EmojiData;->dataColored:[[Ljava/lang/String;

    array-length v4, v4

    add-int/2addr v4, v2

    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    .line 5975
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->stopScroll()V

    .line 5976
    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/EmojiView;->updateEmojiTabsPosition(I)V

    const/high16 v4, -0x3ef00000    # -9.0f

    .line 5977
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-direct {p0, v3, v4}, Lorg/telegram/ui/Components/EmojiView;->scrollEmojisToPosition(II)V

    const/4 v3, 0x0

    .line 5978
    invoke-direct {p0, v3, v1}, Lorg/telegram/ui/Components/EmojiView;->checkEmojiTabY(Landroid/view/View;I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic lambda$postBackspaceRunnable$24(I)V
    .locals 2

    .line 5413
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->backspacePressed:Z

    if-nez v0, :cond_0

    return-void

    .line 5416
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->onBackspace()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5418
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    const/4 v0, 0x1

    .line 5421
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceOnce:Z

    add-int/lit8 p1, p1, -0x64

    const/16 v0, 0x32

    .line 5422
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->postBackspaceRunnable(I)V

    return-void
.end method

.method private synthetic lambda$sendEmoji$0(JLorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;)V
    .locals 7

    .line 1416
    sget-object v0, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "local_premium_emoji_hint"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1417
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/EmojiView;->shownBottomTabAfterClick:J

    .line 1418
    invoke-direct {p0, v2, v2}, Lorg/telegram/ui/Components/EmojiView;->showBottomTab(ZZ)V

    .line 1419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animated_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/EmojiView;->addEmojiToRecent(Ljava/lang/String;)V

    .line 1420
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    invoke-static {p5}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->-$$Nest$fgetisRecent(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;)Z

    move-result v6

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v1 .. v6}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->onCustomEmojiSelected(JLorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$sendEmoji$1()V
    .locals 4

    .line 1440
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1441
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v1

    const-string v3, "user_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 1442
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance v2, Lorg/telegram/ui/Components/EmojiView$3;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Components/EmojiView$3;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$showStickerBanHint$27(ZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 6240
    invoke-virtual {p0, v0, p1, p2}, Lorg/telegram/ui/Components/EmojiView;->showStickerBanHint(ZZZ)V

    return-void
.end method

.method private onPageScrolled(III)V
    .locals 3

    .line 5399
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne p1, v0, :cond_2

    if-eqz p3, :cond_1

    move v1, v2

    .line 5403
    :cond_1
    invoke-interface {p2, v1}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->onTabOpened(I)V

    return-void

    :cond_2
    if-ne p1, v2, :cond_3

    const/4 p1, 0x3

    .line 5405
    invoke-interface {p2, p1}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->onTabOpened(I)V

    return-void

    .line 5407
    :cond_3
    invoke-interface {p2, v1}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->onTabOpened(I)V

    return-void
.end method

.method private openPremiumAnimatedEmojiFeature()V
    .locals 1

    .line 3716
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    if-eqz v0, :cond_0

    .line 3717
    invoke-interface {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->onAnimatedEmojiUnlockClick()V

    :cond_0
    return-void
.end method

.method private openSearch(Lorg/telegram/ui/Components/EmojiView$SearchField;)V
    .locals 14

    .line 4645
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->searchAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 4646
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 4647
    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->searchAnimation:Landroid/animation/AnimatorSet;

    :cond_0
    const/4 v0, 0x0

    .line 4650
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->firstStickersAttach:Z

    .line 4651
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->firstGifAttach:Z

    .line 4652
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->firstEmojiAttach:Z

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ge v1, v2, :cond_d

    if-nez v1, :cond_1

    .line 4659
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    .line 4660
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    .line 4661
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    .line 4662
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->emojiLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    goto :goto_1

    :cond_1
    if-ne v1, v3, :cond_2

    .line 4664
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    .line 4665
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 4666
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    .line 4667
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->gifLayoutManager:Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    goto :goto_1

    .line 4669
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->stickersSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    .line 4670
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 4671
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    .line 4672
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->stickersLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    :goto_1
    if-nez v4, :cond_3

    goto/16 :goto_6

    :cond_3
    const/high16 v8, 0x42200000    # 40.0f

    const/4 v9, 0x2

    const/4 v10, 0x0

    if-ne p1, v4, :cond_6

    .line 4678
    iget-object v11, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    if-eqz v11, :cond_6

    invoke-interface {v11}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->isExpanded()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 4679
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->searchAnimation:Landroid/animation/AnimatorSet;

    const/high16 v11, 0x42100000    # 36.0f

    .line 4680
    sget-object v12, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    if-eqz v6, :cond_4

    if-eq v1, v9, :cond_4

    .line 4682
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    new-array v13, v3, [F

    aput v8, v13, v0

    invoke-static {v6, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 4683
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    new-array v11, v3, [F

    aput v8, v11, v0

    invoke-static {v5, v12, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 4684
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    new-array v11, v3, [F

    aput v10, v11, v0

    invoke-static {v4, v12, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v6, v2, v0

    aput-object v8, v2, v3

    aput-object v4, v2, v9

    .line 4681
    invoke-virtual {v7, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_3

    :cond_4
    if-ne v1, v9, :cond_5

    move v2, v10

    goto :goto_2

    .line 4687
    :cond_5
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    :goto_2
    new-array v6, v3, [F

    aput v2, v6, v0

    invoke-static {v5, v12, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 4688
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    new-array v8, v3, [F

    aput v6, v8, v0

    invoke-static {v4, v12, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-array v6, v9, [Landroid/animation/Animator;

    aput-object v2, v6, v0

    aput-object v4, v6, v3

    .line 4686
    invoke-virtual {v7, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 4690
    :goto_3
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->searchAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v3, 0xdc

    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 4691
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->searchAnimation:Landroid/animation/AnimatorSet;

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4692
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->searchAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$31;

    invoke-direct {v3, p0, v5}, Lorg/telegram/ui/Components/EmojiView$31;-><init>(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/RecyclerListView;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4715
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->searchAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_6

    .line 4717
    :cond_6
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v4, v2}, Landroid/view/View;->setTranslationY(F)V

    if-eqz v6, :cond_7

    if-eq v1, v9, :cond_7

    .line 4719
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v6, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 4721
    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-ne v5, v2, :cond_8

    const/high16 v2, 0x40800000    # 4.0f

    .line 4722
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget v4, p0, Lorg/telegram/ui/Components/EmojiView;->bottomInset:I

    invoke-virtual {v5, v0, v2, v0, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_4

    .line 4723
    :cond_8
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    if-ne v5, v2, :cond_9

    const/high16 v2, 0x40a00000    # 5.0f

    .line 4724
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget v6, p0, Lorg/telegram/ui/Components/EmojiView;->bottomInset:I

    invoke-virtual {v5, v4, v0, v2, v6}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_4

    .line 4725
    :cond_9
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-ne v5, v2, :cond_a

    .line 4726
    iget v2, p0, Lorg/telegram/ui/Components/EmojiView;->searchFieldHeight:I

    iget v4, p0, Lorg/telegram/ui/Components/EmojiView;->bottomInset:I

    invoke-virtual {v5, v0, v2, v0, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 4728
    :cond_a
    :goto_4
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-ne v5, v2, :cond_c

    .line 4729
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->gifAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->-$$Nest$fgetresults(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_b

    goto :goto_5

    :cond_b
    move v3, v0

    :goto_5
    invoke-static {v2, v3}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->-$$Nest$fputshowTrendingWhenSearchEmpty(Lorg/telegram/ui/Components/EmojiView$GifAdapter;Z)V

    if-eqz v3, :cond_c

    .line 4730
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->search(Ljava/lang/String;)V

    .line 4731
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    if-eq v2, v3, :cond_c

    .line 4732
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 4736
    :cond_c
    invoke-virtual {v7, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 4739
    :cond_d
    invoke-direct {p0, v0, v3}, Lorg/telegram/ui/Components/EmojiView;->showBottomTab(ZZ)V

    return-void
.end method

.method private openTrendingStickers(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;)V
    .locals 9

    .line 4322
    new-instance v2, Lorg/telegram/ui/Components/EmojiView$30;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/EmojiView$30;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    .line 4376
    iget-object v8, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    new-instance v0, Lorg/telegram/ui/Components/TrendingStickersLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->primaryInstallingStickerSets:[Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->installingStickerSets:Landroid/util/LongSparseArray;

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->removingStickerSets:Landroid/util/LongSparseArray;

    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/TrendingStickersLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/TrendingStickersLayout$Delegate;[Lorg/telegram/tgnet/TLRPC$StickerSetCovered;Landroid/util/LongSparseArray;Landroid/util/LongSparseArray;Lorg/telegram/tgnet/TLRPC$StickerSetCovered;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-interface {v8, v0}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->showTrendingStickersAlert(Lorg/telegram/ui/Components/TrendingStickersLayout;)V

    return-void
.end method

.method private postBackspaceRunnable(I)V
    .locals 3

    .line 5412
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda31;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/ui/Components/EmojiView;I)V

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private reloadStickersAdapter()V
    .locals 1

    .line 5922
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    if-eqz v0, :cond_0

    .line 5923
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->notifyDataSetChanged()V

    .line 5925
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersSearchGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    if-eqz v0, :cond_1

    .line 5926
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->notifyDataSetChanged()V

    .line 5928
    :cond_1
    invoke-static {}, Lorg/telegram/ui/ContentPreviewViewer;->getInstance()Lorg/telegram/ui/ContentPreviewViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ContentPreviewViewer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5929
    invoke-static {}, Lorg/telegram/ui/ContentPreviewViewer;->getInstance()Lorg/telegram/ui/ContentPreviewViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ContentPreviewViewer;->close()V

    .line 5931
    :cond_2
    invoke-static {}, Lorg/telegram/ui/ContentPreviewViewer;->getInstance()Lorg/telegram/ui/ContentPreviewViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ContentPreviewViewer;->reset()V

    return-void
.end method

.method private resetTabsY(I)V
    .locals 3

    .line 5109
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->isSearchOpened()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-nez p1, :cond_2

    :cond_1
    return-void

    .line 5112
    :cond_2
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->getTabsForType(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->tabsMinusDy:[I

    const/4 v2, 0x0

    aput v2, v1, p1

    int-to-float p1, v2

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private saveNewPage()V
    .locals 3

    .line 5375
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    if-nez v0, :cond_0

    goto :goto_1

    .line 5379
    :cond_0
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 5387
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentPage:I

    if-eq v0, v1, :cond_3

    .line 5388
    iput v1, p0, Lorg/telegram/ui/Components/EmojiView;->currentPage:I

    .line 5389
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "selected_page"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    :goto_1
    return-void
.end method

.method private scrollEmojisToPosition(II)V
    .locals 4

    .line 4800
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 4801
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    const/4 v2, 0x1

    if-nez v0, :cond_0

    sub-int v0, p1, v1

    .line 4802
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x41100000    # 9.0f

    mul-float/2addr v1, v3

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->animationsEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4803
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiScrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    const/4 v3, 0x0

    if-ge v1, p1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->setScrollDirection(I)V

    .line 4804
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiScrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-virtual {v0, p1, p2, v3, v2}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->scrollToPosition(IIZZ)V

    return-void

    .line 4806
    :cond_3
    iput-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView;->ignoreStickersScroll:Z

    .line 4807
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$33;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2}, Lorg/telegram/ui/Components/EmojiView$33;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;I)V

    .line 4818
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 4819
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;->setOffset(I)V

    .line 4820
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method

.method private scrollGifsToTop()V
    .locals 2

    .line 5338
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifLayoutManager:Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    const/4 v0, 0x2

    .line 5339
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/EmojiView;->resetTabsY(I)V

    return-void
.end method

.method private scrollStickersToPosition(II)V
    .locals 4

    .line 4773
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 4774
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    const/4 v2, 0x1

    if-nez v0, :cond_1

    sub-int v0, p1, v1

    .line 4775
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x28

    if-le v0, v1, :cond_1

    .line 4776
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersScrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    const/4 v3, 0x0

    if-ge v1, p1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->setScrollDirection(I)V

    .line 4777
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersScrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-virtual {v0, p1, p2, v3, v2}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->scrollToPosition(IIZZ)V

    return-void

    .line 4779
    :cond_1
    iput-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView;->ignoreStickersScroll:Z

    .line 4780
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method private sendEmoji(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;Ljava/lang/String;)V
    .locals 11

    if-nez p1, :cond_1

    :cond_0
    move-object p1, p0

    goto/16 :goto_b

    .line 1378
    :cond_1
    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->getSpan()Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    .line 1383
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    if-eqz p2, :cond_0

    .line 1384
    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->getSpan()Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    move-result-object p2

    iget-wide v3, p2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentId:J

    .line 1385
    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->getSpan()Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 1387
    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->-$$Nest$fgetpack(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;)Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->-$$Nest$fgetpack(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;)Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->forGroup:Z

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    if-nez p2, :cond_5

    move v5, v2

    .line 1389
    :goto_1
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->emojipacksProcessed:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 1390
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->emojipacksProcessed:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    move v7, v2

    .line 1391
    :goto_2
    iget-object v8, v6, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 1392
    iget-object v8, v6, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v8, v8, v3

    if-nez v8, :cond_3

    .line 1393
    iget-object p2, v6, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$Document;

    goto :goto_3

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    if-nez p2, :cond_6

    .line 1400
    iget p2, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {p2, v3, v4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findDocument(IJ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p2

    :cond_6
    move-object v5, p2

    if-eqz v5, :cond_7

    .line 1403
    invoke-static {v5}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object p2

    :goto_4
    move-object v6, p2

    goto :goto_5

    :cond_7
    const/4 p2, 0x0

    goto :goto_4

    .line 1405
    :goto_5
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz p2, :cond_8

    invoke-static {p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p2

    goto :goto_6

    :cond_8
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->bulletinContainer:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p2, v7}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p2

    .line 1406
    :goto_6
    invoke-static {v5}, Lorg/telegram/messenger/MessageObject;->isFreeEmoji(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v7

    if-nez v7, :cond_a

    iget v7, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v7

    if-nez v7, :cond_a

    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    if-eqz v7, :cond_9

    invoke-interface {v7}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->isUserSelf()Z

    move-result v7

    if-nez v7, :cond_a

    :cond_9
    if-nez v0, :cond_a

    move v0, v1

    goto :goto_7

    :cond_a
    move v0, v2

    :goto_7
    if-eqz v0, :cond_b

    .line 1407
    sget-object v7, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "local_premium_emoji_hint"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_b

    iget-boolean v7, p0, Lorg/telegram/ui/Components/EmojiView;->allowEmojisForNonPremium:Z

    if-eqz v7, :cond_b

    .line 1408
    invoke-direct {p0, v2, v1}, Lorg/telegram/ui/Components/EmojiView;->showBottomTab(ZZ)V

    .line 1411
    sget v0, Lorg/telegram/messenger/R$string;->LocalPremiumEmojiHint:I

    .line 1413
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->OK:I

    .line 1414
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda27;

    move-object v8, p1

    move-object v7, v6

    move-object v6, v5

    move-wide v4, v3

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/Components/EmojiView;JLorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;)V

    move-object p1, v3

    move-object v5, v6

    .line 1411
    invoke-virtual {p2, v5, v0, v1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createEmojiBulletin(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p2

    .line 1422
    invoke-virtual {p2}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    :cond_b
    move-object v8, p1

    move-object p1, p0

    if-eqz v0, :cond_e

    .line 1425
    iget-boolean v0, p1, Lorg/telegram/ui/Components/EmojiView;->allowEmojisForNonPremium:Z

    if-nez v0, :cond_e

    .line 1426
    invoke-direct {p0, v2, v1}, Lorg/telegram/ui/Components/EmojiView;->showBottomTab(ZZ)V

    .line 1427
    iget-boolean v0, p1, Lorg/telegram/ui/Components/EmojiView;->premiumBulletin:Z

    if-nez v0, :cond_d

    iget-object v0, p1, Lorg/telegram/ui/Components/EmojiView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-nez v0, :cond_c

    goto :goto_8

    .line 1435
    :cond_c
    sget v0, Lorg/telegram/messenger/R$raw;->saved_messages:I

    sget v2, Lorg/telegram/messenger/R$string;->UnlockPremiumEmojiHint2:I

    .line 1437
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->Open:I

    .line 1438
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda29;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    .line 1435
    invoke-virtual {p2, v0, v2, v3, v4}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p2

    .line 1457
    invoke-virtual {p2}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_9

    .line 1428
    :cond_d
    :goto_8
    sget v0, Lorg/telegram/messenger/R$string;->UnlockPremiumEmojiHint:I

    .line 1430
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$string;->PremiumMore:I

    .line 1431
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda28;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    .line 1428
    invoke-virtual {p2, v5, v0, v2, v3}, Lorg/telegram/ui/Components/BulletinFactory;->createEmojiBulletin(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p2

    .line 1433
    invoke-virtual {p2}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 1459
    :goto_9
    iget-boolean p2, p1, Lorg/telegram/ui/Components/EmojiView;->premiumBulletin:Z

    xor-int/2addr p2, v1

    iput-boolean p2, p1, Lorg/telegram/ui/Components/EmojiView;->premiumBulletin:Z

    return-void

    .line 1462
    :cond_e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iput-wide v9, p1, Lorg/telegram/ui/Components/EmojiView;->shownBottomTabAfterClick:J

    .line 1463
    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/Components/EmojiView;->showBottomTab(ZZ)V

    .line 1464
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "animated_"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/EmojiView;->addEmojiToRecent(Ljava/lang/String;)V

    .line 1465
    iget-object v2, p1, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    invoke-static {v8}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->-$$Nest$fgetisRecent(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;)Z

    move-result v7

    invoke-interface/range {v2 .. v7}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->onCustomEmojiSelected(JLorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Z)V

    return-void

    :cond_f
    move-object v8, p1

    move-object p1, p0

    .line 1469
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p1, Lorg/telegram/ui/Components/EmojiView;->shownBottomTabAfterClick:J

    .line 1470
    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/Components/EmojiView;->showBottomTab(ZZ)V

    if-eqz p2, :cond_10

    move-object v0, p2

    goto :goto_a

    .line 1471
    :cond_10
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1472
    :goto_a
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1473
    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    if-nez p2, :cond_12

    .line 1475
    invoke-static {v8}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->-$$Nest$fgetisRecent(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;)Z

    move-result p2

    if-nez p2, :cond_11

    .line 1476
    sget-object p2, Lorg/telegram/messenger/Emoji;->emojiColor:Ljava/util/HashMap;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_11

    .line 1478
    invoke-static {v0, p2}, Lorg/telegram/ui/Components/EmojiView;->addColorToCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1481
    :cond_11
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/EmojiView;->addEmojiToRecent(Ljava/lang/String;)V

    .line 1482
    iget-object p2, p1, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    if-eqz p2, :cond_13

    .line 1483
    invoke-static {v0}, Lorg/telegram/messenger/Emoji;->fixEmoji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->onEmojiSelected(Ljava/lang/String;)V

    return-void

    .line 1486
    :cond_12
    iget-object v0, p1, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    if-eqz v0, :cond_13

    .line 1487
    invoke-static {p2}, Lorg/telegram/messenger/Emoji;->fixEmoji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->onEmojiSelected(Ljava/lang/String;)V

    :cond_13
    :goto_b
    return-void
.end method

.method private showBackspaceButton(ZZ)V
    .locals 8

    if-eqz p1, :cond_0

    .line 4986
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    if-nez p1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_1
    return-void

    .line 4989
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButtonAnimation:Landroid/animation/AnimatorSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 4990
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 4991
    iput-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButtonAnimation:Landroid/animation/AnimatorSet;

    .line 4993
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    const/4 v2, 0x1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p2, :cond_9

    if-eqz p1, :cond_5

    .line 4996
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4998
    :cond_5
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButtonAnimation:Landroid/animation/AnimatorSet;

    .line 4999
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    move v5, v3

    goto :goto_1

    :cond_6
    move v5, v1

    .line 5000
    :goto_1
    new-array v6, v2, [F

    aput v5, v6, v0

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_7

    move v6, v3

    goto :goto_2

    :cond_7
    move v6, v1

    .line 5001
    :goto_2
    new-array v7, v2, [F

    aput v6, v7, v0

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_8

    move v1, v3

    .line 5002
    :cond_8
    new-array v3, v2, [F

    aput v1, v3, v0

    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-static {v6, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v4, v3, v0

    aput-object v5, v3, v2

    const/4 v0, 0x2

    aput-object v1, v3, v0

    .line 4999
    invoke-virtual {p2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 5004
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButtonAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0xc8

    invoke-virtual {p2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 5005
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButtonAnimation:Landroid/animation/AnimatorSet;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5006
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButtonAnimation:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/Components/EmojiView$35;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/EmojiView$35;-><init>(Lorg/telegram/ui/Components/EmojiView;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5014
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButtonAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    .line 5016
    :cond_9
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_a

    move v2, v3

    goto :goto_3

    :cond_a
    move v2, v1

    :goto_3
    invoke-virtual {p2, v2}, Landroid/view/View;->setAlpha(F)V

    .line 5017
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_b

    move v2, v3

    goto :goto_4

    :cond_b
    move v2, v1

    :goto_4
    invoke-virtual {p2, v2}, Landroid/view/View;->setScaleX(F)V

    .line 5018
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_c

    move v1, v3

    :cond_c
    invoke-virtual {p2, v1}, Landroid/view/View;->setScaleY(F)V

    .line 5019
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_d

    goto :goto_5

    :cond_d
    const/4 v0, 0x4

    :goto_5
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private showBottomTab(ZZ)V
    .locals 2

    const/4 v0, 0x0

    .line 5069
    iput v0, p0, Lorg/telegram/ui/Components/EmojiView;->lastBottomScrollDy:F

    .line 5070
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->isSearchOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    if-eqz p1, :cond_1

    .line 5073
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_1
    if-nez p1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    :cond_2
    return-void

    .line 5076
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_4

    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 5077
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabVisibility:Lme/vkryl/android/animator/BoolAnimator;

    invoke-virtual {v0, p1, p2}, Lme/vkryl/android/animator/BoolAnimator;->setValue(ZZ)V

    return-void
.end method

.method private showEmojiShadow(ZZ)V
    .locals 4

    if-eqz p1, :cond_0

    .line 4743
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabsShadow:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    if-nez p1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabsShadow:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_1
    return-void

    .line 4746
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabShadowAnimator:Landroid/animation/AnimatorSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 4747
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 4748
    iput-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabShadowAnimator:Landroid/animation/AnimatorSet;

    .line 4750
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabsShadow:Landroid/view/View;

    const/4 v2, 0x1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_6

    .line 4752
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabShadowAnimator:Landroid/animation/AnimatorSet;

    .line 4753
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabsShadow:Landroid/view/View;

    if-eqz p1, :cond_5

    move v0, v1

    :cond_5
    new-array p1, v2, [F

    const/4 v1, 0x0

    aput v0, p1, v1

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-static {v3, v0, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-array v0, v2, [Landroid/animation/Animator;

    aput-object p1, v0, v1

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 4754
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabShadowAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 4755
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabShadowAnimator:Landroid/animation/AnimatorSet;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4756
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabShadowAnimator:Landroid/animation/AnimatorSet;

    new-instance p2, Lorg/telegram/ui/Components/EmojiView$32;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/EmojiView$32;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4762
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabShadowAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    .line 4764
    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabsShadow:Landroid/view/View;

    if-eqz p1, :cond_7

    move v0, v1

    :cond_7
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private showStickerSettingsButton(ZZ)V
    .locals 8

    .line 5024
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSettingsButton:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 5027
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_1
    if-nez p1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    :cond_2
    :goto_0
    return-void

    .line 5030
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersButtonAnimation:Landroid/animation/AnimatorSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 5031
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 5032
    iput-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersButtonAnimation:Landroid/animation/AnimatorSet;

    .line 5034
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSettingsButton:Landroid/widget/ImageView;

    const/4 v2, 0x1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p2, :cond_a

    if-eqz p1, :cond_6

    .line 5037
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5039
    :cond_6
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersButtonAnimation:Landroid/animation/AnimatorSet;

    .line 5040
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSettingsButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_7

    move v5, v3

    goto :goto_2

    :cond_7
    move v5, v1

    :goto_2
    new-array v6, v2, [F

    aput v5, v6, v0

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSettingsButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_8

    move v6, v3

    goto :goto_3

    :cond_8
    move v6, v1

    .line 5041
    :goto_3
    new-array v7, v2, [F

    aput v6, v7, v0

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSettingsButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_9

    move v1, v3

    .line 5042
    :cond_9
    new-array v3, v2, [F

    aput v1, v3, v0

    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-static {v6, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v4, v3, v0

    aput-object v5, v3, v2

    const/4 v0, 0x2

    aput-object v1, v3, v0

    .line 5040
    invoke-virtual {p2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 5043
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersButtonAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0xc8

    invoke-virtual {p2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 5044
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersButtonAnimation:Landroid/animation/AnimatorSet;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5045
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersButtonAnimation:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/Components/EmojiView$36;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/EmojiView$36;-><init>(Lorg/telegram/ui/Components/EmojiView;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5053
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersButtonAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    .line 5055
    :cond_a
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSettingsButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_b

    move v2, v3

    goto :goto_4

    :cond_b
    move v2, v1

    :goto_4
    invoke-virtual {p2, v2}, Landroid/view/View;->setAlpha(F)V

    .line 5056
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSettingsButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_c

    move v2, v3

    goto :goto_5

    :cond_c
    move v2, v1

    :goto_5
    invoke-virtual {p2, v2}, Landroid/view/View;->setScaleX(F)V

    .line 5057
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSettingsButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_d

    move v1, v3

    :cond_d
    invoke-virtual {p2, v1}, Landroid/view/View;->setScaleY(F)V

    .line 5058
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSettingsButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_e

    goto :goto_6

    :cond_e
    const/4 v0, 0x4

    :goto_6
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private startStopVisibleGifs(Z)V
    .locals 5

    .line 4534
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-nez v0, :cond_0

    goto :goto_2

    .line 4537
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 4539
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4540
    instance-of v4, v3, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz v4, :cond_2

    .line 4541
    check-cast v3, Lorg/telegram/ui/Cells/ContextLinkCell;

    .line 4542
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ContextLinkCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 4544
    invoke-virtual {v3, v4}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartAnimation(Z)V

    .line 4545
    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->startAnimation()V

    goto :goto_1

    .line 4547
    :cond_1
    invoke-virtual {v3, v1}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartAnimation(Z)V

    .line 4548
    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->stopAnimation()V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method private stopAnimatingTabsY(I)V
    .locals 1

    .line 5144
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->tabsYAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5145
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->tabsYAnimators:[Landroid/animation/ObjectAnimator;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method private updateBottomTabContainerPosition()V
    .locals 4

    .line 4388
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_8

    .line 4390
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v1

    .line 4391
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_0

    .line 4392
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    int-to-float v2, v2

    add-float/2addr v1, v2

    goto :goto_1

    .line 4394
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    goto :goto_0

    .line 4396
    :goto_1
    sget-boolean v2, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->isInBubbleMode()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView;->isNewHeightControl:Z

    if-eqz v2, :cond_3

    .line 4397
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_2
    int-to-float v0, v0

    sub-float/2addr v1, v0

    goto :goto_3

    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    .line 4399
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_2

    .line 4402
    :goto_3
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->visibleInAppKeyboardHeight:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_4

    .line 4403
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/Components/EmojiView;->visibleInAppKeyboardHeight:F

    sub-float/2addr v0, v2

    add-float/2addr v1, v0

    goto :goto_4

    .line 4404
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v1

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->fixBottomTabContainerTranslation:Z

    if-nez v0, :cond_6

    :cond_5
    move v1, v2

    :cond_6
    :goto_4
    neg-float v0, v1

    .line 4409
    iget-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView;->needEmojiSearch:Z

    if-eqz v1, :cond_7

    const/high16 v1, 0x42340000    # 45.0f

    goto :goto_5

    :cond_7
    const/high16 v1, 0x42480000    # 50.0f

    :goto_5
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Components/EmojiView;->bottomInset:I

    neg-int v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabVisibility:Lme/vkryl/android/animator/BoolAnimator;

    .line 4410
    invoke-virtual {v3}, Lme/vkryl/android/animator/BoolAnimator;->getFloatValue()F

    move-result v3

    .line 4408
    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v1

    int-to-float v1, v1

    .line 4412
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainer:Landroid/widget/FrameLayout;

    add-float/2addr v0, v1

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 4413
    iget-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView;->needEmojiSearch:Z

    if-eqz v1, :cond_8

    .line 4414
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->bulletinContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_8
    return-void
.end method

.method private updateEmojiHeaders()V
    .locals 3

    .line 5433
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 5436
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 5437
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5438
    instance-of v2, v1, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;

    if-eqz v2, :cond_1

    .line 5439
    check-cast v1, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->updateState(Z)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private updateEmojiTabsPosition()V
    .locals 1

    .line 3646
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/EmojiView;->updateEmojiTabsPosition(I)V

    return-void
.end method

.method private updateEmojiTabsPosition(I)V
    .locals 8

    .line 3649
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSmoothScrolling:Z

    if-nez v0, :cond_8

    const/4 v0, -0x1

    if-eq p1, v0, :cond_8

    .line 3651
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView;->getRecentEmoji()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView;->needEmojiSearch:Z

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->emojiAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->-$$Nest$fgettrendingHeaderRow(Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;)I

    move-result v2

    const/4 v3, 0x0

    if-ltz v2, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    add-int/2addr v1, v2

    if-lt p1, v1, :cond_7

    move v2, v3

    .line 3654
    :goto_1
    sget-object v4, Lorg/telegram/messenger/EmojiData;->dataColored:[[Ljava/lang/String;

    array-length v5, v4

    if-ge v2, v5, :cond_2

    .line 3655
    aget-object v4, v4, v2

    array-length v4, v4

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v1, v4

    if-ge p1, v1, :cond_1

    add-int/lit8 v0, v2, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-gez v0, :cond_6

    .line 3663
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView;->getEmojipacks()Ljava/util/ArrayList;

    move-result-object v1

    .line 3664
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->emojiAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->-$$Nest$fgetpackStartPosition(Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_3
    if-ltz v2, :cond_6

    .line 3665
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->emojiAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->-$$Nest$fgetpackStartPosition(Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gt v4, p1, :cond_5

    .line 3666
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojipacksProcessed:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    .line 3667
    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_6

    .line 3668
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    iget-object v2, v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iget-object v2, p1, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    cmp-long v2, v4, v6

    if-nez v2, :cond_4

    iget-boolean v2, p1, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->featured:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p1, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->installed:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->installedEmojiSets:Ljava/util/ArrayList;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 3669
    :cond_3
    sget-object p1, Lorg/telegram/messenger/EmojiData;->dataColored:[[Ljava/lang/String;

    array-length p1, p1

    add-int/lit8 p1, p1, 0x1

    add-int/2addr p1, v3

    move v3, p1

    goto :goto_5

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_6
    move v3, v0

    :cond_7
    :goto_5
    if-ltz v3, :cond_8

    .line 3679
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/EmojiTabsStrip;->select(I)V

    :cond_8
    return-void
.end method

.method private updateGifTabs()V
    .locals 14

    .line 5641
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getCurrentPosition()I

    move-result v0

    .line 5643
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifRecentTabNum:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    if-ltz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 5645
    :goto_1
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->recentGifs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    .line 5647
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v6, v2}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->beginUpdate(Z)V

    const/4 v6, -0x2

    .line 5650
    iput v6, p0, Lorg/telegram/ui/Components/EmojiView;->gifRecentTabNum:I

    .line 5651
    iput v6, p0, Lorg/telegram/ui/Components/EmojiView;->gifTrendingTabNum:I

    .line 5652
    iput v6, p0, Lorg/telegram/ui/Components/EmojiView;->gifFirstEmojiTabNum:I

    if-nez v5, :cond_2

    .line 5655
    iput v2, p0, Lorg/telegram/ui/Components/EmojiView;->gifRecentTabNum:I

    .line 5656
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->gifIcons:[Landroid/graphics/drawable/Drawable;

    aget-object v7, v7, v2

    invoke-virtual {v6, v2, v7}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->addIconTab(ILandroid/graphics/drawable/Drawable;)Landroid/widget/FrameLayout;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/R$string;->RecentStickers:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    move v6, v3

    goto :goto_2

    :cond_2
    move v6, v2

    :goto_2
    add-int/lit8 v7, v6, 0x1

    .line 5659
    iput v6, p0, Lorg/telegram/ui/Components/EmojiView;->gifTrendingTabNum:I

    .line 5660
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget-object v8, p0, Lorg/telegram/ui/Components/EmojiView;->gifIcons:[Landroid/graphics/drawable/Drawable;

    aget-object v8, v8, v3

    invoke-virtual {v6, v3, v8}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->addIconTab(ILandroid/graphics/drawable/Drawable;)Landroid/widget/FrameLayout;

    move-result-object v6

    sget v8, Lorg/telegram/messenger/R$string;->FeaturedGifs:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 5662
    iput v7, p0, Lorg/telegram/ui/Components/EmojiView;->gifFirstEmojiTabNum:I

    const/high16 v6, 0x41500000    # 13.0f

    .line 5663
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    const/high16 v6, 0x41300000    # 11.0f

    .line 5664
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    .line 5665
    iget v6, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController;->gifSearchEmojies:Ljava/util/ArrayList;

    .line 5666
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    move v8, v2

    :goto_3
    if-ge v8, v7, :cond_4

    .line 5667
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 5668
    invoke-static {v9}, Lorg/telegram/messenger/Emoji;->getEmojiDrawable(Ljava/lang/CharSequence;)Lorg/telegram/messenger/Emoji$EmojiDrawable;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 5671
    iget v11, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v11}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v11

    invoke-virtual {v11, v9}, Lorg/telegram/messenger/MediaDataController;->getEmojiAnimatedSticker(Ljava/lang/CharSequence;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v11

    .line 5672
    iget-object v12, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    add-int/lit8 v13, v8, 0x3

    invoke-virtual {v12, v13, v10, v11}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->addEmojiTab(ILorg/telegram/messenger/Emoji$EmojiDrawable;Lorg/telegram/tgnet/TLRPC$Document;)Landroid/view/View;

    move-result-object v10

    .line 5674
    invoke-virtual {v10, v9}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 5678
    :cond_4
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->commitUpdate()V

    .line 5679
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->updateTabStyles()V

    if-eqz v4, :cond_5

    if-eqz v5, :cond_5

    .line 5682
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifTrendingTabNum:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->selectTab(I)V

    .line 5683
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    if-eqz v0, :cond_7

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$SearchField;->-$$Nest$fgetcategoriesListView(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/StickerCategoriesListView;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 5684
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$SearchField;->-$$Nest$fgetcategoriesListView(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/StickerCategoriesListView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->-$$Nest$fgettrending(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->selectCategory(Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;)V

    return-void

    .line 5686
    :cond_5
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-static {v4}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_7

    if-nez v5, :cond_6

    if-nez v1, :cond_6

    .line 5688
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    add-int/2addr v0, v3

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    return-void

    :cond_6
    if-eqz v5, :cond_7

    if-eqz v1, :cond_7

    .line 5690
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    sub-int/2addr v0, v3

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    :cond_7
    return-void
.end method

.method private updateRecentGifs()V
    .locals 6

    .line 6139
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->recentGifs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6140
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentGifs:Ljava/util/ArrayList;

    const v2, 0x7fffffff

    invoke-static {v1, v2}, Lorg/telegram/messenger/MediaDataController;->calcDocumentsHash(Ljava/util/ArrayList;I)J

    move-result-wide v3

    .line 6141
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaDataController;->getRecentGifs()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentGifs:Ljava/util/ArrayList;

    .line 6142
    invoke-static {v1, v2}, Lorg/telegram/messenger/MediaDataController;->calcDocumentsHash(Ljava/util/ArrayList;I)J

    move-result-wide v1

    .line 6143
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    if-eqz v5, :cond_0

    if-nez v0, :cond_0

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->recentGifs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->recentGifs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 6144
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateGifTabs()V

    .line 6146
    :cond_2
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->recentGifs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v0, v5, :cond_3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    if-eqz v0, :cond_4

    .line 6147
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->notifyDataSetChanged()V

    :cond_4
    return-void
.end method

.method private updateStickerTabs(Z)V
    .locals 12

    .line 5447
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_11

    :cond_0
    const/4 v0, -0x2

    .line 5450
    iput v0, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabNum:I

    .line 5451
    iput v0, p0, Lorg/telegram/ui/Components/EmojiView;->favTabNum:I

    .line 5452
    iput v0, p0, Lorg/telegram/ui/Components/EmojiView;->trendingTabNum:I

    .line 5453
    iput v0, p0, Lorg/telegram/ui/Components/EmojiView;->premiumTabNum:I

    const/4 v0, 0x0

    .line 5454
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->hasChatStickers:Z

    .line 5456
    iput v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    .line 5457
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getCurrentPosition()I

    move-result v1

    .line 5458
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->installingStickerSets:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->removingStickerSets:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move v3, v4

    goto :goto_0

    :cond_2
    move v3, v0

    :goto_0
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->beginUpdate(Z)V

    .line 5460
    iget v2, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    .line 5462
    iget v3, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getEmojiSettings(I)Landroid/content/SharedPreferences;

    .line 5463
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->featuredStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 5464
    invoke-virtual {v2}, Lorg/telegram/messenger/MediaDataController;->getFeaturedStickerSets()Ljava/util/ArrayList;

    .line 5472
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->trendingAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;

    if-eqz v3, :cond_3

    .line 5473
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 5484
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->favouriteStickers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 5485
    iget v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    iput v3, p0, Lorg/telegram/ui/Components/EmojiView;->favTabNum:I

    add-int/2addr v3, v4

    .line 5486
    iput v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    .line 5487
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->stickerIcons:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v4

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->addStickerIconTab(ILandroid/graphics/drawable/Drawable;)Lorg/telegram/ui/Components/StickerTabView;

    move-result-object v3

    .line 5488
    iget-object v5, v3, Lorg/telegram/ui/Components/StickerTabView;->textView:Landroid/widget/TextView;

    sget v6, Lorg/telegram/messenger/R$string;->FavoriteStickersShort:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5489
    sget v5, Lorg/telegram/messenger/R$string;->FavoriteStickers:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 5492
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 5493
    iget v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    iput v3, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabNum:I

    add-int/2addr v3, v4

    .line 5494
    iput v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    .line 5495
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->stickerIcons:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v0

    invoke-virtual {v3, v0, v5}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->addStickerIconTab(ILandroid/graphics/drawable/Drawable;)Lorg/telegram/ui/Components/StickerTabView;

    move-result-object v3

    .line 5496
    iget-object v5, v3, Lorg/telegram/ui/Components/StickerTabView;->textView:Landroid/widget/TextView;

    sget v6, Lorg/telegram/messenger/R$string;->RecentStickersShort:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5497
    sget v5, Lorg/telegram/messenger/R$string;->RecentStickers:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 5501
    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    .line 5502
    iput-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->groupStickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    const/4 v5, -0x1

    .line 5503
    iput v5, p0, Lorg/telegram/ui/Components/EmojiView;->groupStickerPackPosition:I

    const/16 v5, -0xa

    .line 5504
    iput v5, p0, Lorg/telegram/ui/Components/EmojiView;->groupStickerPackNum:I

    .line 5506
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->frozenStickerSets:Ljava/util/ArrayList;

    if-eqz v5, :cond_6

    if-eqz p1, :cond_7

    .line 5507
    :cond_6
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MediaDataController;->getStickerSets(I)Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {p1, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->frozenStickerSets:Ljava/util/ArrayList;

    .line 5509
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->frozenStickerSets:Ljava/util/ArrayList;

    move v5, v0

    .line 5510
    :goto_1
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->primaryInstallingStickerSets:[Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    array-length v7, v6

    if-ge v5, v7, :cond_c

    .line 5511
    aget-object v6, v6, v5

    if-eqz v6, :cond_b

    .line 5513
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v7, v7, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-virtual {v2, v7, v8}, Lorg/telegram/messenger/MediaDataController;->getStickerSetById(J)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 5514
    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v7, :cond_8

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$StickerSet;->archived:Z

    if-nez v7, :cond_8

    .line 5515
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->primaryInstallingStickerSets:[Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    aput-object v3, v6, v5

    goto :goto_3

    .line 5517
    :cond_8
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;-><init>()V

    .line 5518
    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    .line 5519
    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->cover:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v8, :cond_9

    .line 5520
    iget-object v6, v7, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 5521
    :cond_9
    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->covers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_a

    .line 5522
    iget-object v8, v7, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->covers:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5524
    :cond_a
    :goto_2
    iget-object v6, v7, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_b

    .line 5525
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 5530
    :cond_c
    iget v5, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-virtual {v5, p1}, Lorg/telegram/messenger/MessagesController;->filterPremiumStickers(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    move v5, v0

    .line 5531
    :goto_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_10

    .line 5532
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 5533
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v7, :cond_d

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$StickerSet;->archived:Z

    if-nez v7, :cond_f

    :cond_d
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    if-eqz v7, :cond_f

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_e

    goto :goto_5

    .line 5536
    :cond_e
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 5547
    :cond_10
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz p1, :cond_1a

    .line 5548
    iget p1, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getEmojiSettings(I)Landroid/content/SharedPreferences;

    move-result-object p1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "group_hide_stickers_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, -0x1

    invoke-interface {p1, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 5549
    iget p1, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-wide v10, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    .line 5550
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->stickerset:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v5, :cond_13

    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    if-nez p1, :cond_11

    goto :goto_7

    .line 5552
    :cond_11
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->stickerset:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz p1, :cond_15

    .line 5553
    iget-wide v5, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    cmp-long p1, v8, v5

    if-nez p1, :cond_12

    move p1, v4

    goto :goto_6

    :cond_12
    move p1, v0

    :goto_6
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->groupStickersHidden:Z

    goto :goto_9

    :cond_13
    :goto_7
    cmp-long p1, v8, v6

    if-eqz p1, :cond_14

    move p1, v4

    goto :goto_8

    :cond_14
    move p1, v0

    .line 5551
    :goto_8
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->groupStickersHidden:Z

    .line 5555
    :cond_15
    :goto_9
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->stickerset:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v5, :cond_18

    .line 5556
    invoke-virtual {v2, v5}, Lorg/telegram/messenger/MediaDataController;->getGroupStickerSetById(Lorg/telegram/tgnet/TLRPC$StickerSet;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 5557
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1a

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v2, :cond_1a

    .line 5558
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;-><init>()V

    .line 5559
    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    iput-object v5, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    .line 5560
    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->packs:Ljava/util/ArrayList;

    iput-object v5, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->packs:Ljava/util/ArrayList;

    .line 5561
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iput-object p1, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    .line 5562
    iget-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->groupStickersHidden:Z

    if-eqz p1, :cond_16

    .line 5563
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/EmojiView;->groupStickerPackNum:I

    .line 5564
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 5566
    :cond_16
    iput v0, p0, Lorg/telegram/ui/Components/EmojiView;->groupStickerPackNum:I

    .line 5567
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5569
    :goto_a
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_set_stickers:Z

    if-eqz p1, :cond_17

    goto :goto_b

    :cond_17
    move-object v2, v3

    :goto_b
    iput-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->groupStickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    goto :goto_c

    .line 5571
    :cond_18
    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_set_stickers:Z

    if-eqz p1, :cond_1a

    .line 5572
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;-><init>()V

    .line 5573
    iget-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView;->groupStickersHidden:Z

    if-eqz v2, :cond_19

    .line 5574
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Components/EmojiView;->groupStickerPackNum:I

    .line 5575
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 5577
    :cond_19
    iput v0, p0, Lorg/telegram/ui/Components/EmojiView;->groupStickerPackNum:I

    .line 5578
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_1a
    :goto_c
    move p1, v0

    .line 5582
    :goto_d
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_22

    .line 5583
    iget v2, p0, Lorg/telegram/ui/Components/EmojiView;->groupStickerPackNum:I

    if-ne p1, v2, :cond_1c

    .line 5584
    iget v2, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    if-nez v2, :cond_1b

    .line 5586
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 p1, p1, -0x1

    goto/16 :goto_10

    .line 5589
    :cond_1b
    iput-boolean v4, p0, Lorg/telegram/ui/Components/EmojiView;->hasChatStickers:Z

    .line 5590
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v5, v2}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->addStickerTab(Lorg/telegram/tgnet/TLRPC$Chat;)V

    goto/16 :goto_10

    .line 5593
    :cond_1c
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 5595
    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v5, :cond_1e

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->thumb_document_id:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_1e

    move v5, v0

    .line 5596
    :goto_e
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_1e

    .line 5597
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v6, :cond_1d

    .line 5598
    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v7, v7, Lorg/telegram/tgnet/TLRPC$StickerSet;->thumb_document_id:J

    iget-wide v9, v6, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_1d

    goto :goto_f

    :cond_1d
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_1e
    move-object v6, v3

    :goto_f
    if-nez v6, :cond_1f

    .line 5605
    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Document;

    .line 5607
    :cond_1f
    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->thumbs:Ljava/util/ArrayList;

    const/16 v7, 0x5a

    invoke-static {v5, v7}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v5

    if-eqz v5, :cond_20

    .line 5608
    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$StickerSet;->gifs:Z

    if-eqz v7, :cond_21

    :cond_20
    move-object v5, v6

    .line 5611
    :cond_21
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v7, v5, v6, v2}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->addStickerTab(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)Landroid/view/View;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lorg/telegram/messenger/R$string;->AccDescrStickerSet:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_10
    add-int/2addr p1, v4

    goto/16 :goto_d

    .line 5614
    :cond_22
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->commitUpdate()V

    .line 5615
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->updateTabStyles()V

    if-eqz v1, :cond_23

    .line 5617
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {p1, v1, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    .line 5619
    :cond_23
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->checkPanels()V

    :cond_24
    :goto_11
    return-void
.end method

.method private updateStickerTabsPosition()V
    .locals 8

    .line 4421
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    const/high16 v1, 0x42480000    # 50.0f

    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabContainer:Landroid/widget/FrameLayout;

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    if-eqz v2, :cond_0

    .line 4422
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    invoke-interface {v3}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->getProgressToSearchOpened()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 4424
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    return-void

    .line 4427
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersContainerAttached:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->getProgressToSearchOpened()F

    move-result v0

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    .line 4428
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3

    move v5, v3

    goto :goto_1

    :cond_3
    const/16 v5, 0x8

    :goto_1
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    if-eqz v0, :cond_6

    .line 4431
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->rect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 4432
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->stickersContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->rect:Landroid/graphics/Rect;

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/ViewGroup;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 4433
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    invoke-interface {v4}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->getProgressToSearchOpened()F

    move-result v4

    mul-float/2addr v1, v4

    .line 4434
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-nez v4, :cond_4

    const/4 v5, 0x0

    cmpl-float v5, v1, v5

    if-eqz v5, :cond_5

    .line 4436
    :cond_4
    iput-boolean v3, p0, Lorg/telegram/ui/Components/EmojiView;->expandStickersByDragg:Z

    .line 4439
    :cond_5
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabContainer:Landroid/widget/FrameLayout;

    int-to-float v4, v4

    invoke-virtual {v5, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 4440
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getExpandedOffset()F

    move-result v5

    sub-float/2addr v4, v5

    sub-float/2addr v4, v1

    .line 4441
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_6

    .line 4442
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 4443
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 4447
    :cond_6
    iget-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView;->expandStickersByDragg:Z

    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->showing:Z

    if-eqz v0, :cond_7

    .line 4448
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->lastStickersX:F

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandStickers(FZ)V

    return-void

    .line 4450
    :cond_7
    iput-boolean v3, p0, Lorg/telegram/ui/Components/EmojiView;->expandStickersByDragg:Z

    .line 4451
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->lastStickersX:F

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandStickers(FZ)V

    return-void
.end method

.method private updateVisibleTrendingSets()V
    .locals 12

    .line 6248
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-nez v0, :cond_0

    goto/16 :goto_9

    .line 6252
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_d

    .line 6254
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 6255
    instance-of v4, v3, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    if-eqz v4, :cond_c

    .line 6256
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    if-nez v4, :cond_1

    goto/16 :goto_8

    .line 6260
    :cond_1
    move-object v5, v3

    check-cast v5, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    .line 6261
    iget v3, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MediaDataController;->getUnreadStickerSets()Ljava/util/ArrayList;

    move-result-object v3

    .line 6262
    invoke-virtual {v5}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->getStickerSet()Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    move-result-object v6

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 6263
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v7, v7, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v7, v4

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_a

    :cond_2
    move v7, v1

    :goto_1
    move v3, v1

    .line 6265
    :goto_2
    iget-object v8, p0, Lorg/telegram/ui/Components/EmojiView;->primaryInstallingStickerSets:[Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    array-length v9, v8

    if-ge v3, v9, :cond_4

    .line 6266
    aget-object v8, v8, v3

    if-eqz v8, :cond_3

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iget-object v10, v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v10, v10, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_3

    move v11, v4

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    move v11, v1

    :goto_3
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x1

    .line 6271
    invoke-virtual/range {v5 .. v11}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->setStickerSet(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;ZZIIZ)V

    if-eqz v7, :cond_5

    .line 6273
    iget v3, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v3

    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v7, v7, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-virtual {v3, v1, v7, v8}, Lorg/telegram/messenger/MediaDataController;->markFeaturedStickersByIdAsRead(ZJ)V

    .line 6275
    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->installingStickerSets:Landroid/util/LongSparseArray;

    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v7, v7, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-virtual {v3, v7, v8}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v3

    if-ltz v3, :cond_6

    move v3, v4

    goto :goto_4

    :cond_6
    move v3, v1

    .line 6276
    :goto_4
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->removingStickerSets:Landroid/util/LongSparseArray;

    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-virtual {v7, v8, v9}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v7

    if-ltz v7, :cond_7

    move v7, v4

    goto :goto_5

    :cond_7
    move v7, v1

    :goto_5
    if-nez v3, :cond_8

    if-eqz v7, :cond_a

    :cond_8
    if-eqz v3, :cond_9

    .line 6278
    invoke-virtual {v5}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->isInstalled()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 6279
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->installingStickerSets:Landroid/util/LongSparseArray;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-virtual {v3, v6, v7}, Landroid/util/LongSparseArray;->remove(J)V

    move v3, v1

    goto :goto_6

    :cond_9
    if-eqz v7, :cond_a

    .line 6281
    invoke-virtual {v5}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->isInstalled()Z

    move-result v7

    if-nez v7, :cond_a

    .line 6282
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->removingStickerSets:Landroid/util/LongSparseArray;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v8, v6, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-virtual {v7, v8, v9}, Landroid/util/LongSparseArray;->remove(J)V

    :cond_a
    :goto_6
    if-nez v11, :cond_b

    if-eqz v3, :cond_b

    move v3, v4

    goto :goto_7

    :cond_b
    move v3, v1

    .line 6286
    :goto_7
    invoke-virtual {v5, v3, v4}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->setAddDrawProgress(ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_c
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_d
    :goto_9
    return-void

    .line 6290
    :goto_a
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public addEmojiToRecent(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_6

    .line 4576
    const-string v0, "animated_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lorg/telegram/messenger/Emoji;->isValidEmoji(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 4579
    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/Emoji;->addRecentEmoji(Ljava/lang/String;)V

    .line 4580
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    if-eqz p1, :cond_2

    .line 4581
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/Emoji;->sortEmoji()V

    .line 4582
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->notifyDataSetChanged()V

    .line 4584
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/Emoji;->saveRecentEmoji()V

    .line 4586
    iget-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->allowAnimatedEmoji:Z

    if-nez p1, :cond_6

    .line 4587
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->lastRecentArray:Ljava/util/ArrayList;

    if-nez p1, :cond_3

    .line 4588
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->lastRecentArray:Ljava/util/ArrayList;

    goto :goto_0

    .line 4590
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :goto_0
    const/4 p1, 0x0

    .line 4592
    :goto_1
    sget-object v1, Lorg/telegram/messenger/Emoji;->recentEmoji:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_5

    .line 4593
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 4594
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->lastRecentArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 4597
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->lastRecentArray:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/EmojiView;->lastRecentCount:I

    :cond_6
    :goto_2
    return-void
.end method

.method public addRecentGif(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 0

    if-nez p1, :cond_0

    goto :goto_0

    .line 5714
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->recentGifs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    .line 5715
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateRecentGifs()V

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 5717
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public addRecentSticker(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 7

    if-nez p1, :cond_0

    goto :goto_0

    .line 5699
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v5, v2

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/MediaDataController;->addRecentSticker(ILjava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;IZ)V

    .line 5700
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    .line 5701
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lorg/telegram/messenger/MediaDataController;->getRecentStickers(IZ)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    .line 5702
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    if-eqz v0, :cond_1

    .line 5703
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->notifyDataSetChanged()V

    :cond_1
    if-eqz p1, :cond_2

    .line 5706
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public allowEmojisForNonPremium(Z)V
    .locals 0

    .line 284
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->allowEmojisForNonPremium:Z

    return-void
.end method

.method public applyInAppKeyboardAnimatedHeight(F)V
    .locals 0

    .line 2943
    iput p1, p0, Lorg/telegram/ui/Components/EmojiView;->visibleInAppKeyboardHeight:F

    .line 2944
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateBottomTabContainerPosition()V

    return-void
.end method

.method public applyNavigationBarHeight(I)V
    .locals 0

    .line 2936
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->setBottomInset(I)V

    return-void
.end method

.method public areThereAnyStickers()Z
    .locals 1

    .line 6295
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public clearRecentEmoji()V
    .locals 1

    .line 5394
    invoke-static {}, Lorg/telegram/messenger/Emoji;->clearRecentEmoji()V

    .line 5395
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public closeSearch(Z)V
    .locals 2

    const-wide/16 v0, -0x1

    .line 4769
    invoke-virtual {p0, p1, v0, v1}, Lorg/telegram/ui/Components/EmojiView;->closeSearch(ZJ)V

    return-void
.end method

.method public closeSearch(ZJ)V
    .locals 16

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    .line 4825
    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView;->searchAnimation:Landroid/animation/AnimatorSet;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 4826
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 4827
    iput-object v4, v0, Lorg/telegram/ui/Components/EmojiView;->searchAnimation:Landroid/animation/AnimatorSet;

    .line 4830
    :cond_0
    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v3}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_1

    const-wide/16 v6, -0x1

    cmp-long v6, v1, v6

    if-eqz v6, :cond_1

    .line 4832
    iget v6, v0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Lorg/telegram/messenger/MediaDataController;->getStickerSetById(J)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4834
    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->getPositionForPack(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 4835
    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/high16 v2, 0x42400000    # 48.0f

    .line 4836
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/EmojiView;->scrollStickersToPosition(II)V

    .line 4841
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView;->gifSearchAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 4842
    invoke-static {v1, v2}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->-$$Nest$fputshowTrendingWhenSearchEmpty(Lorg/telegram/ui/Components/EmojiView$GifAdapter;Z)V

    :cond_2
    move v1, v2

    :goto_0
    const/4 v6, 0x3

    if-ge v1, v6, :cond_e

    const/4 v7, 0x1

    if-nez v1, :cond_3

    .line 4852
    iget-object v8, v0, Lorg/telegram/ui/Components/EmojiView;->emojiSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    .line 4853
    iget-object v9, v0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    .line 4854
    iget-object v10, v0, Lorg/telegram/ui/Components/EmojiView;->emojiLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 4855
    iget-object v11, v0, Lorg/telegram/ui/Components/EmojiView;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    goto :goto_1

    :cond_3
    if-ne v1, v7, :cond_4

    .line 4857
    iget-object v8, v0, Lorg/telegram/ui/Components/EmojiView;->gifSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    .line 4858
    iget-object v9, v0, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 4859
    iget-object v10, v0, Lorg/telegram/ui/Components/EmojiView;->gifLayoutManager:Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    .line 4860
    iget-object v11, v0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    goto :goto_1

    .line 4862
    :cond_4
    iget-object v8, v0, Lorg/telegram/ui/Components/EmojiView;->stickersSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    .line 4863
    iget-object v9, v0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 4864
    iget-object v10, v0, Lorg/telegram/ui/Components/EmojiView;->stickersLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 4865
    iget-object v11, v0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    :goto_1
    if-nez v8, :cond_5

    goto/16 :goto_4

    .line 4872
    :cond_5
    invoke-static {v8}, Lorg/telegram/ui/Components/EmojiView$SearchField;->-$$Nest$fgetsearchEditText(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4873
    invoke-static {v8}, Lorg/telegram/ui/Components/EmojiView$SearchField;->-$$Nest$fgetcategoriesListView(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/StickerCategoriesListView;

    move-result-object v12

    if-eqz v12, :cond_6

    .line 4874
    invoke-static {v8}, Lorg/telegram/ui/Components/EmojiView$SearchField;->-$$Nest$fgetcategoriesListView(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/StickerCategoriesListView;

    move-result-object v12

    invoke-virtual {v12, v4}, Lorg/telegram/ui/Components/StickerCategoriesListView;->selectCategory(Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;)V

    .line 4875
    invoke-static {v8}, Lorg/telegram/ui/Components/EmojiView$SearchField;->-$$Nest$fgetcategoriesListView(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/StickerCategoriesListView;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/ui/Components/StickerCategoriesListView;->scrollToStart()V

    :cond_6
    const/4 v12, 0x0

    const/high16 v13, 0x42100000    # 36.0f

    if-ne v1, v3, :cond_8

    if-eqz p1, :cond_8

    .line 4879
    new-instance v14, Landroid/animation/AnimatorSet;

    invoke-direct {v14}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v14, v0, Lorg/telegram/ui/Components/EmojiView;->searchAnimation:Landroid/animation/AnimatorSet;

    .line 4880
    sget-object v15, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    if-eqz v11, :cond_7

    if-eq v1, v7, :cond_7

    .line 4881
    new-array v4, v7, [F

    aput v12, v4, v2

    .line 4882
    invoke-static {v11, v15, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 4883
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    new-array v12, v7, [F

    aput v11, v12, v2

    invoke-static {v9, v15, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 4884
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    new-array v13, v7, [F

    aput v12, v13, v2

    invoke-static {v8, v15, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v4, v6, v2

    aput-object v11, v6, v7

    aput-object v8, v6, v5

    .line 4881
    invoke-virtual {v14, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_2

    .line 4888
    :cond_7
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iget v6, v0, Lorg/telegram/ui/Components/EmojiView;->searchFieldHeight:I

    sub-int/2addr v4, v6

    int-to-float v4, v4

    new-array v6, v7, [F

    aput v4, v6, v2

    invoke-static {v9, v15, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-array v6, v7, [Landroid/animation/Animator;

    aput-object v4, v6, v2

    .line 4887
    invoke-virtual {v14, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 4891
    :goto_2
    iget-object v4, v0, Lorg/telegram/ui/Components/EmojiView;->searchAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 4892
    iget-object v4, v0, Lorg/telegram/ui/Components/EmojiView;->searchAnimation:Landroid/animation/AnimatorSet;

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4893
    iget-object v4, v0, Lorg/telegram/ui/Components/EmojiView;->searchAnimation:Landroid/animation/AnimatorSet;

    new-instance v6, Lorg/telegram/ui/Components/EmojiView$34;

    invoke-direct {v6, v0, v10, v9}, Lorg/telegram/ui/Components/EmojiView$34;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroidx/recyclerview/widget/GridLayoutManager;Lorg/telegram/ui/Components/RecyclerListView;)V

    invoke-virtual {v4, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4920
    iget-object v4, v0, Lorg/telegram/ui/Components/EmojiView;->searchAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_4

    .line 4922
    :cond_8
    iget-object v4, v0, Lorg/telegram/ui/Components/EmojiView;->gifSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    if-eq v8, v4, :cond_9

    .line 4923
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iget v6, v0, Lorg/telegram/ui/Components/EmojiView;->searchFieldHeight:I

    sub-int/2addr v4, v6

    int-to-float v4, v4

    invoke-virtual {v8, v4}, Landroid/view/View;->setTranslationY(F)V

    :cond_9
    if-eqz v11, :cond_a

    if-eq v1, v5, :cond_a

    .line 4926
    invoke-virtual {v11, v12}, Landroid/view/View;->setTranslationY(F)V

    .line 4928
    :cond_a
    iget-object v4, v0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v6, 0x42300000    # 44.0f

    if-ne v9, v4, :cond_b

    .line 4929
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iget v7, v0, Lorg/telegram/ui/Components/EmojiView;->bottomInset:I

    add-int/2addr v6, v7

    invoke-virtual {v9, v2, v4, v2, v6}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_3

    .line 4930
    :cond_b
    iget-object v4, v0, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-ne v9, v4, :cond_c

    const/high16 v4, 0x42200000    # 40.0f

    .line 4931
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iget v7, v0, Lorg/telegram/ui/Components/EmojiView;->bottomInset:I

    add-int/2addr v6, v7

    invoke-virtual {v9, v2, v4, v2, v6}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_3

    .line 4932
    :cond_c
    iget-object v4, v0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    if-ne v9, v4, :cond_d

    const/high16 v4, 0x40a00000    # 5.0f

    .line 4933
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iget v11, v0, Lorg/telegram/ui/Components/EmojiView;->bottomInset:I

    add-int/2addr v6, v11

    invoke-virtual {v9, v7, v8, v4, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 4935
    :cond_d
    :goto_3
    invoke-virtual {v10, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :goto_4
    add-int/lit8 v1, v1, 0x1

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_e
    if-nez p1, :cond_f

    .line 4939
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    invoke-interface {v1, v2}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->onSearchOpenClose(I)V

    :cond_f
    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 7

    .line 6307
    sget p2, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoad:I

    const-wide/16 v0, 0x64

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, p2, :cond_2

    .line 6308
    aget-object p1, p3, v3

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_0

    .line 6309
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    if-eqz p1, :cond_16

    .line 6310
    aget-object p1, p3, v2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs(Z)V

    .line 6311
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateVisibleTrendingSets()V

    .line 6312
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->reloadStickersAdapter()V

    .line 6313
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->checkPanels()V

    return-void

    .line 6315
    :cond_0
    aget-object p1, p3, v3

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_16

    .line 6316
    aget-object p1, p3, v2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6317
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->updateStickersLoadedDelayed:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 6318
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->updateStickersLoadedDelayed:Ljava/lang/Runnable;

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    .line 6320
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->notifyDataSetChanged(Z)V

    return-void

    .line 6323
    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->groupPackUpdated:I

    if-ne p1, p2, :cond_3

    .line 6324
    aget-object p1, p3, v3

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 6325
    aget-object p3, p3, v2

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    .line 6326
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_16

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    cmp-long p1, v0, p1

    if-nez p1, :cond_16

    if-eqz p3, :cond_16

    .line 6327
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->notifyDataSetChanged(Z)V

    return-void

    .line 6329
    :cond_3
    sget p2, Lorg/telegram/messenger/NotificationCenter;->recentDocumentsDidLoad:I

    const/4 v4, 0x2

    if-ne p1, p2, :cond_5

    .line 6330
    aget-object p1, p3, v3

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 6331
    aget-object p2, p3, v2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-nez p1, :cond_4

    if-eqz p2, :cond_4

    if-ne p2, v4, :cond_16

    .line 6333
    :cond_4
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->checkDocuments(Z)V

    return-void

    .line 6335
    :cond_5
    sget p2, Lorg/telegram/messenger/NotificationCenter;->featuredStickersDidLoad:I

    if-ne p1, p2, :cond_7

    .line 6336
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateVisibleTrendingSets()V

    .line 6337
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->typeTabs:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    if-eqz p1, :cond_6

    .line 6338
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    move p2, v3

    :goto_0
    if-ge p2, p1, :cond_6

    .line 6340
    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiView;->typeTabs:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->invalidate()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 6343
    :cond_6
    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs(Z)V

    return-void

    .line 6344
    :cond_7
    sget p2, Lorg/telegram/messenger/NotificationCenter;->featuredEmojiDidLoad:I

    if-ne p1, p2, :cond_8

    .line 6345
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    if-eqz p1, :cond_16

    .line 6346
    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->notifyDataSetChanged()V

    return-void

    .line 6348
    :cond_8
    sget p2, Lorg/telegram/messenger/NotificationCenter;->groupStickersDidLoad:I

    if-ne p1, p2, :cond_b

    .line 6349
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz p1, :cond_9

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->stickerset:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz p1, :cond_9

    iget-wide p1, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    aget-object v5, p3, v3

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long p1, p1, v5

    if-nez p1, :cond_9

    .line 6350
    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs(Z)V

    .line 6352
    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->toInstall:Ljava/util/HashMap;

    aget-object p2, p3, v3

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    array-length p1, p3

    if-lt p1, v4, :cond_a

    .line 6353
    aget-object p1, p3, v3

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 6354
    aget-object p2, p3, v2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 6355
    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiView;->toInstall:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/messenger/Utilities$Callback;

    if-eqz p3, :cond_a

    if-eqz p2, :cond_a

    .line 6357
    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiView;->toInstall:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/Utilities$Callback;

    if-eqz p1, :cond_a

    .line 6359
    invoke-interface {p1, p2}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    .line 6363
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->updateStickersLoadedDelayed:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 6364
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->updateStickersLoadedDelayed:Ljava/lang/Runnable;

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    .line 6365
    :cond_b
    sget p2, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    if-ne p1, p2, :cond_12

    .line 6366
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p1, :cond_e

    .line 6367
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    move p2, v3

    :goto_1
    if-ge p2, p1, :cond_e

    .line 6369
    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 6370
    instance-of v0, p3, Lorg/telegram/ui/Cells/StickerSetNameCell;

    if-nez v0, :cond_c

    instance-of v0, p3, Lorg/telegram/ui/Cells/StickerEmojiCell;

    if-eqz v0, :cond_d

    .line 6371
    :cond_c
    invoke-virtual {p3}, Landroid/view/View;->invalidate()V

    :cond_d
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 6375
    :cond_e
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    if-eqz p1, :cond_10

    .line 6376
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 6377
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    :goto_2
    if-ge v3, p1, :cond_10

    .line 6379
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 6380
    instance-of p3, p2, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    if-eqz p3, :cond_f

    .line 6381
    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 6385
    :cond_10
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->colorPickerView:Lorg/telegram/ui/Components/EmojiColorPickerWindow;

    if-eqz p1, :cond_11

    .line 6386
    iget-object p1, p1, Lorg/telegram/ui/Components/EmojiColorPickerWindow;->pickerView:Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 6388
    :cond_11
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    if-eqz p1, :cond_16

    .line 6389
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->invalidateTabs()V

    return-void

    .line 6391
    :cond_12
    sget p2, Lorg/telegram/messenger/NotificationCenter;->newEmojiSuggestionsAvailable:I

    if-ne p1, p2, :cond_14

    .line 6392
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    if-eqz p1, :cond_16

    iget-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->needEmojiSearch:Z

    if-eqz p1, :cond_16

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->-$$Nest$fgetsearchStateDrawable(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/SearchStateDrawable;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SearchStateDrawable;->getIconState()I

    move-result p1

    if-eq p1, v4, :cond_13

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSearchAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

    if-ne p1, p2, :cond_16

    :cond_13
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSearchAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->-$$Nest$fgetlastSearchEmojiString(Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_16

    .line 6393
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSearchAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->-$$Nest$fgetlastSearchEmojiString(Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->search(Ljava/lang/String;)V

    return-void

    .line 6395
    :cond_14
    sget p2, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    if-ne p1, p2, :cond_16

    .line 6396
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    if-eqz p1, :cond_15

    .line 6397
    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->notifyDataSetChanged()V

    .line 6399
    :cond_15
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateEmojiHeaders()V

    .line 6400
    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs(Z)V

    :cond_16
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 4462
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->blurredBackgroundSourceRenderNode:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    if-eqz v0, :cond_1

    .line 4463
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->invalidateBlurCaptures()V

    .line 4465
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->blurredBackgroundSourceRenderNode:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->beginRecording(II)Landroid/graphics/RecordingCanvas;

    move-result-object v0

    .line 4466
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/RecordingCanvas;->drawColor(I)V

    .line 4467
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->chatBlurEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4468
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    const/4 v2, -0x2

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;->draw(Landroid/graphics/Canvas;I)V

    .line 4470
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->blurredBackgroundSourceRenderNode:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->endRecording()V

    .line 4473
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateBottomTabContainerPosition()V

    .line 4474
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 5915
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->bottomInset:I

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Components/EmojiView;->bottomInset:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 5918
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3

    .line 4499
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    if-ne p2, v0, :cond_3

    .line 4500
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4501
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 4505
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->shouldDrawBackground:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->shouldLightenBackground:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const/16 v1, 0x19

    .line 4506
    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 4510
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 4511
    iget p3, p0, Lorg/telegram/ui/Components/EmojiView;->bottomInset:I

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->getNavigationBarThirdButtonsFactor(I)F

    move-result p3

    const/4 p4, 0x0

    cmpl-float p4, p3, p4

    if-lez p4, :cond_2

    .line 4513
    sget p4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelBackground:I

    invoke-direct {p0, p4}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result p4

    invoke-static {p4, p3}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p3

    .line 4514
    iget p4, p0, Lorg/telegram/ui/Components/EmojiView;->lastFadeColor:I

    const/4 v0, 0x0

    if-eq p4, p3, :cond_1

    .line 4515
    iget-object p4, p0, Lorg/telegram/ui/Components/EmojiView;->fadeDrawable:Landroid/graphics/drawable/GradientDrawable;

    const v1, 0x3f28f5c3    # 0.66f

    invoke-static {p3, v1}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    invoke-static {p3, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    filled-new-array {p3, v1, v2}, [I

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 4516
    iput p3, p0, Lorg/telegram/ui/Components/EmojiView;->lastFadeColor:I

    .line 4518
    :cond_1
    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiView;->fadeDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->bottomInset:I

    sub-int/2addr p4, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p3, v0, p4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4519
    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiView;->fadeDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p3, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 4527
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    .line 4530
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public freeze(Z)V
    .locals 1

    .line 9541
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->frozen:Z

    .line 9542
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->frozen:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    .line 9544
    iget p1, p0, Lorg/telegram/ui/Components/EmojiView;->currentPage:I

    if-nez p1, :cond_0

    .line 9545
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    if-eqz p1, :cond_2

    .line 9546
    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->notifyDataSetChanged()V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 9549
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->gifAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    if-eqz p1, :cond_2

    .line 9550
    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->notifyDataSetChanged()V

    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 9553
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    if-eqz p1, :cond_2

    .line 9554
    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public getCurrentPage()I
    .locals 1

    .line 6066
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentPage:I

    return v0
.end method

.method public getEmojipacks()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/EmojiView$EmojiPack;",
            ">;"
        }
    .end annotation

    .line 7725
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 7726
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->emojipacksProcessed:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 7727
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->emojipacksProcessed:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    .line 7728
    iget-boolean v3, v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->featured:Z

    if-nez v3, :cond_0

    iget-boolean v3, v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->installed:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->installedEmojiSets:Ljava/util/ArrayList;

    iget-object v4, v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    iget-boolean v3, v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->featured:Z

    if-eqz v3, :cond_2

    iget-boolean v3, v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->installed:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->installedEmojiSets:Ljava/util/ArrayList;

    iget-object v4, v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 7729
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public getRecentEmoji()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4557
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->allowAnimatedEmoji:Z

    if-eqz v0, :cond_0

    .line 4558
    sget-object v0, Lorg/telegram/messenger/Emoji;->recentEmoji:Ljava/util/ArrayList;

    return-object v0

    .line 4560
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->lastRecentArray:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 4561
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->lastRecentArray:Ljava/util/ArrayList;

    .line 4563
    :cond_1
    sget-object v0, Lorg/telegram/messenger/Emoji;->recentEmoji:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->lastRecentCount:I

    if-eq v0, v1, :cond_4

    .line 4564
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->lastRecentArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 4565
    :goto_0
    sget-object v1, Lorg/telegram/messenger/Emoji;->recentEmoji:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 4566
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "animated_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 4567
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->lastRecentArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4570
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->lastRecentArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/EmojiView;->lastRecentCount:I

    .line 4572
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->lastRecentArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStickersExpandOffset()F
    .locals 1

    .line 9473
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getExpandedOffset()F

    move-result v0

    return v0
.end method

.method public hideSearchKeyboard()V
    .locals 1

    .line 4633
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    if-eqz v0, :cond_0

    .line 4634
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$SearchField;->hideKeyboard()V

    .line 4636
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    if-eqz v0, :cond_1

    .line 4637
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$SearchField;->hideKeyboard()V

    .line 4639
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    if-eqz v0, :cond_2

    .line 4640
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$SearchField;->hideKeyboard()V

    :cond_2
    return-void
.end method

.method public invalidateViews()V
    .locals 1

    .line 5948
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 6019
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 6020
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 6021
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->newEmojiSuggestionsAvailable:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 6022
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->groupPackUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 6023
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    if-eqz v0, :cond_0

    .line 6024
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 6025
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->recentDocumentsDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 6026
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->featuredStickersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 6027
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->groupStickersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 6028
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 6029
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 6070
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 6071
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->newEmojiSuggestionsAvailable:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 6072
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 6073
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->groupPackUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 6074
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    if-eqz v0, :cond_0

    .line 6075
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->recentDocumentsDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 6076
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->featuredStickersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 6077
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->groupStickersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 6078
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 6084
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 6085
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->colorPickerView:Lorg/telegram/ui/Components/EmojiColorPickerWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6086
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->colorPickerView:Lorg/telegram/ui/Components/EmojiColorPickerWindow;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiColorPickerWindow;->dismiss()V

    .line 6088
    :cond_0
    invoke-static {}, Lorg/telegram/ui/ContentPreviewViewer;->getInstance()Lorg/telegram/ui/ContentPreviewViewer;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->contentPreviewViewerDelegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ContentPreviewViewer;->clearDelegate(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 5904
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->lastNotifyWidth:I

    sub-int v1, p4, p2

    if-eq v0, v1, :cond_0

    .line 5905
    iput v1, p0, Lorg/telegram/ui/Components/EmojiView;->lastNotifyWidth:I

    .line 5906
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->reloadStickersAdapter()V

    .line 5908
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 5909
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateBottomTabContainerPosition()V

    .line 5910
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabsPosition()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 7

    const/4 v0, 0x1

    .line 5866
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->isLayout:Z

    .line 5867
    sget-boolean v1, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    const/4 v2, 0x0

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView;->forseMultiwindowLayout:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5882
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentBackgroundType:I

    if-eqz v0, :cond_6

    .line 5883
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->customOutline:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 5884
    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 5885
    invoke-virtual {p0, v2}, Landroid/view/View;->setClipToOutline(Z)V

    const/4 v0, 0x0

    .line 5886
    invoke-virtual {p0, v0}, Landroid/view/View;->setElevation(F)V

    .line 5888
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->shouldDrawBackground:Z

    if-eqz v0, :cond_2

    .line 5889
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelBackground:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 5890
    iget-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView;->needEmojiSearch:Z

    if-eqz v1, :cond_2

    .line 5891
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainerBackground:Landroid/view/View;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 5894
    :cond_2
    iput v2, p0, Lorg/telegram/ui/Components/EmojiView;->currentBackgroundType:I

    goto :goto_1

    .line 5868
    :cond_3
    :goto_0
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->currentBackgroundType:I

    if-eq v1, v0, :cond_6

    .line 5869
    iget-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView;->customOutline:Z

    if-nez v1, :cond_4

    .line 5870
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->outlineProvider:Ljava/lang/Object;

    check-cast v1, Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 5871
    invoke-virtual {p0, v0}, Landroid/view/View;->setClipToOutline(Z)V

    const/high16 v1, 0x40000000    # 2.0f

    .line 5872
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setElevation(F)V

    .line 5874
    :cond_4
    sget v1, Lorg/telegram/messenger/R$drawable;->smiles_popup:I

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 5875
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelBackground:I

    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 5876
    iget-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView;->needEmojiSearch:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView;->shouldDrawBackground:Z

    if-eqz v1, :cond_5

    .line 5877
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainerBackground:Landroid/view/View;

    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 5879
    :cond_5
    iput v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentBackgroundType:I

    .line 5897
    :cond_6
    :goto_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 5898
    iput-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView;->isLayout:Z

    .line 5899
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->setTranslationY(F)V

    return-void
.end method

.method public onMessageSend()V
    .locals 1

    .line 9482
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->chooseStickerActionTracker:Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;

    if-eqz v0, :cond_0

    .line 9483
    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->-$$Nest$mreset(Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;)V

    :cond_0
    return-void
.end method

.method public onOpen(ZZ)V
    .locals 3

    .line 5956
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentPage:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersBanned:Z

    if-eqz v0, :cond_0

    .line 5957
    iput v1, p0, Lorg/telegram/ui/Components/EmojiView;->currentPage:I

    .line 5959
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentPage:I

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiBanned:Z

    if-eqz v0, :cond_1

    .line 5960
    iput v2, p0, Lorg/telegram/ui/Components/EmojiView;->currentPage:I

    .line 5962
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentPage:I

    if-eqz v0, :cond_b

    if-nez p1, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_2

    goto/16 :goto_3

    .line 5983
    :cond_2
    iget p1, p0, Lorg/telegram/ui/Components/EmojiView;->currentPage:I

    const/4 p2, 0x2

    if-ne p1, v2, :cond_8

    .line 5984
    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/Components/EmojiView;->showBackspaceButton(ZZ)V

    .line 5985
    iget-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->shouldDrawBackground:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->shouldDrawStickerSettings:Z

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move p1, v1

    goto :goto_1

    :cond_4
    :goto_0
    move p1, v2

    :goto_1
    invoke-direct {p0, p1, v1}, Lorg/telegram/ui/Components/EmojiView;->showStickerSettingsButton(ZZ)V

    .line 5986
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    if-eq p1, p2, :cond_5

    .line 5987
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, p2, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 5989
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    if-eqz p1, :cond_d

    .line 5990
    iput-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView;->firstTabUpdate:Z

    .line 5991
    iget p2, p0, Lorg/telegram/ui/Components/EmojiView;->favTabNum:I

    if-ltz p2, :cond_6

    .line 5992
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->selectTab(I)V

    goto :goto_2

    .line 5993
    :cond_6
    iget p2, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabNum:I

    if-ltz p2, :cond_7

    .line 5994
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->selectTab(I)V

    goto :goto_2

    .line 5996
    :cond_7
    iget p2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->selectTab(I)V

    .line 5998
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView;->firstTabUpdate:Z

    .line 5999
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_4

    :cond_8
    if-ne p1, p2, :cond_d

    .line 6002
    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/Components/EmojiView;->showBackspaceButton(ZZ)V

    .line 6003
    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/Components/EmojiView;->showStickerSettingsButton(ZZ)V

    .line 6004
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    if-eq p1, v2, :cond_9

    .line 6005
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v2, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 6007
    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    if-eqz p1, :cond_a

    .line 6008
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->selectTab(I)V

    .line 6010
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    if-eqz p1, :cond_d

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->-$$Nest$fgetcategoriesListView(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/StickerCategoriesListView;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 6011
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->-$$Nest$fgetcategoriesListView(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/StickerCategoriesListView;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView$SearchField;->-$$Nest$fgetrecent(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/StickerCategoriesListView;->selectCategory(Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;)V

    goto :goto_4

    .line 5963
    :cond_b
    :goto_3
    invoke-direct {p0, v2, v1}, Lorg/telegram/ui/Components/EmojiView;->showBackspaceButton(ZZ)V

    .line 5964
    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/Components/EmojiView;->showStickerSettingsButton(ZZ)V

    .line 5965
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-eqz v0, :cond_c

    .line 5966
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    xor-int/2addr p1, v2

    invoke-virtual {v0, v1, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_c
    if-eqz p2, :cond_d

    .line 5969
    new-instance p1, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda26;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    const-wide/16 v0, 0x15e

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 6014
    :cond_d
    :goto_4
    invoke-direct {p0, v2, v2}, Lorg/telegram/ui/Components/EmojiView;->showBottomTab(ZZ)V

    return-void
.end method

.method public openEmojiPackAlert(Lorg/telegram/tgnet/TLRPC$StickerSet;)V
    .locals 8

    .line 4235
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiPackAlertOpened:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4238
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiPackAlertOpened:Z

    .line 4239
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 4240
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;-><init>()V

    .line 4241
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    .line 4242
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->access_hash:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->access_hash:J

    .line 4243
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4244
    new-instance v1, Lorg/telegram/ui/Components/EmojiView$29;

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/EmojiView$29;-><init>(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$StickerSet;)V

    .line 4262
    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmojiPacksAlert;->show()V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 5723
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->isLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 5726
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public scrollEmojiToTop()V
    .locals 2

    .line 5241
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->stopScroll()V

    .line 5242
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->scrollTo(II)V

    const/4 v0, 0x1

    .line 5243
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/EmojiView;->resetTabsY(I)V

    .line 5244
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method

.method public scrollEmojisToAnimated()V
    .locals 2

    .line 4785
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSmoothScrolling:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4789
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->-$$Nest$fgetsectionToPosition(Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;)Landroid/util/SparseIntArray;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/EmojiData;->dataColored:[[Ljava/lang/String;

    array-length v1, v1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-lez v0, :cond_1

    .line 4791
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->stopScroll()V

    .line 4792
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/EmojiView;->updateEmojiTabsPosition(I)V

    const/high16 v1, -0x3ef00000    # -9.0f

    .line 4793
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/EmojiView;->scrollEmojisToPosition(II)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4794
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/EmojiView;->checkEmojiTabY(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public searchProgressChanged()V
    .locals 0

    .line 9469
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabsPosition()V

    return-void
.end method

.method public setAllow(ZZZ)V
    .locals 5

    .line 260
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    move v1, v0

    .line 261
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->allTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_3

    .line 262
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->allTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/EmojiView$Tab;

    iget v2, v2, Lorg/telegram/ui/Components/EmojiView$Tab;->type:I

    if-nez v2, :cond_0

    .line 263
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->currentTabs:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->allTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/EmojiView$Tab;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->allTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/EmojiView$Tab;

    iget v2, v2, Lorg/telegram/ui/Components/EmojiView$Tab;->type:I

    if-ne v2, v3, :cond_1

    if-eqz p2, :cond_1

    .line 265
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->currentTabs:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->allTabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/EmojiView$Tab;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->allTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/EmojiView$Tab;

    iget v2, v2, Lorg/telegram/ui/Components/EmojiView$Tab;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    if-eqz p1, :cond_2

    .line 267
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->currentTabs:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->allTabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/EmojiView$Tab;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 270
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->typeTabs:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    if-eqz p1, :cond_5

    .line 271
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->currentTabs:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-le p2, v3, :cond_4

    move v0, v3

    :cond_4
    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p1, v0, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 273
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    if-eqz p1, :cond_6

    const/4 p2, 0x0

    .line 274
    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 275
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->emojiPagerAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 276
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->typeTabs:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    if-eqz p1, :cond_6

    .line 277
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    :cond_6
    return-void
.end method

.method public setBlurredBackgroundDrawableFactory(Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;)V
    .locals 6

    .line 2881
    new-instance v0, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProviderThemed;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProviderThemed;-><init>(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    .line 2884
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    const/high16 v2, 0x40400000    # 3.0f

    const/high16 v3, 0x40c00000    # 6.0f

    const/high16 v4, 0x41900000    # 18.0f

    if-eqz v1, :cond_0

    .line 2885
    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;->create(Landroid/view/View;Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    move-result-object v1

    .line 2886
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setRadius(F)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    .line 2887
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setPadding(I)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    .line 2888
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2889
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setTranslationZ(F)V

    .line 2892
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->searchButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 2893
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;->create(Landroid/view/View;Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    move-result-object v1

    .line 2894
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setRadius(F)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    .line 2895
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setPadding(I)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    .line 2896
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->searchButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2897
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->searchButton:Landroid/widget/ImageView;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setTranslationZ(F)V

    .line 2900
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->typeTabs:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    if-eqz v1, :cond_2

    .line 2901
    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;->create(Landroid/view/View;Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    move-result-object v1

    .line 2902
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setRadius(F)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    .line 2903
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setPadding(I)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    .line 2904
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->typeTabs:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    invoke-virtual {v5, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2905
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->typeTabs:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setTranslationZ(F)V

    .line 2908
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSettingsButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 2909
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;->create(Landroid/view/View;Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    move-result-object p1

    .line 2910
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setRadius(F)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    .line 2911
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setPadding(I)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    .line 2912
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2913
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSettingsButton:Landroid/widget/ImageView;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationZ(F)V

    :cond_3
    return-void
.end method

.method public setBottomInset(I)V
    .locals 3

    .line 2921
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->bottomInset:I

    if-eq v0, p1, :cond_0

    .line 2922
    iput p1, p0, Lorg/telegram/ui/Components/EmojiView;->bottomInset:I

    .line 2924
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    const/high16 v1, 0x42300000    # 44.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v2, p1

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/EmojiView;->applyBottomInsetAsPadding(Landroid/view/View;I)V

    .line 2925
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v2, p1

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/EmojiView;->applyBottomInsetAsPadding(Landroid/view/View;I)V

    .line 2926
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->applyBottomInsetAsPadding(Landroid/view/View;I)V

    .line 2928
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateBottomTabContainerPosition()V

    .line 2929
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 0

    .line 5943
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    const/4 p1, 0x0

    .line 5944
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs(Z)V

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;)V
    .locals 0

    .line 5935
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    return-void
.end method

.method public setDragListener(Lorg/telegram/ui/Components/EmojiView$DragListener;)V
    .locals 0

    .line 5939
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->dragListener:Lorg/telegram/ui/Components/EmojiView$DragListener;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 765
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 766
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    if-eqz v0, :cond_0

    .line 767
    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$SearchField;->-$$Nest$fgetsearchEditText(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 769
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    if-eqz v0, :cond_1

    .line 770
    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$SearchField;->-$$Nest$fgetsearchEditText(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 772
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    if-eqz v0, :cond_2

    .line 773
    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$SearchField;->-$$Nest$fgetsearchEditText(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method public setForseMultiwindowLayout(Z)V
    .locals 0

    .line 5952
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->forseMultiwindowLayout:Z

    return-void
.end method

.method public setShouldDrawBackground(Z)V
    .locals 1

    .line 288
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->shouldDrawBackground:Z

    if-eq v0, p1, :cond_0

    .line 289
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->shouldDrawBackground:Z

    .line 290
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView;->updateColors()V

    :cond_0
    return-void
.end method

.method public setShowing(Z)V
    .locals 0

    .line 9477
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->showing:Z

    .line 9478
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabsPosition()V

    return-void
.end method

.method public setStickersBanned(ZZJ)V
    .locals 5

    .line 6152
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->typeTabs:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    if-nez v0, :cond_0

    goto :goto_4

    .line 6155
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiBanned:Z

    .line 6156
    iput-boolean p2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersBanned:Z

    const-wide/16 v1, 0x0

    if-nez p2, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    .line 6160
    :cond_1
    iput-wide v1, p0, Lorg/telegram/ui/Components/EmojiView;->currentChatId:J

    goto :goto_1

    .line 6158
    :cond_2
    :goto_0
    iput-wide p3, p0, Lorg/telegram/ui/Components/EmojiView;->currentChatId:J

    :goto_1
    const/4 p1, 0x0

    if-eqz p2, :cond_3

    const/4 p3, 0x2

    goto :goto_2

    :cond_3
    move p3, p1

    .line 6162
    :goto_2
    invoke-virtual {v0, p3}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->getTab(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_6

    .line 6164
    iget-wide v3, p0, Lorg/telegram/ui/Components/EmojiView;->currentChatId:J

    cmp-long p4, v3, v1

    if-eqz p4, :cond_4

    const p4, 0x3e19999a    # 0.15f

    goto :goto_3

    :cond_4
    const/high16 p4, 0x3f800000    # 1.0f

    :goto_3
    invoke-virtual {p3, p4}, Landroid/view/View;->setAlpha(F)V

    const/4 p3, 0x1

    if-eqz p2, :cond_5

    .line 6166
    iget-wide v3, p0, Lorg/telegram/ui/Components/EmojiView;->currentChatId:J

    cmp-long p2, v3, v1

    if-eqz p2, :cond_6

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p2}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p2

    if-eqz p2, :cond_6

    .line 6167
    invoke-direct {p0, p3, p3}, Lorg/telegram/ui/Components/EmojiView;->showBackspaceButton(ZZ)V

    .line 6168
    invoke-direct {p0, p1, p3}, Lorg/telegram/ui/Components/EmojiView;->showStickerSettingsButton(ZZ)V

    .line 6169
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p2, p1, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void

    .line 6172
    :cond_5
    iget-wide v3, p0, Lorg/telegram/ui/Components/EmojiView;->currentChatId:J

    cmp-long p2, v3, v1

    if-eqz p2, :cond_6

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p2}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p2

    if-eq p2, p3, :cond_6

    .line 6173
    invoke-direct {p0, p1, p3}, Lorg/telegram/ui/Components/EmojiView;->showBackspaceButton(ZZ)V

    .line 6174
    invoke-direct {p0, p1, p3}, Lorg/telegram/ui/Components/EmojiView;->showStickerSettingsButton(ZZ)V

    .line 6175
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p2, p3, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_6
    :goto_4
    return-void
.end method

.method public setTranslationY(F)V
    .locals 0

    .line 4381
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 4382
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabsPosition()V

    .line 4383
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateBottomTabContainerPosition()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 3

    .line 6038
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, p1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 6039
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-eqz v0, :cond_3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    .line 6042
    invoke-static {}, Lorg/telegram/messenger/Emoji;->sortEmoji()V

    .line 6043
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->notifyDataSetChanged()V

    .line 6044
    iget p1, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoad:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 6045
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    if-eqz p1, :cond_1

    .line 6046
    iget p1, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->recentDocumentsDidLoad:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 6047
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs(Z)V

    .line 6048
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->reloadStickersAdapter()V

    .line 6053
    :cond_1
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/EmojiView;->checkDocuments(Z)V

    .line 6054
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->checkDocuments(Z)V

    .line 6055
    iget p1, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1, v2, v1, v1, v2}, Lorg/telegram/messenger/MediaDataController;->loadRecents(IZZZ)V

    .line 6056
    iget p1, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1, v2, v2, v1, v2}, Lorg/telegram/messenger/MediaDataController;->loadRecents(IZZZ)V

    .line 6057
    iget p1, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2, v1, v2}, Lorg/telegram/messenger/MediaDataController;->loadRecents(IZZZ)V

    .line 6059
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->chooseStickerActionTracker:Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;

    if-eqz p1, :cond_3

    .line 6060
    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->checkVisibility()V

    :cond_3
    return-void
.end method

.method public showSearchField(Z)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_3

    .line 4617
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/EmojiView;->getLayoutManagerForType(I)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v2

    .line 4618
    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v3

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 4621
    :cond_0
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    .line 4622
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/EmojiView;->resetTabsY(I)V

    goto :goto_1

    :cond_1
    if-nez v3, :cond_2

    .line 4626
    invoke-virtual {v2, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public showStickerBanHint(ZZZ)V
    .locals 9

    .line 6184
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Components/EmojiView;->currentChatId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_c

    .line 6190
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Chat;->default_banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    if-eqz v3, :cond_5

    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    if-nez v4, :cond_1

    if-eqz p2, :cond_5

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-eqz v3, :cond_5

    .line 6191
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v3, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v3, :cond_2

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->checkCanRemoveRestrictionsByBoosts()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 6195
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->GlobalAttachEmojiRestricted:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_3
    if-eqz p3, :cond_4

    .line 6197
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->GlobalAttachGifRestricted:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 6199
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->GlobalAttachStickersRestricted:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 6202
    :cond_5
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    if-nez v3, :cond_6

    :goto_0
    return-void

    .line 6205
    :cond_6
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->isBannedForever(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)Z

    move-result v3

    if-eqz v3, :cond_9

    if-eqz p2, :cond_7

    .line 6207
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->AttachPlainRestrictedForever:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_7
    if-eqz p3, :cond_8

    .line 6209
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->AttachGifRestrictedForever:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 6211
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->AttachStickersRestrictedForever:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_9
    if-eqz p2, :cond_a

    .line 6215
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$string;->AttachPlainRestricted:I

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->until_date:I

    int-to-long v5, v5

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->formatDateForBan(J)Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v5, v6, v2

    const-string v5, "AttachPlainRestricted"

    invoke-static {v5, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    if-eqz p3, :cond_b

    .line 6217
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$string;->AttachGifRestricted:I

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->until_date:I

    int-to-long v5, v0

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->formatDateForBan(J)Ljava/lang/String;

    move-result-object v0

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v0, v5, v2

    const-string v0, "AttachGifRestricted"

    invoke-static {v0, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 6219
    :cond_b
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$string;->AttachStickersRestricted:I

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->until_date:I

    int-to-long v5, v0

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->formatDateForBan(J)Ljava/lang/String;

    move-result-object v0

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v0, v5, v2

    const-string v0, "AttachStickersRestricted"

    invoke-static {v0, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6223
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6226
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->showStickersBanAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_d

    .line 6227
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 6228
    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->showStickersBanAnimator:Landroid/animation/AnimatorSet;

    .line 6231
    :cond_d
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->showStickersBanAnimator:Landroid/animation/AnimatorSet;

    .line 6232
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz p1, :cond_e

    .line 6233
    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v5

    goto :goto_2

    :cond_e
    move v5, v4

    :goto_2
    const/4 v6, 0x0

    if-eqz p1, :cond_f

    goto :goto_3

    :cond_f
    move v4, v6

    :goto_3
    const/4 v7, 0x2

    new-array v8, v7, [F

    aput v5, v8, v2

    aput v4, v8, v1

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-static {v3, v4, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    const/high16 v5, 0x41400000    # 12.0f

    if-eqz p1, :cond_10

    .line 6234
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    goto :goto_4

    :cond_10
    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v8

    :goto_4
    if-eqz p1, :cond_11

    goto :goto_5

    :cond_11
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v6, v5

    :goto_5
    new-array v5, v7, [F

    aput v8, v5, v2

    aput v6, v5, v1

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-static {v4, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-array v5, v7, [Landroid/animation/Animator;

    aput-object v3, v5, v2

    aput-object v4, v5, v1

    .line 6232
    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 6236
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->hideStickersBan:Ljava/lang/Runnable;

    if-eqz v0, :cond_12

    .line 6237
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_12
    if-eqz p1, :cond_13

    .line 6240
    new-instance p1, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda32;

    invoke-direct {p1, p0, p2, p3}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda32;-><init>(Lorg/telegram/ui/Components/EmojiView;ZZ)V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->hideStickersBan:Ljava/lang/Runnable;

    const-wide/16 p2, 0xdac

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 6242
    :cond_13
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->showStickersBanAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 p2, 0x140

    invoke-virtual {p1, p2, p3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 6243
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->showStickersBanAnimator:Landroid/animation/AnimatorSet;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6244
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->showStickersBanAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public switchToGifRecent()V
    .locals 3

    const/4 v0, 0x0

    .line 5427
    invoke-direct {p0, v0, v0}, Lorg/telegram/ui/Components/EmojiView;->showBackspaceButton(ZZ)V

    .line 5428
    invoke-direct {p0, v0, v0}, Lorg/telegram/ui/Components/EmojiView;->showStickerSettingsButton(ZZ)V

    .line 5429
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public updateColors()V
    .locals 9

    .line 5730
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->shouldDrawBackground:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 5731
    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 5732
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainerBackground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 5733
    :cond_0
    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->forseMultiwindowLayout:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 5739
    :cond_1
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelBackground:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 5740
    iget-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView;->needEmojiSearch:Z

    if-eqz v2, :cond_3

    .line 5741
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainerBackground:Landroid/view/View;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 5734
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 5736
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelBackground:I

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 5744
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    if-eqz v0, :cond_5

    .line 5745
    iget-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView;->shouldDrawBackground:Z

    if-eqz v2, :cond_4

    .line 5746
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelBackground:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 5747
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabsShadow:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelShadowLine:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2

    .line 5749
    :cond_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 5752
    :cond_5
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->colorPickerView:Lorg/telegram/ui/Components/EmojiColorPickerWindow;

    if-eqz v0, :cond_6

    .line 5753
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiColorPickerWindow;->updateColors()V

    :cond_6
    const/4 v0, 0x0

    move v2, v0

    :goto_3
    const/4 v3, 0x3

    const v4, 0x3f4ccccd    # 0.8f

    const v5, 0x3ecccccd    # 0.4f

    const/4 v6, 0x1

    if-ge v2, v3, :cond_f

    if-nez v2, :cond_7

    .line 5758
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickersSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    goto :goto_4

    :cond_7
    if-ne v2, v6, :cond_8

    .line 5760
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    goto :goto_4

    .line 5762
    :cond_8
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    :goto_4
    if-nez v3, :cond_9

    goto/16 :goto_a

    .line 5767
    :cond_9
    iget-boolean v6, p0, Lorg/telegram/ui/Components/EmojiView;->shouldDrawBackground:Z

    if-eqz v6, :cond_a

    .line 5768
    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView$SearchField;->-$$Nest$fgetbackgroundView(Lorg/telegram/ui/Components/EmojiView$SearchField;)Landroid/view/View;

    move-result-object v6

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelBackground:I

    invoke-direct {p0, v7}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_5

    .line 5770
    :cond_a
    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView$SearchField;->-$$Nest$fgetbackgroundView(Lorg/telegram/ui/Components/EmojiView$SearchField;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 5772
    :goto_5
    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView$SearchField;->-$$Nest$fgetshadowView(Lorg/telegram/ui/Components/EmojiView$SearchField;)Landroid/view/View;

    move-result-object v6

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelShadowLine:I

    invoke-direct {p0, v7}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 5773
    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView$SearchField;->-$$Nest$fgetsearchStateDrawable(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/SearchStateDrawable;

    move-result-object v6

    iget-boolean v7, p0, Lorg/telegram/ui/Components/EmojiView;->glassDesign:Z

    if-eqz v7, :cond_b

    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/EmojiView;->getGlassIconColor(F)I

    move-result v5

    goto :goto_6

    :cond_b
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiSearchIcon:I

    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v5

    :goto_6
    invoke-virtual {v6, v5}, Lorg/telegram/ui/Components/SearchStateDrawable;->setColor(I)V

    .line 5774
    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView$SearchField;->-$$Nest$fgetbox(Lorg/telegram/ui/Components/EmojiView$SearchField;)Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-boolean v6, p0, Lorg/telegram/ui/Components/EmojiView;->glassDesign:Z

    if-eqz v6, :cond_c

    const v6, 0x3d75c28f    # 0.06f

    invoke-direct {p0, v6}, Lorg/telegram/ui/Components/EmojiView;->getGlassIconColor(F)I

    move-result v6

    goto :goto_7

    :cond_c
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiSearchBackground:I

    invoke-direct {p0, v6}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v6

    :goto_7
    invoke-static {v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    .line 5775
    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView$SearchField;->-$$Nest$fgetbox(Lorg/telegram/ui/Components/EmojiView$SearchField;)Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    .line 5776
    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView$SearchField;->-$$Nest$fgetsearchEditText(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v5

    iget-boolean v6, p0, Lorg/telegram/ui/Components/EmojiView;->glassDesign:Z

    if-eqz v6, :cond_d

    const v6, 0x3ee66666    # 0.45f

    invoke-direct {p0, v6}, Lorg/telegram/ui/Components/EmojiView;->getGlassIconColor(F)I

    move-result v6

    goto :goto_8

    :cond_d
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiSearchIcon:I

    invoke-direct {p0, v6}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v6

    :goto_8
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 5777
    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView$SearchField;->-$$Nest$fgetsearchEditText(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v3

    iget-boolean v5, p0, Lorg/telegram/ui/Components/EmojiView;->glassDesign:Z

    if-eqz v5, :cond_e

    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/EmojiView;->getGlassIconColor(F)I

    move-result v4

    goto :goto_9

    :cond_e
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v4

    :goto_9
    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    :goto_a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 5779
    :cond_f
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->dotPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_10

    .line 5780
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelNewTrending:I

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 5782
    :cond_10
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    if-eqz v2, :cond_11

    .line 5783
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelBackground:I

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    .line 5785
    :cond_11
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v2, :cond_12

    .line 5786
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelBackground:I

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    .line 5788
    :cond_12
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    if-eqz v2, :cond_14

    .line 5789
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelStickerPackSelectorLine:I

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setIndicatorColor(I)V

    .line 5790
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelShadowLine:I

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setUnderlineColor(I)V

    .line 5791
    iget-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView;->shouldDrawBackground:Z

    if-eqz v2, :cond_13

    .line 5792
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelBackground:I

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_b

    .line 5794
    :cond_13
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 5797
    :cond_14
    :goto_b
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    if-eqz v2, :cond_16

    .line 5798
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelStickerPackSelectorLine:I

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setIndicatorColor(I)V

    .line 5799
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelShadowLine:I

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setUnderlineColor(I)V

    .line 5800
    iget-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView;->shouldDrawBackground:Z

    if-eqz v2, :cond_15

    .line 5801
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelBackground:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_c

    .line 5803
    :cond_15
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 5806
    :cond_16
    :goto_c
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    const v2, 0x3f19999a    # 0.6f

    if-eqz v1, :cond_18

    .line 5807
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    iget-boolean v7, p0, Lorg/telegram/ui/Components/EmojiView;->glassDesign:Z

    if-eqz v7, :cond_17

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->getGlassIconColor(F)I

    move-result v7

    goto :goto_d

    :cond_17
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionIcon:I

    invoke-direct {p0, v7}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v7

    :goto_d
    sget-object v8, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v7, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 5808
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    if-nez v1, :cond_18

    .line 5809
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelBackground:I

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v7

    invoke-static {v1, v7, v0}, Lorg/telegram/ui/ActionBar/Theme;->setSelectorDrawableColor(Landroid/graphics/drawable/Drawable;IZ)Z

    .line 5810
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v3

    invoke-static {v1, v3, v6}, Lorg/telegram/ui/ActionBar/Theme;->setSelectorDrawableColor(Landroid/graphics/drawable/Drawable;IZ)Z

    .line 5813
    :cond_18
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSettingsButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_1a

    .line 5814
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    iget-boolean v7, p0, Lorg/telegram/ui/Components/EmojiView;->glassDesign:Z

    if-eqz v7, :cond_19

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->getGlassIconColor(F)I

    move-result v7

    goto :goto_e

    :cond_19
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelBackspace:I

    invoke-direct {p0, v7}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v7

    :goto_e
    sget-object v8, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v7, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 5816
    :cond_1a
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->searchButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_1c

    .line 5817
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    iget-boolean v7, p0, Lorg/telegram/ui/Components/EmojiView;->glassDesign:Z

    if-eqz v7, :cond_1b

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->getGlassIconColor(F)I

    move-result v2

    goto :goto_f

    :cond_1b
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelBackspace:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v2

    :goto_f
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v2, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 5819
    :cond_1c
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    if-eqz v1, :cond_1d

    .line 5820
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_gifSaveHintBackground:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 5821
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_gifSaveHintText:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5823
    :cond_1d
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    if-eqz v1, :cond_1e

    .line 5824
    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->-$$Nest$fgetprogressEmptyView(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;->-$$Nest$fgetimageView(Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;)Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelEmptyText:I

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v7

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v7, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 5825
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->-$$Nest$fgetprogressEmptyView(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;->-$$Nest$fgettextView(Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5826
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->-$$Nest$fgetprogressEmptyView(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;->-$$Nest$fgetprogressView(Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_progressCircle:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    .line 5828
    :cond_1e
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->animatedEmojiTextColorFilter:Landroid/graphics/PorterDuffColorFilter;

    move v1, v0

    .line 5830
    :goto_10
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->tabIcons:[Landroid/graphics/drawable/Drawable;

    array-length v3, v2

    if-ge v1, v3, :cond_21

    .line 5831
    aget-object v2, v2, v1

    iget-boolean v3, p0, Lorg/telegram/ui/Components/EmojiView;->glassDesign:Z

    if-eqz v3, :cond_1f

    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/EmojiView;->getGlassIconColor(F)I

    move-result v3

    goto :goto_11

    :cond_1f
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiBottomPanelIcon:I

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v3

    :goto_11
    invoke-static {v2, v3, v0}, Lorg/telegram/ui/ActionBar/Theme;->setEmojiDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 5832
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->tabIcons:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v1

    iget-boolean v3, p0, Lorg/telegram/ui/Components/EmojiView;->glassDesign:Z

    if-eqz v3, :cond_20

    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/EmojiView;->getGlassIconColor(F)I

    move-result v3

    goto :goto_12

    :cond_20
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelIconSelected:I

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v3

    :goto_12
    invoke-static {v2, v3, v6}, Lorg/telegram/ui/ActionBar/Theme;->setEmojiDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 5834
    :cond_21
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    if-eqz v1, :cond_22

    .line 5835
    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->updateColors()V

    :cond_22
    move v1, v0

    .line 5837
    :goto_13
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickerIcons:[Landroid/graphics/drawable/Drawable;

    array-length v3, v2

    if-ge v1, v3, :cond_25

    .line 5838
    aget-object v2, v2, v1

    iget-boolean v3, p0, Lorg/telegram/ui/Components/EmojiView;->glassDesign:Z

    if-eqz v3, :cond_23

    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/EmojiView;->getGlassIconColor(F)I

    move-result v3

    goto :goto_14

    :cond_23
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelIcon:I

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v3

    :goto_14
    invoke-static {v2, v3, v0}, Lorg/telegram/ui/ActionBar/Theme;->setEmojiDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 5839
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickerIcons:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v1

    iget-boolean v3, p0, Lorg/telegram/ui/Components/EmojiView;->glassDesign:Z

    if-eqz v3, :cond_24

    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/EmojiView;->getGlassIconColor(F)I

    move-result v3

    goto :goto_15

    :cond_24
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelIconSelected:I

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v3

    :goto_15
    invoke-static {v2, v3, v6}, Lorg/telegram/ui/ActionBar/Theme;->setEmojiDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_25
    move v1, v0

    .line 5841
    :goto_16
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->gifIcons:[Landroid/graphics/drawable/Drawable;

    array-length v3, v2

    if-ge v1, v3, :cond_28

    .line 5842
    aget-object v2, v2, v1

    iget-boolean v3, p0, Lorg/telegram/ui/Components/EmojiView;->glassDesign:Z

    if-eqz v3, :cond_26

    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/EmojiView;->getGlassIconColor(F)I

    move-result v3

    goto :goto_17

    :cond_26
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelIcon:I

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v3

    :goto_17
    invoke-static {v2, v3, v0}, Lorg/telegram/ui/ActionBar/Theme;->setEmojiDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 5843
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->gifIcons:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v1

    iget-boolean v3, p0, Lorg/telegram/ui/Components/EmojiView;->glassDesign:Z

    if-eqz v3, :cond_27

    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/EmojiView;->getGlassIconColor(F)I

    move-result v3

    goto :goto_18

    :cond_27
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelIconSelected:I

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v3

    :goto_18
    invoke-static {v2, v3, v6}, Lorg/telegram/ui/ActionBar/Theme;->setEmojiDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 5845
    :cond_28
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->searchIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2b

    .line 5846
    iget-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView;->glassDesign:Z

    if-eqz v2, :cond_29

    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/EmojiView;->getGlassIconColor(F)I

    move-result v2

    goto :goto_19

    :cond_29
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiBottomPanelIcon:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v2

    :goto_19
    invoke-static {v1, v2, v0}, Lorg/telegram/ui/ActionBar/Theme;->setEmojiDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 5847
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->searchIconDrawable:Landroid/graphics/drawable/Drawable;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView;->glassDesign:Z

    if-eqz v2, :cond_2a

    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/EmojiView;->getGlassIconColor(F)I

    move-result v2

    goto :goto_1a

    :cond_2a
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelIconSelected:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v2

    :goto_1a
    invoke-static {v1, v2, v6}, Lorg/telegram/ui/ActionBar/Theme;->setEmojiDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 5849
    :cond_2b
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->searchIconDotDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2e

    .line 5850
    iget-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView;->glassDesign:Z

    if-eqz v2, :cond_2c

    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/EmojiView;->getGlassIconColor(F)I

    move-result v2

    goto :goto_1b

    :cond_2c
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelStickerPackSelectorLine:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v2

    :goto_1b
    invoke-static {v1, v2, v0}, Lorg/telegram/ui/ActionBar/Theme;->setEmojiDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 5851
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->searchIconDotDrawable:Landroid/graphics/drawable/Drawable;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView;->glassDesign:Z

    if-eqz v1, :cond_2d

    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/EmojiView;->getGlassIconColor(F)I

    move-result v1

    goto :goto_1c

    :cond_2d
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelStickerPackSelectorLine:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v1

    :goto_1c
    invoke-static {v0, v1, v6}, Lorg/telegram/ui/ActionBar/Theme;->setEmojiDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 5853
    :cond_2e
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiLockPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_2f

    .line 5854
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelStickerSetName:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 5855
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiLockPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5857
    :cond_2f
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiLockDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_30

    .line 5858
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelStickerSetName:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_30
    return-void
.end method
