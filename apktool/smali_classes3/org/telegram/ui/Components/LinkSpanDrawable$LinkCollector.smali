.class public Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/LinkSpanDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LinkCollector"
.end annotation


# instance fields
.field private additionalInvalidate:Ljava/lang/Runnable;

.field private mLinks:Ljava/util/ArrayList;

.field private mLinksCount:I

.field private mLoading:Ljava/util/ArrayList;

.field private mLoadingCount:I

.field private mParent:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$SemeTjq1Uxrj6ZhY02_Ghx9lY9E(Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;Lorg/telegram/ui/Components/LoadingDrawable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->lambda$removeLoadingAt$2(Lorg/telegram/ui/Components/LoadingDrawable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SpClWc8WdIraSoHf6wHDOOetURY(Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;Lorg/telegram/ui/Components/LinkSpanDrawable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->lambda$removeLink$0(Lorg/telegram/ui/Components/LinkSpanDrawable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nvimmzLcg11Dw0MF_hzS2bLRl7w(Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;Lorg/telegram/ui/Components/LinkSpanDrawable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->lambda$removeLink$1(Lorg/telegram/ui/Components/LinkSpanDrawable;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->mLinks:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 259
    iput v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->mLinksCount:I

    .line 261
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->mLoading:Ljava/util/ArrayList;

    .line 262
    iput v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->mLoadingCount:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->mLinks:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 259
    iput v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->mLinksCount:I

    .line 261
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->mLoading:Ljava/util/ArrayList;

    .line 262
    iput v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->mLoadingCount:I

    .line 250
    iput-object p1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->mParent:Landroid/view/View;

    return-void
.end method

.method private invalidate()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 489
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->invalidate(Ljava/lang/Object;Z)V

    return-void
.end method

.method private invalidate(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    .line 492
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->invalidate(Ljava/lang/Object;Z)V

    return-void
.end method

.method private invalidate(Ljava/lang/Object;Z)V
    .locals 1

    .line 495
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 496
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 497
    :cond_0
    instance-of v0, p1, Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_1

    .line 498
    check-cast p1, Lorg/telegram/ui/ArticleViewer$DrawingText;

    .line 499
    invoke-virtual {p1}, Lorg/telegram/ui/ArticleViewer$DrawingText;->invalidateParent()V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 500
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->mParent:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 501
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 503
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->additionalInvalidate:Ljava/lang/Runnable;

    if-eqz p1, :cond_3

    .line 504
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method

.method private synthetic lambda$removeLink$0(Lorg/telegram/ui/Components/LinkSpanDrawable;)V
    .locals 1

    const/4 v0, 0x0

    .line 330
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->removeLink(Lorg/telegram/ui/Components/LinkSpanDrawable;Z)V

    return-void
.end method

.method private synthetic lambda$removeLink$1(Lorg/telegram/ui/Components/LinkSpanDrawable;)V
    .locals 1

    const/4 v0, 0x0

    .line 354
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->removeLink(Lorg/telegram/ui/Components/LinkSpanDrawable;Z)V

    return-void
.end method

.method private synthetic lambda$removeLoadingAt$2(Lorg/telegram/ui/Components/LoadingDrawable;)V
    .locals 1

    const/4 v0, 0x0

    .line 393
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->removeLoading(Lorg/telegram/ui/Components/LoadingDrawable;Z)V

    return-void
.end method

.method public static makeLoading(Landroid/text/Layout;Landroid/text/style/CharacterStyle;F)Lorg/telegram/ui/Components/LoadingDrawable;
    .locals 4

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 279
    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    if-nez v0, :cond_0

    goto :goto_0

    .line 282
    :cond_0
    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spanned;

    .line 283
    new-instance v1, Lorg/telegram/ui/Components/LinkPath;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/LinkPath;-><init>(Z)V

    .line 284
    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 285
    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result p1

    .line 286
    invoke-virtual {v1, p0, v3, p2}, Lorg/telegram/ui/Components/LinkPath;->setCurrentLayout(Landroid/text/Layout;IF)V

    .line 287
    invoke-virtual {p0, v3, p1, v1}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 288
    new-instance p0, Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-direct {p0}, Lorg/telegram/ui/Components/LoadingDrawable;-><init>()V

    .line 289
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/LoadingDrawable;->usePath(Landroid/graphics/Path;)V

    .line 290
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/LoadingDrawable;->setAppearByGradient(Z)V

    const/high16 p1, 0x40800000    # 4.0f

    .line 291
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/LoadingDrawable;->setRadiiDp(F)V

    .line 292
    invoke-virtual {p0}, Lorg/telegram/ui/Components/LoadingDrawable;->updateBounds()V

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private removeLink(IZ)V
    .locals 6

    if-ltz p1, :cond_2

    .line 343
    iget v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->mLinksCount:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 347
    iget-object p2, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->mLinks:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    .line 348
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Lorg/telegram/ui/Components/LinkSpanDrawable;

    .line 349
    invoke-static {p2}, Lorg/telegram/ui/Components/LinkSpanDrawable;->-$$Nest$fgetmReleaseStart(Lorg/telegram/ui/Components/LinkSpanDrawable;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 350
    invoke-virtual {p2}, Lorg/telegram/ui/Components/LinkSpanDrawable;->release()V

    .line 351
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->invalidate(Ljava/lang/Object;)V

    .line 352
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 353
    new-instance p1, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;Lorg/telegram/ui/Components/LinkSpanDrawable;)V

    invoke-static {p2}, Lorg/telegram/ui/Components/LinkSpanDrawable;->-$$Nest$fgetmReleaseStart(Lorg/telegram/ui/Components/LinkSpanDrawable;)J

    move-result-wide v4

    sub-long/2addr v4, v0

    const-wide/16 v0, 0xaf

    add-long/2addr v4, v0

    .line 355
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 353
    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    .line 359
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->mLinks:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    .line 360
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Lorg/telegram/ui/Components/LinkSpanDrawable;

    .line 361
    invoke-virtual {p2}, Lorg/telegram/ui/Components/LinkSpanDrawable;->reset()V

    .line 362
    iget-object p2, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->mLinks:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->mLinksCount:I

    .line 363
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->invalidate(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private removeLoadingAt(IZ)V
    .locals 2

    if-ltz p1, :cond_5

    .line 380
    iget v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->mLoadingCount:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 383
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->mLoading:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    if-nez p1, :cond_1

    goto :goto_0

    .line 387
    :cond_1
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lorg/telegram/ui/Components/LoadingDrawable;

    if-eqz p2, :cond_4

    .line 389
    invoke-virtual {v0}, Lorg/telegram/ui/Components/LoadingDrawable;->isDisappeared()Z

    move-result p1

    if-nez p1, :cond_3

    .line 390
    invoke-virtual {v0}, Lorg/telegram/ui/Components/LoadingDrawable;->isDisappearing()Z

    move-result p1

    if-nez p1, :cond_2

    .line 391
    invoke-virtual {v0}, Lorg/telegram/ui/Components/LoadingDrawable;->disappear()V

    .line 392
    :cond_2
    new-instance p1, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;Lorg/telegram/ui/Components/LoadingDrawable;)V

    .line 394
    invoke-virtual {v0}, Lorg/telegram/ui/Components/LoadingDrawable;->timeToDisappear()J

    move-result-wide v0

    .line 392
    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    :cond_3
    const/4 p1, 0x0

    .line 396
    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->removeLoading(Lorg/telegram/ui/Components/LoadingDrawable;Z)V

    return-void

    .line 399
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->mLoading:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 400
    invoke-virtual {v0}, Lorg/telegram/ui/Components/LoadingDrawable;->reset()V

    .line 401
    invoke-virtual {v0}, Lorg/telegram/ui/Components/LoadingDrawable;->resetDisappear()V

    .line 402
    iget-object p2, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->mLoading:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->mLoadingCount:I

    .line 403
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->invalidate(Ljava/lang/Object;)V

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public addLink(Lorg/telegram/ui/Components/LinkSpanDrawable;)V
    .locals 1

    const/4 v0, 0x0

    .line 265
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->addLink(Lorg/telegram/ui/Components/LinkSpanDrawable;Ljava/lang/Object;)V

    return-void
.end method

.method public addLink(Lorg/telegram/ui/Components/LinkSpanDrawable;Ljava/lang/Object;)V
    .locals 2

    .line 269
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->mLinks:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    iget p1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->mLinksCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->mLinksCount:I

    .line 271
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->invalidate(Ljava/lang/Object;)V

    return-void
.end method

.method public addLoading(Lorg/telegram/ui/Components/LoadingDrawable;)V
    .locals 1

    const/4 v0, 0x0

    .line 297
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->addLoading(Lorg/telegram/ui/Components/LoadingDrawable;Ljava/lang/Object;)V

    return-void
.end method

.method public addLoading(Lorg/telegram/ui/Components/LoadingDrawable;Ljava/lang/Object;)V
    .locals 2

    .line 301
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->mLoading:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    iget p1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->mLoadingCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->mLoadingCount:I

    .line 303
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->invalidate(Ljava/lang/Object;)V

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x1

    .line 408
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->clear(Z)V

    return-void
.end method

.method public clear(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 413
    :goto_0
    iget p1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->mLinksCount:I

    if-ge v0, p1, :cond_2

    const/4 p1, 0x1

    .line 414
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->removeLink(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 416
    :cond_0
    iget p1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->mLinksCount:I

    if-lez p1, :cond_2

    move p1, v0

    .line 417
    :goto_1
    iget v1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->mLinksCount:I

    if-ge p1, v1, :cond_1

    .line 418
    iget-object v1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->mLinks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/LinkSpanDrawable;->reset()V

    .line 419
    iget-object v1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->mLinks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->invalidate(Ljava/lang/Object;Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 421
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->mLinks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 422
    iput v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->mLinksCount:I

    .line 423
    invoke-direct {p0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->invalidate()V

    :cond_2
    return-void
.end method

.method public clearLoading(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 429
    :goto_0
    iget p1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->mLoadingCount:I

    if-ge v0, p1, :cond_2

    const/4 p1, 0x1

    .line 430
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->removeLoadingAt(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 432
    :cond_0
    iget p1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->mLoadingCount:I

    if-lez p1, :cond_2

    move p1, v0

    .line 433
    :goto_1
    iget v1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->mLoadingCount:I

    if-ge p1, v1, :cond_1

    .line 434
    iget-object v1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->mLoading:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/LoadingDrawable;->reset()V

    .line 435
    iget-object v1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->mLoading:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->invalidate(Ljava/lang/Object;Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 437
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->mLoading:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 438
    iput v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->mLoadingCount:I

    .line 439
    invoke-direct {p0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->invalidate()V

    :cond_2
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)Z
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 457
    :goto_0
    iget v3, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->mLoadingCount:I

    const/4 v4, 0x1

    if-ge v1, v3, :cond_0

    .line 458
    iget-object v2, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->mLoading:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/LoadingDrawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_0

    :cond_0
    move v1, v0

    .line 461
    :goto_1
    iget v3, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->mLinksCount:I

    if-ge v1, v3, :cond_3

    .line 462
    iget-object v3, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->mLinks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {v3, p1}, Lorg/telegram/ui/Components/LinkSpanDrawable;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    move v2, v0

    goto :goto_3

    :cond_2
    :goto_2
    move v2, v4

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v2
.end method

.method public draw(Landroid/graphics/Canvas;Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 469
    :goto_0
    iget v3, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->mLoadingCount:I

    const/4 v4, 0x1

    if-ge v1, v3, :cond_1

    .line 470
    iget-object v3, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->mLoading:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-ne v3, p2, :cond_0

    .line 471
    iget-object v2, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->mLoading:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/LoadingDrawable;->draw(Landroid/graphics/Canvas;)V

    move v2, v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 475
    :goto_1
    iget v3, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->mLinksCount:I

    if-ge v1, v3, :cond_5

    .line 476
    iget-object v3, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->mLinks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-ne v3, p2, :cond_4

    .line 477
    iget-object v3, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->mLinks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {v3, p1}, Lorg/telegram/ui/Components/LinkSpanDrawable;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move v2, v0

    goto :goto_3

    :cond_3
    :goto_2
    move v2, v4

    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 480
    :cond_5
    invoke-direct {p0, p2, v0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->invalidate(Ljava/lang/Object;Z)V

    return v2
.end method

.method public isEmpty()Z
    .locals 1

    .line 485
    iget v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->mLinksCount:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removeLink(Lorg/telegram/ui/Components/LinkSpanDrawable;)V
    .locals 1

    const/4 v0, 0x1

    .line 307
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->removeLink(Lorg/telegram/ui/Components/LinkSpanDrawable;Z)V

    return-void
.end method

.method public removeLink(Lorg/telegram/ui/Components/LinkSpanDrawable;Z)V
    .locals 7

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 315
    :goto_0
    iget v1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->mLinksCount:I

    if-ge v0, v1, :cond_2

    .line 316
    iget-object v1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->mLinks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-ne v1, p1, :cond_1

    .line 317
    iget-object v1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->mLinks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    if-eqz p2, :cond_5

    .line 325
    invoke-static {p1}, Lorg/telegram/ui/Components/LinkSpanDrawable;->-$$Nest$fgetmReleaseStart(Lorg/telegram/ui/Components/LinkSpanDrawable;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-gez p2, :cond_4

    .line 326
    invoke-virtual {p1}, Lorg/telegram/ui/Components/LinkSpanDrawable;->release()V

    .line 327
    iget-object p2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->invalidate(Ljava/lang/Object;)V

    .line 328
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 329
    new-instance p2, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;Lorg/telegram/ui/Components/LinkSpanDrawable;)V

    invoke-static {p1}, Lorg/telegram/ui/Components/LinkSpanDrawable;->-$$Nest$fgetmReleaseStart(Lorg/telegram/ui/Components/LinkSpanDrawable;)J

    move-result-wide v5

    sub-long/2addr v5, v0

    const-wide/16 v0, 0xaf

    add-long/2addr v5, v0

    .line 331
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 329
    invoke-static {p2, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_4
    :goto_2
    return-void

    .line 335
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->mLinks:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 336
    invoke-virtual {p1}, Lorg/telegram/ui/Components/LinkSpanDrawable;->reset()V

    .line 337
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->mLinks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->mLinksCount:I

    .line 338
    iget-object p1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->invalidate(Ljava/lang/Object;)V

    return-void
.end method

.method public removeLinks(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    .line 444
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->removeLinks(Ljava/lang/Object;Z)V

    return-void
.end method

.method public removeLinks(Ljava/lang/Object;Z)V
    .locals 2

    const/4 v0, 0x0

    .line 448
    :goto_0
    iget v1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->mLinksCount:I

    if-ge v0, v1, :cond_1

    .line 449
    iget-object v1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->mLinks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-ne v1, p1, :cond_0

    .line 450
    invoke-direct {p0, v0, p2}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->removeLink(IZ)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeLoading(Lorg/telegram/ui/Components/LoadingDrawable;Z)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 371
    :goto_0
    iget v1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->mLoadingCount:I

    if-ge v0, v1, :cond_2

    .line 372
    iget-object v1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->mLoading:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-ne v1, p1, :cond_1

    .line 373
    invoke-direct {p0, v0, p2}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->removeLoadingAt(IZ)V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public setAdditionalInvalidate(Ljava/lang/Runnable;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->additionalInvalidate:Ljava/lang/Runnable;

    return-void
.end method
