.class public abstract Lorg/telegram/ui/Components/EditTextEffects;
.super Landroid/widget/EditText;
.source "SourceFile"


# static fields
.field private static final SPOILER_TIMEOUT:I = 0x2710

.field private static allowHackingTextCanvasCache:Ljava/lang/Boolean;


# instance fields
.field private animatedEmojiColorFilter:Landroid/graphics/ColorFilter;

.field private animatedEmojiDrawables:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

.field private clickDetector:Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;

.field private clipToPadding:Z

.field public drawAnimatedEmojiDrawables:Z

.field private editedWhileQuoteUpdating:Z

.field private emojiColor:Ljava/lang/Integer;

.field private isSpoilersRevealed:Z

.field private lastLayout:Landroid/text/Layout;

.field private lastRippleX:F

.field private lastRippleY:F

.field private lastText2Length:I

.field private lastTextColor:I

.field private lastTextLength:I

.field protected offsetY:F

.field private path:Landroid/graphics/Path;

.field private postedSpoilerTimeout:Z

.field private quoteBlocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/QuoteSpan$Block;",
            ">;"
        }
    .end annotation
.end field

.field private quoteBlocksUpdating:Z

.field public quoteColor:I

.field private quoteUpdateLayout:[Z

.field private quoteUpdatesTries:I

.field private rect:Landroid/graphics/Rect;

.field private selEnd:I

.field private selStart:I

.field private shouldRevealSpoilersByTouch:Z

.field private spoilerTimeout:Ljava/lang/Runnable;

.field private spoilers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/telegram/ui/Components/spoilers/SpoilerEffect;",
            ">;"
        }
    .end annotation
.end field

.field private spoilersPool:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lorg/telegram/ui/Components/spoilers/SpoilerEffect;",
            ">;"
        }
    .end annotation
.end field

.field public suppressOnTextChanged:Z

.field public wrapCanvasToFixClipping:Z

.field private wrappedCanvas:Lorg/telegram/ui/Components/NoClipCanvas;


# direct methods
.method public static synthetic $r8$lambda$4cPFRWlPxnBkgSwpPDmij1iMpXA(Lorg/telegram/ui/Components/EditTextEffects;Lorg/telegram/ui/Components/spoilers/SpoilerEffect;FF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/EditTextEffects;->onSpoilerClicked(Lorg/telegram/ui/Components/spoilers/SpoilerEffect;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$I32ThbVk2-wk83OO20clpCP4R94(Lorg/telegram/ui/Components/EditTextEffects;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/EditTextEffects;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$Pk9jDh9uz-1bgUercWo7dht6vkE(Lorg/telegram/ui/Components/EditTextEffects;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/EditTextEffects;->lambda$dispatchTouchEvent$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$R1UmakiP5bWSE7akw6bK7YW-tKc(Lorg/telegram/ui/Components/EditTextEffects;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/EditTextEffects;->lambda$onSpoilerClicked$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$S3YmEGQUplFFnhofjcLy5LhRXzU(Lorg/telegram/ui/Components/EditTextEffects;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/EditTextEffects;->lambda$new$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZXLEYtlsJXGYbjzPpK8AUxU1Hoo(Lorg/telegram/ui/Components/EditTextEffects;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/EditTextEffects;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$xbGxylfPiKfxbFGVWv7vqCoa-bU(Lorg/telegram/ui/Components/EditTextEffects;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/EditTextEffects;->lambda$onSpoilerClicked$4()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 70
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilers:Ljava/util/List;

    .line 35
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilersPool:Ljava/util/Stack;

    .line 36
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->quoteBlocks:Ljava/util/ArrayList;

    const/4 p1, 0x1

    .line 38
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->shouldRevealSpoilersByTouch:Z

    .line 41
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->path:Landroid/graphics/Path;

    .line 49
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->drawAnimatedEmojiDrawables:Z

    const/4 p1, 0x0

    .line 50
    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->lastLayout:Landroid/text/Layout;

    .line 53
    new-instance p1, Lorg/telegram/ui/Components/EditTextEffects$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/EditTextEffects$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/EditTextEffects;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilerTimeout:Ljava/lang/Runnable;

    .line 66
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->rect:Landroid/graphics/Rect;

    .line 298
    invoke-static {}, Lorg/telegram/ui/Components/EditTextEffects;->allowHackingTextCanvas()Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->wrapCanvasToFixClipping:Z

    .line 72
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 73
    new-instance p1, Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilers:Ljava/util/List;

    new-instance v1, Lorg/telegram/ui/Components/EditTextEffects$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/EditTextEffects$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/EditTextEffects;)V

    invoke-direct {p1, p0, v0, v1}, Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;-><init>(Landroid/view/View;Ljava/util/List;Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector$OnSpoilerClickedListener;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->clickDetector:Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;

    :cond_0
    return-void
.end method

.method public static allowHackingTextCanvas()Z
    .locals 3

    .line 284
    sget-object v0, Lorg/telegram/ui/Components/EditTextEffects;->allowHackingTextCanvasCache:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    .line 285
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "honor"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 288
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "huawei"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 289
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "alps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 292
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mediapad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 285
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/EditTextEffects;->allowHackingTextCanvasCache:Ljava/lang/Boolean;

    .line 295
    :cond_3
    sget-object v0, Lorg/telegram/ui/Components/EditTextEffects;->allowHackingTextCanvasCache:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private checkSpoilerTimeout()V
    .locals 10

    .line 115
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 116
    :goto_0
    instance-of v1, v0, Landroid/text/Spannable;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    .line 117
    check-cast v0, Landroid/text/Spannable;

    .line 118
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v4, Lorg/telegram/ui/Components/TextStyleSpan;

    invoke-interface {v0, v3, v1, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/telegram/ui/Components/TextStyleSpan;

    .line 119
    array-length v4, v1

    move v5, v3

    :goto_1
    if-ge v5, v4, :cond_5

    aget-object v6, v1, v5

    .line 120
    invoke-interface {v0, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v0, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    .line 121
    invoke-virtual {v6}, Lorg/telegram/ui/Components/TextStyleSpan;->isSpoiler()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 122
    iget v6, p0, Lorg/telegram/ui/Components/EditTextEffects;->selStart:I

    if-le v7, v6, :cond_1

    iget v9, p0, Lorg/telegram/ui/Components/EditTextEffects;->selEnd:I

    if-lt v8, v9, :cond_3

    :cond_1
    if-le v6, v7, :cond_2

    if-lt v6, v8, :cond_3

    :cond_2
    iget v6, p0, Lorg/telegram/ui/Components/EditTextEffects;->selEnd:I

    if-le v6, v7, :cond_4

    if-ge v6, v8, :cond_4

    .line 124
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilerTimeout:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 125
    iput-boolean v3, p0, Lorg/telegram/ui/Components/EditTextEffects;->postedSpoilerTimeout:Z

    move v3, v2

    goto :goto_2

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 132
    :cond_5
    :goto_2
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->isSpoilersRevealed:Z

    if-eqz v0, :cond_6

    if-nez v3, :cond_6

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->postedSpoilerTimeout:Z

    if-nez v0, :cond_6

    .line 133
    iput-boolean v2, p0, Lorg/telegram/ui/Components/EditTextEffects;->postedSpoilerTimeout:Z

    .line 134
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilerTimeout:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    return-void
.end method

.method private synthetic lambda$dispatchTouchEvent$5()V
    .locals 1

    const/4 v0, 0x1

    .line 231
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/EditTextEffects;->invalidateQuotes(Z)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 60
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/EditTextEffects;->setSpoilersRevealed(ZZ)V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 1

    .line 60
    new-instance v0, Lorg/telegram/ui/Components/EditTextEffects$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/EditTextEffects$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/EditTextEffects;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 6

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->postedSpoilerTimeout:Z

    .line 55
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->isSpoilersRevealed:Z

    .line 56
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEffects;->invalidateSpoilers()V

    .line 57
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 60
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    new-instance v1, Lorg/telegram/ui/Components/EditTextEffects$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/EditTextEffects$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/EditTextEffects;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setOnRippleEndCallback(Ljava/lang/Runnable;)V

    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-double v4, v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 62
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    .line 63
    iget v3, p0, Lorg/telegram/ui/Components/EditTextEffects;->lastRippleX:F

    iget v4, p0, Lorg/telegram/ui/Components/EditTextEffects;->lastRippleY:F

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v0, v5}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->startRipple(FFFZ)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private synthetic lambda$onSpoilerClicked$3()V
    .locals 0

    .line 88
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEffects;->invalidateSpoilers()V

    .line 89
    invoke-direct {p0}, Lorg/telegram/ui/Components/EditTextEffects;->checkSpoilerTimeout()V

    return-void
.end method

.method private synthetic lambda$onSpoilerClicked$4()V
    .locals 1

    .line 87
    new-instance v0, Lorg/telegram/ui/Components/EditTextEffects$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/EditTextEffects$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/EditTextEffects;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onSpoilerClicked(Lorg/telegram/ui/Components/spoilers/SpoilerEffect;FF)V
    .locals 6

    .line 78
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->isSpoilersRevealed:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 80
    :cond_0
    iput p2, p0, Lorg/telegram/ui/Components/EditTextEffects;->lastRippleX:F

    .line 81
    iput p3, p0, Lorg/telegram/ui/Components/EditTextEffects;->lastRippleY:F

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->postedSpoilerTimeout:Z

    .line 84
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilerTimeout:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v1, 0x1

    .line 86
    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/Components/EditTextEffects;->setSpoilersRevealed(ZZ)V

    .line 87
    new-instance v0, Lorg/telegram/ui/Components/EditTextEffects$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/EditTextEffects$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/EditTextEffects;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setOnRippleEndCallback(Ljava/lang/Runnable;)V

    .line 92
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-double v4, p1

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    .line 93
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    .line 94
    invoke-virtual {v1, p2, p3, p1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->startRipple(FFF)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 231
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->quoteBlocks:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/ui/Components/EditTextEffects$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/EditTextEffects$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/EditTextEffects;)V

    invoke-static {p1, v0, v1, v2}, Lorg/telegram/ui/Components/QuoteSpan;->onTouch(Landroid/view/MotionEvent;ILjava/util/ArrayList;Ljava/lang/Runnable;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 235
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->shouldRevealSpoilersByTouch:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->clickDetector:Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 236
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v1, :cond_1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    .line 238
    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 239
    invoke-super {p0, v0}, Landroid/widget/EditText;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 240
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 244
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_4

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    return v2

    :cond_4
    :goto_1
    return v1
.end method

.method protected emojiCacheType()I
    .locals 1

    .line 379
    invoke-static {}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getCacheTypeForEnterView()I

    move-result v0

    return v0
.end method

.method public getOffsetY()F
    .locals 1

    .line 279
    iget v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->offsetY:F

    return v0
.end method

.method public getTextToUse()Ljava/lang/CharSequence;
    .locals 1

    .line 466
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/QuoteSpan;->stripNewlineHacks(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public invalidateEffects()V
    .locals 5

    .line 427
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 429
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v2, Lorg/telegram/ui/Components/TextStyleSpan;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/ui/Components/TextStyleSpan;

    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v2, v0, v3

    .line 430
    invoke-virtual {v2}, Lorg/telegram/ui/Components/TextStyleSpan;->isSpoiler()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 431
    iget-boolean v4, p0, Lorg/telegram/ui/Components/EditTextEffects;->isSpoilersRevealed:Z

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/TextStyleSpan;->setSpoilerRevealed(Z)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 435
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEffects;->invalidateSpoilers()V

    return-void
.end method

.method public invalidateQuotes(Z)V
    .locals 4

    .line 389
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->quoteBlocksUpdating:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 390
    iput-boolean v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->editedWhileQuoteUpdating:Z

    return-void

    .line 393
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    if-nez p1, :cond_3

    .line 394
    iget p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->lastText2Length:I

    if-eq p1, v0, :cond_4

    :cond_3
    const/4 p1, 0x2

    .line 395
    iput p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->quoteUpdatesTries:I

    .line 396
    iput v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->lastText2Length:I

    .line 398
    :cond_4
    iget p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->quoteUpdatesTries:I

    if-lez p1, :cond_a

    .line 399
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->quoteUpdateLayout:[Z

    if-nez p1, :cond_5

    .line 400
    new-array p1, v1, [Z

    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->quoteUpdateLayout:[Z

    .line 402
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->quoteUpdateLayout:[Z

    aput-boolean v2, p1, v2

    .line 403
    iput-boolean v2, p0, Lorg/telegram/ui/Components/EditTextEffects;->editedWhileQuoteUpdating:Z

    .line 404
    iput-boolean v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->quoteBlocksUpdating:Z

    .line 405
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->quoteBlocks:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/Components/EditTextEffects;->quoteUpdateLayout:[Z

    invoke-static {p0, p1, v0, v3}, Lorg/telegram/ui/Components/QuoteSpan;->updateQuoteBlocks(Landroid/view/View;Landroid/text/Layout;Ljava/util/ArrayList;[Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->quoteBlocks:Ljava/util/ArrayList;

    .line 406
    iget-boolean p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->editedWhileQuoteUpdating:Z

    if-eqz p1, :cond_6

    .line 407
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->quoteBlocks:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/Components/EditTextEffects;->quoteUpdateLayout:[Z

    invoke-static {p0, p1, v0, v3}, Lorg/telegram/ui/Components/QuoteSpan;->updateQuoteBlocks(Landroid/view/View;Landroid/text/Layout;Ljava/util/ArrayList;[Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->quoteBlocks:Ljava/util/ArrayList;

    .line 409
    :cond_6
    iput-boolean v2, p0, Lorg/telegram/ui/Components/EditTextEffects;->quoteBlocksUpdating:Z

    .line 410
    iput-boolean v2, p0, Lorg/telegram/ui/Components/EditTextEffects;->editedWhileQuoteUpdating:Z

    .line 411
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->quoteUpdateLayout:[Z

    aget-boolean p1, p1, v2

    if-eqz p1, :cond_7

    .line 412
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEffects;->resetFontMetricsCache()V

    .line 414
    :cond_7
    iget p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->quoteUpdatesTries:I

    sub-int/2addr p1, v1

    iput p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->quoteUpdatesTries:I

    .line 415
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    :cond_9
    :goto_2
    iput v2, p0, Lorg/telegram/ui/Components/EditTextEffects;->lastText2Length:I

    :cond_a
    return-void
.end method

.method protected invalidateSpoilers()V
    .locals 3

    .line 439
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilers:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 440
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilersPool:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 441
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 443
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->isSpoilersRevealed:Z

    if-eqz v0, :cond_1

    .line 444
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 448
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 449
    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_3

    .line 450
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->drawAnimatedEmojiDrawables:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->animatedEmojiDrawables:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 451
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->recordPositions(Z)V

    .line 453
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilersPool:Ljava/util/Stack;

    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilers:Ljava/util/List;

    iget-object v2, p0, Lorg/telegram/ui/Components/EditTextEffects;->quoteBlocks:Ljava/util/ArrayList;

    invoke-static {p0, v0, v1, v2}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->addSpoilers(Landroid/widget/TextView;Ljava/util/Stack;Ljava/util/List;Ljava/util/ArrayList;)V

    .line 454
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->drawAnimatedEmojiDrawables:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->animatedEmojiDrawables:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    .line 455
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->recordPositions(Z)V

    .line 458
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 152
    invoke-super {p0}, Landroid/widget/EditText;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 153
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/EditTextEffects;->updateAnimatedEmoji(Z)V

    const/4 v0, 0x0

    .line 154
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/EditTextEffects;->invalidateQuotes(Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 140
    invoke-super {p0}, Landroid/widget/EditText;->onDetachedFromWindow()V

    .line 142
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilerTimeout:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 143
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->animatedEmojiDrawables:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 303
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 304
    iget-boolean v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->clipToPadding:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x40400000    # 3.0f

    .line 305
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    invoke-super {p0}, Landroid/widget/EditText;->getExtendedPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Components/EditTextEffects;->offsetY:F

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v5

    add-int/2addr v4, v5

    invoke-super {p0}, Landroid/widget/EditText;->getExtendedPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lorg/telegram/ui/Components/EditTextEffects;->offsetY:F

    sub-float/2addr v4, v5

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 307
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    .line 308
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    .line 309
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 310
    iget-object v3, p0, Lorg/telegram/ui/Components/EditTextEffects;->path:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget v6, v2, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v2

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto :goto_0

    .line 312
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->path:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    const/4 v10, 0x0

    .line 313
    invoke-virtual {p0, v10}, Lorg/telegram/ui/Components/EditTextEffects;->invalidateQuotes(Z)V

    move v7, v10

    .line 314
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->quoteBlocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v7, v1, :cond_2

    .line 315
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->quoteBlocks:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/QuoteSpan$Block;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, p0, Lorg/telegram/ui/Components/EditTextEffects;->quoteColor:I

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    const/4 v2, 0x0

    move-object v0, v1

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/QuoteSpan$Block;->draw(Landroid/graphics/Canvas;FIIFLandroid/text/TextPaint;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 317
    :cond_2
    invoke-virtual {p0, v10}, Lorg/telegram/ui/Components/EditTextEffects;->updateAnimatedEmoji(Z)V

    .line 318
    iget-boolean v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->wrapCanvasToFixClipping:Z

    if-eqz v1, :cond_4

    .line 319
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->wrappedCanvas:Lorg/telegram/ui/Components/NoClipCanvas;

    if-nez v1, :cond_3

    .line 320
    new-instance v1, Lorg/telegram/ui/Components/NoClipCanvas;

    invoke-direct {v1}, Lorg/telegram/ui/Components/NoClipCanvas;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->wrappedCanvas:Lorg/telegram/ui/Components/NoClipCanvas;

    .line 322
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->wrappedCanvas:Lorg/telegram/ui/Components/NoClipCanvas;

    iput-object p1, v1, Lorg/telegram/ui/Components/NoClipCanvas;->canvas:Landroid/graphics/Canvas;

    .line 323
    invoke-super {p0, v1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 325
    :cond_4
    invoke-super/range {p0 .. p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 327
    :goto_2
    iget-boolean v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->drawAnimatedEmojiDrawables:Z

    const/4 v11, 0x0

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->animatedEmojiDrawables:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    if-eqz v1, :cond_5

    .line 328
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 329
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 330
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/EditTextEffects;->animatedEmojiDrawables:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    iget-object v4, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilers:Ljava/util/List;

    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result v3

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v3, v5

    int-to-float v5, v3

    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollExtent()I

    move-result v6

    add-int/2addr v3, v6

    int-to-float v6, v3

    const/high16 v8, 0x3f800000    # 1.0f

    iget-object v9, p0, Lorg/telegram/ui/Components/EditTextEffects;->animatedEmojiColorFilter:Landroid/graphics/ColorFilter;

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v9}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFFLandroid/graphics/ColorFilter;)V

    .line 331
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 333
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 335
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 336
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->path:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 337
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    .line 338
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 339
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilers:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    iget-object v2, p0, Lorg/telegram/ui/Components/EditTextEffects;->path:Landroid/graphics/Path;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->getRipplePath(Landroid/graphics/Path;)V

    .line 340
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->path:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 341
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v11, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 342
    iget-boolean v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->wrapCanvasToFixClipping:Z

    if-eqz v1, :cond_8

    .line 343
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->wrappedCanvas:Lorg/telegram/ui/Components/NoClipCanvas;

    if-nez v1, :cond_7

    .line 344
    new-instance v1, Lorg/telegram/ui/Components/NoClipCanvas;

    invoke-direct {v1}, Lorg/telegram/ui/Components/NoClipCanvas;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->wrappedCanvas:Lorg/telegram/ui/Components/NoClipCanvas;

    .line 346
    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->wrappedCanvas:Lorg/telegram/ui/Components/NoClipCanvas;

    iput-object p1, v1, Lorg/telegram/ui/Components/NoClipCanvas;->canvas:Landroid/graphics/Canvas;

    .line 347
    invoke-super {p0, v1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_3

    .line 349
    :cond_8
    invoke-super/range {p0 .. p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 351
    :goto_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 353
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->rect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    invoke-super {p0}, Landroid/widget/EditText;->getExtendedPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Components/EditTextEffects;->offsetY:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v5

    add-int/2addr v4, v5

    invoke-super {p0}, Landroid/widget/EditText;->getExtendedPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lorg/telegram/ui/Components/EditTextEffects;->offsetY:F

    sub-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v1, v10, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 354
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 355
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 356
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    .line 357
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 358
    iget-object v4, p0, Lorg/telegram/ui/Components/EditTextEffects;->rect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->top:I

    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    if-gt v5, v6, :cond_a

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    iget v8, v3, Landroid/graphics/Rect;->top:I

    if-ge v7, v8, :cond_b

    :cond_a
    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-gt v3, v4, :cond_9

    if-lt v6, v5, :cond_9

    .line 359
    :cond_b
    iget-boolean v3, v2, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->insideQuote:Z

    if-eqz v3, :cond_c

    iget v3, p0, Lorg/telegram/ui/Components/EditTextEffects;->quoteColor:I

    goto :goto_5

    :cond_c
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    :goto_5
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setColor(I)V

    .line 360
    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->draw(Landroid/graphics/Canvas;)V

    goto :goto_4

    .line 363
    :cond_d
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 218
    invoke-super/range {p0 .. p5}, Landroid/widget/EditText;->onLayout(ZIIII)V

    move-object p1, p0

    const/4 p2, 0x0

    .line 219
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/EditTextEffects;->invalidateQuotes(Z)V

    return-void
.end method

.method protected onSelectionChanged(II)V
    .locals 1

    .line 99
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onSelectionChanged(II)V

    .line 101
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->suppressOnTextChanged:Z

    if-eqz v0, :cond_0

    return-void

    .line 104
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->selStart:I

    .line 105
    iput p2, p0, Lorg/telegram/ui/Components/EditTextEffects;->selEnd:I

    .line 107
    invoke-direct {p0}, Lorg/telegram/ui/Components/EditTextEffects;->checkSpoilerTimeout()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 159
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onSizeChanged(IIII)V

    .line 160
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEffects;->invalidateEffects()V

    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    .line 165
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 166
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->suppressOnTextChanged:Z

    if-nez v0, :cond_1

    .line 167
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEffects;->invalidateEffects()V

    .line 169
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 170
    instance-of p1, p1, Landroid/text/Spannable;

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 171
    invoke-virtual {v0, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result p1

    .line 172
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result p2

    float-to-int p2, p2

    .line 173
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result p1

    add-int/2addr v1, p1

    int-to-float p1, v1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    .line 175
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    .line 176
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2, p2, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    sub-int/2addr p4, p3

    .line 178
    iget p3, p0, Lorg/telegram/ui/Components/EditTextEffects;->selStart:I

    add-int/2addr p3, p4

    iput p3, p0, Lorg/telegram/ui/Components/EditTextEffects;->selStart:I

    .line 179
    iget p3, p0, Lorg/telegram/ui/Components/EditTextEffects;->selEnd:I

    add-int/2addr p3, p4

    iput p3, p0, Lorg/telegram/ui/Components/EditTextEffects;->selEnd:I

    int-to-float p2, p2

    int-to-float p1, p1

    .line 180
    invoke-direct {p0, v1, p2, p1}, Lorg/telegram/ui/Components/EditTextEffects;->onSpoilerClicked(Lorg/telegram/ui/Components/spoilers/SpoilerEffect;FF)V

    :cond_1
    const/4 p1, 0x1

    .line 186
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/EditTextEffects;->updateAnimatedEmoji(Z)V

    .line 187
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/EditTextEffects;->invalidateQuotes(Z)V

    .line 188
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public recycleEmojis()V
    .locals 1

    .line 147
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->animatedEmojiDrawables:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    return-void
.end method

.method protected resetFontMetricsCache()V
    .locals 3

    .line 421
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, v0

    const/4 v2, 0x0

    .line 422
    invoke-virtual {p0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 423
    invoke-virtual {p0, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 0

    .line 462
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->clipToPadding:Z

    return-void
.end method

.method public setEmojiColor(Ljava/lang/Integer;)V
    .locals 2

    .line 204
    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->emojiColor:Ljava/lang/Integer;

    .line 205
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    if-nez p1, :cond_0

    iget p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->lastTextColor:I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->animatedEmojiColorFilter:Landroid/graphics/ColorFilter;

    .line 206
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOffsetY(F)V
    .locals 0

    .line 274
    iput p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->offsetY:F

    .line 275
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setShouldRevealSpoilersByTouch(Z)V
    .locals 0

    .line 226
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->shouldRevealSpoilersByTouch:Z

    return-void
.end method

.method public setSpoilersRevealed(ZZ)V
    .locals 7

    .line 251
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->isSpoilersRevealed:Z

    .line 252
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 254
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-class v3, Lorg/telegram/ui/Components/TextStyleSpan;

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/telegram/ui/Components/TextStyleSpan;

    .line 255
    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 256
    invoke-virtual {v5}, Lorg/telegram/ui/Components/TextStyleSpan;->isSpoiler()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 257
    invoke-virtual {v5, p1}, Lorg/telegram/ui/Components/TextStyleSpan;->setSpoilerRevealed(Z)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 261
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->suppressOnTextChanged:Z

    .line 262
    sget-object p1, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/EditTextEffects;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 263
    iget p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->selStart:I

    iget v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->selEnd:I

    invoke-virtual {p0, p1, v0}, Landroid/widget/EditText;->setSelection(II)V

    .line 264
    iput-boolean v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->suppressOnTextChanged:Z

    if-eqz p2, :cond_2

    .line 267
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEffects;->invalidateSpoilers()V

    :cond_2
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1

    .line 193
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->suppressOnTextChanged:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 194
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->isSpoilersRevealed:Z

    .line 195
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilersPool:Ljava/util/Stack;

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    .line 198
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 2

    .line 211
    iput p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->lastTextColor:I

    .line 212
    invoke-super {p0, p1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 213
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->emojiColor:Ljava/lang/Integer;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->animatedEmojiColorFilter:Landroid/graphics/ColorFilter;

    return-void
.end method

.method public updateAnimatedEmoji(Z)V
    .locals 5

    .line 367
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->drawAnimatedEmojiDrawables:Z

    if-nez v0, :cond_0

    goto :goto_2

    .line 370
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    :goto_1
    if-nez p1, :cond_4

    .line 371
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->lastLayout:Landroid/text/Layout;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-ne p1, v2, :cond_4

    iget p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->lastTextLength:I

    if-eq p1, v0, :cond_3

    goto :goto_3

    :cond_3
    :goto_2
    return-void

    .line 372
    :cond_4
    :goto_3
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEffects;->emojiCacheType()I

    move-result p1

    iget-object v2, p0, Lorg/telegram/ui/Components/EditTextEffects;->animatedEmojiDrawables:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/text/Layout;

    aput-object v3, v4, v1

    invoke-static {p1, p0, v2, v4}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->animatedEmojiDrawables:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 373
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->lastLayout:Landroid/text/Layout;

    .line 374
    iput v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->lastTextLength:I

    return-void
.end method
