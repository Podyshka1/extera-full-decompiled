.class public Lorg/telegram/ui/Components/SuggestEmojiView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;,
        Lorg/telegram/ui/Components/SuggestEmojiView$Adapter;,
        Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;
    }
.end annotation


# instance fields
.field private adapter:Lorg/telegram/ui/Components/SuggestEmojiView$Adapter;

.field private arrowToEnd:Ljava/lang/Integer;

.field private arrowToSpan:Lorg/telegram/messenger/Emoji$EmojiSpan;

.field private arrowToStart:Ljava/lang/Integer;

.field private arrowX:F

.field private arrowXAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

.field private backgroundPaint:Landroid/graphics/Paint;

.field private circlePath:Landroid/graphics/Path;

.field private clear:Z

.field private containerView:Landroid/widget/FrameLayout;

.field private final currentAccount:I

.field private direction:I

.field private enterView:Lorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;

.field private forceClose:Z

.field private horizontalPadding:I

.field private isCopyForbidden:Z

.field private isSetAsStatusForbidden:Z

.field private keywordResults:Ljava/util/ArrayList;

.field private lastLang:[Ljava/lang/String;

.field private lastLangChangedTime:J

.field private lastQuery:Ljava/lang/String;

.field private lastQueryId:I

.field private lastQueryType:I

.field private lastSpanY:F

.field private leftGradientAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private listViewCenterAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

.field private listViewWidthAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

.field private loadingKey:Lorg/telegram/messenger/MediaDataController$SearchStickersKey;

.field private overshootInterpolator:Landroid/view/animation/OvershootInterpolator;

.field private path:Landroid/graphics/Path;

.field private previewDelegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private rightGradientAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

.field private searchRunnable:Ljava/lang/Runnable;

.field private show:Z

.field private showFloat1:Lorg/telegram/ui/Components/AnimatedFloat;

.field private showFloat2:Lorg/telegram/ui/Components/AnimatedFloat;

.field private updateRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$C1naNxm_fsEssW0zpv6NWQz_3gw(Lorg/telegram/ui/Components/SuggestEmojiView;Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/SuggestEmojiView;->lambda$createListView$2(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$MKTku9BGoHiLMpbhhct2jcDFjYU(Lorg/telegram/ui/Components/SuggestEmojiView;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/SuggestEmojiView;->lambda$createListView$1(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$MyAg8GByAIkuvK73TrrU4fEPe3I(I)V
    .locals 1

    .line 255
    invoke-static {p0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p0

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaDataController;->checkStickers(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ikHnHtxMIKNvcx_lTjMdbyejJbQ(Lorg/telegram/ui/Components/SuggestEmojiView;[Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/SuggestEmojiView;->lambda$searchKeywords$4([Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$sxXCCwycBVpQJjjqF1UlsEjFhKw(Lorg/telegram/ui/Components/SuggestEmojiView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/SuggestEmojiView;->update()V

    return-void
.end method

.method public static synthetic $r8$lambda$xIHdPk2K802NDYSRXFYqTn7ufbw(Lorg/telegram/ui/Components/SuggestEmojiView;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/SuggestEmojiView;->lambda$searchAnimated$6(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$yKgcBwi-yW5I4gUl2bhvDB2AsLE(Lorg/telegram/ui/Components/SuggestEmojiView;ILjava/lang/String;Ljava/util/HashSet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Components/SuggestEmojiView;->lambda$searchKeywords$3(ILjava/lang/String;Ljava/util/HashSet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zLel9_3KDbfNhp8IaTZLXTM6i1s(Lorg/telegram/ui/Components/SuggestEmojiView;ILjava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/SuggestEmojiView;->lambda$searchAnimated$5(ILjava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetcontainerView(Lorg/telegram/ui/Components/SuggestEmojiView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->containerView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Components/SuggestEmojiView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->currentAccount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdirection(Lorg/telegram/ui/Components/SuggestEmojiView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->direction:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetenterView(Lorg/telegram/ui/Components/SuggestEmojiView;)Lorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->enterView:Lorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgethorizontalPadding(Lorg/telegram/ui/Components/SuggestEmojiView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->horizontalPadding:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisCopyForbidden(Lorg/telegram/ui/Components/SuggestEmojiView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->isCopyForbidden:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisSetAsStatusForbidden(Lorg/telegram/ui/Components/SuggestEmojiView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->isSetAsStatusForbidden:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetkeywordResults(Lorg/telegram/ui/Components/SuggestEmojiView;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->keywordResults:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlistView(Lorg/telegram/ui/Components/SuggestEmojiView;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/SuggestEmojiView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdrawContainerBegin(Lorg/telegram/ui/Components/SuggestEmojiView;Landroid/graphics/Canvas;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SuggestEmojiView;->drawContainerBegin(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetPreviewDelegate(Lorg/telegram/ui/Components/SuggestEmojiView;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/SuggestEmojiView;->getPreviewDelegate()Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 2

    .line 250
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 70
    iput p1, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->direction:I

    const/high16 p1, 0x41200000    # 10.0f

    .line 71
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->horizontalPadding:I

    const-wide/16 v0, 0x0

    .line 503
    iput-wide v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->lastLangChangedTime:J

    .line 251
    iput p2, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->currentAccount:I

    .line 252
    iput-object p3, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->enterView:Lorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;

    .line 253
    iput-object p4, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 255
    new-instance p1, Lorg/telegram/ui/Components/SuggestEmojiView$$ExternalSyntheticLambda1;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/SuggestEmojiView$$ExternalSyntheticLambda1;-><init>(I)V

    const-wide/16 p2, 0x104

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private createListView()V
    .locals 10

    .line 267
    iget-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 271
    :cond_0
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->path:Landroid/graphics/Path;

    .line 272
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->circlePath:Landroid/graphics/Path;

    .line 274
    new-instance v2, Lorg/telegram/ui/Components/SuggestEmojiView$2;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Components/SuggestEmojiView$2;-><init>(Lorg/telegram/ui/Components/SuggestEmojiView;Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->containerView:Landroid/widget/FrameLayout;

    .line 307
    new-instance v1, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v7, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v3, 0x78

    const-wide/16 v5, 0x15e

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->showFloat1:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 308
    new-instance v3, Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v4, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->containerView:Landroid/widget/FrameLayout;

    const-wide/16 v5, 0x96

    move-object v9, v7

    const-wide/16 v7, 0x258

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    move-object v7, v9

    iput-object v3, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->showFloat2:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 309
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    iput-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->overshootInterpolator:Landroid/view/animation/OvershootInterpolator;

    .line 310
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v1, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->containerView:Landroid/widget/FrameLayout;

    const-wide/16 v2, 0x12c

    invoke-direct {v0, v1, v2, v3, v7}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->leftGradientAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 311
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v1, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->containerView:Landroid/widget/FrameLayout;

    invoke-direct {v0, v1, v2, v3, v7}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->rightGradientAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 312
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v1, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->containerView:Landroid/widget/FrameLayout;

    const-wide/16 v2, 0xc8

    invoke-direct {v0, v1, v2, v3, v7}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->arrowXAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 313
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v1, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->containerView:Landroid/widget/FrameLayout;

    const-wide/16 v2, 0x15e

    invoke-direct {v0, v1, v2, v3, v7}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->listViewCenterAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 314
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v1, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->containerView:Landroid/widget/FrameLayout;

    invoke-direct {v0, v1, v2, v3, v7}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->listViewWidthAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 316
    new-instance v0, Lorg/telegram/ui/Components/SuggestEmojiView$3;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/SuggestEmojiView$3;-><init>(Lorg/telegram/ui/Components/SuggestEmojiView;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 338
    new-instance v1, Lorg/telegram/ui/Components/SuggestEmojiView$Adapter;

    invoke-direct {v1, p0, p0}, Lorg/telegram/ui/Components/SuggestEmojiView$Adapter;-><init>(Lorg/telegram/ui/Components/SuggestEmojiView;Lorg/telegram/ui/Components/SuggestEmojiView;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->adapter:Lorg/telegram/ui/Components/SuggestEmojiView$Adapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 339
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 340
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 341
    iget-object v1, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 342
    new-instance v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    const-wide/16 v1, 0x2d

    .line 343
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    .line 344
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setTranslationInterpolator(Landroid/view/animation/Interpolator;)V

    .line 345
    iget-object v1, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 346
    iget-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    iget-object v2, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setSelectorDrawableColor(I)V

    .line 348
    iget-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/SuggestEmojiView$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/SuggestEmojiView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/SuggestEmojiView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 351
    iget-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/SuggestEmojiView$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v1}, Lorg/telegram/ui/Components/SuggestEmojiView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/SuggestEmojiView;Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 353
    iget-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->containerView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, -0x1

    const/high16 v3, 0x42500000    # 52.0f

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 354
    iget-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->containerView:Landroid/widget/FrameLayout;

    const v1, 0x428551ec    # 66.66f

    const/16 v2, 0x50

    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {v3, v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(FFI)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 355
    iget-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->enterView:Lorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;

    if-eqz v0, :cond_1

    .line 356
    new-instance v1, Lorg/telegram/ui/Components/SuggestEmojiView$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/SuggestEmojiView$4;-><init>(Lorg/telegram/ui/Components/SuggestEmojiView;)V

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private detectKeyboardLangThrottleFirstWithDelay()[Ljava/lang/String;
    .locals 6

    .line 509
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 511
    iget-object v2, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->lastLang:[Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->lastLangChangedTime:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const/16 v4, 0x168

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    goto :goto_0

    .line 515
    :cond_0
    iput-wide v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->lastLangChangedTime:J

    .line 517
    iget-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->lastLang:[Ljava/lang/String;

    return-object v0

    .line 512
    :cond_1
    :goto_0
    iput-wide v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->lastLangChangedTime:J

    .line 513
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getCurrentKeyboardLanguage()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private drawContainerBegin(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 786
    iget-object v2, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->enterView:Lorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;->getEditField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 787
    iget-object v2, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->arrowToSpan:Lorg/telegram/messenger/Emoji$EmojiSpan;

    if-eqz v2, :cond_0

    iget-boolean v2, v2, Lorg/telegram/messenger/Emoji$EmojiSpan;->drawn:Z

    if-eqz v2, :cond_0

    .line 788
    iget-object v2, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->enterView:Lorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;

    invoke-interface {v2}, Lorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;->getEditField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->enterView:Lorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;

    invoke-interface {v3}, Lorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;->getEditField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->arrowToSpan:Lorg/telegram/messenger/Emoji$EmojiSpan;

    iget v4, v3, Lorg/telegram/messenger/Emoji$EmojiSpan;->lastDrawX:F

    add-float/2addr v2, v4

    iput v2, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->arrowX:F

    .line 789
    iget v2, v3, Lorg/telegram/messenger/Emoji$EmojiSpan;->lastDrawY:F

    iput v2, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->lastSpanY:F

    goto :goto_0

    .line 790
    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->arrowToStart:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->arrowToEnd:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 791
    iget-object v2, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->enterView:Lorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;

    invoke-interface {v2}, Lorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;->getEditField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->enterView:Lorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;

    invoke-interface {v3}, Lorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;->getEditField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->arrowX:F

    .line 795
    :cond_1
    :goto_0
    iget-boolean v2, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->show:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    iget-boolean v2, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->forceClose:Z

    if-nez v2, :cond_2

    iget-object v2, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->keywordResults:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->clear:Z

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    move v2, v4

    .line 796
    :goto_1
    iget-object v5, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->showFloat1:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v7, 0x0

    if-eqz v2, :cond_3

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_3
    move v8, v7

    :goto_2
    invoke-virtual {v5, v8}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v5

    .line 797
    iget-object v8, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->showFloat2:Lorg/telegram/ui/Components/AnimatedFloat;

    if-eqz v2, :cond_4

    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_4
    move v9, v7

    :goto_3
    invoke-virtual {v8, v9}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v8

    .line 798
    iget-object v9, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->arrowXAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v10, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->arrowX:F

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v9

    cmpg-float v10, v5, v7

    if-gtz v10, :cond_5

    cmpg-float v8, v8, v7

    if-gtz v8, :cond_5

    if-nez v2, :cond_5

    .line 801
    iget-object v2, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->containerView:Landroid/widget/FrameLayout;

    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 804
    :cond_5
    iget-object v2, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    .line 806
    iget-object v2, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    .line 807
    iget-object v8, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v8

    iget-object v10, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->keywordResults:Ljava/util/ArrayList;

    if-nez v10, :cond_6

    move v10, v4

    goto :goto_4

    :cond_6
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    :goto_4
    const/high16 v11, 0x42300000    # 44.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    mul-int/2addr v10, v11

    add-int/2addr v8, v10

    int-to-float v8, v8

    .line 809
    iget-object v10, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->listViewWidthAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v10

    cmpg-float v10, v10, v7

    if-gtz v10, :cond_7

    move v10, v3

    goto :goto_5

    :cond_7
    move v10, v4

    :goto_5
    sub-float v11, v8, v2

    cmpg-float v12, v11, v7

    if-gtz v12, :cond_8

    .line 810
    iget-object v11, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->listViewWidthAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v11}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v11

    goto :goto_6

    :cond_8
    iget-object v12, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->listViewWidthAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v12, v11, v10}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    move-result v11

    .line 811
    :goto_6
    iget-object v12, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->listViewCenterAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    add-float/2addr v2, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v2, v8

    invoke-virtual {v12, v2, v10}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    move-result v2

    .line 813
    iget-object v10, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->enterView:Lorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;

    if-eqz v10, :cond_a

    invoke-interface {v10}, Lorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;->getEditField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v10

    if-eqz v10, :cond_a

    .line 814
    iget v10, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->direction:I

    if-nez v10, :cond_9

    .line 815
    iget-object v10, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->containerView:Landroid/widget/FrameLayout;

    iget-object v12, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->enterView:Lorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;

    invoke-interface {v12}, Lorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;->getEditField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v12

    neg-int v12, v12

    iget-object v13, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->enterView:Lorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;

    invoke-interface {v13}, Lorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;->getEditField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getScrollY()I

    move-result v13

    sub-int/2addr v12, v13

    int-to-float v12, v12

    iget v13, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->lastSpanY:F

    add-float/2addr v12, v13

    const/high16 v13, 0x40a00000    # 5.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v12, v13

    invoke-virtual {v10, v12}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_7

    :cond_9
    if-ne v10, v3, :cond_a

    .line 817
    iget-object v10, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    neg-int v12, v12

    iget-object v13, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->enterView:Lorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;

    invoke-interface {v13}, Lorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;->getEditField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getScrollY()I

    move-result v13

    sub-int/2addr v12, v13

    int-to-float v12, v12

    iget v13, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->lastSpanY:F

    add-float/2addr v12, v13

    const/high16 v13, 0x41a00000    # 20.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v12, v13

    iget-object v13, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v12, v13

    invoke-virtual {v10, v12}, Landroid/view/View;->setTranslationY(F)V

    .line 820
    :cond_a
    :goto_7
    iget v10, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->arrowX:F

    const/high16 v12, 0x40800000    # 4.0f

    div-float v12, v11, v12

    div-float/2addr v11, v8

    const/high16 v13, 0x42840000    # 66.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    invoke-static {v11, v14}, Ljava/lang/Math;->min(FF)F

    move-result v14

    invoke-static {v12, v14}, Ljava/lang/Math;->max(FF)F

    move-result v14

    sub-float/2addr v10, v14

    iget-object v14, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v14

    int-to-float v14, v14

    sub-float/2addr v10, v14

    invoke-static {v10, v7}, Ljava/lang/Math;->max(FF)F

    move-result v10

    float-to-int v10, v10

    .line 821
    iget-object v14, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v14}, Landroid/view/View;->getPaddingLeft()I

    move-result v14

    if-eq v14, v10, :cond_b

    .line 822
    iget-object v14, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v14}, Landroid/view/View;->getPaddingLeft()I

    move-result v14

    sub-int/2addr v14, v10

    .line 823
    iget-object v15, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v15, v10, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 824
    iget-object v15, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v15, v14, v4}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 826
    :cond_b
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    invoke-static {v11, v13}, Ljava/lang/Math;->min(FF)F

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(FF)F

    move-result v12

    sub-float v12, v9, v12

    iget-object v13, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v12, v13

    invoke-static {v12, v7}, Ljava/lang/Math;->max(FF)F

    move-result v12

    float-to-int v12, v12

    .line 827
    iget-object v13, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sub-int/2addr v12, v10

    int-to-float v10, v12

    invoke-virtual {v13, v10}, Landroid/view/View;->setTranslationX(F)V

    sub-float v10, v2, v11

    .line 829
    iget-object v12, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v12}, Landroid/view/View;->getPaddingLeft()I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v10, v12

    iget-object v12, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v12}, Landroid/view/View;->getTranslationX()F

    move-result v12

    add-float/2addr v10, v12

    .line 830
    iget-object v12, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v12

    int-to-float v12, v12

    iget-object v13, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v13}, Landroid/view/View;->getTranslationY()F

    move-result v13

    add-float/2addr v12, v13

    iget-object v13, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v13}, Landroid/view/View;->getPaddingTop()I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v12, v13

    iget v13, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->direction:I

    const v14, 0x40d51eb8    # 6.66f

    if-nez v13, :cond_c

    move v13, v4

    goto :goto_8

    :cond_c
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    :goto_8
    int-to-float v13, v13

    add-float/2addr v12, v13

    add-float/2addr v2, v11

    .line 831
    iget-object v13, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v13}, Landroid/view/View;->getPaddingLeft()I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v2, v13

    iget-object v13, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v13}, Landroid/view/View;->getTranslationX()F

    move-result v13

    add-float/2addr v2, v13

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v13

    iget-object v15, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v15}, Landroid/view/View;->getPaddingRight()I

    move-result v15

    sub-int/2addr v13, v15

    int-to-float v13, v13

    invoke-static {v2, v13}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 832
    iget-object v13, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v13

    int-to-float v13, v13

    iget-object v15, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v15}, Landroid/view/View;->getTranslationY()F

    move-result v15

    add-float/2addr v13, v15

    iget v15, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->direction:I

    if-nez v15, :cond_d

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    :cond_d
    int-to-float v4, v4

    sub-float/2addr v13, v4

    const/high16 v4, 0x41100000    # 9.0f

    .line 834
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v4, v11}, Ljava/lang/Math;->min(FF)F

    move-result v4

    mul-float/2addr v4, v8

    .line 836
    iget v11, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->direction:I

    const/high16 v15, -0x3d4c0000    # -90.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v6, -0x3ccc0000    # -180.0f

    const v17, 0x410a8f5c    # 8.66f

    move/from16 v18, v8

    const/high16 v8, 0x42b40000    # 90.0f

    if-nez v11, :cond_e

    .line 837
    sget-object v11, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    move/from16 v19, v14

    sub-float v14, v13, v4

    add-float v3, v10, v4

    invoke-virtual {v11, v10, v14, v3, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 838
    iget-object v7, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->path:Landroid/graphics/Path;

    invoke-virtual {v7, v11, v8, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    add-float v7, v12, v4

    .line 840
    invoke-virtual {v11, v10, v12, v3, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 841
    iget-object v3, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->path:Landroid/graphics/Path;

    invoke-virtual {v3, v11, v6, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    sub-float v3, v2, v4

    .line 843
    invoke-virtual {v11, v3, v12, v2, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 844
    iget-object v4, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->path:Landroid/graphics/Path;

    invoke-virtual {v4, v11, v15, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 846
    invoke-virtual {v11, v3, v14, v2, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 847
    iget-object v3, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->path:Landroid/graphics/Path;

    const/4 v4, 0x0

    invoke-virtual {v3, v11, v4, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 849
    iget-object v3, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->path:Landroid/graphics/Path;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v9

    invoke-virtual {v3, v4, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 850
    iget-object v3, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->path:Landroid/graphics/Path;

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v13

    invoke-virtual {v3, v9, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 851
    iget-object v3, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->path:Landroid/graphics/Path;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v9, v4

    invoke-virtual {v3, v4, v13}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_9

    :cond_e
    move/from16 v19, v14

    if-ne v11, v3, :cond_f

    .line 853
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    sub-float v7, v2, v4

    add-float v11, v12, v4

    invoke-virtual {v3, v7, v12, v2, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 854
    iget-object v14, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->path:Landroid/graphics/Path;

    invoke-virtual {v14, v3, v15, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    sub-float v14, v13, v4

    .line 856
    invoke-virtual {v3, v7, v14, v2, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 857
    iget-object v7, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->path:Landroid/graphics/Path;

    const/4 v15, 0x0

    invoke-virtual {v7, v3, v15, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    add-float/2addr v4, v10

    .line 859
    invoke-virtual {v3, v10, v14, v4, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 860
    iget-object v7, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->path:Landroid/graphics/Path;

    invoke-virtual {v7, v3, v8, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 862
    invoke-virtual {v3, v10, v12, v4, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 863
    iget-object v4, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->path:Landroid/graphics/Path;

    invoke-virtual {v4, v3, v6, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 865
    iget-object v3, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->path:Landroid/graphics/Path;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v9, v4

    invoke-virtual {v3, v4, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 866
    iget-object v3, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->path:Landroid/graphics/Path;

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v12, v4

    invoke-virtual {v3, v9, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 867
    iget-object v3, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->path:Landroid/graphics/Path;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v9

    invoke-virtual {v3, v4, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 869
    :cond_f
    :goto_9
    iget-object v3, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->path:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 871
    iget-object v3, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->backgroundPaint:Landroid/graphics/Paint;

    if-nez v3, :cond_10

    .line 872
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->backgroundPaint:Landroid/graphics/Paint;

    .line 873
    new-instance v4, Landroid/graphics/CornerPathEffect;

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v4, v6}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 874
    iget-object v3, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->backgroundPaint:Landroid/graphics/Paint;

    const v4, 0x408a8f5c    # 4.33f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    const v6, 0x3eaaaaab

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x33000000

    const/4 v15, 0x0

    invoke-virtual {v3, v4, v15, v6, v7}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 875
    iget-object v3, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->backgroundPaint:Landroid/graphics/Paint;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_stickersHintPanel:I

    iget-object v6, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    :cond_10
    cmpg-float v3, v5, v16

    if-gez v3, :cond_12

    .line 879
    iget-object v3, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->circlePath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->rewind()V

    .line 880
    iget v3, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->direction:I

    if-nez v3, :cond_11

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v13

    goto :goto_a

    :cond_11
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v12, v3

    :goto_a
    sub-float v4, v9, v10

    float-to-double v6, v4

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 883
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    sub-float v4, v3, v12

    move v8, v5

    float-to-double v4, v4

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    add-double v14, v14, v16

    sub-float v2, v9, v2

    move/from16 v16, v13

    float-to-double v12, v2

    .line 884
    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v17

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double v4, v17, v4

    .line 882
    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 887
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    sub-float v2, v3, v16

    float-to-double v14, v2

    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    add-double v6, v6, v16

    .line 888
    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    add-double/2addr v12, v10

    .line 886
    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    .line 881
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v2, v4

    .line 891
    iget-object v4, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->circlePath:Landroid/graphics/Path;

    mul-float/2addr v2, v8

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v9, v3, v2, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 892
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 893
    iget-object v2, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->circlePath:Landroid/graphics/Path;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 894
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v4, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v5, v2

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, v8

    float-to-int v6, v2

    const/16 v7, 0x1f

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 897
    :cond_12
    iget-object v2, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->path:Landroid/graphics/Path;

    iget-object v3, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 898
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 899
    iget-object v2, v0, Lorg/telegram/ui/Components/SuggestEmojiView;->path:Landroid/graphics/Path;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    return-void
.end method

.method private getPreviewDelegate()Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->previewDelegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lorg/telegram/ui/Components/SuggestEmojiView$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/SuggestEmojiView$1;-><init>(Lorg/telegram/ui/Components/SuggestEmojiView;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->previewDelegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    .line 239
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->previewDelegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    return-object v0
.end method

.method private synthetic lambda$createListView$1(Landroid/view/View;I)V
    .locals 0

    .line 349
    check-cast p1, Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;

    invoke-static {p1}, Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;->-$$Nest$fgetemoji(Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SuggestEmojiView;->onClick(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$createListView$2(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 351
    invoke-static {}, Lorg/telegram/ui/ContentPreviewViewer;->getInstance()Lorg/telegram/ui/ContentPreviewViewer;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {p0}, Lorg/telegram/ui/Components/SuggestEmojiView;->getPreviewDelegate()Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v3, 0x0

    move-object v4, p1

    move-object v1, p3

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/ContentPreviewViewer;->onTouch(Landroid/view/MotionEvent;Lorg/telegram/ui/Components/RecyclerListView;ILjava/lang/Object;Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Z

    move-result p1

    return p1
.end method

.method private synthetic lambda$searchAnimated$5(ILjava/lang/String;Ljava/util/ArrayList;)V
    .locals 1

    .line 641
    iget v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->lastQueryId:I

    if-ne p1, v0, :cond_2

    .line 642
    iput-object p2, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->lastQuery:Ljava/lang/String;

    const/4 p1, 0x2

    .line 643
    iput p1, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->lastQueryType:I

    .line 644
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 645
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 646
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->clear:Z

    .line 647
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->forceClose:Z

    .line 648
    invoke-direct {p0}, Lorg/telegram/ui/Components/SuggestEmojiView;->createListView()V

    .line 649
    iget-object p2, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->containerView:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_0

    .line 650
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 651
    iget-object p1, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 653
    :cond_0
    iput-object p3, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->keywordResults:Ljava/util/ArrayList;

    .line 654
    iget-object p1, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->adapter:Lorg/telegram/ui/Components/SuggestEmojiView$Adapter;

    if-eqz p1, :cond_2

    .line 655
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    .line 658
    :cond_1
    iput-boolean p2, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->clear:Z

    .line 659
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SuggestEmojiView;->forceClose()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$searchAnimated$6(Ljava/lang/String;I)V
    .locals 7

    .line 638
    new-instance v1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 639
    new-instance v0, Lorg/telegram/messenger/MediaDataController$KeywordResult;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2}, Lorg/telegram/messenger/MediaDataController$KeywordResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 640
    iget v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v6, Lorg/telegram/ui/Components/SuggestEmojiView$$ExternalSyntheticLambda7;

    invoke-direct {v6, p0, p2, p1, v1}, Lorg/telegram/ui/Components/SuggestEmojiView$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/SuggestEmojiView;ILjava/lang/String;Ljava/util/ArrayList;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/MediaDataController;->fillWithAnimatedEmoji(Ljava/util/ArrayList;Ljava/lang/Integer;ZZZLjava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$searchKeywords$3(ILjava/lang/String;Ljava/util/HashSet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 4

    .line 554
    iget p6, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->lastQueryId:I

    if-eq p1, p6, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x1

    .line 555
    iput p1, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->lastQueryType:I

    .line 556
    iput-object p2, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->lastQuery:Ljava/lang/String;

    const/4 p6, 0x0

    if-eqz p5, :cond_2

    .line 558
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, p6

    :cond_1
    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lorg/telegram/messenger/MediaDataController$KeywordResult;

    .line 559
    iget-object v3, v2, Lorg/telegram/messenger/MediaDataController$KeywordResult;->emoji:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 560
    iget-object v3, v2, Lorg/telegram/messenger/MediaDataController$KeywordResult;->emoji:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 561
    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 565
    :cond_2
    invoke-virtual {p4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_6

    .line 566
    iput-boolean p6, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->clear:Z

    .line 567
    iput-boolean p6, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->forceClose:Z

    .line 568
    invoke-direct {p0}, Lorg/telegram/ui/Components/SuggestEmojiView;->createListView()V

    .line 569
    iget-object p1, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->containerView:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_3

    .line 570
    invoke-virtual {p1, p6}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    const/high16 p1, 0x41200000    # 10.0f

    .line 572
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->lastSpanY:F

    .line 573
    iput-object p5, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->keywordResults:Ljava/util/ArrayList;

    .line 574
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->arrowToStart:Ljava/lang/Integer;

    .line 575
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->arrowToEnd:Ljava/lang/Integer;

    .line 576
    iget-object p1, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->containerView:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_4

    .line 577
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 579
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->adapter:Lorg/telegram/ui/Components/SuggestEmojiView$Adapter;

    if-eqz p1, :cond_5

    .line 580
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_5
    :goto_1
    return-void

    :cond_6
    const/4 p2, 0x0

    .line 583
    iput-object p2, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->keywordResults:Ljava/util/ArrayList;

    .line 584
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->clear:Z

    .line 585
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SuggestEmojiView;->forceClose()V

    return-void
.end method

.method private synthetic lambda$searchKeywords$4([Ljava/lang/String;Ljava/lang/String;I)V
    .locals 12

    .line 550
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 551
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 553
    iget v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v6

    new-instance v0, Lorg/telegram/ui/Components/SuggestEmojiView$$ExternalSyntheticLambda6;

    move-object v1, p0

    move-object v3, p2

    move v2, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/SuggestEmojiView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/SuggestEmojiView;ILjava/lang/String;Ljava/util/HashSet;Ljava/util/ArrayList;)V

    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->suggestAnimatedEmoji:Z

    if-eqz p2, :cond_0

    iget p2, v1, Lorg/telegram/ui/Components/SuggestEmojiView;->currentAccount:I

    .line 587
    invoke-static {p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    :goto_0
    move v11, p2

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    goto :goto_0

    :goto_1
    const/4 v9, 0x1

    move-object v7, p1

    move-object v10, v0

    move-object v8, v3

    .line 553
    invoke-virtual/range {v6 .. v11}, Lorg/telegram/messenger/MediaDataController;->getEmojiSuggestions([Ljava/lang/String;Ljava/lang/String;ZLorg/telegram/messenger/MediaDataController$KeywordResultCallback;Z)V

    return-void
.end method

.method private makeEmoji(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6

    .line 673
    iget-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->enterView:Lorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;->getEditField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->enterView:Lorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;->getEditField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 677
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/high16 v2, 0x41900000    # 18.0f

    .line 678
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 679
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    :cond_1
    if-eqz p1, :cond_3

    .line 682
    const-string v2, "animated_"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x9

    .line 684
    :try_start_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 685
    iget p1, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->currentAccount:I

    invoke-static {p1, v2, v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findDocument(IJ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    .line 686
    new-instance v4, Landroid/text/SpannableString;

    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    if-nez p1, :cond_2

    .line 689
    new-instance p1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-direct {p1, v2, v3, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(JLandroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_1

    .line 691
    :cond_2
    new-instance v2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-direct {v2, p1, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(Lorg/telegram/tgnet/TLRPC$Document;Landroid/graphics/Paint$FontMetricsInt;)V

    move-object p1, v2

    .line 693
    :goto_1
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v2, 0x21

    const/4 v3, 0x0

    invoke-virtual {v4, p1, v3, v0, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    return-object v1

    :cond_3
    const/4 v1, 0x1

    .line 699
    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method private onClick(Ljava/lang/String;)V
    .locals 11

    .line 705
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->show:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->enterView:Lorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;->getFieldText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 709
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->arrowToSpan:Lorg/telegram/messenger/Emoji$EmojiSpan;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 710
    iget-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->enterView:Lorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;->getFieldText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spanned;

    iget-object v2, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->arrowToSpan:Lorg/telegram/messenger/Emoji$EmojiSpan;

    invoke-interface {v0, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 711
    iget-object v2, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->enterView:Lorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;

    invoke-interface {v2}, Lorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;->getFieldText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spanned;

    iget-object v3, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->arrowToSpan:Lorg/telegram/messenger/Emoji$EmojiSpan;

    invoke-interface {v2, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    goto :goto_0

    .line 712
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->arrowToStart:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    iget-object v2, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->arrowToEnd:Ljava/lang/Integer;

    if-eqz v2, :cond_8

    .line 713
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 714
    iget-object v2, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->arrowToEnd:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 715
    iput-object v1, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->arrowToEnd:Ljava/lang/Integer;

    iput-object v1, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->arrowToStart:Ljava/lang/Integer;

    .line 719
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->enterView:Lorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;

    invoke-interface {v3}, Lorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;->getEditText()Landroid/text/Editable;

    move-result-object v3

    if-eqz v3, :cond_8

    if-ltz v0, :cond_8

    if-ltz v2, :cond_8

    .line 720
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-gt v0, v4, :cond_8

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-le v2, v4, :cond_2

    goto/16 :goto_4

    .line 723
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->arrowToSpan:Lorg/telegram/messenger/Emoji$EmojiSpan;

    if-eqz v4, :cond_4

    .line 724
    iget-object v4, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->enterView:Lorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;

    invoke-interface {v4}, Lorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;->getFieldText()Ljava/lang/CharSequence;

    move-result-object v4

    instance-of v4, v4, Landroid/text/Spannable;

    if-eqz v4, :cond_3

    .line 725
    iget-object v4, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->enterView:Lorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;

    invoke-interface {v4}, Lorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;->getFieldText()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Landroid/text/Spannable;

    iget-object v5, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->arrowToSpan:Lorg/telegram/messenger/Emoji$EmojiSpan;

    invoke-interface {v4, v5}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 727
    :cond_3
    iput-object v1, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->arrowToSpan:Lorg/telegram/messenger/Emoji$EmojiSpan;

    .line 729
    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 730
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 731
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    :goto_1
    sub-int/2addr v2, v4

    const/4 v5, 0x0

    if-ltz v2, :cond_7

    add-int v6, v2, v4

    .line 733
    invoke-virtual {v1, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 734
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SuggestEmojiView;->makeEmoji(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 736
    const-class v8, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-interface {v3, v2, v6, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-eqz v8, :cond_5

    .line 737
    array-length v8, v8

    if-lez v8, :cond_5

    goto :goto_3

    .line 740
    :cond_5
    const-class v8, Lorg/telegram/messenger/Emoji$EmojiSpan;

    invoke-interface {v3, v2, v6, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lorg/telegram/messenger/Emoji$EmojiSpan;

    if-eqz v8, :cond_6

    .line 742
    array-length v9, v8

    :goto_2
    if-ge v5, v9, :cond_6

    aget-object v10, v8, v5

    .line 743
    invoke-interface {v3, v10}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 746
    :cond_6
    const-string v5, ""

    invoke-interface {v3, v2, v6, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 747
    invoke-interface {v3, v2, v7}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_1

    :cond_7
    :goto_3
    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 756
    :try_start_0
    invoke-static {v0}, Lcom/exteragram/messenger/utils/system/VibratorUtils;->getType(I)I

    move-result v0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 758
    :catch_0
    invoke-static {p1}, Lorg/telegram/messenger/Emoji;->addRecentEmoji(Ljava/lang/String;)V

    .line 759
    iput-boolean v5, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->show:Z

    .line 760
    iput-boolean v1, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->forceClose:Z

    .line 761
    iput v5, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->lastQueryType:I

    .line 762
    iget-object p1, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->containerView:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_8

    .line 763
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_8
    :goto_4
    return-void
.end method

.method private searchAnimated(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    goto :goto_0

    .line 622
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->lastQuery:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget v1, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->lastQueryType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->clear:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->keywordResults:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p1, 0x0

    .line 623
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->forceClose:Z

    .line 624
    invoke-direct {p0}, Lorg/telegram/ui/Components/SuggestEmojiView;->createListView()V

    .line 625
    iget-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->containerView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 626
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 627
    iget-object p1, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_1
    :goto_0
    return-void

    .line 631
    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->lastQueryId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->lastQueryId:I

    .line 633
    iget-object v1, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->searchRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_3

    .line 634
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 637
    :cond_3
    new-instance v1, Lorg/telegram/ui/Components/SuggestEmojiView$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, v0}, Lorg/telegram/ui/Components/SuggestEmojiView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/SuggestEmojiView;Ljava/lang/String;I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->searchRunnable:Ljava/lang/Runnable;

    .line 664
    iget-object p1, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->keywordResults:Ljava/util/ArrayList;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    .line 667
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->searchRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 665
    :cond_5
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->searchRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x258

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private searchKeywords(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 525
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->lastQuery:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v2, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->lastQueryType:I

    if-ne v2, v1, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->clear:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->keywordResults:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    .line 526
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->forceClose:Z

    .line 527
    invoke-direct {p0}, Lorg/telegram/ui/Components/SuggestEmojiView;->createListView()V

    .line 528
    iget-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    const/high16 p1, 0x41200000    # 10.0f

    .line 529
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->lastSpanY:F

    .line 530
    iget-object p1, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void

    .line 533
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->lastQueryId:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->lastQueryId:I

    .line 534
    iget-object v1, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->loadingKey:Lorg/telegram/messenger/MediaDataController$SearchStickersKey;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 535
    iget v1, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->loadingKey:Lorg/telegram/messenger/MediaDataController$SearchStickersKey;

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/MediaDataController;->cancelSearchStickers(Lorg/telegram/messenger/MediaDataController$SearchStickersKey;)V

    .line 536
    iput-object v2, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->loadingKey:Lorg/telegram/messenger/MediaDataController$SearchStickersKey;

    .line 539
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Components/SuggestEmojiView;->detectKeyboardLangThrottleFirstWithDelay()[Ljava/lang/String;

    move-result-object v1

    .line 540
    iget-object v3, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->lastLang:[Ljava/lang/String;

    if-eqz v3, :cond_3

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 541
    :cond_3
    iget v3, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/telegram/messenger/MediaDataController;->fetchNewEmojiKeywords([Ljava/lang/String;)V

    .line 543
    :cond_4
    iput-object v1, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->lastLang:[Ljava/lang/String;

    .line 545
    iget-object v3, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->searchRunnable:Ljava/lang/Runnable;

    if-eqz v3, :cond_5

    .line 546
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 547
    iput-object v2, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->searchRunnable:Ljava/lang/Runnable;

    .line 549
    :cond_5
    new-instance v2, Lorg/telegram/ui/Components/SuggestEmojiView$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v1, p1, v0}, Lorg/telegram/ui/Components/SuggestEmojiView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/SuggestEmojiView;[Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->searchRunnable:Ljava/lang/Runnable;

    .line 611
    iget-object p1, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->keywordResults:Ljava/util/ArrayList;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_0

    .line 614
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->searchRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 612
    :cond_7
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->searchRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x258

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private update()V
    .locals 10

    const/4 v0, 0x0

    .line 435
    iput-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->updateRunnable:Ljava/lang/Runnable;

    .line 436
    iget-object v1, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->enterView:Lorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_8

    invoke-interface {v1}, Lorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;->getEditField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->enterView:Lorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;

    invoke-interface {v1}, Lorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;->getFieldText()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 444
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->enterView:Lorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;

    invoke-interface {v1}, Lorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;->getEditField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 445
    iget-object v4, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->enterView:Lorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;

    invoke-interface {v4}, Lorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;->getEditField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    if-eq v1, v4, :cond_1

    .line 447
    iput-boolean v3, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->show:Z

    .line 448
    iget-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->containerView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_9

    .line 449
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void

    .line 453
    :cond_1
    iget-object v5, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->enterView:Lorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;

    invoke-interface {v5}, Lorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;->getFieldText()Ljava/lang/CharSequence;

    move-result-object v5

    .line 454
    instance-of v6, v5, Landroid/text/Spanned;

    if-eqz v6, :cond_2

    move-object v7, v5

    check-cast v7, Landroid/text/Spanned;

    add-int/lit8 v8, v4, -0x18

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    const-class v9, Lorg/telegram/messenger/Emoji$EmojiSpan;

    invoke-interface {v7, v8, v4, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lorg/telegram/messenger/Emoji$EmojiSpan;

    goto :goto_0

    :cond_2
    move-object v7, v0

    :goto_0
    if-eqz v7, :cond_3

    .line 455
    array-length v8, v7

    if-lez v8, :cond_3

    sget-boolean v8, Lorg/telegram/messenger/SharedConfig;->suggestAnimatedEmoji:Z

    if-eqz v8, :cond_3

    iget v8, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 456
    array-length v4, v7

    sub-int/2addr v4, v2

    aget-object v4, v7, v4

    if-eqz v4, :cond_6

    .line 458
    move-object v6, v5

    check-cast v6, Landroid/text/Spanned;

    invoke-interface {v6, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .line 459
    invoke-interface {v6, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    if-ne v1, v6, :cond_6

    .line 461
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 462
    iput-boolean v2, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->show:Z

    .line 463
    invoke-direct {p0}, Lorg/telegram/ui/Components/SuggestEmojiView;->createListView()V

    .line 465
    iput-object v4, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->arrowToSpan:Lorg/telegram/messenger/Emoji$EmojiSpan;

    .line 466
    iput-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->arrowToEnd:Ljava/lang/Integer;

    iput-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->arrowToStart:Ljava/lang/Integer;

    .line 467
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/SuggestEmojiView;->searchAnimated(Ljava/lang/String;)V

    .line 468
    iget-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->containerView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_9

    .line 469
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_3
    if-eqz v6, :cond_4

    .line 475
    move-object v1, v5

    check-cast v1, Landroid/text/Spanned;

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    const-class v7, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-interface {v1, v6, v4, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    goto :goto_1

    :cond_4
    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_5

    .line 476
    array-length v1, v1

    if-nez v1, :cond_6

    :cond_5
    const/16 v1, 0x34

    if-ge v4, v1, :cond_6

    .line 477
    iput-boolean v2, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->show:Z

    .line 478
    invoke-direct {p0}, Lorg/telegram/ui/Components/SuggestEmojiView;->createListView()V

    .line 480
    iput-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->arrowToSpan:Lorg/telegram/messenger/Emoji$EmojiSpan;

    .line 481
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/SuggestEmojiView;->searchKeywords(Ljava/lang/String;)V

    .line 482
    iget-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->containerView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_9

    .line 483
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void

    .line 488
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->searchRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_7

    .line 489
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 490
    iput-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->searchRunnable:Ljava/lang/Runnable;

    .line 492
    :cond_7
    iput-boolean v3, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->show:Z

    .line 493
    iget-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->containerView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_9

    .line 494
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void

    .line 437
    :cond_8
    :goto_2
    iput-boolean v3, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->show:Z

    .line 438
    iput-boolean v2, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->forceClose:Z

    .line 439
    iget-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->containerView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_9

    .line 440
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_9
    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 979
    sget p2, Lorg/telegram/messenger/NotificationCenter;->newEmojiSuggestionsAvailable:I

    if-ne p1, p2, :cond_0

    .line 980
    iget-object p1, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->keywordResults:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 981
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SuggestEmojiView;->fireUpdate()V

    return-void

    .line 983
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    if-ne p1, p2, :cond_1

    .line 984
    iget-object p1, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 985
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_1

    .line 986
    iget-object p2, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 934
    iget-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-nez v0, :cond_0

    .line 935
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 938
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->listViewWidthAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v0

    .line 939
    iget-object v1, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->listViewCenterAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v1

    .line 941
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    sub-float v3, v1, v0

    iget-object v4, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 942
    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Landroid/view/View;->getTranslationX()F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 943
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v1, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 944
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v1, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    add-float/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v5, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v0, v5

    int-to-float v0, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 945
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v1, v1

    .line 941
    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 947
    iget-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 949
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->show:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 950
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 952
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    const/4 p1, 0x0

    return p1

    .line 955
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x3

    .line 956
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 958
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public drawContainerEnd(Landroid/graphics/Canvas;)V
    .locals 13

    .line 903
    iget-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->listViewWidthAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v0

    .line 904
    iget-object v1, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->listViewCenterAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    sub-float v2, v1, v0

    .line 906
    iget-object v3, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v3

    add-float/2addr v2, v3

    .line 907
    iget-object v3, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    add-float/2addr v1, v0

    .line 908
    iget-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v1, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    add-float/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v4, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v0, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 909
    iget-object v1, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v1, v1

    .line 911
    iget-object v4, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->leftGradientAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v5, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    move v5, v7

    :goto_0
    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v4

    cmpl-float v5, v4, v7

    const/high16 v8, 0x437f0000    # 255.0f

    const/high16 v9, 0x42000000    # 32.0f

    if-lez v5, :cond_1

    .line 913
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_gradientRightDrawable:Landroid/graphics/drawable/Drawable;

    float-to-int v2, v2

    float-to-int v10, v3

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    add-int/2addr v11, v2

    float-to-int v12, v1

    invoke-virtual {v5, v2, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 914
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_gradientRightDrawable:Landroid/graphics/drawable/Drawable;

    mul-float/2addr v4, v8

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 915
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_gradientRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 918
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->rightGradientAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v4, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v6

    goto :goto_1

    :cond_2
    move v4, v7

    :goto_1
    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v2

    cmpl-float v4, v2, v7

    if-lez v4, :cond_3

    .line 920
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->chat_gradientLeftDrawable:Landroid/graphics/drawable/Drawable;

    float-to-int v0, v0

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int v5, v0, v5

    float-to-int v3, v3

    float-to-int v1, v1

    invoke-virtual {v4, v5, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 921
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_gradientLeftDrawable:Landroid/graphics/drawable/Drawable;

    mul-float/2addr v2, v8

    float-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 922
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_gradientLeftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 925
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 926
    iget-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->showFloat1:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v0

    cmpg-float v0, v0, v6

    if-gez v0, :cond_4

    .line 927
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 928
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    return-void
.end method

.method protected emojiCacheType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public fireUpdate()V
    .locals 3

    .line 428
    iget-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->updateRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 429
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 431
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/SuggestEmojiView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/SuggestEmojiView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/SuggestEmojiView;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->updateRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x10

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public forbidCopy()V
    .locals 1

    const/4 v0, 0x1

    .line 259
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->isCopyForbidden:Z

    return-void
.end method

.method public forbidSetAsStatus()V
    .locals 1

    const/4 v0, 0x1

    .line 263
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->isSetAsStatusForbidden:Z

    return-void
.end method

.method public forceClose()V
    .locals 1

    .line 415
    iget-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->updateRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 416
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 417
    iput-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->updateRunnable:Ljava/lang/Runnable;

    :cond_0
    const/4 v0, 0x0

    .line 419
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->show:Z

    const/4 v0, 0x1

    .line 420
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->forceClose:Z

    .line 421
    iget-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->containerView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 422
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public getDelegate()Lorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;
    .locals 1

    .line 384
    iget-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->enterView:Lorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;

    return-object v0
.end method

.method public getDirection()I
    .locals 1

    .line 396
    iget v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->direction:I

    return v0
.end method

.method public isShown()Z
    .locals 1

    .line 392
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->show:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 965
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 966
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 967
    iget v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->newEmojiSuggestionsAvailable:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 972
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 973
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 974
    iget v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->newEmojiSuggestionsAvailable:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onTextSelectionChanged(II)V
    .locals 0

    .line 388
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SuggestEmojiView;->fireUpdate()V

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;)V
    .locals 0

    .line 376
    iput-object p1, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->enterView:Lorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;

    return-void
.end method

.method public setDirection(I)V
    .locals 1

    .line 400
    iget v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->direction:I

    if-eq v0, p1, :cond_0

    .line 401
    iput p1, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->direction:I

    .line 402
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setHorizontalPadding(I)V
    .locals 0

    .line 380
    iput p1, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->horizontalPadding:I

    return-void
.end method

.method public updateColors()V
    .locals 5

    .line 407
    iget-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->backgroundPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 408
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_stickersHintPanel:I

    iget-object v2, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 410
    :cond_0
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_gradientLeftDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_stickersHintPanel:I

    iget-object v3, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 411
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_gradientRightDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v3, p0, Lorg/telegram/ui/Components/SuggestEmojiView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-direct {v1, v2, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method
