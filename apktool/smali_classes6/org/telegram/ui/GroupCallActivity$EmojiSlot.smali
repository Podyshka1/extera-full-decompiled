.class public final Lorg/telegram/ui/GroupCallActivity$EmojiSlot;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/GroupCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EmojiSlot"
.end annotation


# instance fields
.field private final INTERVAL:J

.field private attached:Z

.field private clip:Lorg/telegram/ui/GradientClip;

.field private final invalidate:Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;

.field private lastEmoji:Ljava/lang/String;

.field private loaded:Z

.field private final offset:I

.field private final parents:Ljava/util/HashSet;

.field private final pool:[Landroid/graphics/drawable/Drawable;

.field private real:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

.field private realAllowed:Z

.field private realThumb:Landroid/graphics/drawable/Drawable;

.field private final rectF:Landroid/graphics/RectF;

.field private startTime:J


# direct methods
.method public static synthetic $r8$lambda$Kzce2H49DHyfwMeAUIqKsquWqRQ(Lorg/telegram/ui/GroupCallActivity$EmojiSlot;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$qwTHbxkUGVdAtDhZN44bHwlh8XE(Lorg/telegram/ui/GroupCallActivity$EmojiSlot;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->lambda$updateEmoji$1(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 9765
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0xb4

    .line 9749
    iput-wide v0, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->INTERVAL:J

    const/4 v0, 0x6

    .line 9750
    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->pool:[Landroid/graphics/drawable/Drawable;

    .line 9756
    new-instance v0, Lorg/telegram/ui/GradientClip;

    invoke-direct {v0}, Lorg/telegram/ui/GradientClip;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->clip:Lorg/telegram/ui/GradientClip;

    .line 9757
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->parents:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 9758
    iput-boolean v0, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->attached:Z

    .line 9759
    new-instance v1, Lorg/telegram/ui/GroupCallActivity$EmojiSlot$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/GroupCallActivity$EmojiSlot$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/GroupCallActivity$EmojiSlot;)V

    iput-object v1, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->invalidate:Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;

    .line 9850
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->rectF:Landroid/graphics/RectF;

    .line 9766
    iput p1, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->offset:I

    .line 9767
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->pool:[Landroid/graphics/drawable/Drawable;

    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 9768
    invoke-static {}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$smgetRandomEmoji()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/Emoji;->getEmojiDrawable(Ljava/lang/CharSequence;)Lorg/telegram/messenger/Emoji$EmojiDrawable;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9770
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->startTime:J

    return-void
.end method

.method private checkAttach()V
    .locals 3

    .line 9828
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->parents:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    .line 9829
    iget-boolean v2, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->attached:Z

    if-eq v2, v1, :cond_1

    .line 9830
    iput-boolean v1, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->attached:Z

    if-nez v0, :cond_0

    .line 9831
    invoke-direct {p0}, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->onAttached()V

    return-void

    .line 9833
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->onDetached()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    .line 9760
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->parents:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 9761
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateEmoji$1(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V
    .locals 0

    .line 9799
    invoke-direct {p0}, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->updateEmoji()V

    return-void
.end method

.method private onAttached()V
    .locals 2

    .line 9839
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->real:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_0

    .line 9840
    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->invalidate:Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;)V

    :cond_0
    return-void
.end method

.method private onDetached()V
    .locals 2

    .line 9845
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->real:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_0

    .line 9846
    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->invalidate:Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;)V

    :cond_0
    return-void
.end method

.method private shiftPool()V
    .locals 4

    const/4 v0, 0x0

    .line 9934
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->pool:[Landroid/graphics/drawable/Drawable;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    .line 9935
    aget-object v3, v1, v2

    aput-object v3, v1, v0

    move v0, v2

    goto :goto_0

    .line 9937
    :cond_0
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-static {}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$smgetRandomEmoji()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/Emoji;->getEmojiDrawable(Ljava/lang/CharSequence;)Lorg/telegram/messenger/Emoji$EmojiDrawable;

    move-result-object v2

    aput-object v2, v1, v0

    return-void
.end method

.method private updateEmoji()V
    .locals 9

    .line 9795
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->real:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->lastEmoji:Ljava/lang/String;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 9796
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getProductionAccount()I

    move-result v0

    .line 9797
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;-><init>()V

    .line 9798
    const-string v1, "StaticEmoji"

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->short_name:Ljava/lang/String;

    .line 9799
    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v6, Lorg/telegram/ui/GroupCallActivity$EmojiSlot$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lorg/telegram/ui/GroupCallActivity$EmojiSlot$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/GroupCallActivity$EmojiSlot;)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/MediaDataController;->getStickerSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Ljava/lang/Integer;ZZLorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 9802
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->lastEmoji:Ljava/lang/String;

    const-string v4, "\ufe0f"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 9804
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    :cond_2
    const/4 v7, 0x0

    if-ge v0, v6, :cond_3

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v0, v0, 0x1

    check-cast v8, Lorg/telegram/tgnet/TLRPC$Document;

    .line 9805
    invoke-static {v8, v7}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v7, v8

    :cond_3
    if-eqz v7, :cond_4

    .line 9811
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->real:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setupDocument(Lorg/telegram/tgnet/TLRPC$Document;)V

    return-void

    .line 9813
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "emoji \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->lastEmoji:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" not found in addemoji/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->short_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public attach(Landroid/view/View;)V
    .locals 1

    .line 9818
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->parents:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 9819
    invoke-direct {p0}, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->checkAttach()V

    return-void
.end method

.method public detach(Landroid/view/View;)V
    .locals 1

    .line 9823
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->parents:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 9824
    invoke-direct {p0}, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->checkAttach()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)Z
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v8, p2

    const/high16 v1, 0x40c00000    # 6.0f

    .line 9853
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v9, v1

    .line 9854
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v1, v8}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 9855
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->rectF:Landroid/graphics/RectF;

    neg-float v10, v9

    invoke-virtual {v1, v10, v10}, Landroid/graphics/RectF;->inset(FF)V

    .line 9856
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->rectF:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, v1, Landroid/graphics/RectF;->top:F

    iget v4, v1, Landroid/graphics/RectF;->right:F

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    const/16 v6, 0xff

    const/16 v7, 0x1f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 9858
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget v4, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->offset:I

    int-to-long v4, v4

    const-wide/16 v6, 0x2d

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 9859
    iget-wide v4, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->startTime:J

    sub-long v4, v2, v4

    long-to-float v6, v4

    const/high16 v7, 0x43340000    # 180.0f

    div-float/2addr v6, v7

    const/high16 v7, 0x3f800000    # 1.0f

    .line 9862
    invoke-static {v7, v6}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 9864
    iget-boolean v12, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->loaded:Z

    const/16 v14, 0xff

    const/4 v15, 0x0

    move/from16 v16, v7

    const/16 v17, 0x1

    const/4 v7, 0x0

    if-eqz v12, :cond_1

    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->real:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v12, :cond_1

    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->realThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_1

    iget-boolean v12, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->realAllowed:Z

    if-eqz v12, :cond_1

    .line 9865
    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v12, v8}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 9866
    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->rectF:Landroid/graphics/RectF;

    sub-float v18, v11, v16

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v19

    add-float v19, v19, v9

    mul-float v13, v18, v19

    invoke-virtual {v12, v15, v13}, Landroid/graphics/RectF;->offset(FF)V

    cmpg-float v12, p3, v16

    if-gez v12, :cond_0

    .line 9868
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 9869
    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->realThumb:Landroid/graphics/drawable/Drawable;

    const/high16 v18, 0x437f0000    # 255.0f

    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v13

    float-to-int v13, v13

    move/from16 v19, v15

    iget-object v15, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v15}, Landroid/graphics/RectF;->height()F

    move-result v15

    float-to-int v15, v15

    invoke-virtual {v12, v7, v7, v13, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 9870
    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->rectF:Landroid/graphics/RectF;

    iget v13, v12, Landroid/graphics/RectF;->left:F

    iget v12, v12, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v13, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 9871
    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->realThumb:Landroid/graphics/drawable/Drawable;

    sub-float v13, v16, p3

    mul-float v13, v13, v18

    float-to-int v13, v13

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 9872
    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->realThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 9873
    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->realThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12, v14}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 9874
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_0
    move/from16 v19, v15

    const/high16 v18, 0x437f0000    # 255.0f

    :goto_0
    cmpl-float v12, p3, v19

    if-lez v12, :cond_2

    .line 9877
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 9878
    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->rectF:Landroid/graphics/RectF;

    const/high16 v13, -0x3f800000    # -4.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-float v15, v15

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v12, v15, v13}, Landroid/graphics/RectF;->inset(FF)V

    .line 9879
    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->real:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v13

    float-to-int v13, v13

    iget-object v15, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v15}, Landroid/graphics/RectF;->height()F

    move-result v15

    float-to-int v15, v15

    invoke-virtual {v12, v7, v7, v13, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 9880
    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->rectF:Landroid/graphics/RectF;

    iget v13, v12, Landroid/graphics/RectF;->left:F

    iget v12, v12, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v13, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 9881
    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->real:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    mul-float v13, p3, v18

    float-to-int v13, v13

    invoke-virtual {v12, v13}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setAlpha(I)V

    .line 9882
    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->real:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v12, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 9883
    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->real:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v12, v14}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setAlpha(I)V

    .line 9884
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    :cond_1
    move/from16 v19, v15

    .line 9887
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 9888
    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v12, v8}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 9889
    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->rectF:Landroid/graphics/RectF;

    sub-float v13, v11, v16

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v15

    add-float/2addr v15, v9

    mul-float/2addr v13, v15

    move/from16 v15, v19

    invoke-virtual {v12, v15, v13}, Landroid/graphics/RectF;->offset(FF)V

    .line 9890
    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->rectF:Landroid/graphics/RectF;

    iget v13, v12, Landroid/graphics/RectF;->left:F

    iget v12, v12, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v13, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 9891
    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->pool:[Landroid/graphics/drawable/Drawable;

    aget-object v12, v12, v17

    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v13

    float-to-int v13, v13

    iget-object v15, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v15}, Landroid/graphics/RectF;->height()F

    move-result v15

    float-to-int v15, v15

    invoke-virtual {v12, v7, v7, v13, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 9892
    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->pool:[Landroid/graphics/drawable/Drawable;

    aget-object v12, v12, v17

    const/16 v13, 0x7f

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 9893
    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->pool:[Landroid/graphics/drawable/Drawable;

    aget-object v12, v12, v17

    invoke-virtual {v12, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 9894
    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->pool:[Landroid/graphics/drawable/Drawable;

    aget-object v12, v12, v17

    invoke-virtual {v12, v14}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 9895
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 9898
    :cond_2
    :goto_1
    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v12, v8}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 9899
    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v13

    add-float/2addr v13, v9

    mul-float/2addr v11, v13

    const/4 v15, 0x0

    invoke-virtual {v12, v15, v11}, Landroid/graphics/RectF;->offset(FF)V

    .line 9900
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 9901
    iget-object v11, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->rectF:Landroid/graphics/RectF;

    iget v12, v11, Landroid/graphics/RectF;->left:F

    iget v11, v11, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v12, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 9902
    iget-object v11, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->pool:[Landroid/graphics/drawable/Drawable;

    aget-object v11, v11, v7

    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v12

    float-to-int v12, v12

    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v13

    float-to-int v13, v13

    invoke-virtual {v11, v7, v7, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 9903
    iget-object v11, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->pool:[Landroid/graphics/drawable/Drawable;

    aget-object v11, v11, v7

    const/16 v13, 0x7f

    invoke-virtual {v11, v13}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 9904
    iget-object v11, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->pool:[Landroid/graphics/drawable/Drawable;

    aget-object v11, v11, v7

    invoke-virtual {v11, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 9905
    iget-object v11, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->pool:[Landroid/graphics/drawable/Drawable;

    aget-object v11, v11, v7

    invoke-virtual {v11, v14}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 9906
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    cmpl-float v6, v6, v16

    if-ltz v6, :cond_5

    .line 9909
    iget-boolean v6, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->loaded:Z

    if-eqz v6, :cond_4

    iget-boolean v6, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->realAllowed:Z

    if-nez v6, :cond_3

    goto :goto_2

    :cond_3
    move/from16 v7, v17

    goto :goto_3

    :cond_4
    :goto_2
    const-wide/16 v11, 0xb4

    .line 9910
    rem-long/2addr v4, v11

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->startTime:J

    .line 9911
    invoke-direct {v0}, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->shiftPool()V

    .line 9912
    iget-boolean v2, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->loaded:Z

    if-eqz v2, :cond_5

    move/from16 v2, v17

    iput-boolean v2, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->realAllowed:Z

    .line 9918
    :cond_5
    :goto_3
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v2, v8}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 9919
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->rectF:Landroid/graphics/RectF;

    float-to-int v3, v10

    int-to-float v3, v3

    invoke-virtual {v2, v3, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 9920
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->rectF:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    iget v6, v2, Landroid/graphics/RectF;->right:F

    add-float v10, v5, v9

    invoke-virtual {v2, v4, v5, v6, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 9921
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->clip:Lorg/telegram/ui/GradientClip;

    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->rectF:Landroid/graphics/RectF;

    move/from16 v6, v16

    const/4 v5, 0x1

    invoke-virtual {v2, v1, v4, v5, v6}, Lorg/telegram/ui/GradientClip;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;IF)V

    .line 9923
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v2, v8}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 9924
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v2, v3, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 9925
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->rectF:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    sub-float v5, v4, v9

    iget v6, v2, Landroid/graphics/RectF;->right:F

    invoke-virtual {v2, v3, v5, v6, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 9926
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->clip:Lorg/telegram/ui/GradientClip;

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->rectF:Landroid/graphics/RectF;

    const/4 v4, 0x3

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v2, v1, v3, v4, v6}, Lorg/telegram/ui/GradientClip;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;IF)V

    .line 9928
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    const/16 v17, 0x1

    xor-int/lit8 v1, v7, 0x1

    return v1
.end method

.method public set(Ljava/lang/String;)V
    .locals 5

    .line 9775
    iget-boolean v0, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->loaded:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 9776
    :goto_0
    iput-boolean v2, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->loaded:Z

    if-eqz p1, :cond_3

    .line 9777
    iget-object v2, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->real:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->lastEmoji:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 9778
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->real:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v2, :cond_2

    .line 9779
    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->invalidate:Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;)V

    .line 9781
    :cond_2
    invoke-static {p1}, Lorg/telegram/messenger/Emoji;->getEmojiDrawable(Ljava/lang/CharSequence;)Lorg/telegram/messenger/Emoji$EmojiDrawable;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->realThumb:Landroid/graphics/drawable/Drawable;

    .line 9782
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getProductionAccount()I

    move-result v2

    .line 9783
    new-instance v3, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    const/16 v4, 0x15

    invoke-direct {v3, v4, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;-><init>(II)V

    iput-object v3, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->real:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    .line 9784
    iput-object p1, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->lastEmoji:Ljava/lang/String;

    invoke-virtual {v3, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setupEmojiThumb(Ljava/lang/String;)V

    .line 9785
    invoke-direct {p0}, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->updateEmoji()V

    .line 9786
    iget-boolean p1, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->attached:Z

    if-eqz p1, :cond_3

    .line 9787
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->real:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    iget-object v2, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->invalidate:Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;)V

    .line 9790
    :cond_3
    iget-boolean p1, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->loaded:Z

    if-eqz p1, :cond_4

    if-nez v0, :cond_4

    .line 9791
    iput-boolean v1, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->realAllowed:Z

    :cond_4
    return-void
.end method
