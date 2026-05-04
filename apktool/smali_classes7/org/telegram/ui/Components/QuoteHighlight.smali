.class public Lorg/telegram/ui/Components/QuoteHighlight;
.super Landroid/graphics/Path;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/QuoteHighlight$Rect;
    }
.end annotation


# instance fields
.field public final cell:Lorg/telegram/ui/Cells/ChatMessageCell;

.field private cornerPathEffectSize:I

.field private currentOffsetX:F

.field private currentOffsetY:F

.field public final end:I

.field public final id:I

.field private lastRect:Lorg/telegram/ui/Components/QuoteHighlight$Rect;

.field private minX:F

.field public final paint:Landroid/graphics/Paint;

.field private final path:Lorg/telegram/ui/Components/CornerPath;

.field public final quotesToExpand:Ljava/util/ArrayList;

.field private final rectangles:Ljava/util/ArrayList;

.field public final start:I

.field private final t:Lorg/telegram/ui/Components/AnimatedFloat;

.field public final todo:Z


# direct methods
.method public static synthetic $r8$lambda$4waOk2vMbE18qeSW6UP2-HXYHDU(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 64
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    .line 65
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public static synthetic $r8$lambda$ts0rkdmdnOoQNtXLrSF4DKAAQB8(Landroid/view/View;Landroid/view/ViewParent;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 84
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 85
    :cond_0
    instance-of p0, p1, Landroid/view/View;

    if-eqz p0, :cond_1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/ViewParent;ILjava/util/ArrayList;IIF)V
    .locals 14

    move-object/from16 v0, p4

    move/from16 v1, p5

    move/from16 v2, p6

    .line 81
    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    .line 36
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lorg/telegram/ui/Components/QuoteHighlight;->paint:Landroid/graphics/Paint;

    .line 37
    new-instance v5, Lorg/telegram/ui/Components/CornerPath;

    invoke-direct {v5}, Lorg/telegram/ui/Components/CornerPath;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Components/QuoteHighlight;->path:Lorg/telegram/ui/Components/CornerPath;

    .line 49
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Components/QuoteHighlight;->rectangles:Ljava/util/ArrayList;

    .line 50
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Components/QuoteHighlight;->quotesToExpand:Ljava/util/ArrayList;

    const/4 v5, 0x0

    .line 82
    iput-object v5, p0, Lorg/telegram/ui/Components/QuoteHighlight;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 83
    new-instance v6, Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v8, Lorg/telegram/ui/Components/QuoteHighlight$$ExternalSyntheticLambda0;

    move-object/from16 v5, p2

    invoke-direct {v8, p1, v5}, Lorg/telegram/ui/Components/QuoteHighlight$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;Landroid/view/ViewParent;)V

    const-wide/16 v11, 0x1a4

    sget-object v13, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const/4 v7, 0x0

    const-wide/16 v9, 0x15e

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(FLjava/lang/Runnable;JJLandroid/animation/TimeInterpolator;)V

    iput-object v6, p0, Lorg/telegram/ui/Components/QuoteHighlight;->t:Lorg/telegram/ui/Components/AnimatedFloat;

    move/from16 p1, p3

    .line 87
    iput p1, p0, Lorg/telegram/ui/Components/QuoteHighlight;->id:I

    .line 88
    iput v1, p0, Lorg/telegram/ui/Components/QuoteHighlight;->start:I

    .line 89
    iput v2, p0, Lorg/telegram/ui/Components/QuoteHighlight;->end:I

    const/4 p1, 0x0

    .line 90
    iput-boolean p1, p0, Lorg/telegram/ui/Components/QuoteHighlight;->todo:Z

    if-nez v0, :cond_0

    goto/16 :goto_7

    .line 93
    :cond_0
    new-instance v5, Landroid/graphics/CornerPathEffect;

    const/high16 v6, 0x40800000    # 4.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iput v6, p0, Lorg/telegram/ui/Components/QuoteHighlight;->cornerPathEffectSize:I

    int-to-float v6, v6

    invoke-direct {v5, v6}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    move v3, p1

    move v5, v3

    .line 96
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_a

    .line 97
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;

    if-nez v6, :cond_2

    :cond_1
    :goto_1
    move/from16 v9, p7

    goto/16 :goto_6

    .line 99
    :cond_2
    iget v7, v6, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->charactersEnd:I

    if-gt v1, v7, :cond_1

    iget v7, v6, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->charactersOffset:I

    if-ge v2, v7, :cond_3

    goto :goto_1

    :cond_3
    sub-int v7, v1, v7

    .line 101
    invoke-static {p1, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 102
    iget v8, v6, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->charactersOffset:I

    sub-int v9, v2, v8

    iget v10, v6, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->charactersEnd:I

    sub-int/2addr v10, v8

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    move/from16 v9, p7

    neg-float v10, v9

    .line 104
    iput v10, p0, Lorg/telegram/ui/Components/QuoteHighlight;->currentOffsetX:F

    .line 105
    iget-boolean v11, v6, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->code:Z

    const/high16 v12, 0x41200000    # 10.0f

    if-eqz v11, :cond_4

    iget-boolean v11, v6, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->quote:Z

    if-nez v11, :cond_4

    .line 106
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    iput v10, p0, Lorg/telegram/ui/Components/QuoteHighlight;->currentOffsetX:F

    .line 108
    :cond_4
    invoke-virtual {v6, v0}, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textYOffset(Ljava/util/ArrayList;)F

    move-result v10

    iget v11, v6, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->padTop:I

    int-to-float v11, v11

    add-float/2addr v10, v11

    iput v10, p0, Lorg/telegram/ui/Components/QuoteHighlight;->currentOffsetY:F

    .line 109
    iget-boolean v10, v6, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->quote:Z

    if-eqz v10, :cond_5

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    goto :goto_2

    :cond_5
    const/4 v10, 0x0

    :goto_2
    iput v10, p0, Lorg/telegram/ui/Components/QuoteHighlight;->minX:F

    if-nez v5, :cond_7

    .line 111
    iget-object v5, v6, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->isRTL(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_3

    :cond_6
    move v5, p1

    goto :goto_4

    :cond_7
    :goto_3
    move v5, v4

    :goto_4
    if-eqz v5, :cond_8

    .line 113
    iget-object v10, v6, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v10, v7, v8, p0}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    goto :goto_5

    .line 115
    :cond_8
    iget-object v10, v6, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    invoke-direct {p0, v10, v7, v8}, Lorg/telegram/ui/Components/QuoteHighlight;->getSelectionPath(Landroid/text/Layout;II)V

    .line 118
    :goto_5
    iget-boolean v7, v6, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->quoteCollapse:Z

    if-eqz v7, :cond_9

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->collapsed()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 119
    iget-object v7, p0, Lorg/telegram/ui/Components/QuoteHighlight;->quotesToExpand:Ljava/util/ArrayList;

    iget v6, v6, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->index:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 123
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Components/QuoteHighlight;->rectangles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 124
    iget-object v0, p0, Lorg/telegram/ui/Components/QuoteHighlight;->rectangles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/QuoteHighlight$Rect;

    .line 125
    iget-object v0, p0, Lorg/telegram/ui/Components/QuoteHighlight;->rectangles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/QuoteHighlight$Rect;

    .line 127
    iput-boolean v4, p1, Lorg/telegram/ui/Components/QuoteHighlight$Rect;->first:Z

    .line 128
    iget v1, p1, Lorg/telegram/ui/Components/QuoteHighlight$Rect;->top:F

    const v2, 0x3f28f5c3    # 0.66f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iput v1, p1, Lorg/telegram/ui/Components/QuoteHighlight$Rect;->top:F

    .line 130
    iput-boolean v4, v0, Lorg/telegram/ui/Components/QuoteHighlight$Rect;->last:Z

    .line 131
    iget p1, v0, Lorg/telegram/ui/Components/QuoteHighlight$Rect;->bottom:F

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p1, v1

    iput p1, v0, Lorg/telegram/ui/Components/QuoteHighlight$Rect;->bottom:F

    :cond_b
    :goto_7
    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Cells/ChatMessageCell;II)V
    .locals 11

    .line 61
    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/QuoteHighlight;->paint:Landroid/graphics/Paint;

    .line 37
    new-instance v2, Lorg/telegram/ui/Components/CornerPath;

    invoke-direct {v2}, Lorg/telegram/ui/Components/CornerPath;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/QuoteHighlight;->path:Lorg/telegram/ui/Components/CornerPath;

    .line 49
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/QuoteHighlight;->rectangles:Ljava/util/ArrayList;

    .line 50
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/QuoteHighlight;->quotesToExpand:Ljava/util/ArrayList;

    .line 62
    iput-object p1, p0, Lorg/telegram/ui/Components/QuoteHighlight;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 63
    new-instance v3, Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v5, Lorg/telegram/ui/Components/QuoteHighlight$$ExternalSyntheticLambda1;

    invoke-direct {v5, p1}, Lorg/telegram/ui/Components/QuoteHighlight$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Cells/ChatMessageCell;)V

    const-wide/16 v8, 0x1a4

    sget-object v10, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const/4 v4, 0x0

    const-wide/16 v6, 0x15e

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(FLjava/lang/Runnable;JJLandroid/animation/TimeInterpolator;)V

    iput-object v3, p0, Lorg/telegram/ui/Components/QuoteHighlight;->t:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 67
    iput p2, p0, Lorg/telegram/ui/Components/QuoteHighlight;->id:I

    neg-int p1, p3

    .line 68
    iput p1, p0, Lorg/telegram/ui/Components/QuoteHighlight;->start:I

    .line 69
    iput p1, p0, Lorg/telegram/ui/Components/QuoteHighlight;->end:I

    .line 70
    iput-boolean v1, p0, Lorg/telegram/ui/Components/QuoteHighlight;->todo:Z

    .line 72
    new-instance p1, Landroid/graphics/CornerPathEffect;

    const/high16 p2, 0x40800000    # 4.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/Components/QuoteHighlight;->cornerPathEffectSize:I

    int-to-float p2, p2

    invoke-direct {p1, p2}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-void
.end method

.method private getSelectionPath(Landroid/text/Layout;II)V
    .locals 8

    if-ne p2, p3, :cond_0

    goto :goto_4

    :cond_0
    if-ge p3, p2, :cond_1

    move v7, p3

    move p3, p2

    move p2, v7

    .line 146
    :cond_1
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 147
    invoke-virtual {p1, p3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    move v2, v0

    :goto_0
    if-gt v2, v1, :cond_6

    .line 150
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 151
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    if-ne v4, v3, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v5, v3, 0x1

    if-ne v5, v4, :cond_3

    .line 155
    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    if-ne v2, v0, :cond_4

    if-le p2, v3, :cond_4

    .line 160
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v3

    goto :goto_1

    .line 162
    :cond_4
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v3

    :goto_1
    if-ne v2, v1, :cond_5

    if-ge p3, v4, :cond_5

    .line 165
    invoke-virtual {p1, p3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    goto :goto_2

    .line 167
    :cond_5
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getLineRight(I)F

    move-result v4

    .line 171
    :goto_2
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 172
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    int-to-float v6, v6

    .line 173
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 174
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v4

    int-to-float v4, v4

    .line 170
    invoke-virtual {p0, v5, v6, v3, v4}, Lorg/telegram/ui/Components/QuoteHighlight;->addRect(FFFF)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    :goto_4
    return-void
.end method


# virtual methods
.method public addRect(FFFF)V
    .locals 3

    cmpl-float v0, p1, p3

    if-ltz v0, :cond_0

    return-void

    .line 240
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/QuoteHighlight;->minX:F

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 241
    iget v0, p0, Lorg/telegram/ui/Components/QuoteHighlight;->minX:F

    invoke-static {v0, p3}, Ljava/lang/Math;->max(FF)F

    move-result p3

    .line 243
    iget v0, p0, Lorg/telegram/ui/Components/QuoteHighlight;->currentOffsetX:F

    add-float/2addr p1, v0

    .line 244
    iget v1, p0, Lorg/telegram/ui/Components/QuoteHighlight;->currentOffsetY:F

    add-float/2addr p2, v1

    add-float/2addr p3, v0

    add-float/2addr p4, v1

    .line 248
    new-instance v0, Lorg/telegram/ui/Components/QuoteHighlight$Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/QuoteHighlight$Rect;-><init>(Lorg/telegram/ui/Components/QuoteHighlight-IA;)V

    const/high16 v1, 0x40400000    # 3.0f

    .line 249
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr p1, v2

    iput p1, v0, Lorg/telegram/ui/Components/QuoteHighlight$Rect;->left:F

    .line 250
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p3, p1

    iput p3, v0, Lorg/telegram/ui/Components/QuoteHighlight$Rect;->right:F

    .line 251
    iput p2, v0, Lorg/telegram/ui/Components/QuoteHighlight$Rect;->top:F

    .line 252
    iput p4, v0, Lorg/telegram/ui/Components/QuoteHighlight$Rect;->bottom:F

    .line 253
    iget-object p1, p0, Lorg/telegram/ui/Components/QuoteHighlight;->lastRect:Lorg/telegram/ui/Components/QuoteHighlight$Rect;

    if-eqz p1, :cond_1

    .line 254
    iget p3, p1, Lorg/telegram/ui/Components/QuoteHighlight$Rect;->bottom:F

    add-float p4, p3, p2

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p4, v1

    iput p4, p1, Lorg/telegram/ui/Components/QuoteHighlight$Rect;->nextBottom:F

    add-float/2addr p3, p2

    div-float/2addr p3, v1

    .line 255
    iput p3, v0, Lorg/telegram/ui/Components/QuoteHighlight$Rect;->prevTop:F

    .line 257
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/QuoteHighlight;->rectangles:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    iput-object v0, p0, Lorg/telegram/ui/Components/QuoteHighlight;->lastRect:Lorg/telegram/ui/Components/QuoteHighlight$Rect;

    return-void
.end method

.method public addRect(FFFFLandroid/graphics/Path$Direction;)V
    .locals 0

    .line 227
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/QuoteHighlight;->addRect(FFFF)V

    return-void
.end method

.method public done()Z
    .locals 2

    .line 222
    iget-object v0, p0, Lorg/telegram/ui/Components/QuoteHighlight;->t:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;FFLandroid/graphics/Rect;F)V
    .locals 9

    .line 184
    iget-object v0, p0, Lorg/telegram/ui/Components/QuoteHighlight;->t:Lorg/telegram/ui/Components/AnimatedFloat;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v0

    .line 186
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 187
    iget-boolean v1, p0, Lorg/telegram/ui/Components/QuoteHighlight;->todo:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/high16 p2, 0x40800000    # 4.0f

    .line 188
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-static {p2, v2, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result p2

    .line 189
    iget p3, p0, Lorg/telegram/ui/Components/QuoteHighlight;->cornerPathEffectSize:I

    if-eq p3, p2, :cond_0

    .line 190
    iget-object p3, p0, Lorg/telegram/ui/Components/QuoteHighlight;->paint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/CornerPathEffect;

    iput p2, p0, Lorg/telegram/ui/Components/QuoteHighlight;->cornerPathEffectSize:I

    int-to-float p2, p2

    invoke-direct {v1, p2}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 192
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/QuoteHighlight;->path:Lorg/telegram/ui/Components/CornerPath;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/CornerPath;->rewind()V

    .line 193
    iget-object p2, p0, Lorg/telegram/ui/Components/QuoteHighlight;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget p3, p0, Lorg/telegram/ui/Components/QuoteHighlight;->start:I

    neg-int p3, p3

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTodoIndex(I)I

    move-result p2

    .line 194
    sget-object p3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/Components/QuoteHighlight;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableLeft()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/QuoteHighlight;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v2, p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPollButtonTop(I)F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/QuoteHighlight;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableRight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/QuoteHighlight;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v4, p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPollButtonBottom(I)F

    move-result p2

    invoke-virtual {p3, v1, v2, v3, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 195
    invoke-static {p4, p3, v0, p3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(Landroid/graphics/Rect;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V

    .line 196
    iget-object p2, p0, Lorg/telegram/ui/Components/QuoteHighlight;->path:Lorg/telegram/ui/Components/CornerPath;

    sget-object p4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p2, p3, p4}, Lorg/telegram/ui/Components/CornerPath;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 197
    iget-object p2, p0, Lorg/telegram/ui/Components/QuoteHighlight;->path:Lorg/telegram/ui/Components/CornerPath;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/CornerPath;->closeRects()V

    goto :goto_3

    .line 199
    :cond_1
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 200
    iget-object v1, p0, Lorg/telegram/ui/Components/QuoteHighlight;->path:Lorg/telegram/ui/Components/CornerPath;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/CornerPath;->rewind()V

    .line 201
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/QuoteHighlight;->rectangles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_4

    .line 202
    iget-object v1, p0, Lorg/telegram/ui/Components/QuoteHighlight;->rectangles:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/QuoteHighlight$Rect;

    .line 203
    iget-object v3, p0, Lorg/telegram/ui/Components/QuoteHighlight;->path:Lorg/telegram/ui/Components/CornerPath;

    iget v4, p4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float/2addr v4, p2

    iget v5, v1, Lorg/telegram/ui/Components/QuoteHighlight$Rect;->left:F

    .line 204
    invoke-static {v4, v5, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    .line 205
    iget-boolean v5, v1, Lorg/telegram/ui/Components/QuoteHighlight$Rect;->first:Z

    if-eqz v5, :cond_2

    iget v5, p4, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    sub-float/2addr v5, p3

    goto :goto_1

    :cond_2
    iget v5, v1, Lorg/telegram/ui/Components/QuoteHighlight$Rect;->prevTop:F

    :goto_1
    iget v6, v1, Lorg/telegram/ui/Components/QuoteHighlight$Rect;->top:F

    invoke-static {v5, v6, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v5

    iget v6, p4, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    sub-float/2addr v6, p2

    iget v7, v1, Lorg/telegram/ui/Components/QuoteHighlight$Rect;->right:F

    .line 206
    invoke-static {v6, v7, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v6

    .line 207
    iget-boolean v7, v1, Lorg/telegram/ui/Components/QuoteHighlight$Rect;->last:Z

    if-eqz v7, :cond_3

    iget v7, p4, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    sub-float/2addr v7, p3

    goto :goto_2

    :cond_3
    iget v7, v1, Lorg/telegram/ui/Components/QuoteHighlight$Rect;->nextBottom:F

    :goto_2
    iget v1, v1, Lorg/telegram/ui/Components/QuoteHighlight$Rect;->bottom:F

    invoke-static {v7, v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v7

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 203
    invoke-virtual/range {v3 .. v8}, Lorg/telegram/ui/Components/CornerPath;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 211
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/Components/QuoteHighlight;->path:Lorg/telegram/ui/Components/CornerPath;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/CornerPath;->closeRects()V

    .line 214
    :goto_3
    iget-object p2, p0, Lorg/telegram/ui/Components/QuoteHighlight;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/graphics/Paint;->getAlpha()I

    move-result p2

    .line 215
    iget-object p3, p0, Lorg/telegram/ui/Components/QuoteHighlight;->paint:Landroid/graphics/Paint;

    int-to-float p4, p2

    mul-float/2addr p4, p5

    float-to-int p4, p4

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 216
    iget-object p3, p0, Lorg/telegram/ui/Components/QuoteHighlight;->path:Lorg/telegram/ui/Components/CornerPath;

    iget-object p4, p0, Lorg/telegram/ui/Components/QuoteHighlight;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 217
    iget-object p3, p0, Lorg/telegram/ui/Components/QuoteHighlight;->paint:Landroid/graphics/Paint;

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 218
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getT()F
    .locals 2

    .line 180
    iget-object v0, p0, Lorg/telegram/ui/Components/QuoteHighlight;->t:Lorg/telegram/ui/Components/AnimatedFloat;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v0

    return v0
.end method
