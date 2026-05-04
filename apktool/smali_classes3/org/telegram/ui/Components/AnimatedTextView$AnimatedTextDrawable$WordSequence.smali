.class Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$WordSequence;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/CharSequence;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WordSequence"
.end annotation


# instance fields
.field private final length:I

.field private final words:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 9

    .line 606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 608
    new-array p1, v0, [Ljava/lang/CharSequence;

    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$WordSequence;->words:[Ljava/lang/CharSequence;

    .line 609
    iput v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$WordSequence;->length:I

    return-void

    .line 612
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$WordSequence;->length:I

    move v1, v0

    move v2, v1

    .line 614
    :goto_0
    iget v3, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$WordSequence;->length:I

    const/16 v4, 0x20

    if-ge v1, v3, :cond_2

    .line 615
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    add-int/2addr v2, v1

    .line 620
    new-array v2, v2, [Ljava/lang/CharSequence;

    iput-object v2, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$WordSequence;->words:[Ljava/lang/CharSequence;

    move v2, v0

    move v3, v2

    move v5, v3

    .line 622
    :goto_1
    iget v6, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$WordSequence;->length:I

    if-gt v2, v6, :cond_6

    if-eq v2, v6, :cond_3

    .line 623
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ne v6, v4, :cond_5

    .line 624
    :cond_3
    iget-object v6, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$WordSequence;->words:[Ljava/lang/CharSequence;

    add-int/lit8 v7, v3, 0x1

    iget v8, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$WordSequence;->length:I

    if-ge v2, v8, :cond_4

    move v8, v1

    goto :goto_2

    :cond_4
    move v8, v0

    :goto_2
    add-int/2addr v8, v2

    invoke-interface {p1, v5, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v6, v3

    add-int/lit8 v5, v2, 0x1

    move v3, v7

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 660
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$WordSequence;->words:[Ljava/lang/CharSequence;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 661
    aget-object v2, v2, v1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 662
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$WordSequence;->words:[Ljava/lang/CharSequence;

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    return p1

    .line 663
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$WordSequence;->words:[Ljava/lang/CharSequence;

    aget-object v2, v2, v1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public chars()Lj$/util/stream/IntStream;
    .locals 2

    .line 690
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 691
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$WordSequence;->toCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable$CharSequenceHelper_API24$$ExternalSyntheticAPIConversion1;->m(Ljava/lang/CharSequence;)Lj$/util/stream/IntStream;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic chars()Ljava/util/stream/IntStream;
    .locals 1

    .line 0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$WordSequence;->chars()Lj$/util/stream/IntStream;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/IntStream$Wrapper;->convert(Lj$/util/stream/IntStream;)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public codePoints()Lj$/util/stream/IntStream;
    .locals 2

    .line 698
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 699
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$WordSequence;->toCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable$CharSequenceHelper_API24$$ExternalSyntheticAPIConversion0;->m(Ljava/lang/CharSequence;)Lj$/util/stream/IntStream;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic codePoints()Ljava/util/stream/IntStream;
    .locals 1

    .line 0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$WordSequence;->codePoints()Lj$/util/stream/IntStream;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/IntStream$Wrapper;->convert(Lj$/util/stream/IntStream;)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 1

    .line 655
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$WordSequence;->words:[Ljava/lang/CharSequence;

    array-length v0, v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1

    .line 671
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$WordSequence;->words:[Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public toCharSequence()Ljava/lang/CharSequence;
    .locals 1

    .line 685
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$WordSequence;->words:[Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 678
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$WordSequence;->words:[Ljava/lang/CharSequence;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 679
    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 681
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public wordAt(I)Ljava/lang/CharSequence;
    .locals 2

    if-ltz p1, :cond_1

    .line 647
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$WordSequence;->words:[Ljava/lang/CharSequence;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 650
    :cond_0
    aget-object p1, v0, p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
