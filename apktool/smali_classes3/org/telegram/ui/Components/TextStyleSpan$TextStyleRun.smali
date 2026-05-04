.class public Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/TextStyleSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextStyleRun"
.end annotation


# instance fields
.field public end:I

.field public flags:I

.field public start:I

.field public urlEntity:Lorg/telegram/tgnet/TLRPC$MessageEntity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iget v0, p1, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    iput v0, p0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    .line 42
    iget v0, p1, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->start:I

    iput v0, p0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->start:I

    .line 43
    iget v0, p1, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->end:I

    iput v0, p0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->end:I

    .line 44
    iget-object p1, p1, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->urlEntity:Lorg/telegram/tgnet/TLRPC$MessageEntity;

    iput-object p1, p0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->urlEntity:Lorg/telegram/tgnet/TLRPC$MessageEntity;

    return-void
.end method


# virtual methods
.method public applyStyle(Landroid/text/TextPaint;)V
    .locals 1

    .line 60
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 64
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    .line 65
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    or-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFlags(I)V

    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, -0x9

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFlags(I)V

    .line 69
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    .line 70
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    or-int/lit8 v0, v0, 0x10

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFlags(I)V

    goto :goto_1

    .line 72
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, -0x11

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFlags(I)V

    .line 75
    :goto_1
    iget v0, p0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/exteragram/messenger/utils/ui/FontUtils;->isMediumWeightSupported()Z

    move-result v0

    if-nez v0, :cond_3

    const v0, 0x3f266666    # 0.65f

    .line 76
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 77
    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 79
    :cond_3
    iget v0, p0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/exteragram/messenger/utils/ui/FontUtils;->isItalicSupported()Z

    move-result v0

    if-nez v0, :cond_4

    const/high16 v0, -0x41800000    # -0.25f

    .line 80
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 83
    :cond_4
    iget v0, p0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_5

    .line 84
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archivePullDownBackground:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    iput v0, p1, Landroid/text/TextPaint;->bgColor:I

    :cond_5
    return-void
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 2

    .line 89
    iget v0, p0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_4

    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 91
    invoke-static {}, Lcom/exteragram/messenger/utils/ui/FontUtils;->isMediumWeightSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/exteragram/messenger/utils/ui/FontUtils;->isItalicSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    const-string v0, "fonts/rmediumitalic.ttf"

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0

    .line 93
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/exteragram/messenger/utils/ui/FontUtils;->isMediumWeightSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0

    .line 95
    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/exteragram/messenger/utils/ui/FontUtils;->isItalicSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 96
    const-string v0, "fonts/ritalic.ttf"

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0

    .line 90
    :cond_4
    :goto_0
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public merge(Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V
    .locals 2

    .line 48
    iget v0, p0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    iget v1, p1, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    or-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    .line 49
    iget-object v0, p0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->urlEntity:Lorg/telegram/tgnet/TLRPC$MessageEntity;

    if-nez v0, :cond_0

    iget-object p1, p1, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->urlEntity:Lorg/telegram/tgnet/TLRPC$MessageEntity;

    if-eqz p1, :cond_0

    .line 50
    iput-object p1, p0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->urlEntity:Lorg/telegram/tgnet/TLRPC$MessageEntity;

    :cond_0
    return-void
.end method

.method public replace(Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V
    .locals 1

    .line 55
    iget v0, p1, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    iput v0, p0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    .line 56
    iget-object p1, p1, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->urlEntity:Lorg/telegram/tgnet/TLRPC$MessageEntity;

    iput-object p1, p0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->urlEntity:Lorg/telegram/tgnet/TLRPC$MessageEntity;

    return-void
.end method
