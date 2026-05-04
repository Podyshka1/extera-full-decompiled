.class public abstract Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;
.super Lorg/telegram/ui/Cells/TextSelectionHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Cells/TextSelectionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChatListTextSelectionHelper"
.end annotation


# static fields
.field public static TYPE_CAPTION:I = 0x1

.field public static TYPE_DESCRIPTION:I = 0x2

.field public static TYPE_FACTCHECK:I = 0x3

.field public static TYPE_MESSAGE:I


# instance fields
.field animatorSparseArray:Landroid/util/SparseArray;

.field public isDescription:Z

.field public isFactCheck:Z

.field private maybeIsDescription:Z

.field private maybeIsFactCheck:Z


# direct methods
.method public static synthetic $r8$lambda$Gcwvj2Ry5WM_FcJtCCC-93mDpYk(Lorg/telegram/ui/Cells/ChatMessageCell;ILandroid/animation/ValueAnimator;)V
    .locals 1

    .line 2379
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 2380
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 2381
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->setSelectedBackgroundProgress(F)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$IOJWew8cAG7I2Px4l6oTMSgA7kw(Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;ZLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->lambda$onTextSelected$0(ZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1911
    invoke-direct {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;-><init>()V

    .line 1917
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->animatorSparseArray:Landroid/util/SparseArray;

    return-void
.end method

.method private fillLayoutForCoords(IILorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;Z)V
    .locals 8

    if-nez p3, :cond_0

    goto/16 :goto_6

    .line 2203
    :cond_0
    invoke-virtual {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p5, :cond_1

    .line 2205
    iget-boolean v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->maybeIsDescription:Z

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->isDescription:Z

    if-eqz v2, :cond_2

    .line 2206
    :goto_0
    invoke-virtual {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getDescriptionlayout()Landroid/text/StaticLayout;

    move-result-object p1

    iput-object p1, p4, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->layout:Landroid/text/Layout;

    .line 2207
    iput v0, p4, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->xOffset:F

    iput v0, p4, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->yOffset:F

    .line 2208
    iput v1, p4, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->charOffset:I

    return-void

    :cond_2
    if-eqz p5, :cond_3

    .line 2211
    iget-boolean p5, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->maybeIsFactCheck:Z

    if-eqz p5, :cond_4

    goto :goto_1

    :cond_3
    iget-boolean p5, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->isFactCheck:Z

    if-eqz p5, :cond_4

    .line 2212
    :goto_1
    invoke-virtual {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getFactCheckLayout()Landroid/text/StaticLayout;

    move-result-object p1

    iput-object p1, p4, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->layout:Landroid/text/Layout;

    .line 2213
    iput v0, p4, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->xOffset:F

    iput v0, p4, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->yOffset:F

    .line 2214
    iput v1, p4, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->charOffset:I

    return-void

    .line 2217
    :cond_4
    invoke-virtual {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->hasCaptionLayout()Z

    move-result p5

    const/high16 v2, 0x41000000    # 8.0f

    const/high16 v3, 0x41200000    # 10.0f

    if-eqz p5, :cond_9

    .line 2218
    invoke-virtual {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCaptionLayout()Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;

    move-result-object p1

    move p5, v1

    .line 2219
    :goto_2
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textLayoutBlocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p5, v0, :cond_f

    .line 2220
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textLayoutBlocks:Ljava/util/ArrayList;

    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;

    int-to-float v4, p2

    .line 2221
    iget-object v5, p1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textLayoutBlocks:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textYOffset(Ljava/util/ArrayList;)F

    move-result v5

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_8

    iget-object v5, p1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textLayoutBlocks:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textYOffset(Ljava/util/ArrayList;)F

    move-result v5

    iget v6, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->padTop:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget-object v6, p3, Lorg/telegram/ui/Cells/ChatMessageCell;->transitionParams:Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->height(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_8

    .line 2222
    iget-object p2, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    iput-object p2, p4, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->layout:Landroid/text/Layout;

    .line 2223
    iget-object p2, p1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textLayoutBlocks:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textYOffset(Ljava/util/ArrayList;)F

    move-result p2

    iget p3, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->padTop:I

    int-to-float p3, p3

    add-float/2addr p2, p3

    iput p2, p4, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->yOffset:F

    .line 2225
    iget-boolean p2, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->quote:Z

    if-eqz p2, :cond_5

    .line 2226
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    goto :goto_3

    :cond_5
    move p2, v1

    .line 2228
    :goto_3
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->isRtl()Z

    move-result p3

    if-eqz p3, :cond_6

    iget p1, p1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textXOffset:F

    float-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p1, v3

    sub-int v1, p1, p2

    :cond_6
    neg-int p1, v1

    int-to-float p1, p1

    iput p1, p4, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->xOffset:F

    .line 2229
    iget-boolean p2, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->code:Z

    if-eqz p2, :cond_7

    iget-boolean p2, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->quote:Z

    if-nez p2, :cond_7

    .line 2230
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p1, p2

    iput p1, p4, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->xOffset:F

    .line 2232
    :cond_7
    iget p1, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->charactersOffset:I

    iput p1, p4, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->charOffset:I

    return-void

    :cond_8
    add-int/lit8 p5, p5, 0x1

    goto :goto_2

    :cond_9
    move p5, v1

    .line 2239
    :goto_4
    iget-object v4, p1, Lorg/telegram/messenger/MessageObject;->textLayoutBlocks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p5, v4, :cond_f

    .line 2240
    iget-object v4, p1, Lorg/telegram/messenger/MessageObject;->textLayoutBlocks:Ljava/util/ArrayList;

    invoke-virtual {v4, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;

    int-to-float v5, p2

    .line 2241
    iget-object v6, p1, Lorg/telegram/messenger/MessageObject;->textLayoutBlocks:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textYOffset(Ljava/util/ArrayList;)F

    move-result v6

    cmpl-float v6, v5, v6

    if-ltz v6, :cond_e

    iget-object v6, p1, Lorg/telegram/messenger/MessageObject;->textLayoutBlocks:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textYOffset(Ljava/util/ArrayList;)F

    move-result v6

    iget v7, v4, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->padTop:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget-object v7, p3, Lorg/telegram/ui/Cells/ChatMessageCell;->transitionParams:Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    invoke-virtual {v4, v7}, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->height(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_e

    .line 2242
    iget-object p2, v4, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    iput-object p2, p4, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->layout:Landroid/text/Layout;

    .line 2243
    iget-object p2, p1, Lorg/telegram/messenger/MessageObject;->textLayoutBlocks:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textYOffset(Ljava/util/ArrayList;)F

    move-result p2

    iget p3, v4, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->padTop:I

    int-to-float p3, p3

    add-float/2addr p2, p3

    iput p2, p4, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->yOffset:F

    .line 2245
    iget-boolean p2, v4, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->quote:Z

    if-eqz p2, :cond_a

    .line 2246
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    goto :goto_5

    .line 2247
    :cond_a
    iget-boolean p2, v4, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->code:Z

    if-eqz p2, :cond_b

    .line 2248
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    goto :goto_5

    :cond_b
    move p2, v1

    .line 2250
    :goto_5
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->isRtl()Z

    move-result p3

    if-eqz p3, :cond_c

    iget p1, p1, Lorg/telegram/messenger/MessageObject;->textXOffset:F

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    sub-int v1, p1, p2

    :cond_c
    neg-int p1, v1

    int-to-float p1, p1

    iput p1, p4, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->xOffset:F

    .line 2251
    iget-boolean p2, v4, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->code:Z

    if-eqz p2, :cond_d

    iget-boolean p2, v4, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->quote:Z

    if-nez p2, :cond_d

    .line 2252
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p1, p2

    iput p1, p4, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->xOffset:F

    .line 2254
    :cond_d
    iget p1, v4, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->charactersOffset:I

    iput p1, p4, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->charOffset:I

    return-void

    :cond_e
    add-int/lit8 p5, p5, 0x1

    goto :goto_4

    :cond_f
    :goto_6
    return-void
.end method

.method private synthetic lambda$onTextSelected$0(ZLandroid/animation/ValueAnimator;)V
    .locals 1

    .line 2048
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->enterProgress:F

    .line 2049
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textSelectionOverlay:Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    if-eqz p2, :cond_0

    .line 2050
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->invalidate()V

    .line 2052
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    if-eqz p2, :cond_1

    check-cast p2, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object p2

    if-nez p2, :cond_1

    if-eqz p1, :cond_1

    .line 2053
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    check-cast p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    const/high16 p2, 0x3f800000    # 1.0f

    iget v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->enterProgress:F

    sub-float/2addr p2, v0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->setSelectedBackgroundProgress(F)V

    :cond_1
    return-void
.end method


# virtual methods
.method public cancelAllAnimators()V
    .locals 3

    const/4 v0, 0x0

    .line 2463
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->animatorSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2464
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->animatorSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    .line 2465
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2467
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->animatorSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public checkDataChanged(Lorg/telegram/messenger/MessageObject;)V
    .locals 1

    .line 2509
    :try_start_0
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->edit_date:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2511
    :catch_0
    iget v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedCellId:I

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    .line 2512
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->clear(Z)V

    :cond_0
    return-void
.end method

.method public clear(Z)V
    .locals 0

    .line 2480
    invoke-super {p0, p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->clear(Z)V

    const/4 p1, 0x0

    .line 2481
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->isDescription:Z

    .line 2482
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->isFactCheck:Z

    return-void
.end method

.method public draw(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$TextLayoutBlock;Landroid/graphics/Canvas;)V
    .locals 12

    .line 2070
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    if-eqz v0, :cond_5

    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->isDescription:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->isFactCheck:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 2074
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2075
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->textLayoutBlocks:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    goto/16 :goto_2

    .line 2079
    :cond_1
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    iget v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedCellId:I

    if-ne p1, v1, :cond_5

    .line 2080
    iget p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    iget v1, p2, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->charactersOffset:I

    sub-int/2addr p1, v1

    .line 2081
    iget v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    sub-int/2addr v2, v1

    .line 2082
    iget-object v1, p2, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v3, 0x0

    invoke-static {p1, v1, v3}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    move-result v7

    .line 2083
    iget-object p1, p2, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-static {v2, p1, v3}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    move-result v8

    if-eq v7, v8, :cond_5

    .line 2087
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2088
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionPaint:Landroid/graphics/Paint;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outTextSelectionHighlight:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getThemedColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2089
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionHandlePaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 2091
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionPaint:Landroid/graphics/Paint;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inTextSelectionHighlight:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getThemedColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2092
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionHandlePaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 2095
    :goto_0
    iget-boolean p1, p2, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->quote:Z

    if-eqz p1, :cond_3

    const/high16 p1, 0x41200000    # 10.0f

    .line 2096
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    goto :goto_1

    .line 2097
    :cond_3
    iget-boolean p1, p2, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->code:Z

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    .line 2098
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    .line 2100
    :cond_4
    :goto_1
    iget-object v6, p2, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    const/4 v10, 0x1

    int-to-float v11, v3

    const/4 v9, 0x1

    move-object v4, p0

    move-object v5, p3

    invoke-virtual/range {v4 .. v11}, Lorg/telegram/ui/Cells/TextSelectionHelper;->drawSelection(Landroid/graphics/Canvas;Landroid/text/Layout;IIZZF)V

    :cond_5
    :goto_2
    return-void
.end method

.method public drawCaption(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$TextLayoutBlock;Landroid/graphics/Canvas;)V
    .locals 12

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 2109
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->isDescription:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->isFactCheck:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    if-eqz v0, :cond_5

    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    if-eq v0, v1, :cond_1

    goto/16 :goto_2

    .line 2113
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    iget v1, p2, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->charactersOffset:I

    sub-int/2addr v0, v1

    .line 2114
    iget v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    sub-int/2addr v2, v1

    .line 2115
    iget-object v1, p2, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    move-result v7

    .line 2116
    iget-object v0, p2, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {v2, v0, v3}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    move-result v8

    if-eq v7, v8, :cond_5

    .line 2119
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2120
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionPaint:Landroid/graphics/Paint;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outTextSelectionHighlight:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getThemedColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2121
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionHandlePaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 2123
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionPaint:Landroid/graphics/Paint;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inTextSelectionHighlight:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getThemedColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2124
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionHandlePaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 2127
    :goto_0
    iget-boolean p1, p2, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->quote:Z

    if-eqz p1, :cond_3

    const/high16 p1, 0x41200000    # 10.0f

    .line 2128
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    goto :goto_1

    .line 2129
    :cond_3
    iget-boolean p1, p2, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->code:Z

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    .line 2130
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    .line 2132
    :cond_4
    :goto_1
    iget-object v6, p2, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    const/4 v10, 0x1

    int-to-float v11, v3

    const/4 v9, 0x1

    move-object v4, p0

    move-object v5, p3

    invoke-virtual/range {v4 .. v11}, Lorg/telegram/ui/Cells/TextSelectionHelper;->drawSelection(Landroid/graphics/Canvas;Landroid/text/Layout;IIZZF)V

    :cond_5
    :goto_2
    return-void
.end method

.method public drawDescription(ZLandroid/text/StaticLayout;Landroid/graphics/Canvas;)V
    .locals 9

    .line 2424
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->isDescription:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 2428
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionPaint:Landroid/graphics/Paint;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outTextSelectionHighlight:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getThemedColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2429
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionHandlePaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 2431
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionPaint:Landroid/graphics/Paint;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inTextSelectionHighlight:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getThemedColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2432
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionHandlePaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 2434
    :goto_0
    iget v4, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    iget v5, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v3, p2

    move-object v2, p3

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/ui/Cells/TextSelectionHelper;->drawSelection(Landroid/graphics/Canvas;Landroid/text/Layout;IIZZF)V

    return-void
.end method

.method public drawFactCheck(ZLandroid/text/StaticLayout;Landroid/graphics/Canvas;)V
    .locals 9

    .line 2438
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->isFactCheck:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 2442
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionPaint:Landroid/graphics/Paint;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outTextSelectionHighlight:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getThemedColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2443
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionHandlePaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 2445
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionPaint:Landroid/graphics/Paint;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inTextSelectionHighlight:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getThemedColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2446
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionHandlePaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 2448
    :goto_0
    iget v4, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    iget v5, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v3, p2

    move-object v2, p3

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/ui/Cells/TextSelectionHelper;->drawSelection(Landroid/graphics/Canvas;Landroid/text/Layout;IIZZF)V

    return-void
.end method

.method protected fillLayoutForOffset(ILorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;Z)V
    .locals 8

    if-eqz p3, :cond_0

    .line 2262
    iget-object p3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->maybeSelectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    :goto_0
    check-cast p3, Lorg/telegram/ui/Cells/ChatMessageCell;

    goto :goto_1

    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    goto :goto_0

    :goto_1
    const/4 v0, 0x0

    if-nez p3, :cond_1

    .line 2264
    iput-object v0, p2, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->layout:Landroid/text/Layout;

    return-void

    .line 2267
    :cond_1
    invoke-virtual {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    .line 2269
    iget-boolean v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->isDescription:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 2270
    invoke-virtual {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getDescriptionlayout()Landroid/text/StaticLayout;

    move-result-object p1

    iput-object p1, p2, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->layout:Landroid/text/Layout;

    .line 2271
    iput v3, p2, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->yOffset:F

    iput v3, p2, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->xOffset:F

    .line 2272
    iput v4, p2, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->charOffset:I

    return-void

    .line 2275
    :cond_2
    iget-boolean v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->isFactCheck:Z

    if-eqz v2, :cond_3

    .line 2276
    invoke-virtual {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getFactCheckLayout()Landroid/text/StaticLayout;

    move-result-object p1

    iput-object p1, p2, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->layout:Landroid/text/Layout;

    .line 2277
    iput v3, p2, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->yOffset:F

    iput v3, p2, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->xOffset:F

    .line 2278
    iput v4, p2, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->charOffset:I

    return-void

    .line 2282
    :cond_3
    invoke-virtual {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->hasCaptionLayout()Z

    move-result v2

    const/high16 v3, 0x41000000    # 8.0f

    const/high16 v5, 0x41200000    # 10.0f

    const/4 v6, 0x1

    if-eqz v2, :cond_d

    .line 2283
    invoke-virtual {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCaptionLayout()Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;

    move-result-object p3

    .line 2284
    iget-object v1, p3, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textLayoutBlocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v6, :cond_7

    .line 2285
    iget-object p1, p3, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textLayoutBlocks:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;

    .line 2286
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    iput-object v0, p2, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->layout:Landroid/text/Layout;

    .line 2287
    iget p1, p1, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->padTop:I

    int-to-float p1, p1

    iput p1, p2, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->yOffset:F

    .line 2288
    iget-object p1, p3, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textLayoutBlocks:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;

    .line 2290
    iget-boolean v0, p1, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->quote:Z

    if-eqz v0, :cond_4

    .line 2291
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_2

    :cond_4
    move v0, v4

    .line 2293
    :goto_2
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_5

    iget p3, p3, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textXOffset:F

    float-to-double v1, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p3, v1

    sub-int/2addr p3, v0

    goto :goto_3

    :cond_5
    move p3, v4

    :goto_3
    neg-int p3, p3

    int-to-float p3, p3

    iput p3, p2, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->xOffset:F

    .line 2294
    iget-boolean v0, p1, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->code:Z

    if-eqz v0, :cond_6

    iget-boolean p1, p1, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->quote:Z

    if-nez p1, :cond_6

    .line 2295
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p3, p1

    iput p3, p2, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->xOffset:F

    .line 2297
    :cond_6
    iput v4, p2, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->charOffset:I

    return-void

    :cond_7
    move v1, v4

    .line 2301
    :goto_4
    iget-object v2, p3, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textLayoutBlocks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_c

    .line 2302
    iget-object v2, p3, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textLayoutBlocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;

    .line 2303
    iget v6, v2, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->charactersOffset:I

    sub-int v6, p1, v6

    if-ltz v6, :cond_b

    .line 2304
    iget-object v7, v2, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-gt v6, v7, :cond_b

    .line 2305
    iget-object p1, v2, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    iput-object p1, p2, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->layout:Landroid/text/Layout;

    .line 2306
    iget-object p1, p3, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textLayoutBlocks:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textYOffset(Ljava/util/ArrayList;)F

    move-result p1

    iget v0, v2, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->padTop:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    iput p1, p2, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->yOffset:F

    .line 2308
    iget-boolean p1, v2, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->quote:Z

    if-eqz p1, :cond_8

    .line 2309
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    goto :goto_5

    :cond_8
    move p1, v4

    .line 2311
    :goto_5
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_9

    iget p3, p3, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textXOffset:F

    float-to-double v0, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p3, v0

    sub-int v4, p3, p1

    :cond_9
    neg-int p1, v4

    int-to-float p1, p1

    iput p1, p2, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->xOffset:F

    .line 2312
    iget-boolean p3, v2, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->code:Z

    if-eqz p3, :cond_a

    iget-boolean p3, v2, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->quote:Z

    if-nez p3, :cond_a

    .line 2313
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    add-float/2addr p1, p3

    iput p1, p2, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->xOffset:F

    .line 2315
    :cond_a
    iget p1, v2, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->charactersOffset:I

    iput p1, p2, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->charOffset:I

    return-void

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2319
    :cond_c
    iput-object v0, p2, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->layout:Landroid/text/Layout;

    return-void

    .line 2323
    :cond_d
    iget-object p3, v1, Lorg/telegram/messenger/MessageObject;->textLayoutBlocks:Ljava/util/ArrayList;

    if-nez p3, :cond_e

    .line 2324
    iput-object v0, p2, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->layout:Landroid/text/Layout;

    return-void

    .line 2328
    :cond_e
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ne p3, v6, :cond_12

    .line 2329
    iget-object p1, v1, Lorg/telegram/messenger/MessageObject;->textLayoutBlocks:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;

    .line 2330
    iget-object p3, p1, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    iput-object p3, p2, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->layout:Landroid/text/Layout;

    .line 2331
    iget p1, p1, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->padTop:I

    int-to-float p1, p1

    iput p1, p2, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->yOffset:F

    .line 2332
    iget-object p1, v1, Lorg/telegram/messenger/MessageObject;->textLayoutBlocks:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;

    .line 2334
    iget-boolean p3, p1, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->quote:Z

    if-eqz p3, :cond_f

    .line 2335
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    goto :goto_6

    :cond_f
    move p3, v4

    .line 2337
    :goto_6
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_10

    iget v0, v1, Lorg/telegram/messenger/MessageObject;->textXOffset:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    sub-int/2addr v0, p3

    goto :goto_7

    :cond_10
    move v0, v4

    :goto_7
    neg-int p3, v0

    int-to-float p3, p3

    iput p3, p2, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->xOffset:F

    .line 2338
    iget-boolean v0, p1, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->code:Z

    if-eqz v0, :cond_11

    iget-boolean p1, p1, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->quote:Z

    if-nez p1, :cond_11

    .line 2339
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p3, p1

    iput p3, p2, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->xOffset:F

    .line 2341
    :cond_11
    iput v4, p2, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->charOffset:I

    return-void

    :cond_12
    move p3, v4

    .line 2345
    :goto_8
    iget-object v2, v1, Lorg/telegram/messenger/MessageObject;->textLayoutBlocks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p3, v2, :cond_17

    .line 2346
    iget-object v2, v1, Lorg/telegram/messenger/MessageObject;->textLayoutBlocks:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;

    .line 2347
    iget v6, v2, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->charactersOffset:I

    sub-int v6, p1, v6

    if-ltz v6, :cond_16

    .line 2348
    iget-object v7, v2, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-gt v6, v7, :cond_16

    .line 2349
    iget-object p1, v2, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    iput-object p1, p2, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->layout:Landroid/text/Layout;

    .line 2350
    iget-object p1, v1, Lorg/telegram/messenger/MessageObject;->textLayoutBlocks:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textYOffset(Ljava/util/ArrayList;)F

    move-result p1

    iget p3, v2, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->padTop:I

    int-to-float p3, p3

    add-float/2addr p1, p3

    iput p1, p2, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->yOffset:F

    .line 2352
    iget-boolean p1, v2, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->quote:Z

    if-eqz p1, :cond_13

    .line 2353
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    goto :goto_9

    :cond_13
    move p1, v4

    .line 2355
    :goto_9
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->isRtl()Z

    move-result p3

    if-eqz p3, :cond_14

    iget p3, v1, Lorg/telegram/messenger/MessageObject;->textXOffset:F

    float-to-double v0, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p3, v0

    sub-int v4, p3, p1

    :cond_14
    neg-int p1, v4

    int-to-float p1, p1

    iput p1, p2, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->xOffset:F

    .line 2356
    iget-boolean p3, v2, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->code:Z

    if-eqz p3, :cond_15

    iget-boolean p3, v2, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->quote:Z

    if-nez p3, :cond_15

    .line 2357
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    add-float/2addr p1, p3

    iput p1, p2, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->xOffset:F

    .line 2359
    :cond_15
    iget p1, v2, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->charactersOffset:I

    iput p1, p2, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->charOffset:I

    return-void

    :cond_16
    add-int/lit8 p3, p3, 0x1

    goto :goto_8

    .line 2363
    :cond_17
    iput-object v0, p2, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->layout:Landroid/text/Layout;

    return-void
.end method

.method protected getCharOffsetFromCord(IIIILorg/telegram/ui/Cells/ChatMessageCell;Z)I
    .locals 5

    const/4 v0, 0x0

    if-nez p5, :cond_0

    return v0

    :cond_0
    sub-int/2addr p1, p3

    sub-int/2addr p2, p4

    if-eqz p6, :cond_1

    .line 2148
    iget-boolean p3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->maybeIsDescription:Z

    goto :goto_0

    :cond_1
    iget-boolean p3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->isDescription:Z

    :goto_0
    if-eqz p6, :cond_2

    .line 2149
    iget-boolean p4, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->maybeIsFactCheck:Z

    goto :goto_1

    :cond_2
    iget-boolean p4, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->isFactCheck:Z

    :goto_1
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_3

    .line 2151
    invoke-virtual {p5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getDescriptionlayout()Landroid/text/StaticLayout;

    move-result-object p3

    goto :goto_3

    :cond_3
    if-eqz p4, :cond_4

    .line 2153
    invoke-virtual {p5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getFactCheckLayout()Landroid/text/StaticLayout;

    move-result-object p3

    goto :goto_3

    .line 2154
    :cond_4
    invoke-virtual {p5}, Lorg/telegram/ui/Cells/ChatMessageCell;->hasCaptionLayout()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 2155
    invoke-virtual {p5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCaptionLayout()Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;

    move-result-object p3

    iget-object p3, p3, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textLayoutBlocks:Ljava/util/ArrayList;

    invoke-virtual {p5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCaptionLayout()Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;

    move-result-object p4

    iget-object p4, p4, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textLayoutBlocks:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    sub-int/2addr p4, v1

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;

    .line 2156
    iget-object p4, p3, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    .line 2157
    invoke-virtual {p5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCaptionLayout()Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textLayoutBlocks:Ljava/util/ArrayList;

    invoke-virtual {p3, v2}, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textYOffset(Ljava/util/ArrayList;)F

    move-result v2

    iget p3, p3, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->padTop:I

    :goto_2
    int-to-float p3, p3

    add-float/2addr v2, p3

    move-object p3, p4

    goto :goto_3

    .line 2159
    :cond_5
    invoke-virtual {p5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p3

    iget-object p3, p3, Lorg/telegram/messenger/MessageObject;->textLayoutBlocks:Ljava/util/ArrayList;

    invoke-virtual {p5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p4

    iget-object p4, p4, Lorg/telegram/messenger/MessageObject;->textLayoutBlocks:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    sub-int/2addr p4, v1

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;

    .line 2160
    iget-object p4, p3, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    .line 2161
    invoke-virtual {p5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->textLayoutBlocks:Ljava/util/ArrayList;

    invoke-virtual {p3, v2}, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textYOffset(Ljava/util/ArrayList;)F

    move-result v2

    iget p3, p3, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->padTop:I

    goto :goto_2

    :goto_3
    const/4 v3, -0x1

    if-nez p3, :cond_6

    return v3

    :cond_6
    if-gez p2, :cond_7

    move p2, v1

    :cond_7
    int-to-float p4, p2

    .line 2171
    invoke-virtual {p3}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {p3, v4}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    cmpl-float p4, p4, v4

    if-lez p4, :cond_8

    .line 2172
    invoke-virtual {p3}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p2

    sub-int/2addr p2, v1

    invoke-virtual {p3, p2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result p2

    int-to-float p2, p2

    add-float/2addr v2, p2

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p2

    float-to-int p2, v2

    :cond_8
    move p3, p2

    move-object p4, p5

    .line 2175
    iget-object p5, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->layoutBlock:Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;

    move p2, p1

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->fillLayoutForCoords(IILorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;Z)V

    .line 2177
    iget-object p4, p1, Lorg/telegram/ui/Cells/TextSelectionHelper;->layoutBlock:Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;

    iget-object p5, p4, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->layout:Landroid/text/Layout;

    if-nez p5, :cond_9

    return v3

    :cond_9
    int-to-float p2, p2

    .line 2182
    iget p4, p4, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->xOffset:F

    sub-float/2addr p2, p4

    float-to-int p2, p2

    .line 2185
    :goto_4
    invoke-virtual {p5}, Landroid/text/Layout;->getLineCount()I

    move-result p4

    if-ge v0, p4, :cond_b

    int-to-float p4, p3

    .line 2186
    iget-object p6, p1, Lorg/telegram/ui/Cells/TextSelectionHelper;->layoutBlock:Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;

    iget p6, p6, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->yOffset:F

    invoke-virtual {p5, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p6, v1

    cmpl-float p6, p4, p6

    if-lez p6, :cond_a

    iget-object p6, p1, Lorg/telegram/ui/Cells/TextSelectionHelper;->layoutBlock:Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;

    iget p6, p6, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->yOffset:F

    invoke-virtual {p5, v0}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p6, v1

    cmpg-float p4, p4, p6

    if-gez p4, :cond_a

    goto :goto_5

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_b
    move v0, v3

    :goto_5
    if-ltz v0, :cond_c

    .line 2192
    iget-object p3, p1, Lorg/telegram/ui/Cells/TextSelectionHelper;->layoutBlock:Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;

    iget p3, p3, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->charOffset:I

    int-to-float p2, p2

    invoke-virtual {p5, v0, p2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result p2

    add-int/2addr p3, p2

    return p3

    :cond_c
    return v3
.end method

.method protected bridge synthetic getCharOffsetFromCord(IIIILorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;Z)I
    .locals 0

    .line 1911
    check-cast p5, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual/range {p0 .. p6}, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->getCharOffsetFromCord(IIIILorg/telegram/ui/Cells/ChatMessageCell;Z)I

    move-result p1

    return p1
.end method

.method protected getLineHeight()I
    .locals 3

    .line 1952
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1953
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    .line 1955
    iget-boolean v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->isDescription:Z

    if-eqz v2, :cond_0

    .line 1956
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getDescriptionlayout()Landroid/text/StaticLayout;

    move-result-object v0

    goto :goto_0

    .line 1957
    :cond_0
    iget-boolean v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->isFactCheck:Z

    if-eqz v2, :cond_1

    .line 1958
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getFactCheckLayout()Landroid/text/StaticLayout;

    move-result-object v0

    goto :goto_0

    .line 1959
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    check-cast v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->hasCaptionLayout()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1960
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCaptionLayout()Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textLayoutBlocks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    goto :goto_0

    .line 1961
    :cond_2
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->textLayoutBlocks:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 1962
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_4

    return v1

    .line 1967
    :cond_4
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v0

    sub-int/2addr v2, v0

    return v2

    :cond_5
    return v1
.end method

.method protected getText(Lorg/telegram/ui/Cells/ChatMessageCell;Z)Ljava/lang/CharSequence;
    .locals 1

    if-eqz p1, :cond_6

    .line 2012
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p2, :cond_1

    .line 2015
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->maybeIsDescription:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->isDescription:Z

    if-eqz v0, :cond_2

    .line 2016
    :goto_0
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getDescriptionlayout()Landroid/text/StaticLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :cond_2
    if-eqz p2, :cond_3

    .line 2018
    iget-boolean p2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->maybeIsFactCheck:Z

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_3
    iget-boolean p2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->isFactCheck:Z

    if-eqz p2, :cond_4

    .line 2019
    :goto_1
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getFactCheckLayout()Landroid/text/StaticLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 2021
    :cond_4
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->hasCaptionLayout()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 2022
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCaptionLayout()Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->text:Ljava/lang/CharSequence;

    return-object p1

    .line 2024
    :cond_5
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    return-object p1

    :cond_6
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic getText(Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;Z)Ljava/lang/CharSequence;
    .locals 0

    .line 1911
    check-cast p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->getText(Lorg/telegram/ui/Cells/ChatMessageCell;Z)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getTextSelectionType(Lorg/telegram/ui/Cells/ChatMessageCell;)I
    .locals 1

    .line 2486
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->isDescription:Z

    if-eqz v0, :cond_0

    .line 2487
    sget p1, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->TYPE_DESCRIPTION:I

    return p1

    .line 2489
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->isFactCheck:Z

    if-eqz v0, :cond_1

    .line 2490
    sget p1, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->TYPE_FACTCHECK:I

    return p1

    .line 2492
    :cond_1
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->hasCaptionLayout()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2493
    sget p1, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->TYPE_CAPTION:I

    return p1

    .line 2495
    :cond_2
    sget p1, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->TYPE_MESSAGE:I

    return p1
.end method

.method public invalidate()V
    .locals 2

    .line 2453
    invoke-super {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->invalidate()V

    .line 2454
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    if-eqz v0, :cond_0

    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2455
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->parentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 2457
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->isFactCheck:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->maybeIsFactCheck:Z

    if-eqz v1, :cond_2

    .line 2458
    :cond_1
    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidateOutbounds()V

    :cond_2
    return-void
.end method

.method public isMenuEmpty()Z
    .locals 1

    .line 2517
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->canCopy()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->canShowQuote()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isTouched()Z
    .locals 1

    .line 1914
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingHandle:Z

    return v0
.end method

.method public onChatMessageCellAttached(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 2

    .line 2398
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedCellId:I

    if-ne v0, v1, :cond_0

    .line 2399
    iput-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    :cond_0
    return-void
.end method

.method public onChatMessageCellDetached(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 1

    .line 2404
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    iget v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedCellId:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 2405
    iput-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    :cond_0
    return-void
.end method

.method protected onExitSelectionMode(Z)V
    .locals 4

    .line 2368
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    if-eqz v0, :cond_1

    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->isDrawingSelectionBackground()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 2369
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 2370
    check-cast p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    .line 2371
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->animatorSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    if-eqz v1, :cond_0

    .line 2373
    invoke-virtual {v1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 2374
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    :cond_0
    const v1, 0x3c23d70a    # 0.01f

    .line 2376
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->setSelectedBackgroundProgress(F)V

    const/4 v1, 0x2

    .line 2377
    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 2378
    new-instance v2, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, p1}, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Cells/ChatMessageCell;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2384
    new-instance v2, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper$1;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper$1;-><init>(Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v2, 0x12c

    .line 2390
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2391
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 2393
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->animatorSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x3c23d70a    # 0.01f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected onTextSelected(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 4

    if-eqz p2, :cond_1

    .line 2029
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p2

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    .line 2030
    :goto_1
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedCellId:I

    .line 2032
    :try_start_0
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->edit_date:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedCellEditDate:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const/4 v0, 0x0

    .line 2034
    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedCellEditDate:Ljava/lang/Integer;

    :goto_2
    const/4 v0, 0x0

    .line 2036
    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->enterProgress:F

    .line 2037
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->maybeIsDescription:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->isDescription:Z

    .line 2038
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->maybeIsFactCheck:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->isFactCheck:Z

    .line 2040
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->animatorSparseArray:Landroid/util/SparseArray;

    iget v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedCellId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    if-eqz v1, :cond_2

    .line 2042
    invoke-virtual {v1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 2043
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    :cond_2
    const/4 v1, 0x2

    .line 2046
    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 2047
    new-instance v2, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p2}, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;Z)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v2, 0xfa

    .line 2056
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2057
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 2059
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->animatorSparseArray:Landroid/util/SparseArray;

    iget v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedCellId:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-nez p2, :cond_3

    .line 2062
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->setSelectedBackgroundProgress(F)V

    .line 2065
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->removeTextSelectionHint()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected bridge synthetic onTextSelected(Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;)V
    .locals 0

    .line 1911
    check-cast p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    check-cast p2, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->onTextSelected(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    return-void
.end method

.method public select(Lorg/telegram/ui/Cells/ChatMessageCell;II)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 1932
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    .line 1933
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedCellId:I

    .line 1934
    iput p2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    .line 1935
    iput p3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    .line 1936
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->invalidate()V

    .line 1937
    invoke-static {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->-$$Nest$fgetcallback(Lorg/telegram/ui/Cells/TextSelectionHelper;)Lorg/telegram/ui/Cells/TextSelectionHelper$Callback;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1938
    invoke-static {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->-$$Nest$fgetcallback(Lorg/telegram/ui/Cells/TextSelectionHelper;)Lorg/telegram/ui/Cells/TextSelectionHelper$Callback;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextSelectionHelper$Callback;->onStateChanged(Z)V

    :cond_1
    const/4 p1, 0x0

    .line 1940
    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingOffsetY:F

    .line 1941
    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingOffsetX:F

    .line 1942
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->onOffsetChanged()V

    const/4 p1, 0x0

    .line 1943
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->allowDiscard:Z

    .line 1944
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textSelectionOverlay:Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    if-eqz p2, :cond_2

    .line 1945
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1947
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->showHandleViews()V

    return-void
.end method

.method public setIsDescription(Z)V
    .locals 0

    .line 2471
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->maybeIsDescription:Z

    return-void
.end method

.method public setIsFactCheck(Z)V
    .locals 0

    .line 2475
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->maybeIsFactCheck:Z

    return-void
.end method

.method public setMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 7

    .line 1975
    iput-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->maybeSelectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    .line 1976
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    .line 1978
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->maybeIsDescription:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getDescriptionlayout()Landroid/text/StaticLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1979
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textArea:Landroid/graphics/Rect;

    iget v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->maybeTextX:I

    iget v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->maybeTextY:I

    .line 1981
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getDescriptionlayout()Landroid/text/StaticLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v3

    add-int/2addr v3, v1

    iget v4, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->maybeTextY:I

    .line 1982
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getDescriptionlayout()Landroid/text/StaticLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/Layout;->getHeight()I

    move-result p1

    add-int/2addr v4, p1

    .line 1979
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 1984
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->maybeIsFactCheck:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getFactCheckLayout()Landroid/text/StaticLayout;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1985
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textArea:Landroid/graphics/Rect;

    iget v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->maybeTextX:I

    iget v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->maybeTextY:I

    .line 1987
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getFactCheckLayout()Landroid/text/StaticLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v3

    add-int/2addr v3, v1

    iget v4, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->maybeTextY:I

    .line 1988
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getFactCheckLayout()Landroid/text/StaticLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/Layout;->getHeight()I

    move-result p1

    add-int/2addr v4, p1

    .line 1985
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 1990
    :cond_1
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->hasCaptionLayout()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCaptionLayout()Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textLayoutBlocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1991
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCaptionLayout()Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;

    move-result-object v0

    .line 1992
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textLayoutBlocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;

    .line 1993
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textArea:Landroid/graphics/Rect;

    iget v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->maybeTextX:I

    iget v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->maybeTextY:I

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    .line 1995
    invoke-virtual {v4}, Landroid/text/Layout;->getWidth()I

    move-result v4

    add-int/2addr v4, v2

    iget v5, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->maybeTextY:I

    int-to-float v5, v5

    .line 1996
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCaptionLayout()Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textLayoutBlocks:Ljava/util/ArrayList;

    iget-object p1, p1, Lorg/telegram/ui/Cells/ChatMessageCell;->transitionParams:Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    invoke-virtual {v0, v6, p1}, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textYOffset(Ljava/util/ArrayList;Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)F

    move-result p1

    add-float/2addr v5, p1

    iget p1, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->padTop:I

    int-to-float p1, p1

    add-float/2addr v5, p1

    iget-object p1, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {p1}, Landroid/text/Layout;->getHeight()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v5, p1

    float-to-int p1, v5

    .line 1993
    invoke-virtual {v1, v2, v3, v4, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_2
    if-eqz v0, :cond_3

    .line 1998
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->textLayoutBlocks:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 1999
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->textLayoutBlocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;

    .line 2000
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textArea:Landroid/graphics/Rect;

    iget v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->maybeTextX:I

    iget v4, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->maybeTextY:I

    iget-object v5, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    .line 2002
    invoke-virtual {v5}, Landroid/text/Layout;->getWidth()I

    move-result v5

    add-int/2addr v5, v3

    iget v6, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->maybeTextY:I

    int-to-float v6, v6

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->textLayoutBlocks:Ljava/util/ArrayList;

    iget-object p1, p1, Lorg/telegram/ui/Cells/ChatMessageCell;->transitionParams:Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    .line 2003
    invoke-virtual {v1, v0, p1}, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textYOffset(Ljava/util/ArrayList;Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)F

    move-result p1

    add-float/2addr v6, p1

    iget p1, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->padTop:I

    int-to-float p1, p1

    add-float/2addr v6, p1

    iget-object p1, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {p1}, Landroid/text/Layout;->getHeight()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v6, p1

    float-to-int p1, v6

    .line 2000
    invoke-virtual {v2, v3, v4, v5, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_3
    const/4 p1, 0x0

    .line 2006
    iput-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->maybeSelectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    return-void
.end method

.method public updateTextPosition(II)V
    .locals 1

    .line 2499
    iget v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textX:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textY:I

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 2500
    :cond_1
    :goto_0
    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textX:I

    .line 2501
    iput p2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textY:I

    .line 2502
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->invalidate()V

    return-void
.end method
