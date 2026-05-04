.class public Lorg/telegram/ui/Components/AnimatedEmojiSpan;
.super Landroid/text/style/ReplacementSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;,
        Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;,
        Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;,
        Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;,
        Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;
    }
.end annotation


# static fields
.field private static lockPositionChanging:Z


# instance fields
.field private animateChanges:Z

.field public cacheType:I

.field public document:Lorg/telegram/tgnet/TLRPC$Document;

.field public documentAbsolutePath:Ljava/lang/String;

.field public documentId:J

.field public emoji:Ljava/lang/String;

.field public extraScale:F

.field private fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field public fromEmojiKeyboard:Z

.field public full:Z

.field public invert:Z

.field private isAdded:Z

.field private isRemoved:Z

.field lastDrawnCx:F

.field lastDrawnCy:F

.field public local:Z

.field protected measuredSize:I

.field private moveAnimator:Landroid/animation/ValueAnimator;

.field positionChanged:Z

.field private recordPositions:Z

.field private removedAction:Ljava/lang/Runnable;

.field private scale:F

.field private scaleAnimator:Landroid/animation/ValueAnimator;

.field public size:F

.field spanDrawn:Z

.field public standard:Z

.field public top:Z


# direct methods
.method public static synthetic $r8$lambda$3B1SWM_gZRmgAauIKlLnpt2s9WQ(Lorg/telegram/ui/Components/AnimatedEmojiSpan;FFFFLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->lambda$animateChanges$2(FFFFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GZFgI_JSdY65fp6Awx6farlgsvg(Lorg/telegram/ui/Components/AnimatedEmojiSpan;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->lambda$getExtraScale$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$whN3WwnQItv5mabcaV_mZDattIY(Lorg/telegram/ui/Components/AnimatedEmojiSpan;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->lambda$getExtraScale$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetremovedAction(Lorg/telegram/ui/Components/AnimatedEmojiSpan;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->removedAction:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmoveAnimator(Lorg/telegram/ui/Components/AnimatedEmojiSpan;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->moveAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputrecordPositions(Lorg/telegram/ui/Components/AnimatedEmojiSpan;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->recordPositions:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputremovedAction(Lorg/telegram/ui/Components/AnimatedEmojiSpan;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->removedAction:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputscaleAnimator(Lorg/telegram/ui/Components/AnimatedEmojiSpan;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->scaleAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method static bridge synthetic -$$Nest$misAnimating(Lorg/telegram/ui/Components/AnimatedEmojiSpan;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->isAnimating()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sfputlockPositionChanging(Z)V
    .locals 0

    .line 0
    sput-boolean p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->lockPositionChanging:Z

    return-void
.end method

.method public constructor <init>(JFLandroid/graphics/Paint$FontMetricsInt;)V
    .locals 2

    .line 165
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 53
    iput v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->extraScale:F

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->full:Z

    .line 56
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->top:Z

    .line 57
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->invert:Z

    const/high16 v0, 0x41a00000    # 20.0f

    .line 60
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->size:F

    const/4 v1, -0x1

    .line 61
    iput v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->cacheType:I

    const/4 v1, 0x1

    .line 69
    iput-boolean v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->recordPositions:Z

    .line 166
    iput-wide p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentId:J

    .line 167
    iput p3, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->scale:F

    .line 168
    iput-object p4, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    if-eqz p4, :cond_0

    .line 170
    iget p1, p4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget p2, p4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    add-int/2addr p1, p2

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->size:F

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-nez p1, :cond_0

    .line 172
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->size:F

    :cond_0
    return-void
.end method

.method public constructor <init>(JLandroid/graphics/Paint$FontMetricsInt;)V
    .locals 1

    const v0, 0x3f99999a    # 1.2f

    .line 162
    invoke-direct {p0, p1, p2, v0, p3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(JFLandroid/graphics/Paint$FontMetricsInt;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$Document;FLandroid/graphics/Paint$FontMetricsInt;)V
    .locals 2

    .line 157
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-direct {p0, v0, v1, p2, p3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(JFLandroid/graphics/Paint$FontMetricsInt;)V

    .line 158
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->document:Lorg/telegram/tgnet/TLRPC$Document;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$Document;Landroid/graphics/Paint$FontMetricsInt;)V
    .locals 3

    .line 152
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    const v2, 0x3f99999a    # 1.2f

    invoke-direct {p0, v0, v1, v2, p2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(JFLandroid/graphics/Paint$FontMetricsInt;)V

    .line 153
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->document:Lorg/telegram/tgnet/TLRPC$Document;

    return-void
.end method

.method private animateChanges(FF)Z
    .locals 9

    .line 273
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->moveAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 276
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->animateChanges:Z

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 279
    :cond_1
    iput-boolean v2, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->animateChanges:Z

    .line 280
    iget v7, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->lastDrawnCx:F

    .line 281
    iget v5, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->lastDrawnCy:F

    const/4 v0, 0x2

    .line 284
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->moveAnimator:Landroid/animation/ValueAnimator;

    .line 285
    new-instance v3, Lorg/telegram/ui/Components/AnimatedEmojiSpan$$ExternalSyntheticLambda2;

    move-object v4, p0

    move v8, p1

    move v6, p2

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/AnimatedEmojiSpan;FFFF)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 290
    iget-object p1, v4, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->moveAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/Components/AnimatedEmojiSpan$3;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$3;-><init>(Lorg/telegram/ui/Components/AnimatedEmojiSpan;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 296
    iget-object p1, v4, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->moveAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x8c

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 297
    iget-object p1, v4, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->moveAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 298
    iget-object p1, v4, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->moveAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return v1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static applyFontMetricsForString(Ljava/lang/CharSequence;Landroid/graphics/Paint;)V
    .locals 3

    .line 178
    instance-of v0, p0, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    .line 179
    move-object v0, p0

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    const-class v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    const/4 v2, 0x0

    invoke-interface {v0, v2, p0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-eqz p0, :cond_0

    .line 181
    :goto_0
    array-length v0, p0

    if-ge v2, v0, :cond_0

    .line 182
    aget-object v0, p0, v2

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->applyFontMetrics(Landroid/graphics/Paint$FontMetricsInt;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static cloneSpan(Lorg/telegram/ui/Components/AnimatedEmojiSpan;Landroid/graphics/Paint$FontMetricsInt;)Lorg/telegram/ui/Components/AnimatedEmojiSpan;
    .locals 5

    .line 985
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_1

    .line 986
    new-instance v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-eqz p1, :cond_0

    move-object v2, p1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    :goto_0
    invoke-direct {v1, v0, v2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(Lorg/telegram/tgnet/TLRPC$Document;Landroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_2

    .line 988
    :cond_1
    new-instance v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-wide v2, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentId:J

    iget v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->scale:F

    if-eqz p1, :cond_2

    move-object v4, p1

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    :goto_1
    invoke-direct {v1, v2, v3, v0, v4}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(JFLandroid/graphics/Paint$FontMetricsInt;)V

    :goto_2
    if-eqz p1, :cond_3

    .line 991
    iget p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->size:F

    iput p1, v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->size:F

    .line 993
    :cond_3
    iget-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->local:Z

    iput-boolean p1, v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->local:Z

    .line 994
    iget-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->fromEmojiKeyboard:Z

    iput-boolean p1, v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->fromEmojiKeyboard:Z

    .line 995
    iget-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->isAdded:Z

    iput-boolean p1, v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->isAdded:Z

    .line 996
    iget-boolean p0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->isRemoved:Z

    iput-boolean p0, v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->isRemoved:Z

    return-object v1
.end method

.method public static cloneSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 1001
    invoke-static {p0, v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->cloneSpans(Ljava/lang/CharSequence;ILandroid/graphics/Paint$FontMetricsInt;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static cloneSpans(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    .line 1005
    invoke-static {p0, p1, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->cloneSpans(Ljava/lang/CharSequence;ILandroid/graphics/Paint$FontMetricsInt;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static cloneSpans(Ljava/lang/CharSequence;ILandroid/graphics/Paint$FontMetricsInt;)Ljava/lang/CharSequence;
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1009
    invoke-static {p0, p1, p2, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->cloneSpans(Ljava/lang/CharSequence;ILandroid/graphics/Paint$FontMetricsInt;F)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static cloneSpans(Ljava/lang/CharSequence;ILandroid/graphics/Paint$FontMetricsInt;F)Ljava/lang/CharSequence;
    .locals 8

    .line 1013
    instance-of v0, p0, Landroid/text/Spanned;

    if-nez v0, :cond_0

    return-object p0

    .line 1016
    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    .line 1017
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v2, Landroid/text/style/CharacterStyle;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/CharacterStyle;

    if-eqz v1, :cond_6

    .line 1018
    array-length v2, v1

    if-gtz v2, :cond_1

    goto :goto_2

    .line 1021
    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-class v4, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-interface {v0, v3, v2, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-eqz v2, :cond_2

    .line 1022
    array-length v2, v2

    if-gtz v2, :cond_2

    goto :goto_2

    .line 1025
    :cond_2
    new-instance p0, Landroid/text/SpannableString;

    invoke-direct {p0, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1026
    :goto_0
    array-length v2, v1

    if-ge v3, v2, :cond_6

    .line 1027
    aget-object v2, v1, v3

    if-nez v2, :cond_3

    goto :goto_1

    .line 1031
    :cond_3
    instance-of v4, v2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-eqz v4, :cond_5

    .line 1032
    invoke-interface {v0, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 1033
    aget-object v4, v1, v3

    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 1035
    aget-object v5, v1, v3

    check-cast v5, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    .line 1036
    invoke-virtual {p0, v5}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V

    .line 1037
    invoke-static {v5, p2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->cloneSpan(Lorg/telegram/ui/Components/AnimatedEmojiSpan;Landroid/graphics/Paint$FontMetricsInt;)Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    move-result-object v6

    const/4 v7, -0x1

    if-eq p1, v7, :cond_4

    .line 1039
    iput p1, v6, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->cacheType:I

    .line 1041
    :cond_4
    iget v5, v5, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->scale:F

    mul-float/2addr v5, p3

    iput v5, v6, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->scale:F

    const/16 v5, 0x21

    .line 1042
    invoke-virtual {p0, v6, v2, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    :goto_2
    return-object p0
.end method

.method public static drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFF)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/text/Layout;",
            "Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;",
            "F",
            "Ljava/util/List<",
            "Lorg/telegram/ui/Components/spoilers/SpoilerEffect;",
            ">;FFFF)V"
        }
    .end annotation

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 323
    invoke-static/range {v0 .. v9}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFFLandroid/graphics/ColorFilter;)V

    return-void
.end method

.method public static drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFFLandroid/graphics/ColorFilter;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/text/Layout;",
            "Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;",
            "F",
            "Ljava/util/List<",
            "Lorg/telegram/ui/Components/spoilers/SpoilerEffect;",
            ">;FFFF",
            "Landroid/graphics/ColorFilter;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_4

    .line 333
    :cond_0
    sget v0, Lorg/telegram/messenger/Emoji;->emojiDrawingYOffset:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    cmpl-float v0, p3, v1

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    .line 335
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 336
    sget v0, Lorg/telegram/messenger/Emoji;->emojiDrawingYOffset:F

    const/high16 v3, 0x41a00000    # 20.0f

    mul-float v3, v3, p3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    invoke-virtual {p0, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v0, 0x1

    .line 339
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 340
    :goto_2
    iget-object v1, p2, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->backgroundDrawingArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_4

    .line 341
    iget-object v1, p2, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->backgroundDrawingArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;

    .line 342
    iget-object v1, v3, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;->layout:Landroid/text/Layout;

    if-ne v1, p1, :cond_3

    move-object v4, p0

    move-object/from16 v5, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    .line 343
    invoke-virtual/range {v3 .. v12}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;->draw(Landroid/graphics/Canvas;Ljava/util/List;JFFFFLandroid/graphics/ColorFilter;)V

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    if-eqz v0, :cond_5

    .line 349
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    :goto_4
    return-void
.end method

.method private isAnimating()Z
    .locals 1

    .line 269
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->moveAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->scaleAnimator:Landroid/animation/ValueAnimator;

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

.method private static isInsideSpoiler(Landroid/text/Layout;II)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 354
    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    instance-of v1, v1, Landroid/text/Spanned;

    if-nez v1, :cond_0

    goto :goto_1

    .line 357
    :cond_0
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 358
    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 359
    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Landroid/text/Spanned;

    const-class v1, Lorg/telegram/ui/Components/TextStyleSpan;

    invoke-interface {p0, p1, p2, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/telegram/ui/Components/TextStyleSpan;

    move p1, v0

    :goto_0
    if-eqz p0, :cond_2

    .line 360
    array-length p2, p0

    if-ge p1, p2, :cond_2

    .line 361
    aget-object p2, p0, p1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lorg/telegram/ui/Components/TextStyleSpan;->isSpoiler()Z

    move-result p2

    if-eqz p2, :cond_1

    return v2

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method private synthetic lambda$animateChanges$2(FFFFLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 286
    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Float;

    invoke-virtual {p5}, Ljava/lang/Float;->floatValue()F

    move-result p5

    .line 287
    invoke-static {p1, p2, p5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->lastDrawnCy:F

    .line 288
    invoke-static {p3, p4, p5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->lastDrawnCx:F

    return-void
.end method

.method private synthetic lambda$getExtraScale$0(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 108
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->extraScale:F

    const v0, 0x3e4ccccd    # 0.2f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 109
    invoke-static {v0, v1, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->scale:F

    const/4 p1, 0x0

    .line 110
    sput-boolean p1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->lockPositionChanging:Z

    return-void
.end method

.method private synthetic lambda$getExtraScale$1(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 131
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->extraScale:F

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 132
    invoke-static {v0, v1, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->scale:F

    return-void
.end method

.method public static onlyEmojiSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1052
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1053
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p0

    const-class v1, Landroid/text/style/CharacterStyle;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p0, v1}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/text/style/CharacterStyle;

    .line 1054
    :goto_0
    array-length v1, p0

    if-ge v2, v1, :cond_2

    .line 1055
    aget-object v1, p0, v2

    instance-of v3, v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-nez v3, :cond_1

    instance-of v3, v1, Lorg/telegram/messenger/Emoji$EmojiSpan;

    if-nez v3, :cond_1

    .line 1056
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static release(Landroid/view/View;Landroid/util/LongSparseArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/util/LongSparseArray<",
            "Lorg/telegram/ui/Components/AnimatedEmojiDrawable;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 728
    :goto_0
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 729
    invoke-virtual {p1, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v1, :cond_1

    .line 731
    invoke-virtual {v1, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Landroid/view/View;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 734
    :cond_2
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->clear()V

    return-void
.end method

.method public static release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 741
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->release()V

    return-void
.end method

.method public static update(ILandroid/view/View;Ljava/util/ArrayList;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/AnimatedEmojiSpan;",
            ">;",
            "Landroid/util/LongSparseArray<",
            "Lorg/telegram/ui/Components/AnimatedEmojiDrawable;",
            ">;)",
            "Landroid/util/LongSparseArray<",
            "Lorg/telegram/ui/Components/AnimatedEmojiDrawable;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_0

    return-object p3

    :cond_0
    if-nez p3, :cond_1

    .line 681
    new-instance p3, Landroid/util/LongSparseArray;

    invoke-direct {p3}, Landroid/util/LongSparseArray;-><init>()V

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    .line 685
    :goto_0
    invoke-virtual {p3}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 686
    invoke-virtual {p3, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    .line 687
    invoke-virtual {p3, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-nez v4, :cond_2

    .line 689
    invoke-virtual {p3, v2, v3}, Landroid/util/LongSparseArray;->remove(J)V

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_2
    move v5, v0

    .line 693
    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 694
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-nez v6, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 700
    :cond_4
    invoke-virtual {v4, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Landroid/view/View;)V

    .line 701
    invoke-virtual {p3, v2, v3}, Landroid/util/LongSparseArray;->remove(J)V

    goto :goto_1

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 708
    :cond_5
    :goto_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_9

    .line 709
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-eqz v1, :cond_8

    .line 711
    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v2

    invoke-virtual {p3, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_8

    .line 713
    iget-boolean v2, v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->standard:Z

    if-eqz v2, :cond_6

    const/16 v2, 0x8

    goto :goto_5

    :cond_6
    iget v2, v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->cacheType:I

    if-gez v2, :cond_7

    move v2, p0

    .line 714
    :cond_7
    :goto_5
    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iget-wide v4, v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentId:J

    invoke-static {v3, v2, v4, v5}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IIJ)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object v2

    .line 715
    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Landroid/view/View;)V

    .line 716
    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v3

    invoke-virtual {p3, v3, v4, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_9
    return-object p3
.end method

.method public static update(ILandroid/view/View;[Lorg/telegram/ui/Components/AnimatedEmojiSpan;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/View;",
            "[",
            "Lorg/telegram/ui/Components/AnimatedEmojiSpan;",
            "Landroid/util/LongSparseArray<",
            "Lorg/telegram/ui/Components/AnimatedEmojiDrawable;",
            ">;)",
            "Landroid/util/LongSparseArray<",
            "Lorg/telegram/ui/Components/AnimatedEmojiDrawable;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_0

    return-object p3

    :cond_0
    if-nez p3, :cond_1

    .line 623
    new-instance p3, Landroid/util/LongSparseArray;

    invoke-direct {p3}, Landroid/util/LongSparseArray;-><init>()V

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    .line 627
    :goto_0
    invoke-virtual {p3}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 628
    invoke-virtual {p3, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    .line 629
    invoke-virtual {p3, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-nez v4, :cond_2

    .line 631
    invoke-virtual {p3, v2, v3}, Landroid/util/LongSparseArray;->remove(J)V

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_2
    move v5, v0

    .line 636
    :goto_2
    array-length v6, p2

    if-ge v5, v6, :cond_4

    .line 637
    aget-object v6, p2, v5

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-nez v6, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 644
    :cond_4
    invoke-virtual {v4, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Landroid/view/View;)V

    .line 645
    invoke-virtual {p3, v2, v3}, Landroid/util/LongSparseArray;->remove(J)V

    goto :goto_1

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 652
    :cond_5
    :goto_4
    array-length v1, p2

    if-ge v0, v1, :cond_a

    .line 653
    aget-object v1, p2, v0

    if-eqz v1, :cond_9

    .line 655
    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v2

    invoke-virtual {p3, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_9

    .line 657
    iget-boolean v2, v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->standard:Z

    if-eqz v2, :cond_6

    const/16 v2, 0x8

    goto :goto_5

    :cond_6
    iget v2, v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->cacheType:I

    if-gez v2, :cond_7

    move v2, p0

    .line 658
    :cond_7
    :goto_5
    iget-object v3, v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v3, :cond_8

    .line 659
    sget v4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v4, v2, v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IILorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object v2

    goto :goto_6

    .line 661
    :cond_8
    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iget-wide v4, v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentId:J

    invoke-static {v3, v2, v4, v5}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IIJ)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object v2

    .line 663
    :goto_6
    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Landroid/view/View;)V

    .line 664
    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v3

    invoke-virtual {p3, v3, v4, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_a
    return-object p3
.end method

.method public static update(Landroid/view/View;Ljava/util/ArrayList;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/AnimatedEmojiSpan;",
            ">;",
            "Landroid/util/LongSparseArray<",
            "Lorg/telegram/ui/Components/AnimatedEmojiDrawable;",
            ">;)",
            "Landroid/util/LongSparseArray<",
            "Lorg/telegram/ui/Components/AnimatedEmojiDrawable;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 673
    invoke-static {v0, p0, p1, p2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Ljava/util/ArrayList;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;

    move-result-object p0

    return-object p0
.end method

.method public static update(Landroid/view/View;[Lorg/telegram/ui/Components/AnimatedEmojiSpan;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "[",
            "Lorg/telegram/ui/Components/AnimatedEmojiSpan;",
            "Landroid/util/LongSparseArray<",
            "Lorg/telegram/ui/Components/AnimatedEmojiDrawable;",
            ">;)",
            "Landroid/util/LongSparseArray<",
            "Lorg/telegram/ui/Components/AnimatedEmojiDrawable;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 615
    invoke-static {v0, p0, p1, p2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;[Lorg/telegram/ui/Components/AnimatedEmojiSpan;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;

    move-result-object p0

    return-object p0
.end method

.method public static update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;Ljava/util/ArrayList;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/View;",
            "Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject$TextLayoutBlock;",
            ">;)",
            "Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 478
    invoke-static {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;Ljava/util/ArrayList;Z)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object p0

    return-object p0
.end method

.method public static update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;Ljava/util/ArrayList;Z)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/View;",
            "Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject$TextLayoutBlock;",
            ">;Z)",
            "Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;"
        }
    .end annotation

    const/4 v2, 0x0

    move v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 482
    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;ZLorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;Ljava/util/ArrayList;Z)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object p0

    return-object p0
.end method

.method public static varargs update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;
    .locals 1

    const/4 v0, 0x0

    .line 500
    invoke-static {p0, p1, v0, p2, p3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;ZLorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object p0

    return-object p0
.end method

.method public static update(ILandroid/view/View;ZLorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;Ljava/util/ArrayList;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/View;",
            "Z",
            "Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject$TextLayoutBlock;",
            ">;)",
            "Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;"
        }
    .end annotation

    const/4 v5, 0x0

    move v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 486
    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;ZLorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;Ljava/util/ArrayList;Z)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object p0

    return-object p0
.end method

.method public static update(ILandroid/view/View;ZLorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;Ljava/util/ArrayList;Z)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/View;",
            "Z",
            "Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject$TextLayoutBlock;",
            ">;Z)",
            "Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p4, :cond_0

    move v1, v0

    goto :goto_0

    .line 490
    :cond_0
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    new-array v1, v1, [Landroid/text/Layout;

    if-eqz p4, :cond_1

    .line 492
    :goto_1
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 493
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move p4, p5

    move-object p5, v1

    .line 496
    invoke-static/range {p0 .. p5}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;ZLorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;Z[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object p0

    return-object p0
.end method

.method public static varargs update(ILandroid/view/View;ZLorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;Z[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;
    .locals 16

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    const/4 v2, 0x0

    if-eqz v1, :cond_19

    .line 508
    array-length v3, v1

    if-gtz v3, :cond_0

    goto/16 :goto_f

    :cond_0
    const/4 v3, 0x0

    move v4, v3

    .line 516
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_15

    .line 517
    aget-object v5, v1, v4

    if-eqz v5, :cond_10

    .line 519
    invoke-virtual {v5}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    instance-of v6, v6, Landroid/text/Spanned;

    if-eqz v6, :cond_10

    .line 521
    invoke-virtual {v5}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Landroid/text/Spanned;

    .line 522
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const-class v8, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-interface {v6, v3, v7, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    move v8, v3

    :goto_1
    if-eqz v7, :cond_f

    .line 524
    array-length v9, v7

    if-ge v8, v9, :cond_f

    .line 525
    aget-object v9, v7, v8

    if-nez v9, :cond_1

    move-object/from16 v11, p1

    move/from16 v12, p2

    move/from16 p3, v4

    goto/16 :goto_7

    :cond_1
    if-eqz p4, :cond_2

    .line 529
    invoke-virtual {v5}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    instance-of v10, v10, Landroid/text/Spannable;

    if-eqz v10, :cond_2

    .line 530
    invoke-interface {v6, v9}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    invoke-interface {v6, v9}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    .line 531
    move-object v12, v6

    check-cast v12, Landroid/text/Spannable;

    invoke-interface {v12, v9}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 532
    invoke-static {v9, v2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->cloneSpan(Lorg/telegram/ui/Components/AnimatedEmojiSpan;Landroid/graphics/Paint$FontMetricsInt;)Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v13, 0x21

    invoke-interface {v12, v9, v10, v11, v13}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    if-nez v0, :cond_3

    .line 536
    new-instance v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;-><init>()V

    :cond_3
    move v10, v3

    .line 538
    :goto_2
    iget-object v11, v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->holders:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_5

    .line 539
    iget-object v11, v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->holders:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;

    iget-object v11, v11, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-ne v11, v9, :cond_4

    iget-object v11, v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->holders:Ljava/util/ArrayList;

    .line 540
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;

    iget-object v11, v11, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->layout:Landroid/text/Layout;

    if-ne v11, v5, :cond_4

    .line 541
    iget-object v11, v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->holders:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;

    goto :goto_3

    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_5
    move-object v10, v2

    :goto_3
    if-nez v10, :cond_e

    .line 546
    new-instance v10, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;

    move-object/from16 v11, p1

    move/from16 v12, p2

    invoke-direct {v10, v11, v12}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;-><init>(Landroid/view/View;Z)V

    .line 547
    iput-object v5, v10, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->layout:Landroid/text/Layout;

    .line 548
    iget-boolean v13, v9, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->standard:Z

    if-eqz v13, :cond_6

    const/16 v13, 0x8

    goto :goto_4

    :cond_6
    iget v13, v9, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->cacheType:I

    if-gez v13, :cond_7

    move/from16 v13, p0

    .line 549
    :cond_7
    :goto_4
    iget-object v14, v9, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentAbsolutePath:Ljava/lang/String;

    if-eqz v14, :cond_8

    .line 550
    sget v14, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    move/from16 p3, v4

    invoke-virtual {v9}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v3

    iget-object v15, v9, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentAbsolutePath:Ljava/lang/String;

    invoke-static {v14, v13, v3, v4, v15}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IIJLjava/lang/String;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object v3

    iput-object v3, v10, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    goto :goto_5

    :cond_8
    move/from16 p3, v4

    .line 551
    iget-object v3, v9, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v3, :cond_9

    .line 552
    sget v4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v4, v13, v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IILorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object v3

    iput-object v3, v10, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    goto :goto_5

    .line 553
    :cond_9
    iget-wide v3, v9, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentId:J

    const-wide/16 v14, 0x0

    cmp-long v14, v3, v14

    if-eqz v14, :cond_a

    .line 554
    sget v14, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v14, v13, v3, v4, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IIJLjava/lang/String;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object v3

    iput-object v3, v10, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    .line 556
    :cond_a
    :goto_5
    iget v3, v9, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->cacheType:I

    const/16 v4, 0x14

    if-eq v3, v4, :cond_b

    const/16 v4, 0x15

    if-ne v3, v4, :cond_d

    :cond_b
    iget-object v3, v9, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->emoji:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 557
    iget-object v3, v10, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v3, :cond_c

    .line 558
    iget-object v4, v9, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->emoji:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setupEmojiThumb(Ljava/lang/String;)V

    goto :goto_6

    .line 560
    :cond_c
    iget-object v3, v9, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->emoji:Ljava/lang/String;

    invoke-static {v3}, Lorg/telegram/messenger/Emoji;->getEmojiDrawable(Ljava/lang/CharSequence;)Lorg/telegram/messenger/Emoji$EmojiDrawable;

    move-result-object v3

    iput-object v3, v10, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 563
    :cond_d
    :goto_6
    invoke-interface {v6, v9}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v6, v9}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v5, v3, v4}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->isInsideSpoiler(Landroid/text/Layout;II)Z

    move-result v3

    iput-boolean v3, v10, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->insideSpoiler:Z

    .line 564
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v10, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->drawableBounds:Landroid/graphics/Rect;

    .line 565
    iput-object v9, v10, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    .line 566
    invoke-virtual {v0, v5, v10}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->add(Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;)V

    goto :goto_7

    :cond_e
    move-object/from16 v11, p1

    move/from16 v12, p2

    move/from16 p3, v4

    .line 568
    invoke-interface {v6, v9}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v6, v9}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v5, v3, v4}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->isInsideSpoiler(Landroid/text/Layout;II)Z

    move-result v3

    iput-boolean v3, v10, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->insideSpoiler:Z

    :goto_7
    add-int/lit8 v8, v8, 0x1

    move/from16 v4, p3

    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_f
    move-object/from16 v11, p1

    move/from16 v12, p2

    move/from16 p3, v4

    goto :goto_8

    :cond_10
    move-object/from16 v11, p1

    move/from16 v12, p2

    move/from16 p3, v4

    move-object v7, v2

    :goto_8
    if-eqz v0, :cond_14

    const/4 v3, 0x0

    .line 574
    :goto_9
    iget-object v4, v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->holders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_14

    .line 575
    iget-object v4, v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->holders:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;

    .line 576
    iget-object v4, v4, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->layout:Landroid/text/Layout;

    if-ne v4, v5, :cond_13

    .line 577
    iget-object v4, v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->holders:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;

    iget-object v4, v4, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    const/4 v6, 0x0

    :goto_a
    if-eqz v7, :cond_12

    .line 579
    array-length v8, v7

    if-ge v6, v8, :cond_12

    .line 580
    aget-object v8, v7, v6

    if-ne v8, v4, :cond_11

    goto :goto_b

    :cond_11
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 586
    :cond_12
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->remove(I)V

    add-int/lit8 v3, v3, -0x1

    :cond_13
    :goto_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_14
    add-int/lit8 v4, p3, 0x1

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_15
    if-eqz v0, :cond_18

    const/4 v2, 0x0

    .line 595
    :goto_c
    iget-object v3, v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->holders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_18

    .line 596
    iget-object v3, v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->holders:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;

    iget-object v3, v3, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->layout:Landroid/text/Layout;

    const/4 v4, 0x0

    .line 598
    :goto_d
    array-length v5, v1

    if-ge v4, v5, :cond_17

    .line 599
    aget-object v5, v1, v4

    if-ne v5, v3, :cond_16

    goto :goto_e

    :cond_16
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 605
    :cond_17
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->remove(I)V

    add-int/lit8 v2, v2, -0x1

    :goto_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_18
    return-object v0

    :cond_19
    :goto_f
    if-eqz v0, :cond_1a

    .line 510
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->holders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 511
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->release()V

    :cond_1a
    return-object v2
.end method

.method public static varargs update(ILandroid/view/View;ZLorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;
    .locals 6

    const/4 v4, 0x0

    move v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 504
    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;ZLorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;Z[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public applyFontMetrics(Landroid/graphics/Paint$FontMetricsInt;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    return-void
.end method

.method public applyFontMetrics(Landroid/graphics/Paint$FontMetricsInt;I)V
    .locals 0

    .line 209
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 210
    iput p2, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->cacheType:I

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 0

    .line 304
    iget-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->recordPositions:Z

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    .line 305
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->spanDrawn:Z

    .line 306
    iget p2, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->measuredSize:I

    int-to-float p2, p2

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    add-float/2addr p5, p2

    int-to-float p2, p6

    sub-int/2addr p8, p6

    int-to-float p4, p8

    div-float/2addr p4, p3

    add-float/2addr p2, p4

    .line 308
    iget p3, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->lastDrawnCy:F

    cmpl-float p4, p2, p3

    const/4 p6, 0x0

    if-eqz p4, :cond_0

    cmpl-float p3, p3, p6

    if-nez p3, :cond_1

    :cond_0
    iget p3, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->lastDrawnCx:F

    cmpl-float p4, p5, p3

    if-eqz p4, :cond_2

    cmpl-float p3, p3, p6

    if-eqz p3, :cond_2

    :cond_1
    invoke-direct {p0, p5, p2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->animateChanges(FF)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_0

    .line 311
    :cond_2
    sget-boolean p3, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->lockPositionChanging:Z

    if-eqz p3, :cond_3

    goto :goto_0

    .line 314
    :cond_3
    iget p3, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->lastDrawnCx:F

    cmpl-float p3, p5, p3

    if-nez p3, :cond_4

    iget p3, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->lastDrawnCy:F

    cmpl-float p3, p2, p3

    if-eqz p3, :cond_5

    .line 315
    :cond_4
    iput p5, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->lastDrawnCx:F

    .line 316
    iput p2, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->lastDrawnCy:F

    .line 317
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->positionChanged:Z

    :cond_5
    :goto_0
    return-void
.end method

.method public getDocumentId()J
    .locals 2

    .line 189
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentId:J

    return-wide v0
.end method

.method public getExtraScale()F
    .locals 8

    .line 98
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->isAdded:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    const-wide/16 v3, 0x82

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v0, :cond_1

    .line 99
    sput-boolean v2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->lockPositionChanging:Z

    .line 100
    iput-boolean v7, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->isAdded:Z

    .line 101
    iput v6, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->extraScale:F

    .line 102
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->scaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 104
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->scaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 106
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->extraScale:F

    new-array v1, v1, [F

    aput v0, v1, v7

    aput v5, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->scaleAnimator:Landroid/animation/ValueAnimator;

    .line 107
    new-instance v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/AnimatedEmojiSpan;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 112
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->scaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$1;-><init>(Lorg/telegram/ui/Components/AnimatedEmojiSpan;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 119
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->scaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 120
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->scaleAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 121
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->scaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 122
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->isRemoved:Z

    if-eqz v0, :cond_3

    .line 123
    iput-boolean v7, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->isRemoved:Z

    .line 124
    iput v5, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->extraScale:F

    .line 125
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->scaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 126
    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 127
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->scaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 129
    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->extraScale:F

    new-array v1, v1, [F

    aput v0, v1, v7

    aput v6, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->scaleAnimator:Landroid/animation/ValueAnimator;

    .line 130
    new-instance v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/AnimatedEmojiSpan;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 134
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->scaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$2;-><init>(Lorg/telegram/ui/Components/AnimatedEmojiSpan;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 144
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->scaleAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 145
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->scaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 146
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->scaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 148
    :cond_3
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->extraScale:F

    return v0
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 5

    if-nez p5, :cond_0

    .line 220
    iget-boolean p2, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->top:Z

    if-eqz p2, :cond_0

    .line 221
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p5

    :cond_0
    const/4 p1, 0x0

    if-nez p5, :cond_1

    move p2, p1

    goto :goto_0

    .line 223
    :cond_1
    iget p2, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    :goto_0
    if-nez p5, :cond_2

    move p3, p1

    goto :goto_1

    :cond_2
    iget p3, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 224
    :goto_1
    iget-object p4, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    if-nez p4, :cond_4

    .line 225
    iget p4, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->size:F

    float-to-int p4, p4

    const/high16 v0, 0x41000000    # 8.0f

    .line 227
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    .line 228
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    if-eqz p5, :cond_3

    neg-int v2, v1

    sub-int/2addr v2, v0

    int-to-float v2, v2

    .line 231
    iget v3, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->scale:F

    mul-float v4, v2, v3

    float-to-int v4, v4

    iput v4, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v1, v0

    int-to-float v0, v1

    mul-float v1, v0, v3

    float-to-int v1, v1

    .line 232
    iput v1, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 233
    iput v1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    mul-float/2addr v0, v3

    float-to-int v0, v0

    .line 234
    iput v0, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 235
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    :cond_3
    int-to-float p4, p4

    .line 238
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->scale:F

    mul-float/2addr p4, v0

    float-to-int p4, p4

    iput p4, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->measuredSize:I

    goto :goto_2

    .line 240
    :cond_4
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->size:F

    iget v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->scale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->measuredSize:I

    if-eqz p5, :cond_6

    .line 243
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->full:Z

    if-nez v0, :cond_5

    .line 244
    iget v0, p4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput v0, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 245
    iget v0, p4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput v0, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 247
    iget v0, p4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iput v0, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 248
    iget p4, p4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iput p4, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto :goto_2

    .line 250
    :cond_5
    iget p4, p4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/2addr p4, v0

    int-to-float p4, p4

    .line 252
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v0, v0

    div-float/2addr v0, p4

    iget v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->measuredSize:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 253
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-float v0, v0

    div-float/2addr v0, p4

    iget v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->measuredSize:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 255
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v0, v0

    div-float/2addr v0, p4

    iget v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->measuredSize:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 256
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-float v0, v0

    div-float/2addr v0, p4

    iget p4, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->measuredSize:I

    int-to-float p4, p4

    mul-float/2addr v0, p4

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p4, v0

    iput p4, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    :cond_6
    :goto_2
    if-eqz p5, :cond_7

    .line 260
    iget-boolean p4, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->top:Z

    if-eqz p4, :cond_7

    .line 261
    iget p4, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr p2, p4

    iget v0, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int/2addr p3, v0

    add-int/2addr p2, p3

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p4, p2

    .line 262
    iput p4, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v0, p2

    .line 263
    iput v0, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 265
    :cond_7
    iget p2, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->measuredSize:I

    add-int/lit8 p2, p2, -0x1

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public replaceFontMetrics(Landroid/graphics/Paint$FontMetricsInt;)V
    .locals 1

    .line 193
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    if-eqz p1, :cond_0

    .line 195
    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->size:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    const/high16 p1, 0x41a00000    # 20.0f

    .line 197
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->size:F

    :cond_0
    return-void
.end method

.method public replaceFontMetrics(Landroid/graphics/Paint$FontMetricsInt;II)V
    .locals 0

    .line 203
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    int-to-float p1, p2

    .line 204
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->size:F

    .line 205
    iput p3, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->cacheType:I

    return-void
.end method

.method public setAdded()V
    .locals 1

    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->isAdded:Z

    const/4 v0, 0x0

    .line 84
    iput v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->extraScale:F

    return-void
.end method

.method public setAnimateChanges()V
    .locals 1

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->animateChanges:Z

    return-void
.end method

.method public setRemoved(Ljava/lang/Runnable;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->removedAction:Ljava/lang/Runnable;

    const/4 p1, 0x1

    .line 93
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->isRemoved:Z

    const/high16 p1, 0x3f800000    # 1.0f

    .line 94
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->extraScale:F

    return-void
.end method
