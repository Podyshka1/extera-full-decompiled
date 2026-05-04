.class public final Lj$/util/stream/e4;
.super Lj$/util/stream/g4;
.source "SourceFile"


# virtual methods
.method public final b(Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 1

    .line 885
    check-cast p1, Lj$/util/Spliterator$OfInt;

    .line 923
    new-instance v0, Lj$/util/stream/e4;

    .line 891
    invoke-direct {v0, p1, p0}, Lj$/util/stream/g4;-><init>(Lj$/util/Spliterator$OfInt;Lj$/util/stream/g4;)V

    return-object v0
.end method

.method public final tryAdvance(Ljava/util/function/IntConsumer;)Z
    .locals 6

    .line 896
    iget-boolean v0, p0, Lj$/util/stream/j4;->c:Z

    iget-object v1, p0, Lj$/util/stream/j4;->a:Lj$/util/Spliterator;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 897
    iput-boolean v0, p0, Lj$/util/stream/j4;->c:Z

    .line 900
    :goto_0
    move-object v2, v1

    check-cast v2, Lj$/util/Spliterator$OfInt;

    invoke-interface {v2, p0}, Lj$/util/Spliterator$OfInt;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 901
    invoke-virtual {p0}, Lj$/util/stream/j4;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lj$/util/stream/g4;->e:Ljava/util/function/IntPredicate;

    iget v5, p0, Lj$/util/stream/g4;->f:I

    .line 902
    invoke-interface {v4, v5}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    .line 911
    iget-object v0, p0, Lj$/util/stream/j4;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 912
    :cond_1
    iget v0, p0, Lj$/util/stream/g4;->f:I

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    :cond_2
    return v2

    .line 917
    :cond_3
    check-cast v1, Lj$/util/Spliterator$OfInt;

    invoke-interface {v1, p1}, Lj$/util/Spliterator$OfInt;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result p1

    return p1
.end method
