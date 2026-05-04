.class public final Landroidx/collection/MutableFloatList;
.super Landroidx/collection/FloatList;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 551
    invoke-direct {p0, p1, v0}, Landroidx/collection/FloatList;-><init>(ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public final add(F)Z
    .locals 3

    .line 563
    iget v0, p0, Landroidx/collection/FloatList;->_size:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroidx/collection/MutableFloatList;->ensureCapacity(I)V

    .line 564
    iget-object v0, p0, Landroidx/collection/FloatList;->content:[F

    iget v2, p0, Landroidx/collection/FloatList;->_size:I

    aput p1, v0, v2

    add-int/2addr v2, v1

    .line 565
    iput v2, p0, Landroidx/collection/FloatList;->_size:I

    return v1
.end method

.method public final ensureCapacity(I)V
    .locals 2

    .line 706
    iget-object v0, p0, Landroidx/collection/FloatList;->content:[F

    .line 707
    array-length v1, v0

    if-ge v1, p1, :cond_0

    .line 708
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 709
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    const-string v0, "copyOf(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/collection/FloatList;->content:[F

    :cond_0
    return-void
.end method
