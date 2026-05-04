.class public Lorg/telegram/ui/ArticleViewer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ArticleViewer$CheckForLongPress;,
        Lorg/telegram/ui/ArticleViewer$CheckForTap;,
        Lorg/telegram/ui/ArticleViewer$FontCell;,
        Lorg/telegram/ui/ArticleViewer$Sheet;,
        Lorg/telegram/ui/ArticleViewer$BlockListItemCell;,
        Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;,
        Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;,
        Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;,
        Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;,
        Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;,
        Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;,
        Lorg/telegram/ui/ArticleViewer$PageLayout;,
        Lorg/telegram/ui/ArticleViewer$CachedWeb;,
        Lorg/telegram/ui/ArticleViewer$WindowView;,
        Lorg/telegram/ui/ArticleViewer$WebpageAdapter;,
        Lorg/telegram/ui/ArticleViewer$WebPageUtils;,
        Lorg/telegram/ui/ArticleViewer$DrawingText;,
        Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;,
        Lorg/telegram/ui/ArticleViewer$BlockDetailsCell;,
        Lorg/telegram/ui/ArticleViewer$BlockAudioCell;,
        Lorg/telegram/ui/ArticleViewer$BlockVideoCell;,
        Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;,
        Lorg/telegram/ui/ArticleViewer$SearchResult;,
        Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;,
        Lorg/telegram/ui/ArticleViewer$BlockChannelCell;,
        Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;,
        Lorg/telegram/ui/ArticleViewer$PageBlocksPhotoViewerProvider;,
        Lorg/telegram/ui/ArticleViewer$TextSizeCell;,
        Lorg/telegram/ui/ArticleViewer$ReportCell;,
        Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;,
        Lorg/telegram/ui/ArticleViewer$ErrorContainer;,
        Lorg/telegram/ui/ArticleViewer$WebpageListView;,
        Lorg/telegram/ui/ArticleViewer$BlockSubheaderCell;,
        Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;,
        Lorg/telegram/ui/ArticleViewer$BlockFooterCell;,
        Lorg/telegram/ui/ArticleViewer$BlockKickerCell;,
        Lorg/telegram/ui/ArticleViewer$BlockTitleCell;,
        Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;,
        Lorg/telegram/ui/ArticleViewer$BlockMapCell;,
        Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;,
        Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;,
        Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;,
        Lorg/telegram/ui/ArticleViewer$BlockSubtitleCell;,
        Lorg/telegram/ui/ArticleViewer$BlockDividerCell;,
        Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;,
        Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesHeaderCell;,
        Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesShadowCell;,
        Lorg/telegram/ui/ArticleViewer$BlockDetailsBottomCell;,
        Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;,
        Lorg/telegram/ui/ArticleViewer$BlockCollageCell;,
        Lorg/telegram/ui/ArticleViewer$BlockTableCell;,
        Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;,
        Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;,
        Lorg/telegram/ui/ArticleViewer$TL_pageBlockEmbedPostCaption;,
        Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesShadow;
    }
.end annotation


# static fields
.field public static final ARTICLE_VIEWER_INNER_TRANSLATION_X:Landroid/util/Property;

.field private static volatile Instance:Lorg/telegram/ui/ArticleViewer;

.field public static activeSheets:Ljava/util/HashSet;

.field private static final audioTimePaint:Landroid/text/TextPaint;

.field private static final authorTextPaints:Landroid/util/SparseArray;

.field private static channelNamePaint:Landroid/text/TextPaint;

.field private static channelNamePhotoPaint:Landroid/text/TextPaint;

.field private static final detailsTextPaints:Landroid/util/SparseArray;

.field private static dividerPaint:Landroid/graphics/Paint;

.field private static dotsPaint:Landroid/graphics/Paint;

.field private static embedPostAuthorPaint:Landroid/text/TextPaint;

.field private static final embedPostCaptionTextPaints:Landroid/util/SparseArray;

.field private static embedPostDatePaint:Landroid/text/TextPaint;

.field private static final embedPostTextPaints:Landroid/util/SparseArray;

.field private static errorTextPaint:Landroid/text/TextPaint;

.field private static final footerTextPaints:Landroid/util/SparseArray;

.field private static final headerTextPaints:Landroid/util/SparseArray;

.field private static final kickerTextPaints:Landroid/util/SparseArray;

.field private static listTextNumPaint:Landroid/text/TextPaint;

.field private static final listTextPaints:Landroid/util/SparseArray;

.field private static listTextPointerPaint:Landroid/text/TextPaint;

.field private static final mediaCaptionTextPaints:Landroid/util/SparseArray;

.field private static final mediaCreditTextPaints:Landroid/util/SparseArray;

.field private static final paragraphTextPaints:Landroid/util/SparseArray;

.field private static photoBackgroundPaint:Landroid/graphics/Paint;

.field private static final photoCaptionTextPaints:Landroid/util/SparseArray;

.field private static final photoCreditTextPaints:Landroid/util/SparseArray;

.field private static preformattedBackgroundPaint:Landroid/graphics/Paint;

.field private static final preformattedTextPaints:Landroid/util/SparseArray;

.field private static quoteLinePaint:Landroid/graphics/Paint;

.field private static final quoteTextPaints:Landroid/util/SparseArray;

.field private static relatedArticleHeaderPaint:Landroid/text/TextPaint;

.field private static relatedArticleTextPaint:Landroid/text/TextPaint;

.field private static final relatedArticleTextPaints:Landroid/util/SparseArray;

.field private static final subheaderTextPaints:Landroid/util/SparseArray;

.field private static final subtitleTextPaints:Landroid/util/SparseArray;

.field private static tableHalfLinePaint:Landroid/graphics/Paint;

.field private static tableHeaderPaint:Landroid/graphics/Paint;

.field private static tableLinePaint:Landroid/graphics/Paint;

.field private static tableStripPaint:Landroid/graphics/Paint;

.field private static final tableTextPaints:Landroid/util/SparseArray;

.field private static final titleTextPaints:Landroid/util/SparseArray;

.field private static urlPaint:Landroid/graphics/Paint;

.field private static webpageMarkPaint:Landroid/graphics/Paint;

.field private static webpageSearchPaint:Landroid/graphics/Paint;

.field private static webpageUrlPaint:Landroid/graphics/Paint;


# instance fields
.field private final BOTTOM_SHEET_VIEW_TAG:Ljava/lang/String;

.field private actionBar:Lorg/telegram/ui/web/WebActionBar;

.field private addressBarList:Lorg/telegram/ui/web/AddressBarList;

.field private anchorsOffsetMeasuredWidth:I

.field private animationEndRunnable:Ljava/lang/Runnable;

.field private animationInProgress:I

.field private attachedToWindow:Z

.field private backgroundPaint:Landroid/graphics/Paint;

.field private bulletinContainer:Landroid/widget/FrameLayout;

.field private chat_redLocationIcon:Landroid/graphics/drawable/Drawable;

.field private checkingForLongPress:Z

.field private closeAnimationInProgress:Z

.field private collapsed:Z

.field private containerView:Landroid/widget/FrameLayout;

.field private createdWebViews:Ljava/util/ArrayList;

.field private currentAccount:I

.field private currentHeaderHeight:I

.field currentPlayer:Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

.field private currentPlayingVideo:Lorg/telegram/ui/Components/WebPlayerView;

.field private currentSearchIndex:I

.field private customView:Landroid/view/View;

.field private customViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private deleteView:Landroid/widget/TextView;

.field private drawBlockSelection:Z

.field private fontCells:[Lorg/telegram/ui/ArticleViewer$FontCell;

.field private fullscreenAspectRatioView:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

.field private fullscreenTextureView:Landroid/view/TextureView;

.field private fullscreenVideoContainer:Landroid/widget/FrameLayout;

.field private fullscreenedVideo:Lorg/telegram/ui/Components/WebPlayerView;

.field private hasCutout:Z

.field private headerPaint:Landroid/graphics/Paint;

.field private headerProgressPaint:Landroid/graphics/Paint;

.field private interpolator:Landroid/view/animation/DecelerateInterpolator;

.field public final isSheet:Z

.field private isVisible:Z

.field private keyboardVisible:Z

.field private lastBlockNum:I

.field private lastInsets:Ljava/lang/Object;

.field private lastReqId:I

.field private lastSearchIndex:I

.field private lineProgressTickRunnable:Ljava/lang/Runnable;

.field private linkSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

.field private links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

.field private loadedChannel:Lorg/telegram/tgnet/TLRPC$Chat;

.field private loadingChannel:Z

.field private loadingLink:Lorg/telegram/ui/Components/TextPaintUrlSpan;

.field private loadingLinkDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

.field private loadingLinkView:Landroid/view/View;

.field private loadingProgress:Lorg/telegram/messenger/browser/Browser$Progress;

.field private loadingText:Lorg/telegram/ui/ArticleViewer$DrawingText;

.field private navigationBarPaint:Landroid/graphics/Paint;

.field private final notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

.field private openUrlReqId:I

.field private final page0Background:Lorg/telegram/ui/Components/AnimatedColor;

.field private final page1Background:Lorg/telegram/ui/Components/AnimatedColor;

.field private pageSwitchAnimation:Landroid/animation/AnimatorSet;

.field public pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

.field public final pagesStack:Ljava/util/ArrayList;

.field private parentActivity:Landroid/app/Activity;

.field private parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private pendingCheckForLongPress:Lorg/telegram/ui/ArticleViewer$CheckForLongPress;

.field private pendingCheckForTap:Lorg/telegram/ui/ArticleViewer$CheckForTap;

.field pinchToZoomHelper:Lorg/telegram/ui/PinchToZoomHelper;

.field private popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

.field private popupRect:Landroid/graphics/Rect;

.field private popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

.field private pressCount:I

.field private pressedLayoutY:I

.field private pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

.field private pressedLinkOwnerLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

.field private pressedLinkOwnerView:Landroid/view/View;

.field private previewsReqId:I

.field private progressView:Lorg/telegram/ui/Components/ContextProgressView;

.field private progressViewAnimation:Landroid/animation/AnimatorSet;

.field private runAfterKeyboardClose:Landroid/animation/AnimatorSet;

.field private scrimPaint:Landroid/graphics/Paint;

.field private searchCountText:Lorg/telegram/ui/Components/AnimatedTextView;

.field private searchDownButton:Landroid/widget/ImageView;

.field private searchPanel:Landroid/widget/FrameLayout;

.field private searchPanelAlpha:F

.field private searchPanelAnimator:Landroid/animation/ValueAnimator;

.field private searchPanelTranslation:F

.field private searchResults:Ljava/util/ArrayList;

.field private searchRunnable:Ljava/lang/Runnable;

.field private searchText:Ljava/lang/String;

.field private searchUpButton:Landroid/widget/ImageView;

.field private selectedFont:I

.field public final sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

.field private showRestrictedToastOnResume:Z

.field private slideDotBigDrawable:Landroid/graphics/drawable/Drawable;

.field private slideDotDrawable:Landroid/graphics/drawable/Drawable;

.field private statusBarPaint:Landroid/graphics/Paint;

.field textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

.field textSelectionHelperBottomSheet:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

.field private transitionAnimationStartTime:J

.field private urlPath:Lorg/telegram/ui/Components/LinkPath;

.field videoPlayer:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

.field private videoStates:Landroidx/collection/LongSparseArray;

.field private visibleDialog:Landroid/app/Dialog;

.field private windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private windowView:Lorg/telegram/ui/ArticleViewer$WindowView;


# direct methods
.method public static synthetic $r8$lambda$2xiPyqtpjVazUYUJ_fXqeS-NKjA(Lorg/telegram/ui/ArticleViewer$PageLayout;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 6

    .line 3978
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3979
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 3980
    :cond_1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3981
    invoke-static {v0, v1, v2, v1}, Lorg/telegram/messenger/AndroidUtilities;->addLinksSafe(Landroid/text/Spannable;IZZ)Z

    .line 3982
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const-class v3, Landroid/text/style/URLSpan;

    invoke-virtual {v0, v2, v1, v3}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/URLSpan;

    .line 3983
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    move v4, v3

    move v3, v2

    .line 3984
    :goto_0
    array-length v5, v1

    if-ge v2, v5, :cond_2

    .line 3985
    aget-object v5, v1, v2

    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 3986
    aget-object v5, v1, v2

    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3988
    :cond_2
    invoke-static {p2}, Lorg/telegram/messenger/Utilities;->uriParseSafe(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3989
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v5, "javascript"

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    return-void

    .line 3990
    :cond_3
    array-length v1, v1

    if-lez v1, :cond_4

    if-nez v4, :cond_4

    if-gtz v3, :cond_5

    :cond_4
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    :cond_5
    if-eqz v0, :cond_6

    .line 3991
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_6

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_6

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 3992
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string p2, "/"

    const-string v1, "https"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Lorg/telegram/messenger/browser/Browser;->replace(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3994
    :cond_6
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object p0

    invoke-virtual {p0, p2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->loadUrl(Ljava/lang/String;)V

    return-void

    .line 3996
    :cond_7
    invoke-static {p1, p2}, Lorg/telegram/ui/web/AddressBarList;->pushRecentSearch(Landroid/content/Context;Ljava/lang/String;)V

    .line 3997
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object p0

    invoke-static {}, Lorg/telegram/ui/web/SearchEngine;->getCurrent()Lorg/telegram/ui/web/SearchEngine;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/web/SearchEngine;->getSearchURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3JzqyA-pL7fDkmI5BvLTETBm1gQ(Lorg/telegram/ui/ArticleViewer;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->lambda$setParentActivity$42(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3Qr9UjMP5eNavR8PVerwfaonil4(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->lambda$setParentActivity$23(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$46VNIEK1oQEyIV2REdhuLSED6u4(Lorg/telegram/ui/ArticleViewer;ILjava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ArticleViewer;->lambda$processSearch$47(ILjava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5E1vdBvrrjBWkfx6S0d6SzVYFFQ(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->lambda$setParentActivity$29(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$5i3jJx0KZY2IWJJ_NJzrb_oJ-7M(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;ILorg/telegram/ui/ArticleViewer$BlockChannelCell;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/ArticleViewer;->lambda$loadChannel$59(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;ILorg/telegram/ui/ArticleViewer$BlockChannelCell;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5zPVfTO5v_JTH-mjZBaStGv_NEs(Lorg/telegram/ui/ArticleViewer;Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->lambda$open$55(Landroid/animation/AnimatorSet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6-n2OE9fePGwDZrrUnnHW7_WFF0(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$BlockChannelCell;ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_channels_joinChannel;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ArticleViewer;->lambda$joinChannel$60(Lorg/telegram/ui/ArticleViewer$BlockChannelCell;ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_channels_joinChannel;)V

    return-void
.end method

.method public static synthetic $r8$lambda$71mzRDI9sea1miIMh8qPw4K6kts(Lorg/telegram/ui/ArticleViewer;ILorg/telegram/messenger/browser/Browser$Progress;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback0Return;Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/ArticleViewer;->lambda$openWebpageUrl$8(ILorg/telegram/messenger/browser/Browser$Progress;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback0Return;Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$74RSsw0yybn2MfWSYAcftwLHfzs(Lorg/telegram/ui/ArticleViewer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->lambda$showPopup$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$7KKE5Usa_0QX3Ls8_4QAuVSOHaI(Lorg/telegram/ui/Cells/CheckBoxCell;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 4430
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/CheckBoxCell;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 4431
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    .line 4433
    :cond_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic $r8$lambda$7PNxg_fBXKrhtUNhm-5jjKeHOEE(Lorg/telegram/ui/ArticleViewer;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->lambda$checkScrollAnimated$51(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7RSgg1YKJChwz_RPG9lOgx8hXEY(Lorg/telegram/ui/Cells/CheckBoxCell;Landroid/view/View;)V
    .locals 1

    .line 4420
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/CheckBoxCell;->isChecked()Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$8A39jZERGgA4RMHyrLPv8Klu3tM(Lorg/telegram/ui/ArticleViewer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->lambda$setParentActivity$31()V

    return-void
.end method

.method public static synthetic $r8$lambda$9DnTvZRUpNK4xn3ekn2boXqSvW0(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;I)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ArticleViewer;->lambda$setParentActivity$12(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$D3c0nSuNaaJAHfSY4aTWgYy6Zxc(Lorg/telegram/ui/ArticleViewer;[F)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->lambda$setParentActivity$46([F)V

    return-void
.end method

.method public static synthetic $r8$lambda$EAKVzCDclIZH6PySrP_iuu56nG8(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLObject;IJ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ArticleViewer;->lambda$setParentActivity$13(Lorg/telegram/tgnet/TLObject;IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ej2qq_zaN-Z51WPi_6kpmaClDyc(Lorg/telegram/ui/ArticleViewer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->lambda$close$56()V

    return-void
.end method

.method public static synthetic $r8$lambda$ErZmxaCY5Sg7SiFZ1r6wurONDzA(Lorg/telegram/ui/ArticleViewer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->showRestrictedWebsiteToast()V

    return-void
.end method

.method public static synthetic $r8$lambda$FenXyp6aOsonyPRNqs-iyNgVGCs(Lorg/telegram/ui/ArticleViewer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ArticleViewer;->lambda$setParentActivity$34(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ibkim-OyKH79lwMf9-vChsw5j00(Lorg/telegram/ui/ArticleViewer;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ArticleViewer;->lambda$processSearch$48(Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$JeMxWUH-vj0YgmVSHEZmZQ94AnM(Lorg/telegram/ui/ArticleViewer;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->lambda$setParentActivity$25(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$JyBr_v3Uk9wjG6QJND2ToVaQnYA(Lorg/telegram/ui/ArticleViewer;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->lambda$showSearchPanel$50(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JziWUOsdvQXPo3UhDodq01ese40(Lorg/telegram/ui/ArticleViewer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->lambda$onClosed$57()V

    return-void
.end method

.method public static synthetic $r8$lambda$KFFW2NZRKrYYdssSa_aQqKSVuqw(Lorg/telegram/ui/ArticleViewer;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->lambda$setParentActivity$18(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KPTNicpi7EdHcbt2VwrslDCAdWc(Lorg/telegram/ui/ArticleViewer;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->lambda$showDialog$64(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ks2Cyb79Lr1QJeHp-g-ta-Cfems(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ArticleViewer;->lambda$showPopup$2(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$L5i5IBNeZkt3_FHAdkzBPkcEhss(Lorg/telegram/ui/ArticleViewer;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->lambda$showCopyPopup$1(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MIspBkfQUi7WUdTvE9gLEVQXTMM(Lorg/telegram/ui/ArticleViewer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->lambda$open$54()V

    return-void
.end method

.method public static synthetic $r8$lambda$Mcm804LrLC8EIOUZba7nv0Jtv74(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$PageLayout;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ArticleViewer;->lambda$setParentActivity$17(Lorg/telegram/ui/ArticleViewer$PageLayout;Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Mw6jU7MdCnYhrTErivWQygxJQLc(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->lambda$setParentActivity$38(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PQrku7tcemgYl_de1IZpObu89ZE(Lorg/telegram/ui/ArticleViewer;ILorg/telegram/messenger/browser/Browser$Progress;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ArticleViewer;->lambda$openWebpageUrl$10(ILorg/telegram/messenger/browser/Browser$Progress;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PZJ2WZeK73MBHrUqQZnsOrz89gI(Lorg/telegram/ui/ArticleViewer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->updateSearchButtons()V

    return-void
.end method

.method public static synthetic $r8$lambda$P_abgDcpZIxX5ak0olc1nxk6ZRI(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/Components/ItemOptions;F)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ArticleViewer;->lambda$setParentActivity$28(Lorg/telegram/ui/Components/ItemOptions;F)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q4AlMxFUjXURIBoCieDvqJx2UXE(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;ILorg/telegram/ui/ArticleViewer$BlockChannelCell;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/ArticleViewer;->lambda$loadChannel$58(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;ILorg/telegram/ui/ArticleViewer$BlockChannelCell;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Stx_b7xHEknyC63zc_pg5GKJ9cQ(Lorg/telegram/ui/ArticleViewer;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ArticleViewer;->lambda$showCopyPopup$0(Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$UpV9H9kWZ4zpr_27ccpC_H0TWfM(Lorg/telegram/ui/ArticleViewer;Ljava/lang/String;Lorg/telegram/ui/ArticleViewer$PageLayout;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ArticleViewer;->lambda$setParentActivity$19(Ljava/lang/String;Lorg/telegram/ui/ArticleViewer$PageLayout;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VXtfEI-lBXzqpN1-Lz-N82g3pIM(Lorg/telegram/ui/ArticleViewer;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ArticleViewer;->lambda$setParentActivity$45(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XmkP9jJ0oZjt9IkjTLecgXMmIpU(Lorg/telegram/ui/ArticleViewer;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ArticleViewer;->lambda$setParentActivity$21(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YRBAiBzWW7uPSqKz5G8i1rJZHkc(Lorg/telegram/ui/ArticleViewer;F)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->lambda$setParentActivity$27(F)V

    return-void
.end method

.method public static synthetic $r8$lambda$YXe_wQ34ixh-tjrSBFnLRK-DPzk(Lorg/telegram/ui/ArticleViewer;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->lambda$setParentActivity$26(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$YZt3JwBVPOWZ540B8gXL4raLrA8(Lorg/telegram/ui/ArticleViewer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->lambda$new$66()V

    return-void
.end method

.method public static synthetic $r8$lambda$YqDs-YcWI0A51_vtqz5-OahmfjQ(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLObject;ILorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/messenger/MessageObject;ZLjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/ArticleViewer;->lambda$open$52(Lorg/telegram/tgnet/TLObject;ILorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/messenger/MessageObject;ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZGe3oFGdbO7rSyYorGlEA6hE4nY(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$PageLayout;Landroid/view/View;IFF)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/ArticleViewer;->lambda$setParentActivity$15(Lorg/telegram/ui/ArticleViewer$PageLayout;Landroid/view/View;IFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZoymgkU5M0EdB0B1XJazO7r2mOM(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->lambda$showPopup$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_9BdP1iSx5knO-BTir8RQ_et1mw(Lorg/telegram/ui/ArticleViewer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->lambda$new$65()V

    return-void
.end method

.method public static synthetic $r8$lambda$_A7ZbaJTWtRFNJ9i1uMCXsHoFvs(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 3727
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p0, v0, :cond_0

    .line 3728
    sget-object p0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    return-object p0

    .line 3730
    :cond_0
    invoke-virtual {p1}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$cWgtSV60aRjwDDSI0Em2jYY9KAQ(IILorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sub-int v1, p0, p1

    if-ge v0, v1, :cond_0

    .line 4087
    invoke-virtual {p2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->goBack()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$fzUfJCuVcR9pJw8IlkL6iIMONWs(Lorg/telegram/ui/ArticleViewer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->lambda$setParentActivity$32()V

    return-void
.end method

.method public static synthetic $r8$lambda$hsTA_fZ3GR-6sVQb8CZVfvuz5AY(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$BlockChannelCell;ILorg/telegram/tgnet/TLRPC$TL_channels_joinChannel;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/ArticleViewer;->lambda$joinChannel$63(Lorg/telegram/ui/ArticleViewer$BlockChannelCell;ILorg/telegram/tgnet/TLRPC$TL_channels_joinChannel;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iukNd7v87xJy0i7C44T8TAbfG3E(Lorg/telegram/ui/ArticleViewer;ILorg/telegram/messenger/browser/Browser$Progress;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback0Return;Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/ArticleViewer;->lambda$openWebpageUrl$9(ILorg/telegram/messenger/browser/Browser$Progress;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback0Return;Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$k8SmtKl6hnJOJKzc6bRUolHMx9M(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/messenger/browser/Browser$Progress;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->lambda$openWebpageUrl$6(Lorg/telegram/messenger/browser/Browser$Progress;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kU6fTCaIFnJQ4nS5wQJ1PnkvwDQ(Lorg/telegram/ui/ArticleViewer$BlockChannelCell;)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 5630
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->setState(IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$lSY8gO_r4PkZeAOUCsZ9YUe_Els(Lorg/telegram/ui/ArticleViewer;IJLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/ArticleViewer;->lambda$setParentActivity$14(IJLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lWTJQh2Et8vwZXpC0EAUgAccDpg(Lorg/telegram/ui/ArticleViewer;Landroid/app/Activity;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ArticleViewer;->lambda$setParentActivity$39(Landroid/app/Activity;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$msNyQFi-4l3XamLzHc5qpQhJNVg(Lorg/telegram/ui/ArticleViewer;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ArticleViewer;->lambda$processSearch$49(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ovQ2hXqTrIfSqHvWxMo7D7uT0tQ(Lorg/telegram/ui/ArticleViewer;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ArticleViewer;->lambda$setParentActivity$30(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$p0ytIiutpJ3zaqvIeT7MOealMtQ(Lorg/telegram/ui/Cells/CheckBoxCell;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 4436
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/CheckBoxCell;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 4437
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$pl0slQy5x33A7grZfdTILuSmLyM(Lorg/telegram/ui/ArticleViewer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->lambda$setParentActivity$22()V

    return-void
.end method

.method public static synthetic $r8$lambda$qIlsc7XBZ4Op3OvkU5rA31kTcyM(ILorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 3

    .line 5631
    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, p1, v2}, Lorg/telegram/messenger/MessagesController;->loadFullChat(JIZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$q_-7GFU0rtEsI4dIXs6DriNrD24(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->lambda$setParentActivity$43(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qsSkqdTw1FFGoIa-mSDXsebhBB8(Lorg/telegram/ui/ArticleViewer;ILorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/messenger/MessageObject;ZLjava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/ArticleViewer;->lambda$open$53(ILorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/messenger/MessageObject;ZLjava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rPVruKw-omVEjF07Lh_TBifSPf4(Lorg/telegram/ui/ArticleViewer;Landroid/view/KeyEvent;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->lambda$showPopup$3(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sUClGuRSBgXh1ZpoiY2wm0JuJ3s(Lorg/telegram/ui/ArticleViewer;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->lambda$setParentActivity$33(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sozvfbYwel_rKPApn-7AqBEVlq0(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->lambda$setParentActivity$44(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vechHoie9NMFryO-nECOqKxYrF4(Lorg/telegram/ui/ArticleViewer;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->lambda$setParentActivity$16(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$w-F0BfBloi8NgjQYS-FiKIVvBzw(Lorg/telegram/ui/ArticleViewer;Ljava/lang/String;[ZLorg/telegram/messenger/browser/Browser$Progress;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ArticleViewer;->lambda$openWebpageUrl$7(Ljava/lang/String;[ZLorg/telegram/messenger/browser/Browser$Progress;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xzBAUvRoPwkdP1Bw_gViZ2JP4ug(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->lambda$setParentActivity$40(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y4pZLAj8ZxXueI7mQQ1oilqNUWU(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 4528
    const/4 p0, 0x1

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetactionBar(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/web/WebActionBar;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetaddressBarList(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/web/AddressBarList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->addressBarList:Lorg/telegram/ui/web/AddressBarList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetanchorsOffsetMeasuredWidth(Lorg/telegram/ui/ArticleViewer;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ArticleViewer;->anchorsOffsetMeasuredWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetanimationEndRunnable(Lorg/telegram/ui/ArticleViewer;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->animationEndRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbackgroundPaint(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/Paint;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->backgroundPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetchat_redLocationIcon(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->chat_redLocationIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcheckingForLongPress(Lorg/telegram/ui/ArticleViewer;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ArticleViewer;->checkingForLongPress:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcloseAnimationInProgress(Lorg/telegram/ui/ArticleViewer;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ArticleViewer;->closeAnimationInProgress:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcollapsed(Lorg/telegram/ui/ArticleViewer;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ArticleViewer;->collapsed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcontainerView(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcreatedWebViews(Lorg/telegram/ui/ArticleViewer;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->createdWebViews:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentAccount(Lorg/telegram/ui/ArticleViewer;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ArticleViewer;->currentAccount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentHeaderHeight(Lorg/telegram/ui/ArticleViewer;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ArticleViewer;->currentHeaderHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentPlayingVideo(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/WebPlayerView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->currentPlayingVideo:Lorg/telegram/ui/Components/WebPlayerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentSearchIndex(Lorg/telegram/ui/ArticleViewer;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ArticleViewer;->currentSearchIndex:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcustomView(Lorg/telegram/ui/ArticleViewer;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->customView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcustomViewCallback(Lorg/telegram/ui/ArticleViewer;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->customViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdrawBlockSelection(Lorg/telegram/ui/ArticleViewer;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ArticleViewer;->drawBlockSelection:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetfullscreenAspectRatioView(Lorg/telegram/ui/ArticleViewer;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenAspectRatioView:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfullscreenTextureView(Lorg/telegram/ui/ArticleViewer;)Landroid/view/TextureView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenTextureView:Landroid/view/TextureView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfullscreenVideoContainer(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgethasCutout(Lorg/telegram/ui/ArticleViewer;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ArticleViewer;->hasCutout:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisVisible(Lorg/telegram/ui/ArticleViewer;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ArticleViewer;->isVisible:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetkeyboardVisible(Lorg/telegram/ui/ArticleViewer;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ArticleViewer;->keyboardVisible:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlastBlockNum(Lorg/telegram/ui/ArticleViewer;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ArticleViewer;->lastBlockNum:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlastInsets(Lorg/telegram/ui/ArticleViewer;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->lastInsets:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlinkSheet(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ActionBar/BottomSheet;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->linkSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlinks(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetloadedChannel(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->loadedChannel:Lorg/telegram/tgnet/TLRPC$Chat;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetloadingLinkDrawable(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/LoadingDrawable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->loadingLinkDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetloadingLinkView(Lorg/telegram/ui/ArticleViewer;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->loadingLinkView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnavigationBarPaint(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/Paint;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->navigationBarPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnotificationsLocker(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/messenger/AnimationNotificationsLocker;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpage0Background(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/AnimatedColor;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->page0Background:Lorg/telegram/ui/Components/AnimatedColor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpage1Background(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/AnimatedColor;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->page1Background:Lorg/telegram/ui/Components/AnimatedColor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpageSwitchAnimation(Lorg/telegram/ui/ArticleViewer;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->pageSwitchAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetparentActivity(Lorg/telegram/ui/ArticleViewer;)Landroid/app/Activity;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetparentFragment(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpendingCheckForLongPress(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ArticleViewer$CheckForLongPress;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->pendingCheckForLongPress:Lorg/telegram/ui/ArticleViewer$CheckForLongPress;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpopupWindow(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpressCount(Lorg/telegram/ui/ArticleViewer;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ArticleViewer;->pressCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpressedLayoutY(Lorg/telegram/ui/ArticleViewer;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ArticleViewer;->pressedLayoutY:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpressedLink(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/LinkSpanDrawable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpressedLinkOwnerLayout(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ArticleViewer$DrawingText;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->pressedLinkOwnerLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpressedLinkOwnerView(Lorg/telegram/ui/ArticleViewer;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->pressedLinkOwnerView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetprogressView(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/ContextProgressView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetprogressViewAnimation(Lorg/telegram/ui/ArticleViewer;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->progressViewAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrunAfterKeyboardClose(Lorg/telegram/ui/ArticleViewer;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->runAfterKeyboardClose:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetscrimPaint(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/Paint;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->scrimPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchPanel(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->searchPanel:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchPanelAlpha(Lorg/telegram/ui/ArticleViewer;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ArticleViewer;->searchPanelAlpha:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchPanelTranslation(Lorg/telegram/ui/ArticleViewer;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ArticleViewer;->searchPanelTranslation:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchResults(Lorg/telegram/ui/ArticleViewer;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->searchResults:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchText(Lorg/telegram/ui/ArticleViewer;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->searchText:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetslideDotBigDrawable(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->slideDotBigDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetslideDotDrawable(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->slideDotDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstatusBarPaint(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/Paint;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->statusBarPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetvideoStates(Lorg/telegram/ui/ArticleViewer;)Landroidx/collection/LongSparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->videoStates:Landroidx/collection/LongSparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwindowView(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ArticleViewer$WindowView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputanchorsOffsetMeasuredWidth(Lorg/telegram/ui/ArticleViewer;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/ArticleViewer;->anchorsOffsetMeasuredWidth:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputanimationEndRunnable(Lorg/telegram/ui/ArticleViewer;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->animationEndRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputattachedToWindow(Lorg/telegram/ui/ArticleViewer;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/ArticleViewer;->attachedToWindow:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputchat_redLocationIcon(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->chat_redLocationIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcheckingForLongPress(Lorg/telegram/ui/ArticleViewer;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/ArticleViewer;->checkingForLongPress:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcloseAnimationInProgress(Lorg/telegram/ui/ArticleViewer;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/ArticleViewer;->closeAnimationInProgress:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcurrentPlayingVideo(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/Components/WebPlayerView;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->currentPlayingVideo:Lorg/telegram/ui/Components/WebPlayerView;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcustomView(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->customView:Landroid/view/View;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcustomViewCallback(Lorg/telegram/ui/ArticleViewer;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->customViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputdrawBlockSelection(Lorg/telegram/ui/ArticleViewer;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/ArticleViewer;->drawBlockSelection:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputfullscreenedVideo(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/Components/WebPlayerView;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenedVideo:Lorg/telegram/ui/Components/WebPlayerView;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputhasCutout(Lorg/telegram/ui/ArticleViewer;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/ArticleViewer;->hasCutout:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputkeyboardVisible(Lorg/telegram/ui/ArticleViewer;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/ArticleViewer;->keyboardVisible:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastBlockNum(Lorg/telegram/ui/ArticleViewer;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/ArticleViewer;->lastBlockNum:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastInsets(Lorg/telegram/ui/ArticleViewer;Ljava/lang/Object;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->lastInsets:Ljava/lang/Object;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputloadedChannel(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->loadedChannel:Lorg/telegram/tgnet/TLRPC$Chat;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputloadingLink(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/Components/TextPaintUrlSpan;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->loadingLink:Lorg/telegram/ui/Components/TextPaintUrlSpan;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputloadingLinkDrawable(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/Components/LoadingDrawable;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->loadingLinkDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputloadingLinkView(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->loadingLinkView:Landroid/view/View;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputloadingText(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$DrawingText;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->loadingText:Lorg/telegram/ui/ArticleViewer$DrawingText;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpageSwitchAnimation(Lorg/telegram/ui/ArticleViewer;Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->pageSwitchAnimation:Landroid/animation/AnimatorSet;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpendingCheckForLongPress(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$CheckForLongPress;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->pendingCheckForLongPress:Lorg/telegram/ui/ArticleViewer$CheckForLongPress;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpressCount(Lorg/telegram/ui/ArticleViewer;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/ArticleViewer;->pressCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpressedLink(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/Components/LinkSpanDrawable;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpressedLinkOwnerLayout(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$DrawingText;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->pressedLinkOwnerLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpressedLinkOwnerView(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->pressedLinkOwnerView:Landroid/view/View;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputprogressViewAnimation(Lorg/telegram/ui/ArticleViewer;Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->progressViewAnimation:Landroid/animation/AnimatorSet;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputrunAfterKeyboardClose(Lorg/telegram/ui/ArticleViewer;Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->runAfterKeyboardClose:Landroid/animation/AnimatorSet;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsearchPanelAlpha(Lorg/telegram/ui/ArticleViewer;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/ArticleViewer;->searchPanelAlpha:F

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckLayoutForLinks(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Landroid/view/MotionEvent;Landroid/view/View;Lorg/telegram/ui/ArticleViewer$DrawingText;II)Z
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/ArticleViewer;->checkLayoutForLinks(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Landroid/view/MotionEvent;Landroid/view/View;Lorg/telegram/ui/ArticleViewer$DrawingText;II)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mcheckScroll(Lorg/telegram/ui/ArticleViewer;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->checkScroll(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckVideoPlayer(Lorg/telegram/ui/ArticleViewer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->checkVideoPlayer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateLayoutForText(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Landroid/text/Layout$Alignment;ILorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p9}, Lorg/telegram/ui/ArticleViewer;->createLayoutForText(Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Landroid/text/Layout$Alignment;ILorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcreateLayoutForText(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Landroid/text/Layout$Alignment;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p8}, Lorg/telegram/ui/ArticleViewer;->createLayoutForText(Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Landroid/text/Layout$Alignment;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcreateLayoutForText(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/ArticleViewer;->createLayoutForText(Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdrawTextSelection(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ArticleViewer;->drawTextSelection(Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdrawTextSelection(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ArticleViewer;->drawTextSelection(Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfixListBlock(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLRPC$PageBlock;Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLRPC$PageBlock;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ArticleViewer;->fixListBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetBlockCaption(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLRPC$PageBlock;I)Lorg/telegram/tgnet/TLRPC$RichText;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ArticleViewer;->getBlockCaption(Lorg/telegram/tgnet/TLRPC$PageBlock;I)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetGrayTextColor(Lorg/telegram/ui/ArticleViewer;)I
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getGrayTextColor()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetLastNonListPageBlock(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLRPC$PageBlock;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getLastNonListPageBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetLinkTextColor(Lorg/telegram/ui/ArticleViewer;)I
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getLinkTextColor()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetText(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLRPC$WebPage;Landroid/view/View;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;I)Ljava/lang/CharSequence;
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/ArticleViewer;->getText(Lorg/telegram/tgnet/TLRPC$WebPage;Landroid/view/View;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetText(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Landroid/view/View;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;I)Ljava/lang/CharSequence;
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/ArticleViewer;->getText(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Landroid/view/View;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetTextColor(Lorg/telegram/ui/ArticleViewer;)I
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgoBack(Lorg/telegram/ui/ArticleViewer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->goBack()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misListItemBlock(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLRPC$PageBlock;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->isListItemBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mjoinChannel(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$BlockChannelCell;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ArticleViewer;->joinChannel(Lorg/telegram/ui/ArticleViewer$BlockChannelCell;Lorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mloadChannel(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$BlockChannelCell;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ArticleViewer;->loadChannel(Lorg/telegram/ui/ArticleViewer$BlockChannelCell;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmakeProgress(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/Components/LinkSpanDrawable;Lorg/telegram/ui/ArticleViewer$DrawingText;)Lorg/telegram/messenger/browser/Browser$Progress;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ArticleViewer;->makeProgress(Lorg/telegram/ui/Components/LinkSpanDrawable;Lorg/telegram/ui/ArticleViewer$DrawingText;)Lorg/telegram/messenger/browser/Browser$Progress;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monClosed(Lorg/telegram/ui/ArticleViewer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->onClosed()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mopenWebpageUrl(Lorg/telegram/ui/ArticleViewer;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/browser/Browser$Progress;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ArticleViewer;->openWebpageUrl(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/browser/Browser$Progress;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mprocessSearch(Lorg/telegram/ui/ArticleViewer;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->processSearch(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremovePressedLink(Lorg/telegram/ui/ArticleViewer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->removePressedLink()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msaveCurrentPagePosition(Lorg/telegram/ui/ArticleViewer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->saveCurrentPagePosition()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetCurrentHeaderHeight(Lorg/telegram/ui/ArticleViewer;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->setCurrentHeaderHeight(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowCopyPopup(Lorg/telegram/ui/ArticleViewer;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->showCopyPopup(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowPopup(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;III)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ArticleViewer;->showPopup(Landroid/view/View;III)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateInterfaceForCurrentPage(Lorg/telegram/ui/ArticleViewer;Ljava/lang/Object;ZI)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ArticleViewer;->updateInterfaceForCurrentPage(Ljava/lang/Object;ZI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePaintSize(Lorg/telegram/ui/ArticleViewer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->updatePaintSize()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mwrapInTableBlock(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLRPC$PageBlock;Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLRPC$PageBlock;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ArticleViewer;->wrapInTableBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetaudioTimePaint()Landroid/text/TextPaint;
    .locals 1

    .line 0
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->audioTimePaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetdividerPaint()Landroid/graphics/Paint;
    .locals 1

    .line 0
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->dividerPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetdotsPaint()Landroid/graphics/Paint;
    .locals 1

    .line 0
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->dotsPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetlistTextNumPaint()Landroid/text/TextPaint;
    .locals 1

    .line 0
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->listTextNumPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetphotoBackgroundPaint()Landroid/graphics/Paint;
    .locals 1

    .line 0
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->photoBackgroundPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetpreformattedBackgroundPaint()Landroid/graphics/Paint;
    .locals 1

    .line 0
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->preformattedBackgroundPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetquoteLinePaint()Landroid/graphics/Paint;
    .locals 1

    .line 0
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->quoteLinePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgettableHalfLinePaint()Landroid/graphics/Paint;
    .locals 1

    .line 0
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->tableHalfLinePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgettableHeaderPaint()Landroid/graphics/Paint;
    .locals 1

    .line 0
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->tableHeaderPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgettableLinePaint()Landroid/graphics/Paint;
    .locals 1

    .line 0
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->tableLinePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgettableStripPaint()Landroid/graphics/Paint;
    .locals 1

    .line 0
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->tableStripPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgeturlPaint()Landroid/graphics/Paint;
    .locals 1

    .line 0
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->urlPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetwebpageMarkPaint()Landroid/graphics/Paint;
    .locals 1

    .line 0
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->webpageMarkPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetwebpageSearchPaint()Landroid/graphics/Paint;
    .locals 1

    .line 0
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->webpageSearchPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetwebpageUrlPaint()Landroid/graphics/Paint;
    .locals 1

    .line 0
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->webpageUrlPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputdotsPaint(Landroid/graphics/Paint;)V
    .locals 0

    .line 0
    sput-object p0, Lorg/telegram/ui/ArticleViewer;->dotsPaint:Landroid/graphics/Paint;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 229
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->activeSheets:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 384
    sput-object v0, Lorg/telegram/ui/ArticleViewer;->Instance:Lorg/telegram/ui/ArticleViewer;

    .line 734
    new-instance v0, Lorg/telegram/ui/ArticleViewer$1;

    const-string v1, "innerTranslationX"

    invoke-direct {v0, v1}, Lorg/telegram/ui/ArticleViewer$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->ARTICLE_VIEWER_INNER_TRANSLATION_X:Landroid/util/Property;

    .line 2379
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->audioTimePaint:Landroid/text/TextPaint;

    .line 2381
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->photoCaptionTextPaints:Landroid/util/SparseArray;

    .line 2382
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->photoCreditTextPaints:Landroid/util/SparseArray;

    .line 2383
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->titleTextPaints:Landroid/util/SparseArray;

    .line 2384
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->kickerTextPaints:Landroid/util/SparseArray;

    .line 2385
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->headerTextPaints:Landroid/util/SparseArray;

    .line 2386
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->subtitleTextPaints:Landroid/util/SparseArray;

    .line 2387
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->subheaderTextPaints:Landroid/util/SparseArray;

    .line 2388
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->authorTextPaints:Landroid/util/SparseArray;

    .line 2389
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->footerTextPaints:Landroid/util/SparseArray;

    .line 2390
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->paragraphTextPaints:Landroid/util/SparseArray;

    .line 2391
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->listTextPaints:Landroid/util/SparseArray;

    .line 2392
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->preformattedTextPaints:Landroid/util/SparseArray;

    .line 2393
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->quoteTextPaints:Landroid/util/SparseArray;

    .line 2394
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->embedPostTextPaints:Landroid/util/SparseArray;

    .line 2395
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->embedPostCaptionTextPaints:Landroid/util/SparseArray;

    .line 2396
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->mediaCaptionTextPaints:Landroid/util/SparseArray;

    .line 2397
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->mediaCreditTextPaints:Landroid/util/SparseArray;

    .line 2398
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->relatedArticleTextPaints:Landroid/util/SparseArray;

    .line 2399
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->detailsTextPaints:Landroid/util/SparseArray;

    .line 2400
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->tableTextPaints:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->createdWebViews:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 269
    iput v0, p0, Lorg/telegram/ui/ArticleViewer;->lastBlockNum:I

    .line 274
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    .line 327
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->headerPaint:Landroid/graphics/Paint;

    .line 328
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->statusBarPaint:Landroid/graphics/Paint;

    .line 329
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->navigationBarPaint:Landroid/graphics/Paint;

    .line 330
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->headerProgressPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 349
    iput-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->checkingForLongPress:Z

    const/4 v1, 0x0

    .line 350
    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->pendingCheckForLongPress:Lorg/telegram/ui/ArticleViewer$CheckForLongPress;

    .line 351
    iput v0, p0, Lorg/telegram/ui/ArticleViewer;->pressCount:I

    .line 352
    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->pendingCheckForTap:Lorg/telegram/ui/ArticleViewer$CheckForTap;

    .line 361
    new-instance v2, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-direct {v2}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    .line 367
    new-instance v2, Lorg/telegram/ui/Components/LinkPath;

    invoke-direct {v2}, Lorg/telegram/ui/Components/LinkPath;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer;->urlPath:Lorg/telegram/ui/Components/LinkPath;

    .line 376
    new-instance v2, Lorg/telegram/messenger/AnimationNotificationsLocker;

    sget v3, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    sget v4, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    filled-new-array {v3, v4}, [I

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/telegram/messenger/AnimationNotificationsLocker;-><init>([I)V

    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    .line 381
    const-string v2, "bottomSheet"

    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer;->BOTTOM_SHEET_VIEW_TAG:Ljava/lang/String;

    .line 408
    iput v0, p0, Lorg/telegram/ui/ArticleViewer;->selectedFont:I

    const/4 v2, 0x2

    .line 409
    new-array v2, v2, [Lorg/telegram/ui/ArticleViewer$FontCell;

    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer;->fontCells:[Lorg/telegram/ui/ArticleViewer$FontCell;

    .line 4793
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer;->searchResults:Ljava/util/ArrayList;

    const/4 v2, -0x1

    .line 4796
    iput v2, p0, Lorg/telegram/ui/ArticleViewer;->lastSearchIndex:I

    .line 5787
    new-instance v2, Landroidx/collection/LongSparseArray;

    invoke-direct {v2}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer;->videoStates:Landroidx/collection/LongSparseArray;

    .line 12812
    new-instance v2, Lorg/telegram/ui/Components/AnimatedColor;

    new-instance v3, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v5, 0x140

    invoke-direct {v2, v3, v5, v6, v4}, Lorg/telegram/ui/Components/AnimatedColor;-><init>(Ljava/lang/Runnable;JLandroid/animation/TimeInterpolator;)V

    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer;->page0Background:Lorg/telegram/ui/Components/AnimatedColor;

    .line 12813
    new-instance v2, Lorg/telegram/ui/Components/AnimatedColor;

    new-instance v3, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-direct {v2, v3, v5, v6, v4}, Lorg/telegram/ui/Components/AnimatedColor;-><init>(Ljava/lang/Runnable;JLandroid/animation/TimeInterpolator;)V

    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer;->page1Background:Lorg/telegram/ui/Components/AnimatedColor;

    .line 237
    iput-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->isSheet:Z

    .line 238
    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 6

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->createdWebViews:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 269
    iput v0, p0, Lorg/telegram/ui/ArticleViewer;->lastBlockNum:I

    .line 274
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 276
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    .line 327
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->headerPaint:Landroid/graphics/Paint;

    .line 328
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->statusBarPaint:Landroid/graphics/Paint;

    .line 329
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->navigationBarPaint:Landroid/graphics/Paint;

    .line 330
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->headerProgressPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    .line 349
    iput-boolean v1, p0, Lorg/telegram/ui/ArticleViewer;->checkingForLongPress:Z

    const/4 v2, 0x0

    .line 350
    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer;->pendingCheckForLongPress:Lorg/telegram/ui/ArticleViewer$CheckForLongPress;

    .line 351
    iput v1, p0, Lorg/telegram/ui/ArticleViewer;->pressCount:I

    .line 352
    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer;->pendingCheckForTap:Lorg/telegram/ui/ArticleViewer$CheckForTap;

    .line 361
    new-instance v2, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-direct {v2}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    .line 367
    new-instance v2, Lorg/telegram/ui/Components/LinkPath;

    invoke-direct {v2}, Lorg/telegram/ui/Components/LinkPath;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer;->urlPath:Lorg/telegram/ui/Components/LinkPath;

    .line 376
    new-instance v2, Lorg/telegram/messenger/AnimationNotificationsLocker;

    sget v3, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    sget v4, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    filled-new-array {v3, v4}, [I

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/telegram/messenger/AnimationNotificationsLocker;-><init>([I)V

    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    .line 381
    const-string v2, "bottomSheet"

    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer;->BOTTOM_SHEET_VIEW_TAG:Ljava/lang/String;

    .line 408
    iput v1, p0, Lorg/telegram/ui/ArticleViewer;->selectedFont:I

    const/4 v1, 0x2

    .line 409
    new-array v1, v1, [Lorg/telegram/ui/ArticleViewer$FontCell;

    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->fontCells:[Lorg/telegram/ui/ArticleViewer$FontCell;

    .line 4793
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->searchResults:Ljava/util/ArrayList;

    const/4 v1, -0x1

    .line 4796
    iput v1, p0, Lorg/telegram/ui/ArticleViewer;->lastSearchIndex:I

    .line 5787
    new-instance v1, Landroidx/collection/LongSparseArray;

    invoke-direct {v1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->videoStates:Landroidx/collection/LongSparseArray;

    .line 12812
    new-instance v1, Lorg/telegram/ui/Components/AnimatedColor;

    new-instance v2, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v4, 0x140

    invoke-direct {v1, v2, v4, v5, v3}, Lorg/telegram/ui/Components/AnimatedColor;-><init>(Ljava/lang/Runnable;JLandroid/animation/TimeInterpolator;)V

    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->page0Background:Lorg/telegram/ui/Components/AnimatedColor;

    .line 12813
    new-instance v1, Lorg/telegram/ui/Components/AnimatedColor;

    new-instance v2, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-direct {v1, v2, v4, v5, v3}, Lorg/telegram/ui/Components/AnimatedColor;-><init>(Ljava/lang/Runnable;JLandroid/animation/TimeInterpolator;)V

    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->page1Background:Lorg/telegram/ui/Components/AnimatedColor;

    .line 242
    iput-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->isSheet:Z

    .line 243
    new-instance v0, Lorg/telegram/ui/ArticleViewer$Sheet;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ArticleViewer$Sheet;-><init>(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    .line 244
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/ArticleViewer;->setParentActivity(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method private addPageToStack(Ljava/lang/String;I)Z
    .locals 3

    .line 1846
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->saveCurrentPagePosition()V

    .line 1847
    new-instance v0, Lorg/telegram/ui/ArticleViewer$CachedWeb;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ArticleViewer$CachedWeb;-><init>(Lorg/telegram/ui/ArticleViewer;Ljava/lang/String;)V

    .line 1848
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1849
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Lorg/telegram/ui/web/WebActionBar;->showSearch(ZZ)V

    .line 1850
    invoke-direct {p0, v0, v2, p2}, Lorg/telegram/ui/ArticleViewer;->updateInterfaceForCurrentPage(Ljava/lang/Object;ZI)V

    return v2
.end method

.method private addPageToStack(Lorg/telegram/tgnet/TLRPC$WebPage;Ljava/lang/String;I)Z
    .locals 3

    .line 1838
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->saveCurrentPagePosition()V

    .line 1839
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1840
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/web/WebActionBar;->showSearch(ZZ)V

    .line 1841
    invoke-direct {p0, p1, v2, p3}, Lorg/telegram/ui/ArticleViewer;->updateInterfaceForCurrentPage(Ljava/lang/Object;ZI)V

    .line 1842
    invoke-direct {p0, p2, v2}, Lorg/telegram/ui/ArticleViewer;->scrollToAnchor(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method private checkAnimation()Z
    .locals 6

    .line 5637
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->animationInProgress:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5638
    iget-wide v2, p0, Lorg/telegram/ui/ArticleViewer;->transitionAnimationStartTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    .line 5639
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->animationEndRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 5640
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 5641
    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->animationEndRunnable:Ljava/lang/Runnable;

    .line 5643
    :cond_0
    iput v1, p0, Lorg/telegram/ui/ArticleViewer;->animationInProgress:I

    .line 5646
    :cond_1
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->animationInProgress:I

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method private checkLayoutForLinks(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Landroid/view/MotionEvent;Landroid/view/View;Lorg/telegram/ui/ArticleViewer$DrawingText;II)Z
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v0, p4

    move/from16 v3, p5

    move/from16 v4, p6

    .line 3154
    iget-object v5, v1, Lorg/telegram/ui/ArticleViewer;->pageSwitchAnimation:Landroid/animation/AnimatorSet;

    if-nez v5, :cond_0

    if-eqz v2, :cond_0

    iget-object v5, v1, Lorg/telegram/ui/ArticleViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    invoke-virtual {v5, v2}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->isSelectable(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    const/16 v16, 0x0

    goto/16 :goto_12

    .line 3157
    :cond_1
    iput-object v2, v1, Lorg/telegram/ui/ArticleViewer;->pressedLinkOwnerView:Landroid/view/View;

    if-eqz v0, :cond_16

    .line 3159
    iget-object v7, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->textLayout:Landroid/text/StaticLayout;

    .line 3160
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    .line 3161
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    .line 3163
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    const/4 v11, 0x0

    if-nez v10, :cond_b

    .line 3166
    invoke-virtual {v7}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v10

    const/4 v12, 0x0

    const/high16 v13, 0x4f000000

    move v15, v12

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v10, :cond_2

    const/16 v16, 0x0

    .line 3167
    invoke-virtual {v7, v14}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v6

    invoke-static {v6, v15}, Ljava/lang/Math;->max(FF)F

    move-result v15

    .line 3168
    invoke-virtual {v7, v14}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v6

    invoke-static {v6, v13}, Ljava/lang/Math;->min(FF)F

    move-result v13

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_2
    const/16 v16, 0x0

    int-to-float v6, v8

    int-to-float v10, v3

    add-float/2addr v10, v13

    cmpl-float v13, v6, v10

    if-ltz v13, :cond_16

    add-float/2addr v10, v15

    cmpg-float v10, v6, v10

    if-gtz v10, :cond_16

    if-lt v9, v4, :cond_16

    .line 3170
    invoke-virtual {v7}, Landroid/text/Layout;->getHeight()I

    move-result v10

    add-int/2addr v10, v4

    if-gt v9, v10, :cond_16

    .line 3171
    iput-object v0, v1, Lorg/telegram/ui/ArticleViewer;->pressedLinkOwnerLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    .line 3172
    iput v4, v1, Lorg/telegram/ui/ArticleViewer;->pressedLayoutY:I

    .line 3173
    invoke-virtual {v7}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 3174
    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_16

    sub-int/2addr v8, v3

    sub-int v0, v9, v4

    .line 3178
    :try_start_0
    invoke-virtual {v7, v0}, Landroid/text/StaticLayout;->getLineForVertical(I)I

    move-result v0

    int-to-float v3, v8

    .line 3179
    invoke-virtual {v7, v0, v3}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v4

    .line 3180
    invoke-virtual {v7, v0}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v8

    cmpg-float v10, v8, v3

    if-gtz v10, :cond_16

    .line 3181
    invoke-virtual {v7, v0}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v0

    add-float/2addr v8, v0

    cmpl-float v0, v8, v3

    if-ltz v0, :cond_16

    .line 3182
    invoke-virtual {v7}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    .line 3183
    const-class v3, Lorg/telegram/ui/Components/TextPaintUrlSpan;

    invoke-interface {v0, v4, v4, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/telegram/ui/Components/TextPaintUrlSpan;

    if-eqz v3, :cond_16

    .line 3184
    array-length v4, v3

    if-lez v4, :cond_16

    .line 3185
    aget-object v4, v3, v16

    .line 3186
    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    .line 3187
    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    const/4 v13, 0x1

    .line 3188
    :goto_1
    array-length v14, v3

    if-ge v13, v14, :cond_5

    .line 3189
    aget-object v14, v3, v13

    .line 3190
    invoke-interface {v0, v14}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v15

    .line 3191
    invoke-interface {v0, v14}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    if-gt v8, v15, :cond_3

    if-le v5, v10, :cond_4

    :cond_3
    move v10, v5

    move-object v4, v14

    move v8, v15

    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_6

    .line 3198
    :cond_5
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object v0

    if-eq v0, v4, :cond_16

    .line 3199
    :cond_6
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    if-eqz v0, :cond_7

    .line 3200
    iget-object v3, v1, Lorg/telegram/ui/ArticleViewer;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->removeLink(Lorg/telegram/ui/Components/LinkSpanDrawable;)V

    .line 3202
    :cond_7
    new-instance v0, Lorg/telegram/ui/Components/LinkSpanDrawable;

    int-to-float v3, v9

    invoke-direct {v0, v4, v11, v6, v3}, Lorg/telegram/ui/Components/LinkSpanDrawable;-><init>(Landroid/text/style/CharacterStyle;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;FF)V

    iput-object v0, v1, Lorg/telegram/ui/ArticleViewer;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    .line 3203
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteLinkSelection:I

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ArticleViewer;->getThemedColor(I)I

    move-result v3

    const v5, 0x33ffffff

    and-int/2addr v3, v5

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/LinkSpanDrawable;->setColor(I)V

    .line 3204
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    iget-object v3, v1, Lorg/telegram/ui/ArticleViewer;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    iget-object v5, v1, Lorg/telegram/ui/ArticleViewer;->pressedLinkOwnerLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v0, v3, v5}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->addLink(Lorg/telegram/ui/Components/LinkSpanDrawable;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3206
    :try_start_1
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LinkSpanDrawable;->obtainNewPath()Lorg/telegram/ui/Components/LinkPath;

    move-result-object v0

    .line 3207
    invoke-virtual {v0, v7, v8, v12}, Lorg/telegram/ui/Components/LinkPath;->setCurrentLayout(Landroid/text/Layout;IF)V

    .line 3208
    invoke-virtual {v4}, Lorg/telegram/ui/Components/TextPaintUrlSpan;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 3209
    iget v3, v3, Landroid/text/TextPaint;->baselineShift:I

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_5

    :cond_8
    move/from16 v3, v16

    :goto_2
    if-eqz v3, :cond_a

    if-lez v3, :cond_9

    const/high16 v4, 0x40a00000    # 5.0f

    goto :goto_3

    :cond_9
    const/high16 v4, -0x40000000    # -2.0f

    .line 3210
    :goto_3
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_4

    :cond_a
    move/from16 v3, v16

    :goto_4
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/LinkPath;->setBaselineShift(I)V

    .line 3211
    invoke-virtual {v7, v8, v10, v0}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 3212
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_e

    .line 3214
    :goto_5
    :try_start_2
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_e

    .line 3220
    :goto_6
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_e

    :cond_b
    const/16 v16, 0x0

    .line 3224
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_14

    .line 3225
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    if-eqz v0, :cond_16

    .line 3227
    invoke-virtual {v0}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/TextPaintUrlSpan;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/TextPaintUrlSpan;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 3229
    iget-object v3, v1, Lorg/telegram/ui/ArticleViewer;->linkSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    if-eqz v3, :cond_c

    .line 3230
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 3231
    iput-object v11, v1, Lorg/telegram/ui/ArticleViewer;->linkSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    :cond_c
    const/16 v3, 0x23

    .line 3236
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_11

    .line 3238
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetcurrentPage(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Page;->url:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 3239
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetcurrentPage(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Page;->url:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    .line 3241
    :cond_d
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetcurrentPage(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    :goto_7
    add-int/lit8 v5, v3, 0x1

    .line 3244
    :try_start_3
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_8

    .line 3246
    :catch_2
    const-string v5, ""

    :goto_8
    if-eqz v3, :cond_f

    .line 3248
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_9

    :cond_e
    move/from16 v0, v16

    const/4 v3, 0x1

    goto :goto_b

    .line 3249
    :cond_f
    :goto_9
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3250
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v0, v0, v16

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$PageLayout;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    move/from16 v3, v16

    invoke-virtual {v0, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 3251
    invoke-direct {v1}, Lorg/telegram/ui/ArticleViewer;->checkScrollAnimated()V

    const/4 v3, 0x1

    goto :goto_a

    :cond_10
    const/4 v3, 0x1

    .line 3253
    invoke-direct {v1, v5, v3}, Lorg/telegram/ui/ArticleViewer;->scrollToAnchor(Ljava/lang/String;Z)Z

    :goto_a
    move v0, v3

    goto :goto_b

    :cond_11
    const/4 v3, 0x1

    move-object v5, v11

    const/4 v0, 0x0

    :goto_b
    if-nez v0, :cond_15

    .line 3261
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/TextPaintUrlSpan;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/TextPaintUrlSpan;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v4, v1, Lorg/telegram/ui/ArticleViewer;->pressedLinkOwnerLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-nez v4, :cond_12

    goto :goto_c

    :cond_12
    iget-object v6, v1, Lorg/telegram/ui/ArticleViewer;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-direct {v1, v6, v4}, Lorg/telegram/ui/ArticleViewer;->makeProgress(Lorg/telegram/ui/Components/LinkSpanDrawable;Lorg/telegram/ui/ArticleViewer$DrawingText;)Lorg/telegram/messenger/browser/Browser$Progress;

    move-result-object v11

    :goto_c
    invoke-direct {v1, v0, v5, v11}, Lorg/telegram/ui/ArticleViewer;->openWebpageUrl(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/browser/Browser$Progress;)V

    goto :goto_d

    :cond_13
    const/4 v3, 0x1

    goto :goto_d

    .line 3265
    :cond_14
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_17

    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_17

    .line 3269
    :cond_15
    :goto_d
    invoke-direct {v1}, Lorg/telegram/ui/ArticleViewer;->removePressedLink()V

    goto :goto_f

    :cond_16
    :goto_e
    const/4 v3, 0x1

    .line 3272
    :cond_17
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_18

    .line 3273
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v1, v0, v4, v2}, Lorg/telegram/ui/ArticleViewer;->startCheckLongPress(FFLandroid/view/View;)V

    .line 3275
    :cond_18
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v4, 0x2

    if-eq v0, v4, :cond_19

    .line 3276
    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer;->cancelCheckLongPress()V

    .line 3278
    :cond_19
    instance-of v0, v2, Lorg/telegram/ui/ArticleViewer$BlockDetailsCell;

    if-eqz v0, :cond_1b

    .line 3279
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    if-eqz v0, :cond_1a

    move v6, v3

    goto :goto_10

    :cond_1a
    const/4 v6, 0x0

    :goto_10
    return v6

    .line 3281
    :cond_1b
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer;->pressedLinkOwnerLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_1c

    move v6, v3

    goto :goto_11

    :cond_1c
    const/4 v6, 0x0

    :goto_11
    return v6

    :goto_12
    return v16
.end method

.method private checkScroll(I)V
    .locals 1

    .line 5029
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lorg/telegram/ui/ArticleViewer$Sheet;->attachedToActionBar:Z

    if-nez v0, :cond_0

    return-void

    .line 5030
    :cond_0
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->currentHeaderHeight:I

    sub-int/2addr v0, p1

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->setCurrentHeaderHeight(I)V

    return-void
.end method

.method private checkScrollAnimated()V
    .locals 1

    const/4 v0, 0x0

    .line 4988
    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->checkScrollAnimated(Ljava/lang/Runnable;)V

    return-void
.end method

.method private checkScrollAnimated(Ljava/lang/Runnable;)V
    .locals 5

    const/high16 v0, 0x42600000    # 56.0f

    .line 4991
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    .line 4992
    iget v2, p0, Lorg/telegram/ui/ArticleViewer;->currentHeaderHeight:I

    if-ne v2, v1, :cond_1

    if-eqz p1, :cond_0

    .line 4994
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void

    .line 4998
    :cond_1
    new-instance v1, Landroid/animation/IntEvaluator;

    invoke-direct {v1}, Landroid/animation/IntEvaluator;-><init>()V

    iget v2, p0, Lorg/telegram/ui/ArticleViewer;->currentHeaderHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    aput-object v0, v3, v2

    invoke-static {v1, v3}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xb4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 4999
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5000
    new-instance v1, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda35;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda35;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5001
    new-instance v1, Lorg/telegram/ui/ArticleViewer$22;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/ArticleViewer$22;-><init>(Lorg/telegram/ui/ArticleViewer;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz p1, :cond_2

    .line 5011
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v1

    const-wide/16 v3, 0x2

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5013
    :cond_2
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private checkVideoPlayer()V
    .locals 12

    .line 4711
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$PageLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_9

    .line 4712
    iget-boolean v2, p0, Lorg/telegram/ui/ArticleViewer;->attachedToWindow:Z

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 4717
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v1

    move-object v7, v4

    .line 4718
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-ge v6, v8, :cond_3

    .line 4719
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 4720
    instance-of v9, v8, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

    if-eqz v9, :cond_2

    .line 4721
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v3

    add-float/2addr v9, v10

    if-eqz v7, :cond_1

    sub-float v10, v2, v9

    .line 4722
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    sub-float v11, v2, v5

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpg-float v10, v10, v11

    if-gez v10, :cond_2

    .line 4723
    :cond_1
    move-object v7, v8

    check-cast v7, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

    move v5, v9

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 4728
    :cond_3
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->isVisibleOrAnimating()Z

    move-result v0

    if-nez v0, :cond_4

    .line 4729
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->currentPlayer:Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

    if-eqz v2, :cond_8

    if-eq v2, v7, :cond_8

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    if-eqz v2, :cond_8

    .line 4730
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    if-eqz v2, :cond_7

    .line 4731
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->videoStates:Landroidx/collection/LongSparseArray;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->currentPlayer:Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->-$$Nest$fgetcurrentBlock(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    move-result-object v3

    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;->video_id:J

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->currentPlayer:Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

    iget-object v8, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    invoke-static {v8, v3}, Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;->fromPlayer(Lorg/telegram/messenger/video/VideoPlayerHolderBase;Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->setState(Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;)Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;

    move-result-object v3

    invoke-virtual {v2, v5, v6, v3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 4732
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->currentPlayer:Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->-$$Nest$fgetvideoState(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 4733
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->currentPlayer:Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->-$$Nest$fgetvideoState(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;->lastFrameBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_5

    .line 4734
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->currentPlayer:Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->-$$Nest$fgetimageView(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->currentPlayer:Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->-$$Nest$fgetvideoState(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;->lastFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4736
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->currentPlayer:Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->updateButtonState(Z)V

    .line 4738
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->release(Ljava/lang/Runnable;)Z

    .line 4740
    :cond_7
    iput-object v4, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    .line 4741
    iput-object v4, p0, Lorg/telegram/ui/ArticleViewer;->currentPlayer:Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

    :cond_8
    if-nez v0, :cond_9

    if-eqz v7, :cond_9

    .line 4744
    invoke-static {v7}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->-$$Nest$mstartVideoPlayer(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)V

    .line 4745
    iput-object v7, p0, Lorg/telegram/ui/ArticleViewer;->currentPlayer:Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

    :cond_9
    :goto_1
    return-void
.end method

.method private createLayoutForText(Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Landroid/text/Layout$Alignment;ILorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;
    .locals 20

    move-object/from16 v7, p2

    move-object/from16 v3, p3

    const/4 v8, 0x0

    if-nez v7, :cond_1

    if-eqz v3, :cond_0

    .line 2964
    instance-of v0, v3, Lorg/telegram/tgnet/TLRPC$TL_textEmpty;

    if-eqz v0, :cond_1

    :cond_0
    return-object v8

    :cond_1
    if-gez p4, :cond_2

    const/high16 v0, 0x41200000    # 10.0f

    .line 2968
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    move v11, v0

    goto :goto_0

    :cond_2
    move/from16 v11, p4

    :goto_0
    if-eqz v7, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v5, p6

    move-object v2, v7

    goto :goto_1

    :cond_3
    move-object/from16 v4, p3

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p6

    move-object/from16 v1, p9

    move v6, v11

    .line 2975
    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ArticleViewer;->getText(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Landroid/view/View;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2977
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-object v8

    .line 2981
    :cond_4
    sget v1, Lorg/telegram/messenger/SharedConfig;->ivFontSize:I

    add-int/lit8 v1, v1, -0x10

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    .line 2984
    instance-of v4, v5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    const/high16 v6, 0x41600000    # 14.0f

    const/high16 v9, 0x41700000    # 15.0f

    const/4 v10, 0x1

    if-eqz v4, :cond_8

    if-nez v3, :cond_8

    .line 2985
    move-object v4, v5

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    .line 2986
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->author:Ljava/lang/String;

    if-ne v4, v7, :cond_6

    .line 2987
    sget-object v4, Lorg/telegram/ui/ArticleViewer;->embedPostAuthorPaint:Landroid/text/TextPaint;

    if-nez v4, :cond_5

    .line 2988
    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4, v10}, Landroid/text/TextPaint;-><init>(I)V

    sput-object v4, Lorg/telegram/ui/ArticleViewer;->embedPostAuthorPaint:Landroid/text/TextPaint;

    .line 2989
    invoke-direct {v0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 2991
    :cond_5
    sget-object v4, Lorg/telegram/ui/ArticleViewer;->embedPostAuthorPaint:Landroid/text/TextPaint;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v6, v1

    int-to-float v1, v6

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2992
    sget-object v1, Lorg/telegram/ui/ArticleViewer;->embedPostAuthorPaint:Landroid/text/TextPaint;

    goto/16 :goto_2

    .line 2994
    :cond_6
    sget-object v4, Lorg/telegram/ui/ArticleViewer;->embedPostDatePaint:Landroid/text/TextPaint;

    if-nez v4, :cond_7

    .line 2995
    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4, v10}, Landroid/text/TextPaint;-><init>(I)V

    sput-object v4, Lorg/telegram/ui/ArticleViewer;->embedPostDatePaint:Landroid/text/TextPaint;

    .line 2996
    invoke-direct {v0}, Lorg/telegram/ui/ArticleViewer;->getGrayTextColor()I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 2998
    :cond_7
    sget-object v4, Lorg/telegram/ui/ArticleViewer;->embedPostDatePaint:Landroid/text/TextPaint;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v6, v1

    int-to-float v1, v6

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2999
    sget-object v1, Lorg/telegram/ui/ArticleViewer;->embedPostDatePaint:Landroid/text/TextPaint;

    goto/16 :goto_2

    .line 3001
    :cond_8
    instance-of v4, v5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;

    if-eqz v4, :cond_b

    .line 3002
    sget-object v1, Lorg/telegram/ui/ArticleViewer;->channelNamePaint:Landroid/text/TextPaint;

    if-nez v1, :cond_9

    .line 3003
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1, v10}, Landroid/text/TextPaint;-><init>(I)V

    sput-object v1, Lorg/telegram/ui/ArticleViewer;->channelNamePaint:Landroid/text/TextPaint;

    .line 3004
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 3006
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1, v10}, Landroid/text/TextPaint;-><init>(I)V

    sput-object v1, Lorg/telegram/ui/ArticleViewer;->channelNamePhotoPaint:Landroid/text/TextPaint;

    .line 3007
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 3009
    :cond_9
    sget-object v1, Lorg/telegram/ui/ArticleViewer;->channelNamePaint:Landroid/text/TextPaint;

    invoke-direct {v0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 3010
    sget-object v1, Lorg/telegram/ui/ArticleViewer;->channelNamePaint:Landroid/text/TextPaint;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3012
    sget-object v1, Lorg/telegram/ui/ArticleViewer;->channelNamePhotoPaint:Landroid/text/TextPaint;

    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 3013
    sget-object v1, Lorg/telegram/ui/ArticleViewer;->channelNamePhotoPaint:Landroid/text/TextPaint;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3015
    invoke-static/range {p9 .. p9}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetchannelBlock(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;

    move-result-object v1

    if-eqz v1, :cond_a

    sget-object v1, Lorg/telegram/ui/ArticleViewer;->channelNamePhotoPaint:Landroid/text/TextPaint;

    goto/16 :goto_2

    :cond_a
    sget-object v1, Lorg/telegram/ui/ArticleViewer;->channelNamePaint:Landroid/text/TextPaint;

    goto/16 :goto_2

    .line 3016
    :cond_b
    instance-of v4, v5, Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;

    if-eqz v4, :cond_f

    .line 3017
    move-object v4, v5

    check-cast v4, Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;

    .line 3018
    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;->-$$Nest$fgetparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockRelatedArticles;

    move-result-object v12

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$TL_pageBlockRelatedArticles;->articles:Ljava/util/ArrayList;

    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;->-$$Nest$fgetnum(Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;)I

    move-result v4

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_pageRelatedArticle;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_pageRelatedArticle;->title:Ljava/lang/String;

    if-ne v7, v4, :cond_d

    .line 3019
    sget-object v4, Lorg/telegram/ui/ArticleViewer;->relatedArticleHeaderPaint:Landroid/text/TextPaint;

    if-nez v4, :cond_c

    .line 3020
    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4, v10}, Landroid/text/TextPaint;-><init>(I)V

    sput-object v4, Lorg/telegram/ui/ArticleViewer;->relatedArticleHeaderPaint:Landroid/text/TextPaint;

    .line 3021
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 3023
    :cond_c
    sget-object v4, Lorg/telegram/ui/ArticleViewer;->relatedArticleHeaderPaint:Landroid/text/TextPaint;

    invoke-direct {v0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 3024
    sget-object v4, Lorg/telegram/ui/ArticleViewer;->relatedArticleHeaderPaint:Landroid/text/TextPaint;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v6, v1

    int-to-float v1, v6

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3025
    sget-object v1, Lorg/telegram/ui/ArticleViewer;->relatedArticleHeaderPaint:Landroid/text/TextPaint;

    goto/16 :goto_2

    .line 3027
    :cond_d
    sget-object v4, Lorg/telegram/ui/ArticleViewer;->relatedArticleTextPaint:Landroid/text/TextPaint;

    if-nez v4, :cond_e

    .line 3028
    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4, v10}, Landroid/text/TextPaint;-><init>(I)V

    sput-object v4, Lorg/telegram/ui/ArticleViewer;->relatedArticleTextPaint:Landroid/text/TextPaint;

    .line 3030
    :cond_e
    sget-object v4, Lorg/telegram/ui/ArticleViewer;->relatedArticleTextPaint:Landroid/text/TextPaint;

    invoke-direct {v0}, Lorg/telegram/ui/ArticleViewer;->getGrayTextColor()I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 3031
    sget-object v4, Lorg/telegram/ui/ArticleViewer;->relatedArticleTextPaint:Landroid/text/TextPaint;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v6, v1

    int-to-float v1, v6

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3032
    sget-object v1, Lorg/telegram/ui/ArticleViewer;->relatedArticleTextPaint:Landroid/text/TextPaint;

    goto :goto_2

    .line 3034
    :cond_f
    invoke-direct {v0, v5}, Lorg/telegram/ui/ArticleViewer;->isListItemBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)Z

    move-result v4

    if-eqz v4, :cond_13

    if-eqz v7, :cond_13

    .line 3035
    sget-object v4, Lorg/telegram/ui/ArticleViewer;->listTextPointerPaint:Landroid/text/TextPaint;

    if-nez v4, :cond_10

    .line 3036
    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4, v10}, Landroid/text/TextPaint;-><init>(I)V

    sput-object v4, Lorg/telegram/ui/ArticleViewer;->listTextPointerPaint:Landroid/text/TextPaint;

    .line 3037
    invoke-direct {v0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 3039
    :cond_10
    sget-object v4, Lorg/telegram/ui/ArticleViewer;->listTextNumPaint:Landroid/text/TextPaint;

    if-nez v4, :cond_11

    .line 3040
    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4, v10}, Landroid/text/TextPaint;-><init>(I)V

    sput-object v4, Lorg/telegram/ui/ArticleViewer;->listTextNumPaint:Landroid/text/TextPaint;

    .line 3041
    invoke-direct {v0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 3043
    :cond_11
    sget-object v4, Lorg/telegram/ui/ArticleViewer;->listTextPointerPaint:Landroid/text/TextPaint;

    const/high16 v6, 0x41980000    # 19.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v6, v1

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3044
    sget-object v4, Lorg/telegram/ui/ArticleViewer;->listTextNumPaint:Landroid/text/TextPaint;

    const/high16 v6, 0x41800000    # 16.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v6, v1

    int-to-float v1, v6

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3045
    instance-of v1, v5, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    if-eqz v1, :cond_12

    move-object v1, v5

    check-cast v1, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fgetparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;->-$$Nest$fgetpageBlockList(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;->ordered:Z

    if-nez v1, :cond_12

    .line 3046
    sget-object v1, Lorg/telegram/ui/ArticleViewer;->listTextPointerPaint:Landroid/text/TextPaint;

    goto :goto_2

    .line 3048
    :cond_12
    sget-object v1, Lorg/telegram/ui/ArticleViewer;->listTextNumPaint:Landroid/text/TextPaint;

    goto :goto_2

    .line 3051
    :cond_13
    invoke-direct {v0, v3, v3, v5}, Lorg/telegram/ui/ArticleViewer;->getTextPaint(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/TextPaint;

    move-result-object v1

    .line 3053
    :goto_2
    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v4

    const/4 v6, 0x0

    invoke-static {v2, v4, v6, v8, v10}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z[II)Ljava/lang/CharSequence;

    move-result-object v9

    const/high16 v2, 0x40800000    # 4.0f

    if-eqz p8, :cond_15

    .line 3056
    instance-of v4, v5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;

    if-eqz v4, :cond_14

    .line 3057
    sget-object v12, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/4 v15, 0x0

    sget-object v16, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    move/from16 v17, v11

    move/from16 v18, v10

    move-object v10, v1

    move/from16 v1, v18

    move/from16 v18, p8

    invoke-static/range {v9 .. v18}, Lorg/telegram/ui/Components/StaticLayoutEx;->createStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;II)Landroid/text/StaticLayout;

    move-result-object v2

    goto/16 :goto_4

    :cond_14
    move/from16 v19, v10

    move-object v10, v1

    move/from16 v1, v19

    .line 3059
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v14, v2

    const/4 v15, 0x0

    sget-object v16, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/high16 v13, 0x3f800000    # 1.0f

    move/from16 v17, v11

    move-object/from16 v12, p7

    move/from16 v18, p8

    invoke-static/range {v9 .. v18}, Lorg/telegram/ui/Components/StaticLayoutEx;->createStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;II)Landroid/text/StaticLayout;

    move-result-object v2

    goto :goto_4

    :cond_15
    move/from16 v19, v10

    move-object v10, v1

    move/from16 v1, v19

    .line 3062
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-interface {v9, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v7, 0xa

    if-ne v4, v7, :cond_16

    .line 3063
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-interface {v9, v6, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    .line 3065
    :cond_16
    instance-of v4, v5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;

    if-eqz v4, :cond_17

    move v12, v11

    move-object v11, v10

    move-object v10, v9

    .line 3066
    new-instance v9, Landroid/text/StaticLayout;

    sget-object v13, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-direct/range {v9 .. v16}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    :goto_3
    move-object v2, v9

    move-object v9, v10

    goto :goto_4

    :cond_17
    move-object v4, v10

    move-object v10, v9

    .line 3068
    new-instance v9, Landroid/text/StaticLayout;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v15, v2

    const/16 v16, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    move-object/from16 v13, p7

    move v12, v11

    move-object v11, v4

    invoke-direct/range {v9 .. v16}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    goto :goto_3

    :goto_4
    if-nez v2, :cond_18

    return-object v8

    .line 3074
    :cond_18
    invoke-virtual {v2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    if-ltz p5, :cond_1b

    .line 3078
    iget-object v7, v0, Lorg/telegram/ui/ArticleViewer;->searchResults:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1b

    iget-object v7, v0, Lorg/telegram/ui/ArticleViewer;->searchText:Ljava/lang/String;

    if-eqz v7, :cond_1b

    .line 3079
    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    move v9, v6

    .line 3082
    :goto_5
    iget-object v10, v0, Lorg/telegram/ui/ArticleViewer;->searchText:Ljava/lang/String;

    invoke-virtual {v7, v10, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v9

    if-ltz v9, :cond_1b

    .line 3083
    iget-object v10, v0, Lorg/telegram/ui/ArticleViewer;->searchText:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v9

    if-eqz v9, :cond_19

    add-int/lit8 v11, v9, -0x1

    .line 3084
    invoke-virtual {v7, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->isPunctuationCharacter(C)Z

    move-result v11

    if-eqz v11, :cond_1a

    .line 3085
    :cond_19
    iget-object v11, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v11, v11, v6

    iget-object v11, v11, Lorg/telegram/ui/ArticleViewer$PageLayout;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v11}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetsearchTextOffset(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/HashMap;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->searchText:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v9}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v9

    add-int v9, p5, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v11, v12, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    move v9, v10

    goto :goto_5

    .line 3090
    :cond_1b
    instance-of v7, v4, Landroid/text/Spanned;

    if-eqz v7, :cond_28

    .line 3091
    check-cast v4, Landroid/text/Spanned;

    .line 3093
    :try_start_0
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const-class v9, Lorg/telegram/ui/Components/AnchorSpan;

    invoke-interface {v4, v6, v7, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lorg/telegram/ui/Components/AnchorSpan;

    .line 3094
    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v9

    if-eqz v7, :cond_1d

    .line 3095
    array-length v10, v7

    if-lez v10, :cond_1d

    move v10, v6

    .line 3096
    :goto_6
    array-length v11, v7

    if-ge v10, v11, :cond_1d

    if-gt v9, v1, :cond_1c

    .line 3098
    invoke-static/range {p9 .. p9}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetanchorsOffset(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/HashMap;

    move-result-object v11

    aget-object v12, v7, v10

    invoke-virtual {v12}, Lorg/telegram/ui/Components/AnchorSpan;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 3100
    :cond_1c
    invoke-static/range {p9 .. p9}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetanchorsOffset(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/HashMap;

    move-result-object v11

    aget-object v12, v7, v10

    invoke-virtual {v12}, Lorg/telegram/ui/Components/AnchorSpan;->getName()Ljava/lang/String;

    move-result-object v12

    aget-object v13, v7, v10

    invoke-interface {v4, v13}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v13

    invoke-virtual {v2, v13}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v13

    invoke-virtual {v2, v13}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v13

    add-int v13, p5, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :catch_0
    :cond_1d
    const/high16 v9, 0x40a00000    # 5.0f

    const/4 v10, 0x0

    .line 3108
    :try_start_1
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v11

    const-class v12, Lorg/telegram/ui/Components/TextPaintWebpageUrlSpan;

    invoke-interface {v4, v6, v11, v12}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lorg/telegram/ui/Components/TextPaintWebpageUrlSpan;

    if-eqz v11, :cond_22

    .line 3109
    array-length v12, v11

    if-lez v12, :cond_22

    .line 3110
    new-instance v12, Lorg/telegram/ui/Components/LinkPath;

    invoke-direct {v12, v1}, Lorg/telegram/ui/Components/LinkPath;-><init>(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3111
    :try_start_2
    invoke-virtual {v12, v6}, Lorg/telegram/ui/Components/LinkPath;->setAllowReset(Z)V

    move v13, v6

    .line 3112
    :goto_8
    array-length v14, v11

    if-ge v13, v14, :cond_21

    .line 3113
    aget-object v14, v11, v13

    invoke-interface {v4, v14}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v14

    .line 3114
    aget-object v15, v11, v13

    invoke-interface {v4, v15}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v15

    .line 3115
    invoke-virtual {v12, v2, v14, v10}, Lorg/telegram/ui/Components/LinkPath;->setCurrentLayout(Landroid/text/Layout;IF)V

    .line 3116
    aget-object v16, v11, v13

    invoke-virtual/range {v16 .. v16}, Lorg/telegram/ui/Components/TextPaintUrlSpan;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v16

    if-eqz v16, :cond_1e

    aget-object v16, v11, v13

    invoke-virtual/range {v16 .. v16}, Lorg/telegram/ui/Components/TextPaintUrlSpan;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v7

    iget v7, v7, Landroid/text/TextPaint;->baselineShift:I

    goto :goto_9

    :cond_1e
    move v7, v6

    :goto_9
    if-eqz v7, :cond_20

    if-lez v7, :cond_1f

    move/from16 v16, v9

    goto :goto_a

    :cond_1f
    const/high16 v16, -0x40000000    # -2.0f

    .line 3117
    :goto_a
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    add-int v7, v7, v16

    goto :goto_b

    :cond_20
    move v7, v6

    :goto_b
    invoke-virtual {v12, v7}, Lorg/telegram/ui/Components/LinkPath;->setBaselineShift(I)V

    .line 3118
    invoke-virtual {v2, v14, v15, v12}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 3120
    :cond_21
    invoke-virtual {v12, v1}, Lorg/telegram/ui/Components/LinkPath;->setAllowReset(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_c

    :catch_1
    :cond_22
    move-object v12, v8

    .line 3126
    :catch_2
    :goto_c
    :try_start_3
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const-class v11, Lorg/telegram/ui/Components/TextPaintMarkSpan;

    invoke-interface {v4, v6, v7, v11}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lorg/telegram/ui/Components/TextPaintMarkSpan;

    if-eqz v7, :cond_27

    .line 3127
    array-length v11, v7

    if-lez v11, :cond_27

    .line 3128
    new-instance v11, Lorg/telegram/ui/Components/LinkPath;

    invoke-direct {v11, v1}, Lorg/telegram/ui/Components/LinkPath;-><init>(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 3129
    :try_start_4
    invoke-virtual {v11, v6}, Lorg/telegram/ui/Components/LinkPath;->setAllowReset(Z)V

    move v8, v6

    .line 3130
    :goto_d
    array-length v13, v7

    if-ge v8, v13, :cond_26

    .line 3131
    aget-object v13, v7, v8

    invoke-interface {v4, v13}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v13

    .line 3132
    aget-object v14, v7, v8

    invoke-interface {v4, v14}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v14

    .line 3133
    invoke-virtual {v11, v2, v13, v10}, Lorg/telegram/ui/Components/LinkPath;->setCurrentLayout(Landroid/text/Layout;IF)V

    .line 3134
    aget-object v15, v7, v8

    invoke-virtual {v15}, Lorg/telegram/ui/Components/TextPaintMarkSpan;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v15

    if-eqz v15, :cond_23

    aget-object v15, v7, v8

    invoke-virtual {v15}, Lorg/telegram/ui/Components/TextPaintMarkSpan;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v15

    iget v15, v15, Landroid/text/TextPaint;->baselineShift:I

    goto :goto_e

    :cond_23
    move v15, v6

    :goto_e
    if-eqz v15, :cond_25

    if-lez v15, :cond_24

    move/from16 v16, v9

    goto :goto_f

    :cond_24
    const/high16 v16, -0x40000000    # -2.0f

    .line 3135
    :goto_f
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    add-int v15, v15, v16

    goto :goto_10

    :cond_25
    move v15, v6

    :goto_10
    invoke-virtual {v11, v15}, Lorg/telegram/ui/Components/LinkPath;->setBaselineShift(I)V

    .line 3136
    invoke-virtual {v2, v13, v14, v11}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    .line 3138
    :cond_26
    invoke-virtual {v11, v1}, Lorg/telegram/ui/Components/LinkPath;->setAllowReset(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    move-object v8, v11

    :catch_4
    :cond_27
    move-object v1, v8

    move-object v8, v12

    goto :goto_11

    :cond_28
    move-object v1, v8

    .line 3144
    :goto_11
    new-instance v4, Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-direct {v4, v0}, Lorg/telegram/ui/ArticleViewer$DrawingText;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    .line 3145
    iput-object v2, v4, Lorg/telegram/ui/ArticleViewer$DrawingText;->textLayout:Landroid/text/StaticLayout;

    .line 3146
    iput-object v8, v4, Lorg/telegram/ui/ArticleViewer$DrawingText;->textPath:Lorg/telegram/ui/Components/LinkPath;

    .line 3147
    iput-object v1, v4, Lorg/telegram/ui/ArticleViewer$DrawingText;->markPath:Lorg/telegram/ui/Components/LinkPath;

    .line 3148
    iput-object v5, v4, Lorg/telegram/ui/ArticleViewer$DrawingText;->parentBlock:Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 3149
    iput-object v3, v4, Lorg/telegram/ui/ArticleViewer$DrawingText;->parentText:Ljava/lang/Object;

    return-object v4
.end method

.method private createLayoutForText(Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Landroid/text/Layout$Alignment;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;
    .locals 10

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v9, p8

    .line 2956
    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/ArticleViewer;->createLayoutForText(Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Landroid/text/Layout$Alignment;ILorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object p1

    return-object p1
.end method

.method private createLayoutForText(Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;
    .locals 10

    .line 2960
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/ArticleViewer;->createLayoutForText(Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Landroid/text/Layout$Alignment;ILorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object p1

    return-object p1
.end method

.method private createPaint(Z)V
    .locals 6

    .line 1291
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->quoteLinePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 1292
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    sput-object p1, Lorg/telegram/ui/ArticleViewer;->quoteLinePaint:Landroid/graphics/Paint;

    .line 1294
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    sput-object p1, Lorg/telegram/ui/ArticleViewer;->preformattedBackgroundPaint:Landroid/graphics/Paint;

    .line 1296
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    sput-object p1, Lorg/telegram/ui/ArticleViewer;->tableLinePaint:Landroid/graphics/Paint;

    .line 1297
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1298
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->tableLinePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1300
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    sput-object p1, Lorg/telegram/ui/ArticleViewer;->tableHalfLinePaint:Landroid/graphics/Paint;

    .line 1301
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1302
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->tableHalfLinePaint:Landroid/graphics/Paint;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1304
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    sput-object p1, Lorg/telegram/ui/ArticleViewer;->tableHeaderPaint:Landroid/graphics/Paint;

    .line 1305
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    sput-object p1, Lorg/telegram/ui/ArticleViewer;->tableStripPaint:Landroid/graphics/Paint;

    .line 1307
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    sput-object p1, Lorg/telegram/ui/ArticleViewer;->urlPaint:Landroid/graphics/Paint;

    .line 1308
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    sput-object p1, Lorg/telegram/ui/ArticleViewer;->webpageUrlPaint:Landroid/graphics/Paint;

    .line 1309
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    sput-object p1, Lorg/telegram/ui/ArticleViewer;->webpageSearchPaint:Landroid/graphics/Paint;

    .line 1310
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    sput-object p1, Lorg/telegram/ui/ArticleViewer;->photoBackgroundPaint:Landroid/graphics/Paint;

    .line 1311
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    sput-object p1, Lorg/telegram/ui/ArticleViewer;->dividerPaint:Landroid/graphics/Paint;

    .line 1312
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    sput-object p1, Lorg/telegram/ui/ArticleViewer;->webpageMarkPaint:Landroid/graphics/Paint;

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 1317
    :cond_1
    :goto_0
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getThemedColor(I)I

    move-result p1

    .line 1318
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3e59b3d0    # 0.2126f

    mul-float/2addr v0, v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f371759    # 0.7152f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    const v1, 0x3d93dd98    # 0.0722f

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    const/high16 p1, 0x437f0000    # 255.0f

    div-float/2addr v0, p1

    .line 1319
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->webpageSearchPaint:Landroid/graphics/Paint;

    const v1, 0x3f347ae1    # 0.705f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    const v0, -0x2e67d2

    goto :goto_1

    :cond_2
    const/16 v0, -0x1997

    :goto_1
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1320
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->webpageUrlPaint:Landroid/graphics/Paint;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteLinkSelection:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ArticleViewer;->getThemedColor(I)I

    move-result v1

    const v2, 0x33ffffff

    and-int/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1321
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->webpageUrlPaint:Landroid/graphics/Paint;

    invoke-static {}, Lorg/telegram/ui/Components/LinkPath;->getRoundedEffect()Landroid/graphics/CornerPathEffect;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 1322
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->urlPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ArticleViewer;->getThemedColor(I)I

    move-result v1

    and-int/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1323
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->urlPaint:Landroid/graphics/Paint;

    invoke-static {}, Lorg/telegram/ui/Components/LinkPath;->getRoundedEffect()Landroid/graphics/CornerPathEffect;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 1324
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->tableHalfLinePaint:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputField:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ArticleViewer;->getThemedColor(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1325
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->tableLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ArticleViewer;->getThemedColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1327
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->photoBackgroundPaint:Landroid/graphics/Paint;

    const/high16 v1, 0xf000000

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1328
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->dividerPaint:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ArticleViewer;->getThemedColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1329
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->webpageMarkPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ArticleViewer;->getThemedColor(I)I

    move-result v1

    and-int/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1330
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->webpageMarkPaint:Landroid/graphics/Paint;

    invoke-static {}, Lorg/telegram/ui/Components/LinkPath;->getRoundedEffect()Landroid/graphics/CornerPathEffect;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 1332
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrack:I

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getThemedColor(I)I

    move-result p1

    .line 1333
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 1334
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 1335
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    .line 1336
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->tableStripPaint:Landroid/graphics/Paint;

    const/16 v4, 0x14

    invoke-static {v4, v1, v2, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1337
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->tableHeaderPaint:Landroid/graphics/Paint;

    const/16 v5, 0x22

    invoke-static {v5, v1, v2, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1339
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ArticleViewer;->getThemedColor(I)I

    move-result p1

    .line 1340
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 1341
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 1342
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    .line 1343
    sget-object v2, Lorg/telegram/ui/ArticleViewer;->preformattedBackgroundPaint:Landroid/graphics/Paint;

    invoke-static {v4, v0, v1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1345
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->quoteLinePaint:Landroid/graphics/Paint;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReplyLine:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ArticleViewer;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private drawTextSelection(Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;)V
    .locals 1

    const/4 v0, 0x0

    .line 12469
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/ArticleViewer;->drawTextSelection(Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;I)V

    return-void
.end method

.method private drawTextSelection(Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;I)V
    .locals 2

    .line 12473
    move-object v0, p2

    check-cast v0, Landroid/view/View;

    .line 12474
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "bottomSheet"

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->textSelectionHelperBottomSheet:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    if-eqz v0, :cond_0

    .line 12475
    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->draw(Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;I)V

    return-void

    .line 12477
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->draw(Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;I)V

    return-void
.end method

.method private fixListBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLRPC$PageBlock;
    .locals 1

    .line 1650
    instance-of v0, p1, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    if-eqz v0, :cond_0

    .line 1651
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    .line 1652
    invoke-static {v0, p2}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fputblockItem(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    return-object p1

    .line 1654
    :cond_0
    instance-of v0, p1, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    if-eqz v0, :cond_1

    .line 1655
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    .line 1656
    invoke-static {v0, p2}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fputblockItem(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    return-object p1

    :cond_1
    return-object p2
.end method

.method private getBlockCaption(Lorg/telegram/tgnet/TLRPC$PageBlock;I)Lorg/telegram/tgnet/TLRPC$RichText;
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_5

    const/4 p2, 0x0

    .line 1492
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ArticleViewer;->getBlockCaption(Lorg/telegram/tgnet/TLRPC$PageBlock;I)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object p2

    .line 1493
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_textEmpty;

    if-eqz v0, :cond_0

    move-object p2, v1

    .line 1496
    :cond_0
    invoke-direct {p0, p1, v2}, Lorg/telegram/ui/ArticleViewer;->getBlockCaption(Lorg/telegram/tgnet/TLRPC$PageBlock;I)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object p1

    .line 1497
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textEmpty;

    if-eqz v0, :cond_1

    move-object p1, v1

    :cond_1
    if-eqz p2, :cond_2

    if-nez p1, :cond_2

    return-object p2

    :cond_2
    if-nez p2, :cond_3

    if-eqz p1, :cond_3

    return-object p1

    :cond_3
    if-eqz p2, :cond_4

    if-eqz p1, :cond_4

    .line 1505
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_textPlain;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_textPlain;-><init>()V

    .line 1506
    const-string v1, " "

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_textPlain;->text:Ljava/lang/String;

    .line 1508
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_textConcat;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_textConcat;-><init>()V

    .line 1509
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$RichText;->texts:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1510
    iget-object p2, v1, Lorg/telegram/tgnet/TLRPC$RichText;->texts:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1511
    iget-object p2, v1, Lorg/telegram/tgnet/TLRPC$RichText;->texts:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v1

    .line 1517
    :cond_5
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    if-eqz v0, :cond_7

    .line 1518
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    if-nez p2, :cond_6

    .line 1520
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    return-object p1

    :cond_6
    if-ne p2, v2, :cond_18

    .line 1522
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->credit:Lorg/telegram/tgnet/TLRPC$RichText;

    return-object p1

    .line 1524
    :cond_7
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    if-eqz v0, :cond_9

    .line 1525
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    if-nez p2, :cond_8

    .line 1527
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    return-object p1

    :cond_8
    if-ne p2, v2, :cond_18

    .line 1529
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->credit:Lorg/telegram/tgnet/TLRPC$RichText;

    return-object p1

    .line 1531
    :cond_9
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    if-eqz v0, :cond_b

    .line 1532
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    if-nez p2, :cond_a

    .line 1534
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    return-object p1

    :cond_a
    if-ne p2, v2, :cond_18

    .line 1536
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->credit:Lorg/telegram/tgnet/TLRPC$RichText;

    return-object p1

    .line 1538
    :cond_b
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    if-eqz v0, :cond_d

    .line 1539
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    if-nez p2, :cond_c

    .line 1541
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    return-object p1

    :cond_c
    if-ne p2, v2, :cond_18

    .line 1543
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->credit:Lorg/telegram/tgnet/TLRPC$RichText;

    return-object p1

    .line 1545
    :cond_d
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    if-eqz v0, :cond_f

    .line 1546
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    if-nez p2, :cond_e

    .line 1548
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    return-object p1

    :cond_e
    if-ne p2, v2, :cond_18

    .line 1550
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->credit:Lorg/telegram/tgnet/TLRPC$RichText;

    return-object p1

    .line 1552
    :cond_f
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;

    if-eqz v0, :cond_10

    .line 1553
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;

    .line 1554
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;->caption:Lorg/telegram/tgnet/TLRPC$RichText;

    return-object p1

    .line 1555
    :cond_10
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    if-eqz v0, :cond_12

    .line 1556
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    if-nez p2, :cond_11

    .line 1558
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    return-object p1

    :cond_11
    if-ne p2, v2, :cond_18

    .line 1560
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->credit:Lorg/telegram/tgnet/TLRPC$RichText;

    return-object p1

    .line 1562
    :cond_12
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;

    if-eqz v0, :cond_13

    .line 1563
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;

    .line 1564
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;->caption:Lorg/telegram/tgnet/TLRPC$RichText;

    return-object p1

    .line 1565
    :cond_13
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;

    if-eqz v0, :cond_15

    .line 1566
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;

    if-nez p2, :cond_14

    .line 1568
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    return-object p1

    :cond_14
    if-ne p2, v2, :cond_18

    .line 1570
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->credit:Lorg/telegram/tgnet/TLRPC$RichText;

    return-object p1

    .line 1572
    :cond_15
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCover;

    if-eqz v0, :cond_16

    .line 1573
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCover;

    .line 1574
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCover;->cover:Lorg/telegram/tgnet/TLRPC$PageBlock;

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ArticleViewer;->getBlockCaption(Lorg/telegram/tgnet/TLRPC$PageBlock;I)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object p1

    return-object p1

    .line 1575
    :cond_16
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockMap;

    if-eqz v0, :cond_18

    .line 1576
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockMap;

    if-nez p2, :cond_17

    .line 1578
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockMap;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    return-object p1

    :cond_17
    if-ne p2, v2, :cond_18

    .line 1580
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockMap;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->credit:Lorg/telegram/tgnet/TLRPC$RichText;

    return-object p1

    :cond_18
    return-object v1
.end method

.method private getGrayTextColor()I
    .locals 1

    .line 2719
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ArticleViewer;->getThemedColor(I)I

    move-result v0

    return v0
.end method

.method public static getInstance()Lorg/telegram/ui/ArticleViewer;
    .locals 2

    .line 388
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->Instance:Lorg/telegram/ui/ArticleViewer;

    if-nez v0, :cond_1

    .line 390
    const-class v1, Lorg/telegram/ui/ArticleViewer;

    monitor-enter v1

    .line 391
    :try_start_0
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->Instance:Lorg/telegram/ui/ArticleViewer;

    if-nez v0, :cond_0

    .line 393
    new-instance v0, Lorg/telegram/ui/ArticleViewer;

    invoke-direct {v0}, Lorg/telegram/ui/ArticleViewer;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->Instance:Lorg/telegram/ui/ArticleViewer;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 395
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

.method private getLastNonListCell(Landroid/view/View;)Landroid/view/View;
    .locals 2

    .line 1587
    instance-of v0, p1, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;

    if-eqz v0, :cond_0

    .line 1588
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;

    .line 1589
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->-$$Nest$fgetblockLayout(Lorg/telegram/ui/ArticleViewer$BlockListItemCell;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1590
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->-$$Nest$fgetblockLayout(Lorg/telegram/ui/ArticleViewer$BlockListItemCell;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getLastNonListCell(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 1592
    :cond_0
    instance-of v0, p1, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;

    if-eqz v0, :cond_1

    .line 1593
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;

    .line 1594
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->-$$Nest$fgetblockLayout(Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1595
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->-$$Nest$fgetblockLayout(Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getLastNonListCell(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private getLastNonListPageBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLRPC$PageBlock;
    .locals 1

    .line 1606
    instance-of v0, p1, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    if-eqz v0, :cond_1

    .line 1607
    check-cast p1, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    .line 1608
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fgetblockItem(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1609
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fgetblockItem(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getLastNonListPageBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object p1

    return-object p1

    .line 1611
    :cond_0
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fgetblockItem(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object p1

    return-object p1

    .line 1613
    :cond_1
    instance-of v0, p1, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    if-eqz v0, :cond_3

    .line 1614
    check-cast p1, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    .line 1615
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fgetblockItem(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1616
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fgetblockItem(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getLastNonListPageBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object p1

    return-object p1

    .line 1618
    :cond_2
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fgetblockItem(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object p1

    :cond_3
    return-object p1
.end method

.method private getLastRichText(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2463
    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textFixed;

    if-eqz v0, :cond_1

    .line 2464
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_textFixed;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getLastRichText(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object p1

    return-object p1

    .line 2465
    :cond_1
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textItalic;

    if-eqz v0, :cond_2

    .line 2466
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_textItalic;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getLastRichText(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object p1

    return-object p1

    .line 2467
    :cond_2
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textBold;

    if-eqz v0, :cond_3

    .line 2468
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_textBold;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getLastRichText(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object p1

    return-object p1

    .line 2469
    :cond_3
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textUnderline;

    if-eqz v0, :cond_4

    .line 2470
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_textUnderline;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getLastRichText(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object p1

    return-object p1

    .line 2471
    :cond_4
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textStrike;

    if-eqz v0, :cond_5

    .line 2472
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_textStrike;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getLastRichText(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object p1

    return-object p1

    .line 2473
    :cond_5
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textEmail;

    if-eqz v0, :cond_6

    .line 2474
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_textEmail;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getLastRichText(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object p1

    return-object p1

    .line 2475
    :cond_6
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textUrl;

    if-eqz v0, :cond_7

    .line 2476
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_textUrl;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getLastRichText(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object p1

    return-object p1

    .line 2477
    :cond_7
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textAnchor;

    if-eqz v0, :cond_8

    .line 2478
    move-object v0, p1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_textAnchor;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->getLastRichText(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    return-object p1

    .line 2479
    :cond_8
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textSubscript;

    if-eqz v0, :cond_9

    .line 2480
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_textSubscript;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getLastRichText(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object p1

    return-object p1

    .line 2481
    :cond_9
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textSuperscript;

    if-eqz v0, :cond_a

    .line 2482
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_textSuperscript;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getLastRichText(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object p1

    return-object p1

    .line 2483
    :cond_a
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textMarked;

    if-eqz v0, :cond_b

    .line 2484
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_textMarked;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getLastRichText(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object p1

    return-object p1

    .line 2485
    :cond_b
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textPhone;

    if-eqz v0, :cond_c

    .line 2486
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_textPhone;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    :try_start_0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getLastRichText(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    throw p1

    :cond_c
    return-object p1
.end method

.method private getLinkTextColor()I
    .locals 1

    .line 2715
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteLinkText:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ArticleViewer;->getThemedColor(I)I

    move-result v0

    return v0
.end method

.method public static getPlainText(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/CharSequence;
    .locals 4

    .line 2645
    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 2648
    :cond_0
    instance-of v1, p0, Lorg/telegram/tgnet/TLRPC$TL_textFixed;

    if-eqz v1, :cond_1

    .line 2649
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_textFixed;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {p0}, Lorg/telegram/ui/ArticleViewer;->getPlainText(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 2650
    :cond_1
    instance-of v1, p0, Lorg/telegram/tgnet/TLRPC$TL_textItalic;

    if-eqz v1, :cond_2

    .line 2651
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_textItalic;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {p0}, Lorg/telegram/ui/ArticleViewer;->getPlainText(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 2652
    :cond_2
    instance-of v1, p0, Lorg/telegram/tgnet/TLRPC$TL_textBold;

    if-eqz v1, :cond_3

    .line 2653
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_textBold;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {p0}, Lorg/telegram/ui/ArticleViewer;->getPlainText(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 2654
    :cond_3
    instance-of v1, p0, Lorg/telegram/tgnet/TLRPC$TL_textUnderline;

    if-eqz v1, :cond_4

    .line 2655
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_textUnderline;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {p0}, Lorg/telegram/ui/ArticleViewer;->getPlainText(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 2656
    :cond_4
    instance-of v1, p0, Lorg/telegram/tgnet/TLRPC$TL_textStrike;

    if-eqz v1, :cond_5

    .line 2657
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_textStrike;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {p0}, Lorg/telegram/ui/ArticleViewer;->getPlainText(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 2658
    :cond_5
    instance-of v1, p0, Lorg/telegram/tgnet/TLRPC$TL_textEmail;

    if-eqz v1, :cond_6

    .line 2659
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_textEmail;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {p0}, Lorg/telegram/ui/ArticleViewer;->getPlainText(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 2660
    :cond_6
    instance-of v1, p0, Lorg/telegram/tgnet/TLRPC$TL_textUrl;

    if-eqz v1, :cond_7

    .line 2661
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_textUrl;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {p0}, Lorg/telegram/ui/ArticleViewer;->getPlainText(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 2662
    :cond_7
    instance-of v1, p0, Lorg/telegram/tgnet/TLRPC$TL_textPlain;

    if-eqz v1, :cond_8

    .line 2663
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_textPlain;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_textPlain;->text:Ljava/lang/String;

    return-object p0

    .line 2664
    :cond_8
    instance-of v1, p0, Lorg/telegram/tgnet/TLRPC$TL_textAnchor;

    if-eqz v1, :cond_9

    .line 2665
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_textAnchor;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {p0}, Lorg/telegram/ui/ArticleViewer;->getPlainText(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 2666
    :cond_9
    instance-of v1, p0, Lorg/telegram/tgnet/TLRPC$TL_textEmpty;

    if-eqz v1, :cond_a

    return-object v0

    .line 2668
    :cond_a
    instance-of v1, p0, Lorg/telegram/tgnet/TLRPC$TL_textConcat;

    if-eqz v1, :cond_c

    .line 2669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2670
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$RichText;->texts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_b

    .line 2672
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$RichText;->texts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer;->getPlainText(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_b
    return-object v0

    .line 2675
    :cond_c
    instance-of v1, p0, Lorg/telegram/tgnet/TLRPC$TL_textSubscript;

    if-eqz v1, :cond_d

    .line 2676
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_textSubscript;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {p0}, Lorg/telegram/ui/ArticleViewer;->getPlainText(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 2677
    :cond_d
    instance-of v1, p0, Lorg/telegram/tgnet/TLRPC$TL_textSuperscript;

    if-eqz v1, :cond_e

    .line 2678
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_textSuperscript;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {p0}, Lorg/telegram/ui/ArticleViewer;->getPlainText(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 2679
    :cond_e
    instance-of v1, p0, Lorg/telegram/tgnet/TLRPC$TL_textMarked;

    if-eqz v1, :cond_f

    .line 2680
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_textMarked;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {p0}, Lorg/telegram/ui/ArticleViewer;->getPlainText(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 2681
    :cond_f
    instance-of v1, p0, Lorg/telegram/tgnet/TLRPC$TL_textPhone;

    if-eqz v1, :cond_10

    .line 2682
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_textPhone;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    :try_start_0
    invoke-static {p0}, Lorg/telegram/ui/ArticleViewer;->getPlainText(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/CharSequence;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    :cond_10
    return-object v0
.end method

.method private getText(Lorg/telegram/tgnet/TLRPC$WebPage;Landroid/view/View;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;I)Ljava/lang/CharSequence;
    .locals 18

    move-object/from16 v0, p4

    const/4 v8, 0x0

    if-nez v0, :cond_0

    return-object v8

    .line 2499
    :cond_0
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_textFixed;

    if-eqz v1, :cond_1

    .line 2500
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_textFixed;

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/ArticleViewer;->getText(Lorg/telegram/tgnet/TLRPC$WebPage;Landroid/view/View;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 2501
    :cond_1
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_textItalic;

    if-eqz v1, :cond_2

    .line 2502
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_textItalic;

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/ArticleViewer;->getText(Lorg/telegram/tgnet/TLRPC$WebPage;Landroid/view/View;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 2503
    :cond_2
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_textBold;

    if-eqz v1, :cond_3

    .line 2504
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_textBold;

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/ArticleViewer;->getText(Lorg/telegram/tgnet/TLRPC$WebPage;Landroid/view/View;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 2505
    :cond_3
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_textUnderline;

    if-eqz v1, :cond_4

    .line 2506
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_textUnderline;

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/ArticleViewer;->getText(Lorg/telegram/tgnet/TLRPC$WebPage;Landroid/view/View;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 2507
    :cond_4
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_textStrike;

    if-eqz v1, :cond_5

    .line 2508
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_textStrike;

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/ArticleViewer;->getText(Lorg/telegram/tgnet/TLRPC$WebPage;Landroid/view/View;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 2509
    :cond_5
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_textEmail;

    const-class v9, Landroid/text/style/MetricAffectingSpan;

    const/16 v10, 0x21

    const/4 v11, 0x0

    if-eqz v1, :cond_9

    .line 2510
    new-instance v12, Landroid/text/SpannableStringBuilder;

    move-object v1, v0

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_textEmail;

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/ArticleViewer;->getText(Lorg/telegram/tgnet/TLRPC$WebPage;Landroid/view/View;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v12, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2511
    invoke-virtual {v12}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {v12, v11, v2, v9}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/MetricAffectingSpan;

    .line 2512
    invoke-virtual {v12}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_8

    .line 2513
    new-instance v3, Lorg/telegram/ui/Components/TextPaintUrlSpan;

    if-eqz v2, :cond_6

    array-length v2, v2

    if-nez v2, :cond_7

    :cond_6
    invoke-direct {v1, v4, v0, v6}, Lorg/telegram/ui/ArticleViewer;->getTextPaint(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/TextPaint;

    move-result-object v8

    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mailto:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->getUrl(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v8, v0}, Lorg/telegram/ui/Components/TextPaintUrlSpan;-><init>(Landroid/text/TextPaint;Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-virtual {v12, v3, v11, v0, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_8
    return-object v12

    :cond_9
    move-object/from16 v1, p0

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    .line 2516
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_textUrl;

    const-wide/16 v12, 0x0

    if-eqz v2, :cond_e

    .line 2517
    move-object v14, v0

    check-cast v14, Lorg/telegram/tgnet/TLRPC$TL_textUrl;

    .line 2518
    new-instance v15, Landroid/text/SpannableStringBuilder;

    iget-object v5, v14, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/ArticleViewer;->getText(Lorg/telegram/tgnet/TLRPC$WebPage;Landroid/view/View;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v15, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2519
    invoke-virtual {v15}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {v15, v11, v2, v9}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/MetricAffectingSpan;

    if-eqz v2, :cond_a

    .line 2520
    array-length v2, v2

    if-nez v2, :cond_b

    :cond_a
    invoke-direct {v1, v4, v0, v6}, Lorg/telegram/ui/ArticleViewer;->getTextPaint(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/TextPaint;

    move-result-object v8

    .line 2522
    :cond_b
    iget-wide v2, v14, Lorg/telegram/tgnet/TLRPC$RichText;->webpage_id:J

    cmp-long v2, v2, v12

    if-eqz v2, :cond_c

    .line 2523
    new-instance v2, Lorg/telegram/ui/Components/TextPaintWebpageUrlSpan;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->getUrl(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v8, v0}, Lorg/telegram/ui/Components/TextPaintWebpageUrlSpan;-><init>(Landroid/text/TextPaint;Ljava/lang/String;)V

    goto :goto_0

    .line 2525
    :cond_c
    new-instance v2, Lorg/telegram/ui/Components/TextPaintUrlSpan;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->getUrl(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v8, v0}, Lorg/telegram/ui/Components/TextPaintUrlSpan;-><init>(Landroid/text/TextPaint;Ljava/lang/String;)V

    .line 2527
    :goto_0
    invoke-virtual {v15}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_d

    .line 2528
    invoke-virtual {v15}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-virtual {v15, v2, v11, v0, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_d
    return-object v15

    .line 2531
    :cond_e
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_textPlain;

    if-eqz v2, :cond_f

    .line 2532
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_textPlain;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_textPlain;->text:Ljava/lang/String;

    return-object v0

    .line 2533
    :cond_f
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_textAnchor;

    if-eqz v2, :cond_10

    .line 2534
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_textAnchor;

    .line 2535
    new-instance v8, Landroid/text/SpannableStringBuilder;

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/ArticleViewer;->getText(Lorg/telegram/tgnet/TLRPC$WebPage;Landroid/view/View;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v8, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2536
    new-instance v2, Lorg/telegram/ui/Components/AnchorSpan;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_textAnchor;->name:Ljava/lang/String;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/AnchorSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const/16 v3, 0x11

    invoke-virtual {v8, v2, v11, v0, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v8

    .line 2538
    :cond_10
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_textEmpty;

    const-string v3, ""

    if-eqz v2, :cond_11

    return-object v3

    .line 2540
    :cond_11
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_textConcat;

    const/4 v14, 0x1

    if-eqz v2, :cond_1b

    .line 2541
    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2542
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$RichText;->texts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v15, v11

    :goto_1
    if-ge v15, v9, :cond_1a

    .line 2544
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$RichText;->texts:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lorg/telegram/tgnet/TLRPC$RichText;

    .line 2545
    invoke-direct {v1, v5}, Lorg/telegram/ui/ArticleViewer;->getLastRichText(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v2

    if-ltz p6, :cond_12

    .line 2546
    instance-of v3, v5, Lorg/telegram/tgnet/TLRPC$TL_textUrl;

    if-eqz v3, :cond_12

    move-object v3, v5

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_textUrl;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$RichText;->webpage_id:J

    cmp-long v3, v3, v12

    if-eqz v3, :cond_12

    move/from16 v16, v14

    goto :goto_2

    :cond_12
    move/from16 v16, v11

    .line 2547
    :goto_2
    const-string v3, " "

    if-eqz v16, :cond_13

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    sub-int/2addr v4, v14

    invoke-virtual {v8, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    const/16 v6, 0xa

    if-eq v4, v6, :cond_13

    .line 2548
    invoke-virtual {v8, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2549
    new-instance v4, Lorg/telegram/ui/Cells/TextSelectionHelper$IgnoreCopySpannable;

    invoke-direct {v4}, Lorg/telegram/ui/Cells/TextSelectionHelper$IgnoreCopySpannable;-><init>()V

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    sub-int/2addr v6, v14

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v8, v4, v6, v7, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_13
    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object v12, v2

    move-object v13, v3

    move/from16 v17, v14

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 2552
    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/ArticleViewer;->getText(Lorg/telegram/tgnet/TLRPC$WebPage;Landroid/view/View;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;I)Ljava/lang/CharSequence;

    move-result-object v14

    .line 2553
    invoke-direct {v1, v12}, Lorg/telegram/ui/ArticleViewer;->getTextFlags(Lorg/telegram/tgnet/TLRPC$RichText;)I

    move-result v2

    .line 2554
    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 2555
    invoke-virtual {v8, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    if-eqz v2, :cond_18

    .line 2556
    instance-of v7, v14, Landroid/text/SpannableStringBuilder;

    if-nez v7, :cond_18

    and-int/lit8 v7, v2, 0x8

    if-nez v7, :cond_15

    and-int/lit16 v7, v2, 0x200

    if-eqz v7, :cond_14

    goto :goto_3

    .line 2572
    :cond_14
    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-eq v3, v2, :cond_18

    .line 2573
    new-instance v2, Lorg/telegram/ui/Components/TextPaintSpan;

    invoke-direct {v1, v4, v12, v6}, Lorg/telegram/ui/ArticleViewer;->getTextPaint(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/TextPaint;

    move-result-object v5

    invoke-direct {v2, v5}, Lorg/telegram/ui/Components/TextPaintSpan;-><init>(Landroid/text/TextPaint;)V

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-virtual {v8, v2, v3, v5, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_5

    .line 2558
    :cond_15
    :goto_3
    invoke-static {v5}, Lorg/telegram/ui/ArticleViewer;->getUrl(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_16

    .line 2560
    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer;->getUrl(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/String;

    move-result-object v5

    :cond_16
    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_17

    .line 2564
    new-instance v2, Lorg/telegram/ui/Components/TextPaintWebpageUrlSpan;

    invoke-direct {v1, v4, v12, v6}, Lorg/telegram/ui/ArticleViewer;->getTextPaint(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/TextPaint;

    move-result-object v7

    invoke-direct {v2, v7, v5}, Lorg/telegram/ui/Components/TextPaintWebpageUrlSpan;-><init>(Landroid/text/TextPaint;Ljava/lang/String;)V

    goto :goto_4

    .line 2566
    :cond_17
    new-instance v2, Lorg/telegram/ui/Components/TextPaintUrlSpan;

    invoke-direct {v1, v4, v12, v6}, Lorg/telegram/ui/ArticleViewer;->getTextPaint(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/TextPaint;

    move-result-object v7

    invoke-direct {v2, v7, v5}, Lorg/telegram/ui/Components/TextPaintUrlSpan;-><init>(Landroid/text/TextPaint;Ljava/lang/String;)V

    .line 2568
    :goto_4
    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    if-eq v3, v5, :cond_18

    .line 2569
    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-virtual {v8, v2, v3, v5, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_18
    :goto_5
    if-eqz v16, :cond_19

    add-int/lit8 v2, v9, -0x1

    if-eq v15, v2, :cond_19

    .line 2578
    invoke-virtual {v8, v13}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2579
    new-instance v2, Lorg/telegram/ui/Cells/TextSelectionHelper$IgnoreCopySpannable;

    invoke-direct {v2}, Lorg/telegram/ui/Cells/TextSelectionHelper$IgnoreCopySpannable;-><init>()V

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-virtual {v8, v2, v3, v5, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_19
    add-int/lit8 v15, v15, 0x1

    move/from16 v14, v17

    const-wide/16 v12, 0x0

    goto/16 :goto_1

    :cond_1a
    return-object v8

    :cond_1b
    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v17, v14

    .line 2583
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_textSubscript;

    if-eqz v2, :cond_1c

    .line 2584
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_textSubscript;

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/ArticleViewer;->getText(Lorg/telegram/tgnet/TLRPC$WebPage;Landroid/view/View;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 2585
    :cond_1c
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_textSuperscript;

    if-eqz v1, :cond_1d

    .line 2586
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_textSuperscript;

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/ArticleViewer;->getText(Lorg/telegram/tgnet/TLRPC$WebPage;Landroid/view/View;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 2587
    :cond_1d
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_textMarked;

    if-eqz v1, :cond_21

    .line 2588
    new-instance v12, Landroid/text/SpannableStringBuilder;

    move-object v1, v0

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_textMarked;

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/ArticleViewer;->getText(Lorg/telegram/tgnet/TLRPC$WebPage;Landroid/view/View;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v12, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2589
    invoke-virtual {v12}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {v12, v11, v2, v9}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/MetricAffectingSpan;

    .line 2590
    invoke-virtual {v12}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_20

    .line 2591
    new-instance v3, Lorg/telegram/ui/Components/TextPaintMarkSpan;

    if-eqz v2, :cond_1e

    array-length v2, v2

    if-nez v2, :cond_1f

    :cond_1e
    invoke-direct {v1, v4, v0, v6}, Lorg/telegram/ui/ArticleViewer;->getTextPaint(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/TextPaint;

    move-result-object v8

    :cond_1f
    invoke-direct {v3, v8}, Lorg/telegram/ui/Components/TextPaintMarkSpan;-><init>(Landroid/text/TextPaint;)V

    invoke-virtual {v12}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-virtual {v12, v3, v11, v0, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_20
    return-object v12

    :cond_21
    move-object/from16 v1, p0

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    .line 2594
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_textPhone;

    if-eqz v2, :cond_25

    .line 2595
    new-instance v12, Landroid/text/SpannableStringBuilder;

    move-object v2, v0

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_textPhone;

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v7, p6

    :try_start_0
    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/ArticleViewer;->getText(Lorg/telegram/tgnet/TLRPC$WebPage;Landroid/view/View;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;I)Ljava/lang/CharSequence;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v13, v1

    invoke-direct {v12, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2596
    invoke-virtual {v12}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {v12, v11, v1, v9}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/MetricAffectingSpan;

    .line 2597
    invoke-virtual {v12}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_24

    .line 2598
    new-instance v2, Lorg/telegram/ui/Components/TextPaintUrlSpan;

    if-eqz v1, :cond_22

    array-length v1, v1

    if-nez v1, :cond_23

    :cond_22
    invoke-direct {v13, v4, v0, v6}, Lorg/telegram/ui/ArticleViewer;->getTextPaint(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/TextPaint;

    move-result-object v8

    :cond_23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tel:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->getUrl(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v8, v0}, Lorg/telegram/ui/Components/TextPaintUrlSpan;-><init>(Landroid/text/TextPaint;Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-virtual {v12, v2, v11, v0, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_24
    return-object v12

    :catchall_0
    move-exception v0

    move-object v13, v1

    .line 2595
    throw v0

    :cond_25
    move-object/from16 v2, p1

    move-object v13, v1

    .line 2601
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_textImage;

    if-eqz v1, :cond_2d

    .line 2602
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_textImage;

    .line 2603
    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$TL_textImage;->document_id:J

    invoke-static {v2, v4, v5}, Lorg/telegram/ui/ArticleViewer$WebPageUtils;->getDocumentWithId(Lorg/telegram/tgnet/TLRPC$WebPage;J)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    .line 2604
    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$TL_textImage;->photo_id:J

    invoke-static {v2, v4, v5}, Lorg/telegram/ui/ArticleViewer$WebPageUtils;->getPhotoWithId(Lorg/telegram/tgnet/TLRPC$WebPage;J)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v4

    .line 2605
    const-string v5, "*"

    if-eqz v1, :cond_29

    .line 2606
    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2607
    iget v3, v0, Lorg/telegram/tgnet/TLRPC$TL_textImage;->w:I

    int-to-float v3, v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    .line 2608
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_textImage;->h:I

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 2609
    invoke-static/range {p6 .. p6}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v3, v4, :cond_26

    int-to-float v5, v4

    int-to-float v3, v3

    div-float/2addr v5, v3

    int-to-float v0, v0

    mul-float/2addr v0, v5

    float-to-int v0, v0

    :goto_6
    move v5, v0

    goto :goto_7

    :cond_26
    move v4, v3

    goto :goto_6

    :goto_7
    if-eqz p2, :cond_28

    .line 2616
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v13, v0}, Lorg/telegram/ui/ArticleViewer;->getThemedColor(I)I

    move-result v0

    .line 2617
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    const v6, 0x3e59b3d0    # 0.2126f

    mul-float/2addr v3, v6

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3f371759    # 0.7152f

    mul-float/2addr v6, v7

    add-float/2addr v3, v6

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    const v6, 0x3d93dd98    # 0.0722f

    mul-float/2addr v0, v6

    add-float/2addr v3, v0

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr v3, v0

    .line 2618
    new-instance v0, Lorg/telegram/ui/Components/TextPaintImageReceiverSpan;

    const v6, 0x3f347ae1    # 0.705f

    cmpg-float v3, v3, v6

    if-gtz v3, :cond_27

    move/from16 v7, v17

    goto :goto_8

    :cond_27
    move v7, v11

    :goto_8
    const/4 v6, 0x0

    move-object v3, v2

    move-object v2, v1

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/TextPaintImageReceiverSpan;-><init>(Landroid/view/View;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;IIZZ)V

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {v8, v0, v11, v1, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_28
    return-object v8

    .line 2621
    :cond_29
    instance-of v1, v4, Lorg/telegram/ui/web/WebInstantView$WebPhoto;

    if-eqz v1, :cond_2c

    .line 2622
    move-object v2, v4

    check-cast v2, Lorg/telegram/ui/web/WebInstantView$WebPhoto;

    .line 2623
    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2624
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_textImage;->w:I

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    .line 2625
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_textImage;->h:I

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 2626
    invoke-static/range {p6 .. p6}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v1, v3, :cond_2a

    int-to-float v4, v3

    int-to-float v1, v1

    div-float/2addr v4, v1

    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    move v4, v3

    :goto_9
    move v5, v0

    goto :goto_a

    :cond_2a
    move v4, v1

    goto :goto_9

    :goto_a
    if-eqz p2, :cond_2b

    .line 2633
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v13, v0}, Lorg/telegram/ui/ArticleViewer;->getThemedColor(I)I

    .line 2634
    new-instance v0, Lorg/telegram/ui/Components/TextPaintImageReceiverSpan;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/TextPaintImageReceiverSpan;-><init>(Landroid/view/View;Lorg/telegram/ui/web/WebInstantView$WebPhoto;Ljava/lang/Object;IIZZ)V

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {v8, v0, v11, v1, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_2b
    return-object v8

    :cond_2c
    return-object v3

    .line 2641
    :cond_2d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not supported "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getText(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Landroid/view/View;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;I)Ljava/lang/CharSequence;
    .locals 7

    .line 2492
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetcurrentPage(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ArticleViewer;->getText(Lorg/telegram/tgnet/TLRPC$WebPage;Landroid/view/View;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method private getTextColor()I
    .locals 1

    .line 2711
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ArticleViewer;->getThemedColor(I)I

    move-result v0

    return v0
.end method

.method private getTextFlags(Lorg/telegram/tgnet/TLRPC$RichText;)I
    .locals 4

    .line 2426
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textFixed;

    if-eqz v0, :cond_0

    .line 2427
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$RichText;->parentRichText:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getTextFlags(Lorg/telegram/tgnet/TLRPC$RichText;)I

    move-result p1

    or-int/lit8 p1, p1, 0x4

    return p1

    .line 2428
    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textItalic;

    if-eqz v0, :cond_1

    .line 2429
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$RichText;->parentRichText:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getTextFlags(Lorg/telegram/tgnet/TLRPC$RichText;)I

    move-result p1

    or-int/lit8 p1, p1, 0x2

    return p1

    .line 2430
    :cond_1
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textBold;

    if-eqz v0, :cond_2

    .line 2431
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$RichText;->parentRichText:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getTextFlags(Lorg/telegram/tgnet/TLRPC$RichText;)I

    move-result p1

    or-int/lit8 p1, p1, 0x1

    return p1

    .line 2432
    :cond_2
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textUnderline;

    if-eqz v0, :cond_3

    .line 2433
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$RichText;->parentRichText:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getTextFlags(Lorg/telegram/tgnet/TLRPC$RichText;)I

    move-result p1

    or-int/lit8 p1, p1, 0x10

    return p1

    .line 2434
    :cond_3
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textStrike;

    if-eqz v0, :cond_4

    .line 2435
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$RichText;->parentRichText:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getTextFlags(Lorg/telegram/tgnet/TLRPC$RichText;)I

    move-result p1

    or-int/lit8 p1, p1, 0x20

    return p1

    .line 2436
    :cond_4
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textEmail;

    if-eqz v0, :cond_5

    .line 2437
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$RichText;->parentRichText:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getTextFlags(Lorg/telegram/tgnet/TLRPC$RichText;)I

    move-result p1

    or-int/lit8 p1, p1, 0x8

    return p1

    .line 2438
    :cond_5
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textPhone;

    if-eqz v0, :cond_6

    .line 2439
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$RichText;->parentRichText:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getTextFlags(Lorg/telegram/tgnet/TLRPC$RichText;)I

    move-result p1

    or-int/lit8 p1, p1, 0x8

    return p1

    .line 2440
    :cond_6
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textUrl;

    if-eqz v0, :cond_8

    .line 2441
    move-object v0, p1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_textUrl;

    .line 2442
    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$RichText;->webpage_id:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    .line 2443
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$RichText;->parentRichText:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getTextFlags(Lorg/telegram/tgnet/TLRPC$RichText;)I

    move-result p1

    or-int/lit16 p1, p1, 0x200

    return p1

    .line 2445
    :cond_7
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$RichText;->parentRichText:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getTextFlags(Lorg/telegram/tgnet/TLRPC$RichText;)I

    move-result p1

    or-int/lit8 p1, p1, 0x8

    return p1

    .line 2447
    :cond_8
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textSubscript;

    if-eqz v0, :cond_9

    .line 2448
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$RichText;->parentRichText:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getTextFlags(Lorg/telegram/tgnet/TLRPC$RichText;)I

    move-result p1

    or-int/lit16 p1, p1, 0x80

    return p1

    .line 2449
    :cond_9
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textSuperscript;

    if-eqz v0, :cond_a

    .line 2450
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$RichText;->parentRichText:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getTextFlags(Lorg/telegram/tgnet/TLRPC$RichText;)I

    move-result p1

    or-int/lit16 p1, p1, 0x100

    return p1

    .line 2451
    :cond_a
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textMarked;

    if-eqz v0, :cond_b

    .line 2452
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$RichText;->parentRichText:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getTextFlags(Lorg/telegram/tgnet/TLRPC$RichText;)I

    move-result p1

    or-int/lit8 p1, p1, 0x40

    return p1

    :cond_b
    if-eqz p1, :cond_c

    .line 2454
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$RichText;->parentRichText:Lorg/telegram/tgnet/TLRPC$RichText;

    :try_start_0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getTextFlags(Lorg/telegram/tgnet/TLRPC$RichText;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    throw p1

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method private getTextPaint(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/TextPaint;
    .locals 10

    .line 2723
    invoke-direct {p0, p2}, Lorg/telegram/ui/ArticleViewer;->getTextFlags(Lorg/telegram/tgnet/TLRPC$RichText;)I

    move-result v0

    const/high16 v1, 0x41600000    # 14.0f

    .line 2725
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    .line 2728
    sget v3, Lorg/telegram/messenger/SharedConfig;->ivFontSize:I

    add-int/lit8 v3, v3, -0x10

    int-to-float v3, v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    .line 2730
    instance-of v4, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    const/high16 v5, 0x41400000    # 12.0f

    const/high16 v6, -0x10000

    if-eqz v4, :cond_2

    .line 2731
    move-object v2, p3

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    .line 2732
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    if-eq v2, p2, :cond_1

    if-ne v2, p1, :cond_0

    goto :goto_1

    .line 2736
    :cond_0
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->photoCreditTextPaints:Landroid/util/SparseArray;

    .line 2737
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    :goto_0
    move v2, p2

    goto :goto_2

    .line 2733
    :cond_1
    :goto_1
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->photoCaptionTextPaints:Landroid/util/SparseArray;

    .line 2734
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    goto :goto_0

    .line 2739
    :goto_2
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getGrayTextColor()I

    move-result p2

    goto/16 :goto_13

    .line 2740
    :cond_2
    instance-of v4, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockMap;

    if-eqz v4, :cond_5

    .line 2741
    move-object v2, p3

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockMap;

    .line 2742
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockMap;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    if-eq v2, p2, :cond_4

    if-ne v2, p1, :cond_3

    goto :goto_4

    .line 2746
    :cond_3
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->photoCreditTextPaints:Landroid/util/SparseArray;

    .line 2747
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    :goto_3
    move v2, p2

    goto :goto_5

    .line 2743
    :cond_4
    :goto_4
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->photoCaptionTextPaints:Landroid/util/SparseArray;

    .line 2744
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    goto :goto_3

    .line 2749
    :goto_5
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getGrayTextColor()I

    move-result p2

    goto/16 :goto_13

    .line 2750
    :cond_5
    instance-of v4, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;

    if-eqz v4, :cond_6

    .line 2751
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->titleTextPaints:Landroid/util/SparseArray;

    const/high16 p2, 0x41b80000    # 23.0f

    .line 2752
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    .line 2753
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result p2

    goto/16 :goto_13

    .line 2754
    :cond_6
    instance-of v4, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockKicker;

    if-eqz v4, :cond_7

    .line 2755
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->kickerTextPaints:Landroid/util/SparseArray;

    .line 2756
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    .line 2757
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result p2

    goto/16 :goto_13

    .line 2758
    :cond_7
    instance-of v4, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;

    if-eqz v4, :cond_8

    .line 2759
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->authorTextPaints:Landroid/util/SparseArray;

    .line 2760
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    .line 2761
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getGrayTextColor()I

    move-result p2

    goto/16 :goto_13

    .line 2762
    :cond_8
    instance-of v4, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockFooter;

    if-eqz v4, :cond_9

    .line 2763
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->footerTextPaints:Landroid/util/SparseArray;

    .line 2764
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    .line 2765
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getGrayTextColor()I

    move-result p2

    goto/16 :goto_13

    .line 2766
    :cond_9
    instance-of v4, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubtitle;

    const/high16 v7, 0x41a00000    # 20.0f

    if-eqz v4, :cond_a

    .line 2767
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->subtitleTextPaints:Landroid/util/SparseArray;

    .line 2768
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    .line 2769
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result p2

    goto/16 :goto_13

    .line 2770
    :cond_a
    instance-of v4, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockHeader;

    if-eqz v4, :cond_b

    .line 2771
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->headerTextPaints:Landroid/util/SparseArray;

    .line 2772
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    .line 2773
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result p2

    goto/16 :goto_13

    .line 2774
    :cond_b
    instance-of v4, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubheader;

    if-eqz v4, :cond_c

    .line 2775
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->subheaderTextPaints:Landroid/util/SparseArray;

    const/high16 p2, 0x41880000    # 17.0f

    .line 2776
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    .line 2777
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result p2

    goto/16 :goto_13

    .line 2778
    :cond_c
    instance-of v4, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;

    const/high16 v7, 0x41700000    # 15.0f

    const/4 v8, 0x0

    if-eqz v4, :cond_e

    .line 2779
    move-object p2, p3

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;

    .line 2780
    iget-object v4, p2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    if-ne v4, p1, :cond_d

    .line 2781
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->quoteTextPaints:Landroid/util/SparseArray;

    .line 2782
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    .line 2783
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result p2

    goto/16 :goto_13

    .line 2784
    :cond_d
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;->caption:Lorg/telegram/tgnet/TLRPC$RichText;

    if-ne p2, p1, :cond_26

    .line 2785
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->photoCaptionTextPaints:Landroid/util/SparseArray;

    .line 2786
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    .line 2787
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getGrayTextColor()I

    move-result p2

    goto/16 :goto_13

    .line 2789
    :cond_e
    instance-of v4, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;

    if-eqz v4, :cond_10

    .line 2790
    move-object p2, p3

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;

    .line 2791
    iget-object v4, p2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    if-ne v4, p1, :cond_f

    .line 2792
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->quoteTextPaints:Landroid/util/SparseArray;

    .line 2793
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    .line 2794
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result p2

    goto/16 :goto_13

    .line 2795
    :cond_f
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;->caption:Lorg/telegram/tgnet/TLRPC$RichText;

    if-ne p2, p1, :cond_26

    .line 2796
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->photoCaptionTextPaints:Landroid/util/SparseArray;

    .line 2797
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    .line 2798
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getGrayTextColor()I

    move-result p2

    goto/16 :goto_13

    .line 2800
    :cond_10
    instance-of v4, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPreformatted;

    if-eqz v4, :cond_11

    .line 2801
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->preformattedTextPaints:Landroid/util/SparseArray;

    .line 2802
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    .line 2803
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result p2

    goto/16 :goto_13

    .line 2804
    :cond_11
    instance-of v4, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

    const/high16 v9, 0x41800000    # 16.0f

    if-eqz v4, :cond_12

    .line 2805
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->paragraphTextPaints:Landroid/util/SparseArray;

    .line 2806
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    .line 2807
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result p2

    goto/16 :goto_13

    .line 2808
    :cond_12
    invoke-direct {p0, p3}, Lorg/telegram/ui/ArticleViewer;->isListItemBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 2809
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->listTextPaints:Landroid/util/SparseArray;

    .line 2810
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    .line 2811
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result p2

    goto/16 :goto_13

    .line 2812
    :cond_13
    instance-of v4, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    if-eqz v4, :cond_16

    .line 2813
    move-object v2, p3

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    .line 2814
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    if-eq v2, p2, :cond_15

    if-ne v2, p1, :cond_14

    goto :goto_7

    .line 2818
    :cond_14
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->photoCreditTextPaints:Landroid/util/SparseArray;

    .line 2819
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    :goto_6
    move v2, p2

    goto :goto_8

    .line 2815
    :cond_15
    :goto_7
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->photoCaptionTextPaints:Landroid/util/SparseArray;

    .line 2816
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    goto :goto_6

    .line 2821
    :goto_8
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getGrayTextColor()I

    move-result p2

    goto/16 :goto_13

    .line 2822
    :cond_16
    instance-of v4, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    if-eqz v4, :cond_19

    .line 2823
    move-object v2, p3

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    .line 2824
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    if-eq v2, p2, :cond_18

    if-ne v2, p1, :cond_17

    goto :goto_a

    .line 2828
    :cond_17
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->photoCreditTextPaints:Landroid/util/SparseArray;

    .line 2829
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    :goto_9
    move v2, p2

    goto :goto_b

    .line 2825
    :cond_18
    :goto_a
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->photoCaptionTextPaints:Landroid/util/SparseArray;

    .line 2826
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    goto :goto_9

    .line 2831
    :goto_b
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getGrayTextColor()I

    move-result p2

    goto/16 :goto_13

    .line 2832
    :cond_19
    instance-of v4, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    if-eqz v4, :cond_1c

    .line 2833
    move-object v2, p3

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    .line 2834
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    if-eq v2, p2, :cond_1b

    if-ne v2, p1, :cond_1a

    goto :goto_d

    .line 2838
    :cond_1a
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->photoCreditTextPaints:Landroid/util/SparseArray;

    .line 2839
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    :goto_c
    move v2, p2

    goto :goto_e

    .line 2835
    :cond_1b
    :goto_d
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->photoCaptionTextPaints:Landroid/util/SparseArray;

    .line 2836
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    goto :goto_c

    .line 2841
    :goto_e
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getGrayTextColor()I

    move-result p2

    goto/16 :goto_13

    .line 2842
    :cond_1c
    instance-of p1, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    if-eqz p1, :cond_1f

    .line 2843
    move-object p1, p3

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    .line 2844
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    if-ne p2, v4, :cond_1d

    .line 2845
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->photoCaptionTextPaints:Landroid/util/SparseArray;

    .line 2846
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    .line 2847
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getGrayTextColor()I

    move-result p2

    goto/16 :goto_13

    .line 2848
    :cond_1d
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->credit:Lorg/telegram/tgnet/TLRPC$RichText;

    if-ne p2, p1, :cond_1e

    .line 2849
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->photoCreditTextPaints:Landroid/util/SparseArray;

    .line 2850
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    .line 2851
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getGrayTextColor()I

    move-result p2

    goto/16 :goto_13

    :cond_1e
    if-eqz p2, :cond_26

    .line 2853
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->embedPostTextPaints:Landroid/util/SparseArray;

    .line 2854
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    .line 2855
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result p2

    goto/16 :goto_13

    .line 2857
    :cond_1f
    instance-of p1, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    if-eqz p1, :cond_21

    .line 2858
    move-object p1, p3

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    .line 2859
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    if-ne p2, p1, :cond_20

    .line 2860
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->mediaCaptionTextPaints:Landroid/util/SparseArray;

    .line 2861
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    :goto_f
    move v2, p2

    goto :goto_10

    .line 2863
    :cond_20
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->mediaCreditTextPaints:Landroid/util/SparseArray;

    .line 2864
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    goto :goto_f

    .line 2866
    :goto_10
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result p2

    goto :goto_13

    .line 2867
    :cond_21
    instance-of p1, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;

    if-eqz p1, :cond_23

    .line 2868
    move-object p1, p3

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;

    .line 2869
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    if-ne p2, p1, :cond_22

    .line 2870
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->mediaCaptionTextPaints:Landroid/util/SparseArray;

    .line 2871
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    :goto_11
    move v2, p2

    goto :goto_12

    .line 2873
    :cond_22
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->mediaCreditTextPaints:Landroid/util/SparseArray;

    .line 2874
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    goto :goto_11

    .line 2876
    :goto_12
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result p2

    goto :goto_13

    .line 2877
    :cond_23
    instance-of p1, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockRelatedArticles;

    if-eqz p1, :cond_24

    .line 2878
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->relatedArticleTextPaints:Landroid/util/SparseArray;

    .line 2879
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    .line 2880
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getGrayTextColor()I

    move-result p2

    goto :goto_13

    .line 2881
    :cond_24
    instance-of p1, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;

    if-eqz p1, :cond_25

    .line 2882
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->detailsTextPaints:Landroid/util/SparseArray;

    .line 2883
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    .line 2884
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result p2

    goto :goto_13

    .line 2885
    :cond_25
    instance-of p1, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;

    if-eqz p1, :cond_26

    .line 2886
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->tableTextPaints:Landroid/util/SparseArray;

    .line 2887
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    .line 2888
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result p2

    goto :goto_13

    :cond_26
    move p2, v6

    move-object p1, v8

    :goto_13
    and-int/lit16 v4, v0, 0x100

    if-nez v4, :cond_27

    and-int/lit16 v5, v0, 0x80

    if-eqz v5, :cond_28

    :cond_27
    const/high16 v5, 0x40800000    # 4.0f

    .line 2891
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v2, v5

    :cond_28
    const/4 v5, 0x1

    if-nez p1, :cond_2a

    .line 2894
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->errorTextPaint:Landroid/text/TextPaint;

    if-nez p1, :cond_29

    .line 2895
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1, v5}, Landroid/text/TextPaint;-><init>(I)V

    sput-object p1, Lorg/telegram/ui/ArticleViewer;->errorTextPaint:Landroid/text/TextPaint;

    .line 2896
    invoke-virtual {p1, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 2898
    :cond_29
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->errorTextPaint:Landroid/text/TextPaint;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2899
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->errorTextPaint:Landroid/text/TextPaint;

    return-object p1

    .line 2901
    :cond_2a
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/TextPaint;

    if-nez v1, :cond_3d

    .line 2903
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1, v5}, Landroid/text/TextPaint;-><init>(I)V

    and-int/lit8 v6, v0, 0x4

    if-eqz v6, :cond_2b

    .line 2905
    const-string p3, "fonts/rmono.ttf"

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/16 :goto_16

    .line 2907
    :cond_2b
    instance-of v6, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockRelatedArticles;

    if-eqz v6, :cond_2c

    .line 2908
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/16 :goto_16

    .line 2909
    :cond_2c
    iget v6, p0, Lorg/telegram/ui/ArticleViewer;->selectedFont:I

    if-eq v6, v5, :cond_30

    instance-of v6, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;

    if-nez v6, :cond_30

    instance-of v6, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockKicker;

    if-nez v6, :cond_30

    instance-of v6, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockHeader;

    if-nez v6, :cond_30

    instance-of v6, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubtitle;

    if-nez v6, :cond_30

    instance-of v6, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubheader;

    if-eqz v6, :cond_2d

    goto :goto_14

    :cond_2d
    and-int/lit8 p3, v0, 0x1

    if-eqz p3, :cond_2e

    and-int/lit8 v5, v0, 0x2

    if-eqz v5, :cond_2e

    .line 2925
    const-string p3, "fonts/rmediumitalic.ttf"

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/16 :goto_16

    :cond_2e
    if-eqz p3, :cond_2f

    .line 2927
    const-string p3, "fonts/rmedium.ttf"

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_16

    :cond_2f
    and-int/lit8 p3, v0, 0x2

    if-eqz p3, :cond_36

    .line 2929
    const-string p3, "fonts/ritalic.ttf"

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_16

    .line 2910
    :cond_30
    :goto_14
    instance-of v6, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;

    if-nez v6, :cond_35

    instance-of v6, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockHeader;

    if-nez v6, :cond_35

    instance-of v6, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubtitle;

    if-nez v6, :cond_35

    instance-of p3, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubheader;

    if-eqz p3, :cond_31

    goto :goto_15

    :cond_31
    and-int/lit8 p3, v0, 0x1

    .line 2913
    const-string/jumbo v6, "serif"

    if-eqz p3, :cond_32

    and-int/lit8 v7, v0, 0x2

    if-eqz v7, :cond_32

    const/4 p3, 0x3

    .line 2914
    invoke-static {v6, p3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_16

    :cond_32
    if-eqz p3, :cond_33

    .line 2916
    invoke-static {v6, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_16

    :cond_33
    and-int/lit8 p3, v0, 0x2

    if-eqz p3, :cond_34

    const/4 p3, 0x2

    .line 2918
    invoke-static {v6, p3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_16

    :cond_34
    const/4 p3, 0x0

    .line 2920
    invoke-static {v6, p3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_16

    .line 2911
    :cond_35
    :goto_15
    const-string p3, "fonts/mw_bold.ttf"

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_36
    :goto_16
    and-int/lit8 p3, v0, 0x20

    if-eqz p3, :cond_37

    .line 2934
    invoke-virtual {v1}, Landroid/graphics/Paint;->getFlags()I

    move-result p3

    or-int/lit8 p3, p3, 0x10

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setFlags(I)V

    :cond_37
    and-int/lit8 p3, v0, 0x10

    if-eqz p3, :cond_38

    .line 2937
    invoke-virtual {v1}, Landroid/graphics/Paint;->getFlags()I

    move-result p3

    or-int/lit8 p3, p3, 0x8

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setFlags(I)V

    :cond_38
    and-int/lit8 p3, v0, 0x8

    if-nez p3, :cond_39

    and-int/lit16 p3, v0, 0x200

    if-eqz p3, :cond_3a

    .line 2940
    :cond_39
    invoke-virtual {v1}, Landroid/graphics/Paint;->getFlags()I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setFlags(I)V

    .line 2941
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getLinkTextColor()I

    move-result p2

    :cond_3a
    if-eqz v4, :cond_3b

    .line 2944
    iget p3, v1, Landroid/text/TextPaint;->baselineShift:I

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr p3, v4

    iput p3, v1, Landroid/text/TextPaint;->baselineShift:I

    goto :goto_17

    :cond_3b
    and-int/lit16 p3, v0, 0x80

    if-eqz p3, :cond_3c

    .line 2946
    iget p3, v1, Landroid/text/TextPaint;->baselineShift:I

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr p3, v4

    iput p3, v1, Landroid/text/TextPaint;->baselineShift:I

    .line 2948
    :cond_3c
    :goto_17
    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2949
    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3d
    add-int/2addr v2, v3

    int-to-float p1, v2

    .line 2951
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-object v1
.end method

.method public static getUrl(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/String;
    .locals 1

    .line 2690
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_textFixed;

    if-eqz v0, :cond_0

    .line 2691
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_textFixed;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {p0}, Lorg/telegram/ui/ArticleViewer;->getUrl(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2692
    :cond_0
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_textItalic;

    if-eqz v0, :cond_1

    .line 2693
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_textItalic;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {p0}, Lorg/telegram/ui/ArticleViewer;->getUrl(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2694
    :cond_1
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_textBold;

    if-eqz v0, :cond_2

    .line 2695
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_textBold;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {p0}, Lorg/telegram/ui/ArticleViewer;->getUrl(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2696
    :cond_2
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_textUnderline;

    if-eqz v0, :cond_3

    .line 2697
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_textUnderline;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {p0}, Lorg/telegram/ui/ArticleViewer;->getUrl(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2698
    :cond_3
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_textStrike;

    if-eqz v0, :cond_4

    .line 2699
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_textStrike;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    :try_start_0
    invoke-static {p0}, Lorg/telegram/ui/ArticleViewer;->getUrl(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    .line 2700
    :cond_4
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_textEmail;

    if-eqz v0, :cond_5

    .line 2701
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_textEmail;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$RichText;->email:Ljava/lang/String;

    return-object p0

    .line 2702
    :cond_5
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_textUrl;

    if-eqz v0, :cond_6

    .line 2703
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_textUrl;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$RichText;->url:Ljava/lang/String;

    return-object p0

    .line 2704
    :cond_6
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_textPhone;

    if-eqz v0, :cond_7

    .line 2705
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_textPhone;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_textPhone;->phone:Ljava/lang/String;

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method private goBack()V
    .locals 11

    .line 1855
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gt v0, v4, :cond_2

    .line 1856
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    invoke-static {v0, v3}, Lorg/telegram/ui/ArticleViewer$WindowView;->-$$Nest$fputmovingPage(Lorg/telegram/ui/ArticleViewer$WindowView;Z)V

    .line 1857
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    invoke-static {v0, v3}, Lorg/telegram/ui/ArticleViewer$WindowView;->-$$Nest$fputstartedTracking(Lorg/telegram/ui/ArticleViewer$WindowView;Z)V

    .line 1858
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    .line 1859
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lorg/telegram/ui/ArticleViewer$Sheet;->getBackProgress()F

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    iget-object v6, v6, Lorg/telegram/ui/ArticleViewer$Sheet;->windowView:Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v5

    .line 1862
    :goto_0
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1863
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v5

    .line 1864
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    if-eqz v5, :cond_1

    .line 1865
    invoke-virtual {v5, v2}, Lorg/telegram/ui/ArticleViewer$Sheet;->animateBackProgressTo(F)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-array v2, v4, [Landroid/animation/Animator;

    aput-object v1, v2, v3

    invoke-virtual {v6, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_1

    .line 1867
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    sget-object v5, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 1868
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    new-array v9, v4, [F

    aput v8, v9, v3

    invoke-static {v2, v5, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    sget-object v8, Lorg/telegram/ui/ArticleViewer;->ARTICLE_VIEWER_INNER_TRANSLATION_X:Landroid/util/Property;

    .line 1869
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    new-array v10, v4, [F

    aput v9, v10, v3

    invoke-static {v5, v8, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v2, v1, v3

    aput-object v5, v1, v4

    .line 1867
    invoke-virtual {v6, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1873
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x43d20000    # 420.0f

    div-float/2addr v1, v0

    mul-float/2addr v1, v7

    float-to-int v0, v1

    const/16 v1, 0xfa

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v6, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1874
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1875
    new-instance v0, Lorg/telegram/ui/ArticleViewer$3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ArticleViewer$3;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v6, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1925
    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    .line 1926
    iput-boolean v4, p0, Lorg/telegram/ui/ArticleViewer;->closeAnimationInProgress:Z

    return-void

    .line 1929
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    invoke-static {v0, v4}, Lorg/telegram/ui/ArticleViewer$WindowView;->-$$Nest$fputopeningPage(Lorg/telegram/ui/ArticleViewer$WindowView;Z)V

    .line 1930
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    invoke-static {v0, v4}, Lorg/telegram/ui/ArticleViewer$WindowView;->-$$Nest$fputmovingPage(Lorg/telegram/ui/ArticleViewer$WindowView;Z)V

    .line 1931
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    iget v5, p0, Lorg/telegram/ui/ArticleViewer;->currentHeaderHeight:I

    invoke-static {v0, v5}, Lorg/telegram/ui/ArticleViewer$WindowView;->-$$Nest$fputstartMovingHeaderHeight(Lorg/telegram/ui/ArticleViewer$WindowView;I)V

    .line 1932
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v0, v0, v4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1933
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v0, v0, v4

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1934
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v0, v0, v4

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ArticleViewer$PageLayout;->setTranslationX(F)V

    .line 1935
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v0, v0, v3

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1936
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v4, v1}, Lorg/telegram/ui/ArticleViewer;->updateInterfaceForCurrentPage(Ljava/lang/Object;ZI)V

    .line 1938
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v0, v0, v3

    .line 1939
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    .line 1942
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1944
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 1945
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v2, v2, v3

    sget-object v5, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 1946
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    new-array v6, v4, [F

    aput v0, v6, v3

    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-array v2, v4, [Landroid/animation/Animator;

    aput-object v0, v2, v3

    .line 1945
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v5, 0x1a4

    .line 1955
    invoke-virtual {v1, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1956
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1957
    new-instance v0, Lorg/telegram/ui/ArticleViewer$4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ArticleViewer$4;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2002
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 2003
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v1, v3

    if-eqz v1, :cond_4

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->adaptableColorInBrowser:Z

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getBackgroundColor()I

    move-result v1

    goto :goto_3

    :cond_4
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_iv_background:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ArticleViewer;->getThemedColor(I)I

    move-result v1

    :goto_3
    invoke-virtual {v0, v1}, Lorg/telegram/ui/web/WebActionBar;->setMenuColors(I)V

    .line 2004
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v1, v3

    if-eqz v1, :cond_5

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->adaptableColorInBrowser:Z

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getActionBarColor()I

    move-result v1

    goto :goto_4

    :cond_5
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_iv_background:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ArticleViewer;->getThemedColor(I)I

    move-result v1

    :goto_4
    invoke-virtual {v0, v1, v4}, Lorg/telegram/ui/web/WebActionBar;->setColors(IZ)V

    .line 2005
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v1, v3

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->isTonsite()Z

    move-result v1

    if-eqz v1, :cond_6

    move v3, v4

    :cond_6
    invoke-virtual {v0, v3}, Lorg/telegram/ui/web/WebActionBar;->setIsTonsite(Z)V

    .line 2006
    iput-boolean v4, p0, Lorg/telegram/ui/ArticleViewer;->closeAnimationInProgress:Z

    return-void
.end method

.method private goBack(I)V
    .locals 9

    .line 2010
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v0, v3, :cond_2

    .line 2011
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    invoke-static {p1, v2}, Lorg/telegram/ui/ArticleViewer$WindowView;->-$$Nest$fputmovingPage(Lorg/telegram/ui/ArticleViewer$WindowView;Z)V

    .line 2012
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    invoke-static {p1, v2}, Lorg/telegram/ui/ArticleViewer$WindowView;->-$$Nest$fputstartedTracking(Lorg/telegram/ui/ArticleViewer$WindowView;Z)V

    .line 2013
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    .line 2014
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$Sheet;->getBackProgress()F

    move-result v0

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    iget-object v4, v4, Lorg/telegram/ui/ArticleViewer$Sheet;->windowView:Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v0, v4

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    .line 2017
    :goto_0
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2018
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v0

    .line 2019
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    if-eqz v0, :cond_1

    .line 2021
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ArticleViewer$Sheet;->animateBackProgressTo(F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-array v1, v3, [Landroid/animation/Animator;

    aput-object v0, v1, v2

    .line 2020
    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_1

    .line 2024
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 2025
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    new-array v7, v3, [F

    aput v6, v7, v2

    invoke-static {v0, v1, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    sget-object v6, Lorg/telegram/ui/ArticleViewer;->ARTICLE_VIEWER_INNER_TRANSLATION_X:Landroid/util/Property;

    .line 2026
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    new-array v8, v3, [F

    aput v7, v8, v2

    invoke-static {v1, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v0, v6, v2

    aput-object v1, v6, v3

    .line 2024
    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2030
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x43d20000    # 420.0f

    div-float/2addr v0, p1

    mul-float/2addr v0, v5

    float-to-int p1, v0

    const/16 v0, 0xfa

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {v4, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2031
    sget-object p1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v4, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2032
    new-instance p1, Lorg/telegram/ui/ArticleViewer$5;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ArticleViewer$5;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v4, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2082
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 2083
    iput-boolean v3, p0, Lorg/telegram/ui/ArticleViewer;->closeAnimationInProgress:Z

    return-void

    .line 2087
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    invoke-static {v0, v3}, Lorg/telegram/ui/ArticleViewer$WindowView;->-$$Nest$fputopeningPage(Lorg/telegram/ui/ArticleViewer$WindowView;Z)V

    .line 2088
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2089
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v0, v0, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2090
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v0, v0, v3

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->setTranslationX(F)V

    .line 2091
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v0, v0, v2

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2092
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v3, v1}, Lorg/telegram/ui/ArticleViewer;->updateInterfaceForCurrentPage(Ljava/lang/Object;ZI)V

    .line 2094
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v0, v0, v2

    .line 2095
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    .line 2098
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2100
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 2101
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v4, v4, v2

    sget-object v5, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 2102
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    new-array v6, v3, [F

    aput v0, v6, v2

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-array v4, v3, [Landroid/animation/Animator;

    aput-object v0, v4, v2

    .line 2101
    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v4, 0x1a4

    .line 2111
    invoke-virtual {v1, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2112
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2113
    new-instance v0, Lorg/telegram/ui/ArticleViewer$6;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ArticleViewer$6;-><init>(Lorg/telegram/ui/ArticleViewer;I)V

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2162
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 2163
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v0, v0, v2

    if-eqz v0, :cond_4

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->adaptableColorInBrowser:Z

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getBackgroundColor()I

    move-result v0

    goto :goto_3

    :cond_4
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_iv_background:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ArticleViewer;->getThemedColor(I)I

    move-result v0

    :goto_3
    invoke-virtual {p1, v0}, Lorg/telegram/ui/web/WebActionBar;->setMenuColors(I)V

    .line 2164
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v0, v0, v2

    if-eqz v0, :cond_5

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->adaptableColorInBrowser:Z

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getActionBarColor()I

    move-result v0

    goto :goto_4

    :cond_5
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_iv_background:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ArticleViewer;->getThemedColor(I)I

    move-result v0

    :goto_4
    invoke-virtual {p1, v0, v3}, Lorg/telegram/ui/web/WebActionBar;->setColors(IZ)V

    .line 2165
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v0, v0, v2

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$PageLayout;->isTonsite()Z

    move-result v0

    if-eqz v0, :cond_6

    move v2, v3

    :cond_6
    invoke-virtual {p1, v2}, Lorg/telegram/ui/web/WebActionBar;->setIsTonsite(Z)V

    .line 2166
    iput-boolean v3, p0, Lorg/telegram/ui/ArticleViewer;->closeAnimationInProgress:Z

    return-void
.end method

.method public static hasInstance()Z
    .locals 1

    .line 405
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->Instance:Lorg/telegram/ui/ArticleViewer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isListItemBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)Z
    .locals 1

    .line 1602
    instance-of v0, p1, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    if-nez v0, :cond_1

    instance-of p1, p1, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private joinChannel(Lorg/telegram/ui/ArticleViewer$BlockChannelCell;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 7

    .line 5604
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_channels_joinChannel;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_channels_joinChannel;-><init>()V

    .line 5605
    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v0

    iput-object v0, v4, Lorg/telegram/tgnet/TLRPC$TL_channels_joinChannel;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 5606
    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    .line 5607
    invoke-static {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    new-instance v0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda55;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda55;-><init>(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$BlockChannelCell;ILorg/telegram/tgnet/TLRPC$TL_channels_joinChannel;Lorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-virtual {v6, v4, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private synthetic lambda$checkScrollAnimated$51(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 5000
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->setCurrentHeaderHeight(I)V

    return-void
.end method

.method private synthetic lambda$close$56()V
    .locals 3

    .line 5510
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 5513
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 5514
    iput v2, p0, Lorg/telegram/ui/ArticleViewer;->animationInProgress:I

    .line 5515
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->onClosed()V

    return-void
.end method

.method private synthetic lambda$joinChannel$60(Lorg/telegram/ui/ArticleViewer$BlockChannelCell;ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_channels_joinChannel;)V
    .locals 3

    const/4 v0, 0x0

    .line 5610
    invoke-virtual {p1, v0, v0}, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->setState(IZ)V

    .line 5611
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v1, v0

    invoke-static {p2, p3, p1, p4, v1}, Lorg/telegram/ui/Components/AlertsCreator;->processError(ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    return-void
.end method

.method private synthetic lambda$joinChannel$63(Lorg/telegram/ui/ArticleViewer$BlockChannelCell;ILorg/telegram/tgnet/TLRPC$TL_channels_joinChannel;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 8

    if-eqz p6, :cond_0

    move-object p5, p6

    move-object p6, p3

    move-object p3, p1

    .line 5609
    new-instance p1, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda67;

    move p4, p2

    move-object p2, p0

    invoke-direct/range {p1 .. p6}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda67;-><init>(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$BlockChannelCell;ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_channels_joinChannel;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    move-object p3, p1

    move-object p1, p5

    .line 5616
    move-object p5, p1

    check-cast p5, Lorg/telegram/tgnet/TLRPC$Updates;

    const/4 p1, 0x0

    move p6, p1

    .line 5617
    :goto_0
    iget-object v0, p5, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge p6, v0, :cond_2

    .line 5618
    iget-object v0, p5, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v0, p6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Update;

    .line 5619
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    if-eqz v2, :cond_1

    .line 5620
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatAddUser;

    if-eqz v0, :cond_1

    move p6, v1

    goto :goto_1

    :cond_1
    add-int/lit8 p6, p6, 0x1

    goto :goto_0

    :cond_2
    move p6, p1

    .line 5626
    :goto_1
    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p5, p1}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    if-nez p6, :cond_3

    .line 5628
    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide p5, p4, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {p1, p5, p6, v1}, Lorg/telegram/messenger/MessagesController;->generateJoinMessage(JZ)V

    .line 5630
    :cond_3
    new-instance p1, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda68;

    invoke-direct {p1, p3}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda68;-><init>(Lorg/telegram/ui/ArticleViewer$BlockChannelCell;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 5631
    new-instance p1, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda69;

    invoke-direct {p1, p2, p4}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda69;-><init>(ILorg/telegram/tgnet/TLRPC$Chat;)V

    const-wide/16 p5, 0x3e8

    invoke-static {p1, p5, p6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 5632
    invoke-static {p2}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-wide v3, p4, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v1, v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/messenger/MessagesStorage;->updateDialogsWithDeletedMessages(JJLjava/util/ArrayList;Ljava/util/ArrayList;Z)V

    return-void
.end method

.method private synthetic lambda$loadChannel$58(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;ILorg/telegram/ui/ArticleViewer$BlockChannelCell;)V
    .locals 3

    const/4 v0, 0x0

    .line 5578
    iput-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->loadingChannel:Z

    .line 5579
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v1, :cond_4

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetblocks(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    if-nez p2, :cond_3

    .line 5583
    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;

    .line 5584
    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 5585
    invoke-static {p4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object v1, p3, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    invoke-virtual {p2, v1, v0}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 5586
    invoke-static {p4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object v1, p3, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    invoke-virtual {p2, v1, v0}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 5587
    invoke-static {p4}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p2

    iget-object p4, p3, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    iget-object v1, p3, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {p2, p4, v1, v0, v2}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    .line 5588
    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$Chat;

    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer;->loadedChannel:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 5589
    iget-boolean p3, p2, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    if-eqz p3, :cond_1

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$Chat;->kicked:Z

    if-nez p2, :cond_1

    .line 5590
    invoke-virtual {p5, v0, v0}, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->setState(IZ)V

    return-void

    .line 5592
    :cond_1
    invoke-virtual {p5, p1, v0}, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->setState(IZ)V

    return-void

    .line 5595
    :cond_2
    invoke-virtual {p5, p1, v0}, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->setState(IZ)V

    return-void

    .line 5598
    :cond_3
    invoke-virtual {p5, p1, v0}, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->setState(IZ)V

    :cond_4
    :goto_0
    return-void
.end method

.method private synthetic lambda$loadChannel$59(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;ILorg/telegram/ui/ArticleViewer$BlockChannelCell;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    .line 5577
    new-instance v0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda64;

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    move-object v6, p3

    move-object v4, p4

    move-object v3, p5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda64;-><init>(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;ILorg/telegram/ui/ArticleViewer$BlockChannelCell;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$65()V
    .locals 1

    .line 12812
    new-instance v0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$66()V
    .locals 1

    .line 12813
    new-instance v0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onClosed$57()V
    .locals 2

    .line 5558
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5559
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 5560
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    return-void

    .line 5563
    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$open$52(Lorg/telegram/tgnet/TLObject;ILorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/messenger/MessageObject;ZLjava/lang/String;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    .line 5148
    instance-of v6, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_webPage;

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    .line 5149
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messages_webPage;

    .line 5150
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_webPage;->users:Ljava/util/ArrayList;

    invoke-virtual {v6, v8, v7}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 5151
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_webPage;->chats:Ljava/util/ArrayList;

    invoke-virtual {v6, v8, v7}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 5152
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_webPage;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 5154
    :cond_0
    instance-of v6, v1, Lorg/telegram/tgnet/TLRPC$TL_webPage;

    const/4 v8, 0x1

    if-eqz v6, :cond_5

    .line 5155
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_webPage;

    .line 5156
    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    if-nez v6, :cond_1

    goto/16 :goto_2

    .line 5160
    :cond_1
    iget-object v6, v0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, v0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v2, :cond_4

    if-eqz v3, :cond_2

    .line 5162
    iget-object v2, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 5163
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;-><init>()V

    .line 5164
    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    iget-object v6, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5165
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v9

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v11

    iget-boolean v2, v3, Lorg/telegram/messenger/MessageObject;->scheduled:Z

    const-wide/16 v17, 0x0

    const/4 v13, -0x2

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v16, v2

    invoke-virtual/range {v9 .. v18}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Lorg/telegram/tgnet/TLRPC$messages_Messages;JIIZIJ)V

    :cond_2
    if-eqz v4, :cond_3

    .line 5168
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5170
    :cond_3
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v7, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5172
    :goto_0
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v8, :cond_4

    .line 5173
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "articles"

    invoke-virtual {v2, v3, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "article"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v1, Lorg/telegram/tgnet/TLRPC$WebPage;->id:J

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5174
    invoke-direct {v0, v1, v7, v4}, Lorg/telegram/ui/ArticleViewer;->updateInterfaceForCurrentPage(Ljava/lang/Object;ZI)V

    if-eqz v5, :cond_4

    .line 5176
    invoke-direct {v0, v5, v7}, Lorg/telegram/ui/ArticleViewer;->scrollToAnchor(Ljava/lang/String;Z)Z

    .line 5181
    :cond_4
    new-instance v2, Landroidx/collection/LongSparseArray;

    invoke-direct {v2, v8}, Landroidx/collection/LongSparseArray;-><init>(I)V

    .line 5182
    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$WebPage;->id:J

    invoke-virtual {v2, v3, v4, v1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 5183
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesStorage;->putWebPages(Landroidx/collection/LongSparseArray;)V

    return-void

    .line 5184
    :cond_5
    instance-of v4, v1, Lorg/telegram/tgnet/TLRPC$TL_webPageNotModified;

    if-eqz v4, :cond_8

    .line 5185
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_webPageNotModified;

    if-eqz v2, :cond_8

    .line 5186
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    if-eqz v4, :cond_8

    .line 5187
    iget v5, v4, Lorg/telegram/tgnet/TLRPC$Page;->views:I

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_webPageNotModified;->cached_page_views:I

    if-eq v5, v1, :cond_8

    .line 5188
    iput v1, v4, Lorg/telegram/tgnet/TLRPC$Page;->views:I

    .line 5189
    iget v1, v4, Lorg/telegram/tgnet/TLRPC$Page;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v4, Lorg/telegram/tgnet/TLRPC$Page;->flags:I

    .line 5190
    :goto_1
    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    array-length v4, v1

    if-ge v7, v4, :cond_7

    .line 5191
    aget-object v1, v1, v7

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer$PageLayout;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetcurrentPage(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v1

    if-ne v1, v2, :cond_6

    .line 5192
    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v1, v7

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer$PageLayout;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v8

    .line 5193
    iget-object v4, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v4, v4, v7

    iget-object v4, v4, Lorg/telegram/ui/ArticleViewer$PageLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 5195
    iget-object v4, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v4, v4, v7

    iget-object v4, v4, Lorg/telegram/ui/ArticleViewer$PageLayout;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-virtual {v4, v1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_7
    if-eqz v3, :cond_8

    .line 5200
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;-><init>()V

    .line 5201
    iget-object v1, v10, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    iget-object v2, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5202
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v9

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v11

    iget-boolean v1, v3, Lorg/telegram/messenger/MessageObject;->scheduled:Z

    const-wide/16 v17, 0x0

    const/4 v13, -0x2

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v16, v1

    invoke-virtual/range {v9 .. v18}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Lorg/telegram/tgnet/TLRPC$messages_Messages;JIIZIJ)V

    :cond_8
    :goto_2
    return-void
.end method

.method private synthetic lambda$open$53(ILorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/messenger/MessageObject;ZLjava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 8

    .line 5146
    new-instance v0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda34;

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    move-object v2, p6

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda34;-><init>(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLObject;ILorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/messenger/MessageObject;ZLjava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$open$54()V
    .locals 3

    .line 5292
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 5295
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 5296
    iput v2, p0, Lorg/telegram/ui/ArticleViewer;->animationInProgress:I

    .line 5297
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$open$55(Landroid/animation/AnimatorSet;)V
    .locals 1

    .line 5316
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {v0}, Lorg/telegram/messenger/AnimationNotificationsLocker;->lock()V

    .line 5317
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private synthetic lambda$openWebpageUrl$10(ILorg/telegram/messenger/browser/Browser$Progress;)V
    .locals 2

    .line 3421
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->lastReqId:I

    if-ne v0, p1, :cond_0

    iget p1, p0, Lorg/telegram/ui/ArticleViewer;->openUrlReqId:I

    if-eqz p1, :cond_0

    .line 3422
    iget p1, p0, Lorg/telegram/ui/ArticleViewer;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->openUrlReqId:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 3423
    iput v1, p0, Lorg/telegram/ui/ArticleViewer;->openUrlReqId:I

    .line 3425
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->loadingProgress:Lorg/telegram/messenger/browser/Browser$Progress;

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    .line 3426
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->loadingProgress:Lorg/telegram/messenger/browser/Browser$Progress;

    :cond_1
    return-void
.end method

.method private synthetic lambda$openWebpageUrl$6(Lorg/telegram/messenger/browser/Browser$Progress;)V
    .locals 2

    .line 3364
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3365
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ArticleViewer$Sheet;->dismiss(Z)V

    .line 3367
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->loadingProgress:Lorg/telegram/messenger/browser/Browser$Progress;

    if-ne v0, p1, :cond_1

    const/4 p1, 0x0

    .line 3368
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->loadingProgress:Lorg/telegram/messenger/browser/Browser$Progress;

    :cond_1
    return-void
.end method

.method private synthetic lambda$openWebpageUrl$7(Ljava/lang/String;[ZLorg/telegram/messenger/browser/Browser$Progress;)Ljava/lang/Boolean;
    .locals 11

    .line 3359
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/telegram/messenger/browser/Browser;->isInternalUri(Landroid/net/Uri;[Z)Z

    move-result p2

    if-nez p2, :cond_0

    .line 3360
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :cond_0
    if-eqz p3, :cond_1

    .line 3363
    new-instance p2, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda63;

    invoke-direct {p2, p0, p3}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda63;-><init>(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/messenger/browser/Browser$Progress;)V

    invoke-virtual {p3, p2}, Lorg/telegram/messenger/browser/Browser$Progress;->onEnd(Ljava/lang/Runnable;)Lorg/telegram/messenger/browser/Browser$Progress;

    goto :goto_0

    .line 3372
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    .line 3373
    invoke-virtual {p2, v0}, Lorg/telegram/ui/ArticleViewer$Sheet;->dismiss(Z)V

    .line 3376
    :cond_2
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v6, p3

    invoke-static/range {v1 .. v10}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Landroid/net/Uri;ZZZLorg/telegram/messenger/browser/Browser$Progress;Ljava/lang/String;ZZZ)V

    .line 3377
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method private synthetic lambda$openWebpageUrl$8(ILorg/telegram/messenger/browser/Browser$Progress;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback0Return;Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;)V
    .locals 2

    .line 3386
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->openUrlReqId:I

    if-eqz v0, :cond_7

    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->lastReqId:I

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 3390
    invoke-virtual {p2}, Lorg/telegram/messenger/browser/Browser$Progress;->end()V

    :cond_1
    const/4 p1, 0x0

    .line 3392
    iput p1, p0, Lorg/telegram/ui/ArticleViewer;->openUrlReqId:I

    const/4 p2, 0x1

    .line 3393
    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/ArticleViewer;->showProgressView(ZZ)V

    .line 3394
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->isVisible:Z

    if-eqz v0, :cond_7

    .line 3395
    instance-of v0, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_webPage;

    if-eqz v0, :cond_4

    .line 3396
    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_messages_webPage;

    .line 3397
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_webPage;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 3398
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_webPage;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 3399
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_webPage;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz p1, :cond_2

    iget-object p3, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    instance-of p3, p3, Lorg/telegram/tgnet/TLRPC$TL_page;

    if-eqz p3, :cond_2

    .line 3400
    invoke-direct {p0, p1, p4, p2}, Lorg/telegram/ui/ArticleViewer;->addPageToStack(Lorg/telegram/tgnet/TLRPC$WebPage;Ljava/lang/String;I)Z

    return-void

    .line 3401
    :cond_2
    invoke-interface {p5}, Lorg/telegram/messenger/Utilities$Callback0Return;->run()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_7

    .line 3402
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->inappBrowser:Z

    if-eqz p1, :cond_3

    .line 3403
    iget-object p1, p6, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;->url:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ArticleViewer;->addPageToStack(Ljava/lang/String;I)Z

    return-void

    .line 3405
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    iget-object p2, p6, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;->url:Ljava/lang/String;

    invoke-static {p1, p2}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 3408
    :cond_4
    instance-of p1, p3, Lorg/telegram/tgnet/TLRPC$TL_webPage;

    if-eqz p1, :cond_5

    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_webPage;

    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_page;

    if-eqz p1, :cond_5

    .line 3409
    invoke-direct {p0, p3, p4, p2}, Lorg/telegram/ui/ArticleViewer;->addPageToStack(Lorg/telegram/tgnet/TLRPC$WebPage;Ljava/lang/String;I)Z

    return-void

    .line 3410
    :cond_5
    invoke-interface {p5}, Lorg/telegram/messenger/Utilities$Callback0Return;->run()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_7

    .line 3411
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->inappBrowser:Z

    if-eqz p1, :cond_6

    .line 3412
    iget-object p1, p6, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;->url:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ArticleViewer;->addPageToStack(Ljava/lang/String;I)Z

    return-void

    .line 3414
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    iget-object p2, p6, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;->url:Ljava/lang/String;

    invoke-static {p1, p2}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    :cond_7
    :goto_0
    return-void
.end method

.method private synthetic lambda$openWebpageUrl$9(ILorg/telegram/messenger/browser/Browser$Progress;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback0Return;Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 8

    .line 3385
    new-instance v0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda65;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v4, p6

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda65;-><init>(Lorg/telegram/ui/ArticleViewer;ILorg/telegram/messenger/browser/Browser$Progress;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback0Return;Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$processSearch$47(ILjava/util/ArrayList;Ljava/lang/String;)V
    .locals 1

    .line 4869
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->lastSearchIndex:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 4870
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ArticleViewer;->showSearchPanel(Z)V

    .line 4871
    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer;->searchResults:Ljava/util/ArrayList;

    .line 4872
    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer;->searchText:Ljava/lang/String;

    .line 4873
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer$PageLayout;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetsearchTextOffset(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 4874
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object p1, p1, p2

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer$PageLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    .line 4875
    invoke-direct {p0, p2}, Lorg/telegram/ui/ArticleViewer;->scrollToSearchIndex(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$processSearch$48(Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/lang/String;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p3

    .line 4839
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 4840
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x0

    move v11, v10

    :goto_0
    if-ge v11, v9, :cond_5

    move-object/from16 v12, p1

    .line 4841
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v14, p2

    .line 4842
    invoke-virtual {v14, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 4844
    instance-of v1, v13, Lorg/telegram/tgnet/TLRPC$RichText;

    const/4 v15, 0x0

    if-eqz v1, :cond_0

    .line 4845
    move-object v3, v13

    check-cast v3, Lorg/telegram/tgnet/TLRPC$RichText;

    .line 4846
    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v1, v10

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer$PageLayout;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    const/4 v2, 0x0

    const/16 v6, 0x3e8

    move-object v4, v3

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ArticleViewer;->getText(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Landroid/view/View;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 4847
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4848
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 4850
    :cond_0
    instance-of v1, v13, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 4851
    move-object v1, v13

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v15

    :goto_1
    if-eqz v1, :cond_4

    move v2, v10

    .line 4856
    :goto_2
    invoke-virtual {v1, v7, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-ltz v2, :cond_4

    .line 4857
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    if-eqz v2, :cond_2

    add-int/lit8 v4, v2, -0x1

    .line 4858
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->isPunctuationCharacter(C)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4859
    :cond_2
    new-instance v4, Lorg/telegram/ui/ArticleViewer$SearchResult;

    invoke-direct {v4, v15}, Lorg/telegram/ui/ArticleViewer$SearchResult;-><init>(Lorg/telegram/ui/ArticleViewer-IA;)V

    .line 4860
    invoke-static {v4, v2}, Lorg/telegram/ui/ArticleViewer$SearchResult;->-$$Nest$fputindex(Lorg/telegram/ui/ArticleViewer$SearchResult;I)V

    .line 4861
    invoke-static {v4, v5}, Lorg/telegram/ui/ArticleViewer$SearchResult;->-$$Nest$fputblock(Lorg/telegram/ui/ArticleViewer$SearchResult;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    .line 4862
    invoke-static {v4, v13}, Lorg/telegram/ui/ArticleViewer$SearchResult;->-$$Nest$fputtext(Lorg/telegram/ui/ArticleViewer$SearchResult;Ljava/lang/Object;)V

    .line 4863
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    move v2, v3

    goto :goto_2

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 4868
    :cond_5
    new-instance v1, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda66;

    move/from16 v2, p4

    invoke-direct {v1, v0, v2, v8, v7}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda66;-><init>(Lorg/telegram/ui/ArticleViewer;ILjava/util/ArrayList;Ljava/lang/String;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$processSearch$49(Ljava/lang/String;I)V
    .locals 7

    .line 4835
    new-instance v3, Ljava/util/HashMap;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$PageLayout;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgettextToBlocks(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 4836
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v0, v0, v1

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$PageLayout;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgettextBlocks(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v0, 0x0

    .line 4837
    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->searchRunnable:Ljava/lang/Runnable;

    .line 4838
    sget-object v6, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda62;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda62;-><init>(Lorg/telegram/ui/ArticleViewer;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/lang/String;I)V

    invoke-virtual {v6, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$setParentActivity$12(Landroid/view/View;I)Z
    .locals 0

    .line 3753
    instance-of p2, p1, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;

    if-eqz p2, :cond_0

    .line 3754
    check-cast p1, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;

    .line 3755
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->-$$Nest$fgetcurrentBlock(Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;->-$$Nest$fgetparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockRelatedArticles;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockRelatedArticles;->articles:Ljava/util/ArrayList;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->-$$Nest$fgetcurrentBlock(Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;->-$$Nest$fgetnum(Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;)I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageRelatedArticle;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageRelatedArticle;->url:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->showCopyPopup(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$setParentActivity$13(Lorg/telegram/tgnet/TLObject;IJ)V
    .locals 4

    .line 3788
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->previewsReqId:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3791
    iput v0, p0, Lorg/telegram/ui/ArticleViewer;->previewsReqId:I

    const/4 v1, 0x1

    .line 3792
    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer;->showProgressView(ZZ)V

    if-eqz p1, :cond_1

    .line 3794
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;

    .line 3795
    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v0}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 3796
    invoke-static {p2}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p2

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    invoke-virtual {p2, v2, v3, v0, v1}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    .line 3797
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 3798
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    invoke-direct {p0, p1, p3, p4}, Lorg/telegram/ui/ArticleViewer;->openPreviewsChat(Lorg/telegram/tgnet/TLRPC$User;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$setParentActivity$14(IJLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    .line 3787
    new-instance v0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda60;

    move-object v1, p0

    move v3, p1

    move-wide v4, p2

    move-object v2, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda60;-><init>(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLObject;IJ)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$setParentActivity$15(Lorg/telegram/ui/ArticleViewer$PageLayout;Landroid/view/View;IFF)V
    .locals 3

    .line 3761
    iget-object p5, p0, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    if-eqz p5, :cond_0

    add-int/lit8 p3, p3, -0x1

    if-gez p3, :cond_0

    goto/16 :goto_1

    .line 3765
    :cond_0
    iget-object p5, p0, Lorg/telegram/ui/ArticleViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    if-eqz p5, :cond_2

    .line 3766
    invoke-virtual {p5}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result p5

    if-eqz p5, :cond_1

    .line 3767
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->clear()V

    return-void

    .line 3770
    :cond_1
    iget-object p5, p0, Lorg/telegram/ui/ArticleViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    invoke-virtual {p5}, Lorg/telegram/ui/Cells/TextSelectionHelper;->clear()V

    .line 3772
    :cond_2
    invoke-virtual {p1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getAdapter()Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    move-result-object p1

    .line 3773
    instance-of p5, p2, Lorg/telegram/ui/ArticleViewer$ReportCell;

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p5, :cond_6

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetcurrentPage(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object p5

    if-eqz p5, :cond_6

    .line 3774
    move-object p3, p2

    check-cast p3, Lorg/telegram/ui/ArticleViewer$ReportCell;

    .line 3775
    iget p5, p0, Lorg/telegram/ui/ArticleViewer;->previewsReqId:I

    if-nez p5, :cond_e

    invoke-static {p3}, Lorg/telegram/ui/ArticleViewer$ReportCell;->-$$Nest$fgethasViews(Lorg/telegram/ui/ArticleViewer$ReportCell;)Z

    move-result p5

    if-eqz p5, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    div-int/2addr p2, v0

    int-to-float p2, p2

    cmpg-float p2, p4, p2

    if-ltz p2, :cond_e

    :cond_3
    iget-boolean p2, p3, Lorg/telegram/ui/ArticleViewer$ReportCell;->web:Z

    if-eqz p2, :cond_4

    goto/16 :goto_1

    .line 3778
    :cond_4
    iget p2, p0, Lorg/telegram/ui/ArticleViewer;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    const-string p3, "previews"

    invoke-virtual {p2, p3}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(Ljava/lang/String;)Lorg/telegram/tgnet/TLObject;

    move-result-object p2

    .line 3779
    instance-of p4, p2, Lorg/telegram/tgnet/TLRPC$TL_user;

    if-eqz p4, :cond_5

    .line 3780
    check-cast p2, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetcurrentPage(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object p1

    iget-wide p3, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->id:J

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/ArticleViewer;->openPreviewsChat(Lorg/telegram/tgnet/TLRPC$User;J)V

    return-void

    .line 3782
    :cond_5
    sget p2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    .line 3783
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetcurrentPage(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object p1

    iget-wide p4, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->id:J

    .line 3784
    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/ArticleViewer;->showProgressView(ZZ)V

    .line 3785
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;-><init>()V

    .line 3786
    iput-object p3, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;->username:Ljava/lang/String;

    .line 3787
    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p3

    new-instance v0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda51;

    invoke-direct {v0, p0, p2, p4, p5}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda51;-><init>(Lorg/telegram/ui/ArticleViewer;IJ)V

    invoke-virtual {p3, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ArticleViewer;->previewsReqId:I

    return-void

    :cond_6
    if-ltz p3, :cond_e

    .line 3803
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetlocalBlocks(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-ge p3, p4, :cond_e

    .line 3804
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetlocalBlocks(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 3806
    invoke-direct {p0, p4}, Lorg/telegram/ui/ArticleViewer;->getLastNonListPageBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object p5

    .line 3807
    instance-of v2, p5, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;

    if-eqz v2, :cond_7

    .line 3808
    check-cast p5, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;

    .line 3809
    invoke-static {p5}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;->-$$Nest$fgetblock(Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object p5

    .line 3811
    :cond_7
    instance-of v2, p5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;

    if-eqz v2, :cond_8

    .line 3812
    check-cast p5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;

    .line 3813
    iget p1, p0, Lorg/telegram/ui/ArticleViewer;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p2, p5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;->channel:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {p2}, Lorg/telegram/messenger/ChatObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/ArticleViewer;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1, p2, p3, v0}, Lorg/telegram/messenger/MessagesController;->openByUserName(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;I)V

    const/4 p1, 0x0

    .line 3814
    invoke-virtual {p0, p1, v1}, Lorg/telegram/ui/ArticleViewer;->close(ZZ)V

    return-void

    .line 3815
    :cond_8
    instance-of v0, p5, Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    .line 3816
    check-cast p5, Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;

    .line 3817
    invoke-static {p5}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;->-$$Nest$fgetparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockRelatedArticles;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockRelatedArticles;->articles:Ljava/util/ArrayList;

    invoke-static {p5}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;->-$$Nest$fgetnum(Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageRelatedArticle;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageRelatedArticle;->url:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v2}, Lorg/telegram/ui/ArticleViewer;->openWebpageUrl(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/browser/Browser$Progress;)V

    return-void

    .line 3818
    :cond_9
    instance-of v0, p5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;

    if-eqz v0, :cond_e

    .line 3819
    invoke-direct {p0, p2}, Lorg/telegram/ui/ArticleViewer;->getLastNonListCell(Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    .line 3820
    instance-of v0, p2, Lorg/telegram/ui/ArticleViewer$BlockDetailsCell;

    if-nez v0, :cond_a

    goto :goto_1

    .line 3824
    :cond_a
    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer;->pressedLinkOwnerLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    .line 3825
    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer;->pressedLinkOwnerView:Landroid/view/View;

    .line 3826
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetblocks(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p4

    if-gez p4, :cond_b

    goto :goto_1

    .line 3830
    :cond_b
    check-cast p5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;

    .line 3831
    iget-boolean p4, p5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;->open:Z

    xor-int/2addr p4, v1

    iput-boolean p4, p5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;->open:Z

    .line 3833
    invoke-virtual {p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->getItemCount()I

    move-result p4

    .line 3834
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$mupdateRows(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V

    .line 3835
    invoke-virtual {p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, p4

    .line 3836
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p4

    .line 3838
    check-cast p2, Lorg/telegram/ui/ArticleViewer$BlockDetailsCell;

    .line 3839
    invoke-static {p2}, Lorg/telegram/ui/ArticleViewer$BlockDetailsCell;->-$$Nest$fgetarrow(Lorg/telegram/ui/ArticleViewer$BlockDetailsCell;)Lorg/telegram/ui/Components/AnimatedArrowDrawable;

    move-result-object v0

    iget-boolean v2, p5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;->open:Z

    if-eqz v2, :cond_c

    const/4 v2, 0x0

    goto :goto_0

    :cond_c
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AnimatedArrowDrawable;->setAnimationProgressAnimated(F)V

    .line 3840
    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    if-eqz p4, :cond_e

    .line 3842
    iget-boolean p2, p5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;->open:Z

    if-eqz p2, :cond_d

    add-int/2addr p3, v1

    .line 3843
    invoke-virtual {p1, p3, p4}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->notifyItemRangeInserted(II)V

    return-void

    :cond_d
    add-int/2addr p3, v1

    .line 3845
    invoke-virtual {p1, p3, p4}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->notifyItemRangeRemoved(II)V

    :cond_e
    :goto_1
    return-void
.end method

.method private synthetic lambda$setParentActivity$16(Ljava/lang/String;)V
    .locals 2

    .line 3934
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    iget-object v0, v0, Lorg/telegram/ui/web/WebActionBar;->addressEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "about:blank"

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3935
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    iget-object p1, p1, Lorg/telegram/ui/web/WebActionBar;->addressEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    .line 3936
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    iget-object p1, p1, Lorg/telegram/ui/web/WebActionBar;->addressEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method private synthetic lambda$setParentActivity$17(Lorg/telegram/ui/ArticleViewer$PageLayout;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 8

    .line 3939
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3940
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 3941
    :cond_1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3942
    invoke-static {v0, v1, v2, v1}, Lorg/telegram/messenger/AndroidUtilities;->addLinksSafe(Landroid/text/Spannable;IZZ)Z

    .line 3943
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const-class v4, Landroid/text/style/URLSpan;

    invoke-virtual {v0, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/URLSpan;

    .line 3944
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    move v5, v2

    move v6, v5

    .line 3945
    :goto_1
    array-length v7, v3

    if-ge v5, v7, :cond_2

    .line 3946
    aget-object v7, v3, v5

    invoke-virtual {v0, v7}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 3947
    aget-object v7, v3, v5

    invoke-virtual {v0, v7}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3949
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/web/WebActionBar;->showAddress(ZZ)V

    .line 3950
    invoke-static {p3}, Lorg/telegram/messenger/Utilities;->uriParseSafe(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3951
    array-length v1, v3

    if-lez v1, :cond_3

    if-nez v4, :cond_3

    if-gtz v6, :cond_4

    :cond_3
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    :cond_4
    if-eqz v0, :cond_5

    .line 3952
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_5

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_5

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 3953
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    const-string p3, "/"

    const-string v1, "https"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p2, p3}, Lorg/telegram/messenger/browser/Browser;->replace(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 3955
    :cond_5
    invoke-virtual {p1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->loadUrl(Ljava/lang/String;)V

    return-void

    .line 3957
    :cond_6
    invoke-static {p2, p3}, Lorg/telegram/ui/web/AddressBarList;->pushRecentSearch(Landroid/content/Context;Ljava/lang/String;)V

    .line 3958
    invoke-virtual {p1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object p1

    invoke-static {}, Lorg/telegram/ui/web/SearchEngine;->getCurrent()Lorg/telegram/ui/web/SearchEngine;

    move-result-object p2

    invoke-virtual {p2, p3}, Lorg/telegram/ui/web/SearchEngine;->getSearchURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setParentActivity$18(Ljava/lang/String;)V
    .locals 1

    .line 3962
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3963
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    iget-object v0, v0, Lorg/telegram/ui/web/WebActionBar;->addressEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3964
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    iget-object p1, p1, Lorg/telegram/ui/web/WebActionBar;->addressEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    .line 3965
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    iget-object p1, p1, Lorg/telegram/ui/web/WebActionBar;->addressEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method private synthetic lambda$setParentActivity$19(Ljava/lang/String;Lorg/telegram/ui/ArticleViewer$PageLayout;Landroid/view/View;)V
    .locals 2

    .line 3969
    iget-object p3, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p3, v0, v1}, Lorg/telegram/ui/web/WebActionBar;->showAddress(ZZ)V

    .line 3970
    iget-object p3, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    iget-object p3, p3, Lorg/telegram/ui/web/WebActionBar;->addressEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 3971
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p1, "about:blank"

    .line 3972
    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    .line 3973
    iget-object p1, p2, Lorg/telegram/ui/ArticleViewer$PageLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer;->getResourcesProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BulletinFactory;->createCopyLinkBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$setParentActivity$21(Landroid/app/Activity;Landroid/view/View;)V
    .locals 13

    .line 3920
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    iget-boolean p2, p2, Lorg/telegram/ui/web/WebActionBar;->longClicked:Z

    if-eqz p2, :cond_0

    goto/16 :goto_3

    .line 3921
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    const/4 v0, 0x0

    aget-object p2, p2, v0

    .line 3922
    invoke-virtual {p2}, Lorg/telegram/ui/ArticleViewer$PageLayout;->isWeb()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3923
    invoke-virtual {p2}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/web/WebActionBar;->isAddressing()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3924
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->addressBarList:Lorg/telegram/ui/web/AddressBarList;

    if-eqz v0, :cond_6

    .line 3925
    invoke-virtual {p2}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3926
    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->getTitle()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 3927
    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v1

    :goto_1
    invoke-static {v3}, Lorg/telegram/ui/web/BotWebViewContainer;->magic2tonsite(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3928
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->addressBarList:Lorg/telegram/ui/web/AddressBarList;

    if-eqz v0, :cond_3

    .line 3929
    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_3
    move-object v5, v1

    .line 3930
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Lorg/telegram/messenger/R$string;->WebEmpty:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_4
    move-object v6, v2

    .line 3931
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "about:blank"

    move-object v7, v0

    goto :goto_2

    :cond_5
    move-object v7, v3

    :goto_2
    new-instance v8, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda24;

    invoke-direct {v8, p0, v3}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/ArticleViewer;Ljava/lang/String;)V

    new-instance v9, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda25;

    invoke-direct {v9, p0, p2, p1}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$PageLayout;Landroid/app/Activity;)V

    new-instance v10, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda26;

    invoke-direct {v10, p0}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    new-instance v11, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda27;

    invoke-direct {v11, p0}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    new-instance v12, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda28;

    invoke-direct {v12, p0, v3, p2}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/ArticleViewer;Ljava/lang/String;Lorg/telegram/ui/ArticleViewer$PageLayout;)V

    .line 3928
    invoke-virtual/range {v4 .. v12}, Lorg/telegram/ui/web/AddressBarList;->setCurrent(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;Landroid/view/View$OnClickListener;)V

    .line 3977
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    new-instance v1, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda29;

    invoke-direct {v1, p2, p1}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/ArticleViewer$PageLayout;Landroid/app/Activity;)V

    const-string p1, ""

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/web/WebActionBar;->showAddress(Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V

    :cond_7
    :goto_3
    return-void

    .line 4001
    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    if-eqz v1, :cond_a

    .line 4002
    new-instance v1, Lorg/telegram/ui/Components/SmoothScroller;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Components/SmoothScroller;-><init>(Landroid/content/Context;)V

    .line 4003
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    invoke-virtual {p1}, Lorg/telegram/ui/ArticleViewer$Sheet;->halfSize()Z

    move-result p1

    if-eqz p1, :cond_9

    const/4 p1, 0x1

    .line 4004
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    const/high16 p1, 0x42000000    # 32.0f

    .line 4005
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    neg-int p1, p1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/SmoothScroller;->setOffset(I)V

    goto :goto_4

    .line 4007
    :cond_9
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 4009
    :goto_4
    iget-object p1, p2, Lorg/telegram/ui/ArticleViewer$PageLayout;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    return-void

    .line 4011
    :cond_a
    iget-object p1, p2, Lorg/telegram/ui/ArticleViewer$PageLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method private synthetic lambda$setParentActivity$22()V
    .locals 3

    .line 4040
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    iget-object v0, v0, Lorg/telegram/ui/web/WebActionBar;->lineProgressView:Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LineProgressView;->getCurrentProgress()F

    move-result v0

    const v1, 0x3f333333    # 0.7f

    sub-float/2addr v1, v0

    const/4 v0, 0x0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_2

    const/high16 v0, 0x3e800000    # 0.25f

    cmpg-float v0, v1, v0

    if-gez v0, :cond_0

    const v0, 0x3c23d70a    # 0.01f

    goto :goto_0

    :cond_0
    const v0, 0x3ca3d70a    # 0.02f

    .line 4048
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    iget-object v1, v1, Lorg/telegram/ui/web/WebActionBar;->lineProgressView:Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    iget-object v1, v1, Lorg/telegram/ui/web/WebActionBar;->lineProgressView:Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {v1}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->show()V

    .line 4049
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    iget-object v1, v1, Lorg/telegram/ui/web/WebActionBar;->lineProgressView:Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/LineProgressView;->getCurrentProgress()F

    move-result v2

    add-float/2addr v2, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/Components/LineProgressView;->setProgress(FZ)V

    .line 4050
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->lineProgressTickRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$setParentActivity$23(Landroid/view/View;)V
    .locals 2

    .line 4054
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    invoke-virtual {p1}, Lorg/telegram/ui/web/WebActionBar;->isSearching()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 4055
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/web/WebActionBar;->showSearch(ZZ)V

    return-void

    .line 4056
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    invoke-virtual {p1}, Lorg/telegram/ui/web/WebActionBar;->isAddressing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4057
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/web/WebActionBar;->showAddress(ZZ)V

    return-void

    .line 4058
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer;->isFirstArticle()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->hasBackButton()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4059
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->back()V

    return-void

    .line 4060
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v0, :cond_3

    .line 4061
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->goBack()V

    return-void

    .line 4062
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    if-eqz p1, :cond_4

    .line 4063
    invoke-virtual {p1, v1}, Lorg/telegram/ui/ArticleViewer$Sheet;->dismiss(Z)V

    return-void

    .line 4065
    :cond_4
    invoke-virtual {p0, v0, v0}, Lorg/telegram/ui/ArticleViewer;->close(ZZ)V

    return-void
.end method

.method private synthetic lambda$setParentActivity$25(I)V
    .locals 0

    .line 4147
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->goBack(I)V

    return-void
.end method

.method private synthetic lambda$setParentActivity$26(I)V
    .locals 0

    .line 4203
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->goBack(I)V

    return-void
.end method

.method private synthetic lambda$setParentActivity$27(F)V
    .locals 2

    .line 4227
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    iget-object v0, v0, Lorg/telegram/ui/web/WebActionBar;->backButtonDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    return-void
.end method

.method private synthetic lambda$setParentActivity$28(Lorg/telegram/ui/Components/ItemOptions;F)V
    .locals 3

    .line 4225
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    iget-object v0, v0, Lorg/telegram/ui/web/WebActionBar;->backButtonDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    .line 4226
    new-instance v0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda47;

    invoke-direct {v0, p0, p2}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda47;-><init>(Lorg/telegram/ui/ArticleViewer;F)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ItemOptions;->setOnDismiss(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 4229
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    return-void
.end method

.method private synthetic lambda$setParentActivity$29(Landroid/view/View;)Z
    .locals 16

    move-object/from16 v0, p0

    .line 4069
    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-nez v1, :cond_0

    return v2

    .line 4071
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    iget-object v1, v1, Lorg/telegram/ui/web/WebActionBar;->backButtonDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BackDrawable;->getRotation()F

    move-result v1

    .line 4072
    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    if-eqz v3, :cond_1

    iget-object v3, v3, Lorg/telegram/ui/ArticleViewer$Sheet;->windowView:Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;

    :goto_0
    move-object/from16 v4, p1

    goto :goto_1

    :cond_1
    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    goto :goto_0

    :goto_1
    invoke-static {v3, v4}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Landroid/view/ViewGroup;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v3

    .line 4074
    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->adaptableColorInBrowser:Z

    if-eqz v4, :cond_2

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_iv_background:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    goto :goto_2

    :cond_2
    iget-object v4, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getBackgroundColor()I

    move-result v4

    .line 4075
    :goto_2
    sget-boolean v5, Lorg/telegram/messenger/SharedConfig;->adaptableColorInBrowser:Z

    if-eqz v5, :cond_3

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    goto :goto_3

    :cond_3
    iget-object v5, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getBackgroundColor()I

    move-result v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v5

    const v6, 0x3f389375    # 0.721f

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_4

    const/high16 v5, -0x1000000

    goto :goto_3

    :cond_4
    const/4 v5, -0x1

    :goto_3
    const v6, 0x3f266666    # 0.65f

    .line 4076
    invoke-static {v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v6

    .line 4078
    iget-object v7, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v7

    const/4 v8, 0x3

    if-eqz v7, :cond_7

    .line 4080
    invoke-virtual {v7}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v9

    .line 4081
    invoke-virtual {v9}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v10

    .line 4082
    invoke-virtual {v9}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v11

    if-lez v11, :cond_7

    move v11, v2

    :goto_4
    if-ge v11, v10, :cond_7

    .line 4084
    invoke-virtual {v9, v11}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v12

    .line 4086
    invoke-virtual {v12}, Landroid/webkit/WebHistoryItem;->getTitle()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda30;

    invoke-direct {v14, v10, v11, v7}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda30;-><init>(IILorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V

    invoke-virtual {v3, v13, v14}, Lorg/telegram/ui/Components/ItemOptions;->add(Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 4089
    invoke-virtual {v3}, Lorg/telegram/ui/Components/ItemOptions;->getLast()Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v13

    if-eqz v13, :cond_6

    .line 4091
    invoke-virtual {v12}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSubtext(Ljava/lang/CharSequence;)V

    .line 4092
    invoke-virtual {v12}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->getFavicon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v14

    if-nez v14, :cond_5

    .line 4094
    invoke-virtual {v12}, Landroid/webkit/WebHistoryItem;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v14

    .line 4097
    :cond_5
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15, v8}, Landroid/graphics/Paint;-><init>(I)V

    .line 4098
    invoke-virtual {v12}, Landroid/webkit/WebHistoryItem;->getTitle()Ljava/lang/String;

    move-result-object v12

    new-instance v8, Lorg/telegram/ui/ArticleViewer$16;

    invoke-direct {v8, v0, v14, v15}, Lorg/telegram/ui/ArticleViewer$16;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V

    invoke-virtual {v13, v12, v2, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;)V

    .line 4135
    invoke-virtual {v13, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextColor(I)V

    .line 4136
    invoke-virtual {v13, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSubtextColor(I)V

    :cond_6
    add-int/lit8 v11, v11, 0x1

    const/4 v8, 0x3

    goto :goto_4

    .line 4141
    :cond_7
    iget-object v8, v0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    :goto_5
    if-ltz v8, :cond_e

    .line 4142
    iget-object v9, v0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 4143
    instance-of v10, v9, Lorg/telegram/ui/ArticleViewer$CachedWeb;

    if-eqz v10, :cond_b

    .line 4144
    check-cast v9, Lorg/telegram/ui/ArticleViewer$CachedWeb;

    .line 4146
    invoke-virtual {v9}, Lorg/telegram/ui/ArticleViewer$CachedWeb;->getTitle()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda31;

    invoke-direct {v11, v0, v8}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/ui/ArticleViewer;I)V

    invoke-virtual {v3, v10, v11}, Lorg/telegram/ui/Components/ItemOptions;->add(Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 4149
    invoke-virtual {v3}, Lorg/telegram/ui/Components/ItemOptions;->getLast()Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v10

    if-eqz v10, :cond_a

    .line 4151
    iget-object v11, v9, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->lastUrl:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSubtext(Ljava/lang/CharSequence;)V

    if-eqz v7, :cond_8

    .line 4152
    iget-object v11, v9, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->lastUrl:Ljava/lang/String;

    invoke-virtual {v7, v11}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->getFavicon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    goto :goto_6

    :cond_8
    const/4 v11, 0x0

    :goto_6
    if-nez v11, :cond_9

    .line 4154
    iget-object v11, v9, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->favicon:Landroid/graphics/Bitmap;

    .line 4157
    :cond_9
    new-instance v12, Landroid/graphics/Paint;

    const/4 v13, 0x3

    invoke-direct {v12, v13}, Landroid/graphics/Paint;-><init>(I)V

    .line 4158
    invoke-virtual {v9}, Lorg/telegram/ui/ArticleViewer$CachedWeb;->getTitle()Ljava/lang/String;

    move-result-object v9

    new-instance v14, Lorg/telegram/ui/ArticleViewer$17;

    invoke-direct {v14, v0, v11, v12}, Lorg/telegram/ui/ArticleViewer$17;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V

    invoke-virtual {v10, v9, v2, v14}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;)V

    .line 4195
    invoke-virtual {v10, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextColor(I)V

    .line 4196
    invoke-virtual {v10, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSubtextColor(I)V

    .line 4197
    invoke-virtual {v10, v5, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    goto :goto_7

    :cond_a
    const/4 v13, 0x3

    goto :goto_7

    :cond_b
    const/4 v13, 0x3

    .line 4199
    instance-of v10, v9, Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v10, :cond_d

    .line 4200
    check-cast v9, Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 4202
    iget-object v10, v9, Lorg/telegram/tgnet/TLRPC$WebPage;->title:Ljava/lang/String;

    new-instance v11, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda32;

    invoke-direct {v11, v0, v8}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda32;-><init>(Lorg/telegram/ui/ArticleViewer;I)V

    invoke-virtual {v3, v10, v11}, Lorg/telegram/ui/Components/ItemOptions;->add(Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 4205
    invoke-virtual {v3}, Lorg/telegram/ui/Components/ItemOptions;->getLast()Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v10

    if-eqz v10, :cond_d

    .line 4207
    iget-object v11, v9, Lorg/telegram/tgnet/TLRPC$WebPage;->title:Ljava/lang/String;

    sget v12, Lorg/telegram/messenger/R$drawable;->msg_instant:I

    invoke-virtual {v10, v11, v12}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 4208
    invoke-virtual {v10, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextColor(I)V

    .line 4209
    iget-object v11, v9, Lorg/telegram/tgnet/TLRPC$WebPage;->site_name:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_c

    .line 4210
    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$WebPage;->site_name:Ljava/lang/String;

    invoke-virtual {v10, v9}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSubtext(Ljava/lang/CharSequence;)V

    .line 4212
    :cond_c
    invoke-virtual {v10, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSubtextColor(I)V

    .line 4213
    iget-object v9, v10, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    const/high16 v11, 0x41c00000    # 24.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    iput v11, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4214
    iget-object v9, v10, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const v11, 0x3fb9999a    # 1.45f

    invoke-virtual {v9, v11}, Landroid/view/View;->setScaleX(F)V

    .line 4215
    iget-object v9, v10, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v9, v11}, Landroid/view/View;->setScaleY(F)V

    .line 4216
    invoke-virtual {v10, v5, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    :cond_d
    :goto_7
    add-int/lit8 v8, v8, -0x1

    goto/16 :goto_5

    :cond_e
    const/high16 v5, 0x42200000    # 40.0f

    .line 4220
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    invoke-virtual {v6}, Lorg/telegram/ui/web/WebActionBar;->getBackgroundColor()I

    move-result v6

    invoke-static {v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/ItemOptions;->setScrimViewBackground(Landroid/graphics/drawable/Drawable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 4221
    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/ItemOptions;->setBackgroundColor(I)Lorg/telegram/ui/Components/ItemOptions;

    .line 4222
    invoke-virtual {v3}, Lorg/telegram/ui/Components/ItemOptions;->updateColors()V

    .line 4223
    invoke-virtual {v3}, Lorg/telegram/ui/Components/ItemOptions;->getItemsCount()I

    move-result v4

    if-gtz v4, :cond_f

    return v2

    .line 4224
    :cond_f
    new-instance v2, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda33;

    invoke-direct {v2, v0, v3, v1}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda33;-><init>(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/Components/ItemOptions;F)V

    invoke-direct {v0, v2}, Lorg/telegram/ui/ArticleViewer;->checkScrollAnimated(Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    return v1
.end method

.method private synthetic lambda$setParentActivity$30(J)V
    .locals 3

    .line 4344
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 4345
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ArticleViewer$Sheet;->dismiss(Z)V

    .line 4347
    :cond_0
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4349
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4350
    const-string/jumbo v2, "user_id"

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 4351
    new-instance p1, Lorg/telegram/ui/ChatActivity;

    invoke-direct {p1, v1}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_1
    return-void
.end method

.method private synthetic lambda$setParentActivity$31()V
    .locals 2

    .line 4359
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ArticleViewer$Sheet;->dismiss(Z)V

    return-void
.end method

.method private synthetic lambda$setParentActivity$32()V
    .locals 2

    .line 4366
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ArticleViewer$Sheet;->dismiss(Z)V

    return-void
.end method

.method private synthetic lambda$setParentActivity$33(Ljava/lang/String;)V
    .locals 2

    .line 4391
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/telegram/messenger/browser/Browser;->openInExternalBrowser(Landroid/content/Context;Ljava/lang/String;Z)Z

    return-void
.end method

.method private synthetic lambda$setParentActivity$34(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2

    .line 4394
    invoke-static {}, Lorg/telegram/ui/web/RestrictedDomainsList;->getInstance()Lorg/telegram/ui/web/RestrictedDomainsList;

    move-result-object v0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {v0, p2, p1}, Lorg/telegram/ui/web/RestrictedDomainsList;->setRestricted(Z[Ljava/lang/String;)V

    .line 4395
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    .line 4396
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->showRestrictedWebsiteToast()V

    return-void

    .line 4398
    :cond_1
    new-instance p1, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda46;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda46;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    sput-object p1, Lorg/telegram/ui/LaunchActivity;->whenResumed:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$setParentActivity$38(Landroid/view/View;)V
    .locals 5

    .line 4479
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 4480
    iput p1, p0, Lorg/telegram/ui/ArticleViewer;->selectedFont:I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 4482
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->fontCells:[Lorg/telegram/ui/ArticleViewer$FontCell;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    if-ne v1, p1, :cond_0

    move v4, v3

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_1
    invoke-virtual {v2, v4, v3}, Lorg/telegram/ui/ArticleViewer$FontCell;->select(ZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4484
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->updatePaintFonts()V

    .line 4485
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 4486
    aget-object p1, p1, v0

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer$PageLayout;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->notifyDataSetChanged()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private synthetic lambda$setParentActivity$39(Landroid/app/Activity;Ljava/lang/Integer;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 4301
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/telegram/ui/ArticleViewer$PageLayout;->isArticle()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v2, v2, v3

    iget-object v2, v2, Lorg/telegram/ui/ArticleViewer$PageLayout;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetcurrentPage(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v2

    if-eqz v2, :cond_1f

    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    if-nez v2, :cond_1

    goto/16 :goto_8

    .line 4304
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    .line 4305
    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    invoke-virtual {v1, v4, v4}, Lorg/telegram/ui/web/WebActionBar;->showSearch(ZZ)V

    return-void

    .line 4306
    :cond_2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-ne v2, v5, :cond_7

    .line 4308
    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->isWeb()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4309
    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v1

    if-nez v1, :cond_3

    goto/16 :goto_8

    .line 4310
    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4312
    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v1, v3

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer$PageLayout;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetcurrentPage(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v1

    if-nez v1, :cond_5

    goto/16 :goto_8

    .line 4313
    :cond_5
    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v1, v3

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer$PageLayout;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetcurrentPage(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    .line 4315
    :goto_0
    invoke-static {v1}, Lorg/telegram/ui/web/BotWebViewContainer;->magic2tonsite(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 4316
    new-instance v7, Lorg/telegram/ui/Components/ShareAlert;

    iget-object v8, v0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/web/WebActionBar;->getBackgroundColor()I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v1

    const v2, 0x3f389375    # 0.721f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_6

    new-instance v6, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;

    invoke-direct {v6}, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;-><init>()V

    :cond_6
    move-object v14, v6

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object v12, v10

    invoke-direct/range {v7 .. v14}, Lorg/telegram/ui/Components/ShareAlert;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0, v7}, Lorg/telegram/ui/ArticleViewer;->showDialog(Landroid/app/Dialog;)V

    return-void

    .line 4317
    :cond_7
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v7, 0x6

    if-ne v2, v7, :cond_b

    .line 4320
    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->isWeb()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 4321
    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v1

    if-nez v1, :cond_8

    goto/16 :goto_8

    .line 4322
    :cond_8
    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 4323
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v2, v2, v3

    iget-object v2, v2, Lorg/telegram/ui/ArticleViewer$PageLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    goto :goto_1

    .line 4325
    :cond_9
    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v1, v3

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer$PageLayout;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetcurrentPage(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v1

    if-nez v1, :cond_a

    goto/16 :goto_8

    .line 4326
    :cond_a
    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v1, v3

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer$PageLayout;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetcurrentPage(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    .line 4327
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v2, v2, v3

    .line 4329
    :goto_1
    invoke-static {v1}, Lorg/telegram/ui/web/BotWebViewContainer;->magic2tonsite(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4330
    iget v5, v0, Lorg/telegram/ui/ArticleViewer;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v5

    .line 4331
    iget v7, v0, Lorg/telegram/ui/ArticleViewer;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v7

    invoke-static {v1, v5, v6}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Ljava/lang/String;J)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)V

    .line 4332
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 4333
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4334
    iput-wide v5, v8, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 4335
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4336
    iput-wide v5, v8, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 4337
    iput-object v1, v7, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 4338
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;-><init>()V

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 4339
    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_webPage;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_webPage;-><init>()V

    iput-object v9, v8, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 4340
    iget-object v8, v7, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iput-object v1, v8, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    .line 4341
    iput-object v1, v8, Lorg/telegram/tgnet/TLRPC$WebPage;->display_url:Ljava/lang/String;

    .line 4342
    iget v1, v0, Lorg/telegram/ui/ArticleViewer;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v8, Lorg/telegram/messenger/NotificationCenter;->bookmarkAdded:I

    new-instance v9, Lorg/telegram/messenger/MessageObject;

    iget v10, v0, Lorg/telegram/ui/ArticleViewer;->currentAccount:I

    invoke-direct {v9, v10, v7, v3, v3}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v9, v7, v3

    invoke-virtual {v1, v8, v7}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 4343
    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer;->getResourcesProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-static {v2, v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$raw;->saved_messages:I

    sget v3, Lorg/telegram/messenger/R$string;->WebBookmarkedToast:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v7, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda36;

    invoke-direct {v7, v0, v5, v6}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda36;-><init>(Lorg/telegram/ui/ArticleViewer;J)V

    invoke-static {v3, v7}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v1

    .line 4353
    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    return-void

    .line 4354
    :cond_b
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v7, 0x7

    if-ne v2, v7, :cond_d

    .line 4355
    new-instance v1, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;

    invoke-direct {v1}, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;-><init>()V

    .line 4356
    iput-boolean v4, v1, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->transitionFromLeft:Z

    .line 4357
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 4359
    new-instance v3, Lorg/telegram/ui/web/BookmarksFragment;

    iget-object v4, v0, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    if-nez v4, :cond_c

    goto :goto_2

    :cond_c
    new-instance v6, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda38;

    invoke-direct {v6, v0}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda38;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    :goto_2
    new-instance v4, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda27;

    invoke-direct {v4, v0}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-direct {v3, v6, v4}, Lorg/telegram/ui/web/BookmarksFragment;-><init>(Ljava/lang/Runnable;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v2, v3, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;)[Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-void

    .line 4361
    :cond_d
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v7, 0x8

    if-ne v2, v7, :cond_f

    .line 4362
    new-instance v1, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;

    invoke-direct {v1}, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;-><init>()V

    .line 4363
    iput-boolean v4, v1, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->transitionFromLeft:Z

    .line 4364
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 4366
    new-instance v3, Lorg/telegram/ui/web/HistoryFragment;

    iget-object v4, v0, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    if-nez v4, :cond_e

    goto :goto_3

    :cond_e
    new-instance v6, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda39;

    invoke-direct {v6, v0}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda39;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    :goto_3
    new-instance v4, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda40;

    invoke-direct {v4, v0}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda40;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-direct {v3, v6, v4}, Lorg/telegram/ui/web/HistoryFragment;-><init>(Ljava/lang/Runnable;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v2, v3, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;)[Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-void

    .line 4368
    :cond_f
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v7, 0x9

    if-ne v2, v7, :cond_10

    .line 4369
    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 4370
    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->goForward()V

    return-void

    .line 4372
    :cond_10
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v8, -0x1

    const/4 v9, 0x3

    if-ne v2, v9, :cond_17

    .line 4375
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/telegram/ui/ArticleViewer$PageLayout;->isWeb()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 4376
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v2

    if-nez v2, :cond_11

    goto/16 :goto_8

    .line 4377
    :cond_11
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 4378
    iget-object v10, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v10, v10, v3

    invoke-virtual {v10}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->getOpenURL()Ljava/lang/String;

    move-result-object v10

    .line 4379
    iget-object v11, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v11, v11, v3

    iget-object v11, v11, Lorg/telegram/ui/ArticleViewer$PageLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    goto :goto_4

    .line 4381
    :cond_12
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v2, v2, v3

    iget-object v2, v2, Lorg/telegram/ui/ArticleViewer$PageLayout;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetcurrentPage(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v2

    if-nez v2, :cond_13

    goto/16 :goto_8

    .line 4382
    :cond_13
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v2, v2, v3

    iget-object v2, v2, Lorg/telegram/ui/ArticleViewer$PageLayout;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetcurrentPage(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    .line 4384
    iget-object v10, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v10, v10, v3

    move-object v10, v6

    .line 4386
    :goto_4
    iget-object v11, v0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v11, :cond_1f

    invoke-virtual {v11}, Landroid/app/Activity;->isFinishing()Z

    move-result v11

    if-eqz v11, :cond_14

    goto/16 :goto_8

    :cond_14
    if-nez v2, :cond_15

    goto/16 :goto_8

    .line 4388
    :cond_15
    invoke-static {v10, v4}, Lorg/telegram/messenger/AndroidUtilities;->getHostAuthority(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    .line 4389
    invoke-static {v2, v4}, Lorg/telegram/messenger/AndroidUtilities;->getHostAuthority(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    .line 4390
    new-instance v12, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda41;

    invoke-direct {v12, v0, v2}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda41;-><init>(Lorg/telegram/ui/ArticleViewer;Ljava/lang/String;)V

    .line 4393
    new-instance v2, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda42;

    invoke-direct {v2, v0, v11, v10}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda42;-><init>(Lorg/telegram/ui/ArticleViewer;Ljava/lang/String;Ljava/lang/String;)V

    .line 4401
    iget-object v10, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v10, v10, v3

    invoke-virtual {v10}, Lorg/telegram/ui/ArticleViewer$PageLayout;->isWeb()Z

    move-result v10

    if-eqz v10, :cond_16

    invoke-static {}, Lorg/telegram/ui/web/RestrictedDomainsList;->getInstance()Lorg/telegram/ui/web/RestrictedDomainsList;

    move-result-object v10

    invoke-virtual {v10, v11}, Lorg/telegram/ui/web/RestrictedDomainsList;->isRestricted(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_16

    invoke-static {}, Lorg/telegram/ui/web/RestrictedDomainsList;->getInstance()Lorg/telegram/ui/web/RestrictedDomainsList;

    move-result-object v10

    invoke-virtual {v10, v11}, Lorg/telegram/ui/web/RestrictedDomainsList;->incrementOpen(Ljava/lang/String;)I

    move-result v10

    if-lt v10, v5, :cond_16

    .line 4402
    new-instance v5, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer;->getResourcesProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v10

    invoke-direct {v5, v1, v10}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 4403
    sget v10, Lorg/telegram/messenger/R$string;->BrowserExternalTitle:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 4405
    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 4406
    invoke-virtual {v10, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 4407
    new-instance v13, Landroid/widget/TextView;

    invoke-direct {v13, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v14, 0x3ccccccd    # 0.025f

    .line 4408
    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 4409
    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v14, 0x41800000    # 16.0f

    .line 4410
    invoke-virtual {v13, v4, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v20, 0x18

    const/16 v21, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x2

    const/16 v17, 0x0

    const/16 v18, 0x18

    const/16 v19, 0x0

    .line 4411
    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v10, v13, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4413
    new-instance v15, Lorg/telegram/ui/Cells/CheckBoxCell;

    invoke-direct {v15, v1, v4, v6}, Lorg/telegram/ui/Cells/CheckBoxCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 4414
    invoke-virtual {v15, v4}, Lorg/telegram/ui/Cells/CheckBoxCell;->setMultiline(Z)V

    .line 4415
    invoke-virtual {v15}, Lorg/telegram/ui/Cells/CheckBoxCell;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v8, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4416
    invoke-virtual {v15}, Lorg/telegram/ui/Cells/CheckBoxCell;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 4417
    invoke-virtual {v15}, Lorg/telegram/ui/Cells/CheckBoxCell;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 4418
    invoke-virtual {v15}, Lorg/telegram/ui/Cells/CheckBoxCell;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 4419
    new-instance v1, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda43;

    invoke-direct {v1, v15}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda43;-><init>(Lorg/telegram/ui/Cells/CheckBoxCell;)V

    invoke-virtual {v15, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4422
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-static {v1, v7, v7}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v21, 0x8

    const/16 v22, 0x4

    const/16 v16, -0x1

    const/16 v17, -0x2

    const/16 v18, 0x3

    const/16 v19, 0x8

    const/16 v20, 0x6

    .line 4423
    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v10, v15, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4425
    sget v1, Lorg/telegram/messenger/R$string;->BrowserExternalText:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4426
    sget v1, Lorg/telegram/messenger/R$string;->BrowserExternalCheck:I

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v11, v4, v3

    invoke-static {v1, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    const-string v4, ""

    invoke-virtual {v15, v1, v4, v3, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)V

    .line 4427
    invoke-virtual {v5, v10}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 4429
    sget v1, Lorg/telegram/messenger/R$string;->Continue:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda44;

    invoke-direct {v3, v15, v2, v12}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda44;-><init>(Lorg/telegram/ui/Cells/CheckBoxCell;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/Runnable;)V

    invoke-virtual {v5, v1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 4435
    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda45;

    invoke-direct {v3, v15, v2}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda45;-><init>(Lorg/telegram/ui/Cells/CheckBoxCell;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v5, v1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 4441
    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void

    .line 4442
    :cond_16
    invoke-interface {v12}, Ljava/lang/Runnable;->run()V

    return-void

    .line 4443
    :cond_17
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1d

    .line 4444
    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->isWeb()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 4445
    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer;->openWebSettings()V

    return-void

    .line 4448
    :cond_18
    new-instance v1, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    .line 4449
    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setApplyTopPadding(Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 4451
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v6, v0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v2, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/high16 v6, 0x40800000    # 4.0f

    .line 4452
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v2, v3, v3, v3, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 4453
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 4455
    new-instance v6, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v7, v0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer;->getResourcesProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v9

    invoke-direct {v6, v7, v9}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 4456
    sget v7, Lorg/telegram/messenger/R$string;->FontSize:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    const/4 v14, 0x3

    const/4 v15, 0x0

    const/4 v9, -0x2

    const/4 v10, -0x2

    const/16 v11, 0x33

    const/4 v12, 0x3

    const/4 v13, 0x1

    .line 4457
    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4459
    new-instance v6, Lorg/telegram/ui/ArticleViewer$TextSizeCell;

    iget-object v7, v0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v6, v0, v7}, Lorg/telegram/ui/ArticleViewer$TextSizeCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    const/4 v9, -0x1

    const/4 v13, 0x0

    .line 4460
    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4462
    new-instance v6, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v7, v0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer;->getResourcesProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v9

    invoke-direct {v6, v7, v9}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 4463
    sget v7, Lorg/telegram/messenger/R$string;->FontType:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    const/4 v15, 0x2

    const/4 v9, -0x2

    const/4 v13, 0x4

    .line 4464
    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v6, v3

    :goto_5
    if-ge v6, v5, :cond_1c

    .line 4467
    iget-object v7, v0, Lorg/telegram/ui/ArticleViewer;->fontCells:[Lorg/telegram/ui/ArticleViewer$FontCell;

    new-instance v9, Lorg/telegram/ui/ArticleViewer$FontCell;

    iget-object v10, v0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v9, v0, v10}, Lorg/telegram/ui/ArticleViewer$FontCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    aput-object v9, v7, v6

    if-eqz v6, :cond_1a

    if-eq v6, v4, :cond_19

    goto :goto_6

    .line 4473
    :cond_19
    iget-object v7, v0, Lorg/telegram/ui/ArticleViewer;->fontCells:[Lorg/telegram/ui/ArticleViewer$FontCell;

    aget-object v7, v7, v6

    const-string v9, "Serif"

    sget-object v10, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v7, v9, v10}, Lorg/telegram/ui/ArticleViewer$FontCell;->setTextAndTypeface(Ljava/lang/String;Landroid/graphics/Typeface;)V

    goto :goto_6

    .line 4470
    :cond_1a
    iget-object v7, v0, Lorg/telegram/ui/ArticleViewer;->fontCells:[Lorg/telegram/ui/ArticleViewer$FontCell;

    aget-object v7, v7, v6

    sget v9, Lorg/telegram/messenger/R$string;->Default:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v7, v9, v10}, Lorg/telegram/ui/ArticleViewer$FontCell;->setTextAndTypeface(Ljava/lang/String;Landroid/graphics/Typeface;)V

    .line 4476
    :goto_6
    iget-object v7, v0, Lorg/telegram/ui/ArticleViewer;->fontCells:[Lorg/telegram/ui/ArticleViewer$FontCell;

    aget-object v7, v7, v6

    iget v9, v0, Lorg/telegram/ui/ArticleViewer;->selectedFont:I

    if-ne v6, v9, :cond_1b

    move v9, v4

    goto :goto_7

    :cond_1b
    move v9, v3

    :goto_7
    invoke-virtual {v7, v9, v3}, Lorg/telegram/ui/ArticleViewer$FontCell;->select(ZZ)V

    .line 4477
    iget-object v7, v0, Lorg/telegram/ui/ArticleViewer;->fontCells:[Lorg/telegram/ui/ArticleViewer$FontCell;

    aget-object v7, v7, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 4478
    iget-object v7, v0, Lorg/telegram/ui/ArticleViewer;->fontCells:[Lorg/telegram/ui/ArticleViewer$FontCell;

    aget-object v7, v7, v6

    new-instance v9, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda37;

    invoke-direct {v9, v0}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda37;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v7, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4489
    iget-object v7, v0, Lorg/telegram/ui/ArticleViewer;->fontCells:[Lorg/telegram/ui/ArticleViewer$FontCell;

    aget-object v7, v7, v6

    const/16 v9, 0x32

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v2, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 4492
    :cond_1c
    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setCustomView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 4493
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/ArticleViewer;->linkSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ArticleViewer;->showDialog(Landroid/app/Dialog;)V

    return-void

    .line 4495
    :cond_1d
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1e

    .line 4496
    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->isWeb()Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 4497
    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->reload()V

    return-void

    .line 4499
    :cond_1e
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1f

    .line 4500
    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v1, v3

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer$PageLayout;->currentInstantLoader:Lorg/telegram/ui/web/WebInstantView$Loader;

    if-eqz v1, :cond_1f

    .line 4501
    invoke-virtual {v1}, Lorg/telegram/ui/web/WebInstantView$Loader;->getWebPage()Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 4502
    invoke-virtual {v1}, Lorg/telegram/ui/web/WebInstantView$Loader;->getWebPage()Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v1

    invoke-direct {v0, v1, v6, v4}, Lorg/telegram/ui/ArticleViewer;->addPageToStack(Lorg/telegram/tgnet/TLRPC$WebPage;Ljava/lang/String;I)Z

    :cond_1f
    :goto_8
    return-void
.end method

.method private synthetic lambda$setParentActivity$40(Landroid/view/View;)V
    .locals 1

    .line 4508
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 4514
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ArticleViewer$Sheet;->dismiss(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setParentActivity$42(Ljava/lang/Integer;)V
    .locals 4

    .line 4539
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->searchPanel:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/ArticleViewer;->searchPanelTranslation:F

    const/high16 v1, 0x424c0000    # 51.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lorg/telegram/ui/ArticleViewer;->searchPanelAlpha:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private synthetic lambda$setParentActivity$43(Landroid/view/View;)V
    .locals 1

    .line 4549
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->isWeb()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4550
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4551
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->findNext(Z)V

    :cond_0
    return-void

    .line 4554
    :cond_1
    iget p1, p0, Lorg/telegram/ui/ArticleViewer;->currentSearchIndex:I

    add-int/lit8 p1, p1, -0x1

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->scrollToSearchIndex(I)V

    return-void
.end method

.method private synthetic lambda$setParentActivity$44(Landroid/view/View;)V
    .locals 2

    .line 4566
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->isWeb()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 4567
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4568
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->findNext(Z)V

    :cond_0
    return-void

    .line 4571
    :cond_1
    iget p1, p0, Lorg/telegram/ui/ArticleViewer;->currentSearchIndex:I

    add-int/2addr p1, v1

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->scrollToSearchIndex(I)V

    return-void
.end method

.method private synthetic lambda$setParentActivity$45(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 10

    .line 4616
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget v2, p0, Lorg/telegram/ui/ArticleViewer;->currentAccount:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v5, p1

    move-object v3, p2

    move-object v4, p3

    move-object v9, p4

    invoke-static/range {v0 .. v9}, Lorg/telegram/ui/Components/TranslateAlert2;->showAlert(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ILjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/util/ArrayList;ZLorg/telegram/messenger/Utilities$CallbackReturn;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/TranslateAlert2;

    return-void
.end method

.method private synthetic lambda$setParentActivity$46([F)V
    .locals 2

    .line 4639
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->currentHeaderHeight:I

    int-to-float v0, v0

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 4640
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v0, v0, v1

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$PageLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x1

    aput v0, p1, v1

    return-void
.end method

.method private synthetic lambda$showCopyPopup$0(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1367
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    if-eqz p2, :cond_a

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    const/4 v0, 0x0

    aget-object p2, p2, v0

    iget-object p2, p2, Lorg/telegram/ui/ArticleViewer$PageLayout;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {p2}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetcurrentPage(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object p2

    if-nez p2, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 p2, 0x1

    if-nez p3, :cond_6

    const/16 p3, 0x23

    .line 1372
    invoke-virtual {p1, p3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p3

    const/4 v1, -0x1

    if-eq p3, v1, :cond_5

    .line 1374
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v1, v0

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer$PageLayout;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetcurrentPage(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Page;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1375
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v1, v0

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer$PageLayout;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetcurrentPage(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Page;->url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1377
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v1, v0

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer$PageLayout;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetcurrentPage(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    :goto_0
    add-int/2addr p3, p2

    .line 1381
    :try_start_0
    invoke-virtual {p1, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    const-string v2, "UTF-8"

    invoke-static {p3, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1383
    :catch_0
    const-string p3, ""

    .line 1385
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1386
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1387
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object p1, p1, v0

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer$PageLayout;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object p3, p0, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lorg/telegram/ui/ArticleViewer$Sheet;->halfSize()Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_2

    :cond_2
    move p2, v0

    :goto_2
    iget-object p3, p0, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    if-eqz p3, :cond_3

    const/high16 p3, 0x42000000    # 32.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    :cond_3
    invoke-virtual {p1, p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 1388
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->checkScrollAnimated()V

    goto :goto_4

    .line 1390
    :cond_4
    invoke-direct {p0, p3, v0}, Lorg/telegram/ui/ArticleViewer;->scrollToAnchor(Ljava/lang/String;Z)Z

    goto :goto_4

    .line 1395
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-static {p2, p1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_6
    if-ne p3, p2, :cond_a

    if-nez p1, :cond_7

    goto :goto_4

    .line 1399
    :cond_7
    const-string p2, "mailto:"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_8

    const/4 p2, 0x7

    .line 1400
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 1401
    :cond_8
    const-string/jumbo p2, "tel:"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_9

    const/4 p2, 0x4

    .line 1402
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1404
    :cond_9
    :goto_3
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    :cond_a
    :goto_4
    return-void
.end method

.method private synthetic lambda$showCopyPopup$1(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1407
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->clear()V

    return-void
.end method

.method private synthetic lambda$showDialog$64(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 5704
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->visibleDialog:Landroid/app/Dialog;

    return-void
.end method

.method private synthetic lambda$showPopup$2(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1425
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 1426
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1427
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->popupRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1428
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->popupRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1429
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$showPopup$3(Landroid/view/KeyEvent;)V
    .locals 2

    .line 1436
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1437
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showPopup$4(Landroid/view/View;)V
    .locals 2

    .line 1450
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->pressedLinkOwnerLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz p1, :cond_0

    .line 1451
    invoke-virtual {p1}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    .line 1452
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->shouldShowClipboardToast()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1453
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    sget v0, Lorg/telegram/messenger/R$string;->TextCopied:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1456
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1457
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss(Z)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$showPopup$5()V
    .locals 2

    .line 1471
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pressedLinkOwnerView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1472
    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->pressedLinkOwnerLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    .line 1473
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1474
    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->pressedLinkOwnerView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method private synthetic lambda$showSearchPanel$50(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 4892
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ArticleViewer;->searchPanelAlpha:F

    .line 4893
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->searchPanel:Landroid/widget/FrameLayout;

    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->searchPanelTranslation:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    const/high16 p1, 0x424c0000    # 51.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private loadChannel(Lorg/telegram/ui/ArticleViewer$BlockChannelCell;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 3

    .line 5570
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->loadingChannel:Z

    if-nez v0, :cond_1

    invoke-static {p3}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 5573
    iput-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->loadingChannel:Z

    .line 5574
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;-><init>()V

    .line 5575
    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    iput-object p3, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;->username:Ljava/lang/String;

    .line 5576
    sget p3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    .line 5577
    invoke-static {p3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda56;

    invoke-direct {v2, p0, p2, p3, p1}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda56;-><init>(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;ILorg/telegram/ui/ArticleViewer$BlockChannelCell;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private makeProgress(Lorg/telegram/ui/Components/LinkSpanDrawable;Lorg/telegram/ui/ArticleViewer$DrawingText;)Lorg/telegram/messenger/browser/Browser$Progress;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3287
    :cond_0
    new-instance v0, Lorg/telegram/ui/ArticleViewer$11;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/ArticleViewer$11;-><init>(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$DrawingText;Lorg/telegram/ui/Components/LinkSpanDrawable;)V

    return-object v0
.end method

.method public static makeSheet(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/ArticleViewer;
    .locals 1

    .line 401
    new-instance v0, Lorg/telegram/ui/ArticleViewer;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ArticleViewer;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-object v0
.end method

.method private onClosed()V
    .locals 4

    const/4 v0, 0x0

    .line 5543
    iput-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->isVisible:Z

    move v1, v0

    .line 5544
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 5545
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/telegram/ui/ArticleViewer$PageLayout;->cleanup()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5548
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 5550
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_1
    move v1, v0

    .line 5552
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->createdWebViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 5553
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->createdWebViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    .line 5554
    invoke-virtual {v2, v0}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->destroyWebView(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 5556
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    new-instance v2, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 5566
    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->articleClosed:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private open(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/browser/Browser$Progress;)Z
    .locals 15

    move-object/from16 v4, p1

    move-object/from16 v0, p3

    .line 5061
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    const/4 v7, 0x0

    if-eqz v1, :cond_19

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/telegram/ui/ArticleViewer;->isVisible:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/telegram/ui/ArticleViewer;->collapsed:Z

    if-nez v1, :cond_0

    goto/16 :goto_f

    .line 5065
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eqz v1, :cond_1

    .line 5066
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_1
    const/16 v1, 0x23

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v4, :cond_6

    .line 5071
    iget-object v0, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    move v3, v7

    .line 5073
    :goto_0
    iget-object v0, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_5

    .line 5074
    iget-object v0, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    .line 5075
    instance-of v5, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityUrl;

    if-eqz v5, :cond_4

    .line 5077
    :try_start_0
    iget-object v5, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v0, v6

    invoke-virtual {v5, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 5079
    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Page;->url:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 5080
    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Page;->url:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    .line 5082
    :cond_2
    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 5084
    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 5085
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    if-eq v5, v8, :cond_5

    add-int/lit8 v5, v5, 0x1

    .line 5086
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 5091
    :goto_2
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    move-object v0, v9

    :goto_3
    move-object v3, v2

    goto :goto_4

    :cond_6
    if-eqz v0, :cond_7

    .line 5097
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-eq v1, v8, :cond_7

    add-int/2addr v1, v10

    .line 5098
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v3, p2

    goto :goto_4

    :cond_7
    move-object/from16 v3, p2

    move-object v0, v9

    .line 5102
    :goto_4
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    move v5, v10

    goto :goto_5

    :cond_8
    move v5, v7

    .line 5104
    :goto_5
    iput-boolean v7, p0, Lorg/telegram/ui/ArticleViewer;->collapsed:Z

    const/high16 v11, 0x42600000    # 56.0f

    const/4 v12, 0x0

    if-eqz v5, :cond_9

    goto :goto_6

    .line 5108
    :cond_9
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 5109
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v12}, Landroid/view/View;->setTranslationX(F)V

    .line 5110
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    if-eqz v1, :cond_a

    .line 5111
    invoke-virtual {v1, v12}, Lorg/telegram/ui/ArticleViewer$Sheet;->setBackProgress(F)V

    .line 5113
    :cond_a
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v12}, Landroid/view/View;->setTranslationY(F)V

    .line 5114
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v1, v7

    invoke-virtual {v1, v12}, Landroid/view/View;->setTranslationY(F)V

    .line 5115
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v1, v7

    invoke-virtual {v1, v12}, Lorg/telegram/ui/ArticleViewer$PageLayout;->setTranslationX(F)V

    .line 5116
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v1, v10

    invoke-virtual {v1, v12}, Lorg/telegram/ui/ArticleViewer$PageLayout;->setTranslationX(F)V

    .line 5117
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v1, v7

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 5118
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    invoke-virtual {v1, v12}, Lorg/telegram/ui/ArticleViewer$WindowView;->setInnerTranslationX(F)V

    .line 5120
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v1, v7

    invoke-virtual {v1, v7}, Lorg/telegram/ui/ArticleViewer$PageLayout;->scrollToTop(Z)V

    .line 5122
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-direct {p0, v1}, Lorg/telegram/ui/ArticleViewer;->setCurrentHeaderHeight(I)V

    .line 5130
    :goto_6
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    if-eqz v1, :cond_b

    sget-boolean v2, Lorg/telegram/ui/web/BotWebViewContainer;->firstWebView:Z

    if-eqz v2, :cond_b

    .line 5131
    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer$Sheet;->animationsLock:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {v1}, Lorg/telegram/messenger/AnimationNotificationsLocker;->lock()V

    :cond_b
    if-eqz v3, :cond_f

    .line 5135
    invoke-direct {p0, v3, v0, v5}, Lorg/telegram/ui/ArticleViewer;->addPageToStack(Lorg/telegram/tgnet/TLRPC$WebPage;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_c

    if-eqz v0, :cond_c

    move-object v6, v0

    goto :goto_7

    :cond_c
    move-object v6, v9

    .line 5137
    :goto_7
    new-instance v13, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;

    invoke-direct {v13}, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;-><init>()V

    .line 5138
    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    iput-object v0, v13, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;->url:Ljava/lang/String;

    .line 5139
    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_pagePart_layer82;

    if-nez v1, :cond_e

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Page;->part:Z

    if-eqz v0, :cond_d

    goto :goto_8

    .line 5142
    :cond_d
    iget v0, v3, Lorg/telegram/tgnet/TLRPC$WebPage;->hash:I

    iput v0, v13, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;->hash:I

    goto :goto_9

    .line 5140
    :cond_e
    :goto_8
    iput v7, v13, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;->hash:I

    .line 5145
    :goto_9
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    .line 5146
    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v14

    new-instance v0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda4;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ArticleViewer;ILorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/messenger/MessageObject;ZLjava/lang/String;)V

    invoke-virtual {v14, v13, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_a

    :cond_f
    move-object/from16 v2, p4

    .line 5209
    invoke-direct {p0, v2, v5}, Lorg/telegram/ui/ArticleViewer;->addPageToStack(Ljava/lang/String;I)Z

    .line 5212
    :goto_a
    iput-object v9, p0, Lorg/telegram/ui/ArticleViewer;->lastInsets:Ljava/lang/Object;

    .line 5213
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    if-eqz v0, :cond_10

    if-nez v5, :cond_14

    .line 5215
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    .line 5216
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ArticleViewer$Sheet;->setContainerView(Landroid/view/View;)V

    .line 5217
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$Sheet;->windowView:Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {v8, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_d

    .line 5219
    :cond_10
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->isVisible:Z

    const-string/jumbo v2, "window"

    if-nez v0, :cond_13

    .line 5220
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 5221
    iget-boolean v2, p0, Lorg/telegram/ui/ArticleViewer;->attachedToWindow:Z

    if-eqz v2, :cond_11

    .line 5223
    :try_start_1
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    invoke-interface {v0, v2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 5229
    :catch_1
    :cond_11
    :try_start_2
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/high16 v3, -0x77ff0000

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 5232
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_12

    .line 5233
    invoke-static {v2, v10}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticApiModelOutline2;->m(Landroid/view/WindowManager$LayoutParams;I)V

    goto :goto_b

    :catch_2
    move-exception v0

    goto :goto_c

    .line 5236
    :cond_12
    :goto_b
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    invoke-virtual {v2, v7}, Landroid/view/View;->setFocusable(Z)V

    .line 5237
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v7}, Landroid/view/View;->setFocusable(Z)V

    .line 5238
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v2, v3}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_d

    .line 5240
    :goto_c
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return v7

    .line 5244
    :cond_13
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v3, v3, -0x11

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 5245
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 5246
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v2, v3}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5248
    :cond_14
    :goto_d
    iput-boolean v10, p0, Lorg/telegram/ui/ArticleViewer;->isVisible:Z

    .line 5249
    iput v10, p0, Lorg/telegram/ui/ArticleViewer;->animationInProgress:I

    const/4 v0, 0x2

    if-eqz v5, :cond_15

    goto/16 :goto_e

    .line 5253
    :cond_15
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    if-eqz v2, :cond_17

    if-eqz v5, :cond_16

    if-eqz v2, :cond_18

    .line 5256
    iget-object v2, v2, Lorg/telegram/ui/ArticleViewer$Sheet;->animationsLock:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {v2}, Lorg/telegram/messenger/AnimationNotificationsLocker;->unlock()V

    goto :goto_e

    .line 5278
    :cond_16
    invoke-virtual {v2}, Lorg/telegram/ui/ArticleViewer$Sheet;->show()V

    goto :goto_e

    .line 5281
    :cond_17
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    invoke-virtual {v2, v12}, Lorg/telegram/ui/ArticleViewer$WindowView;->setAlpha(F)V

    .line 5282
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v12}, Landroid/view/View;->setAlpha(F)V

    .line 5284
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 5285
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v0, [F

    fill-array-data v5, :array_0

    .line 5286
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    new-array v6, v0, [F

    fill-array-data v6, :array_1

    .line 5287
    invoke-static {v5, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    sget-object v6, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 5288
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    new-array v11, v0, [F

    aput v8, v11, v7

    aput v12, v11, v10

    invoke-static {v5, v6, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v3, v6, v7

    aput-object v4, v6, v10

    aput-object v5, v6, v0

    .line 5285
    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 5291
    new-instance v3, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    iput-object v3, p0, Lorg/telegram/ui/ArticleViewer;->animationEndRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x96

    .line 5300
    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 5301
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5302
    new-instance v3, Lorg/telegram/ui/ArticleViewer$23;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ArticleViewer$23;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5314
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lorg/telegram/ui/ArticleViewer;->transitionAnimationStartTime:J

    .line 5315
    new-instance v3, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0, v2}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/animation/AnimatorSet;)V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 5320
    :cond_18
    :goto_e
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0, v9}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return v10

    :cond_19
    :goto_f
    return v7

    nop

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

.method private openAllParentBlocks(Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;)Z
    .locals 4

    .line 1625
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;->-$$Nest$fgetparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getLastNonListPageBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object p1

    .line 1626
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1627
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;

    .line 1628
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;->open:Z

    if-nez v0, :cond_0

    .line 1629
    iput-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;->open:Z

    return v2

    :cond_0
    return v1

    .line 1633
    :cond_1
    instance-of v0, p1, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;

    if-eqz v0, :cond_5

    .line 1634
    check-cast p1, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;

    .line 1635
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;->-$$Nest$fgetblock(Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->getLastNonListPageBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v0

    .line 1637
    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;

    if-eqz v3, :cond_2

    .line 1638
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;

    .line 1639
    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;->open:Z

    if-nez v3, :cond_2

    .line 1640
    iput-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;->open:Z

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1644
    :goto_0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->openAllParentBlocks(Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;)Z

    move-result p1

    if-nez p1, :cond_4

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    return v1

    :cond_4
    :goto_1
    return v2

    :cond_5
    return v1
.end method

.method private openPreviewsChat(Lorg/telegram/tgnet/TLRPC$User;J)V
    .locals 4

    if-eqz p1, :cond_1

    .line 5034
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    instance-of v0, v0, Lorg/telegram/ui/LaunchActivity;

    if-nez v0, :cond_0

    goto :goto_0

    .line 5037
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5038
    const-string/jumbo v1, "user_id"

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 5039
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "webpage"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "botUser"

    invoke-virtual {v0, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5040
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    check-cast p1, Lorg/telegram/ui/LaunchActivity;

    new-instance p2, Lorg/telegram/ui/ChatActivity;

    invoke-direct {p2, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    const/4 p3, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p3, v0}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)Z

    .line 5041
    invoke-virtual {p0, p3, v0}, Lorg/telegram/ui/ArticleViewer;->close(ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private openWebpageUrl(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/browser/Browser$Progress;)V
    .locals 9

    .line 3340
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->loadingProgress:Lorg/telegram/messenger/browser/Browser$Progress;

    if-eqz v0, :cond_0

    .line 3341
    invoke-virtual {v0}, Lorg/telegram/messenger/browser/Browser$Progress;->cancel()V

    .line 3343
    :cond_0
    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer;->loadingProgress:Lorg/telegram/messenger/browser/Browser$Progress;

    .line 3344
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->openUrlReqId:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3345
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/ArticleViewer;->openUrlReqId:I

    invoke-virtual {v0, v2, v1}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 3346
    iput v1, p0, Lorg/telegram/ui/ArticleViewer;->openUrlReqId:I

    :cond_1
    const/4 v0, 0x1

    .line 3349
    new-array v2, v0, [Z

    .line 3350
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-static {v3, p1, v1}, Lorg/telegram/messenger/browser/Browser;->openInExternalApp(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3351
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3352
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    if-eqz p1, :cond_2

    .line 3353
    invoke-virtual {p1, v1}, Lorg/telegram/ui/ArticleViewer$Sheet;->dismiss(Z)V

    return-void

    :cond_2
    move-object v3, p0

    goto :goto_0

    .line 3358
    :cond_3
    new-instance v7, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda57;

    invoke-direct {v7, p0, p1, v2, p3}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda57;-><init>(Lorg/telegram/ui/ArticleViewer;Ljava/lang/String;[ZLorg/telegram/messenger/browser/Browser$Progress;)V

    .line 3380
    iget v2, p0, Lorg/telegram/ui/ArticleViewer;->lastReqId:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lorg/telegram/ui/ArticleViewer;->lastReqId:I

    .line 3381
    invoke-direct {p0, v0, v0}, Lorg/telegram/ui/ArticleViewer;->showProgressView(ZZ)V

    .line 3382
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;-><init>()V

    .line 3383
    iput-object p1, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;->url:Ljava/lang/String;

    .line 3384
    iput v1, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;->hash:I

    .line 3385
    iget p1, p0, Lorg/telegram/ui/ArticleViewer;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v2, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda58;

    move-object v3, p0

    move-object v6, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda58;-><init>(Lorg/telegram/ui/ArticleViewer;ILorg/telegram/messenger/browser/Browser$Progress;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback0Return;Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;)V

    invoke-virtual {p1, v8, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p1

    iput p1, v3, Lorg/telegram/ui/ArticleViewer;->openUrlReqId:I

    if-eqz v5, :cond_4

    .line 3420
    new-instance p1, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda59;

    invoke-direct {p1, p0, v4, v5}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda59;-><init>(Lorg/telegram/ui/ArticleViewer;ILorg/telegram/messenger/browser/Browser$Progress;)V

    invoke-virtual {v5, p1}, Lorg/telegram/messenger/browser/Browser$Progress;->onCancel(Ljava/lang/Runnable;)Lorg/telegram/messenger/browser/Browser$Progress;

    .line 3429
    invoke-virtual {v5}, Lorg/telegram/messenger/browser/Browser$Progress;->init()V

    :cond_4
    :goto_0
    return-void
.end method

.method private processSearch(Ljava/lang/String;)V
    .locals 4

    .line 4805
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->searchRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 4806
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 4807
    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->searchRunnable:Ljava/lang/Runnable;

    .line 4809
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 4810
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->searchResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4811
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->searchText:Ljava/lang/String;

    .line 4812
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object p1, p1, v1

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer$PageLayout;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetsearchTextOffset(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 4813
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ArticleViewer;->showSearchPanel(Z)V

    .line 4814
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->isWeb()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4815
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4816
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda52;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda52;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    const-string v1, ""

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->search(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 4817
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->updateSearchButtons()V

    goto :goto_0

    .line 4820
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object p1, p1, v1

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer$PageLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    .line 4821
    invoke-direct {p0, v1}, Lorg/telegram/ui/ArticleViewer;->scrollToSearchIndex(I)V

    :cond_2
    :goto_0
    const/4 p1, -0x1

    .line 4823
    iput p1, p0, Lorg/telegram/ui/ArticleViewer;->lastSearchIndex:I

    return-void

    .line 4826
    :cond_3
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->lastSearchIndex:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/ArticleViewer;->lastSearchIndex:I

    .line 4827
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lorg/telegram/ui/ArticleViewer$PageLayout;->isWeb()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4828
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ArticleViewer;->showSearchPanel(Z)V

    .line 4829
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 4830
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda52;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda52;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->search(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 4831
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->updateSearchButtons()V

    :cond_4
    return-void

    .line 4834
    :cond_5
    new-instance v1, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda53;

    invoke-direct {v1, p0, p1, v0}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda53;-><init>(Lorg/telegram/ui/ArticleViewer;Ljava/lang/String;I)V

    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->searchRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x190

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private refreshThemeColors()V
    .locals 5

    .line 5414
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->deleteView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 5415
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ArticleViewer;->getThemedColor(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5416
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->deleteView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ArticleViewer;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5418
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v0, :cond_1

    .line 5419
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ArticleViewer;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setBackgroundColor(I)V

    .line 5421
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->searchUpButton:Landroid/widget/ImageView;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 5422
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ArticleViewer;->getThemedColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 5423
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->searchUpButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultSelector:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ArticleViewer;->getThemedColor(I)I

    move-result v2

    invoke-static {v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5425
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->searchDownButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 5426
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ArticleViewer;->getThemedColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 5427
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->searchDownButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultSelector:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ArticleViewer;->getThemedColor(I)I

    move-result v2

    invoke-static {v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5429
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->searchCountText:Lorg/telegram/ui/Components/AnimatedTextView;

    if-eqz v0, :cond_4

    .line 5430
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ArticleViewer;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    .line 5432
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    if-eqz v0, :cond_7

    .line 5433
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-eqz v2, :cond_5

    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->adaptableColorInBrowser:Z

    if-eqz v4, :cond_5

    invoke-virtual {v2}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getBackgroundColor()I

    move-result v2

    goto :goto_0

    :cond_5
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_iv_background:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ArticleViewer;->getThemedColor(I)I

    move-result v2

    :goto_0
    invoke-virtual {v0, v2}, Lorg/telegram/ui/web/WebActionBar;->setMenuColors(I)V

    .line 5434
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v2, v2, v3

    if-eqz v2, :cond_6

    sget-boolean v3, Lorg/telegram/messenger/SharedConfig;->adaptableColorInBrowser:Z

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getActionBarColor()I

    move-result v2

    goto :goto_1

    :cond_6
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_iv_background:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ArticleViewer;->getThemedColor(I)I

    move-result v2

    :goto_1
    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/web/WebActionBar;->setColors(IZ)V

    :cond_7
    return-void
.end method

.method private removeLastPageFromStack()Z
    .locals 4

    .line 2325
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    .line 2328
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 2329
    instance-of v1, v0, Lorg/telegram/ui/ArticleViewer$CachedWeb;

    if-eqz v1, :cond_1

    .line 2330
    move-object v1, v0

    check-cast v1, Lorg/telegram/ui/ArticleViewer$CachedWeb;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->destroy()V

    .line 2332
    :cond_1
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v1, :cond_2

    .line 2333
    check-cast v0, Lorg/telegram/tgnet/TLRPC$WebPage;

    invoke-static {v0}, Lorg/telegram/ui/web/WebInstantView;->recycle(Lorg/telegram/tgnet/TLRPC$WebPage;)V

    .line 2335
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v2, v1}, Lorg/telegram/ui/ArticleViewer;->updateInterfaceForCurrentPage(Ljava/lang/Object;ZI)V

    return v3
.end method

.method private removePressedLink()V
    .locals 2

    .line 3326
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pressedLinkOwnerView:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3329
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pressedLinkOwnerView:Landroid/view/View;

    .line 3330
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->clear()V

    const/4 v1, 0x0

    .line 3331
    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    .line 3332
    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->pressedLinkOwnerLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    .line 3333
    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->pressedLinkOwnerView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 3335
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method private saveCurrentPagePosition()V
    .locals 7

    .line 5395
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$PageLayout;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetcurrentPage(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 5398
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v0, v0, v1

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$PageLayout;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    .line 5401
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v2, v2, v1

    iget-object v2, v2, Lorg/telegram/ui/ArticleViewer$PageLayout;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5403
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v1

    .line 5407
    :goto_0
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v4, "articles"

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 5408
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "article"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v5, v5, v1

    iget-object v5, v5, Lorg/telegram/ui/ArticleViewer$PageLayout;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v5}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetcurrentPage(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v5

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$WebPage;->id:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5409
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "o"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "r"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    if-le v4, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    :goto_1
    return-void
.end method

.method private scrollToAnchor(Ljava/lang/String;Z)Z
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 2304
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2170
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    .line 2173
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 2174
    iget-object v4, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v4, v4, v1

    iget-object v4, v4, Lorg/telegram/ui/ArticleViewer$PageLayout;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetanchors(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_d

    .line 2176
    iget-object v5, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v5, v5, v1

    iget-object v5, v5, Lorg/telegram/ui/ArticleViewer$PageLayout;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v5}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetanchorsParent(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_textAnchor;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, -0x1

    if-eqz v5, :cond_4

    .line 2178
    new-instance v12, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

    invoke-direct {v12}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;-><init>()V

    .line 2180
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v2, v2, v1

    iget-object v2, v2, Lorg/telegram/ui/ArticleViewer$PageLayout;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetcurrentPage(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Page;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2181
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v2, v2, v1

    iget-object v2, v2, Lorg/telegram/ui/ArticleViewer$PageLayout;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetcurrentPage(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Page;->url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2183
    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v2, v2, v1

    iget-object v2, v2, Lorg/telegram/ui/ArticleViewer$PageLayout;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetcurrentPage(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 2185
    :goto_0
    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {v4, v2, v3}, Lorg/telegram/ui/web/WebInstantView;->filterRecursiveAnchorLinks(Lorg/telegram/tgnet/TLRPC$RichText;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v2

    iput-object v2, v12, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    .line 2187
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v2, v2, v1

    iget-object v2, v2, Lorg/telegram/ui/ArticleViewer$PageLayout;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v2, v12}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$mgetTypeForBlock(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$PageBlock;)I

    move-result v10

    .line 2188
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v2, v2, v1

    iget-object v2, v2, Lorg/telegram/ui/ArticleViewer$PageLayout;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-virtual {v2, v6, v10}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v11

    .line 2189
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v2, v2, v1

    iget-object v9, v2, Lorg/telegram/ui/ArticleViewer$PageLayout;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v13, 0x0

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$mbindBlockToHolder(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;Lorg/telegram/tgnet/TLRPC$PageBlock;IIZ)V

    .line 2191
    new-instance v2, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    .line 2192
    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setApplyTopPadding(Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 2193
    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setApplyBottomPadding(Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 2194
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, v0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2195
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2197
    new-instance v4, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    invoke-direct {v4}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/ArticleViewer;->textSelectionHelperBottomSheet:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    .line 2198
    invoke-virtual {v4, v3}, Lorg/telegram/ui/Cells/TextSelectionHelper;->setParentView(Landroid/view/ViewGroup;)V

    .line 2199
    iget-object v4, v0, Lorg/telegram/ui/ArticleViewer;->textSelectionHelperBottomSheet:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    new-instance v5, Lorg/telegram/ui/ArticleViewer$7;

    invoke-direct {v5, v0}, Lorg/telegram/ui/ArticleViewer$7;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/TextSelectionHelper;->setCallback(Lorg/telegram/ui/Cells/TextSelectionHelper$Callback;)V

    .line 2207
    new-instance v4, Lorg/telegram/ui/ArticleViewer$8;

    iget-object v5, v0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v4, v0, v5}, Lorg/telegram/ui/ArticleViewer$8;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    const/high16 v5, 0x41800000    # 16.0f

    .line 2214
    invoke-virtual {v4, v7, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2215
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2216
    sget v5, Lorg/telegram/messenger/R$string;->InstantViewReference:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2217
    iget-object v5, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v5, v5, v1

    iget-object v5, v5, Lorg/telegram/ui/ArticleViewer$PageLayout;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v5}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetisRtl(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x5

    goto :goto_1

    :cond_2
    const/4 v5, 0x3

    :goto_1
    or-int/lit8 v5, v5, 0x10

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 2218
    invoke-direct {v0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v5, 0x41900000    # 18.0f

    .line 2219
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v4, v6, v1, v5, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2220
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x42400000    # 48.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v5, v7

    invoke-direct {v1, v8, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2222
    iget-object v1, v11, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v4, "bottomSheet"

    invoke-virtual {v1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2223
    iget-object v1, v11, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x2

    const/4 v11, 0x0

    const/high16 v12, 0x40e00000    # 7.0f

    invoke-static/range {v9 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2225
    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->textSelectionHelperBottomSheet:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    iget-object v4, v0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getOverlayView(Landroid/content/Context;)Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    move-result-object v1

    .line 2226
    new-instance v4, Lorg/telegram/ui/ArticleViewer$9;

    iget-object v5, v0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v4, v0, v5, v3}, Lorg/telegram/ui/ArticleViewer$9;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Landroid/widget/LinearLayout;)V

    .line 2259
    new-instance v5, Lorg/telegram/ui/ArticleViewer$10;

    invoke-direct {v5, v0}, Lorg/telegram/ui/ArticleViewer$10;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setDelegate(Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegate;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    const/4 v5, -0x2

    .line 2270
    invoke-virtual {v4, v3, v8, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 2271
    invoke-virtual {v4, v1, v8, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 2272
    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setCustomView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 2273
    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2274
    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->clear()V

    .line 2276
    :cond_3
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/ArticleViewer;->linkSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ArticleViewer;->showDialog(Landroid/app/Dialog;)V

    goto/16 :goto_4

    .line 2278
    :cond_4
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ltz v5, :cond_d

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v9, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v9, v9, v1

    iget-object v9, v9, Lorg/telegram/ui/ArticleViewer$PageLayout;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v9}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetblocks(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lt v5, v9, :cond_5

    goto/16 :goto_5

    .line 2281
    :cond_5
    iget-object v5, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v5, v5, v1

    iget-object v5, v5, Lorg/telegram/ui/ArticleViewer$PageLayout;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v5}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetblocks(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 2282
    invoke-direct {v0, v12}, Lorg/telegram/ui/ArticleViewer;->getLastNonListPageBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v5

    .line 2284
    instance-of v9, v5, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;

    if-eqz v9, :cond_6

    .line 2285
    check-cast v5, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;

    invoke-direct {v0, v5}, Lorg/telegram/ui/ArticleViewer;->openAllParentBlocks(Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2286
    iget-object v5, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v5, v5, v1

    iget-object v5, v5, Lorg/telegram/ui/ArticleViewer$PageLayout;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v5}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$mupdateRows(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V

    .line 2287
    iget-object v5, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v5, v5, v1

    iget-object v5, v5, Lorg/telegram/ui/ArticleViewer$PageLayout;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-virtual {v5}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->notifyDataSetChanged()V

    .line 2290
    :cond_6
    iget-object v5, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v5, v5, v1

    iget-object v5, v5, Lorg/telegram/ui/ArticleViewer$PageLayout;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v5}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetlocalBlocks(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-eq v5, v8, :cond_7

    .line 2292
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 2295
    :cond_7
    iget-object v5, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v5, v5, v1

    iget-object v5, v5, Lorg/telegram/ui/ArticleViewer$PageLayout;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v5}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetanchorsOffset(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_a

    .line 2297
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v8, :cond_9

    .line 2298
    iget-object v5, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v5, v5, v1

    iget-object v5, v5, Lorg/telegram/ui/ArticleViewer$PageLayout;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v5, v12}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$mgetTypeForBlock(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$PageBlock;)I

    move-result v10

    .line 2299
    iget-object v5, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v5, v5, v1

    iget-object v5, v5, Lorg/telegram/ui/ArticleViewer$PageLayout;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-virtual {v5, v6, v10}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v11

    .line 2300
    iget-object v5, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v5, v5, v1

    iget-object v9, v5, Lorg/telegram/ui/ArticleViewer$PageLayout;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v13, 0x0

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$mbindBlockToHolder(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;Lorg/telegram/tgnet/TLRPC$PageBlock;IIZ)V

    .line 2301
    iget-object v5, v11, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v6, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v6, v6, v1

    iget-object v6, v6, Lorg/telegram/ui/ArticleViewer$PageLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v5, v6, v9}, Landroid/view/View;->measure(II)V

    .line 2302
    iget-object v5, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v5, v5, v1

    iget-object v5, v5, Lorg/telegram/ui/ArticleViewer$PageLayout;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v5}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetanchorsOffset(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 2303
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v8, :cond_8

    goto :goto_2

    :cond_8
    move-object v2, v3

    goto :goto_2

    :cond_9
    move-object v2, v5

    :cond_a
    :goto_2
    const/high16 v3, 0x42600000    # 56.0f

    if-eqz p2, :cond_c

    .line 2311
    new-instance v5, Lorg/telegram/ui/Components/SmoothScroller;

    iget-object v6, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/telegram/ui/Components/SmoothScroller;-><init>(Landroid/content/Context;)V

    .line 2312
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v6, v0, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Lorg/telegram/ui/ArticleViewer$Sheet;->halfSize()Z

    move-result v6

    if-eqz v6, :cond_b

    move v6, v7

    goto :goto_3

    :cond_b
    move v6, v1

    :goto_3
    add-int/2addr v4, v6

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 2313
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v3, v2

    invoke-virtual {v5, v3}, Lorg/telegram/ui/Components/SmoothScroller;->setOffset(I)V

    .line 2314
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v2, v1

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer$PageLayout;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    goto :goto_4

    .line 2316
    :cond_c
    iget-object v5, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v5, v1

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer$PageLayout;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v3, v2

    invoke-virtual {v1, v4, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :goto_4
    return v7

    :cond_d
    :goto_5
    return v1
.end method

.method private scrollToSearchIndex(I)V
    .locals 12

    if-ltz p1, :cond_b

    .line 4911
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->searchResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto/16 :goto_4

    .line 4915
    :cond_0
    iput p1, p0, Lorg/telegram/ui/ArticleViewer;->currentSearchIndex:I

    .line 4916
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->updateSearchButtons()V

    .line 4917
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->searchResults:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ArticleViewer$SearchResult;

    .line 4918
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$SearchResult;->-$$Nest$fgetblock(Lorg/telegram/ui/ArticleViewer$SearchResult;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->getLastNonListPageBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v0

    .line 4921
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer$PageLayout;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetblocks(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    .line 4922
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v4, v4, v2

    iget-object v4, v4, Lorg/telegram/ui/ArticleViewer$PageLayout;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetblocks(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 4923
    instance-of v5, v4, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;

    if-eqz v5, :cond_2

    .line 4924
    check-cast v4, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;

    .line 4925
    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;->-$$Nest$fgetblock(Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v5

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$SearchResult;->-$$Nest$fgetblock(Lorg/telegram/ui/ArticleViewer$SearchResult;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v6

    if-eq v5, v6, :cond_1

    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;->-$$Nest$fgetblock(Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v5

    if-ne v5, v0, :cond_2

    .line 4926
    :cond_1
    invoke-direct {p0, v4}, Lorg/telegram/ui/ArticleViewer;->openAllParentBlocks(Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4927
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v1, v2

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer$PageLayout;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$mupdateRows(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V

    .line 4928
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v1, v2

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer$PageLayout;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->notifyDataSetChanged()V

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4934
    :cond_3
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v1, v2

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer$PageLayout;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetlocalBlocks(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :goto_2
    const/4 v4, -0x1

    if-ge v3, v1, :cond_6

    .line 4935
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v5, v5, v2

    iget-object v5, v5, Lorg/telegram/ui/ArticleViewer$PageLayout;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v5}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetlocalBlocks(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 4936
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$SearchResult;->-$$Nest$fgetblock(Lorg/telegram/ui/ArticleViewer$SearchResult;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v6

    if-eq v5, v6, :cond_7

    if-ne v5, v0, :cond_4

    goto :goto_3

    .line 4939
    :cond_4
    instance-of v6, v5, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;

    if-eqz v6, :cond_5

    .line 4940
    check-cast v5, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;

    .line 4941
    invoke-static {v5}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;->-$$Nest$fgetblock(Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v6

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$SearchResult;->-$$Nest$fgetblock(Lorg/telegram/ui/ArticleViewer$SearchResult;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v7

    if-eq v6, v7, :cond_7

    invoke-static {v5}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;->-$$Nest$fgetblock(Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v5

    if-ne v5, v0, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    move v3, v4

    :cond_7
    :goto_3
    if-ne v3, v4, :cond_8

    return-void

    .line 4952
    :cond_8
    instance-of v1, v0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;

    if-eqz v1, :cond_9

    .line 4953
    check-cast v0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->openAllParentBlocks(Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4954
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v0, v0, v2

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$PageLayout;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$mupdateRows(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V

    .line 4955
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v0, v0, v2

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$PageLayout;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->notifyDataSetChanged()V

    .line 4959
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->searchText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$SearchResult;->-$$Nest$fgetblock(Lorg/telegram/ui/ArticleViewer$SearchResult;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$SearchResult;->-$$Nest$fgettext(Lorg/telegram/ui/ArticleViewer$SearchResult;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$SearchResult;->-$$Nest$fgetindex(Lorg/telegram/ui/ArticleViewer$SearchResult;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4960
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v1, v2

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer$PageLayout;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetsearchTextOffset(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_a

    .line 4962
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v1, v2

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer$PageLayout;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$SearchResult;->-$$Nest$fgetblock(Lorg/telegram/ui/ArticleViewer$SearchResult;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v4

    invoke-static {v1, v4}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$mgetTypeForBlock(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$PageBlock;)I

    move-result v6

    .line 4963
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v1, v2

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer$PageLayout;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v6}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v7

    .line 4964
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v1, v2

    iget-object v5, v1, Lorg/telegram/ui/ArticleViewer$PageLayout;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$SearchResult;->-$$Nest$fgetblock(Lorg/telegram/ui/ArticleViewer$SearchResult;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x0

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$mbindBlockToHolder(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;Lorg/telegram/tgnet/TLRPC$PageBlock;IIZ)V

    .line 4965
    iget-object p1, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v1, v2

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer$PageLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p1, v1, v4}, Landroid/view/View;->measure(II)V

    .line 4966
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object p1, p1, v2

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer$PageLayout;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetsearchTextOffset(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_a

    .line 4968
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 4971
    :cond_a
    new-instance p1, Lorg/telegram/ui/Components/SmoothScroller;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/telegram/ui/Components/SmoothScroller;-><init>(Landroid/content/Context;)V

    .line 4972
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 4973
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->currentHeaderHeight:I

    const/high16 v3, 0x42600000    # 56.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    neg-int v0, v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/SmoothScroller;->setOffset(I)V

    const v0, 0x3f99999a    # 1.2f

    .line 4974
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/SmoothScroller;->setDurationScale(F)V

    .line 4975
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v0, v0, v2

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$PageLayout;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    .line 4976
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object p1, p1, v2

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer$PageLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    return-void

    .line 4912
    :cond_b
    :goto_4
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->updateSearchButtons()V

    return-void
.end method

.method private setCurrentHeaderHeight(I)V
    .locals 2

    .line 5017
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/web/WebActionBar;->isSearching()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/web/WebActionBar;->isAddressing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/high16 v0, 0x42600000    # 56.0f

    .line 5020
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ArticleViewer;->currentHeaderHeight:I

    .line 5021
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/web/WebActionBar;->setHeight(I)V

    .line 5022
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->currentHeaderHeight:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->setTopOffset(I)V

    const/4 p1, 0x0

    .line 5023
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    array-length v1, v0

    if-ge p1, v1, :cond_1

    .line 5024
    aget-object v0, v0, p1

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$PageLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->currentHeaderHeight:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setTopGlowOffset(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private setMapColors(Landroid/util/SparseArray;)V
    .locals 4

    const/4 v0, 0x0

    .line 3640
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 3641
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 3642
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/text/TextPaint;

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    and-int/lit8 v3, v1, 0x8

    if-nez v3, :cond_2

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_1

    goto :goto_1

    .line 3647
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 3645
    :cond_2
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getLinkTextColor()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private showCopyPopup(Ljava/lang/String;)V
    .locals 6

    .line 1349
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 1352
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->linkSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    if-eqz v0, :cond_1

    .line 1353
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    const/4 v0, 0x0

    .line 1354
    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->linkSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    .line 1357
    :cond_1
    new-instance v0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    .line 1360
    :try_start_0
    const-string v1, "\\+"

    const-string v2, "%2b"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1362
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move-object v1, p1

    .line 1364
    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    const/4 v1, 0x1

    .line 1365
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setTitleMultipleLines(Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 1366
    sget v2, Lorg/telegram/messenger/R$string;->Open:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->Copy:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    aput-object v3, v4, v1

    new-instance v1, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda49;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda49;-><init>(Lorg/telegram/ui/ArticleViewer;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 1407
    new-instance p1, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda50;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda50;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setOnPreDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 1408
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object p1

    .line 1409
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ArticleViewer;->showDialog(Landroid/app/Dialog;)V

    return-void
.end method

.method private showPopup(Landroid/view/View;III)V
    .locals 7

    .line 1413
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1414
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    return-void

    .line 1418
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 1419
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->popupRect:Landroid/graphics/Rect;

    .line 1420
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1421
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 1422
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->menu_copy:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1423
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setAnimationEnabled(Z)V

    .line 1424
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    new-instance v3, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda70;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda70;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1435
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    new-instance v3, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda71;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda71;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setDispatchKeyEventListener(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$OnDispatchKeyEventListener;)V

    .line 1440
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setShownFromBottom(Z)V

    .line 1442
    new-instance v0, Landroid/widget/TextView;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->deleteView:Landroid/widget/TextView;

    .line 1443
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ArticleViewer;->getThemedColor(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1444
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->deleteView:Landroid/widget/TextView;

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 1445
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->deleteView:Landroid/widget/TextView;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v0, v5, v2, v3, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1446
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->deleteView:Landroid/widget/TextView;

    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1447
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->deleteView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1448
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->deleteView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->Copy:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1449
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->deleteView:Landroid/widget/TextView;

    new-instance v3, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda72;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda72;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1460
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->deleteView:Landroid/widget/TextView;

    const/high16 v5, 0x42400000    # 48.0f

    const/4 v6, -0x2

    invoke-static {v6, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1462
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-direct {v0, v3, v6, v6}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    .line 1463
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setAnimationEnabled(Z)V

    .line 1464
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    sget v3, Lorg/telegram/messenger/R$style;->PopupContextAnimation:I

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 1465
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 1466
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 1467
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1468
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 1469
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 1470
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    new-instance v2, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda73;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda73;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 1479
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->deleteView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ArticleViewer;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1480
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v0, :cond_2

    .line 1481
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ArticleViewer;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setBackgroundColor(I)V

    .line 1484
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/high16 v2, 0x447a0000    # 1000.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, -0x80000000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v3, v2}, Landroid/view/View;->measure(II)V

    .line 1485
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 1486
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1487
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->startAnimation()V

    return-void
.end method

.method private showProgressView(ZZ)V
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p1, :cond_2

    .line 5326
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->lineProgressTickRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    if-eqz p2, :cond_1

    .line 5328
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    iget-object p1, p1, Lorg/telegram/ui/web/WebActionBar;->lineProgressView:Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {p1, v2, v1}, Lorg/telegram/ui/Components/LineProgressView;->setProgress(FZ)V

    .line 5329
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    iget-object p1, p1, Lorg/telegram/ui/web/WebActionBar;->lineProgressView:Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    iget-object p1, p1, Lorg/telegram/ui/web/WebActionBar;->lineProgressView:Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->show()V

    .line 5330
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    iget-object p1, p1, Lorg/telegram/ui/web/WebActionBar;->lineProgressView:Lorg/telegram/ui/Components/LineProgressView;

    const p2, 0x3e99999a    # 0.3f

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/LineProgressView;->setProgress(FZ)V

    .line 5331
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->lineProgressTickRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x64

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    .line 5333
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    iget-object p1, p1, Lorg/telegram/ui/web/WebActionBar;->lineProgressView:Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {p1, v3, v0}, Lorg/telegram/ui/Components/LineProgressView;->setProgress(FZ)V

    return-void

    .line 5336
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->progressViewAnimation:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_3

    .line 5337
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 5339
    :cond_3
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->progressViewAnimation:Landroid/animation/AnimatorSet;

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-eqz p2, :cond_4

    .line 5341
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ContextProgressView;->setVisibility(I)V

    .line 5343
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->progressViewAnimation:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v7, v0, [F

    aput v3, v7, v1

    .line 5350
    invoke-static {v2, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v8, v0, [F

    aput v3, v8, v1

    .line 5351
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v0, [F

    aput v3, v9, v1

    .line 5352
    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v2, v5, v1

    aput-object v6, v5, v0

    aput-object v3, v5, v4

    .line 5343
    invoke-virtual {p1, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0

    .line 5357
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v7, v0, [F

    const v8, 0x3dcccccd    # 0.1f

    aput v8, v7, v1

    .line 5358
    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v9, v0, [F

    aput v8, v9, v1

    .line 5359
    invoke-static {v6, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v0, [F

    aput v2, v9, v1

    .line 5360
    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v3, v5, v1

    aput-object v6, v5, v0

    aput-object v2, v5, v4

    .line 5357
    invoke-virtual {p1, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 5369
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->progressViewAnimation:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/ArticleViewer$24;

    invoke-direct {v0, p0, p2}, Lorg/telegram/ui/ArticleViewer$24;-><init>(Lorg/telegram/ui/ArticleViewer;Z)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5389
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->progressViewAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 5390
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->progressViewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private showRestrictedWebsiteToast()V
    .locals 4

    const/4 v0, 0x0

    .line 4655
    iput-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->showRestrictedToastOnResume:Z

    .line 4656
    iget-boolean v1, p0, Lorg/telegram/ui/ArticleViewer;->attachedToWindow:Z

    if-eqz v1, :cond_4

    sget-object v1, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 4658
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->isWeb()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4659
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 4660
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v0, v1, v0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$PageLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    goto :goto_0

    .line 4662
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v1, v0

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer$PageLayout;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetcurrentPage(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_1

    .line 4663
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v0, v1, v0

    .line 4665
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer;->getResourcesProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$raw;->chats_infotip:I

    sget v2, Lorg/telegram/messenger/R$string;->BrowserExternalRestricted:I

    .line 4666
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda54;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda54;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    const/4 v1, 0x1

    .line 4667
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    :cond_4
    :goto_1
    return-void
.end method

.method private updateFontEntry(ILandroid/text/TextPaint;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;)V
    .locals 2

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_0

    .line 3571
    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 3573
    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void

    :cond_1
    and-int/lit8 p4, p1, 0x2

    if-eqz p4, :cond_2

    .line 3575
    invoke-virtual {p2, p6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void

    :cond_2
    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_3

    return-void

    .line 3579
    :cond_3
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method private updateInterfaceForCurrentPage(Ljava/lang/Object;ZI)V
    .locals 12

    if-eqz p1, :cond_1e

    .line 1686
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    if-nez v0, :cond_1

    :cond_0
    instance-of v0, p1, Lorg/telegram/ui/ArticleViewer$CachedWeb;

    if-nez v0, :cond_1

    goto/16 :goto_11

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p2, :cond_c

    if-eqz p3, :cond_c

    .line 1693
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v6, v5, v3

    .line 1694
    aget-object v7, v5, v4

    aput-object v7, v5, v3

    .line 1695
    aput-object v6, v5, v4

    .line 1696
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    invoke-virtual {v5}, Lorg/telegram/ui/web/WebActionBar;->swap()V

    .line 1697
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->page0Background:Lorg/telegram/ui/Components/AnimatedColor;

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getBackgroundColor()I

    move-result v6

    invoke-virtual {v5, v6, v3}, Lorg/telegram/ui/Components/AnimatedColor;->set(IZ)I

    .line 1698
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->page1Background:Lorg/telegram/ui/Components/AnimatedColor;

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getBackgroundColor()I

    move-result v6

    invoke-virtual {v5, v6, v3}, Lorg/telegram/ui/Components/AnimatedColor;->set(IZ)I

    .line 1699
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    if-eqz v5, :cond_2

    .line 1700
    invoke-virtual {v5}, Lorg/telegram/ui/ArticleViewer$Sheet;->updateLastVisible()V

    .line 1703
    :cond_2
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v6, v6, v4

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v5

    .line 1704
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v7, v7, v3

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v6

    if-ne p3, v3, :cond_3

    if-ge v5, v6, :cond_4

    .line 1707
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v7, v7, v4

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1708
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v7, v7, v4

    invoke-virtual {v5, v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0

    :cond_3
    if-ge v6, v5, :cond_4

    .line 1712
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v7, v7, v4

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1713
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v7, v7, v4

    invoke-virtual {v6, v7, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 1717
    :cond_4
    :goto_0
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/ArticleViewer;->pageSwitchAnimation:Landroid/animation/AnimatorSet;

    .line 1718
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v5, v5, v4

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    if-ne p3, v3, :cond_5

    move v5, v4

    goto :goto_1

    :cond_5
    move v5, v3

    .line 1720
    :goto_1
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v6, v6, v5

    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    if-nez v7, :cond_6

    move v7, v4

    goto :goto_2

    :cond_6
    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getColor()I

    move-result v7

    :goto_2
    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1721
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v6, v6, v5

    invoke-virtual {v6, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 v6, 0x0

    if-ne p3, v3, :cond_7

    .line 1723
    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v7, v7, v4

    sget-object v8, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/ArticleViewer$PageLayout;->setTranslationX(F)V

    .line 1724
    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer;->pageSwitchAnimation:Landroid/animation/AnimatorSet;

    iget-object v8, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v8, v8, v4

    sget-object v9, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    sget-object v10, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    int-to-float v10, v10

    new-array v11, v1, [F

    aput v10, v11, v4

    aput v6, v11, v3

    .line 1725
    invoke-static {v8, v9, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    new-array v8, v3, [Landroid/animation/Animator;

    aput-object v6, v8, v4

    .line 1724
    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_3

    :cond_7
    if-ne p3, v2, :cond_8

    .line 1729
    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v7, v7, v4

    invoke-virtual {v7, v6}, Lorg/telegram/ui/ArticleViewer$PageLayout;->setTranslationX(F)V

    .line 1730
    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer;->pageSwitchAnimation:Landroid/animation/AnimatorSet;

    iget-object v8, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v8, v8, v3

    sget-object v9, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    sget-object v10, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    int-to-float v10, v10

    new-array v11, v1, [F

    aput v6, v11, v4

    aput v10, v11, v3

    .line 1731
    invoke-static {v8, v9, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    new-array v8, v3, [Landroid/animation/Animator;

    aput-object v6, v8, v4

    .line 1730
    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1735
    :cond_8
    :goto_3
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->pageSwitchAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v7, 0x140

    invoke-virtual {v6, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1736
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->pageSwitchAnimation:Landroid/animation/AnimatorSet;

    sget-object v7, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1737
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->pageSwitchAnimation:Landroid/animation/AnimatorSet;

    new-instance v7, Lorg/telegram/ui/ArticleViewer$2;

    invoke-direct {v7, p0, v5}, Lorg/telegram/ui/ArticleViewer$2;-><init>(Lorg/telegram/ui/ArticleViewer;I)V

    invoke-virtual {v6, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1750
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    invoke-static {v5, v3}, Lorg/telegram/ui/ArticleViewer$WindowView;->-$$Nest$fputopeningPage(Lorg/telegram/ui/ArticleViewer$WindowView;Z)V

    .line 1751
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v6, v6, v4

    if-eqz v6, :cond_9

    sget-boolean v7, Lorg/telegram/messenger/SharedConfig;->adaptableColorInBrowser:Z

    if-eqz v7, :cond_9

    invoke-virtual {v6}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getBackgroundColor()I

    move-result v6

    goto :goto_4

    :cond_9
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_iv_background:I

    invoke-virtual {p0, v6}, Lorg/telegram/ui/ArticleViewer;->getThemedColor(I)I

    move-result v6

    :goto_4
    invoke-virtual {v5, v6}, Lorg/telegram/ui/web/WebActionBar;->setMenuColors(I)V

    .line 1752
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v6, v6, v4

    if-eqz v6, :cond_a

    sget-boolean v7, Lorg/telegram/messenger/SharedConfig;->adaptableColorInBrowser:Z

    if-eqz v7, :cond_a

    invoke-virtual {v6}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getActionBarColor()I

    move-result v6

    goto :goto_5

    :cond_a
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_iv_background:I

    invoke-virtual {p0, v6}, Lorg/telegram/ui/ArticleViewer;->getThemedColor(I)I

    move-result v6

    :goto_5
    invoke-virtual {v5, v6, v3}, Lorg/telegram/ui/web/WebActionBar;->setColors(IZ)V

    .line 1753
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v6, v6, v4

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Lorg/telegram/ui/ArticleViewer$PageLayout;->isTonsite()Z

    move-result v6

    if-eqz v6, :cond_b

    move v6, v3

    goto :goto_6

    :cond_b
    move v6, v4

    :goto_6
    invoke-virtual {v5, v6}, Lorg/telegram/ui/web/WebActionBar;->setIsTonsite(Z)V

    .line 1754
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->pageSwitchAnimation:Landroid/animation/AnimatorSet;

    invoke-static {v5}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda23;

    invoke-direct {v6, v5}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda23;-><init>(Landroid/animation/AnimatorSet;)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_c
    if-nez p2, :cond_d

    .line 1759
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    invoke-virtual {v5, v3}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->clear(Z)V

    .line 1761
    :cond_d
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v5, v5, p2

    iget-object v6, v5, Lorg/telegram/ui/ArticleViewer$PageLayout;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    if-eqz p2, :cond_e

    .line 1763
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 1764
    :cond_e
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->cleanup()V

    .line 1765
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v1, :cond_1b

    .line 1766
    check-cast p1, Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 1768
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v1, p2

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ArticleViewer$PageLayout;->setWeb(Lorg/telegram/ui/ArticleViewer$CachedWeb;)V

    .line 1769
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v0, v0, p2

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ArticleViewer$PageLayout;->setType(I)V

    .line 1770
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Page;->rtl:Z

    invoke-static {v6, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fputisRtl(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Z)V

    .line 1771
    invoke-static {v6, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fputcurrentPage(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$WebPage;)V

    .line 1774
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Page;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v4

    :goto_7
    if-ge v1, v0, :cond_14

    .line 1776
    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Page;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Lorg/telegram/tgnet/TLRPC$PageBlock;

    if-nez v1, :cond_11

    .line 1778
    iput-boolean v3, v8, Lorg/telegram/tgnet/TLRPC$PageBlock;->first:Z

    .line 1779
    instance-of v5, v8, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCover;

    if-eqz v5, :cond_12

    .line 1780
    move-object v5, v8

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCover;

    .line 1781
    invoke-direct {p0, v5, v4}, Lorg/telegram/ui/ArticleViewer;->getBlockCaption(Lorg/telegram/tgnet/TLRPC$PageBlock;I)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v7

    .line 1782
    invoke-direct {p0, v5, v3}, Lorg/telegram/ui/ArticleViewer;->getBlockCaption(Lorg/telegram/tgnet/TLRPC$PageBlock;I)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v5

    if-eqz v7, :cond_f

    .line 1783
    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_textEmpty;

    if-eqz v7, :cond_10

    :cond_f
    if-eqz v5, :cond_12

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_textEmpty;

    if-nez v5, :cond_12

    :cond_10
    if-le v0, v3, :cond_12

    .line 1784
    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Page;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 1785
    instance-of v7, v5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;

    if-eqz v7, :cond_12

    .line 1786
    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;

    invoke-static {v6, v5}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fputchannelBlock(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;)V

    goto :goto_8

    :cond_11
    if-ne v1, v3, :cond_12

    .line 1790
    invoke-static {v6}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetchannelBlock(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;

    move-result-object v5

    if-eqz v5, :cond_12

    goto :goto_a

    :cond_12
    :goto_8
    add-int/lit8 v5, v0, -0x1

    if-ne v1, v5, :cond_13

    move v11, v1

    goto :goto_9

    :cond_13
    move v11, v4

    :goto_9
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v7, v6

    .line 1793
    invoke-static/range {v6 .. v11}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$maddBlock(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$PageBlock;III)V

    :goto_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1796
    :cond_14
    invoke-virtual {v6}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->notifyDataSetChanged()V

    .line 1798
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v0, v3, :cond_18

    if-ne p3, v2, :cond_15

    goto :goto_d

    .line 1812
    :cond_15
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object p1, p1, p2

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer$PageLayout;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object p3, p0, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    if-eqz p3, :cond_16

    invoke-virtual {p3}, Lorg/telegram/ui/ArticleViewer$Sheet;->halfSize()Z

    move-result p3

    if-eqz p3, :cond_16

    goto :goto_b

    :cond_16
    move v3, v4

    :goto_b
    iget-object p3, p0, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    if-eqz p3, :cond_17

    const/high16 p3, 0x42000000    # 32.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    goto :goto_c

    :cond_17
    move p3, v4

    :goto_c
    invoke-virtual {p1, v3, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto/16 :goto_10

    .line 1799
    :cond_18
    :goto_d
    sget-object p3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v0, "articles"

    invoke-virtual {p3, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p3

    .line 1800
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "article"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->id:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1801
    invoke-interface {p3, p1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1803
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "r"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v6, v5, Landroid/graphics/Point;->x:I

    iget v5, v5, Landroid/graphics/Point;->y:I

    if-le v6, v5, :cond_19

    goto :goto_e

    :cond_19
    move v3, v4

    :goto_e
    if-ne v1, v3, :cond_1a

    .line 1804
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "o"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iget-object p3, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object p3, p3, p2

    iget-object p3, p3, Lorg/telegram/ui/ArticleViewer$PageLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    sub-int/2addr p1, p3

    goto :goto_f

    :cond_1a
    const/high16 p1, 0x41200000    # 10.0f

    .line 1806
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    :goto_f
    if-eq v0, v2, :cond_1c

    .line 1809
    iget-object p3, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object p3, p3, p2

    iget-object p3, p3, Lorg/telegram/ui/ArticleViewer$PageLayout;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p3, v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_10

    .line 1814
    :cond_1b
    instance-of p3, p1, Lorg/telegram/ui/ArticleViewer$CachedWeb;

    if-eqz p3, :cond_1c

    .line 1815
    iget-object p3, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object p3, p3, p2

    invoke-virtual {p3, v3}, Lorg/telegram/ui/ArticleViewer$PageLayout;->setType(I)V

    .line 1816
    iget-object p3, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object p3, p3, p2

    invoke-virtual {p3, v4}, Lorg/telegram/ui/ArticleViewer$PageLayout;->scrollToTop(Z)V

    .line 1817
    iget-object p3, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object p3, p3, p2

    check-cast p1, Lorg/telegram/ui/ArticleViewer$CachedWeb;

    invoke-virtual {p3, p1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->setWeb(Lorg/telegram/ui/ArticleViewer$CachedWeb;)V

    :cond_1c
    :goto_10
    if-nez p2, :cond_1d

    .line 1820
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->checkScrollAnimated()V

    .line 1823
    :cond_1d
    invoke-virtual {p0, v4}, Lorg/telegram/ui/ArticleViewer;->updateTitle(Z)V

    .line 1824
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer;->updatePages()V

    :cond_1e
    :goto_11
    return-void
.end method

.method private updatePaintColors()V
    .locals 2

    .line 3584
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->backgroundPaint:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_iv_background:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ArticleViewer;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3589
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->listTextPointerPaint:Landroid/text/TextPaint;

    if-eqz v0, :cond_0

    .line 3590
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3592
    :cond_0
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->listTextNumPaint:Landroid/text/TextPaint;

    if-eqz v0, :cond_1

    .line 3593
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3595
    :cond_1
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->embedPostAuthorPaint:Landroid/text/TextPaint;

    if-eqz v0, :cond_2

    .line 3596
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3598
    :cond_2
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->channelNamePaint:Landroid/text/TextPaint;

    if-eqz v0, :cond_3

    .line 3599
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3601
    :cond_3
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->channelNamePhotoPaint:Landroid/text/TextPaint;

    if-eqz v0, :cond_4

    const/4 v1, -0x1

    .line 3602
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3604
    :cond_4
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->relatedArticleHeaderPaint:Landroid/text/TextPaint;

    if-eqz v0, :cond_5

    .line 3605
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3607
    :cond_5
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->relatedArticleTextPaint:Landroid/text/TextPaint;

    if-eqz v0, :cond_6

    .line 3608
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getGrayTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3611
    :cond_6
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->embedPostDatePaint:Landroid/text/TextPaint;

    if-eqz v0, :cond_7

    .line 3612
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getGrayTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_7
    const/4 v0, 0x1

    .line 3615
    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->createPaint(Z)V

    .line 3617
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->titleTextPaints:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->setMapColors(Landroid/util/SparseArray;)V

    .line 3618
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->kickerTextPaints:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->setMapColors(Landroid/util/SparseArray;)V

    .line 3619
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->subtitleTextPaints:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->setMapColors(Landroid/util/SparseArray;)V

    .line 3620
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->headerTextPaints:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->setMapColors(Landroid/util/SparseArray;)V

    .line 3621
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->subheaderTextPaints:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->setMapColors(Landroid/util/SparseArray;)V

    .line 3622
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->quoteTextPaints:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->setMapColors(Landroid/util/SparseArray;)V

    .line 3623
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->preformattedTextPaints:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->setMapColors(Landroid/util/SparseArray;)V

    .line 3624
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->paragraphTextPaints:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->setMapColors(Landroid/util/SparseArray;)V

    .line 3625
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->listTextPaints:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->setMapColors(Landroid/util/SparseArray;)V

    .line 3626
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->embedPostTextPaints:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->setMapColors(Landroid/util/SparseArray;)V

    .line 3627
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->mediaCaptionTextPaints:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->setMapColors(Landroid/util/SparseArray;)V

    .line 3628
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->mediaCreditTextPaints:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->setMapColors(Landroid/util/SparseArray;)V

    .line 3629
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->photoCaptionTextPaints:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->setMapColors(Landroid/util/SparseArray;)V

    .line 3630
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->photoCreditTextPaints:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->setMapColors(Landroid/util/SparseArray;)V

    .line 3631
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->authorTextPaints:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->setMapColors(Landroid/util/SparseArray;)V

    .line 3632
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->footerTextPaints:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->setMapColors(Landroid/util/SparseArray;)V

    .line 3633
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->embedPostCaptionTextPaints:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->setMapColors(Landroid/util/SparseArray;)V

    .line 3634
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->relatedArticleTextPaints:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->setMapColors(Landroid/util/SparseArray;)V

    .line 3635
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->detailsTextPaints:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->setMapColors(Landroid/util/SparseArray;)V

    .line 3636
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->tableTextPaints:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->setMapColors(Landroid/util/SparseArray;)V

    return-void
.end method

.method private updatePaintFonts()V
    .locals 10

    .line 3516
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "articles"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "font_type"

    iget v3, p0, Lorg/telegram/ui/ArticleViewer;->selectedFont:I

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3517
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->selectedFont:I

    if-nez v0, :cond_0

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_0
    move-object v6, v1

    goto :goto_1

    :cond_0
    sget-object v1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    .line 3518
    :goto_1
    const-string/jumbo v1, "serif"

    if-nez v0, :cond_1

    const-string v0, "fonts/ritalic.ttf"

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    :goto_2
    move-object v9, v0

    goto :goto_3

    :cond_1
    const/4 v0, 0x2

    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_2

    .line 3519
    :goto_3
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->selectedFont:I

    if-nez v0, :cond_2

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v0

    :goto_4
    move-object v8, v0

    goto :goto_5

    :cond_2
    const/4 v0, 0x1

    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_4

    .line 3520
    :goto_5
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->selectedFont:I

    if-nez v0, :cond_3

    const-string v0, "fonts/rmediumitalic.ttf"

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    :goto_6
    move-object v7, v0

    goto :goto_7

    :cond_3
    const/4 v0, 0x3

    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_6

    :goto_7
    move v0, v2

    .line 3522
    :goto_8
    sget-object v1, Lorg/telegram/ui/ArticleViewer;->quoteTextPaints:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 3523
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/text/TextPaint;

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/ArticleViewer;->updateFontEntry(ILandroid/text/TextPaint;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_4
    move v0, v2

    .line 3525
    :goto_9
    sget-object v1, Lorg/telegram/ui/ArticleViewer;->preformattedTextPaints:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 3526
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/text/TextPaint;

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/ArticleViewer;->updateFontEntry(ILandroid/text/TextPaint;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_5
    move v0, v2

    .line 3528
    :goto_a
    sget-object v1, Lorg/telegram/ui/ArticleViewer;->paragraphTextPaints:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 3529
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/text/TextPaint;

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/ArticleViewer;->updateFontEntry(ILandroid/text/TextPaint;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_6
    move v0, v2

    .line 3531
    :goto_b
    sget-object v1, Lorg/telegram/ui/ArticleViewer;->listTextPaints:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_7

    .line 3532
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/text/TextPaint;

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/ArticleViewer;->updateFontEntry(ILandroid/text/TextPaint;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_7
    move v0, v2

    .line 3534
    :goto_c
    sget-object v1, Lorg/telegram/ui/ArticleViewer;->embedPostTextPaints:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_8

    .line 3535
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/text/TextPaint;

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/ArticleViewer;->updateFontEntry(ILandroid/text/TextPaint;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_8
    move v0, v2

    .line 3537
    :goto_d
    sget-object v1, Lorg/telegram/ui/ArticleViewer;->mediaCaptionTextPaints:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_9

    .line 3538
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/text/TextPaint;

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/ArticleViewer;->updateFontEntry(ILandroid/text/TextPaint;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_9
    move v0, v2

    .line 3540
    :goto_e
    sget-object v1, Lorg/telegram/ui/ArticleViewer;->mediaCreditTextPaints:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_a

    .line 3541
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/text/TextPaint;

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/ArticleViewer;->updateFontEntry(ILandroid/text/TextPaint;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_a
    move v0, v2

    .line 3543
    :goto_f
    sget-object v1, Lorg/telegram/ui/ArticleViewer;->photoCaptionTextPaints:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_b

    .line 3544
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/text/TextPaint;

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/ArticleViewer;->updateFontEntry(ILandroid/text/TextPaint;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_b
    move v0, v2

    .line 3546
    :goto_10
    sget-object v1, Lorg/telegram/ui/ArticleViewer;->photoCreditTextPaints:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_c

    .line 3547
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/text/TextPaint;

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/ArticleViewer;->updateFontEntry(ILandroid/text/TextPaint;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_c
    move v0, v2

    .line 3549
    :goto_11
    sget-object v1, Lorg/telegram/ui/ArticleViewer;->authorTextPaints:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_d

    .line 3550
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/text/TextPaint;

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/ArticleViewer;->updateFontEntry(ILandroid/text/TextPaint;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_d
    move v0, v2

    .line 3552
    :goto_12
    sget-object v1, Lorg/telegram/ui/ArticleViewer;->footerTextPaints:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_e

    .line 3553
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/text/TextPaint;

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/ArticleViewer;->updateFontEntry(ILandroid/text/TextPaint;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_e
    move v0, v2

    .line 3555
    :goto_13
    sget-object v1, Lorg/telegram/ui/ArticleViewer;->embedPostCaptionTextPaints:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_f

    .line 3556
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/text/TextPaint;

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/ArticleViewer;->updateFontEntry(ILandroid/text/TextPaint;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_f
    move v0, v2

    .line 3558
    :goto_14
    sget-object v1, Lorg/telegram/ui/ArticleViewer;->relatedArticleTextPaints:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_10

    .line 3559
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/text/TextPaint;

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/ArticleViewer;->updateFontEntry(ILandroid/text/TextPaint;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_10
    move v0, v2

    .line 3561
    :goto_15
    sget-object v1, Lorg/telegram/ui/ArticleViewer;->detailsTextPaints:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_11

    .line 3562
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/text/TextPaint;

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/ArticleViewer;->updateFontEntry(ILandroid/text/TextPaint;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 3564
    :cond_11
    :goto_16
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->tableTextPaints:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v2, v1, :cond_12

    .line 3565
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/text/TextPaint;

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/ArticleViewer;->updateFontEntry(ILandroid/text/TextPaint;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_12
    return-void
.end method

.method private updatePaintSize()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 3510
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v1, v0

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer$PageLayout;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->notifyDataSetChanged()V

    .line 3511
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v1, v0

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer$PageLayout;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->resetCachedHeights()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateSearchButtons()V
    .locals 8

    .line 4765
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->searchResults:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$PageLayout;->isWeb()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4769
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$PageLayout;->isWeb()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4770
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->getSearchIndex()I

    move-result v0

    .line 4771
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->getSearchCount()I

    move-result v2

    goto :goto_1

    .line 4773
    :cond_3
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->currentSearchIndex:I

    .line 4774
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->searchResults:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4776
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->searchUpButton:Landroid/widget/ImageView;

    const/4 v4, 0x1

    if-lez v2, :cond_4

    if-eqz v0, :cond_4

    move v5, v4

    goto :goto_2

    :cond_4
    move v5, v1

    :goto_2
    invoke-virtual {v3, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 4777
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->searchDownButton:Landroid/widget/ImageView;

    if-lez v2, :cond_5

    add-int/lit8 v5, v2, -0x1

    if-eq v0, v5, :cond_5

    move v5, v4

    goto :goto_3

    :cond_5
    move v5, v1

    :goto_3
    invoke-virtual {v3, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 4778
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->searchUpButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v5

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v5, :cond_6

    move v5, v7

    goto :goto_4

    :cond_6
    move v5, v6

    :goto_4
    invoke-virtual {v3, v5}, Landroid/view/View;->setAlpha(F)V

    .line 4779
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->searchDownButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_7

    move v6, v7

    :cond_7
    invoke-virtual {v3, v6}, Landroid/view/View;->setAlpha(F)V

    .line 4780
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->searchCountText:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedTextView;->cancelAnimation()V

    if-gez v2, :cond_8

    .line 4782
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->searchCountText:Lorg/telegram/ui/Components/AnimatedTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_8
    if-nez v2, :cond_9

    .line 4784
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->searchCountText:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v1, Lorg/telegram/messenger/R$string;->NoResult:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_9
    if-ne v2, v4, :cond_a

    .line 4786
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->searchCountText:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v1, Lorg/telegram/messenger/R$string;->OneResult:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 4788
    :cond_a
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->searchCountText:Lorg/telegram/ui/Components/AnimatedTextView;

    const-string v5, "CountOfResults"

    invoke-static {v5, v2}, Lorg/telegram/messenger/LocaleController;->getPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    add-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v1

    aput-object v2, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private wrapInTableBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLRPC$PageBlock;
    .locals 2

    .line 1663
    instance-of v0, p1, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1664
    check-cast p1, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    .line 1666
    new-instance v0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    invoke-direct {v0, v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;-><init>(Lorg/telegram/ui/ArticleViewer-IA;)V

    .line 1667
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fgetparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fputparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;)V

    .line 1668
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fgetblockItem(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ArticleViewer;->wrapInTableBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->-$$Nest$fputblockItem(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    return-object v0

    .line 1670
    :cond_0
    instance-of v0, p1, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    if-eqz v0, :cond_1

    .line 1671
    check-cast p1, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    .line 1673
    new-instance v0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-direct {v0, v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;-><init>(Lorg/telegram/ui/ArticleViewer-IA;)V

    .line 1674
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fgetparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fputparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;)V

    .line 1675
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fgetblockItem(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ArticleViewer;->wrapInTableBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->-$$Nest$fputblockItem(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    return-object v0

    :cond_1
    return-object p2
.end method


# virtual methods
.method protected cancelCheckLongPress()V
    .locals 3

    const/4 v0, 0x0

    .line 2356
    iput-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->checkingForLongPress:Z

    .line 2357
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pendingCheckForLongPress:Lorg/telegram/ui/ArticleViewer$CheckForLongPress;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2358
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    invoke-virtual {v2, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2359
    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->pendingCheckForLongPress:Lorg/telegram/ui/ArticleViewer$CheckForLongPress;

    .line 2361
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pendingCheckForTap:Lorg/telegram/ui/ArticleViewer$CheckForTap;

    if-eqz v0, :cond_1

    .line 2362
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    invoke-virtual {v2, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2363
    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->pendingCheckForTap:Lorg/telegram/ui/ArticleViewer$CheckForTap;

    :cond_1
    return-void
.end method

.method public close(ZZ)V
    .locals 10

    .line 5439
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->closeAnimationInProgress:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->isVisible:Z

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->checkAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 5442
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5443
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ArticleViewer$Sheet;->dismiss(Z)V

    return-void

    .line 5446
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_4

    .line 5447
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->customView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 5448
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 5449
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->customViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 5450
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->customView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 5451
    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer;->customView:Landroid/view/View;

    goto :goto_0

    .line 5452
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenedVideo:Lorg/telegram/ui/Components/WebPlayerView;

    if-eqz v0, :cond_3

    .line 5453
    invoke-virtual {v0}, Lorg/telegram/ui/Components/WebPlayerView;->exitFullscreen()V

    :cond_3
    :goto_0
    if-nez p2, :cond_4

    goto/16 :goto_3

    .line 5459
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5460
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->clear()V

    return-void

    .line 5463
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/web/WebActionBar;->isSearching()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_6

    .line 5464
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    invoke-virtual {p1, v1, v3}, Lorg/telegram/ui/web/WebActionBar;->showSearch(ZZ)V

    return-void

    .line 5467
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/web/WebActionBar;->isAddressing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5468
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    invoke-virtual {p1, v1, v3}, Lorg/telegram/ui/web/WebActionBar;->showAddress(ZZ)V

    return-void

    .line 5471
    :cond_7
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->openUrlReqId:I

    if-eqz v0, :cond_8

    .line 5472
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v4, p0, Lorg/telegram/ui/ArticleViewer;->openUrlReqId:I

    invoke-virtual {v0, v4, v3}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 5473
    iput v1, p0, Lorg/telegram/ui/ArticleViewer;->openUrlReqId:I

    .line 5474
    invoke-direct {p0, v3, v1}, Lorg/telegram/ui/ArticleViewer;->showProgressView(ZZ)V

    .line 5476
    :cond_8
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->previewsReqId:I

    if-eqz v0, :cond_9

    .line 5477
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v4, p0, Lorg/telegram/ui/ArticleViewer;->previewsReqId:I

    invoke-virtual {v0, v4, v3}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 5478
    iput v1, p0, Lorg/telegram/ui/ArticleViewer;->previewsReqId:I

    .line 5479
    invoke-direct {p0, v3, v1}, Lorg/telegram/ui/ArticleViewer;->showProgressView(ZZ)V

    .line 5481
    :cond_9
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->saveCurrentPagePosition()V

    if-eqz p1, :cond_a

    if-nez p2, :cond_a

    .line 5483
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->removeLastPageFromStack()Z

    move-result p1

    if-eqz p1, :cond_a

    goto/16 :goto_3

    .line 5488
    :cond_a
    iget p1, p0, Lorg/telegram/ui/ArticleViewer;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingProgressDidChanged:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 5489
    iget p1, p0, Lorg/telegram/ui/ArticleViewer;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 5490
    iget p1, p0, Lorg/telegram/ui/ArticleViewer;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 5491
    iget p1, p0, Lorg/telegram/ui/ArticleViewer;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 5492
    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 5494
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->visibleDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_b

    .line 5495
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 5496
    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer;->visibleDialog:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 5499
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 5502
    :cond_b
    :goto_1
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 5503
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v3, [F

    const/4 v5, 0x0

    aput v5, v4, v1

    .line 5504
    invoke-static {p2, v0, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    new-array v6, v3, [F

    aput v5, v6, v1

    .line 5505
    invoke-static {v4, v0, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    sget-object v6, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/high16 v7, 0x42600000    # 56.0f

    .line 5506
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    const/4 v8, 0x2

    new-array v9, v8, [F

    aput v5, v9, v1

    aput v7, v9, v3

    invoke-static {v4, v6, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object p2, v5, v1

    aput-object v0, v5, v3

    aput-object v4, v5, v8

    .line 5503
    invoke-virtual {p1, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 5508
    iput v8, p0, Lorg/telegram/ui/ArticleViewer;->animationInProgress:I

    .line 5509
    new-instance p2, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer;->animationEndRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x96

    .line 5517
    invoke-virtual {p1, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 5518
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5519
    new-instance p2, Lorg/telegram/ui/ArticleViewer$25;

    invoke-direct {p2, p0}, Lorg/telegram/ui/ArticleViewer$25;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5528
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lorg/telegram/ui/ArticleViewer;->transitionAnimationStartTime:J

    .line 5529
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v8, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 5530
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 5532
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->videoStates:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result p1

    if-ge v1, p1, :cond_d

    .line 5533
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->videoStates:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1, v1}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;

    .line 5534
    iget-object p2, p1, Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;->lastFrameBitmap:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_c

    .line 5535
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 5536
    iput-object v2, p1, Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;->lastFrameBitmap:Landroid/graphics/Bitmap;

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 5539
    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->videoStates:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->clear()V

    :cond_e
    :goto_3
    return-void
.end method

.method public destroy()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 14621
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 14622
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 14623
    instance-of v3, v2, Lorg/telegram/ui/ArticleViewer$CachedWeb;

    if-eqz v3, :cond_2

    .line 14624
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer$PageLayout;->-$$Nest$fgetweb(Lorg/telegram/ui/ArticleViewer$PageLayout;)Lorg/telegram/ui/ArticleViewer$CachedWeb;

    move-result-object v3

    if-ne v3, v2, :cond_0

    .line 14625
    move-object v3, v2

    check-cast v3, Lorg/telegram/ui/ArticleViewer$CachedWeb;

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ArticleViewer$CachedWeb;->detach(Lorg/telegram/ui/ArticleViewer$PageLayout;)V

    .line 14627
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    if-eqz v3, :cond_1

    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer$PageLayout;->-$$Nest$fgetweb(Lorg/telegram/ui/ArticleViewer$PageLayout;)Lorg/telegram/ui/ArticleViewer$CachedWeb;

    move-result-object v3

    if-ne v3, v2, :cond_1

    .line 14628
    move-object v3, v2

    check-cast v3, Lorg/telegram/ui/ArticleViewer$CachedWeb;

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v4, v5, v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ArticleViewer$CachedWeb;->detach(Lorg/telegram/ui/ArticleViewer$PageLayout;)V

    .line 14630
    :cond_1
    check-cast v2, Lorg/telegram/ui/ArticleViewer$CachedWeb;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->destroy()V

    goto :goto_1

    .line 14631
    :cond_2
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v3, :cond_3

    .line 14632
    check-cast v2, Lorg/telegram/tgnet/TLRPC$WebPage;

    invoke-static {v2}, Lorg/telegram/ui/web/WebInstantView;->recycle(Lorg/telegram/tgnet/TLRPC$WebPage;)V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 14635
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 14636
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer;->destroyArticleViewer()V

    return-void
.end method

.method public destroyArticleViewer()V
    .locals 4

    .line 5650
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 5653
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 5655
    :try_start_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5656
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 5657
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 5659
    :cond_1
    :goto_0
    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 5661
    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    const/4 v0, 0x0

    .line 5664
    :goto_3
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->createdWebViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 5665
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->createdWebViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    const/4 v3, 0x1

    .line 5666
    invoke-virtual {v1, v3}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->destroyWebView(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 5668
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->createdWebViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5670
    :try_start_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 5672
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 5674
    :goto_4
    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    .line 5675
    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 5676
    sput-object v2, Lorg/telegram/ui/ArticleViewer;->Instance:Lorg/telegram/ui/ArticleViewer;

    .line 5679
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingProgressDidChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 5680
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 5681
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 5682
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    :cond_4
    :goto_5
    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 6

    .line 3436
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p2, :cond_2

    .line 3437
    aget-object p1, p3, v1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    .line 3438
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    if-eqz p1, :cond_9

    move p1, v1

    .line 3439
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    array-length p3, p2

    if-ge p1, p3, :cond_9

    .line 3440
    aget-object p2, p2, p1

    iget-object p2, p2, Lorg/telegram/ui/ArticleViewer$PageLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    move p3, v1

    :goto_1
    if-ge p3, p2, :cond_1

    .line 3442
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v2, v2, p1

    iget-object v2, v2, Lorg/telegram/ui/ArticleViewer$PageLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3443
    instance-of v3, v2, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;

    if-eqz v3, :cond_0

    .line 3444
    check-cast v2, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;

    .line 3445
    invoke-virtual {v2, v0}, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->updateButtonState(Z)V

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 3450
    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    if-eq p1, p2, :cond_6

    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    if-ne p1, p2, :cond_3

    goto :goto_5

    .line 3466
    :cond_3
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingProgressDidChanged:I

    if-ne p1, p2, :cond_9

    .line 3467
    aget-object p1, p3, v1

    check-cast p1, Ljava/lang/Integer;

    .line 3468
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    if-eqz p2, :cond_9

    move p2, v1

    .line 3469
    :goto_2
    iget-object p3, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    array-length v0, p3

    if-ge p2, v0, :cond_9

    .line 3470
    aget-object p3, p3, p2

    iget-object p3, p3, Lorg/telegram/ui/ArticleViewer$PageLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    move v0, v1

    :goto_3
    if-ge v0, p3, :cond_5

    .line 3472
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v2, v2, p2

    iget-object v2, v2, Lorg/telegram/ui/ArticleViewer$PageLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3473
    instance-of v3, v2, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;

    if-eqz v3, :cond_4

    .line 3474
    check-cast v2, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;

    .line 3475
    invoke-virtual {v2}, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 3476
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v4, v5, :cond_4

    .line 3477
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 3479
    iget v0, p3, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    iput v0, v3, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    .line 3480
    iget v0, p3, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    iput v0, v3, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    .line 3481
    iget p3, p3, Lorg/telegram/messenger/MessageObject;->audioPlayerDuration:I

    iput p3, v3, Lorg/telegram/messenger/MessageObject;->audioPlayerDuration:I

    .line 3482
    invoke-virtual {v2}, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->updatePlayingMessageProgress()V

    goto :goto_4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 3451
    :cond_6
    :goto_5
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    if-eqz p1, :cond_9

    move p1, v1

    .line 3452
    :goto_6
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    array-length p3, p2

    if-ge p1, p3, :cond_9

    .line 3453
    aget-object p2, p2, p1

    iget-object p2, p2, Lorg/telegram/ui/ArticleViewer$PageLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    move p3, v1

    :goto_7
    if-ge p3, p2, :cond_8

    .line 3455
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v2, v2, p1

    iget-object v2, v2, Lorg/telegram/ui/ArticleViewer$PageLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3456
    instance-of v3, v2, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;

    if-eqz v3, :cond_7

    .line 3457
    check-cast v2, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;

    .line 3458
    invoke-virtual {v2}, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 3460
    invoke-virtual {v2, v0}, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->updateButtonState(Z)V

    :cond_7
    add-int/lit8 p3, p3, 0x1

    goto :goto_7

    :cond_8
    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    :cond_9
    return-void
.end method

.method public getLastWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;
    .locals 2

    .line 1828
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$PageLayout;->isWeb()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1829
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1830
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v0, v0, v1

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$PageLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer;->checkCreateWebView()V

    .line 1832
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResourcesProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getThemedColor(I)I
    .locals 1

    .line 12801
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer;->getResourcesProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method public isFirstArticle()Z
    .locals 2

    .line 12809
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public isLastArticle()Z
    .locals 2

    .line 278
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 279
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 280
    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 5686
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->isVisible:Z

    return v0
.end method

.method public open(Ljava/lang/String;)Z
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v4, p1

    .line 5053
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ArticleViewer;->open(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/browser/Browser$Progress;)Z

    move-result p1

    return p1
.end method

.method public open(Ljava/lang/String;Lorg/telegram/messenger/browser/Browser$Progress;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    .line 5057
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ArticleViewer;->open(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/browser/Browser$Progress;)Z

    move-result p1

    return p1
.end method

.method public open(Lorg/telegram/messenger/MessageObject;)Z
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 5045
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ArticleViewer;->open(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/browser/Browser$Progress;)Z

    move-result p1

    return p1
.end method

.method public open(Lorg/telegram/tgnet/TLRPC$TL_webPage;Ljava/lang/String;)Z
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    .line 5049
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ArticleViewer;->open(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/browser/Browser$Progress;)Z

    move-result p1

    return p1
.end method

.method public openBookmark(Ljava/lang/String;)V
    .locals 4

    .line 4671
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    goto :goto_1

    .line 4673
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/web/WebActionBar;->showAddress(ZZ)V

    .line 4674
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lorg/telegram/messenger/browser/Browser;->isInternalUri(Landroid/net/Uri;[Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4675
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    if-eqz v0, :cond_2

    .line 4676
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ArticleViewer$Sheet;->dismiss(Z)V

    .line 4678
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lorg/telegram/messenger/browser/Browser;->openAsInternalIntent(Landroid/content/Context;Ljava/lang/String;)Z

    return-void

    .line 4679
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-static {v0, p1, v1}, Lorg/telegram/messenger/browser/Browser;->openInExternalApp(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_6

    .line 4680
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v0, v0, v1

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 4683
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->loadUrl(Ljava/lang/String;)V

    return-void

    .line 4681
    :cond_5
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-static {v0, p1, v3}, Lorg/telegram/messenger/browser/Browser;->openInTelegramBrowser(Landroid/content/Context;Ljava/lang/String;Lorg/telegram/messenger/browser/Browser$Progress;)Z

    :cond_6
    :goto_1
    return-void
.end method

.method public openHistoryEntry(Lorg/telegram/ui/web/BrowserHistory$Entry;)V
    .locals 3

    .line 4689
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 4690
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/web/WebActionBar;->showAddress(ZZ)V

    .line 4691
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v0, v0, v2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 4694
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/ui/web/BrowserHistory$Entry;->url:Ljava/lang/String;

    iget-object p1, p1, Lorg/telegram/ui/web/BrowserHistory$Entry;->meta:Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->loadUrl(Ljava/lang/String;Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;)V

    return-void

    .line 4692
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    iget-object p1, p1, Lorg/telegram/ui/web/BrowserHistory$Entry;->url:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/telegram/messenger/browser/Browser;->openInTelegramBrowser(Landroid/content/Context;Ljava/lang/String;Lorg/telegram/messenger/browser/Browser$Progress;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public openPhoto(Lorg/telegram/tgnet/TLRPC$PageBlock;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Z
    .locals 5

    .line 12482
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 12487
    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    if-eqz v0, :cond_2

    invoke-static {p2}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetcurrentPage(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/telegram/ui/ArticleViewer$WebPageUtils;->isVideo(Lorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/tgnet/TLRPC$PageBlock;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 12491
    :cond_1
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    move-object v0, p1

    move p1, v1

    goto :goto_1

    .line 12488
    :cond_2
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetphotoBlocks(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12489
    invoke-static {p2}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetphotoBlocks(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 12494
    :goto_1
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v2

    .line 12495
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 12496
    new-instance v3, Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;

    invoke-static {p2}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetcurrentPage(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object p2

    const/4 v4, 0x0

    invoke-direct {v3, p0, p2, v0, v4}, Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;-><init>(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLRPC$WebPage;Ljava/util/List;Lorg/telegram/ui/ArticleViewer-IA;)V

    new-instance p2, Lorg/telegram/ui/ArticleViewer$PageBlocksPhotoViewerProvider;

    invoke-direct {p2, p0, v0}, Lorg/telegram/ui/ArticleViewer$PageBlocksPhotoViewerProvider;-><init>(Lorg/telegram/ui/ArticleViewer;Ljava/util/List;)V

    invoke-virtual {v2, p1, v3, p2}, Lorg/telegram/ui/PhotoViewer;->openPhoto(ILorg/telegram/ui/PhotoViewer$PageBlocksAdapter;Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 12497
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->checkVideoPlayer()V

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_2
    return v1
.end method

.method public openWebSettings()V
    .locals 4

    .line 4699
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4701
    new-instance v1, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;

    invoke-direct {v1}, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;-><init>()V

    const/4 v2, 0x1

    .line 4702
    iput-boolean v2, v1, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->transitionFromLeft:Z

    .line 4703
    new-instance v2, Lorg/telegram/ui/web/WebBrowserSettings;

    new-instance v3, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda40;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda40;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-direct {v2, v3}, Lorg/telegram/ui/web/WebBrowserSettings;-><init>(Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;)[Lorg/telegram/ui/ActionBar/INavigationLayout;

    :cond_0
    return-void
.end method

.method public setOpener(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V
    .locals 3

    .line 12866
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 12867
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 12868
    aget-object v1, v1, v0

    if-nez v1, :cond_1

    goto :goto_1

    .line 12869
    :cond_1
    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer$PageLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->setOpener(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public setParentActivity(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 3653
    iput-object v2, v0, Lorg/telegram/ui/ArticleViewer;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v2, :cond_0

    .line 3654
    instance-of v3, v2, Lorg/telegram/ui/EmptyBaseFragment;

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v2

    goto :goto_0

    :cond_0
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    :goto_0
    iput v2, v0, Lorg/telegram/ui/ArticleViewer;->currentAccount:I

    .line 3655
    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messagePlayingProgressDidChanged:I

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3656
    iget v2, v0, Lorg/telegram/ui/ArticleViewer;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3657
    iget v2, v0, Lorg/telegram/ui/ArticleViewer;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3658
    iget v2, v0, Lorg/telegram/ui/ArticleViewer;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3659
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    if-eq v2, v1, :cond_b

    if-eqz v2, :cond_1

    iget-boolean v2, v0, Lorg/telegram/ui/ArticleViewer;->isSheet:Z

    if-eqz v2, :cond_1

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lorg/telegram/ui/ArticleViewer$Sheet;->dialog:Lorg/telegram/ui/ActionBar/BottomSheetTabDialog;

    if-eqz v2, :cond_1

    goto/16 :goto_7

    .line 3664
    :cond_1
    iput-object v1, v0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    .line 3666
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "articles"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 3667
    const-string v3, "font_type"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/ArticleViewer;->selectedFont:I

    .line 3668
    invoke-direct {v0, v4}, Lorg/telegram/ui/ArticleViewer;->createPaint(Z)V

    .line 3669
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/ArticleViewer;->backgroundPaint:Landroid/graphics/Paint;

    .line 3671
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->slide_dot_small:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/ArticleViewer;->slideDotDrawable:Landroid/graphics/drawable/Drawable;

    .line 3672
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->slide_dot_big:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/ArticleViewer;->slideDotBigDrawable:Landroid/graphics/drawable/Drawable;

    .line 3673
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/ArticleViewer;->scrimPaint:Landroid/graphics/Paint;

    .line 3675
    new-instance v2, Lorg/telegram/ui/ArticleViewer$WindowView;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/ArticleViewer$WindowView;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    .line 3676
    invoke-virtual {v2, v4}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 3677
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 3678
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    invoke-virtual {v2, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 3679
    new-instance v2, Lorg/telegram/ui/ArticleViewer$12;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/ArticleViewer$12;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    .line 3722
    iget-object v5, v0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    const/4 v6, -0x1

    const/16 v7, 0x33

    invoke-static {v6, v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v2, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3724
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    if-nez v2, :cond_2

    .line 3725
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 3726
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    new-instance v5, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda8;

    invoke-direct {v5}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 3735
    :cond_2
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/ArticleViewer;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    const/high16 v5, -0x1000000

    .line 3736
    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3737
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    const/4 v8, 0x4

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 3738
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    iget-object v9, v0, Lorg/telegram/ui/ArticleViewer;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    const/high16 v10, -0x40800000    # -1.0f

    invoke-static {v6, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v2, v9, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3740
    new-instance v2, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-direct {v2, v1}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/ArticleViewer;->fullscreenAspectRatioView:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    .line 3741
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3742
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->fullscreenAspectRatioView:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3743
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    iget-object v9, v0, Lorg/telegram/ui/ArticleViewer;->fullscreenAspectRatioView:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    const/16 v11, 0x11

    invoke-static {v6, v6, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v2, v9, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3745
    new-instance v2, Landroid/view/TextureView;

    invoke-direct {v2, v1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/ArticleViewer;->fullscreenTextureView:Landroid/view/TextureView;

    const/4 v2, 0x2

    .line 3747
    new-array v2, v2, [Lorg/telegram/ui/ArticleViewer$PageLayout;

    iput-object v2, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    move v2, v4

    .line 3748
    :goto_1
    iget-object v9, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    array-length v11, v9

    if-ge v2, v11, :cond_4

    .line 3749
    new-instance v11, Lorg/telegram/ui/ArticleViewer$PageLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer;->getResourcesProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v12

    invoke-direct {v11, v0, v1, v12}, Lorg/telegram/ui/ArticleViewer$PageLayout;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v11, v9, v2

    if-nez v2, :cond_3

    move v9, v4

    goto :goto_2

    :cond_3
    const/16 v9, 0x8

    .line 3750
    :goto_2
    invoke-virtual {v11, v9}, Landroid/view/View;->setVisibility(I)V

    .line 3751
    iget-object v9, v0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v12, -0x1

    const/high16 v13, -0x40800000    # -1.0f

    const/16 v14, 0x77

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3752
    iget-object v9, v11, Lorg/telegram/ui/ArticleViewer$PageLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v12, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda14;

    invoke-direct {v12, v0}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v9, v12}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 3760
    iget-object v9, v11, Lorg/telegram/ui/ArticleViewer$PageLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v12, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda15;

    invoke-direct {v12, v0, v11}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$PageLayout;)V

    invoke-virtual {v9, v12}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3852
    :cond_4
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/ArticleViewer;->bulletinContainer:Landroid/widget/FrameLayout;

    .line 3853
    iget-object v9, v0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    iget-object v11, v0, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    const/4 v12, 0x0

    if-eqz v11, :cond_5

    invoke-virtual {v11}, Lorg/telegram/ui/ArticleViewer$Sheet;->halfSize()Z

    move-result v11

    if-nez v11, :cond_5

    const/high16 v11, 0x42600000    # 56.0f

    move/from16 v17, v11

    goto :goto_3

    :cond_5
    move/from16 v17, v12

    :goto_3
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v13, -0x1

    const/high16 v14, -0x40800000    # -1.0f

    const/16 v15, 0x77

    const/16 v16, 0x0

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v9, v2, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3855
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->headerPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 3856
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->statusBarPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 3857
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->headerProgressPaint:Landroid/graphics/Paint;

    const v9, -0xdbdbda

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 3858
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->navigationBarPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 3859
    new-instance v2, Lorg/telegram/ui/ArticleViewer$13;

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer;->getResourcesProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v5

    invoke-direct {v2, v0, v1, v5}, Lorg/telegram/ui/ArticleViewer$13;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, v0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    .line 3917
    iget-object v5, v0, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    if-eqz v5, :cond_6

    move v5, v3

    goto :goto_4

    :cond_6
    move v5, v4

    :goto_4
    invoke-virtual {v2, v5}, Lorg/telegram/ui/web/WebActionBar;->occupyStatusBar(Z)V

    .line 3918
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    iget-object v5, v0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    const/4 v9, -0x2

    const/16 v11, 0x30

    invoke-static {v6, v9, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v2, v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3919
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    new-instance v5, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda16;

    invoke-direct {v5, v0, v1}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/app/Activity;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4014
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    iget-object v2, v2, Lorg/telegram/ui/web/WebActionBar;->addressEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v5, Lorg/telegram/ui/ArticleViewer$14;

    invoke-direct {v5, v0}, Lorg/telegram/ui/ArticleViewer$14;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 4027
    new-instance v2, Lorg/telegram/ui/web/AddressBarList;

    invoke-direct {v2, v1}, Lorg/telegram/ui/web/AddressBarList;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/ArticleViewer;->addressBarList:Lorg/telegram/ui/web/AddressBarList;

    .line 4028
    invoke-virtual {v2, v12}, Lorg/telegram/ui/web/AddressBarList;->setOpenProgress(F)V

    .line 4029
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->addressBarList:Lorg/telegram/ui/web/AddressBarList;

    iget-object v2, v2, Lorg/telegram/ui/web/AddressBarList;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    new-instance v5, Lorg/telegram/ui/ArticleViewer$15;

    invoke-direct {v5, v0}, Lorg/telegram/ui/ArticleViewer$15;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 4037
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    iget-object v5, v0, Lorg/telegram/ui/ArticleViewer;->addressBarList:Lorg/telegram/ui/web/AddressBarList;

    invoke-static {v6, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v2, v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4039
    new-instance v2, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda17;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    iput-object v2, v0, Lorg/telegram/ui/ArticleViewer;->lineProgressTickRunnable:Ljava/lang/Runnable;

    .line 4053
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    iget-object v2, v2, Lorg/telegram/ui/web/WebActionBar;->backButton:Landroid/widget/ImageView;

    new-instance v5, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda18;

    invoke-direct {v5, v0}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4068
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    iget-object v2, v2, Lorg/telegram/ui/web/WebActionBar;->backButton:Landroid/widget/ImageView;

    new-instance v5, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda19;

    invoke-direct {v5, v0}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 4300
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    new-instance v5, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda20;

    invoke-direct {v5, v0, v1}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/app/Activity;)V

    invoke-virtual {v2, v5}, Lorg/telegram/ui/web/WebActionBar;->setMenuListener(Lorg/telegram/messenger/Utilities$Callback;)V

    .line 4507
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    iget-object v2, v2, Lorg/telegram/ui/web/WebActionBar;->forwardButton:Landroid/widget/ImageView;

    new-instance v5, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda21;

    invoke-direct {v5, v0}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4519
    new-instance v2, Lorg/telegram/ui/ArticleViewer$18;

    iget-object v5, v0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v2, v0, v5}, Lorg/telegram/ui/ArticleViewer$18;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/ArticleViewer;->searchPanel:Landroid/widget/FrameLayout;

    .line 4528
    new-instance v5, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda22;

    invoke-direct {v5}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda22;-><init>()V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 4529
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->searchPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v4}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 4530
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->searchPanel:Landroid/widget/FrameLayout;

    const/high16 v5, 0x424c0000    # 51.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 4531
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->searchPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 4532
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->searchPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 4533
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->searchPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 4534
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->searchPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/view/View;->setClickable(Z)V

    .line 4535
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->searchPanel:Landroid/widget/FrameLayout;

    const/high16 v5, 0x40400000    # 3.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v2, v4, v5, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 4536
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    iget-object v5, v0, Lorg/telegram/ui/ArticleViewer;->searchPanel:Landroid/widget/FrameLayout;

    const/16 v8, 0x50

    invoke-static {v6, v7, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v2, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4538
    new-instance v2, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    iget-object v5, v0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    new-instance v8, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda9;

    invoke-direct {v8, v0}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-direct {v2, v5, v8}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;-><init>(Landroid/view/View;Lorg/telegram/messenger/Utilities$Callback;)V

    .line 4542
    new-instance v2, Landroid/widget/ImageView;

    iget-object v5, v0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v2, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/ArticleViewer;->searchUpButton:Landroid/widget/ImageView;

    .line 4543
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 4544
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->searchUpButton:Landroid/widget/ImageView;

    sget v8, Lorg/telegram/messenger/R$drawable;->msg_go_up:I

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4545
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->searchUpButton:Landroid/widget/ImageView;

    new-instance v8, Landroid/graphics/PorterDuffColorFilter;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {v0, v9}, Lorg/telegram/ui/ArticleViewer;->getThemedColor(I)I

    move-result v10

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v10, v12}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 4546
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->searchUpButton:Landroid/widget/ImageView;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultSelector:I

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ArticleViewer;->getThemedColor(I)I

    move-result v10

    invoke-static {v10, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4547
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->searchPanel:Landroid/widget/FrameLayout;

    iget-object v10, v0, Lorg/telegram/ui/ArticleViewer;->searchUpButton:Landroid/widget/ImageView;

    const/high16 v18, 0x42400000    # 48.0f

    const/16 v19, 0x0

    const/16 v13, 0x30

    const/high16 v14, 0x42400000    # 48.0f

    const/16 v15, 0x35

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v2, v10, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4548
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->searchUpButton:Landroid/widget/ImageView;

    new-instance v10, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda10;

    invoke-direct {v10, v0}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v2, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4557
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->searchUpButton:Landroid/widget/ImageView;

    sget v10, Lorg/telegram/messenger/R$string;->AccDescrSearchNext:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4559
    new-instance v2, Landroid/widget/ImageView;

    iget-object v10, v0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v2, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/ArticleViewer;->searchDownButton:Landroid/widget/ImageView;

    .line 4560
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 4561
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->searchDownButton:Landroid/widget/ImageView;

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_go_down:I

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4562
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->searchDownButton:Landroid/widget/ImageView;

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v9}, Lorg/telegram/ui/ArticleViewer;->getThemedColor(I)I

    move-result v10

    invoke-direct {v5, v10, v12}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 4563
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->searchDownButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ArticleViewer;->getThemedColor(I)I

    move-result v5

    invoke-static {v5, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4564
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->searchPanel:Landroid/widget/FrameLayout;

    iget-object v5, v0, Lorg/telegram/ui/ArticleViewer;->searchDownButton:Landroid/widget/ImageView;

    const/16 v18, 0x0

    const/16 v12, 0x30

    const/high16 v13, 0x42400000    # 48.0f

    const/16 v14, 0x35

    const/4 v15, 0x0

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v2, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4565
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->searchDownButton:Landroid/widget/ImageView;

    new-instance v5, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda11;

    invoke-direct {v5, v0}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4574
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->searchDownButton:Landroid/widget/ImageView;

    sget v5, Lorg/telegram/messenger/R$string;->AccDescrSearchPrev:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4576
    new-instance v2, Lorg/telegram/ui/Components/AnimatedTextView;

    iget-object v5, v0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v2, v5, v3, v3, v3}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    iput-object v2, v0, Lorg/telegram/ui/ArticleViewer;->searchCountText:Lorg/telegram/ui/Components/AnimatedTextView;

    const v5, 0x3f19999a    # 0.6f

    .line 4577
    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/AnimatedTextView;->setScaleProperty(F)V

    .line 4578
    iget-object v12, v0, Lorg/telegram/ui/ArticleViewer;->searchCountText:Lorg/telegram/ui/Components/AnimatedTextView;

    const-wide/16 v16, 0x15e

    sget-object v18, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const v13, 0x3ecccccd    # 0.4f

    const-wide/16 v14, 0x0

    invoke-virtual/range {v12 .. v18}, Lorg/telegram/ui/Components/AnimatedTextView;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    .line 4579
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->searchCountText:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0, v9}, Lorg/telegram/ui/ArticleViewer;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    .line 4580
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->searchCountText:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v5, 0x41700000    # 15.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    .line 4581
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->searchCountText:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/AnimatedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4582
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->searchCountText:Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    .line 4583
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->searchCountText:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedTextView;->getDrawable()Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    move-result-object v2

    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setOverrideFullWidth(I)V

    .line 4584
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->searchPanel:Landroid/widget/FrameLayout;

    iget-object v5, v0, Lorg/telegram/ui/ArticleViewer;->searchCountText:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v17, 0x42d80000    # 108.0f

    const/16 v18, 0x0

    const/4 v12, -0x2

    const/high16 v13, -0x40000000    # -2.0f

    const/16 v14, 0x13

    const/high16 v15, 0x41900000    # 18.0f

    const/16 v16, 0x0

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v2, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4586
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/ArticleViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 4587
    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v5, -0x3

    .line 4588
    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 4589
    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 4590
    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v5, 0x62

    .line 4591
    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 4592
    iput v11, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const/high16 v5, 0x20000

    .line 4593
    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4596
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    if-nez v2, :cond_7

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/4 v5, 0x0

    invoke-static {v2, v5, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I[ZZ)I

    move-result v2

    goto :goto_5

    :cond_7
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ArticleViewer;->getThemedColor(I)I

    move-result v2

    .line 4597
    :goto_5
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v5

    const v6, 0x3f389375    # 0.721f

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_8

    .line 4599
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    if-lt v5, v6, :cond_8

    const/16 v5, 0x710

    goto :goto_6

    :cond_8
    const/16 v5, 0x700

    .line 4602
    :goto_6
    iget-object v6, v0, Lorg/telegram/ui/ArticleViewer;->navigationBarPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 4603
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 4605
    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v6, -0x7ffeff00

    or-int/2addr v5, v6

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4608
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1c

    if-lt v5, v6, :cond_9

    .line 4609
    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticApiModelOutline2;->m(Landroid/view/WindowManager$LayoutParams;I)V

    .line 4612
    :cond_9
    new-instance v2, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    invoke-direct {v2}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/ArticleViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    .line 4613
    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v3, v3, v4

    iget-object v3, v3, Lorg/telegram/ui/ArticleViewer$PageLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/TextSelectionHelper;->setParentView(Landroid/view/ViewGroup;)V

    .line 4614
    iget v2, v0, Lorg/telegram/ui/ArticleViewer;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesController;->getTranslateController()Lorg/telegram/messenger/TranslateController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/TranslateController;->isContextTranslateEnabled()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 4615
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    new-instance v3, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda12;

    invoke-direct {v3, v0}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/TextSelectionHelper;->setOnTranslate(Lorg/telegram/ui/Cells/TextSelectionHelper$OnTranslateListener;)V

    .line 4619
    :cond_a
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v3, v3, v4

    iget-object v3, v3, Lorg/telegram/ui/ArticleViewer$PageLayout;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    iput-object v3, v2, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 4620
    new-instance v3, Lorg/telegram/ui/ArticleViewer$19;

    invoke-direct {v3, v0}, Lorg/telegram/ui/ArticleViewer$19;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/TextSelectionHelper;->setCallback(Lorg/telegram/ui/Cells/TextSelectionHelper$Callback;)V

    .line 4635
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getOverlayView(Landroid/content/Context;)Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4637
    new-instance v1, Lorg/telegram/ui/PinchToZoomHelper;

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    invoke-direct {v1, v2, v2}, Lorg/telegram/ui/PinchToZoomHelper;-><init>(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    iput-object v1, v0, Lorg/telegram/ui/ArticleViewer;->pinchToZoomHelper:Lorg/telegram/ui/PinchToZoomHelper;

    .line 4638
    new-instance v2, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda13;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/PinchToZoomHelper;->setClipBoundsListener(Lorg/telegram/ui/PinchToZoomHelper$ClipBoundsListener;)V

    .line 4642
    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->pinchToZoomHelper:Lorg/telegram/ui/PinchToZoomHelper;

    new-instance v2, Lorg/telegram/ui/ArticleViewer$20;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ArticleViewer$20;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/PinchToZoomHelper;->setCallback(Lorg/telegram/ui/PinchToZoomHelper$Callback;)V

    .line 4650
    invoke-direct {v0}, Lorg/telegram/ui/ArticleViewer;->updatePaintColors()V

    return-void

    .line 3660
    :cond_b
    :goto_7
    invoke-direct {v0}, Lorg/telegram/ui/ArticleViewer;->updatePaintColors()V

    .line 3661
    invoke-direct {v0}, Lorg/telegram/ui/ArticleViewer;->refreshThemeColors()V

    return-void
.end method

.method public showDialog(Landroid/app/Dialog;)V
    .locals 2

    .line 5690
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    goto :goto_1

    .line 5694
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->visibleDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 5695
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 5696
    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->visibleDialog:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5699
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 5702
    :cond_1
    :goto_0
    :try_start_1
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->visibleDialog:Landroid/app/Dialog;

    const/4 v0, 0x1

    .line 5703
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 5704
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->visibleDialog:Landroid/app/Dialog;

    new-instance v1, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda48;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda48;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 5705
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 5707
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public showSearchPanel(Z)V
    .locals 4

    .line 4886
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->searchPanel:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4887
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->searchPanelAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 4888
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 4890
    :cond_0
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->searchPanelAlpha:F

    if-eqz p1, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    new-array v3, v3, [F

    aput v0, v3, v1

    const/4 v0, 0x1

    aput v2, v3, v0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->searchPanelAnimator:Landroid/animation/ValueAnimator;

    .line 4891
    new-instance v1, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda61;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda61;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4895
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->searchPanelAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/ArticleViewer$21;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/ArticleViewer$21;-><init>(Lorg/telegram/ui/ArticleViewer;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4905
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->searchPanelAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x140

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4906
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->searchPanelAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4907
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->searchPanelAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method protected startCheckLongPress(FFLandroid/view/View;)V
    .locals 2

    .line 2340
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->checkingForLongPress:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2343
    iput-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->checkingForLongPress:Z

    .line 2344
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pendingCheckForTap:Lorg/telegram/ui/ArticleViewer$CheckForTap;

    if-nez v0, :cond_1

    .line 2345
    new-instance v0, Lorg/telegram/ui/ArticleViewer$CheckForTap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/ArticleViewer$CheckForTap;-><init>(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer-IA;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pendingCheckForTap:Lorg/telegram/ui/ArticleViewer$CheckForTap;

    .line 2347
    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "bottomSheet"

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->textSelectionHelperBottomSheet:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    if-eqz v0, :cond_2

    float-to-int p1, p1

    float-to-int p2, p2

    .line 2348
    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->setMaybeView(IILandroid/view/View;)V

    goto :goto_0

    .line 2350
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->setMaybeView(IILandroid/view/View;)V

    .line 2352
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer;->pendingCheckForTap:Lorg/telegram/ui/ArticleViewer$CheckForTap;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result p3

    int-to-long v0, p3

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public updatePages()V
    .locals 10

    .line 12816
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-eqz v2, :cond_12

    const/4 v3, 0x1

    aget-object v0, v0, v3

    if-nez v0, :cond_0

    goto/16 :goto_c

    .line 12820
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v0, v5

    sub-float v0, v4, v0

    :goto_0
    sub-float v5, v4, v0

    .line 12823
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getProgress()F

    move-result v7

    invoke-virtual {v6, v1, v7}, Lorg/telegram/ui/web/WebActionBar;->setProgress(IF)V

    .line 12824
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v7, v7, v3

    invoke-virtual {v7}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getProgress()F

    move-result v7

    invoke-virtual {v6, v3, v7}, Lorg/telegram/ui/web/WebActionBar;->setProgress(IF)V

    .line 12825
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    invoke-virtual {v6, v5}, Lorg/telegram/ui/web/WebActionBar;->setTransitionProgress(F)V

    .line 12826
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    invoke-virtual {v6}, Lorg/telegram/ui/web/WebActionBar;->isAddressing()Z

    move-result v6

    const/high16 v7, 0x3f000000    # 0.5f

    if-nez v6, :cond_b

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    invoke-virtual {v6}, Lorg/telegram/ui/web/WebActionBar;->isSearching()Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    invoke-static {v6}, Lorg/telegram/ui/ArticleViewer$WindowView;->-$$Nest$fgetmovingPage(Lorg/telegram/ui/ArticleViewer$WindowView;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    invoke-static {v6}, Lorg/telegram/ui/ArticleViewer$WindowView;->-$$Nest$fgetopeningPage(Lorg/telegram/ui/ArticleViewer$WindowView;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 12827
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer;->isFirstArticle()Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v3, :cond_3

    goto :goto_1

    .line 12834
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    iget-object v2, v2, Lorg/telegram/ui/web/WebActionBar;->forwardButtonDrawable:Lorg/telegram/ui/web/WebActionBar$ForwardDrawable;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/web/WebActionBar$ForwardDrawable;->setState(Z)V

    .line 12835
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/web/WebActionBar;->setBackButtonCached(Z)V

    goto :goto_5

    .line 12828
    :cond_4
    :goto_1
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lorg/telegram/ui/ArticleViewer$PageLayout;->hasBackButton()Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v3, :cond_5

    goto :goto_2

    :cond_5
    move v6, v2

    goto :goto_3

    :cond_6
    :goto_2
    move v6, v4

    :goto_3
    iget-object v8, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v8, v8, v3

    invoke-virtual {v8}, Lorg/telegram/ui/ArticleViewer$PageLayout;->hasBackButton()Z

    move-result v8

    if-nez v8, :cond_7

    iget-object v8, p0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x2

    if-le v8, v9, :cond_8

    :cond_7
    move v2, v4

    :cond_8
    invoke-static {v6, v2, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    .line 12829
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    iget-object v6, v6, Lorg/telegram/ui/web/WebActionBar;->backButtonDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    sub-float/2addr v4, v2

    invoke-virtual {v6, v4, v1}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    .line 12830
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    iget-object v4, v4, Lorg/telegram/ui/web/WebActionBar;->forwardButtonDrawable:Lorg/telegram/ui/web/WebActionBar$ForwardDrawable;

    invoke-virtual {v4, v1}, Lorg/telegram/ui/web/WebActionBar$ForwardDrawable;->setState(Z)V

    .line 12831
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    cmpl-float v2, v2, v7

    if-lez v2, :cond_9

    move v2, v3

    goto :goto_4

    :cond_9
    move v2, v1

    :goto_4
    invoke-virtual {v4, v2}, Lorg/telegram/ui/web/WebActionBar;->setBackButtonCached(Z)V

    .line 12837
    :goto_5
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lorg/telegram/ui/ArticleViewer$PageLayout;->hasForwardButton()Z

    move-result v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/web/WebActionBar;->setHasForward(Z)V

    .line 12838
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->isPageLoaded()Z

    move-result v4

    if-eqz v4, :cond_a

    move v4, v3

    goto :goto_6

    :cond_a
    move v4, v1

    :goto_6
    invoke-virtual {v2, v4}, Lorg/telegram/ui/web/WebActionBar;->setIsLoaded(Z)V

    .line 12841
    :cond_b
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->page0Background:Lorg/telegram/ui/Components/AnimatedColor;

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getActionBarColor()I

    move-result v6

    iget-object v8, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    invoke-static {v8}, Lorg/telegram/ui/ArticleViewer$WindowView;->-$$Nest$fgetmovingPage(Lorg/telegram/ui/ArticleViewer$WindowView;)Z

    move-result v8

    if-nez v8, :cond_d

    iget-object v8, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    invoke-static {v8}, Lorg/telegram/ui/ArticleViewer$WindowView;->-$$Nest$fgetopeningPage(Lorg/telegram/ui/ArticleViewer$WindowView;)Z

    move-result v8

    if-eqz v8, :cond_c

    goto :goto_7

    :cond_c
    move v8, v1

    goto :goto_8

    :cond_d
    :goto_7
    move v8, v3

    :goto_8
    invoke-virtual {v4, v6, v8}, Lorg/telegram/ui/Components/AnimatedColor;->set(IZ)I

    move-result v4

    invoke-virtual {v2, v1, v4}, Lorg/telegram/ui/web/WebActionBar;->setBackgroundColor(II)V

    .line 12842
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->page1Background:Lorg/telegram/ui/Components/AnimatedColor;

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getActionBarColor()I

    move-result v6

    iget-object v8, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    invoke-static {v8}, Lorg/telegram/ui/ArticleViewer$WindowView;->-$$Nest$fgetmovingPage(Lorg/telegram/ui/ArticleViewer$WindowView;)Z

    move-result v8

    if-nez v8, :cond_f

    iget-object v8, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    invoke-static {v8}, Lorg/telegram/ui/ArticleViewer$WindowView;->-$$Nest$fgetopeningPage(Lorg/telegram/ui/ArticleViewer$WindowView;)Z

    move-result v8

    if-eqz v8, :cond_e

    goto :goto_9

    :cond_e
    move v8, v1

    goto :goto_a

    :cond_f
    :goto_9
    move v8, v3

    :goto_a
    invoke-virtual {v4, v6, v8}, Lorg/telegram/ui/Components/AnimatedColor;->set(IZ)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/web/WebActionBar;->setBackgroundColor(II)V

    .line 12844
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getActionBarColor()I

    move-result v4

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getActionBarColor()I

    move-result v6

    invoke-static {v4, v6, v5}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v4

    invoke-virtual {v2, v4, v1}, Lorg/telegram/ui/web/WebActionBar;->setColors(IZ)V

    .line 12846
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    cmpl-float v0, v0, v7

    if-lez v0, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v0, v0, v1

    goto :goto_b

    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v0, v0, v3

    :goto_b
    iget v0, v0, Lorg/telegram/ui/ArticleViewer$PageLayout;->type:I

    invoke-virtual {v2, v0}, Lorg/telegram/ui/web/WebActionBar;->setMenuType(I)V

    .line 12848
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    if-eqz v0, :cond_11

    .line 12849
    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$Sheet;->windowView:Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void

    .line 12850
    :cond_11
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    if-eqz v0, :cond_12

    .line 12851
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_12
    :goto_c
    return-void
.end method

.method public updateThemeColors(F)V
    .locals 3

    .line 3494
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->refreshThemeColors()V

    .line 3495
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->updatePaintColors()V

    .line 3496
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    if-eqz v0, :cond_0

    .line 3497
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$PageLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    .line 3498
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$PageLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    .line 3499
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 3500
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->searchPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    .line 3502
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object p1, p1, v1

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer$PageLayout;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->notifyDataSetChanged()V

    .line 3503
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object p1, p1, v2

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer$PageLayout;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public updateTitle(Z)V
    .locals 4

    .line 12856
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1, p1}, Lorg/telegram/ui/web/WebActionBar;->setTitle(ILjava/lang/String;Z)V

    .line 12857
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getSubtitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1, v2}, Lorg/telegram/ui/web/WebActionBar;->setSubtitle(ILjava/lang/String;Z)V

    .line 12858
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->isWeb()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->isUrlDangerous()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v2, v1, v2}, Lorg/telegram/ui/web/WebActionBar;->setIsDangerous(IZZ)V

    .line 12860
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1, p1}, Lorg/telegram/ui/web/WebActionBar;->setTitle(ILjava/lang/String;Z)V

    .line 12861
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getSubtitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0, v2}, Lorg/telegram/ui/web/WebActionBar;->setSubtitle(ILjava/lang/String;Z)V

    .line 12862
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/web/WebActionBar;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$PageLayout;->isWeb()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->isUrlDangerous()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    invoke-virtual {p1, v3, v0, v2}, Lorg/telegram/ui/web/WebActionBar;->setIsDangerous(IZZ)V

    return-void
.end method
