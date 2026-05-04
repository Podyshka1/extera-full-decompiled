.class public Lorg/telegram/messenger/Emoji$SimpleEmojiDrawable;
.super Lorg/telegram/messenger/Emoji$EmojiDrawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/Emoji;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleEmojiDrawable"
.end annotation


# static fields
.field private static paint:Landroid/graphics/Paint;

.field private static rect:Landroid/graphics/Rect;

.field private static final textPaint:Landroid/text/TextPaint;


# instance fields
.field private info:Lorg/telegram/messenger/Emoji$DrawableInfo;

.field private invert:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 367
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lorg/telegram/messenger/Emoji$SimpleEmojiDrawable;->paint:Landroid/graphics/Paint;

    .line 368
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lorg/telegram/messenger/Emoji$SimpleEmojiDrawable;->rect:Landroid/graphics/Rect;

    .line 369
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    sput-object v0, Lorg/telegram/messenger/Emoji$SimpleEmojiDrawable;->textPaint:Landroid/text/TextPaint;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/Emoji$DrawableInfo;Z)V
    .locals 0

    .line 372
    invoke-direct {p0}, Lorg/telegram/messenger/Emoji$EmojiDrawable;-><init>()V

    .line 373
    iput-object p1, p0, Lorg/telegram/messenger/Emoji$SimpleEmojiDrawable;->info:Lorg/telegram/messenger/Emoji$DrawableInfo;

    .line 374
    iput-boolean p2, p0, Lorg/telegram/messenger/Emoji$SimpleEmojiDrawable;->invert:Z

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 393
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->useSystemEmoji:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/Emoji$SimpleEmojiDrawable;->isLoaded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 394
    iget-object v1, p0, Lorg/telegram/messenger/Emoji$SimpleEmojiDrawable;->info:Lorg/telegram/messenger/Emoji$DrawableInfo;

    iget-byte v2, v1, Lorg/telegram/messenger/Emoji$DrawableInfo;->page:B

    iget-short v1, v1, Lorg/telegram/messenger/Emoji$DrawableInfo;->page2:S

    invoke-static {v2, v1}, Lorg/telegram/messenger/Emoji;->-$$Nest$smloadEmoji(BS)V

    .line 395
    sget-object v1, Lorg/telegram/messenger/Emoji;->placeholderPaint:Landroid/graphics/Paint;

    iget v2, p0, Lorg/telegram/messenger/Emoji$EmojiDrawable;->placeholderColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 396
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 397
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const v4, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v4

    sget-object v4, Lorg/telegram/messenger/Emoji;->placeholderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void

    .line 402
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/messenger/Emoji$EmojiDrawable;->fullSize:Z

    if-eqz v1, :cond_1

    .line 403
    invoke-virtual {p0}, Lorg/telegram/messenger/Emoji$SimpleEmojiDrawable;->getDrawRect()Landroid/graphics/Rect;

    move-result-object v1

    :goto_0
    move-object v6, v1

    goto :goto_1

    .line 405
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_0

    .line 408
    :goto_1
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->useSystemEmoji:Z

    if-eqz v1, :cond_2

    .line 409
    sget-object v1, Lorg/telegram/messenger/EmojiData;->data:[[Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/messenger/Emoji$SimpleEmojiDrawable;->info:Lorg/telegram/messenger/Emoji$DrawableInfo;

    iget-byte v3, v2, Lorg/telegram/messenger/Emoji$DrawableInfo;->page:B

    aget-object v1, v1, v3

    iget v2, v2, Lorg/telegram/messenger/Emoji$DrawableInfo;->emojiIndex:I

    aget-object v1, v1, v2

    invoke-static {v1}, Lorg/telegram/messenger/Emoji;->fixEmoji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 410
    sget-object v2, Lorg/telegram/messenger/Emoji$SimpleEmojiDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3f4ccccd    # 0.8f

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 411
    invoke-static {}, Lcom/exteragram/messenger/utils/ui/FontUtils;->getSystemEmojiTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 412
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, v6, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3e666666    # 0.225f

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    move-object v6, v2

    const/4 v2, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    return-void

    .line 416
    :cond_2
    iget v0, v6, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v6, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Canvas$EdgeType;->AA:Landroid/graphics/Canvas$EdgeType;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->quickReject(FFFFLandroid/graphics/Canvas$EdgeType;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 417
    iget-boolean v1, p0, Lorg/telegram/messenger/Emoji$SimpleEmojiDrawable;->invert:Z

    if-eqz v1, :cond_3

    .line 418
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 419
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p1, v3, v4, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 421
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/Emoji;->-$$Nest$sfgetemojiBmp()[[Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/Emoji$SimpleEmojiDrawable;->info:Lorg/telegram/messenger/Emoji$DrawableInfo;

    iget-byte v3, v2, Lorg/telegram/messenger/Emoji$DrawableInfo;->page:B

    aget-object v1, v1, v3

    iget-short v2, v2, Lorg/telegram/messenger/Emoji$DrawableInfo;->page2:S

    aget-object v1, v1, v2

    const/4 v2, 0x0

    sget-object v3, Lorg/telegram/messenger/Emoji$SimpleEmojiDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 422
    iget-boolean v1, p0, Lorg/telegram/messenger/Emoji$SimpleEmojiDrawable;->invert:Z

    if-eqz v1, :cond_4

    .line 423
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    return-void
.end method

.method public getDrawRect()Landroid/graphics/Rect;
    .locals 5

    .line 382
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 383
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    .line 384
    sget-object v2, Lorg/telegram/messenger/Emoji$SimpleEmojiDrawable;->rect:Landroid/graphics/Rect;

    iget-boolean v3, p0, Lorg/telegram/messenger/Emoji$EmojiDrawable;->fullSize:Z

    if-eqz v3, :cond_0

    sget v4, Lorg/telegram/messenger/Emoji;->bigImgSize:I

    goto :goto_0

    :cond_0
    sget v4, Lorg/telegram/messenger/Emoji;->drawImgSize:I

    :goto_0
    div-int/lit8 v4, v4, 0x2

    sub-int v4, v1, v4

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 385
    sget-object v2, Lorg/telegram/messenger/Emoji$SimpleEmojiDrawable;->rect:Landroid/graphics/Rect;

    if-eqz v3, :cond_1

    sget v4, Lorg/telegram/messenger/Emoji;->bigImgSize:I

    goto :goto_1

    :cond_1
    sget v4, Lorg/telegram/messenger/Emoji;->drawImgSize:I

    :goto_1
    div-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    iput v1, v2, Landroid/graphics/Rect;->right:I

    .line 386
    sget-object v1, Lorg/telegram/messenger/Emoji$SimpleEmojiDrawable;->rect:Landroid/graphics/Rect;

    if-eqz v3, :cond_2

    sget v2, Lorg/telegram/messenger/Emoji;->bigImgSize:I

    goto :goto_2

    :cond_2
    sget v2, Lorg/telegram/messenger/Emoji;->drawImgSize:I

    :goto_2
    div-int/lit8 v2, v2, 0x2

    sub-int v2, v0, v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 387
    sget-object v1, Lorg/telegram/messenger/Emoji$SimpleEmojiDrawable;->rect:Landroid/graphics/Rect;

    if-eqz v3, :cond_3

    sget v2, Lorg/telegram/messenger/Emoji;->bigImgSize:I

    goto :goto_3

    :cond_3
    sget v2, Lorg/telegram/messenger/Emoji;->drawImgSize:I

    :goto_3
    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 388
    sget-object v0, Lorg/telegram/messenger/Emoji$SimpleEmojiDrawable;->rect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getDrawableInfo()Lorg/telegram/messenger/Emoji$DrawableInfo;
    .locals 1

    .line 378
    iget-object v0, p0, Lorg/telegram/messenger/Emoji$SimpleEmojiDrawable;->info:Lorg/telegram/messenger/Emoji$DrawableInfo;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public isLoaded()Z
    .locals 3

    .line 445
    invoke-static {}, Lorg/telegram/messenger/Emoji;->-$$Nest$sfgetemojiBmp()[[Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/Emoji$SimpleEmojiDrawable;->info:Lorg/telegram/messenger/Emoji$DrawableInfo;

    iget-byte v2, v1, Lorg/telegram/messenger/Emoji$DrawableInfo;->page:B

    aget-object v0, v0, v2

    iget-short v1, v1, Lorg/telegram/messenger/Emoji$DrawableInfo;->page2:S

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public preload()V
    .locals 2

    .line 450
    invoke-virtual {p0}, Lorg/telegram/messenger/Emoji$SimpleEmojiDrawable;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 451
    iget-object v0, p0, Lorg/telegram/messenger/Emoji$SimpleEmojiDrawable;->info:Lorg/telegram/messenger/Emoji$DrawableInfo;

    iget-byte v1, v0, Lorg/telegram/messenger/Emoji$DrawableInfo;->page:B

    iget-short v0, v0, Lorg/telegram/messenger/Emoji$DrawableInfo;->page2:S

    invoke-static {v1, v0}, Lorg/telegram/messenger/Emoji;->-$$Nest$smloadEmoji(BS)V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 435
    sget-object v0, Lorg/telegram/messenger/Emoji$SimpleEmojiDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
