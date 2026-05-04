.class public final Lj$/util/stream/o3;
.super Lj$/util/stream/f3;
.source "SourceFile"

# interfaces
.implements Lj$/util/U;


# virtual methods
.method public final d()V
    .locals 3

    .line 460
    new-instance v0, Lj$/util/stream/T2;

    .line 980
    invoke-direct {v0}, Lj$/util/stream/Z2;-><init>()V

    .line 461
    iput-object v0, p0, Lj$/util/stream/f3;->h:Lj$/util/stream/d;

    .line 462
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lj$/util/stream/n3;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lj$/util/stream/n3;-><init>(Ljava/util/function/DoubleConsumer;I)V

    iget-object v0, p0, Lj$/util/stream/f3;->b:Lj$/util/stream/b;

    invoke-virtual {v0, v1}, Lj$/util/stream/b;->t0(Lj$/util/stream/p2;)Lj$/util/stream/p2;

    move-result-object v0

    iput-object v0, p0, Lj$/util/stream/f3;->e:Lj$/util/stream/p2;

    .line 463
    new-instance v0, Lj$/time/s;

    const/16 v1, 0xb

    invoke-direct {v0, v1, p0}, Lj$/time/s;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lj$/util/stream/f3;->f:Ljava/util/function/BooleanSupplier;

    return-void
.end method

.method public final e(Lj$/util/Spliterator;)Lj$/util/stream/f3;
    .locals 3

    .line 455
    new-instance v0, Lj$/util/stream/o3;

    iget-object v1, p0, Lj$/util/stream/f3;->b:Lj$/util/stream/b;

    iget-boolean v2, p0, Lj$/util/stream/f3;->a:Z

    .line 450
    invoke-direct {v0, v1, p1, v2}, Lj$/util/stream/f3;-><init>(Lj$/util/stream/b;Lj$/util/Spliterator;Z)V

    return-object v0
.end method

.method public final bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 437
    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Lj$/util/stream/o3;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    return-void
.end method

.method public final synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->j(Lj$/util/U;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final forEachRemaining(Ljava/util/function/DoubleConsumer;)V
    .locals 2

    .line 482
    iget-object v0, p0, Lj$/util/stream/f3;->h:Lj$/util/stream/d;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lj$/util/stream/f3;->i:Z

    if-nez v0, :cond_0

    .line 483
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    invoke-virtual {p0}, Lj$/util/stream/f3;->c()V

    .line 486
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/stream/n3;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lj$/util/stream/n3;-><init>(Ljava/util/function/DoubleConsumer;I)V

    iget-object p1, p0, Lj$/util/stream/f3;->d:Lj$/util/Spliterator;

    iget-object v1, p0, Lj$/util/stream/f3;->b:Lj$/util/stream/b;

    invoke-virtual {v1, p1, v0}, Lj$/util/stream/b;->s0(Lj$/util/Spliterator;Lj$/util/stream/p2;)Lj$/util/stream/p2;

    const/4 p1, 0x1

    .line 487
    iput-boolean p1, p0, Lj$/util/stream/f3;->i:Z

    return-void

    .line 490
    :cond_0
    invoke-virtual {p0, p1}, Lj$/util/stream/o3;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method public final bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 437
    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Lj$/util/stream/o3;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result p1

    return p1
.end method

.method public final synthetic tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->z(Lj$/util/U;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public final tryAdvance(Ljava/util/function/DoubleConsumer;)Z
    .locals 8

    .line 473
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    invoke-virtual {p0}, Lj$/util/stream/f3;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 476
    iget-object v1, p0, Lj$/util/stream/f3;->h:Lj$/util/stream/d;

    check-cast v1, Lj$/util/stream/T2;

    iget-wide v2, p0, Lj$/util/stream/f3;->g:J

    .line 1030
    invoke-virtual {v1, v2, v3}, Lj$/util/stream/Z2;->k(J)I

    move-result v4

    .line 1031
    iget v5, v1, Lj$/util/stream/d;->c:I

    if-nez v5, :cond_0

    if-nez v4, :cond_0

    .line 1032
    iget-object v1, v1, Lj$/util/stream/Z2;->e:Ljava/lang/Object;

    check-cast v1, [D

    long-to-int v2, v2

    aget-wide v2, v1, v2

    goto :goto_0

    .line 1034
    :cond_0
    iget-object v5, v1, Lj$/util/stream/Z2;->f:[Ljava/lang/Object;

    check-cast v5, [[D

    aget-object v5, v5, v4

    iget-object v1, v1, Lj$/util/stream/d;->d:[J

    aget-wide v6, v1, v4

    sub-long/2addr v2, v6

    long-to-int v1, v2

    aget-wide v2, v5, v1

    .line 476
    :goto_0
    invoke-interface {p1, v2, v3}, Ljava/util/function/DoubleConsumer;->accept(D)V

    :cond_1
    return v0
.end method

.method public final trySplit()Lj$/util/Spliterator;
    .locals 1

    .line 468
    invoke-super {p0}, Lj$/util/stream/f3;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Lj$/util/U;

    return-object v0
.end method

.method public final trySplit()Lj$/util/U;
    .locals 1

    .line 468
    invoke-super {p0}, Lj$/util/stream/f3;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Lj$/util/U;

    return-object v0
.end method

.method public final trySplit()Lj$/util/c0;
    .locals 1

    .line 468
    invoke-super {p0}, Lj$/util/stream/f3;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Lj$/util/U;

    return-object v0
.end method
