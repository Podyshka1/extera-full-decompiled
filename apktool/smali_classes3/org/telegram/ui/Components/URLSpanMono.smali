.class public Lorg/telegram/ui/Components/URLSpanMono;
.super Landroid/text/style/MetricAffectingSpan;
.source "SourceFile"


# instance fields
.field private currentEnd:I

.field private currentMessage:Ljava/lang/CharSequence;

.field private currentStart:I

.field private currentType:B

.field private style:Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;IIBLorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/telegram/ui/Components/URLSpanMono;->currentMessage:Ljava/lang/CharSequence;

    .line 36
    iput p2, p0, Lorg/telegram/ui/Components/URLSpanMono;->currentStart:I

    .line 37
    iput p3, p0, Lorg/telegram/ui/Components/URLSpanMono;->currentEnd:I

    .line 38
    iput-byte p4, p0, Lorg/telegram/ui/Components/URLSpanMono;->currentType:B

    .line 39
    iput-object p5, p0, Lorg/telegram/ui/Components/URLSpanMono;->style:Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    return-void
.end method


# virtual methods
.method public copyToClipboard()V
    .locals 3

    .line 43
    iget-object v0, p0, Lorg/telegram/ui/Components/URLSpanMono;->currentMessage:Ljava/lang/CharSequence;

    iget v1, p0, Lorg/telegram/ui/Components/URLSpanMono;->currentStart:I

    iget v2, p0, Lorg/telegram/ui/Components/URLSpanMono;->currentEnd:I

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    return-void
.end method

.method public setCurrentType(B)V
    .locals 0

    .line 76
    iput-byte p1, p0, Lorg/telegram/ui/Components/URLSpanMono;->currentType:B

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 3

    .line 59
    sget v0, Lorg/telegram/messenger/SharedConfig;->fontSize:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 60
    iget-byte v0, p0, Lorg/telegram/ui/Components/URLSpanMono;->currentType:B

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 61
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chats_message:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 63
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageTextOut:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 65
    :cond_1
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageTextIn:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 67
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/URLSpanMono;->style:Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    if-eqz v0, :cond_2

    .line 68
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->applyStyle(Landroid/text/TextPaint;)V

    return-void

    .line 70
    :cond_2
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 1

    .line 48
    sget v0, Lorg/telegram/messenger/SharedConfig;->fontSize:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 49
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFlags(I)V

    .line 50
    iget-object v0, p0, Lorg/telegram/ui/Components/URLSpanMono;->style:Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->applyStyle(Landroid/text/TextPaint;)V

    return-void

    .line 53
    :cond_0
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method
