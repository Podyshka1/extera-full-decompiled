.class public abstract Lorg/telegram/ui/SelectAnimatedEmojiDialog;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;,
        Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;,
        Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;,
        Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;,
        Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;,
        Lorg/telegram/ui/SelectAnimatedEmojiDialog$onRecentClearedListener;,
        Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;,
        Lorg/telegram/ui/SelectAnimatedEmojiDialog$onLongPressedListener;,
        Lorg/telegram/ui/SelectAnimatedEmojiDialog$BackgroundDelegate;,
        Lorg/telegram/ui/SelectAnimatedEmojiDialog$SetTitleDocument;,
        Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;,
        Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;,
        Lorg/telegram/ui/SelectAnimatedEmojiDialog$HeaderView;,
        Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;
    }
.end annotation


# static fields
.field private static final emptyViewEmojis:Ljava/util/List;

.field private static isFirstOpen:Z

.field private static lastSearchKeyboardLanguage:[Ljava/lang/String;

.field private static listStates:Ljava/util/HashMap;

.field private static preloaded:[Z


# instance fields
.field private final EXPAND_MAX_LINES:I

.field private final RECENT_MAX_LINES:I

.field private final SPAN_COUNT:I

.field private final SPAN_COUNT_FOR_EMOJI:I

.field private final SPAN_COUNT_FOR_STICKER:I

.field private accentColor:I

.field private adapter:Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;

.field private animateExpandFromButton:Landroid/view/View;

.field private animateExpandFromButtonTranslate:F

.field private animateExpandFromPosition:I

.field private animateExpandStartTime:J

.field private animateExpandToPosition:I

.field private animationsEnabled:Z

.field private backgroundDelegate:Lorg/telegram/ui/SelectAnimatedEmojiDialog$BackgroundDelegate;

.field private backgroundView:Landroid/view/View;

.field public badgePicker:Z

.field private baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field bigReactionAnimatedEmoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

.field bigReactionImageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field public bigReactionListener:Lorg/telegram/ui/SelectAnimatedEmojiDialog$onLongPressedListener;

.field private bottomGradientShown:Z

.field private bottomGradientView:Landroid/view/View;

.field private bubble1View:Landroid/view/View;

.field private bubble2View:Landroid/view/View;

.field private cachedEmojiTabs:[Lorg/telegram/ui/Components/EmojiTabsStrip;

.field public cancelPressed:Z

.field private clearSearchRunnable:Ljava/lang/Runnable;

.field private collectionParticles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

.field private commentView:Lorg/telegram/ui/Components/EditTextCaption;

.field public contentView:Landroid/widget/FrameLayout;

.field private contentViewForeground:Landroid/view/View;

.field private final currentAccount:I

.field private defaultBadgeId:J

.field private defaultSetLoading:Z

.field private defaultStatuses:Ljava/util/ArrayList;

.field private defaultTopicIconRow:I

.field private dismiss:Ljava/lang/Runnable;

.field private drawBackground:Z

.field private drawableToBounds:Landroid/graphics/Rect;

.field final durationScale:F

.field public emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

.field public emojiGridViewContainer:Landroid/widget/FrameLayout;

.field emojiItemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

.field public emojiSearchEmptyView:Landroid/widget/FrameLayout;

.field private emojiSearchEmptyViewImageView:Lorg/telegram/ui/Components/BackupImageView;

.field public emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

.field private emojiSelectAlpha:F

.field private emojiSelectAnimator:Landroid/animation/ValueAnimator;

.field private emojiSelectRect:Landroid/graphics/Rect;

.field private emojiSelectView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

.field public emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

.field public emojiTabsShadow:Landroid/view/View;

.field private emojiX:Ljava/lang/Integer;

.field private enterAnimationInProgress:Z

.field private expandedEmojiSets:Ljava/util/ArrayList;

.field public forUser:Z

.field private forumIconDrawable:Landroid/graphics/drawable/Drawable;

.field private forumIconImage:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

.field private frozenEmojiPacks:Ljava/util/ArrayList;

.field private gifts:Ljava/util/ArrayList;

.field private giftsEndRow:I

.field private giftsSectionRow:I

.field private giftsStartRow:I

.field private gridSearch:Z

.field private gridSwitchAnimator:Landroid/animation/ValueAnimator;

.field public gridViewContainer:Landroid/widget/FrameLayout;

.field private hideAnimator:Landroid/animation/ValueAnimator;

.field private hintExpireDate:Ljava/lang/Integer;

.field private includeEmpty:Z

.field public includeHint:Z

.field private installedEmojiSets:Ljava/util/ArrayList;

.field private isAttached:Z

.field private isLongPressEnabled:Z

.field private lastQuery:Ljava/lang/String;

.field private layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field private listStateId:Ljava/lang/Integer;

.field private longtapHintRow:I

.field private final maxDim:F

.field private notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

.field public onRecentClearedListener:Lorg/telegram/ui/SelectAnimatedEmojiDialog$onRecentClearedListener;

.field private overshootInterpolator:Landroid/view/animation/OvershootInterpolator;

.field private packs:Ljava/util/ArrayList;

.field paint:Landroid/graphics/Paint;

.field public paused:Z

.field public pausedExceptSelected:Z

.field private popularSectionRow:I

.field private positionToButton:Landroid/util/SparseIntArray;

.field private positionToExpand:Landroid/util/SparseIntArray;

.field private positionToSection:Landroid/util/SparseIntArray;

.field private premiumStar:Landroid/graphics/drawable/Drawable;

.field private final premiumStarColorFilter:Landroid/graphics/ColorFilter;

.field pressedProgress:F

.field private recent:Ljava/util/ArrayList;

.field private recentExpandButton:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;

.field private recentExpanded:Z

.field private recentReactions:Ljava/util/ArrayList;

.field private recentReactionsEndRow:I

.field private recentReactionsSectionRow:I

.field private recentReactionsStartRow:I

.field private recentReactionsToSet:Ljava/util/List;

.field private recentStickers:Ljava/util/ArrayList;

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private rowHashCodes:Ljava/util/ArrayList;

.field private scaleX:F

.field private scaleY:F

.field private scrimAlpha:F

.field private scrimColor:I

.field private scrimDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

.field private scrimDrawableParent:Landroid/view/View;

.field private scrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

.field private searchAdapter:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;

.field public searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

.field private searchEmptyViewAnimator:Landroid/animation/ValueAnimator;

.field private searchEmptyViewVisible:Z

.field private searchLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field private searchResult:Ljava/util/ArrayList;

.field private searchResultStickers:Ljava/util/ArrayList;

.field private searchRow:I

.field private searchRunnable:Ljava/lang/Runnable;

.field private searchSets:Ljava/util/ArrayList;

.field public searched:Z

.field public searchedLiftUp:Z

.field public searching:Z

.field private sectionToPosition:Landroid/util/SparseIntArray;

.field private selectStatusDateDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

.field selectedDocumentIds:Ljava/util/HashSet;

.field selectedReactionView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

.field selectedReactions:Ljava/util/HashSet;

.field public selectorAccentPaint:Landroid/graphics/Paint;

.field public selectorPaint:Landroid/graphics/Paint;

.field private showAnimator:Landroid/animation/ValueAnimator;

.field final showDuration:J

.field private showStickers:Z

.field private smoothScrolling:Z

.field private standardEmojis:Ljava/util/ArrayList;

.field private stickerSets:Ljava/util/ArrayList;

.field private stickers:Ljava/util/ArrayList;

.field private stickersEndRow:I

.field private stickersSearchResult:Ljava/util/ArrayList;

.field private stickersSectionRow:I

.field private stickersStartRow:I

.field private topGradientShown:Z

.field private topGradientView:Landroid/view/View;

.field private topMarginDp:I

.field private topReactions:Ljava/util/ArrayList;

.field private topReactionsEndRow:I

.field private topReactionsStartRow:I

.field private topicEmojiHeaderRow:I

.field private totalCount:I

.field private type:I

.field private final updateRows:Ljava/lang/Runnable;

.field private final updateRowsDelayed:Ljava/lang/Runnable;

.field public useAccentForPlus:Z


# direct methods
.method public static synthetic $r8$lambda$0D2laTzvKisWXka1j2YIeRkK0ts(Lorg/telegram/ui/SelectAnimatedEmojiDialog;ILandroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$new$4(ILandroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$0s0faJmIGFzJW3z5m0YrA457sDQ(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$search$16(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$32XlQzJvx0RyZ8GI8SM4zOtVfSA(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$new$1(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5KtTOhRICh2S1gqRnx5v5MKKGiQ(Lorg/telegram/ui/SelectAnimatedEmojiDialog;ZLjava/util/LinkedHashSet;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$search$26(ZLjava/util/LinkedHashSet;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6GKuFT1gt28Pg1368553xZds4z0(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Ljava/lang/String;Ljava/util/LinkedHashSet;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$search$22(Ljava/lang/String;Ljava/util/LinkedHashSet;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6xlRZArwPDtzFtriqZn3lluOdK4(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$new$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$9OngJl0RsnEj3pAPIqNz6GKPADM(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$onDismiss$38(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$B7kocktSFA79pc0fP05CIwbNrbg(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$search$29(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FuBXHWWf9JVCxxU1a40EgHId8mY(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Ljava/lang/String;ZLjava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/LinkedHashSet;Ljava/util/LinkedHashSet;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p10}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$search$12(Ljava/lang/String;ZLjava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/LinkedHashSet;Ljava/util/LinkedHashSet;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$GIYyWF4QW-JObs3FyNSJshjwPCQ(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Ljava/util/LinkedHashSet;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/lang/Runnable;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$search$25(Ljava/util/LinkedHashSet;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/lang/Runnable;Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GPI3NbDqsFbZtP7UOVWzayLAD_4(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$new$33()V

    return-void
.end method

.method public static synthetic $r8$lambda$MG1f_Mlp0SbAkgGM5_34RG_OFHQ(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/graphics/Rect;Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;[ZLjava/lang/Runnable;Lorg/telegram/ui/Components/AnimatedEmojiDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$animateEmojiSelect$7(Landroid/graphics/Rect;Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;[ZLjava/lang/Runnable;Lorg/telegram/ui/Components/AnimatedEmojiDrawable;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MNGFQn7VkhDLQO6QBkT9fAi3d3c(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$search$28(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NVtZW5iEdQ69mj8H25xkh_YEWp4(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Ljava/util/LinkedHashSet;Ljava/lang/Runnable;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$search$23(Ljava/util/LinkedHashSet;Ljava/lang/Runnable;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OoEVRIOoZ9luIK-qwgXBgPt8cmk(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/lang/Runnable;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 4

    .line 2090
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_2

    .line 2091
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MediaDataController$KeywordResult;

    iget-object v1, v1, Lorg/telegram/messenger/MediaDataController$KeywordResult;->emoji:Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 2092
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_1

    .line 2093
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2094
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2095
    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2096
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2100
    :cond_2
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic $r8$lambda$Uqn0EM85MByBpD0DweJ2uY4FGXA(Ljava/util/LinkedHashSet;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$TL_emojiList;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1959
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_emojiList;->document_id:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 1961
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic $r8$lambda$VKMY-pDE_W_yBxnpVqWF92a-xnI(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$switchGrids$9(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VMU2m0LjilSQzUDgVZbg-HqTAKA(Lorg/telegram/ui/SelectAnimatedEmojiDialog;ZLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$switchGrids$8(ZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XPqQmNWUnSvpwrTLvAOCN-TdBME(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Ljava/lang/String;Ljava/util/LinkedHashSet;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$search$15(Ljava/lang/String;Ljava/util/LinkedHashSet;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XXMyX8y4tvU2bBI1EgTxhkaYHj4(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$search$17(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XuMii2UOgsL--dJZe_8u-b1wpHk(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$onEmojiClick$31(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YJiXd7kX-vKjTnAfqA55Z3czxGI(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$search$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$b-TA3rK6zIUa_j7C0Nn868du0l0(Landroid/view/View;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 6380
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    .line 6381
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public static synthetic $r8$lambda$baA_nVQ7T0MBeRahwTaPA7hqN4M(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$new$34()V

    return-void
.end method

.method public static synthetic $r8$lambda$gsT1muwh7-DLtr0fqJHJVlf5XL4(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$onShow$37()V

    return-void
.end method

.method public static synthetic $r8$lambda$hvWZ_rkTRaRRe-Z7IlqOjFqVUR4(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$onShow$35(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ix6x7eXmFYQHpyghveJtC6iB_24(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$search$18(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mIOY5-v_EUKjKuafjwiiIKdaSGI(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Ljava/lang/String;ZZ[Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$search$30(Ljava/lang/String;ZZ[Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nMdf9SYCdSK9ps6KLP8KilCmWzA(Ljava/util/LinkedHashSet;Ljava/lang/Runnable;Ljava/util/ArrayList;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1970
    invoke-virtual {p0, p2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 1972
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic $r8$lambda$oE0xTFpVIBp_a965tQFMs2jVRFo(Ljava/util/LinkedHashSet;Ljava/lang/Runnable;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 2

    const/4 p3, 0x0

    .line 1885
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p3, v0, :cond_2

    .line 1886
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MediaDataController$KeywordResult;

    iget-object v0, v0, Lorg/telegram/messenger/MediaDataController$KeywordResult;->emoji:Ljava/lang/String;

    const-string v1, "animated_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1889
    :cond_0
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MediaDataController$KeywordResult;

    iget-object v0, v0, Lorg/telegram/messenger/MediaDataController$KeywordResult;->emoji:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/Emoji;->fixEmoji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1890
    invoke-static {v0}, Lorg/telegram/messenger/Emoji;->getEmojiDrawable(Ljava/lang/CharSequence;)Lorg/telegram/messenger/Emoji$EmojiDrawable;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 1893
    :cond_1
    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 1896
    :catch_0
    :cond_2
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic $r8$lambda$pmi9lcAr684oDQOWa8wKtJY7hSk(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$new$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$sOP_NJF8u7Iht3Gl9bIy-RR13Xk(Lorg/telegram/ui/SelectAnimatedEmojiDialog;[Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashSet;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$search$24([Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashSet;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$smc53Vs-6EYdcOQF8kjDghZN_x0(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/view/View;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$new$2(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$sypj8YmOATIF-nCMHpl3GfOpNiM(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Ljava/lang/String;ZLjava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/LinkedHashSet;Ljava/util/LinkedHashSet;Ljava/util/ArrayList;Ljava/util/ArrayList;ZLjava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p11}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$search$13(Ljava/lang/String;ZLjava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/LinkedHashSet;Ljava/util/LinkedHashSet;Ljava/util/ArrayList;Ljava/util/ArrayList;ZLjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tOJFwxPo8uHNfjvaHP3PnaP38_I(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$onRecentLongClick$5(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$vKBERbIBFU3MF8WpleF4ta0yvt4(ZLjava/lang/String;Ljava/util/LinkedHashSet;Ljava/lang/Runnable;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 1957
    sget-object p0, Lorg/telegram/ui/Components/StickerCategoriesListView;->search:Lorg/telegram/messenger/CacheFetcher;

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    new-instance v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda32;

    invoke-direct {v1, p2, p3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda32;-><init>(Ljava/util/LinkedHashSet;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0, p1, v1}, Lorg/telegram/messenger/CacheFetcher;->fetch(ILjava/lang/Object;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void

    .line 1964
    :cond_0
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic $r8$lambda$vvEuOX1TxG5jPl3Mvv3BDnTMJ-o(Lorg/telegram/ui/SelectAnimatedEmojiDialog;ZLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$switchSearchEmptyView$10(ZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$x1x5qyHWqXLA2qp8mQFq-_C9rSg(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$onShow$36()V

    return-void
.end method

.method public static synthetic $r8$lambda$yWHSaNFhn753rBDRf7DBSX0FY8Y(Lorg/telegram/ui/SelectAnimatedEmojiDialog;FI)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$expand$32(FI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetaccentColor(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->accentColor:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetanimateExpandFromButton(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandFromButton:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetanimateExpandFromButtonTranslate(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandFromButtonTranslate:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetanimateExpandFromPosition(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandFromPosition:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetanimateExpandStartTime(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandStartTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetanimateExpandToPosition(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandToPosition:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbackgroundDelegate(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$BackgroundDelegate;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->backgroundDelegate:Lorg/telegram/ui/SelectAnimatedEmojiDialog$BackgroundDelegate;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbackgroundView(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->backgroundView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbaseFragment(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbottomGradientView(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bottomGradientView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbubble1View(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble1View:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbubble2View(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble2View:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcachedEmojiTabs(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)[Lorg/telegram/ui/Components/EmojiTabsStrip;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->cachedEmojiTabs:[Lorg/telegram/ui/Components/EmojiTabsStrip;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcommentView(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/ui/Components/EditTextCaption;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->commentView:Lorg/telegram/ui/Components/EditTextCaption;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentAccount(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdefaultStatuses(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->defaultStatuses:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdefaultTopicIconRow(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->defaultTopicIconRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdismiss(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->dismiss:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdrawBackground(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->drawBackground:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdrawableToBounds(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/graphics/Rect;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->drawableToBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetforumIconDrawable(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->forumIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetgifts(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gifts:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetgiftsEndRow(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->giftsEndRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetgiftsSectionRow(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->giftsSectionRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetgiftsStartRow(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->giftsStartRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgethintExpireDate(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/lang/Integer;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->hintExpireDate:Ljava/lang/Integer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetincludeEmpty(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->includeEmpty:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetinstalledEmojiSets(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->installedEmojiSets:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisAttached(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->isAttached:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisLongPressEnabled(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->isLongPressEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlastQuery(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lastQuery:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlayoutManager(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlongtapHintRow(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->longtapHintRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetnotificationsLocker(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/messenger/AnimationNotificationsLocker;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpacks(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->packs:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpopularSectionRow(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->popularSectionRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpositionToButton(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/util/SparseIntArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->positionToButton:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpositionToExpand(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/util/SparseIntArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->positionToExpand:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpositionToSection(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/util/SparseIntArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->positionToSection:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpremiumStarColorFilter(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/graphics/ColorFilter;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->premiumStarColorFilter:Landroid/graphics/ColorFilter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrecent(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrecentExpandButton(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentExpandButton:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrecentExpanded(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentExpanded:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetrecentReactions(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentReactions:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrecentReactionsEndRow(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentReactionsEndRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetrecentReactionsSectionRow(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentReactionsSectionRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetrecentReactionsStartRow(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentReactionsStartRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetrecentStickers(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentStickers:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetresourcesProvider(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrowHashCodes(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetscaleX(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scaleX:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetscaleY(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scaleY:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetscrimColor(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrimColor:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetscrimDrawable(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrimDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchAdapter(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchAdapter:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchResult(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchResult:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchResultStickers(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchResultStickers:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchRow(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchSets(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchSets:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsectionToPosition(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/util/SparseIntArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->sectionToPosition:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetselectStatusDateDialog(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectStatusDateDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetshowAnimator(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->showAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetshowStickers(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->showStickers:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsmoothScrolling(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->smoothScrolling:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetstandardEmojis(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->standardEmojis:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstickers(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->stickers:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstickersEndRow(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->stickersEndRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetstickersSearchResult(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->stickersSearchResult:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstickersSectionRow(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->stickersSectionRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetstickersStartRow(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->stickersStartRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettopMarginDp(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topMarginDp:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettopReactions(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topReactions:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettopReactionsEndRow(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topReactionsEndRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettopReactionsStartRow(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topReactionsStartRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettopicEmojiHeaderRow(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topicEmojiHeaderRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettotalCount(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettype(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputemojiSelectView(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputforumIconImage(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->forumIconImage:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputgridSwitchAnimator(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gridSwitchAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputrecentExpandButton(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentExpandButton:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsearchEmptyViewAnimator(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchEmptyViewAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputselectStatusDateDialog(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectStatusDateDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputshowStickers(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->showStickers:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsmoothScrolling(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->smoothScrolling:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckScroll(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->checkScroll()V

    return-void
.end method

.method static bridge synthetic -$$Nest$menterAnimationInProgress(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->enterAnimationInProgress()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetCacheType(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->getCacheType()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetPremiumStar(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->getPremiumStar()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mincrementHintUse(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->incrementHintUse()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mscrollToPosition(Lorg/telegram/ui/SelectAnimatedEmojiDialog;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrollToPosition(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetBigReactionAnimatedEmoji(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setBigReactionAnimatedEmoji(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateRows(Lorg/telegram/ui/SelectAnimatedEmojiDialog;ZZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateRows(ZZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateRows(Lorg/telegram/ui/SelectAnimatedEmojiDialog;ZZZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateRows(ZZZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSearchBox(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateSearchBox()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateShow(Lorg/telegram/ui/SelectAnimatedEmojiDialog;F)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateShow(F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateTabsPosition(Lorg/telegram/ui/SelectAnimatedEmojiDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateTabsPosition(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1689
    const-string/jumbo v0, "\ud83d\ude28"

    const-string/jumbo v1, "\u2753"

    const-string/jumbo v2, "\ud83d\ude16"

    const-string/jumbo v3, "\ud83d\ude2b"

    const-string/jumbo v4, "\ud83e\udee0"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emptyViewEmojis:Ljava/util/List;

    const/16 v0, 0x10

    .line 3656
    new-array v0, v0, [Z

    sput-object v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->preloaded:[Z

    const/4 v0, 0x1

    .line 5033
    sput-boolean v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->isFirstOpen:Z

    .line 5789
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->listStates:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLjava/lang/Integer;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 9

    const/4 v6, 0x1

    const/16 v8, 0x10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v7, p6

    .line 495
    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLjava/lang/Integer;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLjava/lang/Integer;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V
    .locals 11

    .line 498
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueIcon:I

    move-object/from16 v8, p7

    invoke-static {v0, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v9, p8

    invoke-direct/range {v1 .. v10}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLjava/lang/Integer;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;II)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLjava/lang/Integer;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;II)V
    .locals 11

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    .line 502
    invoke-direct/range {v0 .. v10}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLjava/lang/Integer;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;IIZ)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLjava/lang/Integer;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;IIZ)V
    .locals 49

    move-object/from16 v1, p0

    move-object/from16 v12, p1

    move-object/from16 v2, p2

    move-object/from16 v13, p4

    move/from16 v8, p5

    move/from16 v14, p6

    move-object/from16 v5, p7

    move/from16 v10, p9

    move/from16 v15, p10

    .line 506
    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v7, 0x8

    .line 168
    iput v7, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->SPAN_COUNT_FOR_EMOJI:I

    const/4 v9, 0x5

    .line 169
    iput v9, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->SPAN_COUNT_FOR_STICKER:I

    const/16 v11, 0x28

    .line 170
    iput v11, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->SPAN_COUNT:I

    .line 172
    iput v9, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->RECENT_MAX_LINES:I

    const/4 v0, 0x3

    .line 173
    iput v0, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->EXPAND_MAX_LINES:I

    .line 197
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedReactions:Ljava/util/HashSet;

    .line 198
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedDocumentIds:Ljava/util/HashSet;

    .line 199
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectorPaint:Landroid/graphics/Paint;

    .line 200
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectorAccentPaint:Landroid/graphics/Paint;

    .line 206
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->stickerSets:Ljava/util/ArrayList;

    .line 409
    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    const/4 v3, 0x2

    .line 414
    new-array v6, v3, [Lorg/telegram/ui/Components/EmojiTabsStrip;

    iput-object v6, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->cachedEmojiTabs:[Lorg/telegram/ui/Components/EmojiTabsStrip;

    .line 436
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    .line 437
    new-instance v6, Landroid/util/SparseIntArray;

    invoke-direct {v6}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v6, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->positionToSection:Landroid/util/SparseIntArray;

    .line 438
    new-instance v6, Landroid/util/SparseIntArray;

    invoke-direct {v6}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v6, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->sectionToPosition:Landroid/util/SparseIntArray;

    .line 439
    new-instance v6, Landroid/util/SparseIntArray;

    invoke-direct {v6}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v6, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->positionToExpand:Landroid/util/SparseIntArray;

    .line 440
    new-instance v6, Landroid/util/SparseIntArray;

    invoke-direct {v6}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v6, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->positionToButton:Landroid/util/SparseIntArray;

    .line 441
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->expandedEmojiSets:Ljava/util/ArrayList;

    .line 442
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->installedEmojiSets:Ljava/util/ArrayList;

    const/4 v6, 0x0

    .line 443
    iput-boolean v6, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentExpanded:Z

    .line 444
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    .line 445
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gifts:Ljava/util/ArrayList;

    .line 446
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentStickers:Ljava/util/ArrayList;

    .line 447
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->standardEmojis:Ljava/util/ArrayList;

    .line 448
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topReactions:Ljava/util/ArrayList;

    .line 449
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentReactions:Ljava/util/ArrayList;

    .line 450
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->stickers:Ljava/util/ArrayList;

    .line 451
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->defaultStatuses:Ljava/util/ArrayList;

    .line 452
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->frozenEmojiPacks:Ljava/util/ArrayList;

    .line 453
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->packs:Ljava/util/ArrayList;

    .line 454
    iput-boolean v6, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->includeEmpty:Z

    .line 455
    iput-boolean v6, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->includeHint:Z

    .line 457
    iput-boolean v4, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->drawBackground:Z

    .line 462
    new-instance v7, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v7}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v7, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bigReactionImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 1262
    iput-boolean v4, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->isLongPressEnabled:Z

    const/high16 v7, 0x3e800000    # 0.25f

    .line 1268
    iput v7, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->maxDim:F

    const/high16 v7, 0x3f800000    # 1.0f

    .line 1372
    iput v7, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrimAlpha:F

    .line 1378
    iput v7, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectAlpha:F

    .line 1381
    new-instance v11, Landroid/view/animation/OvershootInterpolator;

    const/high16 v9, 0x40000000    # 2.0f

    invoke-direct {v11, v9}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    iput-object v11, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->overshootInterpolator:Landroid/view/animation/OvershootInterpolator;

    .line 1500
    iput-boolean v6, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topGradientShown:Z

    .line 1501
    iput-boolean v6, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bottomGradientShown:Z

    .line 1511
    iput-boolean v6, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->smoothScrolling:Z

    .line 1536
    iput-boolean v6, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searching:Z

    .line 1537
    iput-boolean v6, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searched:Z

    .line 1538
    iput-boolean v6, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchedLiftUp:Z

    .line 1550
    iput-boolean v6, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gridSearch:Z

    .line 1691
    iput-boolean v6, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchEmptyViewVisible:Z

    .line 1736
    iput-boolean v6, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->paused:Z

    .line 1737
    iput-boolean v6, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->pausedExceptSelected:Z

    const/4 v9, -0x1

    .line 3215
    iput v9, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandFromPosition:I

    iput v9, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandToPosition:I

    const-wide/16 v3, -0x1

    .line 3216
    iput-wide v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandStartTime:J

    .line 3672
    iput-boolean v6, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->defaultSetLoading:Z

    .line 4997
    new-instance v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    iput-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateRows:Ljava/lang/Runnable;

    .line 4998
    new-instance v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda2;

    invoke-direct {v3, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    iput-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateRowsDelayed:Ljava/lang/Runnable;

    .line 5035
    iput v7, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->durationScale:F

    const-wide/16 v3, 0x320

    .line 5036
    iput-wide v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->showDuration:J

    .line 5039
    new-instance v3, Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-direct {v3}, Lorg/telegram/messenger/AnimationNotificationsLocker;-><init>()V

    iput-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    .line 5750
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->paint:Landroid/graphics/Paint;

    .line 507
    iput-boolean v15, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->badgePicker:Z

    .line 508
    iput-object v5, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 509
    iput v8, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    move/from16 v3, p3

    .line 510
    iput-boolean v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->includeEmpty:Z

    .line 511
    iput-object v12, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 512
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "emoji"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0xa

    const/16 v9, 0x9

    const/16 v0, 0xc

    if-eqz v8, :cond_1

    if-eq v8, v0, :cond_1

    if-eq v8, v9, :cond_1

    if-ne v8, v7, :cond_0

    goto :goto_1

    :cond_0
    const-string v21, "reaction"

    :goto_0
    move-object/from16 v11, v21

    goto :goto_2

    :cond_1
    :goto_1
    const-string/jumbo v21, "status"

    goto :goto_0

    :goto_2
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "usehint"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x3

    if-ge v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_3

    :cond_2
    move v3, v6

    :goto_3
    iput-boolean v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->includeHint:Z

    .line 513
    iput v10, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->accentColor:I

    .line 515
    iget-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectorPaint:Landroid/graphics/Paint;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 516
    iget-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectorAccentPaint:Landroid/graphics/Paint;

    const/16 v4, 0x1e

    invoke-static {v10, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 517
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v10, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->premiumStarColorFilter:Landroid/graphics/ColorFilter;

    .line 519
    iput-object v13, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiX:Ljava/lang/Integer;

    if-nez v13, :cond_3

    const/4 v6, 0x0

    goto :goto_4

    .line 520
    :cond_3
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/high16 v4, 0x41d00000    # 26.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v21, 0x43920000    # 292.0f

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v3, v4, v6}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v6, v3

    :goto_4
    if-eqz v6, :cond_4

    .line 521
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/high16 v4, 0x432a0000    # 170.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    if-le v3, v4, :cond_4

    const/16 v22, 0x1

    :goto_5
    const/4 v3, 0x1

    goto :goto_6

    :cond_4
    const/16 v22, 0x0

    goto :goto_5

    .line 524
    :goto_6
    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    const/4 v4, 0x7

    if-eqz v8, :cond_5

    if-eq v8, v0, :cond_5

    if-eq v8, v9, :cond_5

    if-eq v8, v7, :cond_5

    const/4 v0, 0x2

    if-eq v8, v0, :cond_5

    const/4 v0, 0x5

    if-eq v8, v0, :cond_5

    if-ne v8, v4, :cond_6

    :cond_5
    move/from16 v0, p8

    .line 526
    iput v0, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topMarginDp:I

    const/high16 p8, 0x40800000    # 4.0f

    .line 527
    invoke-static/range {p8 .. p8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static/range {p8 .. p8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static/range {p8 .. p8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static/range {p8 .. p8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-virtual {v1, v0, v3, v4, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 528
    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda3;

    invoke-direct {v0, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_6
    const/4 v11, 0x4

    if-eqz v6, :cond_b

    .line 537
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble1View:Landroid/view/View;

    .line 538
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/R$drawable;->shadowed_bubble1:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 539
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 540
    iget-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble1View:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 541
    iget-object v0, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble1View:Landroid/view/View;

    invoke-virtual {v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->isBottom()Z

    move-result v3

    if-eqz v3, :cond_7

    const/16 v3, 0x50

    :goto_7
    const/16 v20, 0x3

    goto :goto_8

    :cond_7
    const/16 v3, 0x30

    goto :goto_7

    :goto_8
    or-int/lit8 v29, v3, 0x3

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v3, v4

    if-eqz v22, :cond_8

    const/16 v4, -0xc

    goto :goto_9

    :cond_8
    move v4, v11

    :goto_9
    int-to-float v4, v4

    add-float v30, v3, v4

    invoke-virtual {v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->isBottom()Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x0

    goto :goto_a

    :cond_9
    iget v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topMarginDp:I

    :goto_a
    int-to-float v3, v3

    invoke-virtual {v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->isBottom()Z

    move-result v4

    if-eqz v4, :cond_a

    iget v4, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topMarginDp:I

    goto :goto_b

    :cond_a
    const/4 v4, 0x0

    :goto_b
    int-to-float v4, v4

    const/16 v27, 0xa

    const/high16 v28, 0x41200000    # 10.0f

    const/16 v32, 0x0

    move/from16 v31, v3

    move/from16 v33, v4

    invoke-static/range {v27 .. v33}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 544
    :cond_b
    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$1;

    invoke-direct {v0, v1, v2, v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$1;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->backgroundView:Landroid/view/View;

    const/4 v4, 0x3

    if-eq v8, v4, :cond_d

    if-ne v8, v11, :cond_c

    goto :goto_c

    :cond_c
    const/4 v3, 0x0

    goto :goto_d

    :cond_d
    :goto_c
    const/4 v3, 0x1

    .line 557
    :goto_d
    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$2;

    move/from16 v20, v4

    move v4, v3

    const/4 v7, 0x1

    const/16 v11, 0xc

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$2;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Integer;)V

    move-object v4, v0

    move-object v0, v6

    iput-object v4, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    if-nez v3, :cond_e

    .line 605
    new-instance v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$3;

    invoke-direct {v6, v1, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$3;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Ljava/lang/Integer;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 631
    iget-object v4, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v7}, Landroid/view/View;->setClipToOutline(Z)V

    if-eqz v3, :cond_e

    .line 633
    iget-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v3, v4}, Landroid/view/View;->setElevation(F)V

    :cond_e
    if-eqz v8, :cond_f

    if-eq v8, v11, :cond_f

    if-eq v8, v9, :cond_f

    const/16 v3, 0xa

    if-eq v8, v3, :cond_f

    const/4 v3, 0x2

    if-eq v8, v3, :cond_10

    const/4 v4, 0x5

    if-ne v8, v4, :cond_11

    goto :goto_e

    :cond_f
    const/4 v3, 0x2

    .line 638
    :cond_10
    :goto_e
    iget-object v4, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    const/high16 p8, 0x41000000    # 8.0f

    invoke-static/range {p8 .. p8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static/range {p8 .. p8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static/range {p8 .. p8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static/range {p8 .. p8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-virtual {v4, v6, v7, v3, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 641
    :cond_11
    iget-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    iget-object v4, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->backgroundView:Landroid/view/View;

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v7, -0x1

    invoke-static {v7, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 642
    iget-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    const/4 v4, 0x6

    if-eqz v8, :cond_13

    if-eq v8, v11, :cond_13

    const/16 v9, 0x9

    if-eq v8, v9, :cond_13

    const/4 v9, 0x2

    if-eq v8, v9, :cond_13

    const/4 v9, 0x7

    if-ne v8, v9, :cond_12

    goto :goto_f

    :cond_12
    const/16 v31, 0x0

    goto :goto_10

    :cond_13
    :goto_f
    iget v9, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topMarginDp:I

    add-int/2addr v9, v4

    int-to-float v9, v9

    move/from16 v31, v9

    :goto_10
    invoke-virtual {v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->isBottom()Z

    move-result v9

    if-eqz v9, :cond_14

    iget v9, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topMarginDp:I

    add-int/2addr v9, v4

    int-to-float v9, v9

    move/from16 v33, v9

    goto :goto_11

    :cond_14
    const/16 v33, 0x0

    :goto_11
    const/16 v27, -0x1

    const/high16 v28, -0x40800000    # -1.0f

    const/16 v29, 0x77

    const/16 v30, 0x0

    const/16 v32, 0x0

    invoke-static/range {v27 .. v33}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v1, v3, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v0, :cond_19

    .line 645
    new-instance v9, Lorg/telegram/ui/SelectAnimatedEmojiDialog$4;

    invoke-direct {v9, v1, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$4;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;)V

    iput-object v9, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble2View:Landroid/view/View;

    .line 653
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const/16 p8, 0xe

    sget v3, Lorg/telegram/messenger/R$drawable;->shadowed_bubble2_half:I

    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 654
    new-instance v9, Landroid/graphics/PorterDuffColorFilter;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    invoke-static {v6, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 655
    iget-object v6, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble2View:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 656
    iget-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble2View:Landroid/view/View;

    invoke-virtual {v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->isBottom()Z

    move-result v6

    if-eqz v6, :cond_15

    const/16 v6, 0x50

    :goto_12
    const/4 v7, 0x3

    goto :goto_13

    :cond_15
    const/16 v6, 0x30

    goto :goto_12

    :goto_13
    or-int/lit8 v29, v6, 0x3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-float v6, v6

    sget v9, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v6, v9

    if-eqz v22, :cond_16

    const/16 v9, -0x19

    goto :goto_14

    :cond_16
    const/16 v9, 0xa

    :goto_14
    int-to-float v9, v9

    add-float v30, v6, v9

    invoke-virtual {v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->isBottom()Z

    move-result v6

    if-eqz v6, :cond_17

    const/16 v31, 0x0

    goto :goto_15

    :cond_17
    iget v6, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topMarginDp:I

    const/16 v17, 0x5

    add-int/lit8 v6, v6, 0x5

    int-to-float v6, v6

    move/from16 v31, v6

    :goto_15
    invoke-virtual {v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->isBottom()Z

    move-result v6

    if-eqz v6, :cond_18

    iget v6, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topMarginDp:I

    add-int/lit8 v6, v6, 0xe

    int-to-float v6, v6

    move/from16 v33, v6

    goto :goto_16

    :cond_18
    const/16 v33, 0x0

    :goto_16
    const/16 v27, 0x11

    const/high16 v28, 0x41100000    # 9.0f

    const/16 v32, 0x0

    invoke-static/range {v27 .. v33}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_17

    :cond_19
    const/16 p8, 0xe

    const/4 v7, 0x3

    :goto_17
    if-eqz v12, :cond_1a

    if-eq v8, v7, :cond_1a

    if-eq v8, v4, :cond_1a

    const/4 v3, 0x5

    const/4 v9, 0x7

    if-eq v8, v3, :cond_1b

    if-eq v8, v9, :cond_1b

    const/4 v6, 0x4

    if-eq v8, v6, :cond_1b

    const/16 v6, 0x9

    if-eq v8, v6, :cond_1b

    const/16 v6, 0xa

    if-eq v8, v6, :cond_1b

    if-eqz v14, :cond_1b

    const/16 v17, 0x1

    goto :goto_18

    :cond_1a
    const/4 v3, 0x5

    const/4 v9, 0x7

    :cond_1b
    const/16 v17, 0x0

    :goto_18
    const/4 v6, 0x0

    :goto_19
    const/high16 v22, 0x40a00000    # 5.0f

    const/16 v7, 0xd

    const/4 v3, 0x2

    if-ge v6, v3, :cond_2a

    move-object/from16 v18, v0

    .line 661
    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$5;

    const/4 v3, 0x4

    move/from16 v27, v4

    if-eq v8, v3, :cond_1c

    const/4 v4, 0x1

    goto :goto_1a

    :cond_1c
    const/4 v4, 0x0

    :goto_1a
    if-nez v15, :cond_1e

    if-eqz v8, :cond_1d

    if-eq v8, v11, :cond_1d

    const/16 v3, 0x9

    if-eq v8, v3, :cond_1d

    const/16 v3, 0xa

    if-ne v8, v3, :cond_1f

    goto :goto_1b

    :cond_1d
    const/16 v3, 0xa

    :goto_1b
    const/4 v5, 0x1

    goto :goto_1c

    :cond_1e
    const/16 v3, 0xa

    :cond_1f
    const/4 v5, 0x0

    :goto_1c
    if-eqz v17, :cond_20

    new-instance v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda4;

    invoke-direct {v3, v1, v12}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    :goto_1d
    move/from16 v28, v6

    goto :goto_1e

    :cond_20
    const/4 v3, 0x0

    goto :goto_1d

    :goto_1e
    const/4 v6, 0x0

    move/from16 v29, v7

    const/4 v7, 0x1

    move/from16 v30, v11

    move/from16 v11, p5

    move-object v9, v3

    move-object/from16 v12, v18

    const/4 v13, 0x4

    const/16 v24, 0x5

    move-object/from16 v3, p7

    .line 668
    invoke-direct/range {v0 .. v11}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$5;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZZZZILjava/lang/Runnable;II)V

    move-object v5, v3

    .line 720
    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiTabsStrip;->recentTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    if-eqz v3, :cond_21

    .line 721
    new-instance v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda5;

    invoke-direct {v4, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_21
    const/4 v7, 0x0

    .line 730
    iput-boolean v7, v0, Lorg/telegram/ui/Components/EmojiTabsStrip;->updateButtonDrawables:Z

    if-ne v8, v13, :cond_22

    const/16 v3, 0xd

    .line 732
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/EmojiTabsStrip;->setAnimatedEmojiCacheType(I)V

    const/4 v3, 0x2

    const/16 v11, 0xc

    goto :goto_21

    :cond_22
    if-eqz v8, :cond_24

    const/16 v11, 0xc

    const/4 v3, 0x2

    if-eq v8, v11, :cond_25

    if-ne v8, v3, :cond_23

    goto :goto_1f

    :cond_23
    move/from16 v9, v24

    goto :goto_20

    :cond_24
    const/4 v3, 0x2

    const/16 v11, 0xc

    :cond_25
    :goto_1f
    const/4 v9, 0x6

    .line 734
    :goto_20
    invoke-virtual {v0, v9}, Lorg/telegram/ui/Components/EmojiTabsStrip;->setAnimatedEmojiCacheType(I)V

    :goto_21
    if-nez v12, :cond_26

    const/4 v4, 0x1

    goto :goto_22

    :cond_26
    move v4, v7

    .line 736
    :goto_22
    iput-boolean v4, v0, Lorg/telegram/ui/Components/EmojiTabsStrip;->animateAppear:Z

    const/4 v4, 0x6

    if-ne v8, v4, :cond_27

    const/high16 v22, 0x41200000    # 10.0f

    :cond_27
    move/from16 v6, v22

    .line 737
    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/EmojiTabsStrip;->setPaddingLeft(F)V

    const/16 v9, 0xe

    if-eq v8, v9, :cond_29

    const/16 v6, 0x8

    if-eq v8, v6, :cond_28

    const/16 v10, 0xd

    if-eq v8, v10, :cond_28

    .line 739
    iget-object v10, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    const/high16 v4, 0x42100000    # 36.0f

    const/4 v3, -0x1

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v10, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_23

    :cond_28
    const/4 v3, -0x1

    goto :goto_23

    :cond_29
    const/4 v3, -0x1

    const/16 v6, 0x8

    .line 741
    :goto_23
    iget-object v4, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->cachedEmojiTabs:[Lorg/telegram/ui/Components/EmojiTabsStrip;

    aput-object v0, v4, v28

    add-int/lit8 v0, v28, 0x1

    move-object/from16 v13, p4

    move/from16 v10, p9

    move v6, v0

    move/from16 p8, v9

    move-object v0, v12

    move/from16 v3, v24

    const/4 v4, 0x6

    const/4 v9, 0x7

    move-object/from16 v12, p1

    goto/16 :goto_19

    :cond_2a
    move/from16 v9, p8

    move-object v12, v0

    const/4 v3, -0x1

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v13, 0x4

    .line 744
    iget-object v0, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->cachedEmojiTabs:[Lorg/telegram/ui/Components/EmojiTabsStrip;

    aget-object v4, v0, v7

    iput-object v4, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    const/4 v10, 0x1

    .line 745
    aget-object v0, v0, v10

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 747
    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$6;

    invoke-direct {v0, v1, v2, v12}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$6;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;Ljava/lang/Integer;)V

    iput-object v0, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabsShadow:Landroid/view/View;

    .line 756
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    if-eq v8, v9, :cond_2b

    if-eq v8, v6, :cond_2b

    const/16 v0, 0xd

    if-eq v8, v0, :cond_2b

    .line 758
    iget-object v0, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    iget-object v4, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabsShadow:Landroid/view/View;

    sget v16, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v3, 0x3f800000    # 1.0f

    div-float v31, v3, v16

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v30, -0x1

    const/16 v32, 0x30

    const/16 v33, 0x0

    const/high16 v34, 0x42100000    # 36.0f

    invoke-static/range {v30 .. v36}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_24

    :cond_2b
    const/high16 v3, 0x3f800000    # 1.0f

    .line 760
    :goto_24
    iget-object v0, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabsShadow:Landroid/view/View;

    invoke-static {v0, v10, v3, v7}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 761
    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$7;

    invoke-direct {v0, v1, v2, v8}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$7;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;I)V

    iput-object v0, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    .line 785
    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$8;

    invoke-direct {v0, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$8;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    iput-object v0, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiItemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    move/from16 v19, v3

    const-wide/16 v3, 0xdc

    .line 791
    invoke-virtual {v0, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setAddDuration(J)V

    .line 792
    iget-object v0, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiItemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    const-wide/16 v3, 0x104

    invoke-virtual {v0, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveDuration(J)V

    .line 793
    iget-object v0, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiItemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    const-wide/16 v3, 0xa0

    invoke-virtual {v0, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    .line 794
    iget-object v0, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiItemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 795
    iget-object v0, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiItemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 796
    iget-object v0, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiItemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 797
    iget-object v0, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v4, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiItemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 798
    iget-object v0, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    const/high16 v16, 0x42180000    # 38.0f

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-virtual {v0, v4, v6, v7, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 799
    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Lorg/telegram/ui/SelectAnimatedEmojiDialog-IA;)V

    iput-object v0, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->adapter:Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;

    .line 800
    iget-object v6, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v6, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 802
    iget-object v0, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    new-instance v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$9;

    const/16 v7, 0x28

    invoke-direct {v6, v1, v2, v7}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$9;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;I)V

    iput-object v6, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 819
    iget-object v0, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    new-instance v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$10;

    invoke-direct {v6, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$10;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 832
    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$11;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$11;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gridViewContainer:Landroid/widget/FrameLayout;

    .line 839
    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$12;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$12;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridViewContainer:Landroid/widget/FrameLayout;

    .line 889
    iget-object v6, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v42, -0x1

    const/high16 v43, -0x40800000    # -1.0f

    const/16 v44, 0x77

    const/16 v45, 0x0

    const/16 v46, 0x0

    invoke-static/range {v42 .. v48}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v6, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 890
    iget-object v0, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gridViewContainer:Landroid/widget/FrameLayout;

    iget-object v6, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridViewContainer:Landroid/widget/FrameLayout;

    invoke-static/range {v42 .. v48}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v6, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 892
    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$13;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$13;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    .line 899
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 900
    iget-object v0, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    const-wide/16 v4, 0xb4

    invoke-virtual {v0, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    .line 901
    iget-object v0, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 903
    :cond_2c
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    if-ne v8, v13, :cond_2d

    .line 905
    sget v3, Lorg/telegram/messenger/R$string;->NoEmojiOrStickersFound:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_27

    :cond_2d
    if-eqz v8, :cond_32

    const/16 v3, 0xd

    if-eq v8, v3, :cond_32

    if-eq v8, v11, :cond_32

    const/16 v3, 0xb

    if-eq v8, v3, :cond_32

    const/16 v6, 0x9

    if-eq v8, v6, :cond_32

    const/16 v3, 0xa

    if-ne v8, v3, :cond_2e

    goto :goto_26

    :cond_2e
    if-eq v8, v10, :cond_31

    const/4 v3, 0x2

    if-ne v8, v3, :cond_2f

    goto :goto_25

    :cond_2f
    const/16 v9, 0xe

    if-ne v8, v9, :cond_30

    .line 911
    sget v3, Lorg/telegram/messenger/R$string;->NoEffectsFound:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_27

    .line 913
    :cond_30
    sget v3, Lorg/telegram/messenger/R$string;->NoIconsFound:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_27

    .line 909
    :cond_31
    :goto_25
    sget v3, Lorg/telegram/messenger/R$string;->NoReactionsFound:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_27

    .line 907
    :cond_32
    :goto_26
    sget v3, Lorg/telegram/messenger/R$string;->NoEmojiFound:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_27
    const/high16 v3, 0x41600000    # 14.0f

    .line 916
    invoke-virtual {v0, v10, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 917
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelEmptyText:I

    move-object/from16 v5, p7

    invoke-static {v3, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 918
    new-instance v3, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v3, v2}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchEmptyViewImageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 919
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchEmptyView:Landroid/widget/FrameLayout;

    .line 920
    iget-object v4, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchEmptyViewImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v35, 0x24

    const/high16 v36, 0x42100000    # 36.0f

    const/16 v37, 0x31

    const/16 v38, 0x0

    const/high16 v39, 0x41800000    # 16.0f

    invoke-static/range {v35 .. v41}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 921
    iget-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchEmptyView:Landroid/widget/FrameLayout;

    const/16 v35, -0x2

    const/high16 v36, -0x40000000    # -2.0f

    const/high16 v39, 0x42700000    # 60.0f

    invoke-static/range {v35 .. v41}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 922
    iget-object v0, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchEmptyView:Landroid/widget/FrameLayout;

    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 923
    iget-object v0, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchEmptyView:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 924
    iget-object v0, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gridViewContainer:Landroid/widget/FrameLayout;

    iget-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchEmptyView:Landroid/widget/FrameLayout;

    const/16 v35, -0x1

    const/16 v37, 0x10

    const/16 v39, 0x0

    invoke-static/range {v35 .. v41}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 925
    iget-object v0, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, 0x42580000    # 54.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const/high16 v9, 0x42180000    # 38.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-virtual {v0, v3, v4, v6, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 926
    iget-object v0, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    new-instance v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Lorg/telegram/ui/SelectAnimatedEmojiDialog-IA;)V

    iput-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchAdapter:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 927
    iget-object v0, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    new-instance v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$14;

    invoke-direct {v3, v1, v2, v7}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$14;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;I)V

    iput-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 945
    iget-object v0, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    new-instance v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$15;

    invoke-direct {v3, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$15;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 958
    iget-object v0, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 959
    iget-object v0, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gridViewContainer:Landroid/widget/FrameLayout;

    iget-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    const/high16 v36, -0x40800000    # -1.0f

    const/16 v37, 0x77

    invoke-static/range {v35 .. v41}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 960
    iget-object v0, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    iget-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gridViewContainer:Landroid/widget/FrameLayout;

    const/16 v6, 0x8

    if-eq v8, v6, :cond_34

    const/16 v4, 0xd

    if-eq v8, v4, :cond_34

    const/16 v9, 0xe

    if-ne v8, v9, :cond_33

    goto :goto_28

    :cond_33
    sget v4, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float v7, v19, v4

    const/high16 v4, 0x42100000    # 36.0f

    add-float v6, v7, v4

    move/from16 v30, v6

    goto :goto_29

    :cond_34
    :goto_28
    const/16 v30, 0x0

    :goto_29
    if-eqz v15, :cond_35

    const/high16 v6, 0x42400000    # 48.0f

    move/from16 v32, v6

    goto :goto_2a

    :cond_35
    const/16 v32, 0x0

    :goto_2a
    const/16 v26, -0x1

    const/high16 v27, -0x40800000    # -1.0f

    const/16 v28, 0x30

    const/16 v29, 0x0

    const/16 v31, 0x0

    invoke-static/range {v26 .. v32}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v15, :cond_37

    .line 963
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 964
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelBackground:I

    invoke-static {v3, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 966
    new-instance v3, Lorg/telegram/ui/Components/EditTextCaption;

    invoke-direct {v3, v2, v5}, Lorg/telegram/ui/Components/EditTextCaption;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->commentView:Lorg/telegram/ui/Components/EditTextCaption;

    .line 967
    sget v4, Lorg/telegram/messenger/R$string;->Caption:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 968
    iget-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->commentView:Lorg/telegram/ui/Components/EditTextCaption;

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v3, v10, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    .line 969
    iget-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->commentView:Lorg/telegram/ui/Components/EditTextCaption;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 970
    iget-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->commentView:Lorg/telegram/ui/Components/EditTextCaption;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiSearchIcon:I

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 971
    iget-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->commentView:Lorg/telegram/ui/Components/EditTextCaption;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addedIcon:I

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 972
    iget-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->commentView:Lorg/telegram/ui/Components/EditTextCaption;

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    .line 973
    iget-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->commentView:Lorg/telegram/ui/Components/EditTextCaption;

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    .line 974
    iget-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->commentView:Lorg/telegram/ui/Components/EditTextCaption;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 975
    iget-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->commentView:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 976
    iget-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->commentView:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setLines(I)V

    .line 977
    iget-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->commentView:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 979
    sget-object v3, Lcom/exteragram/messenger/badges/BadgesController;->INSTANCE:Lcom/exteragram/messenger/badges/BadgesController;

    iget v4, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/exteragram/messenger/badges/BadgesController;->getBadge(Lorg/telegram/tgnet/TLObject;)Lcom/exteragram/messenger/api/dto/BadgeDTO;

    move-result-object v3

    if-eqz v3, :cond_36

    .line 980
    invoke-virtual {v3}, Lcom/exteragram/messenger/api/dto/BadgeDTO;->getText()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_36

    .line 981
    iget-object v4, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->commentView:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v3}, Lcom/exteragram/messenger/api/dto/BadgeDTO;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 984
    :cond_36
    iget-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->commentView:Lorg/telegram/ui/Components/EditTextCaption;

    const/high16 v29, 0x41800000    # 16.0f

    const/16 v30, 0x0

    const/16 v24, -0x1

    const/high16 v25, -0x40000000    # -2.0f

    const/16 v26, 0x10

    const/high16 v27, 0x41800000    # 16.0f

    const/16 v28, 0x0

    invoke-static/range {v24 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 985
    iget-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    const/16 v4, 0x30

    const/16 v6, 0x50

    const/4 v7, -0x1

    invoke-static {v7, v4, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2b

    :cond_37
    const/4 v7, -0x1

    .line 988
    :goto_2b
    new-instance v0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    iget-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v4, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v0, v3, v4}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    iput-object v0, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    .line 989
    new-instance v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$16;

    invoke-direct {v3, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$16;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->setAnimationCallback(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimationCallback;)V

    .line 1000
    iget-object v0, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    new-instance v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda6;

    invoke-direct {v3, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->setScrollListener(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$ScrollListener;)V

    .line 1004
    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$17;

    move-object/from16 v6, p4

    move-object v4, v2

    move v2, v8

    move v3, v15

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$17;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;IZLandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Integer;)V

    move-object v2, v4

    .line 1106
    iget-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v4

    int-to-float v4, v4

    const/high16 v6, 0x3e800000    # 0.25f

    mul-float/2addr v4, v6

    float-to-long v10, v4

    invoke-virtual {v3, v0, v10, v11}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListenerExtended;J)V

    .line 1107
    iget-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v6

    float-to-long v9, v4

    invoke-virtual {v3, v0, v9, v10}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListenerExtended;J)V

    .line 1108
    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda7;

    invoke-direct {v0, v1, v8}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;I)V

    .line 1143
    iget-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 1144
    iget-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 1146
    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$18;

    invoke-direct {v0, v1, v2, v14}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$18;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;Z)V

    iput-object v0, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    const/high16 v3, 0x42500000    # 52.0f

    .line 1165
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 1166
    iget-object v0, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    .line 1167
    iget-object v0, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gridViewContainer:Landroid/widget/FrameLayout;

    iget-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v23, -0x1

    const/high16 v24, 0x42500000    # 52.0f

    const/16 v25, 0x30

    const/16 v26, 0x0

    const/high16 v27, -0x3f800000    # -4.0f

    invoke-static/range {v23 .. v29}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1169
    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$19;

    invoke-direct {v0, v1, v2, v12}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$19;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;Ljava/lang/Integer;)V

    iput-object v0, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topGradientView:Landroid/view/View;

    .line 1178
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/R$drawable;->gradient_top:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1179
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v6

    const v9, 0x3f4ccccd    # 0.8f

    invoke-static {v6, v9}, Lorg/telegram/messenger/AndroidUtilities;->multiplyAlphaComponent(IF)I

    move-result v6

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v6, v9}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1180
    iget-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topGradientView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1181
    iget-object v0, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topGradientView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1182
    iget-object v0, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    iget-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topGradientView:Landroid/view/View;

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float v6, v19, v6

    const/high16 v10, 0x42100000    # 36.0f

    add-float v27, v6, v10

    const/high16 v24, 0x41a00000    # 20.0f

    const/16 v25, 0x37

    invoke-static/range {v23 .. v29}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1184
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bottomGradientView:Landroid/view/View;

    .line 1185
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/R$drawable;->gradient_bottom:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1186
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-direct {v3, v4, v9}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/16 v9, 0xe

    if-ne v8, v9, :cond_38

    .line 1188
    iget-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bottomGradientView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1190
    :cond_38
    iget-object v0, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bottomGradientView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1191
    iget-object v0, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    iget-object v4, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bottomGradientView:Landroid/view/View;

    const/16 v5, 0x14

    const/16 v6, 0x57

    invoke-static {v7, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1193
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentViewForeground:Landroid/view/View;

    .line 1194
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1195
    iget-object v0, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentViewForeground:Landroid/view/View;

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1196
    iget-object v0, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    iget-object v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentViewForeground:Landroid/view/View;

    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {v7, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1198
    iget v0, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-virtual {v1, v8, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->preload(II)V

    .line 1200
    iget-object v0, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bigReactionImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v9, 0x7

    invoke-virtual {v0, v9}, Lorg/telegram/messenger/ImageReceiver;->setLayerNum(I)V

    .line 1202
    invoke-direct {v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->isAnimatedShow()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1203
    invoke-static {}, Lorg/telegram/ui/Components/Reactions/HwEmojis;->beforePreparing()V

    :cond_39
    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 1205
    invoke-direct {v1, v7, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateRows(ZZ)V

    return-void
.end method

.method private checkScroll()V
    .locals 3

    .line 1504
    iget-boolean v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gridSearch:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->canScrollVertically(I)Z

    move-result v0

    .line 1505
    iget-boolean v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bottomGradientShown:Z

    if-eq v0, v1, :cond_2

    .line 1506
    iput-boolean v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bottomGradientShown:Z

    .line 1507
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bottomGradientView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_2
    return-void
.end method

.method private enterAnimationInProgress()Z
    .locals 1

    .line 2957
    iget-boolean v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->enterAnimationInProgress:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->showAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private filter(Ljava/util/ArrayList;Ljava/util/HashSet;)Ljava/util/ArrayList;
    .locals 3

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 6414
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 6415
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v1, :cond_1

    .line 6416
    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6417
    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object p1
.end method

.method public static findSticker(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$Document;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 2161
    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/Emoji;->fixEmoji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    .line 2163
    :goto_0
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->packs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const-wide/16 v4, 0x0

    if-ge v2, v3, :cond_2

    .line 2164
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->packs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->packs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    invoke-static {v3}, Lorg/telegram/messenger/Emoji;->fixEmoji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2165
    iget-object p1, p0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->packs:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move-wide v2, v4

    :goto_1
    cmp-long p1, v2, v4

    if-nez p1, :cond_3

    return-object v0

    .line 2170
    :cond_3
    :goto_2
    iget-object p1, p0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_5

    .line 2171
    iget-object p1, p0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Document;

    .line 2172
    iget-wide v4, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v4, v4, v2

    if-nez v4, :cond_4

    return-object p1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    return-object v0
.end method

.method private getCacheType()I
    .locals 4

    .line 4300
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const/4 v1, 0x5

    const/16 v2, 0xd

    if-eq v0, v1, :cond_4

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 4305
    invoke-static {}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getCacheTypeForEnterView()I

    move-result v0

    return v0

    :cond_1
    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v3, 0x4

    if-ne v0, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-eqz v0, :cond_4

    const/16 v3, 0xc

    if-eq v0, v3, :cond_4

    const/16 v3, 0x9

    if-eq v0, v3, :cond_4

    const/16 v3, 0xa

    if-eq v0, v3, :cond_4

    if-ne v0, v2, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v2
.end method

.method private getPremiumStar()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 1356
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->premiumStar:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    .line 1357
    iget-boolean v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->badgePicker:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->defaultBadgeId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1358
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->getCacheType()I

    move-result v1

    iget-wide v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->defaultBadgeId:J

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IIJ)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->premiumStar:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 1359
    :cond_0
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 1362
    :cond_1
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_settings_premium:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->premiumStar:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 1360
    :cond_2
    :goto_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_filled_blocked:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->premiumStar:Landroid/graphics/drawable/Drawable;

    .line 1364
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->premiumStar:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->premiumStarColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1366
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->premiumStarColorFilter:Landroid/graphics/ColorFilter;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->premiumStar:Landroid/graphics/drawable/Drawable;

    instance-of v2, v1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v2, :cond_4

    .line 1367
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1369
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->premiumStar:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private incrementHintUse()V
    .locals 3

    .line 3602
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_2

    .line 3605
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "emoji"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    if-eqz v1, :cond_2

    const/16 v2, 0xc

    if-eq v1, v2, :cond_2

    const/16 v2, 0x9

    if-eq v1, v2, :cond_2

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "reaction"

    goto :goto_1

    :cond_2
    :goto_0
    const-string/jumbo v1, "status"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "usehint"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3606
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_3

    .line 3608
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    :goto_2
    return-void
.end method

.method private isAnimatedShow()Z
    .locals 2

    .line 5042
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private synthetic lambda$animateEmojiSelect$7(Landroid/graphics/Rect;Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;[ZLjava/lang/Runnable;Lorg/telegram/ui/Components/AnimatedEmojiDrawable;Landroid/animation/ValueAnimator;)V
    .locals 6

    .line 1463
    invoke-virtual {p6}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/Float;

    invoke-virtual {p6}, Ljava/lang/Float;->floatValue()F

    move-result p6

    mul-float v0, p6, p6

    mul-float/2addr v0, p6

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    .line 1464
    iput v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrimAlpha:F

    float-to-double v2, p6

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    .line 1465
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v0, v2

    sub-float v0, v1, v0

    iput v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectAlpha:F

    .line 1466
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->drawableToBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectRect:Landroid/graphics/Rect;

    invoke-static {p1, v0, p6, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;)V

    .line 1467
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->overshootInterpolator:Landroid/view/animation/OvershootInterpolator;

    const/high16 v0, 0x40400000    # 3.0f

    mul-float/2addr v0, p6

    const/high16 v2, 0x40000000    # 2.0f

    sub-float/2addr v0, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/animation/OvershootInterpolator;->getInterpolation(F)F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getScaleX()F

    move-result p2

    mul-float/2addr p1, p2

    .line 1468
    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectRect:Landroid/graphics/Rect;

    .line 1469
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    mul-float/2addr v1, p1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectRect:Landroid/graphics/Rect;

    .line 1470
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    mul-float/2addr v3, p1

    sub-float/2addr v1, v3

    float-to-int v1, v1

    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectRect:Landroid/graphics/Rect;

    .line 1471
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectRect:Landroid/graphics/Rect;

    .line 1472
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v2

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    float-to-int p1, v4

    .line 1468
    invoke-virtual {p2, v0, v1, v3, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 1474
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const p1, 0x3f59999a    # 0.85f

    cmpl-float p1, p6, p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    .line 1476
    aget-boolean p2, p3, p1

    if-nez p2, :cond_0

    const/4 p2, 0x1

    .line 1477
    aput-boolean p2, p3, p1

    .line 1478
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    if-eqz p5, :cond_0

    .line 1479
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrimDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz p1, :cond_0

    .line 1480
    invoke-virtual {p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->play()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$expand$32(FI)V
    .locals 3

    .line 4260
    :try_start_0
    new-instance v0, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1}, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;-><init>(Landroid/content/Context;IF)V

    .line 4261
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 4262
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 4264
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 529
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->dismiss:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 530
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$new$1(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 662
    invoke-virtual {p0, v0, v1, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->search(Ljava/lang/String;ZZ)V

    .line 663
    invoke-virtual {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->onSettings()V

    .line 664
    new-instance v0, Lorg/telegram/ui/StickersActivity;

    const/4 v1, 0x5

    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->frozenEmojiPacks:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/StickersActivity;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 665
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->dismiss:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 666
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)Z
    .locals 1

    .line 722
    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->onRecentLongClick()V

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 724
    :try_start_0
    invoke-static {p1}, Lcom/exteragram/messenger/utils/system/VibratorUtils;->getType(I)I

    move-result p1

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method

.method private synthetic lambda$new$3()V
    .locals 0

    .line 1001
    invoke-virtual {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->invalidateParent()V

    return-void
.end method

.method private synthetic lambda$new$33()V
    .locals 1

    const/4 v0, 0x1

    .line 4997
    invoke-direct {p0, v0, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateRows(ZZ)V

    return-void
.end method

.method private synthetic lambda$new$34()V
    .locals 2

    .line 4999
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateRows:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeDelayed(Ljava/lang/Runnable;)V

    .line 5000
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateRows:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/NotificationCenter;->doOnIdle(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$4(ILandroid/view/View;I)V
    .locals 4

    .line 1109
    instance-of v0, p2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    const/4 v1, 0x3

    const/16 v2, 0xb

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    .line 1110
    check-cast p2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    .line 1111
    iget-boolean p3, p2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->isDefaultReaction:Z

    if-nez p3, :cond_3

    iget-object p3, p2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->reaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    if-eqz p3, :cond_0

    iget-boolean p3, p3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->isStar:Z

    if-nez p3, :cond_3

    :cond_0
    const/16 p3, 0xd

    if-eq p1, p3, :cond_3

    const/16 p3, 0xe

    if-ne p1, p3, :cond_1

    goto :goto_0

    .line 1114
    :cond_1
    iget-boolean p3, p2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->isStaticIcon:Z

    if-eqz p3, :cond_2

    iget-object p3, p2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz p3, :cond_2

    .line 1115
    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->onStickerClick(Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;Lorg/telegram/tgnet/TLRPC$Document;)V

    goto :goto_1

    .line 1117
    :cond_2
    iget-object p3, p2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {p0, p2, p3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->onEmojiClick(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan;)V

    goto :goto_1

    .line 1112
    :cond_3
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->incrementHintUse()V

    .line 1113
    iget-object p3, p2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->reaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-virtual {p0, p2, p3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->onReactionClick(Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    :goto_1
    if-eq p1, v3, :cond_7

    if-eq p1, v2, :cond_7

    .line 1121
    :try_start_0
    invoke-static {v1}, Lcom/exteragram/messenger/utils/system/VibratorUtils;->getType(I)I

    move-result p1

    invoke-virtual {p0, p1, v3}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1124
    :cond_4
    instance-of v0, p2, Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    const/4 p3, 0x0

    .line 1125
    invoke-virtual {p0, p2, p3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->onEmojiClick(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan;)V

    if-eq p1, v3, :cond_7

    if-eq p1, v2, :cond_7

    .line 1128
    :try_start_1
    invoke-static {v1}, Lcom/exteragram/messenger/utils/system/VibratorUtils;->getType(I)I

    move-result p1

    invoke-virtual {p0, p1, v3}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 1131
    :cond_5
    instance-of v0, p2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;

    if-eqz v0, :cond_6

    .line 1132
    check-cast p2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;

    .line 1133
    invoke-virtual {p0, p3, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->expand(ILandroid/view/View;)V

    if-eq p1, v3, :cond_7

    if-eq p1, v2, :cond_7

    .line 1136
    :try_start_2
    invoke-static {v1}, Lcom/exteragram/messenger/utils/system/VibratorUtils;->getType(I)I

    move-result p1

    invoke-virtual {p0, p1, v3}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :cond_6
    if-eqz p2, :cond_7

    .line 1140
    invoke-virtual {p2}, Landroid/view/View;->callOnClick()Z

    :catch_0
    :cond_7
    :goto_2
    return-void
.end method

.method private synthetic lambda$onDismiss$38(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 5590
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p1, v0, p1

    const/high16 v1, 0x41000000    # 8.0f

    .line 5591
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, p1

    mul-float/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 5592
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble1View:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 5593
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 5595
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble2View:Landroid/view/View;

    if-eqz v0, :cond_1

    mul-float v1, p1, p1

    .line 5596
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 5598
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 5599
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 5600
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$onEmojiClick$31(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;)V
    .locals 9

    .line 3590
    iget-wide v0, p2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v6, p4, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->starGift:Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->commentView:Lorg/telegram/ui/Components/EditTextCaption;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    move-object v8, p2

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    goto :goto_0

    :goto_1
    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->onEmojiSelected(Landroid/view/View;Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onRecentLongClick$5(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 1249
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->onRecentClearedListener:Lorg/telegram/ui/SelectAnimatedEmojiDialog$onRecentClearedListener;

    if-eqz p1, :cond_0

    .line 1250
    invoke-interface {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$onRecentClearedListener;->onRecentCleared()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onShow$35(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 5076
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateShow(F)V

    return-void
.end method

.method private synthetic lambda$onShow$36()V
    .locals 1

    .line 5119
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->showAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$onShow$37()V
    .locals 3

    .line 5118
    invoke-static {}, Lorg/telegram/ui/Components/Reactions/HwEmojis;->enableHw()V

    .line 5119
    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic lambda$search$11()V
    .locals 2

    .line 1790
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchResult:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1791
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1793
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchResultStickers:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1794
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1796
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchSets:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 1797
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1799
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchAdapter:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->updateRows(Z)V

    return-void
.end method

.method private synthetic lambda$search$12(Ljava/lang/String;ZLjava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/LinkedHashSet;Ljava/util/LinkedHashSet;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 3

    .line 1819
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->clearSearchRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1820
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 1821
    iput-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->clearSearchRunnable:Ljava/lang/Runnable;

    .line 1824
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lastQuery:Ljava/lang/String;

    if-eq p1, v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 1827
    iput-boolean v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searched:Z

    .line 1828
    invoke-virtual {p0, v0, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->switchGrids(ZZ)V

    .line 1829
    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 1830
    invoke-virtual {p2, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->showProgress(Z)V

    .line 1832
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchResult:Ljava/util/ArrayList;

    if-nez p2, :cond_3

    .line 1833
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchResult:Ljava/util/ArrayList;

    goto :goto_0

    .line 1835
    :cond_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 1837
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchSets:Ljava/util/ArrayList;

    if-nez p2, :cond_4

    .line 1838
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchSets:Ljava/util/ArrayList;

    goto :goto_1

    .line 1840
    :cond_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 1842
    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->stickersSearchResult:Ljava/util/ArrayList;

    if-nez p2, :cond_5

    .line 1843
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->stickersSearchResult:Ljava/util/ArrayList;

    goto :goto_2

    .line 1845
    :cond_5
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 1847
    :goto_2
    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchResultStickers:Ljava/util/ArrayList;

    if-nez p2, :cond_6

    .line 1848
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchResultStickers:Ljava/util/ArrayList;

    goto :goto_3

    .line 1850
    :cond_6
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 1852
    :goto_3
    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 1853
    iget p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    if-eq p2, v0, :cond_7

    const/16 v2, 0xe

    if-eq p2, v2, :cond_7

    const/16 v2, 0xb

    if-eq p2, v2, :cond_7

    const/4 v2, 0x2

    if-ne p2, v2, :cond_a

    .line 1854
    :cond_7
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_8

    .line 1855
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    .line 1857
    :cond_8
    invoke-virtual {p4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    if-eqz p1, :cond_9

    .line 1859
    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchResult:Ljava/util/ArrayList;

    invoke-static {p1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromEmojicon(Lorg/telegram/tgnet/TLRPC$TL_availableReaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1862
    :cond_9
    :goto_4
    invoke-virtual {p5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    .line 1863
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchResultStickers:Ljava/util/ArrayList;

    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1866
    :cond_a
    invoke-virtual {p6}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 1867
    iget-object p3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchResult:Ljava/util/ArrayList;

    invoke-static {p2}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromCustomEmoji(Ljava/lang/Long;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1869
    :cond_b
    invoke-virtual {p7}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 1870
    iget-object p3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchResult:Ljava/util/ArrayList;

    invoke-static {p2}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromEmojicon(Ljava/lang/String;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1872
    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchSets:Ljava/util/ArrayList;

    invoke-virtual {p1, p8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1873
    invoke-virtual {p9}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_7
    if-ge v1, p1, :cond_d

    invoke-virtual {p9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    add-int/lit8 v1, v1, 0x1

    check-cast p2, Ljava/util/ArrayList;

    .line 1874
    iget-object p3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->stickersSearchResult:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_7

    .line 1876
    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchAdapter:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;

    xor-int/lit8 p2, p10, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->updateRows(Z)V

    return-void
.end method

.method private synthetic lambda$search$13(Ljava/lang/String;ZLjava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/LinkedHashSet;Ljava/util/LinkedHashSet;Ljava/util/ArrayList;Ljava/util/ArrayList;ZLjava/lang/Runnable;)V
    .locals 12

    .line 1818
    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda37;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda37;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Ljava/lang/String;ZLjava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/LinkedHashSet;Ljava/util/LinkedHashSet;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$search$15(Ljava/lang/String;Ljava/util/LinkedHashSet;Ljava/lang/Runnable;)V
    .locals 11

    .line 1881
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    sget-object v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lastSearchKeyboardLanguage:[Ljava/lang/String;

    new-instance v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda33;

    invoke-direct {v5, p2, p3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda33;-><init>(Ljava/util/LinkedHashSet;Ljava/lang/Runnable;)V

    const/4 p2, 0x0

    .line 1898
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p1

    .line 1881
    invoke-virtual/range {v1 .. v10}, Lorg/telegram/messenger/MediaDataController;->getEmojiSuggestions([Ljava/lang/String;Ljava/lang/String;ZLorg/telegram/messenger/MediaDataController$KeywordResultCallback;Ljava/util/concurrent/CountDownLatch;ZZZLjava/lang/Integer;)V

    return-void
.end method

.method private synthetic lambda$search$16(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 7

    .line 1906
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getAvailableEffects()Lorg/telegram/tgnet/TLRPC$messages_AvailableEffects;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 1909
    :goto_0
    :try_start_0
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$messages_AvailableEffects;->effects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1910
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$messages_AvailableEffects;->effects:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_availableEffect;

    .line 1911
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_availableEffect;->emoticon:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1912
    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$TL_availableEffect;->effect_animation_id:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    move-object v3, p2

    goto :goto_1

    :cond_0
    move-object v3, p3

    .line 1913
    :goto_1
    invoke-static {v2}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTL(Lorg/telegram/tgnet/TLRPC$TL_availableEffect;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1919
    :catch_0
    :cond_2
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$search$17(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 10

    .line 1926
    iget p5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {p5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p5

    invoke-virtual {p5}, Lorg/telegram/messenger/MessagesController;->getAvailableEffects()Lorg/telegram/tgnet/TLRPC$messages_AvailableEffects;

    move-result-object p5

    .line 1927
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    if-eqz p5, :cond_5

    const/4 v1, 0x0

    move v2, v1

    .line 1930
    :goto_0
    :try_start_0
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 1931
    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MediaDataController$KeywordResult;

    iget-object v3, v3, Lorg/telegram/messenger/MediaDataController$KeywordResult;->emoji:Ljava/lang/String;

    const-string v4, "animated_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_3

    .line 1934
    :cond_0
    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MediaDataController$KeywordResult;

    iget-object v3, v3, Lorg/telegram/messenger/MediaDataController$KeywordResult;->emoji:Ljava/lang/String;

    invoke-static {v3}, Lorg/telegram/messenger/Emoji;->fixEmoji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move v4, v1

    .line 1935
    :goto_1
    iget-object v5, p5, Lorg/telegram/tgnet/TLRPC$messages_AvailableEffects;->effects:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 1936
    iget-object v5, p5, Lorg/telegram/tgnet/TLRPC$messages_AvailableEffects;->effects:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_availableEffect;

    .line 1937
    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$TL_availableEffect;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$TL_availableEffect;->emoticon:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$TL_availableEffect;->emoticon:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1938
    :cond_1
    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$TL_availableEffect;->effect_animation_id:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    move-object v6, p1

    goto :goto_2

    :cond_2
    move-object v6, p2

    .line 1939
    :goto_2
    invoke-static {v5}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTL(Lorg/telegram/tgnet/TLRPC$TL_availableEffect;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1940
    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$TL_availableEffect;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1947
    :catch_0
    :cond_5
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$search$18(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 11

    .line 1923
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    sget-object v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lastSearchKeyboardLanguage:[Ljava/lang/String;

    new-instance v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda30;

    invoke-direct {v5, p0, p2, p3, p4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    const/4 p2, 0x0

    .line 1949
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p1

    .line 1923
    invoke-virtual/range {v1 .. v10}, Lorg/telegram/messenger/MediaDataController;->getEmojiSuggestions([Ljava/lang/String;Ljava/lang/String;ZLorg/telegram/messenger/MediaDataController$KeywordResultCallback;Ljava/util/concurrent/CountDownLatch;ZZZLjava/lang/Integer;)V

    return-void
.end method

.method private synthetic lambda$search$22(Ljava/lang/String;Ljava/util/LinkedHashSet;Ljava/lang/Runnable;)V
    .locals 2

    .line 1968
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda31;

    invoke-direct {v1, p2, p3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda31;-><init>(Ljava/util/LinkedHashSet;Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/MediaDataController;->getAnimatedEmojiByKeywords(Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method private synthetic lambda$search$23(Ljava/util/LinkedHashSet;Ljava/lang/Runnable;Ljava/util/ArrayList;)V
    .locals 4

    .line 1982
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getDocumentFetcher(I)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->putDocuments(Ljava/util/ArrayList;)V

    .line 1983
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    .line 1984
    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1986
    :cond_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$search$24([Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashSet;Ljava/lang/Runnable;)V
    .locals 2

    .line 1976
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getConnectionState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1977
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 1980
    array-length v0, p1

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    aget-object p1, p1, v0

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, ""

    .line 1981
    :goto_1
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda35;

    invoke-direct {v1, p0, p3, p4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda35;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Ljava/util/LinkedHashSet;Ljava/lang/Runnable;)V

    const/4 p3, 0x1

    invoke-virtual {v0, p3, p1, p2, v1}, Lorg/telegram/messenger/MediaDataController;->searchStickers(ZLjava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/messenger/MediaDataController$SearchStickersKey;

    return-void
.end method

.method private synthetic lambda$search$25(Ljava/util/LinkedHashSet;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/lang/Runnable;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 2

    const/4 p6, 0x0

    .line 2035
    :goto_0
    :try_start_0
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p6, v0, :cond_3

    .line 2036
    invoke-virtual {p5, p6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MediaDataController$KeywordResult;

    iget-object v0, v0, Lorg/telegram/messenger/MediaDataController$KeywordResult;->emoji:Ljava/lang/String;

    const-string v1, "animated_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2037
    invoke-virtual {p5, p6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MediaDataController$KeywordResult;

    iget-object v0, v0, Lorg/telegram/messenger/MediaDataController$KeywordResult;->emoji:Ljava/lang/String;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2039
    :cond_0
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 2040
    :cond_1
    invoke-virtual {p5, p6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MediaDataController$KeywordResult;

    iget-object v0, v0, Lorg/telegram/messenger/MediaDataController$KeywordResult;->emoji:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    if-eqz v0, :cond_2

    .line 2042
    invoke-static {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromEmojicon(Lorg/telegram/tgnet/TLRPC$TL_availableReaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    add-int/lit8 p6, p6, 0x1

    goto :goto_0

    .line 2049
    :catch_0
    :cond_3
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$search$26(ZLjava/util/LinkedHashSet;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 1991
    iget p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/MediaDataController;->getStickerSets(I)Ljava/util/ArrayList;

    move-result-object p1

    move v1, v0

    .line 1994
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    if-ge v1, v3, :cond_4

    .line 1995
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    goto :goto_2

    .line 1998
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    move v5, v0

    .line 2002
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 2003
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v6, v4}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2004
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v7, v7, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    if-eqz v6, :cond_2

    .line 2005
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2006
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2011
    :cond_4
    iget p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaDataController;->getFeaturedEmojiSets()Ljava/util/ArrayList;

    move-result-object p1

    move v1, v0

    .line 2012
    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_8

    .line 2013
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;

    if-eqz v3, :cond_7

    .line 2014
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;->keywords:Ljava/util/ArrayList;

    if-eqz v3, :cond_7

    .line 2015
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;->documents:Ljava/util/ArrayList;

    if-nez v3, :cond_5

    goto :goto_5

    :cond_5
    move v5, v0

    .line 2019
    :goto_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_7

    .line 2020
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v6, v4}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2021
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v7, v7, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    if-eqz v6, :cond_6

    .line 2022
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual {p3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2023
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_7
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2029
    :cond_8
    invoke-interface/range {p6 .. p6}, Ljava/lang/Runnable;->run()V

    return-void

    .line 2031
    :cond_9
    iget p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    sget-object v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lastSearchKeyboardLanguage:[Ljava/lang/String;

    new-instance v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda36;

    move-object v4, p0

    move-object v5, p2

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda36;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Ljava/util/LinkedHashSet;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    iget v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_a

    const/4 v0, 0x1

    :cond_a
    move v7, v0

    const/16 v0, 0x1e

    .line 2051
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object v4, v3

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v0, p1

    move-object v2, p3

    .line 2031
    invoke-virtual/range {v0 .. v9}, Lorg/telegram/messenger/MediaDataController;->getEmojiSuggestions([Ljava/lang/String;Ljava/lang/String;ZLorg/telegram/messenger/MediaDataController$KeywordResultCallback;Ljava/util/concurrent/CountDownLatch;ZZZLjava/lang/Integer;)V

    return-void
.end method

.method private synthetic lambda$search$28(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/lang/Runnable;)V
    .locals 12

    .line 2056
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 2057
    invoke-interface/range {p4 .. p4}, Ljava/lang/Runnable;->run()V

    return-void

    .line 2060
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2061
    new-instance v2, Landroid/util/LongSparseArray;

    invoke-direct {v2, v1}, Landroid/util/LongSparseArray;-><init>(I)V

    .line 2062
    iget v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MediaDataController;->getAllStickers()Ljava/util/HashMap;

    move-result-object v3

    .line 2063
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xe

    const/4 v6, 0x1

    if-gt v4, v5, :cond_8

    .line 2065
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move-object v7, p1

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_5

    add-int/lit8 v8, v4, -0x1

    const/4 v9, 0x2

    if-ge v5, v8, :cond_3

    .line 2067
    invoke-interface {v7, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    const v10, 0xd83c

    if-ne v8, v10, :cond_1

    add-int/lit8 v8, v5, 0x1

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    const v11, 0xdffb

    if-lt v10, v11, :cond_1

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    const v10, 0xdfff

    if-le v8, v10, :cond_2

    :cond_1
    invoke-interface {v7, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    const/16 v10, 0x200d

    if-ne v8, v10, :cond_3

    add-int/lit8 v8, v5, 0x1

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    const/16 v11, 0x2640

    if-eq v10, v11, :cond_2

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    const/16 v10, 0x2642

    if-ne v8, v10, :cond_3

    .line 2068
    :cond_2
    invoke-interface {v7, v1, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    add-int/lit8 v10, v5, 0x2

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v11

    invoke-interface {v7, v10, v11}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    new-array v9, v9, [Ljava/lang/CharSequence;

    aput-object v8, v9, v1

    aput-object v7, v9, v6

    invoke-static {v9}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    add-int/lit8 v4, v4, -0x2

    :goto_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 2071
    :cond_3
    invoke-interface {v7, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    const v10, 0xfe0f

    if-ne v8, v10, :cond_4

    .line 2072
    invoke-interface {v7, v1, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    add-int/lit8 v10, v5, 0x1

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v11

    invoke-interface {v7, v10, v11}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    new-array v9, v9, [Ljava/lang/CharSequence;

    aput-object v8, v9, v1

    aput-object v7, v9, v6

    invoke-static {v9}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_4
    :goto_2
    add-int/2addr v5, v6

    goto/16 :goto_0

    :cond_5
    if-eqz v3, :cond_6

    .line 2077
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_8

    .line 2078
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    .line 2079
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2080
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_4
    if-ge v1, v5, :cond_7

    .line 2081
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$Document;

    .line 2082
    iget-wide v8, v7, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v2, v8, v9, v7}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2084
    :cond_7
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    if-eqz v3, :cond_9

    .line 2087
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v6, :cond_9

    .line 2088
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v4

    sget-object v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lastSearchKeyboardLanguage:[Ljava/lang/String;

    new-instance v8, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda34;

    move-object/from16 v1, p4

    invoke-direct {v8, v3, p3, p2, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda34;-><init>(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v6, p1

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/messenger/MediaDataController;->getEmojiSuggestions([Ljava/lang/String;Ljava/lang/String;ZLorg/telegram/messenger/MediaDataController$KeywordResultCallback;Z)V

    :cond_9
    return-void
.end method

.method private synthetic lambda$search$29(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 9

    .line 2105
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaDataController;->getStickerSets(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 2106
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 2107
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->translitSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    move v4, v3

    .line 2109
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 2110
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v5, :cond_2

    .line 2111
    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v6, :cond_2

    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    if-eqz v7, :cond_2

    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    if-eqz v7, :cond_2

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 2112
    :cond_0
    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->translitSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2113
    invoke-virtual {v6, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2114
    :cond_1
    new-instance v7, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SetTitleDocument;

    invoke-direct {v7, v6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SetTitleDocument;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2115
    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2116
    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2120
    :cond_3
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getFeaturedEmojiSets()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2122
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_b

    .line 2123
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    if-eqz v4, :cond_a

    .line 2124
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v5, :cond_a

    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    if-eqz v6, :cond_a

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_4

    .line 2125
    :cond_4
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->translitSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2126
    invoke-virtual {v5, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 2128
    :cond_5
    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_stickerSetNoCovered;

    if-eqz v5, :cond_7

    .line 2129
    iget v5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v5

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    invoke-static {v6}, Lorg/telegram/messenger/MediaDataController;->getInputStickerSet(Lorg/telegram/tgnet/TLRPC$StickerSet;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v6

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$StickerSet;->hash:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Lorg/telegram/messenger/MediaDataController;->getStickerSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Ljava/lang/Integer;Z)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 2131
    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    goto :goto_3

    .line 2133
    :cond_7
    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;

    if-eqz v5, :cond_8

    .line 2134
    move-object v5, v4

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;->documents:Ljava/util/ArrayList;

    goto :goto_3

    .line 2136
    :cond_8
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->covers:Ljava/util/ArrayList;

    :goto_3
    if-eqz v5, :cond_a

    .line 2138
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_9

    goto :goto_4

    .line 2139
    :cond_9
    new-instance v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SetTitleDocument;

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    invoke-direct {v6, v7}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SetTitleDocument;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2140
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2141
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 2145
    :cond_b
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$search$30(Ljava/lang/String;ZZ[Ljava/lang/String;)V
    .locals 17

    move-object/from16 v1, p0

    .line 1809
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1810
    new-instance v8, Ljava/util/LinkedHashSet;

    invoke-direct {v8}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1811
    iget v0, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getReactionsMap()Ljava/util/HashMap;

    move-result-object v5

    .line 1812
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1813
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1814
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/Emoji;->fullyConsistsOfEmojis(Ljava/lang/CharSequence;)Z

    move-result v12

    .line 1815
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1816
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 1817
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1818
    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda20;

    move-object/from16 v2, p1

    move/from16 v11, p3

    move-object v7, v3

    move/from16 v3, p2

    invoke-direct/range {v0 .. v11}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Ljava/lang/String;ZLjava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/LinkedHashSet;Ljava/util/LinkedHashSet;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    move-object v3, v7

    move-object v7, v0

    .line 1879
    iget v0, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const/16 v11, 0xd

    const/4 v15, 0x0

    const/16 p2, 0x1

    const/4 v14, 0x2

    if-ne v0, v11, :cond_0

    .line 1880
    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda21;

    invoke-direct {v0, v1, v2, v8}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Ljava/lang/String;Ljava/util/LinkedHashSet;)V

    .line 1901
    new-array v2, v14, [Lorg/telegram/messenger/Utilities$Callback;

    aput-object v0, v2, v15

    aput-object v7, v2, p2

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->doCallbacks([Lorg/telegram/messenger/Utilities$Callback;)V

    return-void

    :cond_0
    const/16 v8, 0xe

    if-ne v0, v8, :cond_2

    if-eqz v12, :cond_1

    .line 1905
    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda22;

    invoke-direct {v0, v1, v2, v6, v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1922
    :cond_1
    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda23;

    invoke-direct {v0, v1, v2, v6, v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1953
    :goto_0
    new-array v2, v14, [Lorg/telegram/messenger/Utilities$Callback;

    aput-object v0, v2, v15

    aput-object v7, v2, p2

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->doCallbacks([Lorg/telegram/messenger/Utilities$Callback;)V

    return-void

    .line 1955
    :cond_2
    new-instance v8, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda24;

    invoke-direct {v8, v12, v2, v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda24;-><init>(ZLjava/lang/String;Ljava/util/LinkedHashSet;)V

    .line 1967
    new-instance v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda25;

    invoke-direct {v11, v1, v2, v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Ljava/lang/String;Ljava/util/LinkedHashSet;)V

    .line 1975
    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda26;

    move-object/from16 v6, p4

    invoke-direct {v0, v1, v6, v2, v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;[Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashSet;)V

    move-object v6, v0

    .line 1989
    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda27;

    move-object/from16 v16, v4

    move-object v4, v2

    move v2, v12

    move-object v12, v6

    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;ZLjava/util/LinkedHashSet;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    move-object v2, v4

    .line 2055
    new-instance v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda28;

    invoke-direct {v3, v1, v2, v10, v13}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 2104
    new-instance v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda29;

    invoke-direct {v4, v1, v2, v9}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Ljava/lang/String;Ljava/util/ArrayList;)V

    const/4 v2, 0x7

    .line 2148
    new-array v2, v2, [Lorg/telegram/messenger/Utilities$Callback;

    aput-object v8, v2, v15

    aput-object v11, v2, p2

    aput-object v12, v2, v14

    const/4 v5, 0x3

    aput-object v0, v2, v5

    const/4 v0, 0x4

    aput-object v3, v2, v0

    const/4 v0, 0x5

    aput-object v4, v2, v0

    const/4 v0, 0x6

    aput-object v7, v2, v0

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->doCallbacks([Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method private synthetic lambda$switchGrids$8(ZLandroid/animation/ValueAnimator;)V
    .locals 3

    .line 1568
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p1, :cond_0

    sub-float p2, v0, p2

    .line 1572
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    sub-float/2addr v0, p2

    invoke-virtual {p1, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->setAlpha(F)V

    .line 1573
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    .line 1574
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->setAlpha(F)V

    .line 1575
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    .line 1576
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchEmptyView:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    mul-float/2addr v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$switchGrids$9(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1601
    invoke-virtual {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->invalidateParent()V

    return-void
.end method

.method private synthetic lambda$switchSearchEmptyView$10(ZLandroid/animation/ValueAnimator;)V
    .locals 1

    .line 1705
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    if-nez p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float p2, p1, p2

    .line 1709
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchEmptyView:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    mul-float/2addr v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private onRecentLongClick()V
    .locals 3

    .line 1245
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lorg/telegram/messenger/R$string;->ClearRecentReactionsAlertTitle:I

    .line 1246
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->ClearRecentReactionsAlertMessage:I

    .line 1247
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->ClearButton:I

    .line 1248
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    .line 1253
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    .line 1254
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    .line 1255
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    const/4 v1, -0x1

    .line 1256
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1258
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method private onStickerClick(Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 6

    .line 1209
    iget v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    .line 1210
    iget-wide v4, p2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v4, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->starGift:Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->onEmojiSelected(Landroid/view/View;Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Integer;)V

    return-void

    .line 1212
    :cond_0
    iget-object v4, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->starGift:Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->onEmojiSelected(Landroid/view/View;Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Integer;)V

    return-void
.end method

.method public static preload(I)V
    .locals 4

    .line 3659
    sget-object v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->preloaded:[Z

    aget-boolean v0, v0, p0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3662
    :cond_0
    sget-object v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->preloaded:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p0

    .line 3663
    invoke-static {p0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MediaDataController;->checkStickers(I)V

    .line 3664
    invoke-static {p0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lorg/telegram/messenger/MediaDataController;->fetchEmojiStatuses(IZ)V

    .line 3665
    invoke-static {p0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->checkReactions()V

    .line 3666
    invoke-static {p0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmojiDefaultStatuses;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmojiDefaultStatuses;-><init>()V

    invoke-virtual {v0, v3, v2}, Lorg/telegram/messenger/MediaDataController;->getStickerSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Z)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 3667
    invoke-static {p0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getDefaultEmojiStatuses()Ljava/util/ArrayList;

    .line 3668
    invoke-static {p0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->checkDefaultTopicIcons()V

    .line 3669
    invoke-static {p0, v1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->preload(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method private scrollToPosition(II)V
    .locals 4

    .line 1514
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 1515
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    if-nez v0, :cond_0

    sub-int v0, p1, v1

    .line 1516
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42900000    # 72.0f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->animationsEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1517
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v1, p1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->setScrollDirection(I)V

    .line 1518
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-virtual {v0, p1, p2, v3, v2}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->scrollToPosition(IIZZ)V

    return-void

    .line 1520
    :cond_3
    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$21;

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$21;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;I)V

    .line 1530
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 1531
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;->setOffset(I)V

    .line 1532
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method

.method private setBigReactionAnimatedEmoji(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V
    .locals 1

    .line 1228
    iget-boolean v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->isAttached:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 1231
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bigReactionAnimatedEmoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-ne v0, p1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 1235
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Landroid/view/View;)V

    .line 1237
    :cond_2
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bigReactionAnimatedEmoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz p1, :cond_3

    .line 1239
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->premiumStarColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1240
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bigReactionAnimatedEmoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Landroid/view/View;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private updateRows(ZZ)V
    .locals 1

    const/4 v0, 0x1

    .line 3675
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateRows(ZZZ)V

    return-void
.end method

.method private updateRows(ZZZ)V
    .locals 28

    move-object/from16 v0, p0

    const-wide/16 v1, 0x2

    .line 3778
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 3679
    iget-boolean v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animationsEnabled:Z

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move/from16 v2, p2

    .line 3682
    :goto_0
    iget v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v4

    if-nez v4, :cond_1

    goto/16 :goto_49

    :cond_1
    const/4 v5, 0x5

    if-nez p1, :cond_2

    .line 3687
    iget-object v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->frozenEmojiPacks:Ljava/util/ArrayList;

    if-nez v6, :cond_4

    .line 3688
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    iget-boolean v7, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->showStickers:Z

    if-eqz v7, :cond_3

    move v7, v3

    goto :goto_1

    :cond_3
    move v7, v5

    :goto_1
    invoke-virtual {v4, v7}, Lorg/telegram/messenger/MediaDataController;->getStickerSets(I)Ljava/util/ArrayList;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->frozenEmojiPacks:Ljava/util/ArrayList;

    .line 3690
    :cond_4
    iget-object v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->frozenEmojiPacks:Ljava/util/ArrayList;

    .line 3691
    sget v7, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v7

    const/4 v8, 0x4

    const/4 v9, 0x0

    if-nez v7, :cond_6

    iget v7, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    if-ne v7, v8, :cond_5

    goto :goto_2

    :cond_5
    move-object v7, v9

    goto :goto_3

    :cond_6
    :goto_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {v4}, Lorg/telegram/messenger/MediaDataController;->getFeaturedEmojiSets()Ljava/util/ArrayList;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3693
    :goto_3
    new-instance v10, Ljava/util/ArrayList;

    iget-object v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3694
    iput v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    const/4 v11, -0x1

    .line 3695
    iput v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentReactionsSectionRow:I

    .line 3696
    iput v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentReactionsStartRow:I

    .line 3697
    iput v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->giftsStartRow:I

    .line 3698
    iput v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->giftsEndRow:I

    .line 3699
    iput v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentReactionsEndRow:I

    .line 3700
    iput v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->popularSectionRow:I

    .line 3701
    iput v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->giftsSectionRow:I

    .line 3702
    iput v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->longtapHintRow:I

    .line 3703
    iput v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->defaultTopicIconRow:I

    .line 3704
    iput v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topicEmojiHeaderRow:I

    .line 3705
    iput v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->stickersSectionRow:I

    .line 3706
    iput v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->stickersStartRow:I

    .line 3707
    iput v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->stickersEndRow:I

    .line 3708
    iget-object v12, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 3709
    iget-object v12, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->defaultStatuses:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 3710
    iget-object v12, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topReactions:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 3711
    iget-object v12, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentReactions:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 3712
    iget-object v12, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->packs:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 3713
    iget-object v12, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->positionToSection:Landroid/util/SparseIntArray;

    invoke-virtual {v12}, Landroid/util/SparseIntArray;->clear()V

    .line 3714
    iget-object v12, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->sectionToPosition:Landroid/util/SparseIntArray;

    invoke-virtual {v12}, Landroid/util/SparseIntArray;->clear()V

    .line 3715
    iget-object v12, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->positionToExpand:Landroid/util/SparseIntArray;

    invoke-virtual {v12}, Landroid/util/SparseIntArray;->clear()V

    .line 3716
    iget-object v12, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 3717
    iget-object v12, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->positionToButton:Landroid/util/SparseIntArray;

    invoke-virtual {v12}, Landroid/util/SparseIntArray;->clear()V

    .line 3718
    iget-object v12, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 3719
    iget-object v12, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentStickers:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 3720
    iget-object v12, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->standardEmojis:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 3721
    iget-object v12, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 3723
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    const/4 v13, 0x7

    const/16 v14, 0x8

    if-eqz v12, :cond_7

    iget v12, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    if-ne v12, v8, :cond_8

    :cond_7
    iget v12, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    if-eq v12, v5, :cond_8

    if-eq v12, v13, :cond_8

    if-eq v12, v14, :cond_8

    .line 3724
    iget v12, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    add-int/lit8 v15, v12, 0x1

    iput v15, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    iput v12, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchRow:I

    .line 3725
    iget-object v12, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    const-wide/16 v15, 0x9

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 3727
    :cond_8
    iput v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchRow:I

    .line 3730
    :goto_4
    iget v12, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const-wide/32 v16, 0xa8d7

    const-wide/16 v18, 0xd

    const/4 v11, 0x1

    if-eq v12, v5, :cond_9

    if-ne v12, v13, :cond_a

    :cond_9
    move-object/from16 v22, v4

    goto/16 :goto_e

    :cond_a
    const-wide/32 v20, 0xf3d9

    if-ne v12, v8, :cond_f

    .line 3746
    iget-boolean v12, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->showStickers:Z

    if-eqz v12, :cond_c

    .line 3747
    iget-object v12, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentStickers:Ljava/util/ArrayList;

    iget v13, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v13}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v13

    invoke-virtual {v13, v3}, Lorg/telegram/messenger/MediaDataController;->getRecentStickersNoCopy(I)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move v12, v3

    .line 3748
    :goto_5
    iget-object v13, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentStickers:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v12, v13, :cond_b

    .line 3749
    iget-object v13, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    iget-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentStickers:Ljava/util/ArrayList;

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v14, v5, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    mul-long v14, v14, v18

    add-long v14, v14, v20

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3750
    iget v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    add-int/2addr v5, v11

    iput v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    add-int/lit8 v12, v12, 0x1

    const/4 v5, 0x5

    const/16 v14, 0x8

    goto :goto_5

    :cond_b
    move-object/from16 v22, v4

    goto/16 :goto_11

    .line 3753
    :cond_c
    iget-boolean v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->forUser:Z

    if-eqz v5, :cond_d

    iget v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/MediaDataController;->profileAvatarConstructorDefault:Lorg/telegram/tgnet/TLRPC$TL_emojiList;

    goto :goto_6

    :cond_d
    iget v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/MediaDataController;->groupAvatarConstructorDefault:Lorg/telegram/tgnet/TLRPC$TL_emojiList;

    :goto_6
    if-eqz v5, :cond_b

    .line 3754
    iget-object v12, v5, Lorg/telegram/tgnet/TLRPC$TL_emojiList;->document_id:Ljava/util/ArrayList;

    if-eqz v12, :cond_b

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_b

    .line 3756
    new-instance v12, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    invoke-direct {v12}, Lorg/telegram/ui/Components/EmojiView$EmojiPack;-><init>()V

    .line 3757
    iput-boolean v11, v12, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->installed:Z

    .line 3758
    iput-boolean v3, v12, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->featured:Z

    .line 3759
    iput-boolean v11, v12, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->expanded:Z

    .line 3760
    iput-boolean v11, v12, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->free:Z

    .line 3761
    new-instance v13, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;

    invoke-direct {v13}, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;-><init>()V

    iput-object v13, v12, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    .line 3762
    iget-object v13, v5, Lorg/telegram/tgnet/TLRPC$TL_emojiList;->document_id:Ljava/util/ArrayList;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    iput-object v13, v12, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->thumbDocumentId:Ljava/lang/Long;

    .line 3763
    iget-object v13, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->packs:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    iput v13, v12, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->index:I

    .line 3764
    iget-object v13, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->packs:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v12, v3

    .line 3766
    :goto_7
    iget-object v13, v5, Lorg/telegram/tgnet/TLRPC$TL_emojiList;->document_id:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v12, v13, :cond_e

    .line 3767
    iget-object v13, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    new-instance v14, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-object v15, v5, Lorg/telegram/tgnet/TLRPC$TL_emojiList;->document_id:Ljava/util/ArrayList;

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    move-object/from16 v22, v4

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {v14, v3, v4, v9}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(JLandroid/graphics/Paint$FontMetricsInt;)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v4, v22

    const/4 v3, 0x0

    goto :goto_7

    :cond_e
    move-object/from16 v22, v4

    const/4 v3, 0x0

    .line 3769
    :goto_8
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1a

    .line 3770
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    iget-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v12

    mul-long v12, v12, v18

    add-long v12, v12, v16

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3771
    iget v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    add-int/2addr v4, v11

    iput v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_f
    move-object/from16 v22, v4

    const/4 v3, 0x6

    if-ne v12, v3, :cond_12

    .line 3776
    iget-boolean v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->includeEmpty:Z

    if-eqz v3, :cond_10

    .line 3777
    iget v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    add-int/2addr v3, v11

    iput v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    .line 3778
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3780
    :cond_10
    iget v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MediaDataController;->getEnabledReactionsList()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    .line 3781
    :goto_9
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_11

    .line 3782
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    .line 3783
    iget-object v12, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentStickers:Ljava/util/ArrayList;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->activate_animation:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_11
    const/4 v3, 0x0

    .line 3785
    :goto_a
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentStickers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1a

    .line 3786
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    iget-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentStickers:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v12, v5, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    mul-long v12, v12, v18

    add-long v12, v12, v20

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3787
    iget v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    add-int/2addr v4, v11

    iput v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_12
    const/4 v3, 0x3

    if-ne v12, v3, :cond_1a

    .line 3790
    iget v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    iput v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topicEmojiHeaderRow:I

    .line 3791
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    const-wide/16 v4, 0xc

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3792
    iget v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    iput v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->defaultTopicIconRow:I

    .line 3793
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    const-wide/16 v4, 0x7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3795
    iget v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/UserConfig;->defaultTopicIcons:Ljava/lang/String;

    if-eqz v3, :cond_13

    .line 3798
    iget v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/MediaDataController;->getStickerSetByName(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v4

    if-nez v4, :cond_14

    .line 3800
    iget v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/MediaDataController;->getStickerSetByEmojiOrName(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v4

    goto :goto_b

    :cond_13
    move-object v4, v9

    :cond_14
    :goto_b
    if-nez v4, :cond_15

    .line 3805
    iput-boolean v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->defaultSetLoading:Z

    goto/16 :goto_11

    .line 3807
    :cond_15
    iget-boolean v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->includeEmpty:Z

    if-eqz v3, :cond_16

    .line 3808
    iget v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    add-int/2addr v3, v11

    iput v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    .line 3809
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3811
    :cond_16
    iget-object v3, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    if-eqz v3, :cond_17

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_17

    const/4 v3, 0x0

    .line 3812
    :goto_c
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_17

    .line 3813
    iget-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    new-instance v12, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-object v13, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-direct {v12, v13, v9}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(Lorg/telegram/tgnet/TLRPC$Document;Landroid/graphics/Paint$FontMetricsInt;)V

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_17
    const/4 v3, 0x0

    .line 3817
    :goto_d
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1a

    .line 3818
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    iget-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v12

    mul-long v12, v12, v18

    add-long v12, v12, v16

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3819
    iget v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    add-int/2addr v4, v11

    iput v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 3731
    :goto_e
    iget-boolean v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->includeEmpty:Z

    if-eqz v3, :cond_18

    .line 3732
    iget v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    add-int/2addr v3, v11

    iput v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    .line 3733
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3735
    :cond_18
    iget v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MediaDataController;->replyIconsDefault:Lorg/telegram/tgnet/TLRPC$TL_emojiList;

    if-eqz v3, :cond_1a

    .line 3736
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_emojiList;->document_id:Ljava/util/ArrayList;

    if-eqz v4, :cond_1a

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1a

    const/4 v4, 0x0

    .line 3737
    :goto_f
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_emojiList;->document_id:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_19

    .line 3738
    iget-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    new-instance v12, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-object v13, v3, Lorg/telegram/tgnet/TLRPC$TL_emojiList;->document_id:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-direct {v12, v13, v14, v9}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(JLandroid/graphics/Paint$FontMetricsInt;)V

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_19
    const/4 v3, 0x0

    .line 3740
    :goto_10
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1a

    .line 3741
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    iget-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v12

    mul-long v12, v12, v18

    add-long v12, v12, v16

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3742
    iget v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    add-int/2addr v4, v11

    iput v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 3825
    :cond_1a
    :goto_11
    iget-boolean v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->includeHint:Z

    const/16 v4, 0xb

    const/16 v5, 0xd

    if-eqz v3, :cond_1b

    iget-boolean v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->badgePicker:Z

    if-nez v3, :cond_1b

    iget v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    if-eq v3, v5, :cond_1b

    const/4 v12, 0x2

    if-eq v3, v12, :cond_1b

    if-eq v3, v4, :cond_1b

    const/4 v12, 0x3

    if-eq v3, v12, :cond_1b

    const/4 v12, 0x6

    if-eq v3, v12, :cond_1b

    const/16 v12, 0x8

    if-eq v3, v12, :cond_1b

    if-eq v3, v8, :cond_1b

    const/4 v12, 0x5

    if-eq v3, v12, :cond_1b

    const/4 v12, 0x7

    if-eq v3, v12, :cond_1b

    .line 3826
    iget v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    add-int/lit8 v12, v3, 0x1

    iput v12, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    iput v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->longtapHintRow:I

    .line 3827
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    const-wide/16 v12, 0x6

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3831
    :cond_1b
    iget v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const/16 v12, 0xa

    const/16 v13, 0x9

    if-eq v3, v13, :cond_1c

    if-ne v3, v12, :cond_1d

    .line 3832
    :cond_1c
    iget v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MediaDataController;->restrictedStatusEmojis:Lorg/telegram/tgnet/TLRPC$TL_emojiList;

    if-eqz v3, :cond_1d

    .line 3834
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 3835
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_emojiList;->document_id:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    goto :goto_12

    :cond_1d
    move-object v14, v9

    .line 3838
    :goto_12
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentReactionsToSet:Ljava/util/List;

    const/16 v15, 0xc

    const/16 v8, 0xe

    if-eqz v3, :cond_31

    .line 3839
    iget v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    iput v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topReactionsStartRow:I

    .line 3841
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentReactionsToSet:Ljava/util/List;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3842
    iget v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    if-ne v3, v5, :cond_1f

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v9, 0x8

    if-le v3, v9, :cond_1f

    .line 3843
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v9, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_1e
    move/from16 v23, v11

    goto :goto_14

    .line 3844
    :cond_1f
    iget v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    if-ne v3, v8, :cond_1e

    .line 3845
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move/from16 v23, v11

    const/4 v9, 0x0

    .line 3846
    :goto_13
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v9, v11, :cond_21

    .line 3847
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-boolean v11, v11, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->sticker:Z

    if-eqz v11, :cond_20

    .line 3848
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, -0x1

    :cond_20
    add-int/lit8 v9, v9, 0x1

    goto :goto_13

    :goto_14
    const/4 v3, 0x0

    .line 3853
    :cond_21
    iget v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const/16 v11, 0x8

    if-eq v9, v11, :cond_24

    if-eq v9, v4, :cond_24

    if-ne v9, v5, :cond_22

    goto :goto_16

    :cond_22
    const/4 v9, 0x0

    :goto_15
    const/16 v11, 0x10

    if-ge v9, v11, :cond_25

    .line 3857
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_23

    .line 3858
    iget-object v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topReactions:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v12, v16

    check-cast v12, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_23
    add-int/lit8 v9, v9, 0x1

    const/16 v12, 0xa

    goto :goto_15

    .line 3854
    :cond_24
    :goto_16
    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topReactions:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_25
    const/4 v9, 0x0

    .line 3862
    :goto_17
    iget-object v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topReactions:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v9, v11, :cond_26

    .line 3863
    iget-object v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    iget-object v12, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topReactions:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-virtual {v12}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->hashCode()I

    move-result v12

    move-object/from16 v24, v14

    int-to-long v13, v12

    mul-long v13, v13, v18

    const-wide/16 v16, -0x1600

    add-long v13, v13, v16

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v14, v24

    const/16 v13, 0x9

    goto :goto_17

    :cond_26
    move-object/from16 v24, v14

    .line 3865
    iget v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    iget-object v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topReactions:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/2addr v9, v11

    iput v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    .line 3866
    iput v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topReactionsEndRow:I

    .line 3868
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2e

    iget v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const/16 v12, 0x8

    if-eq v9, v12, :cond_2e

    if-eq v9, v4, :cond_2e

    if-eq v9, v5, :cond_2e

    const/4 v4, 0x0

    .line 3870
    :goto_18
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_28

    .line 3871
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-wide v11, v9, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    const-wide/16 v13, 0x0

    cmp-long v9, v11, v13

    if-eqz v9, :cond_27

    const/4 v4, 0x0

    goto :goto_19

    :cond_27
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_28
    move/from16 v4, v23

    .line 3876
    :goto_19
    iget v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    if-ne v9, v8, :cond_29

    goto :goto_1a

    :cond_29
    if-eqz v4, :cond_2a

    .line 3879
    iget v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v9

    if-eqz v9, :cond_2b

    .line 3880
    iget v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    add-int/lit8 v11, v9, 0x1

    iput v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    iput v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->popularSectionRow:I

    .line 3881
    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    const-wide/16 v11, 0x5

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 3884
    :cond_2a
    iget v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    add-int/lit8 v11, v9, 0x1

    iput v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    iput v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentReactionsSectionRow:I

    .line 3885
    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    const-wide/16 v11, 0x4

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3888
    :cond_2b
    :goto_1a
    iget v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    iput v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentReactionsStartRow:I

    .line 3889
    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentReactions:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x0

    .line 3890
    :goto_1b
    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentReactions:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v1, v9, :cond_2d

    .line 3891
    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    if-eqz v4, :cond_2c

    const/16 v11, 0x108b

    goto :goto_1c

    :cond_2c
    const/16 v11, -0xc46

    :goto_1c
    int-to-long v11, v11

    iget-object v13, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentReactions:Ljava/util/ArrayList;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-wide v13, v13, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->hash:J

    mul-long v13, v13, v18

    add-long/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 3893
    :cond_2d
    iget v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentReactions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v1, v4

    iput v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    .line 3894
    iput v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentReactionsEndRow:I

    :cond_2e
    if-eqz v3, :cond_30

    .line 3897
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_30

    .line 3898
    iget v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    add-int/lit8 v4, v1, 0x1

    iput v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    iput v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->stickersSectionRow:I

    .line 3899
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    const-wide/16 v11, 0x8

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3901
    iget v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    iput v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->stickersStartRow:I

    .line 3902
    iput-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->stickers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 3903
    :goto_1d
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2f

    .line 3904
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-wide v11, v9, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->effectId:J

    const-wide/16 v13, 0x13

    mul-long/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 3906
    :cond_2f
    iget v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v1, v3

    iput v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    .line 3907
    iput v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->stickersEndRow:I

    :cond_30
    :goto_1e
    move-object v14, v6

    goto/16 :goto_2f

    :cond_31
    move/from16 v23, v11

    move-object/from16 v24, v14

    .line 3909
    iget v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    if-eqz v3, :cond_32

    if-eq v3, v15, :cond_32

    const/16 v4, 0x9

    if-eq v3, v4, :cond_32

    const/16 v4, 0xa

    if-ne v3, v4, :cond_30

    .line 3910
    :cond_32
    iget v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MediaDataController;->getRecentEmojiStatuses()Ljava/util/ArrayList;

    move-result-object v3

    .line 3911
    iget v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v4

    iget v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    if-eqz v9, :cond_34

    if-ne v9, v15, :cond_33

    goto :goto_20

    :cond_33
    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmojiChannelDefaultStatuses;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmojiChannelDefaultStatuses;-><init>()V

    :goto_1f
    move/from16 v11, v23

    goto :goto_21

    :cond_34
    :goto_20
    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmojiDefaultStatuses;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmojiDefaultStatuses;-><init>()V

    goto :goto_1f

    :goto_21
    invoke-virtual {v4, v9, v11}, Lorg/telegram/messenger/MediaDataController;->getStickerSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Z)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v4

    if-nez v4, :cond_35

    .line 3913
    iput-boolean v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->defaultSetLoading:Z

    goto :goto_1e

    .line 3915
    :cond_35
    iget-boolean v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->includeEmpty:Z

    if-eqz v9, :cond_36

    .line 3916
    iget v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    add-int/2addr v9, v11

    iput v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    .line 3917
    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3920
    :cond_36
    iget v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    if-eqz v1, :cond_38

    if-ne v1, v15, :cond_37

    goto :goto_22

    .line 3923
    :cond_37
    iget v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaDataController;->getDefaultChannelEmojiStatuses()Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_23

    .line 3921
    :cond_38
    :goto_22
    iget v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaDataController;->getDefaultEmojiStatuses()Ljava/util/ArrayList;

    move-result-object v1

    .line 3926
    :goto_23
    iget-object v9, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    const/16 v11, 0x68

    if-eqz v9, :cond_3a

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3a

    const/4 v9, 0x0

    .line 3927
    :goto_24
    iget-object v12, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x7

    invoke-static {v13, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    if-ge v9, v12, :cond_3a

    .line 3928
    iget-object v12, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    new-instance v13, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-object v14, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v8, 0x0

    invoke-direct {v13, v14, v8}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(Lorg/telegram/tgnet/TLRPC$Document;Landroid/graphics/Paint$FontMetricsInt;)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3929
    iget-object v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    iget-boolean v12, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->includeEmpty:Z

    add-int/2addr v8, v12

    if-lt v8, v11, :cond_39

    goto :goto_25

    :cond_39
    add-int/lit8 v9, v9, 0x1

    const/16 v8, 0xe

    goto :goto_24

    .line 3934
    :cond_3a
    :goto_25
    iget v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    if-eqz v4, :cond_3c

    if-ne v4, v15, :cond_3b

    goto :goto_26

    :cond_3b
    move-object v14, v6

    goto :goto_29

    :cond_3c
    :goto_26
    if-eqz v3, :cond_3b

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3b

    .line 3935
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v8, 0x0

    :goto_27
    if-ge v8, v4, :cond_3b

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    .line 3936
    invoke-static {v9}, Lorg/telegram/messenger/UserObject;->getEmojiStatusDocumentId(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)Ljava/lang/Long;

    move-result-object v9

    if-nez v9, :cond_3d

    goto :goto_27

    :cond_3d
    const/4 v12, 0x0

    .line 3941
    :goto_28
    iget-object v13, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v12, v13, :cond_3f

    .line 3942
    iget-object v13, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {v13}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v13

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    cmp-long v13, v13, v25

    if-nez v13, :cond_3e

    goto :goto_27

    :cond_3e
    add-int/lit8 v12, v12, 0x1

    goto :goto_28

    .line 3949
    :cond_3f
    iget-object v12, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    new-instance v13, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    move-object v14, v6

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/4 v9, 0x0

    invoke-direct {v13, v5, v6, v9}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(JLandroid/graphics/Paint$FontMetricsInt;)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3950
    iget-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-boolean v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->includeEmpty:Z

    add-int/2addr v5, v6

    if-lt v5, v11, :cond_40

    goto :goto_29

    :cond_40
    move-object v6, v14

    const/16 v5, 0xd

    goto :goto_27

    :goto_29
    if-eqz v1, :cond_45

    .line 3955
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_45

    .line 3956
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :cond_41
    :goto_2a
    if-ge v4, v3, :cond_45

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    .line 3957
    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->getEmojiStatusDocumentId(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)Ljava/lang/Long;

    move-result-object v5

    if-nez v5, :cond_42

    goto :goto_2a

    :cond_42
    const/4 v6, 0x0

    .line 3962
    :goto_2b
    iget-object v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_44

    .line 3963
    iget-object v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v8

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v8, v8, v12

    if-nez v8, :cond_43

    goto :goto_2a

    :cond_43
    add-int/lit8 v6, v6, 0x1

    goto :goto_2b

    .line 3969
    :cond_44
    iget-object v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    new-instance v8, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const/4 v9, 0x0

    invoke-direct {v8, v12, v13, v9}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(JLandroid/graphics/Paint$FontMetricsInt;)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3970
    iget-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-boolean v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->includeEmpty:Z

    add-int/2addr v5, v6

    if-lt v5, v11, :cond_41

    .line 3978
    :cond_45
    iget-boolean v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->includeEmpty:Z

    rsub-int/lit8 v3, v1, 0x28

    .line 3979
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v3, :cond_48

    iget-boolean v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentExpanded:Z

    if-nez v3, :cond_48

    const/4 v3, 0x0

    :goto_2c
    rsub-int/lit8 v4, v1, 0x27

    if-ge v3, v4, :cond_46

    .line 3981
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    iget-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v5

    mul-long v5, v5, v18

    add-long v5, v5, v16

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3982
    iget v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    const/16 v23, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 3984
    :cond_46
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x28

    iget-boolean v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->includeEmpty:Z

    add-int/2addr v3, v4

    const/16 v23, 0x1

    add-int/lit8 v3, v3, 0x1

    int-to-long v3, v3

    mul-long v3, v3, v18

    const-wide/16 v5, -0x159b

    add-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3985
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentExpandButton:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;

    if-eqz v1, :cond_47

    .line 3986
    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;->textView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x28

    iget-boolean v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->includeEmpty:Z

    add-int/2addr v4, v5

    const/16 v23, 0x1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2d

    :cond_47
    const/16 v23, 0x1

    .line 3988
    :goto_2d
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->positionToExpand:Landroid/util/SparseIntArray;

    iget v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 3989
    iget v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    goto :goto_2f

    :cond_48
    const/4 v1, 0x0

    .line 3991
    :goto_2e
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_49

    .line 3992
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v4

    mul-long v4, v4, v18

    add-long v4, v4, v16

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3993
    iget v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    const/16 v23, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 3998
    :cond_49
    :goto_2f
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3999
    iget-boolean v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->badgePicker:Z

    if-nez v1, :cond_4f

    iget v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    if-eqz v1, :cond_4a

    if-eq v1, v15, :cond_4a

    const/16 v4, 0x9

    if-eq v1, v4, :cond_4a

    const/16 v4, 0xa

    if-ne v1, v4, :cond_4f

    .line 4000
    :cond_4a
    iget v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v1

    invoke-virtual {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->getDialogId()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lorg/telegram/ui/Stars/StarsController;->getProfileGiftsList(J)Lorg/telegram/ui/Stars/StarsController$GiftsList;

    move-result-object v1

    .line 4001
    invoke-virtual {v1}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->load()V

    .line 4002
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4003
    iget-object v1, v1, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :cond_4b
    :goto_30
    if-ge v5, v4, :cond_4c

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    .line 4004
    iget-object v6, v6, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    instance-of v8, v6, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-eqz v8, :cond_4b

    .line 4005
    check-cast v6, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_30

    .line 4008
    :cond_4c
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4e

    .line 4009
    iget v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    add-int/lit8 v4, v1, 0x1

    iput v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    iput v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->giftsSectionRow:I

    .line 4010
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    const-wide/16 v4, 0x16

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4011
    iget v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    iput v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->giftsStartRow:I

    .line 4012
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_31
    if-ge v4, v1, :cond_4d

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    .line 4013
    iget-object v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    const-wide/16 v8, 0x142

    iget-wide v11, v5, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J

    mul-long/2addr v11, v8

    const-wide/16 v8, 0x3416

    add-long/2addr v11, v8

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4014
    iget v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    const/4 v11, 0x1

    add-int/2addr v6, v11

    iput v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    .line 4015
    iget-object v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_31

    :cond_4d
    const/4 v11, 0x1

    .line 4017
    iget v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    iput v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->giftsEndRow:I

    .line 4018
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-virtual {v1, v11}, Lorg/telegram/ui/Components/EmojiTabsStrip;->showGifts(Z)V

    goto :goto_32

    .line 4020
    :cond_4e
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Lorg/telegram/ui/Components/EmojiTabsStrip;->showGifts(Z)V

    .line 4023
    :cond_4f
    :goto_32
    iget v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const/16 v3, 0xd

    if-ne v1, v3, :cond_51

    .line 4024
    sget-object v1, Lorg/telegram/messenger/EmojiData;->dataColored:[[Ljava/lang/String;

    array-length v3, v1

    const/4 v4, 0x0

    :goto_33
    if-ge v4, v3, :cond_51

    aget-object v5, v1, v4

    .line 4025
    array-length v6, v5

    const/4 v8, 0x0

    :goto_34
    if-ge v8, v6, :cond_50

    aget-object v9, v5, v8

    .line 4026
    iget-object v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->standardEmojis:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4027
    iget-object v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v9

    int-to-long v12, v9

    const-wide/16 v15, 0x142

    mul-long/2addr v12, v15

    const-wide/16 v15, 0x3416

    add-long/2addr v12, v15

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4028
    iget v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    const/16 v23, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    add-int/lit8 v8, v8, 0x1

    goto :goto_34

    :cond_50
    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    .line 4032
    :cond_51
    iget v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const-wide/16 v3, 0xc8c

    const/16 v12, 0x8

    if-eq v1, v12, :cond_5b

    const/16 v5, 0xd

    if-eq v1, v5, :cond_5b

    const/16 v5, 0xe

    if-eq v1, v5, :cond_5b

    const/4 v1, 0x0

    .line 4033
    :goto_35
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_5b

    .line 4034
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v5, :cond_52

    .line 4035
    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-nez v6, :cond_53

    :cond_52
    :goto_36
    move-object/from16 v9, v24

    goto/16 :goto_39

    .line 4038
    :cond_53
    iget v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const/4 v12, 0x5

    if-eq v6, v12, :cond_54

    const/4 v12, 0x7

    if-ne v6, v12, :cond_55

    :cond_54
    invoke-static {v5}, Lorg/telegram/messenger/MessageObject;->isTextColorSet(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)Z

    move-result v6

    if-nez v6, :cond_55

    goto :goto_36

    .line 4041
    :cond_55
    iget v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const/16 v8, 0xa

    if-eq v6, v8, :cond_56

    const/16 v8, 0x9

    if-ne v6, v8, :cond_57

    :cond_56
    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$StickerSet;->channel_emoji_status:Z

    if-nez v6, :cond_57

    goto :goto_36

    .line 4044
    :cond_57
    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v8, v6, Lorg/telegram/tgnet/TLRPC$StickerSet;->emojis:Z

    if-nez v8, :cond_58

    iget-boolean v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->showStickers:Z

    if-eqz v8, :cond_52

    :cond_58
    iget-object v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->installedEmojiSets:Ljava/util/ArrayList;

    iget-wide v11, v6, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_52

    .line 4045
    iget-object v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->positionToSection:Landroid/util/SparseIntArray;

    iget v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->packs:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v6, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 4046
    iget-object v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->sectionToPosition:Landroid/util/SparseIntArray;

    iget-object v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->packs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    iget v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    invoke-virtual {v6, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 4047
    iget v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    const/16 v23, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    .line 4048
    iget-object v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    iget-object v8, v5, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    mul-long v8, v8, v18

    const-wide/16 v11, 0x23fb

    add-long/2addr v8, v11

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4050
    new-instance v6, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    invoke-direct {v6}, Lorg/telegram/ui/Components/EmojiView$EmojiPack;-><init>()V

    const/4 v11, 0x1

    .line 4051
    iput-boolean v11, v6, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->installed:Z

    const/4 v12, 0x0

    .line 4052
    iput-boolean v12, v6, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->featured:Z

    .line 4053
    iput-boolean v11, v6, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->expanded:Z

    .line 4054
    iget v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_59

    .line 4055
    iput-boolean v12, v6, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->free:Z

    goto :goto_37

    .line 4057
    :cond_59
    invoke-static {v5}, Lorg/telegram/messenger/MessageObject;->isPremiumEmojiPack(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)Z

    move-result v8

    xor-int/2addr v8, v11

    iput-boolean v8, v6, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->free:Z

    .line 4059
    :goto_37
    iget-object v8, v5, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iput-object v8, v6, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    .line 4060
    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    move-object/from16 v9, v24

    invoke-direct {v0, v5, v9}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->filter(Ljava/util/ArrayList;Ljava/util/HashSet;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, v6, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    .line 4061
    iget-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->packs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iput v5, v6, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->index:I

    .line 4062
    iget-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->packs:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4063
    iget v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    iget-object v8, v6, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/2addr v5, v8

    iput v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    const/4 v5, 0x0

    .line 4064
    :goto_38
    iget-object v8, v6, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_5a

    .line 4065
    iget-object v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    iget-object v11, v6, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v11, v11, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    mul-long v11, v11, v18

    add-long/2addr v11, v3

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_38

    :cond_5a
    :goto_39
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v24, v9

    goto/16 :goto_35

    :cond_5b
    move-object/from16 v9, v24

    if-eqz v7, :cond_6e

    .line 4070
    iget-boolean v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->showStickers:Z

    if-nez v1, :cond_6e

    iget v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const/16 v12, 0x8

    if-eq v1, v12, :cond_6e

    const/16 v5, 0xd

    if-eq v1, v5, :cond_6e

    const/16 v5, 0xe

    if-eq v1, v5, :cond_6e

    const/4 v12, 0x0

    .line 4072
    :goto_3a
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v12, v1, :cond_6e

    .line 4073
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    .line 4074
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    const/4 v6, 0x0

    .line 4077
    :goto_3b
    iget-object v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->packs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_5d

    .line 4078
    iget-object v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->packs:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    iget-object v8, v8, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v13, v8, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    move-wide v15, v3

    iget-wide v3, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    cmp-long v3, v13, v3

    if-nez v3, :cond_5c

    move v8, v2

    move v2, v12

    move-object/from16 v6, v22

    :goto_3c
    const/4 v3, 0x6

    const/4 v13, 0x4

    const/16 v23, 0x1

    goto/16 :goto_46

    :cond_5c
    add-int/lit8 v6, v6, 0x1

    move-wide v3, v15

    goto :goto_3b

    :cond_5d
    move-wide v15, v3

    .line 4089
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_stickerSetNoCovered;

    if-eqz v3, :cond_5f

    .line 4090
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    invoke-static {v3}, Lorg/telegram/messenger/MediaDataController;->getInputStickerSet(Lorg/telegram/tgnet/TLRPC$StickerSet;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v3

    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$StickerSet;->hash:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v6, v22

    const/4 v11, 0x1

    invoke-virtual {v6, v3, v4, v11}, Lorg/telegram/messenger/MediaDataController;->getStickerSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Ljava/lang/Integer;Z)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v3

    if-eqz v3, :cond_5e

    .line 4092
    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    .line 4093
    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->isPremiumEmojiPack(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)Z

    move-result v3

    move-object v8, v1

    goto :goto_3d

    .line 4095
    :cond_5e
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInputStickerSet(Lorg/telegram/tgnet/TLRPC$StickerSet;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v8

    .line 4096
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v8

    move-object v8, v1

    move-object v1, v3

    const/4 v3, 0x1

    goto :goto_3e

    :cond_5f
    move-object/from16 v6, v22

    .line 4099
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;

    if-eqz v3, :cond_60

    .line 4100
    move-object v3, v1

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;

    iget-object v8, v3, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;->documents:Ljava/util/ArrayList;

    .line 4101
    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->isPremiumEmojiPack(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;)Z

    move-result v1

    move v3, v1

    :goto_3d
    const/4 v1, 0x0

    goto :goto_3e

    :cond_60
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x0

    :goto_3e
    if-nez v8, :cond_62

    :cond_61
    :goto_3f
    move v8, v2

    move v2, v12

    goto :goto_3c

    .line 4108
    :cond_62
    iget v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const/4 v11, 0x5

    if-eq v4, v11, :cond_63

    const/4 v13, 0x7

    if-ne v4, v13, :cond_64

    :cond_63
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_61

    const/4 v4, 0x0

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v11}, Lorg/telegram/messenger/MessageObject;->isTextColorEmoji(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-nez v4, :cond_64

    goto :goto_3f

    .line 4111
    :cond_64
    iget v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const/16 v11, 0xa

    const/16 v13, 0x9

    if-eq v4, v11, :cond_65

    if-ne v4, v13, :cond_66

    :cond_65
    iget-boolean v4, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->channel_emoji_status:Z

    if-nez v4, :cond_66

    goto :goto_3f

    .line 4115
    :cond_66
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->positionToSection:Landroid/util/SparseIntArray;

    iget v14, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    iget-object v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->packs:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v4, v14, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 4116
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->sectionToPosition:Landroid/util/SparseIntArray;

    iget-object v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->packs:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    iget v14, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    invoke-virtual {v4, v11, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 4117
    iget v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    const/16 v23, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    .line 4118
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    iget-wide v13, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    mul-long v13, v13, v18

    const-wide/16 v26, 0x23fb

    add-long v13, v13, v26

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4120
    new-instance v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    invoke-direct {v4}, Lorg/telegram/ui/Components/EmojiView$EmojiPack;-><init>()V

    .line 4121
    iput-object v1, v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->needLoadSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 4122
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->installedEmojiSets:Ljava/util/ArrayList;

    iget-wide v13, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->installed:Z

    const/4 v11, 0x1

    .line 4123
    iput-boolean v11, v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->featured:Z

    .line 4124
    iget v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const/4 v13, 0x4

    if-ne v1, v13, :cond_67

    const/4 v1, 0x0

    .line 4125
    iput-boolean v1, v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->free:Z

    goto :goto_40

    :cond_67
    xor-int/lit8 v1, v3, 0x1

    .line 4127
    iput-boolean v1, v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->free:Z

    .line 4129
    :goto_40
    iput-object v5, v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    .line 4130
    invoke-direct {v0, v8, v9}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->filter(Ljava/util/ArrayList;Ljava/util/HashSet;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    .line 4131
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->packs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->index:I

    .line 4132
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->expandedEmojiSets:Ljava/util/ArrayList;

    iget-object v3, v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v13, v3, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->expanded:Z

    .line 4134
    iget-object v1, v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v3, 0x18

    if-le v1, v3, :cond_69

    iget-boolean v1, v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->expanded:Z

    if-nez v1, :cond_69

    .line 4135
    iget v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    add-int/lit8 v1, v1, 0x18

    iput v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    const/4 v1, 0x0

    :goto_41
    const/16 v3, 0x17

    if-ge v1, v3, :cond_68

    .line 4137
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    iget-object v8, v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v13, v8, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    mul-long v13, v13, v18

    add-long/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    .line 4139
    :cond_68
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    iget-wide v13, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    mul-long v13, v13, v18

    const-wide/16 v26, -0x159b

    add-long v13, v13, v26

    iget-object v3, v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x17

    move v8, v2

    int-to-long v2, v3

    const-wide/16 v26, 0xa9

    mul-long v2, v2, v26

    add-long/2addr v13, v2

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4140
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->positionToExpand:Landroid/util/SparseIntArray;

    iget v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    const/16 v23, 0x1

    add-int/lit8 v2, v2, -0x1

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->packs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_43

    :cond_69
    move v8, v2

    .line 4142
    iget v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    iget-object v2, v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    const/4 v1, 0x0

    .line 4143
    :goto_42
    iget-object v2, v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6a

    .line 4144
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    iget-object v3, v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v13, v3, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    mul-long v13, v13, v18

    add-long/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    .line 4148
    :cond_6a
    :goto_43
    iget-boolean v1, v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->installed:Z

    if-nez v1, :cond_6d

    iget v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const/4 v13, 0x4

    if-eq v1, v13, :cond_6c

    const/4 v11, 0x5

    if-eq v1, v11, :cond_6c

    const/4 v2, 0x7

    if-eq v1, v2, :cond_6c

    const/4 v3, 0x6

    if-eq v1, v3, :cond_6b

    .line 4149
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->positionToButton:Landroid/util/SparseIntArray;

    iget v14, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->packs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v14, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 4150
    iget v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    const/16 v23, 0x1

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    .line 4151
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    move v2, v12

    iget-wide v11, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    mul-long v11, v11, v18

    const-wide/16 v26, 0xcf9

    add-long v11, v11, v26

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_45

    :cond_6b
    move v2, v12

    :goto_44
    const/16 v23, 0x1

    goto :goto_45

    :cond_6c
    move v2, v12

    const/4 v3, 0x6

    goto :goto_44

    :cond_6d
    move v2, v12

    const/4 v3, 0x6

    const/4 v13, 0x4

    goto :goto_44

    .line 4154
    :goto_45
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->packs:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_46
    add-int/lit8 v12, v2, 0x1

    move-object/from16 v22, v6

    move v2, v8

    move-wide v3, v15

    goto/16 :goto_3a

    :cond_6e
    move v8, v2

    .line 4158
    iget v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const/16 v5, 0xe

    if-eq v1, v5, :cond_6f

    const/16 v12, 0x8

    if-eq v1, v12, :cond_6f

    const/16 v5, 0xd

    if-eq v1, v5, :cond_6f

    .line 4159
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->packs:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EmojiTabsStrip;->updateEmojiPacks(Ljava/util/ArrayList;)V

    :cond_6f
    if-eqz v8, :cond_70

    .line 4163
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiItemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    goto :goto_47

    .line 4165
    :cond_70
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    :goto_47
    if-eqz p3, :cond_71

    .line 4168
    new-instance v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$24;

    invoke-direct {v1, v0, v10}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$24;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Ljava/util/ArrayList;)V

    const/4 v12, 0x0

    invoke-static {v1, v12}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;Z)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->adapter:Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;

    .line 4188
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_48

    :cond_71
    const/4 v12, 0x0

    .line 4190
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->adapter:Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4193
    :goto_48
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-boolean v2, v1, Lorg/telegram/ui/Components/RecyclerListView;->scrolledByUserOnce:Z

    if-nez v2, :cond_72

    .line 4194
    invoke-virtual {v1, v12}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_72
    :goto_49
    return-void
.end method

.method private updateRowsDelayed()V
    .locals 1

    .line 5004
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateRowsDelayed:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 5005
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateRowsDelayed:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateSearchBox()V
    .locals 5

    .line 1330
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    if-nez v0, :cond_0

    return-void

    .line 1333
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searched:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1334
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1335
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1336
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    .line 1338
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/high16 v1, 0x42500000    # 52.0f

    if-lez v0, :cond_3

    .line 1339
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1340
    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v3

    iget v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchRow:I

    if-ne v3, v4, :cond_2

    const-string/jumbo v3, "searchbox"

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1341
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1342
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void

    .line 1344
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void

    .line 1347
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public static updateSearchEmptyViewImage(ILorg/telegram/ui/Components/BackupImageView;)V
    .locals 13

    if-nez p1, :cond_0

    goto/16 :goto_c

    .line 1619
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getFeaturedEmojiSets()Ljava/util/ArrayList;

    move-result-object v0

    .line 1620
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1621
    invoke-static {v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 1622
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v0, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, v2

    move v4, v3

    .line 1623
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_5

    .line 1624
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;

    if-eqz v6, :cond_3

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;->documents:Ljava/util/ArrayList;

    if-eqz v6, :cond_3

    .line 1625
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;->documents:Ljava/util/ArrayList;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1626
    invoke-static {v6}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    move v7, v3

    .line 1627
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 1628
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v8, :cond_2

    .line 1629
    sget-object v9, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emptyViewEmojis:Ljava/util/List;

    invoke-static {v8, v2}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    add-int/lit8 v5, v0, -0x1

    if-gtz v0, :cond_1

    move v0, v5

    move-object v5, v8

    goto :goto_2

    :cond_1
    move v0, v5

    move-object v5, v8

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-eqz v5, :cond_4

    if-gtz v0, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    if-eqz v5, :cond_7

    if-lez v0, :cond_6

    goto :goto_5

    :cond_6
    :goto_4
    move-object v12, v5

    goto/16 :goto_9

    .line 1641
    :cond_7
    :goto_5
    invoke-static {p0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p0

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/MediaDataController;->getStickerSets(I)Ljava/util/ArrayList;

    move-result-object p0

    .line 1642
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1643
    invoke-static {v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    move p0, v3

    .line 1644
    :goto_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge p0, v4, :cond_6

    .line 1645
    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    if-eqz v4, :cond_a

    .line 1646
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1647
    invoke-static {v4}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    move v6, v3

    .line 1648
    :goto_7
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_a

    .line 1649
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v7, :cond_9

    .line 1650
    sget-object v8, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emptyViewEmojis:Ljava/util/List;

    invoke-static {v7, v2}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    add-int/lit8 v5, v0, -0x1

    if-gtz v0, :cond_8

    move v0, v5

    move-object v5, v7

    goto :goto_8

    :cond_8
    move v0, v5

    move-object v5, v7

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_a
    :goto_8
    if-eqz v5, :cond_b

    if-gtz v0, :cond_b

    goto :goto_4

    :cond_b
    add-int/lit8 p0, p0, 0x1

    goto :goto_6

    :goto_9
    if-eqz v12, :cond_f

    .line 1668
    iget-object p0, v12, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    const v1, 0x3e4ccccd    # 0.2f

    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Ljava/util/ArrayList;IF)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v11

    .line 1669
    iget-object p0, v12, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 v0, 0x5a

    invoke-static {p0, v0}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object p0

    .line 1670
    const-string/jumbo v0, "video/webm"

    iget-object v1, v12, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x200

    const-string v2, "36_36"

    if-eqz v0, :cond_d

    .line 1671
    invoke-static {v12}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v0

    .line 1672
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "g"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v11, :cond_c

    .line 1674
    invoke-virtual {v11, v1, v1}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->overrideWidthAndHeight(II)V

    :cond_c
    :goto_a
    move-object v7, v0

    move-object v8, v2

    goto :goto_b

    :cond_d
    if-eqz v11, :cond_e

    .line 1677
    invoke-static {v12, v3}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1678
    invoke-virtual {v11, v1, v1}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->overrideWidthAndHeight(II)V

    .line 1680
    :cond_e
    invoke-static {v12}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v0

    goto :goto_a

    :goto_b
    const/4 v0, 0x7

    .line 1683
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BackupImageView;->setLayerNum(I)V

    const/high16 v0, 0x40800000    # 4.0f

    .line 1684
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 1685
    invoke-static {p0, v12}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v9

    const-string v10, "36_36"

    move-object v6, p1

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    :cond_f
    :goto_c
    return-void
.end method

.method private updateShow(F)V
    .locals 16

    move-object/from16 v0, p0

    .line 5486
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble1View:Landroid/view/View;

    const/4 v2, -0x1

    const/high16 v3, 0x42f00000    # 120.0f

    const/high16 v4, 0x44480000    # 800.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v1, :cond_1

    mul-float v1, p1, v4

    sub-float/2addr v1, v6

    div-float/2addr v1, v3

    div-float/2addr v1, v7

    .line 5487
    invoke-static {v1, v6, v7}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v1

    .line 5488
    sget-object v8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v8, v1}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v1

    .line 5489
    iget-object v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble1View:Landroid/view/View;

    invoke-virtual {v8, v1}, Landroid/view/View;->setAlpha(F)V

    .line 5490
    iget-object v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble1View:Landroid/view/View;

    invoke-virtual {v8, v1}, Landroid/view/View;->setScaleX(F)V

    .line 5491
    iget-object v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble1View:Landroid/view/View;

    invoke-virtual {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->isBottom()Z

    move-result v9

    if-eqz v9, :cond_0

    move v9, v2

    goto :goto_0

    :cond_0
    move v9, v5

    :goto_0
    int-to-float v9, v9

    mul-float/2addr v1, v9

    invoke-virtual {v8, v1}, Landroid/view/View;->setScaleY(F)V

    .line 5494
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble2View:Landroid/view/View;

    const/high16 v8, 0x41f00000    # 30.0f

    if-eqz v1, :cond_3

    mul-float v1, p1, v4

    sub-float/2addr v1, v8

    div-float/2addr v1, v3

    div-float/2addr v1, v7

    .line 5495
    invoke-static {v1, v6, v7}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v1

    .line 5497
    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble2View:Landroid/view/View;

    invoke-virtual {v9, v1}, Landroid/view/View;->setAlpha(F)V

    .line 5498
    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble2View:Landroid/view/View;

    invoke-virtual {v9, v1}, Landroid/view/View;->setScaleX(F)V

    .line 5499
    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble2View:Landroid/view/View;

    invoke-virtual {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->isBottom()Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_1

    :cond_2
    move v2, v5

    :goto_1
    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual {v9, v1}, Landroid/view/View;->setScaleY(F)V

    :cond_3
    mul-float v4, v4, p1

    const/high16 v1, 0x42200000    # 40.0f

    sub-float v1, v4, v1

    const/high16 v2, 0x442f0000    # 700.0f

    div-float v5, v1, v2

    .line 5502
    invoke-static {v5, v6, v7}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v5

    const/high16 v9, 0x42a00000    # 80.0f

    sub-float v9, v4, v9

    div-float/2addr v9, v2

    .line 5503
    invoke-static {v9, v6, v7}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v2

    const v9, 0x443b8000    # 750.0f

    div-float/2addr v1, v9

    .line 5504
    invoke-static {v1, v6, v7}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v1

    sub-float/2addr v4, v8

    div-float/2addr v4, v3

    .line 5505
    invoke-static {v4, v6, v7}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v3

    .line 5506
    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v5

    .line 5507
    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v2

    .line 5511
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->backgroundView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setAlpha(F)V

    .line 5512
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    invoke-virtual {v4, v3}, Landroid/view/View;->setAlpha(F)V

    const/4 v4, 0x0

    move v8, v4

    .line 5513
    :goto_2
    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    iget-object v9, v9, Lorg/telegram/ui/Components/EmojiTabsStrip;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-ge v8, v9, :cond_4

    .line 5514
    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    iget-object v9, v9, Lorg/telegram/ui/Components/EmojiTabsStrip;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 5515
    invoke-virtual {v9, v3}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 5517
    :cond_4
    iget-object v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrimDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v8, :cond_5

    .line 5518
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 5520
    :cond_5
    iget-object v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    const/high16 v9, -0x3f600000    # -5.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    sub-float v11, v7, v3

    mul-float/2addr v10, v11

    invoke-virtual {v8, v10}, Landroid/view/View;->setTranslationY(F)V

    .line 5521
    iget-object v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble2View:Landroid/view/View;

    if-eqz v8, :cond_6

    .line 5522
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v11

    invoke-virtual {v8, v9}, Landroid/view/View;->setTranslationY(F)V

    :cond_6
    const v8, 0x3f59999a    # 0.85f

    mul-float/2addr v5, v8

    const v8, 0x3e19999a    # 0.15f

    add-float/2addr v5, v8

    .line 5524
    iput v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scaleX:F

    const v5, 0x3f6ccccd    # 0.925f

    mul-float/2addr v2, v5

    const v5, 0x3d99999a    # 0.075f

    add-float/2addr v2, v5

    .line 5525
    iput v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scaleY:F

    .line 5526
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->invalidateOutline()V

    .line 5527
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble2View:Landroid/view/View;

    if-eqz v2, :cond_7

    .line 5528
    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 5530
    :cond_7
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabsShadow:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 5531
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabsShadow:Landroid/view/View;

    iget v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scaleX:F

    invoke-static {v3, v7}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleX(F)V

    .line 5533
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabsShadow:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPivotX()F

    move-result v2

    mul-float v3, v2, v2

    float-to-double v8, v3

    .line 5534
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    .line 5535
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-double v10, v3

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    add-double/2addr v8, v10

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    .line 5536
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v2

    float-to-double v10, v3

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-double v14, v3

    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    add-double/2addr v10, v12

    .line 5534
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v3, v8

    move v5, v4

    .line 5538
    :goto_3
    iget-object v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    iget-object v8, v8, Lorg/telegram/ui/Components/EmojiTabsStrip;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    const/high16 v9, 0x3fe00000    # 1.75f

    const/high16 v10, 0x40000000    # 2.0f

    if-ge v5, v8, :cond_c

    .line 5539
    iget-object v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    iget-object v8, v8, Lorg/telegram/ui/Components/EmojiTabsStrip;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    cmpl-float v11, p1, v6

    const/4 v12, 0x0

    if-nez v11, :cond_8

    const/4 v11, 0x2

    .line 5541
    invoke-virtual {v8, v11, v12}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_4

    :cond_8
    cmpl-float v11, p1, v7

    if-nez v11, :cond_9

    .line 5543
    invoke-virtual {v8, v4, v12}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 5545
    :cond_9
    :goto_4
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v10

    add-float/2addr v11, v12

    sub-float/2addr v11, v2

    .line 5546
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v10

    add-float/2addr v12, v13

    .line 5547
    invoke-virtual {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->isBottom()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 5548
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    int-to-float v10, v10

    sub-float v12, v10, v12

    :cond_a
    mul-float/2addr v11, v11

    mul-float/2addr v12, v12

    const v10, 0x3ecccccd    # 0.4f

    mul-float/2addr v12, v10

    add-float/2addr v11, v12

    float-to-double v10, v11

    .line 5550
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v10, v10

    .line 5551
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v9

    invoke-static {v1, v10, v3, v11}, Lorg/telegram/messenger/AndroidUtilities;->cascade(FFFF)F

    move-result v9

    .line 5552
    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-eqz v10, :cond_b

    move v9, v6

    .line 5555
    :cond_b
    invoke-virtual {v8, v9}, Landroid/view/View;->setScaleX(F)V

    .line 5556
    invoke-virtual {v8, v9}, Landroid/view/View;->setScaleY(F)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 5558
    :cond_c
    :goto_5
    iget-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_10

    .line 5559
    iget-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 5560
    instance-of v7, v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    if-eqz v7, :cond_f

    .line 5561
    move-object v7, v5

    check-cast v7, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    .line 5562
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v10

    add-float/2addr v8, v11

    sub-float/2addr v8, v2

    .line 5563
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v10

    add-float/2addr v11, v12

    .line 5564
    invoke-virtual {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->isBottom()Z

    move-result v12

    if-eqz v12, :cond_d

    .line 5565
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    int-to-float v12, v12

    sub-float v11, v12, v11

    :cond_d
    mul-float/2addr v8, v8

    mul-float/2addr v11, v11

    const v12, 0x3e4ccccd    # 0.2f

    mul-float/2addr v11, v12

    add-float/2addr v8, v11

    float-to-double v11, v8

    .line 5567
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-float v8, v11

    .line 5568
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v9

    invoke-static {v1, v8, v3, v5}, Lorg/telegram/messenger/AndroidUtilities;->cascade(FFFF)F

    move-result v5

    .line 5569
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-eqz v8, :cond_e

    move v5, v6

    .line 5572
    :cond_e
    invoke-virtual {v7, v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setAnimatedScale(F)V

    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 5575
    :cond_10
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 5576
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->invalidate()V

    return-void
.end method

.method private updateTabsPosition(I)V
    .locals 6

    const/4 v0, -0x1

    if-eq p1, v0, :cond_8

    .line 1307
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x28

    if-le v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentExpanded:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-boolean v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->includeEmpty:Z

    add-int/2addr v1, v0

    :goto_0
    const/4 v0, 0x0

    if-le p1, v1, :cond_7

    .line 1308
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentReactions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt p1, v1, :cond_1

    goto :goto_5

    :cond_1
    move v1, v0

    .line 1312
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->positionToSection:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 1313
    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->positionToSection:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 1314
    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->positionToSection:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    if-ltz v3, :cond_2

    .line 1315
    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->packs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_3

    goto :goto_4

    .line 1319
    :cond_3
    iget-boolean v5, v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->expanded:Z

    iget-object v4, v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    const/16 v5, 0x18

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_3
    if-le p1, v2, :cond_6

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v4

    if-gt p1, v2, :cond_6

    .line 1321
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    iget-object v1, p1, Lorg/telegram/ui/Components/EmojiTabsStrip;->recentTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    :cond_5
    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->isGiftsVisible()Z

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, v3

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EmojiTabsStrip;->select(I)V

    return-void

    :cond_6
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1309
    :cond_7
    :goto_5
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EmojiTabsStrip;->select(I)V

    :cond_8
    return-void
.end method


# virtual methods
.method public animateEmojiSelect(Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;Ljava/lang/Runnable;)V
    .locals 8

    .line 1435
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrimDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-nez v0, :cond_1

    :cond_0
    move-object v2, p0

    move-object v6, p2

    goto/16 :goto_2

    :cond_1
    const/4 v0, 0x1

    .line 1440
    iput-boolean v0, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->notDraw:Z

    .line 1441
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1442
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    .line 1443
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    .line 1444
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    .line 1445
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    .line 1446
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v6

    add-int/2addr v5, v6

    .line 1442
    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1450
    iget-object v1, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->drawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v2, :cond_2

    .line 1451
    iget v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    check-cast v1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getDocumentId()J

    move-result-wide v4

    const/4 v1, 0x7

    invoke-static {v2, v1, v4, v5}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IIJ)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object v1

    :goto_0
    move-object v7, v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 1456
    :goto_1
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    .line 1457
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectRect:Landroid/graphics/Rect;

    .line 1458
    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1460
    new-array v5, v0, [Z

    const/4 v0, 0x2

    .line 1461
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectAnimator:Landroid/animation/ValueAnimator;

    .line 1462
    new-instance v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda15;

    move-object v2, p0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/graphics/Rect;Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;[ZLjava/lang/Runnable;Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1484
    iget-object p1, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$20;

    invoke-direct {p2, p0, v5, v6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$20;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;[ZLjava/lang/Runnable;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1495
    iget-object p1, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1496
    iget-object p1, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x104

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1497
    iget-object p1, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 1436
    :goto_2
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public animateExpandAppearDuration()J
    .locals 4

    .line 3231
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandToPosition:I

    iget v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandFromPosition:I

    sub-int/2addr v0, v1

    const/16 v1, 0x37

    .line 3232
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x1e

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x1c2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public animateExpandCrossfadeDuration()J
    .locals 4

    .line 3236
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandToPosition:I

    iget v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandFromPosition:I

    sub-int/2addr v0, v1

    const/16 v1, 0x2d

    .line 3237
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x19

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public animateExpandDuration()J
    .locals 4

    .line 3227
    invoke-virtual {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandAppearDuration()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandCrossfadeDuration()J

    move-result-wide v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public clearSelectedDocuments()V
    .locals 1

    .line 5737
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedDocumentIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 2

    .line 5010
    sget p2, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoad:I

    const/4 v0, 0x0

    if-ne p1, p2, :cond_1

    .line 5011
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->showStickers:Z

    if-eqz p1, :cond_6

    .line 5012
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateRowsDelayed()V

    return-void

    .line 5014
    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->featuredEmojiDidLoad:I

    if-ne p1, p2, :cond_2

    .line 5015
    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateRowsDelayed()V

    return-void

    .line 5016
    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->recentEmojiStatusesUpdate:I

    if-ne p1, p2, :cond_3

    .line 5017
    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateRowsDelayed()V

    return-void

    .line 5018
    :cond_3
    sget p2, Lorg/telegram/messenger/NotificationCenter;->groupStickersDidLoad:I

    if-ne p1, p2, :cond_4

    .line 5019
    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateRowsDelayed()V

    return-void

    .line 5020
    :cond_4
    sget p2, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    if-ne p1, p2, :cond_5

    .line 5021
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    new-instance p2, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$$ExternalSyntheticLambda10;

    invoke-direct {p2}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$$ExternalSyntheticLambda10;-><init>()V

    invoke-static {p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->forEachViews(Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/exoplayer2/util/Consumer;)V

    .line 5022
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    if-eqz p1, :cond_6

    .line 5023
    invoke-virtual {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->invalidate()V

    return-void

    .line 5025
    :cond_5
    sget p2, Lorg/telegram/messenger/NotificationCenter;->starUserGiftsLoaded:I

    if-ne p1, p2, :cond_6

    .line 5026
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 5027
    iget p3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-nez p1, :cond_6

    .line 5028
    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateRowsDelayed()V

    :cond_6
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1389
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrimDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_6

    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiX:Ljava/lang/Integer;

    if-eqz v3, :cond_6

    .line 1390
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1391
    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrimDrawableParent:Landroid/view/View;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getScaleY()F

    move-result v3

    .line 1393
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrimDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v4

    .line 1394
    iget-object v5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrimDrawableParent:Landroid/view/View;

    if-nez v5, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 1395
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1396
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v5

    neg-float v5, v5

    invoke-virtual {p1, v1, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1397
    iget-object v5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrimDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    int-to-double v6, v4

    iget-object v8, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/view/View;->getAlpha()F

    move-result v8

    float-to-double v8, v8

    const-wide/high16 v10, 0x3fd0000000000000L    # 0.25

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double/2addr v6, v8

    iget v8, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrimAlpha:F

    float-to-double v8, v8

    mul-double/2addr v6, v8

    double-to-int v6, v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setAlpha(I)V

    .line 1398
    iget-object v5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->drawableToBounds:Landroid/graphics/Rect;

    if-nez v5, :cond_2

    .line 1399
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->drawableToBounds:Landroid/graphics/Rect;

    :cond_2
    cmpl-float v5, v3, v2

    const/high16 v6, 0x3fc00000    # 1.5f

    if-lez v5, :cond_3

    cmpg-float v5, v3, v6

    if-gez v5, :cond_3

    const/4 v5, 0x2

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    int-to-float v5, v5

    cmpl-float v6, v3, v6

    if-lez v6, :cond_4

    .line 1402
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3f4f5c29    # 0.81f

    mul-float/2addr v6, v7

    add-float/2addr v6, v2

    goto :goto_3

    :cond_4
    move v6, v1

    :goto_3
    neg-float v6, v6

    .line 1403
    iget-object v7, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiX:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v5

    .line 1404
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    int-to-float v5, v5

    sub-float v8, v3, v2

    mul-float/2addr v5, v8

    add-float/2addr v5, v6

    invoke-virtual {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->isBottom()Z

    move-result v6

    const/high16 v8, 0x40000000    # 2.0f

    if-nez v6, :cond_5

    iget v6, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topMarginDp:I

    int-to-float v6, v6

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    iget v9, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topMarginDp:I

    int-to-float v9, v9

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v8

    sub-float/2addr v6, v9

    :goto_4
    add-float/2addr v5, v6

    invoke-virtual {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->getScrimDrawableTranslationY()F

    move-result v6

    add-float/2addr v5, v6

    .line 1405
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v3

    div-float/2addr v6, v8

    .line 1406
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v3

    div-float/2addr v9, v8

    .line 1407
    iget-object v8, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->drawableToBounds:Landroid/graphics/Rect;

    sub-float v10, v7, v6

    float-to-int v10, v10

    sub-float v11, v5, v9

    float-to-int v11, v11

    add-float/2addr v7, v6

    float-to-int v6, v7

    add-float/2addr v5, v9

    float-to-int v5, v5

    invoke-virtual {v8, v10, v11, v6, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1408
    iget-object v5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrimDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object v6, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->drawableToBounds:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    iget v8, v6, Landroid/graphics/Rect;->top:I

    int-to-float v9, v7

    .line 1411
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v3

    add-float/2addr v9, v6

    float-to-int v6, v9

    iget-object v9, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->drawableToBounds:Landroid/graphics/Rect;

    iget v10, v9, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    .line 1412
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v3

    add-float/2addr v10, v9

    float-to-int v9, v10

    .line 1408
    invoke-virtual {v5, v7, v8, v6, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1414
    iget-object v5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->drawableToBounds:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {p1, v3, v3, v6, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1415
    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrimDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v3, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1416
    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrimDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setAlpha(I)V

    .line 1417
    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrimDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1418
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1420
    :cond_6
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1421
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    if-eqz v0, :cond_7

    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectRect:Landroid/graphics/Rect;

    if-eqz v3, :cond_7

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    .line 1422
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1423
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1424
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->drawable:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x437f0000    # 255.0f

    iget v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectAlpha:F

    mul-float/2addr v3, v1

    float-to-int v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1425
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1426
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->drawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->accentColor:I

    iget v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrimColor:I

    iget v5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrimAlpha:F

    sub-float/2addr v2, v5

    invoke-static {v3, v4, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1427
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1428
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_7
    return-void
.end method

.method public drawBigReaction(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 9

    .line 5753
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedReactionView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 5756
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bigReactionImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p2}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 5757
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedReactionView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    if-eqz v0, :cond_6

    .line 5758
    iget v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->pressedProgress:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->cancelPressed:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->isLongPressEnabled:Z

    if-eqz v3, :cond_2

    const v3, 0x3c2ec33e

    add-float/2addr v1, v3

    .line 5759
    iput v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->pressedProgress:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    .line 5761
    iput v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->pressedProgress:F

    .line 5762
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bigReactionListener:Lorg/telegram/ui/SelectAnimatedEmojiDialog$onLongPressedListener;

    if-eqz v1, :cond_1

    .line 5763
    invoke-interface {v1, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$onLongPressedListener;->onLongPressed(Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;)V

    .line 5766
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedReactionView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    iget v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->pressedProgress:F

    iput v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->bigReactionSelectedProgress:F

    .line 5769
    :cond_2
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->pressedProgress:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    .line 5771
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 5772
    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedReactionView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gridViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedReactionView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5773
    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->paint:Landroid/graphics/Paint;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 5774
    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedReactionView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v6, v2

    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedReactionView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v7, v2

    iget-object v8, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->paint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 5775
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedReactionView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedReactionView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v3, v0, v0, p1, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 5776
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedReactionView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    iget-boolean v0, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->isDefaultReaction:Z

    if-eqz v0, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bigReactionImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    goto :goto_0

    :cond_3
    iget-object p1, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiverToDraw:Lorg/telegram/messenger/ImageReceiver;

    .line 5777
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bigReactionAnimatedEmoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bigReactionAnimatedEmoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->hasBitmapImage()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5778
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bigReactionAnimatedEmoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    :cond_4
    if-eqz p1, :cond_5

    .line 5781
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedReactionView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedReactionView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 5782
    invoke-virtual {p1, v3}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 5784
    :cond_5
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 5785
    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    :cond_6
    :goto_1
    return-void
.end method

.method public expand(ILandroid/view/View;)V
    .locals 8

    .line 4205
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->positionToExpand:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    const/4 v0, 0x0

    .line 4210
    iput v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandFromButtonTranslate:F

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz p1, :cond_4

    .line 4211
    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->packs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_4

    .line 4213
    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->packs:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    .line 4214
    iget-boolean v4, v3, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->expanded:Z

    if-eqz v4, :cond_0

    goto/16 :goto_9

    :cond_0
    add-int/lit8 v4, p1, 0x1

    .line 4217
    iget-object v5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->packs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v4, v5, :cond_1

    move v4, v1

    goto :goto_0

    :cond_1
    move v4, v0

    .line 4219
    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->sectionToPosition:Landroid/util/SparseIntArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    .line 4220
    iget-object v5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->expandedEmojiSets:Ljava/util/ArrayList;

    iget-object v6, v3, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4222
    iget-boolean v5, v3, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->expanded:Z

    const/16 v6, 0x18

    if-eqz v5, :cond_2

    iget-object v5, v3, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    goto :goto_1

    :cond_2
    iget-object v5, v3, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 4223
    :goto_1
    iget-object v7, v3, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v7, v6, :cond_3

    add-int/lit8 v7, p1, 0x1

    add-int/2addr v7, v5

    .line 4224
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_2

    :cond_3
    move-object v7, v2

    .line 4226
    :goto_2
    iput-boolean v1, v3, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->expanded:Z

    .line 4227
    iget-object v3, v3, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    goto :goto_7

    :cond_4
    const/4 v3, -0x1

    if-ne p1, v3, :cond_b

    .line 4230
    iget-boolean p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentExpanded:Z

    if-eqz p1, :cond_5

    goto/16 :goto_9

    .line 4234
    :cond_5
    iget v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchRow:I

    if-eq v4, v3, :cond_6

    move v4, v1

    goto :goto_3

    :cond_6
    move v4, v0

    :goto_3
    iget v5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->longtapHintRow:I

    if-eq v5, v3, :cond_7

    move v3, v1

    goto :goto_4

    :cond_7
    move v3, v0

    :goto_4
    add-int/2addr v4, v3

    iget-boolean v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->includeEmpty:Z

    add-int/2addr v4, v3

    if-eqz p1, :cond_8

    .line 4235
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_5
    move v5, p1

    goto :goto_6

    :cond_8
    rsub-int/lit8 p1, v3, 0x26

    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_5

    .line 4236
    :goto_6
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4237
    iput-boolean v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentExpanded:Z

    const/16 v6, 0x28

    move-object v7, v2

    move p1, v4

    move v4, v0

    :goto_7
    if-le v3, v5, :cond_9

    add-int/2addr p1, v1

    add-int/2addr p1, v5

    .line 4243
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sub-int/2addr v3, v5

    .line 4244
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4247
    :cond_9
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateRows(ZZ)V

    if-eqz v7, :cond_b

    if-eqz v2, :cond_b

    .line 4250
    iput-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandFromButton:Landroid/view/View;

    .line 4251
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandFromPosition:I

    .line 4252
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandToPosition:I

    .line 4253
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandStartTime:J

    if-eqz v4, :cond_b

    .line 4256
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 4257
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    div-int/lit8 v6, v6, 0x2

    if-le p2, v6, :cond_a

    const/high16 p2, 0x3fc00000    # 1.5f

    goto :goto_8

    :cond_a
    const/high16 p2, 0x40600000    # 3.5f

    .line 4258
    :goto_8
    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;FI)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_b
    :goto_9
    return-void
.end method

.method public getCollectionParticles()Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;
    .locals 3

    .line 3220
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->collectionParticles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    if-nez v0, :cond_0

    .line 3221
    new-instance v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    const/4 v1, 0x1

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;-><init>(II)V

    iput-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->collectionParticles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    .line 3223
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->collectionParticles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    return-object v0
.end method

.method public getDialogId()J
    .locals 2

    .line 6448
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    return-wide v0
.end method

.method protected getScrimDrawableTranslationY()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected invalidateParent()V
    .locals 0

    return-void
.end method

.method public invalidateSearchBox()V
    .locals 1

    .line 270
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    invoke-virtual {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->invalidate()V

    return-void
.end method

.method public isBottom()Z
    .locals 2

    .line 165
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 4199
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->adapter:Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;

    if-eqz v0, :cond_0

    .line 4200
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 4962
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 4963
    iput-boolean v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->isAttached:Z

    .line 4964
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->featuredEmojiDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4965
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4966
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->recentEmojiStatusesUpdate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4967
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->groupStickersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4968
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4969
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    if-eqz v0, :cond_0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 4970
    :cond_0
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starUserGiftsLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4973
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrimDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v0, :cond_2

    .line 4974
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setSecondParent(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 4980
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 4981
    invoke-direct {p0, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setBigReactionAnimatedEmoji(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    const/4 v1, 0x0

    .line 4982
    iput-boolean v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->isAttached:Z

    .line 4983
    iget v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->featuredEmojiDidLoad:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4984
    iget v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoad:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4985
    iget v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->recentEmojiStatusesUpdate:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4986
    iget v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->groupStickersDidLoad:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4987
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4988
    iget v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    if-eqz v1, :cond_0

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 4989
    :cond_0
    iget v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->starUserGiftsLoaded:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4992
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrimDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v1, :cond_2

    .line 4993
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setSecondParent(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public onDismiss(Ljava/lang/Runnable;)V
    .locals 3

    .line 5580
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->listStateId:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 5581
    sget-object v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->listStates:Ljava/util/HashMap;

    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5584
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->hideAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 5585
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 5586
    iput-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->hideAnimator:Landroid/animation/ValueAnimator;

    :cond_1
    const/4 v0, 0x2

    .line 5588
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->hideAnimator:Landroid/animation/ValueAnimator;

    .line 5589
    new-instance v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5602
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->hideAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$26;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$26;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5612
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->hideAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5613
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->hideAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5614
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->hideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 5616
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    if-eqz p1, :cond_2

    .line 5617
    invoke-static {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->-$$Nest$fgetinput(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_2
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onEmojiClick(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan;)V
    .locals 13

    .line 3571
    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->incrementHintUse()V

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 3572
    iget-boolean v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->badgePicker:Z

    const/16 v2, 0xa

    const/16 v3, 0x9

    const/16 v4, 0xc

    if-nez v1, :cond_2

    iget v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    if-eqz v1, :cond_0

    if-eq v1, v4, :cond_0

    if-eq v1, v3, :cond_0

    if-ne v1, v2, :cond_2

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedDocumentIds:Ljava/util/HashSet;

    iget-wide v5, p2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move-object v6, p0

    move-object v7, p1

    goto/16 :goto_1

    .line 3575
    :cond_2
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;-><init>()V

    .line 3576
    invoke-virtual {p2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v5

    iput-wide v5, v1, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;->document_id:J

    .line 3578
    iget-object v5, p2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v5, :cond_3

    iget v5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    iget-wide v6, p2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentId:J

    invoke-static {v5, v6, v7}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findDocument(IJ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v5

    :cond_3
    move-object v9, v5

    .line 3579
    instance-of v5, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    if-eqz v5, :cond_b

    .line 3580
    move-object v5, p1

    check-cast v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    .line 3581
    iget-object v6, v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->starGift:Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-nez v6, :cond_5

    iget v6, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    if-eqz v6, :cond_4

    if-eq v6, v4, :cond_4

    if-eq v6, v3, :cond_4

    if-ne v6, v2, :cond_5

    .line 3582
    :cond_4
    iget v6, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v6

    invoke-virtual {v6, v1}, Lorg/telegram/messenger/MediaDataController;->pushRecentEmojiStatus(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)V

    .line 3584
    :cond_5
    iget v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    if-eqz v1, :cond_6

    if-eq v1, v4, :cond_6

    if-eq v1, v3, :cond_6

    if-eq v1, v2, :cond_6

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    :cond_6
    move-object v7, p1

    goto :goto_0

    .line 3593
    :cond_7
    iget-wide v1, p2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-object v10, v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->starGift:Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->commentView:Lorg/telegram/ui/Components/EditTextCaption;

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_8
    move-object v12, v0

    const/4 v11, 0x0

    move-object v6, p0

    move-object v7, p1

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->onEmojiSelected(Landroid/view/View;Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void

    .line 3585
    :goto_0
    iget-wide v1, p2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-object v10, v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->starGift:Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    const/4 v11, 0x0

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->willApplyEmoji(Landroid/view/View;Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Integer;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 3586
    iget-wide p1, p2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentId:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-object v10, v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->starGift:Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    iget-object p1, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->commentView:Lorg/telegram/ui/Components/EditTextCaption;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_9
    move-object v12, v0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->onEmojiSelected(Landroid/view/View;Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void

    .line 3589
    :cond_a
    new-instance v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda8;

    move-object v11, v5

    move-object v8, v7

    move-object v10, v9

    move-object v7, p0

    move-object v9, p2

    invoke-direct/range {v6 .. v11}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;)V

    move-object p1, v6

    move-object v6, v7

    invoke-virtual {p0, v11, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateEmojiSelect(Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;Ljava/lang/Runnable;)V

    return-void

    :cond_b
    move-object v6, p0

    move-object v7, p1

    move-object v10, v9

    move-object v9, p2

    .line 3596
    iget-wide p1, v9, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentId:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-object p1, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->commentView:Lorg/telegram/ui/Components/EditTextCaption;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_c
    move-object v12, v0

    move-object v9, v10

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->onEmojiSelected(Landroid/view/View;Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void

    .line 3573
    :goto_1
    iget-object p1, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->commentView:Lorg/telegram/ui/Components/EditTextCaption;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_d
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v6

    move-object v6, v0

    move-object v0, v1

    move-object v1, v7

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->onEmojiSelected(Landroid/view/View;Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method protected onEmojiSelected(Landroid/view/View;Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected onEmojiSelected(Landroid/view/View;Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    .line 3625
    invoke-virtual/range {p0 .. p5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->onEmojiSelected(Landroid/view/View;Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Integer;)V

    return-void
.end method

.method protected onInputFocus()V
    .locals 0

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 4287
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    move p2, p1

    move-object p1, p0

    if-eqz p2, :cond_0

    .line 4288
    iget p2, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const/4 p3, 0x6

    if-ne p2, p3, :cond_0

    .line 4289
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    const/high16 p3, 0x42280000    # 42.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    div-int/2addr p2, p3

    mul-int/lit8 p2, p2, 0x5

    .line 4291
    iget-object p3, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 4273
    iget-boolean v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->drawBackground:Z

    const/high16 v1, -0x80000000

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const/high16 p1, 0x43a20000    # 324.0f

    .line 4275
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    sget-object p2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    int-to-float p2, p2

    const v0, 0x3f733333    # 0.95f

    mul-float/2addr p2, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-int p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/high16 p2, 0x43a50000    # 330.0f

    .line 4276
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v0, v2

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    float-to-int p2, p2

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 4274
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void

    .line 4278
    :cond_0
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_1

    .line 4279
    sget-object p2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    const v0, 0x3eb33333    # 0.35f

    mul-float/2addr p2, v0

    float-to-int p2, p2

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void

    .line 4281
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method protected onReactionClick(Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V
    .locals 0

    return-void
.end method

.method protected onSettings()V
    .locals 0

    return-void
.end method

.method public onShow(Ljava/lang/Runnable;)V
    .locals 7

    .line 5046
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->listStateId:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 5047
    sget-object v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->listStates:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 5053
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->dismiss:Ljava/lang/Runnable;

    .line 5054
    iget-boolean p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->drawBackground:Z

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez p1, :cond_2

    .line 5055
    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->checkScroll()V

    .line 5056
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 5057
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 5058
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 5059
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 5063
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->showAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    .line 5064
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 5065
    iput-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->showAnimator:Landroid/animation/ValueAnimator;

    .line 5067
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->hideAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_4

    .line 5068
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 5069
    iput-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->hideAnimator:Landroid/animation/ValueAnimator;

    .line 5072
    :cond_4
    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->isAnimatedShow()Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x2

    .line 5074
    new-array v1, p1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->showAnimator:Landroid/animation/ValueAnimator;

    .line 5075
    new-instance v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda10;

    invoke-direct {v3, p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5079
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->showAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$25;

    invoke-direct {v3, p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$25;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    invoke-virtual {v1, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5117
    new-instance v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    .line 5121
    sget-boolean v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->isFirstOpen:Z

    if-eqz v3, :cond_5

    iget v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_5

    const/16 v4, 0xa

    if-eq v3, v4, :cond_5

    const/4 v4, 0x7

    if-eq v3, v4, :cond_5

    .line 5122
    sput-boolean v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->isFirstOpen:Z

    .line 5123
    iget v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getDocumentFetcher(I)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->setUiDbCallback(Ljava/lang/Runnable;)V

    :cond_5
    const/4 v3, 0x1

    .line 5125
    invoke-static {v1, v3}, Lorg/telegram/ui/Components/Reactions/HwEmojis;->prepare(Ljava/lang/Runnable;Z)V

    .line 5127
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v4, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    const/16 v5, 0x200

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v5, v6, v0

    invoke-virtual {v1, v4, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 5128
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {v0}, Lorg/telegram/messenger/AnimationNotificationsLocker;->lock()V

    .line 5129
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->showAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x320

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5130
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v0, p1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 5131
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    invoke-virtual {v0, p1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 5132
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabsShadow:Landroid/view/View;

    invoke-virtual {v0, p1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 5133
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->backgroundView:Landroid/view/View;

    invoke-virtual {v0, p1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 5134
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble2View:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 5135
    invoke-virtual {v0, p1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 5137
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble1View:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 5138
    invoke-virtual {v0, p1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 5140
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/EmojiTabsStrip;->showRecentTabStub(Z)V

    const/4 p1, 0x0

    .line 5141
    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateShow(F)V

    return-void

    .line 5143
    :cond_8
    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->checkScroll()V

    .line 5144
    invoke-direct {p0, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateShow(F)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public preload(II)V
    .locals 5

    .line 3629
    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3632
    :cond_0
    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaDataController;->checkStickers(I)V

    const/16 v0, 0xe

    if-ne p1, v0, :cond_1

    .line 3634
    iget p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getAvailableEffects()Lorg/telegram/tgnet/TLRPC$messages_AvailableEffects;

    return-void

    :cond_1
    const/4 v0, 0x1

    if-eq p1, v0, :cond_a

    const/16 v2, 0xb

    if-eq p1, v2, :cond_a

    const/4 v2, 0x2

    if-eq p1, v2, :cond_a

    const/4 v3, 0x6

    if-eq p1, v3, :cond_a

    const/16 v3, 0xd

    if-ne p1, v3, :cond_2

    goto/16 :goto_3

    :cond_2
    const/16 v3, 0x9

    const/4 v4, 0x0

    if-eq p1, v3, :cond_8

    const/16 v3, 0xa

    if-ne p1, v3, :cond_3

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_7

    const/16 v1, 0xc

    if-ne p1, v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x3

    if-ne p1, v1, :cond_5

    .line 3649
    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaDataController;->checkDefaultTopicIcons()V

    return-void

    :cond_5
    const/4 v1, 0x4

    if-ne p1, v1, :cond_6

    .line 3651
    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1, v4, v4, v0, v4}, Lorg/telegram/messenger/MediaDataController;->loadRecents(IZZZ)V

    .line 3652
    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1, v4}, Lorg/telegram/messenger/MediaDataController;->checkStickers(I)V

    :cond_6
    :goto_0
    return-void

    .line 3646
    :cond_7
    :goto_1
    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1, v4, v0}, Lorg/telegram/messenger/MediaDataController;->fetchEmojiStatuses(IZ)V

    .line 3647
    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmojiDefaultStatuses;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmojiDefaultStatuses;-><init>()V

    invoke-virtual {p1, p2, v4}, Lorg/telegram/messenger/MediaDataController;->getStickerSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Z)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    return-void

    .line 3638
    :cond_8
    :goto_2
    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getMainSettings()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v3, "resetemojipacks"

    invoke-interface {p1, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 3639
    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1, v1, v4, v4}, Lorg/telegram/messenger/MediaDataController;->loadStickers(IZZ)V

    .line 3640
    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getMainSettings()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3642
    :cond_9
    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1, v2, v4}, Lorg/telegram/messenger/MediaDataController;->fetchEmojiStatuses(IZ)V

    .line 3643
    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaDataController;->loadRestrictedStatusEmojis()V

    .line 3644
    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmojiChannelDefaultStatuses;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmojiChannelDefaultStatuses;-><init>()V

    invoke-virtual {p1, p2, v4}, Lorg/telegram/messenger/MediaDataController;->getStickerSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Z)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    return-void

    .line 3636
    :cond_a
    :goto_3
    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaDataController;->checkReactions()V

    return-void
.end method

.method public prevWindowKeyboardVisible()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public resetBackgroundBitmaps()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 5637
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v2, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->lineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 5638
    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v2, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->lineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;

    move v3, v0

    .line 5639
    :goto_1
    iget-object v4, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 5640
    iget-object v4, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    iget-boolean v4, v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->notDraw:Z

    if-eqz v4, :cond_0

    .line 5641
    iget-object v4, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    iput-boolean v0, v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->notDraw:Z

    .line 5642
    iget-object v4, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    invoke-virtual {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->invalidate()V

    .line 5643
    invoke-virtual {v2}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->reset()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5647
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->invalidate()V

    move v1, v0

    .line 5648
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v2, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->lineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 5649
    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v2, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->lineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;

    move v3, v0

    .line 5650
    :goto_3
    iget-object v4, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 5651
    iget-object v4, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    iget-boolean v4, v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->notDraw:Z

    if-eqz v4, :cond_3

    .line 5652
    iget-object v4, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    iput-boolean v0, v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->notDraw:Z

    .line 5653
    iget-object v4, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    invoke-virtual {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->invalidate()V

    .line 5654
    invoke-virtual {v2}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->reset()V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 5658
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->invalidate()V

    return-void
.end method

.method public search(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 1732
    invoke-virtual {p0, p1, v0, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->search(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public search(Ljava/lang/String;ZZ)V
    .locals 10

    .line 1751
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->clearSearchRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1752
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1753
    iput-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->clearSearchRunnable:Ljava/lang/Runnable;

    .line 1755
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 1756
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1757
    iput-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchRunnable:Ljava/lang/Runnable;

    .line 1759
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 1760
    iput-boolean v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searching:Z

    .line 1761
    iput-boolean v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searched:Z

    .line 1762
    invoke-virtual {p0, v3, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->switchGrids(ZZ)V

    .line 1763
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    if-eqz p1, :cond_2

    .line 1764
    invoke-virtual {p1, v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->showProgress(Z)V

    .line 1765
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    invoke-static {p1, v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->-$$Nest$mtoggleClear(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;Z)V

    .line 1767
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchAdapter:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->updateRows(Z)V

    .line 1768
    iput-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lastQuery:Ljava/lang/String;

    move-object v5, p0

    goto/16 :goto_2

    .line 1770
    :cond_3
    iget-boolean v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searching:Z

    xor-int/lit8 v8, v0, 0x1

    .line 1771
    iput-boolean v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searching:Z

    .line 1772
    iput-boolean v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searched:Z

    .line 1773
    iput-boolean p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchedLiftUp:Z

    .line 1774
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    if-eqz v1, :cond_4

    .line 1775
    invoke-virtual {v1, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->showProgress(Z)V

    :cond_4
    if-nez v0, :cond_8

    .line 1778
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchResult:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 1779
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1781
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchResultStickers:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 1782
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1784
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchSets:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 1785
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1787
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchAdapter:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->updateRows(Z)V

    goto :goto_0

    .line 1788
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lastQuery:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1789
    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    iput-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->clearSearchRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x78

    invoke-static {v0, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1802
    :cond_9
    :goto_0
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lastQuery:Ljava/lang/String;

    .line 1803
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getCurrentKeyboardLanguage()[Ljava/lang/String;

    move-result-object v9

    .line 1804
    sget-object v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lastSearchKeyboardLanguage:[Ljava/lang/String;

    invoke-static {v9, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1805
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0, v9}, Lorg/telegram/messenger/MediaDataController;->fetchNewEmojiKeywords([Ljava/lang/String;)V

    .line 1807
    :cond_a
    sput-object v9, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lastSearchKeyboardLanguage:[Ljava/lang/String;

    .line 1808
    new-instance v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda14;

    move-object v5, p0

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v4 .. v9}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Ljava/lang/String;ZZ[Ljava/lang/String;)V

    iput-object v4, v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchRunnable:Ljava/lang/Runnable;

    if-eqz p3, :cond_b

    const-wide/16 p1, 0x1a9

    goto :goto_1

    :cond_b
    const-wide/16 p1, 0x0

    :goto_1
    invoke-static {v4, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 2151
    iget-object p1, v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    if-eqz p1, :cond_c

    .line 2152
    invoke-virtual {p1, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->showProgress(Z)V

    .line 2153
    iget-object p1, v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    invoke-static {p1, v7}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->-$$Nest$mtoggleClear(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;Z)V

    .line 2156
    :cond_c
    :goto_2
    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateSearchBox()V

    return-void
.end method

.method public setAnimationsEnabled(Z)V
    .locals 0

    .line 6372
    iput-boolean p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animationsEnabled:Z

    return-void
.end method

.method public setBackgroundDelegate(Lorg/telegram/ui/SelectAnimatedEmojiDialog$BackgroundDelegate;)V
    .locals 0

    .line 6394
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->backgroundDelegate:Lorg/telegram/ui/SelectAnimatedEmojiDialog$BackgroundDelegate;

    return-void
.end method

.method public setDefaultBadge(Ljava/lang/Long;)V
    .locals 2

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 483
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->defaultBadgeId:J

    return-void
.end method

.method public setDrawBackground(Z)V
    .locals 1

    .line 5622
    iput-boolean p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->drawBackground:Z

    .line 5623
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    if-nez p1, :cond_0

    .line 5625
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->backgroundView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 5627
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->backgroundView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setEnterAnimationInProgress(Z)V
    .locals 2

    .line 6376
    iget-boolean v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->enterAnimationInProgress:Z

    if-eq v0, p1, :cond_1

    .line 6377
    iput-boolean p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->enterAnimationInProgress:Z

    if-nez p1, :cond_1

    .line 6379
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->forEachViews(Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/exoplayer2/util/Consumer;)V

    const/4 p1, 0x0

    .line 6383
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiTabsStrip;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 6384
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiTabsStrip;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 6385
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 6386
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 6388
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    iget-object p1, p1, Lorg/telegram/ui/Components/EmojiTabsStrip;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public setExpireDateHint(I)V
    .locals 1

    if-gtz p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1222
    iput-boolean v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->includeHint:Z

    .line 1223
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->hintExpireDate:Ljava/lang/Integer;

    const/4 p1, 0x0

    .line 1224
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateRows(ZZ)V

    return-void
.end method

.method public setForUser(Z)V
    .locals 0

    .line 265
    iput-boolean p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->forUser:Z

    const/4 p1, 0x0

    .line 266
    invoke-direct {p0, p1, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateRows(ZZ)V

    return-void
.end method

.method public setForumIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 6360
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->forumIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 6361
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->forumIconImage:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    if-eqz v0, :cond_0

    .line 6362
    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setLongPressEnabled(Z)V
    .locals 0

    .line 1264
    iput-boolean p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->isLongPressEnabled:Z

    return-void
.end method

.method public setMultiSelected(Ljava/lang/Long;Z)V
    .locals 7

    .line 5681
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedDocumentIds:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 5683
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedDocumentIds:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    goto :goto_0

    .line 5686
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedDocumentIds:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move v0, v1

    .line 5688
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    if-eqz v2, :cond_4

    .line 5689
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 5690
    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    if-eqz v2, :cond_2

    .line 5691
    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    .line 5692
    iget-object v3, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v3

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 5693
    invoke-virtual {v2, v0, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setViewSelectedWithScale(ZZ)V

    goto :goto_2

    .line 5694
    :cond_1
    iget-object v3, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v3, :cond_2

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 5695
    invoke-virtual {v2, v0, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setViewSelectedWithScale(ZZ)V

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5699
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->invalidate()V

    :cond_4
    return-void
.end method

.method public setOnLongPressedListener(Lorg/telegram/ui/SelectAnimatedEmojiDialog$onLongPressedListener;)V
    .locals 0

    .line 5801
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bigReactionListener:Lorg/telegram/ui/SelectAnimatedEmojiDialog$onLongPressedListener;

    return-void
.end method

.method public setOnRecentClearedListener(Lorg/telegram/ui/SelectAnimatedEmojiDialog$onRecentClearedListener;)V
    .locals 0

    .line 5805
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->onRecentClearedListener:Lorg/telegram/ui/SelectAnimatedEmojiDialog$onRecentClearedListener;

    return-void
.end method

.method public setPaused(ZZ)V
    .locals 1

    .line 1739
    iget-boolean v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->paused:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 1740
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->paused:Z

    .line 1741
    iput-boolean p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->pausedExceptSelected:Z

    .line 1742
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    if-eqz p1, :cond_1

    .line 1743
    invoke-virtual {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->invalidate()V

    .line 1745
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    if-eqz p1, :cond_2

    .line 1746
    invoke-virtual {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->invalidate()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setPressed(Z)V
    .locals 0

    return-void
.end method

.method public setRecentReactions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;",
            ">;)V"
        }
    .end annotation

    .line 5632
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentReactionsToSet:Ljava/util/List;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 5633
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateRows(ZZ)V

    return-void
.end method

.method public setSaveState(I)V
    .locals 0

    .line 5793
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->listStateId:Ljava/lang/Integer;

    return-void
.end method

.method public setScrimDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 5741
    invoke-virtual {p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->getColor()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->getColor()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    iput v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrimColor:I

    .line 5742
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrimDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    .line 5743
    iput-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrimDrawableParent:Landroid/view/View;

    .line 5744
    iget-boolean p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->isAttached:Z

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 5745
    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setSecondParent(Landroid/view/View;)V

    .line 5747
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSelected(Ljava/lang/Long;)V
    .locals 6

    .line 5662
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedDocumentIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 5663
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedDocumentIds:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5664
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 5665
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 5666
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    if-eqz v0, :cond_1

    .line 5667
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    .line 5668
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 5669
    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedDocumentIds:Ljava/util/HashSet;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setViewSelected(ZZ)V

    goto :goto_1

    .line 5671
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedDocumentIds:Ljava/util/HashSet;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setViewSelected(ZZ)V

    :cond_1
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 5675
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->invalidate()V

    :cond_3
    return-void
.end method

.method public setSelectedReaction(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V
    .locals 5

    .line 226
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedReactions:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 227
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedReactions:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 228
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    move p1, v0

    .line 229
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 230
    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    if-eqz v2, :cond_0

    .line 231
    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    .line 232
    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedReactions:Ljava/util/HashSet;

    iget-object v4, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->reaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setViewSelected(ZZ)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 235
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->invalidate()V

    .line 237
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    if-eqz p1, :cond_5

    .line 238
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ge v0, p1, :cond_4

    .line 239
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    if-eqz p1, :cond_3

    .line 240
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    .line 241
    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedReactions:Ljava/util/HashSet;

    iget-object v3, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->reaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {p1, v2, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setViewSelected(ZZ)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 244
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->invalidate()V

    :cond_5
    return-void
.end method

.method public setSelectedReactions(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedReactions:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 250
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/lang/String;

    .line 251
    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedReactions:Ljava/util/HashSet;

    invoke-static {v3}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromEmojicon(Ljava/lang/String;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 253
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    if-eqz p1, :cond_3

    .line 254
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ge v1, p1, :cond_2

    .line 255
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    if-eqz p1, :cond_1

    .line 256
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    .line 257
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedReactions:Ljava/util/HashSet;

    iget-object v2, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->reaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setViewSelected(ZZ)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 260
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->invalidate()V

    :cond_3
    return-void
.end method

.method public setSelectedReactions(Ljava/util/HashSet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;",
            ">;)V"
        }
    .end annotation

    .line 215
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedReactions:Ljava/util/HashSet;

    .line 216
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedDocumentIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p1, 0x0

    .line 218
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 219
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-wide v1, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 220
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedDocumentIds:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-wide v2, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public switchGrids(ZZ)V
    .locals 3

    .line 1553
    iget-boolean v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gridSearch:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 1556
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gridSearch:Z

    .line 1557
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1558
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1559
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gridSwitchAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 1560
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1562
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchEmptyViewAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 1563
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 1564
    iput-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchEmptyViewAnimator:Landroid/animation/ValueAnimator;

    :cond_2
    const/4 v0, 0x2

    .line 1566
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gridSwitchAnimator:Landroid/animation/ValueAnimator;

    .line 1567
    new-instance v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1578
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gridSwitchAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$22;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$22;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1596
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gridSwitchAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x140

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1597
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gridSwitchAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1598
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gridSwitchAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 1599
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1600
    iget-boolean v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gridSearch:Z

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    const/high16 v0, 0x42100000    # 36.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    .line 1601
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    .line 1602
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xa0

    .line 1603
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1604
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1605
    iget-boolean p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gridSearch:Z

    const/high16 v0, 0x42180000    # 38.0f

    const/high16 v1, 0x42580000    # 54.0f

    const/high16 v2, 0x40a00000    # 5.0f

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 1606
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p1, p2, v1, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    .line 1608
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p1, p2, v1, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 1610
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->checkScroll()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public switchSearchEmptyView(Z)V
    .locals 3

    .line 1695
    iget-boolean v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchEmptyViewVisible:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 1699
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchEmptyViewVisible:Z

    .line 1700
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchEmptyViewAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 1701
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x2

    .line 1703
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchEmptyViewAnimator:Landroid/animation/ValueAnimator;

    .line 1704
    new-instance v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda38;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda38;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1711
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchEmptyViewAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$23;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$23;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1718
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchEmptyViewAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1719
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchEmptyViewAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1720
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchEmptyViewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    if-eqz p1, :cond_2

    .line 1723
    iget p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchEmptyViewImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {p1, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateSearchEmptyViewImage(ILorg/telegram/ui/Components/BackupImageView;)V

    :cond_2
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public unselect(Ljava/lang/Long;)Z
    .locals 13

    .line 5704
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedDocumentIds:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 5706
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    move v0, v1

    move v2, v0

    .line 5707
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    if-ge v0, v3, :cond_2

    .line 5708
    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    if-eqz v3, :cond_1

    .line 5709
    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    .line 5710
    iget-object v5, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v5

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    .line 5711
    invoke-virtual {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->unselectWithScale()V

    :goto_1
    move v2, v4

    goto :goto_2

    .line 5713
    :cond_0
    iget-object v5, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v5, :cond_1

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    .line 5714
    invoke-virtual {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->unselectWithScale()V

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5719
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->invalidate()V

    if-nez v2, :cond_6

    .line 5721
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 5722
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 5723
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v9, 0xd

    mul-long/2addr v7, v9

    const-wide/32 v11, 0xf3d9

    add-long/2addr v7, v11

    cmp-long v0, v5, v7

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    mul-long/2addr v7, v9

    const-wide/16 v9, 0xc8c

    add-long/2addr v7, v9

    cmp-long v0, v5, v7

    if-nez v0, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 5724
    :cond_4
    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->adapter:Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;

    if-eqz p1, :cond_5

    .line 5725
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_5
    return v4

    :cond_6
    return v2

    :cond_7
    return v1
.end method

.method protected willApplyEmoji(Landroid/view/View;Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Integer;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
