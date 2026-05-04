.class public abstract Landroidx/collection/FloatList;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public _size:I

.field public content:[F


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 55
    invoke-static {}, Landroidx/collection/FloatSetKt;->getEmptyFloatArray()[F

    move-result-object p1

    goto :goto_0

    .line 57
    :cond_0
    new-array p1, p1, [F

    .line 54
    :goto_0
    iput-object p1, p0, Landroidx/collection/FloatList;->content:[F

    return-void
.end method

.method public synthetic constructor <init>(ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Landroidx/collection/FloatList;-><init>(I)V

    return-void
.end method

.method public static synthetic joinToString$default(Landroidx/collection/FloatList;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;ILjava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p7, :cond_5

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    .line 457
    const-string p1, ", "

    :cond_0
    and-int/lit8 p7, p6, 0x2

    .line 456
    const-string v0, ""

    if-eqz p7, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    const/4 p4, -0x1

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    .line 461
    const-string p5, "..."

    :cond_4
    move p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    .line 456
    invoke-virtual/range {p2 .. p7}, Landroidx/collection/FloatList;->joinToString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: joinToString"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 519
    instance-of v0, p1, Landroidx/collection/FloatList;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    check-cast p1, Landroidx/collection/FloatList;

    iget v0, p1, Landroidx/collection/FloatList;->_size:I

    iget v2, p0, Landroidx/collection/FloatList;->_size:I

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 522
    :cond_0
    iget-object v0, p0, Landroidx/collection/FloatList;->content:[F

    .line 523
    iget-object p1, p1, Landroidx/collection/FloatList;->content:[F

    .line 74
    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v2

    .line 524
    invoke-virtual {v2}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v3

    invoke-virtual {v2}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v2

    if-gt v3, v2, :cond_2

    .line 525
    :goto_0
    aget v4, v0, v3

    aget v5, p1, v3

    cmpg-float v4, v4, v5

    if-nez v4, :cond_1

    if-eq v3, v2, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    return v1
.end method

.method public final first()F
    .locals 2

    .line 365
    iget v0, p0, Landroidx/collection/FloatList;->_size:I

    if-nez v0, :cond_0

    .line 153
    const-string v0, "FloatList is empty."

    invoke-static {v0}, Landroidx/collection/internal/RuntimeHelpersKt;->throwNoSuchElementException(Ljava/lang/String;)V

    .line 155
    :cond_0
    iget-object v0, p0, Landroidx/collection/FloatList;->content:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public final get(I)F
    .locals 1

    if-ltz p1, :cond_0

    .line 291
    iget v0, p0, Landroidx/collection/FloatList;->_size:I

    if-ge p1, v0, :cond_0

    goto :goto_0

    .line 292
    :cond_0
    const-string v0, "Index must be between 0 and size"

    invoke-static {v0}, Landroidx/collection/internal/RuntimeHelpersKt;->throwIndexOutOfBoundsException(Ljava/lang/String;)V

    .line 294
    :goto_0
    iget-object v0, p0, Landroidx/collection/FloatList;->content:[F

    aget p1, v0, p1

    return p1
.end method

.method public final getSize()I
    .locals 1

    .line 65
    iget v0, p0, Landroidx/collection/FloatList;->_size:I

    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 238
    iget-object v0, p0, Landroidx/collection/FloatList;->content:[F

    .line 239
    iget v1, p0, Landroidx/collection/FloatList;->_size:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    .line 240
    aget v4, v0, v2

    .line 0
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    mul-int/lit8 v4, v4, 0x1f

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method public final joinToString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;)Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "separator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "prefix"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "postfix"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "truncated"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 463
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 252
    iget-object p2, p0, Landroidx/collection/FloatList;->content:[F

    .line 253
    iget v1, p0, Landroidx/collection/FloatList;->_size:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 254
    aget v3, p2, v2

    if-ne v2, p4, :cond_0

    .line 466
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    if-eqz v2, :cond_1

    .line 470
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 472
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 474
    :cond_2
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 462
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "toString(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final last()F
    .locals 2

    .line 365
    iget v0, p0, Landroidx/collection/FloatList;->_size:I

    if-nez v0, :cond_0

    .line 376
    const-string v0, "FloatList is empty."

    invoke-static {v0}, Landroidx/collection/internal/RuntimeHelpersKt;->throwNoSuchElementException(Ljava/lang/String;)V

    .line 378
    :cond_0
    iget-object v0, p0, Landroidx/collection/FloatList;->content:[F

    .line 70
    iget v1, p0, Landroidx/collection/FloatList;->_size:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    const/16 v6, 0x19

    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 536
    const-string v2, "["

    const-string v3, "]"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Landroidx/collection/FloatList;->joinToString$default(Landroidx/collection/FloatList;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
