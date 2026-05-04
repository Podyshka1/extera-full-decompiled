.class public abstract Lj$/util/stream/w3;
.super Lj$/util/stream/y3;
.source "SourceFile"

# interfaces
.implements Lj$/util/c0;


# direct methods
.method public constructor <init>(Lj$/util/c0;JJ)V
    .locals 12

    .line 763
    invoke-interface {p1}, Lj$/util/Spliterator;->estimateSize()J

    move-result-wide v0

    move-wide/from16 v6, p4

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    const-wide/16 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    .line 768
    invoke-direct/range {v2 .. v11}, Lj$/util/stream/y3;-><init>(Lj$/util/Spliterator;JJJJ)V

    return-void
.end method


# virtual methods
.method public abstract b()Ljava/lang/Object;
.end method

.method public final forEachRemaining(Ljava/lang/Object;)V
    .locals 6

    .line 792
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    iget-wide v0, p0, Lj$/util/stream/y3;->e:J

    iget-wide v2, p0, Lj$/util/stream/y3;->a:J

    cmp-long v4, v2, v0

    if-ltz v4, :cond_0

    goto :goto_2

    .line 797
    :cond_0
    iget-wide v4, p0, Lj$/util/stream/y3;->d:J

    cmp-long v0, v4, v0

    if-ltz v0, :cond_1

    goto :goto_2

    :cond_1
    cmp-long v0, v4, v2

    if-ltz v0, :cond_2

    .line 800
    iget-object v0, p0, Lj$/util/stream/y3;->c:Lj$/util/Spliterator;

    check-cast v0, Lj$/util/c0;

    invoke-interface {v0}, Lj$/util/Spliterator;->estimateSize()J

    move-result-wide v0

    add-long/2addr v0, v4

    iget-wide v4, p0, Lj$/util/stream/y3;->b:J

    cmp-long v0, v0, v4

    if-gtz v0, :cond_2

    .line 802
    iget-object v0, p0, Lj$/util/stream/y3;->c:Lj$/util/Spliterator;

    check-cast v0, Lj$/util/c0;

    invoke-interface {v0, p1}, Lj$/util/c0;->forEachRemaining(Ljava/lang/Object;)V

    .line 803
    iget-wide v0, p0, Lj$/util/stream/y3;->e:J

    iput-wide v0, p0, Lj$/util/stream/y3;->d:J

    return-void

    .line 806
    :cond_2
    :goto_0
    iget-wide v0, p0, Lj$/util/stream/y3;->d:J

    cmp-long v0, v2, v0

    const-wide/16 v4, 0x1

    if-lez v0, :cond_3

    .line 807
    iget-object v0, p0, Lj$/util/stream/y3;->c:Lj$/util/Spliterator;

    check-cast v0, Lj$/util/c0;

    invoke-virtual {p0}, Lj$/util/stream/w3;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lj$/util/c0;->tryAdvance(Ljava/lang/Object;)Z

    .line 808
    iget-wide v0, p0, Lj$/util/stream/y3;->d:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lj$/util/stream/y3;->d:J

    goto :goto_0

    .line 811
    :cond_3
    :goto_1
    iget-wide v0, p0, Lj$/util/stream/y3;->d:J

    iget-wide v2, p0, Lj$/util/stream/y3;->e:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    .line 812
    iget-object v0, p0, Lj$/util/stream/y3;->c:Lj$/util/Spliterator;

    check-cast v0, Lj$/util/c0;

    invoke-interface {v0, p1}, Lj$/util/c0;->tryAdvance(Ljava/lang/Object;)Z

    .line 811
    iget-wide v0, p0, Lj$/util/stream/y3;->d:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lj$/util/stream/y3;->d:J

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method public bridge synthetic forEachRemaining(Ljava/util/function/DoubleConsumer;)V
    .locals 0

    .line 868
    invoke-virtual {p0, p1}, Lj$/util/stream/w3;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic forEachRemaining(Ljava/util/function/IntConsumer;)V
    .locals 0

    .line 820
    invoke-virtual {p0, p1}, Lj$/util/stream/w3;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic forEachRemaining(Ljava/util/function/LongConsumer;)V
    .locals 0

    .line 844
    invoke-virtual {p0, p1}, Lj$/util/stream/w3;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method public final getComparator()Ljava/util/Comparator;
    .locals 1

    .line 465
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
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

.method public final tryAdvance(Ljava/lang/Object;)Z
    .locals 7

    .line 773
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    iget-wide v0, p0, Lj$/util/stream/y3;->e:J

    iget-wide v2, p0, Lj$/util/stream/y3;->a:J

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    goto :goto_1

    .line 778
    :cond_0
    :goto_0
    iget-wide v0, p0, Lj$/util/stream/y3;->d:J

    cmp-long v4, v2, v0

    const-wide/16 v5, 0x1

    if-lez v4, :cond_1

    .line 779
    iget-object v0, p0, Lj$/util/stream/y3;->c:Lj$/util/Spliterator;

    check-cast v0, Lj$/util/c0;

    invoke-virtual {p0}, Lj$/util/stream/w3;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lj$/util/c0;->tryAdvance(Ljava/lang/Object;)Z

    .line 780
    iget-wide v0, p0, Lj$/util/stream/y3;->d:J

    add-long/2addr v0, v5

    iput-wide v0, p0, Lj$/util/stream/y3;->d:J

    goto :goto_0

    .line 783
    :cond_1
    iget-wide v2, p0, Lj$/util/stream/y3;->e:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    :goto_1
    const/4 p1, 0x0

    return p1

    :cond_2
    add-long/2addr v0, v5

    .line 786
    iput-wide v0, p0, Lj$/util/stream/y3;->d:J

    .line 787
    iget-object v0, p0, Lj$/util/stream/y3;->c:Lj$/util/Spliterator;

    check-cast v0, Lj$/util/c0;

    invoke-interface {v0, p1}, Lj$/util/c0;->tryAdvance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic tryAdvance(Ljava/util/function/DoubleConsumer;)Z
    .locals 0

    .line 868
    invoke-virtual {p0, p1}, Lj$/util/stream/w3;->tryAdvance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic tryAdvance(Ljava/util/function/IntConsumer;)Z
    .locals 0

    .line 820
    invoke-virtual {p0, p1}, Lj$/util/stream/w3;->tryAdvance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic tryAdvance(Ljava/util/function/LongConsumer;)Z
    .locals 0

    .line 844
    invoke-virtual {p0, p1}, Lj$/util/stream/w3;->tryAdvance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
