.class public final Lj$/util/stream/L3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/Spliterator$OfInt;


# instance fields
.field public a:I

.field public final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput p1, p0, Lj$/util/stream/L3;->a:I

    .line 70
    iput p2, p0, Lj$/util/stream/L3;->b:I

    return-void
.end method


# virtual methods
.method public final characteristics()I
    .locals 1

    const/16 v0, 0x4555

    return v0
.end method

.method public final estimateSize()J
    .locals 4

    .line 113
    iget v0, p0, Lj$/util/stream/L3;->b:I

    int-to-long v0, v0

    iget v2, p0, Lj$/util/stream/L3;->a:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    const/4 v2, 0x0

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 53
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Lj$/util/stream/L3;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public final synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->k(Lj$/util/Spliterator$OfInt;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final forEachRemaining(Ljava/util/function/IntConsumer;)V
    .locals 3

    .line 94
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget v0, p0, Lj$/util/stream/L3;->a:I

    .line 99
    iget v1, p0, Lj$/util/stream/L3;->b:I

    iput v1, p0, Lj$/util/stream/L3;->a:I

    :goto_0
    if-ge v0, v1, :cond_0

    add-int/lit8 v2, v0, 0x1

    .line 102
    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    move v0, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getComparator()Ljava/util/Comparator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic getExactSizeIfKnown()J
    .locals 2

    invoke-static {p0}, Lj$/com/android/tools/r8/a;->o(Lj$/util/Spliterator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final synthetic hasCharacteristics(I)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->q(Lj$/util/Spliterator;I)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 53
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Lj$/util/stream/L3;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result p1

    return p1
.end method

.method public final synthetic tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->A(Lj$/util/Spliterator$OfInt;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public final tryAdvance(Ljava/util/function/IntConsumer;)Z
    .locals 2

    .line 76
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget v0, p0, Lj$/util/stream/L3;->a:I

    .line 79
    iget v1, p0, Lj$/util/stream/L3;->b:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 80
    iput v1, p0, Lj$/util/stream/L3;->a:I

    .line 81
    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final trySplit()Lj$/util/Spliterator$OfInt;
    .locals 6

    .line 130
    invoke-virtual {p0}, Lj$/util/stream/L3;->estimateSize()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 134
    :cond_0
    new-instance v2, Lj$/util/stream/L3;

    iget v3, p0, Lj$/util/stream/L3;->a:I

    const-wide/32 v4, 0x1000000

    cmp-long v4, v0, v4

    if-gez v4, :cond_1

    const/4 v4, 0x2

    goto :goto_0

    :cond_1
    const/16 v4, 0x8

    :goto_0
    int-to-long v4, v4

    .line 166
    div-long/2addr v0, v4

    long-to-int v0, v0

    add-int/2addr v0, v3

    .line 134
    iput v0, p0, Lj$/util/stream/L3;->a:I

    invoke-direct {v2, v3, v0}, Lj$/util/stream/L3;-><init>(II)V

    return-object v2
.end method

.method public final bridge synthetic trySplit()Lj$/util/Spliterator;
    .locals 1

    .line 53
    invoke-virtual {p0}, Lj$/util/stream/L3;->trySplit()Lj$/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic trySplit()Lj$/util/c0;
    .locals 1

    .line 53
    invoke-virtual {p0}, Lj$/util/stream/L3;->trySplit()Lj$/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method
