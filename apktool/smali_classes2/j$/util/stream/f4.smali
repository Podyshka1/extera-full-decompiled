.class public final Lj$/util/stream/f4;
.super Lj$/util/stream/g4;
.source "SourceFile"


# virtual methods
.method public final b(Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 1

    .line 843
    check-cast p1, Lj$/util/Spliterator$OfInt;

    .line 881
    new-instance v0, Lj$/util/stream/f4;

    .line 849
    invoke-direct {v0, p1, p0}, Lj$/util/stream/g4;-><init>(Lj$/util/Spliterator$OfInt;Lj$/util/stream/g4;)V

    return-object v0
.end method

.method public final tryAdvance(Ljava/util/function/IntConsumer;)Z
    .locals 3

    .line 855
    iget-boolean v0, p0, Lj$/util/stream/j4;->c:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 856
    invoke-virtual {p0}, Lj$/util/stream/j4;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/util/stream/j4;->a:Lj$/util/Spliterator;

    check-cast v0, Lj$/util/Spliterator$OfInt;

    .line 857
    invoke-interface {v0, p0}, Lj$/util/Spliterator$OfInt;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/util/stream/g4;->e:Ljava/util/function/IntPredicate;

    iget v2, p0, Lj$/util/stream/g4;->f:I

    .line 858
    invoke-interface {v0, v2}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 859
    iget v0, p0, Lj$/util/stream/g4;->f:I

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    return v1

    :cond_0
    move v0, v1

    :cond_1
    const/4 p1, 0x0

    .line 864
    iput-boolean p1, p0, Lj$/util/stream/j4;->c:Z

    if-nez v0, :cond_2

    .line 868
    iget-object v0, p0, Lj$/util/stream/j4;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_2
    return p1
.end method

.method public final trySplit()Lj$/util/Spliterator$OfInt;
    .locals 1

    .line 876
    iget-object v0, p0, Lj$/util/stream/j4;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-super {p0}, Lj$/util/stream/j4;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Lj$/util/Spliterator$OfInt;

    return-object v0
.end method

.method public final bridge synthetic trySplit()Lj$/util/Spliterator;
    .locals 1

    .line 843
    invoke-virtual {p0}, Lj$/util/stream/f4;->trySplit()Lj$/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic trySplit()Lj$/util/c0;
    .locals 1

    .line 843
    invoke-virtual {p0}, Lj$/util/stream/f4;->trySplit()Lj$/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method
