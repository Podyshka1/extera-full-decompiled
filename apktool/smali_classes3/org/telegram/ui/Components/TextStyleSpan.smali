.class public Lorg/telegram/ui/Components/TextStyleSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;
    }
.end annotation


# instance fields
.field private color:I

.field private style:Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

.field private textSize:I


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V
    .locals 1

    const/4 v0, 0x0

    .line 118
    invoke-direct {p0, p1, v0, v0}, Lorg/telegram/ui/Components/TextStyleSpan;-><init>(Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;II)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;II)V
    .locals 0

    .line 125
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 126
    iput-object p1, p0, Lorg/telegram/ui/Components/TextStyleSpan;->style:Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    if-lez p2, :cond_0

    .line 128
    iput p2, p0, Lorg/telegram/ui/Components/TextStyleSpan;->textSize:I

    .line 130
    :cond_0
    iput p3, p0, Lorg/telegram/ui/Components/TextStyleSpan;->color:I

    return-void
.end method


# virtual methods
.method public getStyleFlags()I
    .locals 1

    .line 134
    iget-object v0, p0, Lorg/telegram/ui/Components/TextStyleSpan;->style:Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    iget v0, v0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    return v0
.end method

.method public getTextStyleRun()Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;
    .locals 1

    .line 138
    iget-object v0, p0, Lorg/telegram/ui/Components/TextStyleSpan;->style:Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    return-object v0
.end method

.method public isSpoiler()Z
    .locals 1

    .line 150
    iget-object v0, p0, Lorg/telegram/ui/Components/TextStyleSpan;->style:Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    iget v0, v0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setSpoilerRevealed(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 159
    iget-object p1, p0, Lorg/telegram/ui/Components/TextStyleSpan;->style:Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    iget v0, p1, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p1, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    return-void

    .line 160
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/TextStyleSpan;->style:Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    iget v0, p1, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p1, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 190
    iget v0, p0, Lorg/telegram/ui/Components/TextStyleSpan;->textSize:I

    if-eqz v0, :cond_0

    int-to-float v0, v0

    .line 191
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 193
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/TextStyleSpan;->color:I

    if-eqz v0, :cond_1

    .line 194
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 196
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFlags(I)V

    .line 197
    iget-object v0, p0, Lorg/telegram/ui/Components/TextStyleSpan;->style:Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->applyStyle(Landroid/text/TextPaint;)V

    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 1

    .line 181
    iget v0, p0, Lorg/telegram/ui/Components/TextStyleSpan;->textSize:I

    if-eqz v0, :cond_0

    int-to-float v0, v0

    .line 182
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 184
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFlags(I)V

    .line 185
    iget-object v0, p0, Lorg/telegram/ui/Components/TextStyleSpan;->style:Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->applyStyle(Landroid/text/TextPaint;)V

    return-void
.end method
