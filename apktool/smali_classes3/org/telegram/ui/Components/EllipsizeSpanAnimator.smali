.class public Lorg/telegram/ui/Components/EllipsizeSpanAnimator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/EllipsizeSpanAnimator$TextAlphaSpan;
    }
.end annotation


# instance fields
.field attachedToWindow:Z

.field private final ellAnimator:Landroid/animation/AnimatorSet;

.field private final ellSpans:[Lorg/telegram/ui/Components/EllipsizeSpanAnimator$TextAlphaSpan;

.field public ellipsizedViews:Ljava/util/ArrayList;


# direct methods
.method public static synthetic $r8$lambda$PNZdAHm7dfH31ADedZCUSlzjEwk(Lorg/telegram/ui/Components/EllipsizeSpanAnimator;Lorg/telegram/ui/Components/EllipsizeSpanAnimator$TextAlphaSpan;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->lambda$createEllipsizeAnimator$0(Lorg/telegram/ui/Components/EllipsizeSpanAnimator$TextAlphaSpan;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetellAnimator(Lorg/telegram/ui/Components/EllipsizeSpanAnimator;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->ellAnimator:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 17

    move-object/from16 v0, p0

    .line 24
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v1, Lorg/telegram/ui/Components/EllipsizeSpanAnimator$TextAlphaSpan;

    invoke-direct {v1}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator$TextAlphaSpan;-><init>()V

    new-instance v2, Lorg/telegram/ui/Components/EllipsizeSpanAnimator$TextAlphaSpan;

    invoke-direct {v2}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator$TextAlphaSpan;-><init>()V

    new-instance v3, Lorg/telegram/ui/Components/EllipsizeSpanAnimator$TextAlphaSpan;

    invoke-direct {v3}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator$TextAlphaSpan;-><init>()V

    const/4 v6, 0x3

    new-array v7, v6, [Lorg/telegram/ui/Components/EllipsizeSpanAnimator$TextAlphaSpan;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v9, 0x1

    aput-object v2, v7, v9

    const/4 v10, 0x2

    aput-object v3, v7, v10

    iput-object v7, v0, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->ellSpans:[Lorg/telegram/ui/Components/EllipsizeSpanAnimator$TextAlphaSpan;

    .line 22
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->ellipsizedViews:Ljava/util/ArrayList;

    .line 25
    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v11, v0, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->ellAnimator:Landroid/animation/AnimatorSet;

    .line 26
    aget-object v1, v7, v8

    const/4 v4, 0x0

    const/16 v5, 0x12c

    const/4 v2, 0x0

    const/16 v3, 0xff

    .line 27
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->createEllipsizeAnimator(Lorg/telegram/ui/Components/EllipsizeSpanAnimator$TextAlphaSpan;IIII)Landroid/animation/Animator;

    move-result-object v12

    aget-object v1, v7, v9

    const/16 v4, 0x96

    .line 28
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->createEllipsizeAnimator(Lorg/telegram/ui/Components/EllipsizeSpanAnimator$TextAlphaSpan;IIII)Landroid/animation/Animator;

    move-result-object v13

    aget-object v1, v7, v10

    const/16 v4, 0x12c

    .line 29
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->createEllipsizeAnimator(Lorg/telegram/ui/Components/EllipsizeSpanAnimator$TextAlphaSpan;IIII)Landroid/animation/Animator;

    move-result-object v14

    aget-object v1, v7, v8

    const/16 v4, 0x3e8

    const/16 v5, 0x190

    const/16 v2, 0xff

    const/4 v3, 0x0

    .line 30
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->createEllipsizeAnimator(Lorg/telegram/ui/Components/EllipsizeSpanAnimator$TextAlphaSpan;IIII)Landroid/animation/Animator;

    move-result-object v15

    aget-object v1, v7, v9

    .line 31
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->createEllipsizeAnimator(Lorg/telegram/ui/Components/EllipsizeSpanAnimator$TextAlphaSpan;IIII)Landroid/animation/Animator;

    move-result-object v16

    aget-object v1, v7, v10

    .line 32
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->createEllipsizeAnimator(Lorg/telegram/ui/Components/EllipsizeSpanAnimator$TextAlphaSpan;IIII)Landroid/animation/Animator;

    move-result-object v1

    const/4 v2, 0x6

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v12, v2, v8

    aput-object v13, v2, v9

    aput-object v14, v2, v10

    aput-object v15, v2, v6

    const/4 v3, 0x4

    aput-object v16, v2, v3

    const/4 v3, 0x5

    aput-object v1, v2, v3

    .line 26
    invoke-virtual {v11, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 34
    new-instance v1, Lorg/telegram/ui/Components/EllipsizeSpanAnimator$1;

    move-object/from16 v2, p1

    invoke-direct {v1, v0, v2}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator$1;-><init>(Lorg/telegram/ui/Components/EllipsizeSpanAnimator;Landroid/view/View;)V

    invoke-virtual {v11, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private createEllipsizeAnimator(Lorg/telegram/ui/Components/EllipsizeSpanAnimator$TextAlphaSpan;IIII)Landroid/animation/Animator;
    .locals 2

    .line 82
    filled-new-array {p2, p3}, [I

    move-result-object p2

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 83
    new-instance p3, Lorg/telegram/ui/Components/EllipsizeSpanAnimator$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p1}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/EllipsizeSpanAnimator;Lorg/telegram/ui/Components/EllipsizeSpanAnimator$TextAlphaSpan;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    int-to-long v0, p5

    .line 91
    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    int-to-long p3, p4

    .line 92
    invoke-virtual {p2, p3, p4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 93
    sget-object p1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p2
.end method

.method private synthetic lambda$createEllipsizeAnimator$0(Lorg/telegram/ui/Components/EllipsizeSpanAnimator$TextAlphaSpan;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 84
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator$TextAlphaSpan;->setAlpha(I)V

    const/4 p1, 0x0

    .line 85
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->ellipsizedViews:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_1

    .line 86
    invoke-static {}, Lorg/telegram/ui/Components/Reactions/HwEmojis;->isHwEnabled()Z

    move-result p2

    if-nez p2, :cond_0

    .line 87
    iget-object p2, p0, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->ellipsizedViews:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->ellipsizedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->ellAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 101
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->ellipsizedViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    iget-object v0, p0, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->ellipsizedViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->attachedToWindow:Z

    .line 65
    iget-object v0, p0, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->ellAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->ellAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->attachedToWindow:Z

    .line 72
    iget-object v0, p0, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->ellAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->ellipsizedViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 108
    iget-object p1, p0, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->ellipsizedViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 109
    iget-object p1, p0, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->ellAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method public wrap(Landroid/text/SpannableString;I)V
    .locals 4

    .line 58
    iget-object v0, p0, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->ellSpans:[Lorg/telegram/ui/Components/EllipsizeSpanAnimator$TextAlphaSpan;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p1, v0, p2, v2, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 59
    iget-object v0, p0, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->ellSpans:[Lorg/telegram/ui/Components/EllipsizeSpanAnimator$TextAlphaSpan;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    add-int/lit8 v3, p2, 0x2

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 60
    iget-object v0, p0, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->ellSpans:[Lorg/telegram/ui/Components/EllipsizeSpanAnimator$TextAlphaSpan;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    add-int/lit8 p2, p2, 0x3

    invoke-virtual {p1, v0, v3, p2, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method
