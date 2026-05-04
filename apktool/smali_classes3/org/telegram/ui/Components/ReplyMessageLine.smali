.class public Lorg/telegram/ui/Components/ReplyMessageLine;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;
    }
.end annotation


# instance fields
.field public backgroundColor:I

.field public final backgroundColorAnimated:Lorg/telegram/ui/Components/AnimatedColor;

.field private backgroundLoadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

.field public final backgroundPaint:Landroid/graphics/Paint;

.field private final backgroundPath:Landroid/graphics/Path;

.field private final clipPath:Landroid/graphics/Path;

.field public color1:I

.field public final color1Animated:Lorg/telegram/ui/Components/AnimatedColor;

.field private final color1Paint:Landroid/graphics/Paint;

.field public color2:I

.field public final color2Alpha:Lorg/telegram/ui/Components/AnimatedFloat;

.field public final color2Animated:Lorg/telegram/ui/Components/AnimatedColor;

.field private final color2Paint:Landroid/graphics/Paint;

.field private color2Path:Landroid/graphics/Path;

.field public color3:I

.field public final color3Alpha:Lorg/telegram/ui/Components/AnimatedFloat;

.field public final color3Animated:Lorg/telegram/ui/Components/AnimatedColor;

.field private final color3Paint:Landroid/graphics/Paint;

.field private color3Path:Landroid/graphics/Path;

.field private emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

.field private emojiAlpha:F

.field public emojiColor:I

.field private emojiDocumentId:J

.field private emojiLoaded:Z

.field public final emojiLoadedT:Lorg/telegram/ui/Components/AnimatedFloat;

.field private emojiOffsetX:F

.field private emojiOffsetY:F

.field public hasColor2:Z

.field public hasColor3:Z

.field private iconCoords:[Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;

.field private lastHasColor3:Z

.field private lastHeight:F

.field private lastLoadingTTime:J

.field private final lineClipPath:Landroid/graphics/Path;

.field private loading:Z

.field public final loadingStateT:Lorg/telegram/ui/Components/AnimatedFloat;

.field private loadingT:F

.field private loadingTranslationT:F

.field public nameColor:I

.field public final nameColorAnimated:Lorg/telegram/ui/Components/AnimatedColor;

.field private final parentView:Landroid/view/View;

.field public final radii:[F

.field private final rectF:Landroid/graphics/RectF;

.field private reversedOut:Z

.field private sponsored:Z

.field private sticker:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

.field private stickerDocumentId:J

.field public final switchStateT:Lorg/telegram/ui/Components/AnimatedFloat;

.field private switchedCount:I

.field private wasCollectionId:J

.field private wasColorId:I

.field private wasMessageId:I


# direct methods
.method static bridge synthetic -$$Nest$fgetemoji(Lorg/telegram/ui/Components/ReplyMessageLine;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsticker(Lorg/telegram/ui/Components/ReplyMessageLine;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->sticker:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    return-object p0
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 9

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->rectF:Landroid/graphics/RectF;

    .line 38
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->clipPath:Landroid/graphics/Path;

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1Paint:Landroid/graphics/Paint;

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2Paint:Landroid/graphics/Paint;

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3Paint:Landroid/graphics/Paint;

    const/16 v0, 0x8

    .line 43
    new-array v0, v0, [F

    iput-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->radii:[F

    .line 44
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->lineClipPath:Landroid/graphics/Path;

    .line 45
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundPath:Landroid/graphics/Path;

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundPaint:Landroid/graphics/Paint;

    .line 52
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2Path:Landroid/graphics/Path;

    .line 53
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3Path:Landroid/graphics/Path;

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->switchedCount:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 55
    iput v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiAlpha:F

    .line 75
    iput-object p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->parentView:Landroid/view/View;

    .line 76
    new-instance v0, Lorg/telegram/ui/Components/ReplyMessageLine$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ReplyMessageLine$1;-><init>(Lorg/telegram/ui/Components/ReplyMessageLine;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 97
    new-instance v1, Lorg/telegram/ui/Components/AnimatedColor;

    sget-object v8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x190

    move-object v2, p1

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedColor;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    move-object v3, v2

    iput-object v1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundColorAnimated:Lorg/telegram/ui/Components/AnimatedColor;

    .line 98
    new-instance v2, Lorg/telegram/ui/Components/AnimatedColor;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x190

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/AnimatedColor;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1Animated:Lorg/telegram/ui/Components/AnimatedColor;

    .line 99
    new-instance v2, Lorg/telegram/ui/Components/AnimatedColor;

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/AnimatedColor;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2Animated:Lorg/telegram/ui/Components/AnimatedColor;

    .line 100
    new-instance v2, Lorg/telegram/ui/Components/AnimatedColor;

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/AnimatedColor;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3Animated:Lorg/telegram/ui/Components/AnimatedColor;

    .line 101
    new-instance v2, Lorg/telegram/ui/Components/AnimatedColor;

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/AnimatedColor;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->nameColorAnimated:Lorg/telegram/ui/Components/AnimatedColor;

    .line 102
    new-instance v2, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2Alpha:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 103
    new-instance v2, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3Alpha:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 104
    new-instance v2, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v6, 0x1b8

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiLoadedT:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 105
    new-instance v2, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v6, 0x140

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->loadingStateT:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 106
    new-instance v2, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->switchStateT:Lorg/telegram/ui/Components/AnimatedFloat;

    return-void
.end method

.method private checkColorPathes(F)V
    .locals 10

    .line 797
    iget v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->lastHeight:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->lastHasColor3:Z

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor3:Z

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 798
    :cond_1
    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    const v2, 0x40ca8f5c    # 6.33f

    .line 799
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    .line 800
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    const v3, 0x40551eb8    # 3.33f

    .line 801
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    add-float v4, v3, v1

    .line 804
    iget-object v5, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2Path:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->rewind()V

    move v5, v4

    :cond_2
    :goto_1
    cmpg-float v6, v5, p1

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    if-gez v6, :cond_3

    .line 806
    iget-object v6, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2Path:Landroid/graphics/Path;

    add-float v9, v0, v8

    sub-float v8, v5, v8

    invoke-virtual {v6, v9, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 807
    iget-object v6, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2Path:Landroid/graphics/Path;

    add-float v8, v5, v2

    invoke-virtual {v6, v9, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 808
    iget-object v6, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2Path:Landroid/graphics/Path;

    add-float/2addr v8, v1

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 809
    iget-object v6, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2Path:Landroid/graphics/Path;

    add-float v8, v5, v1

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 810
    iget-object v6, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2Path:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    add-float v6, v2, v1

    add-float/2addr v6, v3

    add-float/2addr v5, v6

    .line 813
    iget-boolean v6, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor3:Z

    if-eqz v6, :cond_2

    add-float/2addr v5, v2

    goto :goto_1

    .line 818
    :cond_3
    iget-boolean v5, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor3:Z

    if-eqz v5, :cond_4

    add-float/2addr v4, v2

    .line 820
    iget-object v5, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3Path:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->rewind()V

    :goto_2
    cmpg-float v5, v4, p1

    if-gez v5, :cond_4

    .line 822
    iget-object v5, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3Path:Landroid/graphics/Path;

    add-float v6, v0, v8

    sub-float v9, v4, v8

    invoke-virtual {v5, v6, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 823
    iget-object v5, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3Path:Landroid/graphics/Path;

    add-float v9, v4, v2

    invoke-virtual {v5, v6, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 824
    iget-object v5, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3Path:Landroid/graphics/Path;

    add-float/2addr v9, v1

    invoke-virtual {v5, v7, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 825
    iget-object v5, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3Path:Landroid/graphics/Path;

    add-float v6, v4, v1

    invoke-virtual {v5, v7, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 826
    iget-object v5, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3Path:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    add-float v5, v2, v1

    add-float/2addr v5, v3

    add-float/2addr v5, v2

    add-float/2addr v4, v5

    goto :goto_2

    .line 832
    :cond_4
    iput p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->lastHeight:F

    .line 833
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor3:Z

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->lastHasColor3:Z

    return-void
.end method

.method private incrementLoadingT()V
    .locals 8

    .line 553
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 554
    iget-object v2, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->loadingStateT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->loading:Z

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v2

    .line 555
    iget v3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->loadingT:F

    iget-wide v4, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->lastLoadingTTime:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x1e

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-float v4, v4

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->loadingT:F

    .line 556
    iget v3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->loadingTranslationT:F

    iget-wide v4, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->lastLoadingTTime:J

    sub-long v4, v0, v4

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-float v4, v4

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->loadingTranslationT:F

    .line 557
    iput-wide v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->lastLoadingTTime:J

    return-void
.end method

.method private isEmojiLoaded()Z
    .locals 3

    .line 750
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiLoaded:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 753
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_1

    .line 754
    iget-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    .line 755
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->hasImageLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 756
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiLoaded:Z

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private resolveCollectionColor(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$TL_peerColorCollectible;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I
    .locals 9

    if-eqz p3, :cond_0

    .line 161
    invoke-interface {p3}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->isDark()Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v0

    :goto_0
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 162
    iget v2, p2, Lorg/telegram/tgnet/TLRPC$PeerColor;->flags:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_1

    iget v2, p2, Lorg/telegram/tgnet/TLRPC$PeerColor;->dark_accent_color:I

    goto :goto_1

    :cond_1
    iget v2, p2, Lorg/telegram/tgnet/TLRPC$PeerColor;->accent_color:I

    :goto_1
    const/4 v3, 0x2

    if-eqz v0, :cond_2

    .line 163
    iget v0, p2, Lorg/telegram/tgnet/TLRPC$PeerColor;->flags:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_2

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$PeerColor;->dark_colors:Ljava/util/ArrayList;

    goto :goto_2

    :cond_2
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$PeerColor;->colors:Ljava/util/ArrayList;

    :goto_2
    const/4 v4, 0x0

    if-eqz v0, :cond_15

    .line 165
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    goto/16 :goto_c

    .line 169
    :cond_3
    iget-wide v5, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->wasCollectionId:J

    iget-wide v7, p2, Lorg/telegram/tgnet/TLRPC$PeerColor;->collectible_id:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_6

    if-eqz p1, :cond_4

    .line 170
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    goto :goto_3

    :cond_4
    move p1, v4

    .line 171
    :goto_3
    iget v5, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->wasMessageId:I

    if-ne p1, v5, :cond_5

    .line 172
    iget v5, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->switchedCount:I

    add-int/2addr v5, v1

    iput v5, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->switchedCount:I

    .line 174
    :cond_5
    iput v4, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->wasColorId:I

    .line 175
    iget-wide v5, p2, Lorg/telegram/tgnet/TLRPC$PeerColor;->collectible_id:J

    iput-wide v5, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->wasCollectionId:J

    .line 176
    iput p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->wasMessageId:I

    .line 179
    :cond_6
    iput-boolean v4, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->reversedOut:Z

    .line 181
    sget-boolean p1, Lcom/exteragram/messenger/ExteraConfig;->replyColors:Z

    if-nez p1, :cond_7

    .line 182
    iput-boolean v4, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor2:Z

    .line 183
    iput-boolean v4, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor3:Z

    .line 184
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReplyLine:I

    invoke-static {p1, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3:I

    iput p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2:I

    iput p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    .line 185
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReplyNameText:I

    invoke-static {p1, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->nameColor:I

    goto :goto_6

    .line 187
    :cond_7
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$PeerColor;->colors:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/high16 p3, -0x1000000

    or-int/2addr p1, p3

    iput p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    .line 188
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p1, v3, :cond_8

    move p1, v1

    goto :goto_4

    :cond_8
    move p1, v4

    :goto_4
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor2:Z

    if-eqz p1, :cond_9

    .line 189
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$PeerColor;->colors:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    or-int/2addr p1, p3

    iput p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2:I

    .line 191
    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x3

    if-lt p1, v0, :cond_a

    move p1, v1

    goto :goto_5

    :cond_a
    move p1, v4

    :goto_5
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor3:Z

    if-eqz p1, :cond_b

    .line 192
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$PeerColor;->colors:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    or-int/2addr p1, p3

    iput p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3:I

    :cond_b
    or-int p1, v2, p3

    .line 194
    iput p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->nameColor:I

    .line 197
    :goto_6
    sget-boolean p1, Lcom/exteragram/messenger/ExteraConfig;->replyBackground:Z

    if-nez p1, :cond_c

    .line 198
    iput v4, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundColor:I

    goto :goto_8

    .line 200
    :cond_c
    sget-boolean p1, Lcom/exteragram/messenger/ExteraConfig;->replyColors:Z

    if-eqz p1, :cond_d

    iget p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->nameColor:I

    goto :goto_7

    :cond_d
    iget p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    :goto_7
    const p3, 0x3dcccccd    # 0.1f

    .line 201
    invoke-static {p1, p3}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundColor:I

    .line 204
    :goto_8
    sget-boolean p1, Lcom/exteragram/messenger/ExteraConfig;->replyEmoji:Z

    const-wide/16 v2, 0x0

    if-eqz p1, :cond_e

    .line 205
    iget-wide v5, p2, Lorg/telegram/tgnet/TLRPC$PeerColor;->background_emoji_id:J

    iput-wide v5, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiDocumentId:J

    .line 206
    iget-wide p1, p2, Lorg/telegram/tgnet/TLRPC$PeerColor;->gift_emoji_id:J

    iput-wide p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->stickerDocumentId:J

    goto :goto_9

    .line 208
    :cond_e
    iput-wide v2, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiDocumentId:J

    .line 209
    iput-wide v2, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->stickerDocumentId:J

    .line 212
    :goto_9
    iget-wide p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiDocumentId:J

    cmp-long p1, p1, v2

    const/16 p2, 0xd

    const/high16 p3, 0x41a00000    # 20.0f

    if-eqz p1, :cond_10

    iget-object p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-nez p1, :cond_10

    .line 213
    new-instance p1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->parentView:Landroid/view/View;

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-direct {p1, v0, v4, v5, p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;-><init>(Landroid/view/View;ZII)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    .line 214
    iget-object p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->parentView:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v0, :cond_f

    check-cast p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->isCellAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_10

    goto :goto_a

    :cond_f
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 215
    :goto_a
    iget-object p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attach()V

    .line 218
    :cond_10
    iget-object p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz p1, :cond_11

    .line 219
    iget-wide v5, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiDocumentId:J

    invoke-virtual {p1, v5, v6, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(JZ)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 220
    iput-boolean v4, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiLoaded:Z

    .line 223
    :cond_11
    iget p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->nameColor:I

    iput p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiColor:I

    .line 225
    iget-wide v5, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->stickerDocumentId:J

    cmp-long p1, v5, v2

    if-eqz p1, :cond_13

    iget-object p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->sticker:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-nez p1, :cond_13

    .line 226
    new-instance p1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->parentView:Landroid/view/View;

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    invoke-direct {p1, v0, v4, p3, p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;-><init>(Landroid/view/View;ZII)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->sticker:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    .line 227
    iget-object p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->parentView:Landroid/view/View;

    instance-of p2, p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz p2, :cond_12

    check-cast p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->isCellAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_b

    :cond_12
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 228
    :goto_b
    iget-object p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->sticker:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attach()V

    .line 231
    :cond_13
    iget-object p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->sticker:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz p1, :cond_14

    .line 232
    iget-wide p2, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->stickerDocumentId:J

    invoke-virtual {p1, p2, p3, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(JZ)Z

    .line 237
    :cond_14
    iget-object p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->nameColorAnimated:Lorg/telegram/ui/Components/AnimatedColor;

    iget p2, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->nameColor:I

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedColor;->set(I)I

    move-result p1

    return p1

    :cond_15
    :goto_c
    return v4
.end method

.method private resolveColor(Lorg/telegram/messenger/MessageObject;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 5

    if-eqz p3, :cond_0

    .line 125
    invoke-interface {p3}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->isDark()Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    .line 126
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->wasColorId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, p2, :cond_3

    if-eqz p1, :cond_1

    .line 127
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v2

    .line 128
    :goto_1
    iget v3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->wasMessageId:I

    if-ne v0, v3, :cond_2

    .line 129
    iget v3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->switchedCount:I

    add-int/2addr v3, v1

    iput v3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->switchedCount:I

    :cond_2
    const-wide/16 v3, 0x0

    .line 131
    iput-wide v3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->wasCollectionId:J

    .line 132
    iput p2, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->wasColorId:I

    .line 133
    iput v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->wasMessageId:I

    :cond_3
    const/4 v0, 0x7

    if-ge p2, v0, :cond_4

    .line 136
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_nameInMessage:[I

    aget p1, p1, p2

    invoke-static {p1, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3:I

    iput p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2:I

    iput p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    .line 137
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor3:Z

    iput-boolean v2, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor2:Z

    return-void

    :cond_4
    if-eqz p1, :cond_5

    .line 140
    iget v0, p1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    goto :goto_2

    :cond_5
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    .line 141
    :goto_2
    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->peerColors:Lorg/telegram/messenger/MessagesController$PeerColors;

    if-eqz v0, :cond_6

    .line 142
    invoke-virtual {v0, p2}, Lorg/telegram/messenger/MessagesController$PeerColors;->getColor(I)Lorg/telegram/messenger/MessagesController$PeerColor;

    move-result-object p2

    goto :goto_3

    :cond_6
    const/4 p2, 0x0

    :goto_3
    if-nez p2, :cond_8

    if-eqz p1, :cond_7

    .line 144
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result p1

    if-eqz p1, :cond_7

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReplyLine:I

    goto :goto_4

    :cond_7
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReplyLine:I

    :goto_4
    invoke-static {p1, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3:I

    iput p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2:I

    iput p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    .line 145
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor3:Z

    iput-boolean v2, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor2:Z

    return-void

    .line 148
    :cond_8
    invoke-virtual {p2, v2, p3}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    .line 149
    invoke-virtual {p2, v1, p3}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2:I

    const/4 p1, 0x2

    .line 150
    invoke-virtual {p2, p1, p3}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3:I

    .line 151
    iget p2, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2:I

    iget p3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    if-eq p2, p3, :cond_9

    move v0, v1

    goto :goto_5

    :cond_9
    move v0, v2

    :goto_5
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor2:Z

    if-eq p1, p3, :cond_a

    goto :goto_6

    :cond_a
    move v1, v2

    .line 152
    :goto_6
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor3:Z

    if-eqz v1, :cond_b

    .line 155
    iput p2, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3:I

    .line 156
    iput p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2:I

    :cond_b
    return-void
.end method


# virtual methods
.method public check(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)I
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    if-eqz v4, :cond_0

    .line 247
    invoke-interface {v4}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->isDark()Z

    move-result v6

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v6

    .line 248
    :goto_0
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v7

    const/4 v8, 0x2

    if-nez v7, :cond_1

    if-eq v5, v8, :cond_1

    iget-object v7, v1, Lorg/telegram/messenger/MessageObject;->overrideLinkPeerColor:Lorg/telegram/tgnet/TLRPC$TL_peerColorCollectible;

    if-eqz v7, :cond_1

    .line 249
    invoke-direct {v0, v1, v7, v4}, Lorg/telegram/ui/Components/ReplyMessageLine;->resolveCollectionColor(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$TL_peerColorCollectible;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    return v1

    :cond_1
    const/4 v7, 0x0

    .line 252
    iput-boolean v7, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->reversedOut:Z

    const-wide/16 v9, 0x0

    .line 253
    iput-wide v9, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiDocumentId:J

    .line 254
    iput-wide v9, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->stickerDocumentId:J

    .line 255
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isSponsored()Z

    move-result v11

    iput-boolean v11, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->sponsored:Z

    const/4 v11, 0x4

    const/4 v12, -0x1

    const/4 v13, 0x1

    const v14, 0x3dcccccd    # 0.1f

    const/4 v15, 0x3

    move-wide/from16 v16, v9

    if-ne v5, v11, :cond_5

    .line 262
    iget-object v9, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v9, :cond_5

    .line 264
    invoke-static {v9}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v9

    if-eqz v9, :cond_5

    iget-object v9, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    .line 265
    invoke-static {v9}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v9

    instance-of v9, v9, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    if-eqz v9, :cond_5

    .line 269
    iget-object v2, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v2

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:J

    cmp-long v9, v2, v16

    if-eqz v9, :cond_2

    .line 271
    iget v9, v1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v9, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 273
    :goto_1
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v3

    if-nez v3, :cond_3

    if-eq v5, v8, :cond_3

    if-eqz v2, :cond_3

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$User;->color:Lorg/telegram/tgnet/TLRPC$PeerColor;

    instance-of v9, v3, Lorg/telegram/tgnet/TLRPC$TL_peerColorCollectible;

    if-eqz v9, :cond_3

    .line 274
    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_peerColorCollectible;

    invoke-direct {v0, v1, v3, v4}, Lorg/telegram/ui/Components/ReplyMessageLine;->resolveCollectionColor(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$TL_peerColorCollectible;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    return v1

    :cond_3
    if-eqz v2, :cond_4

    .line 277
    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getColorId(Lorg/telegram/tgnet/TLRPC$User;)I

    move-result v3

    .line 278
    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getEmojiId(Lorg/telegram/tgnet/TLRPC$User;)J

    move-result-wide v9

    iput-wide v9, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiDocumentId:J

    goto :goto_2

    :cond_4
    move v3, v7

    .line 280
    :goto_2
    invoke-direct {v0, v1, v3, v4}, Lorg/telegram/ui/Components/ReplyMessageLine;->resolveColor(Lorg/telegram/messenger/MessageObject;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 281
    iget v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    invoke-static {v2, v14}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundColor:I

    .line 282
    iget v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    iput v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->nameColor:I

    goto/16 :goto_e

    :cond_5
    if-eqz v5, :cond_22

    .line 283
    iget v9, v1, Lorg/telegram/messenger/MessageObject;->overrideLinkColor:I

    if-gez v9, :cond_a

    iget-object v9, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v9, :cond_22

    .line 286
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isFromUser()Z

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v9

    invoke-static {v9, v10}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v9

    if-eqz v9, :cond_7

    :cond_6
    if-nez v2, :cond_a

    .line 287
    :cond_7
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isFromChannel()Z

    move-result v9

    if-eqz v9, :cond_8

    if-nez v3, :cond_a

    :cond_8
    iget-object v9, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v9, :cond_9

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    if-eqz v9, :cond_9

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-nez v9, :cond_a

    .line 289
    :cond_9
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isSponsored()Z

    move-result v9

    if-eqz v9, :cond_22

    iget-object v9, v1, Lorg/telegram/messenger/MessageObject;->sponsoredColor:Lorg/telegram/tgnet/TLRPC$PeerColor;

    if-eqz v9, :cond_22

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$PeerColor;->color:I

    if-eq v9, v12, :cond_22

    .line 293
    :cond_a
    iget v9, v1, Lorg/telegram/messenger/MessageObject;->overrideLinkColor:I

    if-ltz v9, :cond_b

    goto/16 :goto_7

    .line 295
    :cond_b
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isSponsored()Z

    move-result v9

    if-eqz v9, :cond_d

    iget-object v9, v1, Lorg/telegram/messenger/MessageObject;->sponsoredColor:Lorg/telegram/tgnet/TLRPC$PeerColor;

    if-eqz v9, :cond_d

    iget v10, v9, Lorg/telegram/tgnet/TLRPC$PeerColor;->color:I

    if-eq v10, v12, :cond_d

    if-ne v5, v15, :cond_c

    .line 298
    iget-wide v2, v9, Lorg/telegram/tgnet/TLRPC$PeerColor;->background_emoji_id:J

    iput-wide v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiDocumentId:J

    :cond_c
    :goto_3
    move v9, v10

    goto/16 :goto_7

    .line 300
    :cond_d
    iget-object v9, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v9, :cond_13

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    if-eqz v9, :cond_13

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v9, :cond_13

    .line 301
    invoke-static {v9}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v2

    cmp-long v9, v2, v16

    const/4 v10, 0x5

    if-gez v9, :cond_10

    .line 303
    iget v9, v1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    neg-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v9, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    .line 304
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v3

    if-nez v3, :cond_e

    if-eq v5, v8, :cond_e

    if-eqz v2, :cond_e

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$Chat;->color:Lorg/telegram/tgnet/TLRPC$PeerColor;

    instance-of v9, v3, Lorg/telegram/tgnet/TLRPC$TL_peerColorCollectible;

    if-eqz v9, :cond_e

    .line 305
    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_peerColorCollectible;

    invoke-direct {v0, v1, v3, v4}, Lorg/telegram/ui/Components/ReplyMessageLine;->resolveCollectionColor(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$TL_peerColorCollectible;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    return v1

    :cond_e
    if-eqz v2, :cond_f

    .line 308
    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->getColorId(Lorg/telegram/tgnet/TLRPC$Chat;)I

    move-result v10

    :cond_f
    if-ne v5, v15, :cond_c

    .line 311
    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->getEmojiId(Lorg/telegram/tgnet/TLRPC$Chat;)J

    move-result-wide v2

    iput-wide v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiDocumentId:J

    goto :goto_3

    .line 314
    :cond_10
    iget v9, v1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v9, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    .line 315
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v3

    if-nez v3, :cond_11

    if-eq v5, v8, :cond_11

    if-eqz v2, :cond_11

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$User;->color:Lorg/telegram/tgnet/TLRPC$PeerColor;

    instance-of v9, v3, Lorg/telegram/tgnet/TLRPC$TL_peerColorCollectible;

    if-eqz v9, :cond_11

    .line 316
    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_peerColorCollectible;

    invoke-direct {v0, v1, v3, v4}, Lorg/telegram/ui/Components/ReplyMessageLine;->resolveCollectionColor(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$TL_peerColorCollectible;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    return v1

    :cond_11
    if-eqz v2, :cond_12

    .line 319
    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getColorId(Lorg/telegram/tgnet/TLRPC$User;)I

    move-result v10

    :cond_12
    if-ne v5, v15, :cond_c

    .line 322
    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getEmojiId(Lorg/telegram/tgnet/TLRPC$User;)J

    move-result-wide v2

    iput-wide v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiDocumentId:J

    goto/16 :goto_3

    .line 325
    :cond_13
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v9

    invoke-static {v9, v10}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v9

    if-eqz v9, :cond_17

    if-eqz v2, :cond_17

    .line 326
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v3

    if-eqz v3, :cond_14

    iget v3, v1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    goto :goto_4

    :cond_14
    move-object v3, v2

    :goto_4
    if-nez v3, :cond_15

    goto :goto_5

    :cond_15
    move-object v2, v3

    .line 328
    :goto_5
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v3

    if-nez v3, :cond_16

    if-eq v5, v8, :cond_16

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$User;->color:Lorg/telegram/tgnet/TLRPC$PeerColor;

    instance-of v9, v3, Lorg/telegram/tgnet/TLRPC$TL_peerColorCollectible;

    if-eqz v9, :cond_16

    .line 329
    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_peerColorCollectible;

    invoke-direct {v0, v1, v3, v4}, Lorg/telegram/ui/Components/ReplyMessageLine;->resolveCollectionColor(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$TL_peerColorCollectible;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    return v1

    .line 331
    :cond_16
    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getColorId(Lorg/telegram/tgnet/TLRPC$User;)I

    move-result v9

    if-ne v5, v15, :cond_1f

    .line 333
    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getEmojiId(Lorg/telegram/tgnet/TLRPC$User;)J

    move-result-wide v2

    iput-wide v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiDocumentId:J

    goto/16 :goto_7

    .line 335
    :cond_17
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isFromUser()Z

    move-result v9

    if-eqz v9, :cond_19

    if-eqz v2, :cond_19

    .line 336
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v3

    if-nez v3, :cond_18

    if-eq v5, v8, :cond_18

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$User;->color:Lorg/telegram/tgnet/TLRPC$PeerColor;

    instance-of v9, v3, Lorg/telegram/tgnet/TLRPC$TL_peerColorCollectible;

    if-eqz v9, :cond_18

    .line 337
    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_peerColorCollectible;

    invoke-direct {v0, v1, v3, v4}, Lorg/telegram/ui/Components/ReplyMessageLine;->resolveCollectionColor(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$TL_peerColorCollectible;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    return v1

    .line 339
    :cond_18
    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getColorId(Lorg/telegram/tgnet/TLRPC$User;)I

    move-result v9

    if-ne v5, v15, :cond_1f

    .line 341
    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getEmojiId(Lorg/telegram/tgnet/TLRPC$User;)J

    move-result-wide v2

    iput-wide v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiDocumentId:J

    goto/16 :goto_7

    .line 343
    :cond_19
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isFromChannel()Z

    move-result v2

    if-eqz v2, :cond_1e

    if-eqz v3, :cond_1e

    .line 344
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v2

    if-nez v2, :cond_1a

    if-eq v5, v8, :cond_1a

    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$Chat;->color:Lorg/telegram/tgnet/TLRPC$PeerColor;

    instance-of v9, v2, Lorg/telegram/tgnet/TLRPC$TL_peerColorCollectible;

    if-eqz v9, :cond_1a

    .line 345
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_peerColorCollectible;

    invoke-direct {v0, v1, v2, v4}, Lorg/telegram/ui/Components/ReplyMessageLine;->resolveCollectionColor(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$TL_peerColorCollectible;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    return v1

    .line 347
    :cond_1a
    iget-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$Chat;->signature_profiles:Z

    if-eqz v2, :cond_1d

    .line 348
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v2

    cmp-long v9, v2, v16

    if-ltz v9, :cond_1c

    .line 350
    iget v9, v1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v9, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    .line 351
    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getColorId(Lorg/telegram/tgnet/TLRPC$User;)I

    move-result v3

    if-ne v5, v15, :cond_1b

    .line 353
    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getEmojiId(Lorg/telegram/tgnet/TLRPC$User;)J

    move-result-wide v9

    iput-wide v9, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiDocumentId:J

    :cond_1b
    :goto_6
    move v9, v3

    goto :goto_7

    .line 356
    :cond_1c
    iget v9, v1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    neg-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v9, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    .line 357
    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->getColorId(Lorg/telegram/tgnet/TLRPC$Chat;)I

    move-result v3

    if-ne v5, v15, :cond_1b

    .line 359
    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->getEmojiId(Lorg/telegram/tgnet/TLRPC$Chat;)J

    move-result-wide v9

    iput-wide v9, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiDocumentId:J

    goto :goto_6

    .line 363
    :cond_1d
    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->getColorId(Lorg/telegram/tgnet/TLRPC$Chat;)I

    move-result v9

    if-ne v5, v15, :cond_1f

    .line 365
    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->getEmojiId(Lorg/telegram/tgnet/TLRPC$Chat;)J

    move-result-wide v2

    iput-wide v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiDocumentId:J

    goto :goto_7

    :cond_1e
    move v9, v7

    .line 371
    :cond_1f
    :goto_7
    sget-boolean v2, Lcom/exteragram/messenger/ExteraConfig;->replyColors:Z

    if-nez v2, :cond_20

    .line 372
    iput-boolean v7, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor3:Z

    iput-boolean v7, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor2:Z

    .line 373
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReplyLine:I

    invoke-static {v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3:I

    iput v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2:I

    iput v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    .line 374
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReplyNameText:I

    invoke-static {v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->nameColor:I

    goto :goto_8

    .line 376
    :cond_20
    invoke-direct {v0, v1, v9, v4}, Lorg/telegram/ui/Components/ReplyMessageLine;->resolveColor(Lorg/telegram/messenger/MessageObject;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 377
    iget v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    iput v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->nameColor:I

    .line 379
    :goto_8
    sget-boolean v2, Lcom/exteragram/messenger/ExteraConfig;->replyBackground:Z

    if-nez v2, :cond_21

    move v2, v7

    goto :goto_9

    :cond_21
    iget v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    invoke-static {v2, v14}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    :goto_9
    iput v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundColor:I

    goto/16 :goto_e

    :cond_22
    if-nez v5, :cond_2e

    .line 380
    iget v3, v1, Lorg/telegram/messenger/MessageObject;->overrideLinkColor:I

    if-gez v3, :cond_24

    iget-object v3, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v3, :cond_2e

    iget-object v9, v1, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v9, :cond_2e

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    if-eqz v3, :cond_2e

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    if-eqz v3, :cond_23

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_name:Ljava/lang/String;

    .line 384
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2e

    :cond_23
    iget-object v3, v1, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v9, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v9, :cond_2e

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v9, :cond_2e

    .line 387
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isFromUser()Z

    move-result v3

    if-nez v3, :cond_24

    .line 388
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v9

    invoke-static {v9, v10}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v3

    if-nez v3, :cond_24

    iget-object v3, v1, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 389
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isFromChannel()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 392
    :cond_24
    iget v3, v1, Lorg/telegram/messenger/MessageObject;->overrideLinkColor:I

    if-ltz v3, :cond_25

    goto/16 :goto_a

    .line 394
    :cond_25
    iget-object v3, v1, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v9

    invoke-static {v9, v10}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 395
    iget-object v3, v1, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v3

    if-eqz v3, :cond_26

    iget-object v2, v1, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v2, v2, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    :cond_26
    if-eqz v2, :cond_2b

    .line 397
    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getColorId(Lorg/telegram/tgnet/TLRPC$User;)I

    move-result v3

    .line 398
    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getEmojiId(Lorg/telegram/tgnet/TLRPC$User;)J

    move-result-wide v9

    iput-wide v9, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiDocumentId:J

    goto/16 :goto_a

    .line 402
    :cond_27
    iget-object v2, v1, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isFromUser()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 403
    iget v2, v1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v9, v3, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    .line 404
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v3

    if-nez v3, :cond_28

    if-eq v5, v8, :cond_28

    if-eqz v2, :cond_28

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$User;->color:Lorg/telegram/tgnet/TLRPC$PeerColor;

    instance-of v9, v3, Lorg/telegram/tgnet/TLRPC$TL_peerColorCollectible;

    if-eqz v9, :cond_28

    .line 405
    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_peerColorCollectible;

    invoke-direct {v0, v1, v3, v4}, Lorg/telegram/ui/Components/ReplyMessageLine;->resolveCollectionColor(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$TL_peerColorCollectible;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    return v1

    :cond_28
    if-eqz v2, :cond_2b

    .line 408
    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getColorId(Lorg/telegram/tgnet/TLRPC$User;)I

    move-result v3

    .line 409
    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getEmojiId(Lorg/telegram/tgnet/TLRPC$User;)J

    move-result-wide v9

    iput-wide v9, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiDocumentId:J

    goto :goto_a

    .line 413
    :cond_29
    iget-object v2, v1, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isFromChannel()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 414
    iget v2, v1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v9, v3, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    .line 415
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v3

    if-nez v3, :cond_2a

    if-eq v5, v8, :cond_2a

    if-eqz v2, :cond_2a

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$Chat;->color:Lorg/telegram/tgnet/TLRPC$PeerColor;

    instance-of v9, v3, Lorg/telegram/tgnet/TLRPC$TL_peerColorCollectible;

    if-eqz v9, :cond_2a

    .line 416
    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_peerColorCollectible;

    invoke-direct {v0, v1, v3, v4}, Lorg/telegram/ui/Components/ReplyMessageLine;->resolveCollectionColor(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$TL_peerColorCollectible;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    return v1

    :cond_2a
    if-eqz v2, :cond_2b

    .line 419
    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->getColorId(Lorg/telegram/tgnet/TLRPC$Chat;)I

    move-result v3

    .line 420
    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->getEmojiId(Lorg/telegram/tgnet/TLRPC$Chat;)J

    move-result-wide v9

    iput-wide v9, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiDocumentId:J

    goto :goto_a

    :cond_2b
    move v3, v7

    .line 427
    :goto_a
    sget-boolean v2, Lcom/exteragram/messenger/ExteraConfig;->replyColors:Z

    if-nez v2, :cond_2c

    .line 428
    iput-boolean v7, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor3:Z

    iput-boolean v7, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor2:Z

    .line 429
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReplyLine:I

    invoke-static {v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3:I

    iput v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2:I

    iput v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    .line 430
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReplyNameText:I

    invoke-static {v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->nameColor:I

    goto :goto_b

    .line 432
    :cond_2c
    iget-object v2, v1, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-direct {v0, v2, v3, v4}, Lorg/telegram/ui/Components/ReplyMessageLine;->resolveColor(Lorg/telegram/messenger/MessageObject;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 433
    iget v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    iput v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->nameColor:I

    .line 435
    :goto_b
    sget-boolean v2, Lcom/exteragram/messenger/ExteraConfig;->replyBackground:Z

    if-nez v2, :cond_2d

    move v2, v7

    goto :goto_c

    :cond_2d
    iget v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    invoke-static {v2, v14}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    :goto_c
    iput v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundColor:I

    goto :goto_e

    .line 437
    :cond_2e
    iput-boolean v7, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor2:Z

    .line 438
    iput-boolean v7, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor3:Z

    .line 439
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReplyLine:I

    invoke-static {v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3:I

    iput v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2:I

    iput v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    .line 440
    sget-boolean v3, Lcom/exteragram/messenger/ExteraConfig;->replyBackground:Z

    if-nez v3, :cond_2f

    if-eq v5, v13, :cond_2f

    move v2, v7

    goto :goto_d

    :cond_2f
    invoke-static {v2, v14}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    :goto_d
    iput v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundColor:I

    .line 441
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReplyNameText:I

    invoke-static {v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->nameColor:I

    .line 443
    :goto_e
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->shouldDrawWithoutBackground()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 444
    iput-boolean v7, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor2:Z

    .line 445
    iput-boolean v7, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor3:Z

    .line 446
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeMonet()Z

    move-result v2

    if-eqz v2, :cond_30

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReplyLine:I

    invoke-static {v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v12

    :cond_30
    iput v12, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3:I

    iput v12, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2:I

    iput v12, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    .line 447
    iput v7, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundColor:I

    .line 448
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_stickerReplyNameText:I

    invoke-static {v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->nameColor:I

    goto/16 :goto_14

    .line 449
    :cond_31
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v2

    if-nez v2, :cond_32

    if-ne v5, v8, :cond_3a

    :cond_32
    if-ne v5, v8, :cond_33

    .line 450
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v2

    if-nez v2, :cond_33

    .line 451
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inCodeBackground:I

    invoke-static {v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3:I

    iput v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2:I

    iput v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    goto :goto_11

    .line 453
    :cond_33
    iget-boolean v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor2:Z

    if-nez v2, :cond_35

    iget-boolean v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor3:Z

    if-eqz v2, :cond_34

    goto :goto_f

    :cond_34
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReplyLine:I

    goto :goto_10

    :cond_35
    :goto_f
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReplyLine2:I

    :goto_10
    invoke-static {v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3:I

    iput v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2:I

    iput v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    .line 455
    :goto_11
    iget-boolean v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor3:Z

    if-eqz v2, :cond_36

    .line 456
    iput-boolean v13, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->reversedOut:Z

    .line 457
    iget v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    const v3, 0x3e4ccccd    # 0.2f

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    .line 458
    iget v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2:I

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2:I

    goto :goto_12

    .line 459
    :cond_36
    iget-boolean v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor2:Z

    if-eqz v2, :cond_37

    .line 460
    iput-boolean v13, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->reversedOut:Z

    .line 461
    iget v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    const v3, 0x3eb33333    # 0.35f

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    .line 463
    :cond_37
    :goto_12
    sget-boolean v2, Lcom/exteragram/messenger/ExteraConfig;->replyBackground:Z

    if-nez v2, :cond_38

    if-nez v5, :cond_38

    move v2, v7

    goto :goto_13

    :cond_38
    iget v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3:I

    if-eqz v6, :cond_39

    const v14, 0x3df5c28f    # 0.12f

    :cond_39
    invoke-static {v2, v14}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    :goto_13
    iput v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundColor:I

    .line 464
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReplyNameText:I

    invoke-static {v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->nameColor:I

    :cond_3a
    :goto_14
    if-eqz v5, :cond_3b

    if-eq v5, v15, :cond_3b

    if-ne v5, v11, :cond_3c

    .line 466
    :cond_3b
    iget-wide v1, v1, Lorg/telegram/messenger/MessageObject;->overrideLinkEmoji:J

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_3c

    .line 467
    iput-wide v1, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiDocumentId:J

    .line 469
    :cond_3c
    sget-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->replyEmoji:Z

    if-nez v1, :cond_3d

    move-wide/from16 v1, v16

    .line 470
    iput-wide v1, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiDocumentId:J

    goto :goto_15

    :cond_3d
    move-wide/from16 v1, v16

    .line 472
    :goto_15
    iget-wide v3, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiDocumentId:J

    cmp-long v1, v3, v1

    if-eqz v1, :cond_3f

    iget-object v1, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-nez v1, :cond_3f

    .line 473
    new-instance v1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->parentView:Landroid/view/View;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/16 v4, 0xd

    invoke-direct {v1, v2, v7, v3, v4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;-><init>(Landroid/view/View;ZII)V

    iput-object v1, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    .line 474
    iget-object v1, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->parentView:Landroid/view/View;

    instance-of v2, v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v2, :cond_3e

    check-cast v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->isCellAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_3f

    goto :goto_16

    :cond_3e
    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 475
    :goto_16
    iget-object v1, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attach()V

    .line 478
    :cond_3f
    iget-object v1, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v1, :cond_40

    .line 479
    iget-wide v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiDocumentId:J

    invoke-virtual {v1, v2, v3, v13}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(JZ)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 480
    iput-boolean v7, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiLoaded:Z

    .line 483
    :cond_40
    iget-object v1, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->sticker:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v1, :cond_41

    .line 484
    iget-wide v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->stickerDocumentId:J

    invoke-virtual {v1, v2, v3, v13}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(JZ)Z

    .line 486
    :cond_41
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReplyMessageLine;->getColor()I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiColor:I

    .line 487
    iget-object v1, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->nameColorAnimated:Lorg/telegram/ui/Components/AnimatedColor;

    iget v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->nameColor:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedColor;->set(I)I

    move-result v1

    return v1
.end method

.method public drawBackground(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFFF)V
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 647
    invoke-virtual/range {v0 .. v8}, Lorg/telegram/ui/Components/ReplyMessageLine;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFFFZZ)V

    return-void
.end method

.method public drawBackground(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFFFZZ)V
    .locals 6

    .line 651
    iget-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->radii:[F

    sget v1, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    int-to-float v1, v1

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v1, v3

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    int-to-float p3, p3

    const/4 v1, 0x1

    aput p3, v0, v1

    const/4 v1, 0x0

    aput p3, v0, v1

    .line 652
    iget-object p3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->radii:[F

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    int-to-float p4, p4

    const/4 v0, 0x3

    aput p4, p3, v0

    const/4 v0, 0x2

    aput p4, p3, v0

    .line 653
    iget-object p3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->radii:[F

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    int-to-float p4, p4

    const/4 v0, 0x5

    aput p4, p3, v0

    const/4 v0, 0x4

    aput p4, p3, v0

    .line 654
    iget-object p3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->radii:[F

    sget p4, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    int-to-float p4, p4

    div-float/2addr p4, v2

    float-to-double v0, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p4, v0

    int-to-float p4, p4

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p5

    invoke-static {p4, p5}, Ljava/lang/Math;->max(II)I

    move-result p4

    int-to-float p4, p4

    const/4 p5, 0x7

    aput p4, p3, p5

    const/4 p5, 0x6

    aput p4, p3, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p6

    move v4, p7

    move v5, p8

    .line 655
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/ReplyMessageLine;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/RectF;FZZ)V

    return-void
.end method

.method public drawBackground(Landroid/graphics/Canvas;Landroid/graphics/RectF;FZZ)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez p5, :cond_0

    .line 688
    iget-object v3, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->rewind()V

    .line 689
    iget-object v3, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundPath:Landroid/graphics/Path;

    iget-object v4, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->radii:[F

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v2, v4, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 691
    iget-object v3, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundPaint:Landroid/graphics/Paint;

    iget-object v4, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundColorAnimated:Lorg/telegram/ui/Components/AnimatedColor;

    iget v5, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundColor:I

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/AnimatedColor;->set(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 692
    iget-object v3, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, p3

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 693
    iget-object v3, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundPath:Landroid/graphics/Path;

    iget-object v4, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 696
    :cond_0
    iget-object v3, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v3, :cond_8

    .line 697
    iget-object v3, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiLoadedT:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct {v0}, Lorg/telegram/ui/Components/ReplyMessageLine;->isEmojiLoaded()Z

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v5, v3, v4

    if-lez v5, :cond_8

    .line 699
    iget v5, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiAlpha:F

    cmpl-float v4, v5, v4

    if-lez v4, :cond_8

    .line 700
    iget-object v4, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->iconCoords:[Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;

    const v6, 0x3e99999a    # 0.3f

    const/high16 v7, 0x3f800000    # 1.0f

    if-nez v4, :cond_1

    .line 701
    new-instance v4, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;

    const/high16 v8, 0x40800000    # 4.0f

    const v9, -0x3f3570a4    # -6.33f

    invoke-direct {v4, v8, v9, v7, v7}, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;-><init>(FFFF)V

    new-instance v8, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;

    const v9, 0x3f47ae14    # 0.78f

    const v10, 0x3f666666    # 0.9f

    const/high16 v11, 0x41f00000    # 30.0f

    const/high16 v12, 0x40400000    # 3.0f

    invoke-direct {v8, v11, v12, v9, v10}, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;-><init>(FFFF)V

    new-instance v9, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;

    const/high16 v10, 0x42380000    # 46.0f

    const/high16 v11, -0x3e780000    # -17.0f

    const v12, 0x3f19999a    # 0.6f

    invoke-direct {v9, v10, v11, v12, v12}, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;-><init>(FFFF)V

    new-instance v10, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;

    const v11, -0x40d58106    # -0.666f

    const v12, 0x3f5eb852    # 0.87f

    const v13, 0x428b51ec    # 69.66f

    const v14, 0x3f333333    # 0.7f

    invoke-direct {v10, v13, v11, v12, v14}, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;-><init>(FFFF)V

    new-instance v11, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;

    const v12, -0x3eb66666    # -12.6f

    const v13, 0x3f83d70a    # 1.03f

    const/high16 v15, 0x42c40000    # 98.0f

    invoke-direct {v11, v15, v12, v13, v6}, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;-><init>(FFFF)V

    new-instance v12, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;

    const/high16 v13, 0x41c00000    # 24.0f

    const/high16 v15, 0x3f000000    # 0.5f

    const/16 p5, 0x0

    const/high16 v5, 0x424c0000    # 51.0f

    invoke-direct {v12, v5, v13, v7, v15}, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;-><init>(FFFF)V

    new-instance v5, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;

    const/high16 v13, 0x41a00000    # 20.0f

    const v15, 0x3f451eb8    # 0.77f

    const v6, 0x40ca8f5c    # 6.33f

    invoke-direct {v5, v6, v13, v15, v14}, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;-><init>(FFFF)V

    new-instance v16, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;

    const v20, 0x3f19999a    # 0.6f

    const/16 v21, 0x1

    const/high16 v17, -0x3e680000    # -19.0f

    const/high16 v18, 0x41400000    # 12.0f

    const v19, 0x3f4ccccd    # 0.8f

    invoke-direct/range {v16 .. v21}, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;-><init>(FFFFZ)V

    new-instance v17, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;

    const/high16 v21, 0x3f000000    # 0.5f

    const/16 v22, 0x1

    const/high16 v18, -0x3e500000    # -22.0f

    const/high16 v19, 0x42100000    # 36.0f

    const v20, 0x3f333333    # 0.7f

    invoke-direct/range {v17 .. v22}, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;-><init>(FFFFZ)V

    const/16 v6, 0x9

    new-array v6, v6, [Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;

    aput-object v4, v6, p5

    const/4 v4, 0x1

    aput-object v8, v6, v4

    const/4 v4, 0x2

    aput-object v9, v6, v4

    const/4 v4, 0x3

    aput-object v10, v6, v4

    const/4 v4, 0x4

    aput-object v11, v6, v4

    const/4 v4, 0x5

    aput-object v12, v6, v4

    const/4 v4, 0x6

    aput-object v5, v6, v4

    const/4 v4, 0x7

    aput-object v16, v6, v4

    const/16 v4, 0x8

    aput-object v17, v6, v4

    iput-object v6, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->iconCoords:[Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;

    goto :goto_0

    :cond_1
    const/16 p5, 0x0

    .line 714
    :goto_0
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 715
    invoke-virtual/range {p1 .. p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 716
    iget v4, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiOffsetX:F

    iget v5, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiOffsetY:F

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 718
    iget v4, v2, Landroid/graphics/RectF;->right:F

    const/high16 v5, 0x41700000    # 15.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    if-eqz p4, :cond_2

    const/high16 v5, 0x41400000    # 12.0f

    .line 720
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    .line 722
    :cond_2
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    iget v2, v2, Landroid/graphics/RectF;->top:F

    const/high16 v6, 0x41a80000    # 21.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v2, v6

    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 724
    iget-object v5, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->sticker:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    const/high16 v6, 0x437f0000    # 255.0f

    if-eqz v5, :cond_3

    mul-float v8, p3, v6

    float-to-int v8, v8

    .line 725
    invoke-virtual {v5, v8}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setAlpha(I)V

    .line 728
    :cond_3
    iget-object v5, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget v8, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiColor:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setColor(Ljava/lang/Integer;)V

    move/from16 v5, p5

    .line 729
    :goto_1
    iget-object v8, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->iconCoords:[Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;

    array-length v9, v8

    if-ge v5, v9, :cond_7

    if-nez v5, :cond_4

    .line 730
    iget-object v9, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->sticker:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v9, :cond_4

    iget-wide v10, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->stickerDocumentId:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_4

    goto :goto_2

    :cond_4
    iget-object v9, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    .line 731
    :goto_2
    aget-object v8, v8, v5

    .line 732
    iget-boolean v10, v8, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;->q:Z

    if-eqz v10, :cond_5

    if-nez p4, :cond_5

    goto :goto_4

    .line 735
    :cond_5
    iget-object v10, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->sticker:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-ne v9, v10, :cond_6

    move v10, v7

    goto :goto_3

    :cond_6
    const v10, 0x3e99999a    # 0.3f

    :goto_3
    mul-float/2addr v10, v6

    iget v11, v8, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;->a:F

    mul-float/2addr v10, v11

    iget v11, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiAlpha:F

    mul-float/2addr v10, v11

    float-to-int v10, v10

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setAlpha(I)V

    .line 736
    iget v10, v8, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;->x:F

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    sub-float v10, v4, v10

    .line 737
    iget v11, v8, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;->y:F

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v11, v2

    const/high16 v12, 0x41200000    # 10.0f

    .line 738
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    iget v8, v8, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;->s:F

    mul-float/2addr v12, v8

    mul-float/2addr v12, v3

    sub-float v8, v10, v12

    float-to-int v8, v8

    sub-float v13, v11, v12

    float-to-int v13, v13

    add-float/2addr v10, v12

    float-to-int v10, v10

    add-float/2addr v11, v12

    float-to-int v11, v11

    .line 739
    invoke-virtual {v9, v8, v13, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 740
    invoke-virtual {v9, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->draw(Landroid/graphics/Canvas;)V

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 743
    :cond_7
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :cond_8
    return-void
.end method

.method public drawLine(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 561
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Components/ReplyMessageLine;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V

    return-void
.end method

.method public drawLine(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 565
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 567
    iget-object v4, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->rewind()V

    .line 568
    sget v4, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    int-to-float v4, v4

    iget-boolean v5, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->sponsored:Z

    const/high16 v7, 0x40400000    # 3.0f

    if-eqz v5, :cond_0

    const/high16 v5, 0x40000000    # 2.0f

    goto :goto_0

    :cond_0
    move v5, v7

    :goto_0
    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 569
    iget-object v5, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->rectF:Landroid/graphics/RectF;

    iget v8, v2, Landroid/graphics/RectF;->left:F

    iget v9, v2, Landroid/graphics/RectF;->top:F

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    mul-int/lit8 v11, v4, 0x2

    int-to-float v11, v11

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v8

    iget v11, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 570
    iget-object v5, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->clipPath:Landroid/graphics/Path;

    iget-object v8, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->rectF:Landroid/graphics/RectF;

    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sget-object v10, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v8, v9, v4, v10}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 571
    iget-object v4, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 572
    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v4

    iget v8, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v4, v5, v7, v8}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 574
    iget-object v4, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1Paint:Landroid/graphics/Paint;

    iget-object v5, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1Animated:Lorg/telegram/ui/Components/AnimatedColor;

    iget v7, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/AnimatedColor;->set(I)I

    move-result v5

    invoke-static {v5, v3}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 575
    iget-object v4, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2Paint:Landroid/graphics/Paint;

    iget-object v5, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2Animated:Lorg/telegram/ui/Components/AnimatedColor;

    iget v7, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2:I

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/AnimatedColor;->set(I)I

    move-result v5

    invoke-static {v5, v3}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 576
    iget-object v4, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3Paint:Landroid/graphics/Paint;

    iget-object v5, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3Animated:Lorg/telegram/ui/Components/AnimatedColor;

    iget v7, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3:I

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/AnimatedColor;->set(I)I

    move-result v5

    invoke-static {v5, v3}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 579
    iget-object v3, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->loadingStateT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v4, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->loading:Z

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v5, v3, v4

    if-lez v5, :cond_1

    .line 580
    iget-boolean v5, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor2:Z

    if-nez v5, :cond_1

    .line 581
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 584
    iget-object v5, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1Paint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getAlpha()I

    move-result v5

    .line 585
    iget-object v8, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1Paint:Landroid/graphics/Paint;

    int-to-float v9, v5

    const v11, 0x3e99999a    # 0.3f

    mul-float/2addr v9, v11

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 586
    iget-object v8, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1Paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 587
    iget-object v8, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1Paint:Landroid/graphics/Paint;

    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 589
    invoke-direct {v0}, Lorg/telegram/ui/Components/ReplyMessageLine;->incrementLoadingT()V

    .line 591
    iget v5, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->loadingT:F

    const/high16 v8, 0x43700000    # 240.0f

    div-float/2addr v5, v8

    const/high16 v8, 0x40800000    # 4.0f

    div-float/2addr v5, v8

    float-to-double v11, v5

    const-wide v13, 0x3feb333340000000L    # 0.8500000238418579

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    double-to-float v5, v11

    mul-float/2addr v5, v8

    const/high16 v9, 0x3f000000    # 0.5f

    .line 592
    invoke-static {v5, v9}, Ljava/lang/Math;->max(FF)F

    move-result v11

    const/high16 v12, 0x3fc00000    # 1.5f

    add-float/2addr v11, v12

    const/high16 v13, 0x40600000    # 3.5f

    rem-float/2addr v11, v13

    mul-float/2addr v11, v9

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v11, v4, v14}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v11

    add-float/2addr v5, v12

    rem-float/2addr v5, v13

    sub-float/2addr v5, v12

    mul-float/2addr v5, v9

    .line 593
    invoke-static {v5, v4, v14}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v5

    .line 595
    iget-object v9, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->rectF:Landroid/graphics/RectF;

    iget v12, v2, Landroid/graphics/RectF;->left:F

    iget v13, v2, Landroid/graphics/RectF;->top:F

    .line 597
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v15

    const/high16 v16, 0x40000000    # 2.0f

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_IN:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v6, v11}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v6

    sub-float v6, v14, v6

    invoke-static {v4, v6, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v6

    mul-float/2addr v15, v6

    add-float/2addr v13, v15

    iget v6, v2, Landroid/graphics/RectF;->left:F

    const/high16 v11, 0x40c00000    # 6.0f

    .line 598
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v6, v11

    iget v11, v2, Landroid/graphics/RectF;->top:F

    .line 599
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v15

    sget-object v7, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v7, v5}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v5

    sub-float v5, v14, v5

    invoke-static {v14, v5, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    mul-float/2addr v15, v3

    add-float/2addr v11, v15

    .line 595
    invoke-virtual {v9, v12, v13, v6, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 601
    iget-object v3, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->lineClipPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->rewind()V

    .line 602
    iget-object v3, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->lineClipPath:Landroid/graphics/Path;

    iget-object v5, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->rectF:Landroid/graphics/RectF;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v3, v5, v6, v7, v10}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 603
    iget-object v3, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->lineClipPath:Landroid/graphics/Path;

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 606
    iget-object v3, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->parentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/high16 v16, 0x40000000    # 2.0f

    const/4 v3, 0x0

    .line 608
    :goto_1
    iget-object v5, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1Paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 609
    iget-object v5, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2Alpha:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v6, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor2:Z

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v5

    cmpl-float v6, v5, v4

    if-lez v6, :cond_4

    .line 611
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 612
    iget v6, v2, Landroid/graphics/RectF;->left:F

    iget v7, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 613
    invoke-direct {v0}, Lorg/telegram/ui/Components/ReplyMessageLine;->incrementLoadingT()V

    .line 615
    iget-object v6, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3Alpha:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v7, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor3:Z

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v6

    .line 617
    iget-boolean v7, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor3:Z

    if-eqz v7, :cond_2

    .line 618
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v8

    float-to-int v8, v8

    const v9, 0x4197eb85    # 18.99f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/ReplyMessageLine$$ExternalSyntheticBackport0;->m(II)I

    move-result v8

    :goto_2
    int-to-float v8, v8

    sub-float/2addr v7, v8

    goto :goto_3

    .line 620
    :cond_2
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v8

    float-to-int v8, v8

    const v9, 0x414a8f5c    # 12.66f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/ReplyMessageLine$$ExternalSyntheticBackport0;->m(II)I

    move-result v8

    goto :goto_2

    .line 623
    :goto_3
    iget v8, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->loadingTranslationT:F

    iget-object v9, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->switchStateT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v10, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->switchedCount:I

    mul-int/lit16 v10, v10, 0x1a9

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v9

    add-float/2addr v8, v9

    iget-boolean v9, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->reversedOut:Z

    if-eqz v9, :cond_3

    const/16 v9, 0x64

    goto :goto_4

    :cond_3
    const/4 v9, 0x0

    :goto_4
    int-to-float v9, v9

    add-float/2addr v8, v9

    const/high16 v9, 0x447a0000    # 1000.0f

    div-float/2addr v8, v9

    const/high16 v9, 0x41f00000    # 30.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v8, v9

    rem-float/2addr v8, v7

    neg-float v7, v8

    invoke-virtual {v1, v4, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 625
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float v2, v2, v16

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/ReplyMessageLine;->checkColorPathes(F)V

    .line 626
    iget-object v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2Paint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    .line 627
    iget-object v4, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2Paint:Landroid/graphics/Paint;

    int-to-float v7, v2

    mul-float/2addr v7, v5

    float-to-int v5, v7

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 628
    iget-object v4, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2Path:Landroid/graphics/Path;

    iget-object v5, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2Paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 629
    iget-object v4, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2Paint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 631
    iget-object v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3Paint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    .line 632
    iget-object v4, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3Paint:Landroid/graphics/Paint;

    int-to-float v5, v2

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 633
    iget-object v4, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3Path:Landroid/graphics/Path;

    iget-object v5, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3Paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 634
    iget-object v4, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3Paint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 636
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    if-eqz v3, :cond_5

    .line 640
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 643
    :cond_5
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public drawLoadingBackground(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFFF)V
    .locals 5

    .line 763
    iget-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->radii:[F

    sget v1, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    int-to-float v1, v1

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v1, v3

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    int-to-float p3, p3

    const/4 v1, 0x1

    aput p3, v0, v1

    const/4 v3, 0x0

    aput p3, v0, v3

    .line 764
    iget-object p3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->radii:[F

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    int-to-float p4, p4

    const/4 v0, 0x3

    aput p4, p3, v0

    const/4 v0, 0x2

    aput p4, p3, v0

    .line 765
    iget-object p3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->radii:[F

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    int-to-float p4, p4

    const/4 v0, 0x5

    aput p4, p3, v0

    const/4 v0, 0x4

    aput p4, p3, v0

    .line 766
    iget-object p3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->radii:[F

    sget p4, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    int-to-float p4, p4

    div-float/2addr p4, v2

    float-to-double v2, p4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int p4, v2

    int-to-float p4, p4

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p5

    invoke-static {p4, p5}, Ljava/lang/Math;->max(II)I

    move-result p4

    int-to-float p4, p4

    const/4 p5, 0x7

    aput p4, p3, p5

    const/4 p5, 0x6

    aput p4, p3, p5

    .line 768
    iget-boolean p3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->loading:Z

    if-nez p3, :cond_2

    iget-object p3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundLoadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lorg/telegram/ui/Components/LoadingDrawable;->isDisappearing()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 791
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundLoadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    if-eqz p1, :cond_1

    .line 792
    invoke-virtual {p1}, Lorg/telegram/ui/Components/LoadingDrawable;->reset()V

    :cond_1
    return-void

    .line 769
    :cond_2
    :goto_0
    iget-object p3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundLoadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    if-nez p3, :cond_3

    .line 770
    new-instance p3, Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-direct {p3}, Lorg/telegram/ui/Components/LoadingDrawable;-><init>()V

    iput-object p3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundLoadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    .line 771
    invoke-virtual {p3, v1}, Lorg/telegram/ui/Components/LoadingDrawable;->setAppearByGradient(Z)V

    .line 772
    iget-object p3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundLoadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    const/high16 p4, 0x40600000    # 3.5f

    invoke-virtual {p3, p4}, Lorg/telegram/ui/Components/LoadingDrawable;->setGradientScale(F)V

    .line 773
    iget-object p3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundLoadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    const/high16 p4, 0x3f000000    # 0.5f

    invoke-virtual {p3, p4}, Lorg/telegram/ui/Components/LoadingDrawable;->setSpeed(F)V

    .line 776
    :cond_3
    iget-object p3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundLoadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    iget p4, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    const p5, 0x3dcccccd    # 0.1f

    .line 777
    invoke-static {p4, p5}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p4

    iget p5, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    const v0, 0x3e99999a    # 0.3f

    .line 778
    invoke-static {p5, v0}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p5

    iget v1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    .line 779
    invoke-static {v1, v0}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    const/high16 v2, 0x3fa00000    # 1.25f

    .line 780
    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    .line 776
    invoke-virtual {p3, p4, p5, v0, v1}, Lorg/telegram/ui/Components/LoadingDrawable;->setColors(IIII)V

    .line 783
    iget-object p3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundLoadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {p3, p2}, Lorg/telegram/ui/Components/LoadingDrawable;->setBounds(Landroid/graphics/RectF;)V

    .line 784
    iget-object p2, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundLoadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    iget-object p3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->radii:[F

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/LoadingDrawable;->setRadii([F)V

    .line 785
    iget-object p2, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundLoadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    iget-object p2, p2, Lorg/telegram/ui/Components/LoadingDrawable;->strokePaint:Landroid/graphics/Paint;

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 787
    iget-object p2, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundLoadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    const/high16 p3, 0x437f0000    # 255.0f

    mul-float/2addr p6, p3

    float-to-int p3, p6

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/LoadingDrawable;->setAlpha(I)V

    .line 788
    iget-object p2, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundLoadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/LoadingDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 790
    iget-object p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->parentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public getBackgroundColor()I
    .locals 1

    .line 114
    iget v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundColor:I

    return v0
.end method

.method public getColor()I
    .locals 1

    .line 110
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->reversedOut:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2:I

    return v0

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    return v0
.end method

.method public hasSticker()Z
    .locals 4

    .line 491
    iget-wide v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->stickerDocumentId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public offsetEmoji(FF)Lorg/telegram/ui/Components/ReplyMessageLine;
    .locals 0

    .line 681
    iput p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiOffsetX:F

    .line 682
    iput p2, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiOffsetY:F

    return-object p0
.end method

.method public resetAnimation()V
    .locals 3

    .line 521
    iget-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1Animated:Lorg/telegram/ui/Components/AnimatedColor;

    iget v1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedColor;->set(IZ)I

    .line 522
    iget-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2Animated:Lorg/telegram/ui/Components/AnimatedColor;

    iget v1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedColor;->set(IZ)I

    .line 523
    iget-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2Alpha:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor2:Z

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(ZZ)F

    .line 524
    iget-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->nameColorAnimated:Lorg/telegram/ui/Components/AnimatedColor;

    iget v1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->nameColor:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedColor;->set(IZ)I

    .line 525
    iget-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundColorAnimated:Lorg/telegram/ui/Components/AnimatedColor;

    iget v1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundColor:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedColor;->set(IZ)I

    .line 526
    iget-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v0, :cond_0

    .line 527
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->resetAnimation()V

    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    .line 118
    iput p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundColor:I

    return-void
.end method

.method public setEmojiAlpha(F)V
    .locals 0

    .line 516
    iput p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiAlpha:F

    return-void
.end method

.method public setFactCheck(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I
    .locals 6

    .line 495
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->nameColor:I

    .line 496
    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    const/4 v1, 0x0

    .line 497
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor2:Z

    .line 498
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor3:Z

    .line 499
    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    const v0, 0x3dcccccd    # 0.1f

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundColor:I

    .line 500
    iget-wide v2, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiDocumentId:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-nez p1, :cond_1

    .line 501
    new-instance p1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->parentView:Landroid/view/View;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/16 v3, 0xd

    invoke-direct {p1, v0, v1, v2, v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;-><init>(Landroid/view/View;ZII)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    .line 502
    iget-object p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->parentView:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->isCellAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 503
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attach()V

    .line 506
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz p1, :cond_2

    .line 507
    iget-wide v2, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiDocumentId:J

    const/4 v0, 0x1

    invoke-virtual {p1, v2, v3, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(JZ)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 508
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiLoaded:Z

    .line 511
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ReplyMessageLine;->getColor()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiColor:I

    .line 512
    iget-object p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->nameColorAnimated:Lorg/telegram/ui/Components/AnimatedColor;

    iget v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->nameColor:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedColor;->set(I)I

    move-result p1

    return p1
.end method

.method public setLoading(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 537
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->loading:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 538
    iput v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->loadingT:F

    .line 539
    iget-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundLoadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    if-eqz v0, :cond_1

    .line 540
    invoke-virtual {v0}, Lorg/telegram/ui/Components/LoadingDrawable;->disappear()V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 542
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->loading:Z

    if-nez v0, :cond_1

    .line 543
    iget-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundLoadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    if-eqz v0, :cond_1

    .line 544
    invoke-virtual {v0}, Lorg/telegram/ui/Components/LoadingDrawable;->resetDisappear()V

    .line 545
    iget-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundLoadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LoadingDrawable;->reset()V

    .line 548
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->loading:Z

    return-void
.end method
