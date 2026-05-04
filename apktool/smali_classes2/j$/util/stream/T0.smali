.class public final Lj$/util/stream/T0;
.super Lj$/util/stream/K0;
.source "SourceFile"


# virtual methods
.method public final e(JJLjava/util/function/IntFunction;)Lj$/util/stream/I0;
    .locals 12

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 782
    iget-wide v0, p0, Lj$/util/stream/K0;->c:J

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    return-object p0

    .line 828
    :cond_0
    iget-object v0, p0, Lj$/util/stream/K0;->a:Lj$/util/stream/I0;

    invoke-interface {v0}, Lj$/util/stream/I0;->count()J

    move-result-wide v4

    cmp-long v0, p1, v4

    if-ltz v0, :cond_1

    sub-long v7, p1, v4

    sub-long v9, p3, v4

    .line 830
    iget-object v6, p0, Lj$/util/stream/K0;->b:Lj$/util/stream/I0;

    move-object/from16 v11, p5

    invoke-interface/range {v6 .. v11}, Lj$/util/stream/I0;->e(JJLjava/util/function/IntFunction;)Lj$/util/stream/I0;

    move-result-object p1

    return-object p1

    :cond_1
    cmp-long v0, p3, v4

    if-gtz v0, :cond_2

    .line 832
    iget-object v0, p0, Lj$/util/stream/K0;->a:Lj$/util/stream/I0;

    move-wide v1, p1

    move-wide v3, p3

    move-object/from16 v5, p5

    invoke-interface/range {v0 .. v5}, Lj$/util/stream/I0;->e(JJLjava/util/function/IntFunction;)Lj$/util/stream/I0;

    move-result-object p1

    return-object p1

    .line 178
    :cond_2
    sget-object v7, Lj$/util/stream/e3;->REFERENCE:Lj$/util/stream/e3;

    .line 834
    iget-object v1, p0, Lj$/util/stream/K0;->a:Lj$/util/stream/I0;

    move-wide v2, p1

    move-object/from16 v6, p5

    invoke-interface/range {v1 .. v6}, Lj$/util/stream/I0;->e(JJLjava/util/function/IntFunction;)Lj$/util/stream/I0;

    move-result-object p1

    const-wide/16 v1, 0x0

    sub-long v4, p3, v4

    .line 835
    iget-object v0, p0, Lj$/util/stream/K0;->b:Lj$/util/stream/I0;

    move-wide v3, v4

    move-object/from16 v5, p5

    invoke-interface/range {v0 .. v5}, Lj$/util/stream/I0;->e(JJLjava/util/function/IntFunction;)Lj$/util/stream/I0;

    move-result-object p2

    .line 834
    invoke-static {v7, p1, p2}, Lj$/util/stream/y1;->Y(Lj$/util/stream/e3;Lj$/util/stream/I0;Lj$/util/stream/I0;)Lj$/util/stream/K0;

    move-result-object p1

    return-object p1
.end method

.method public final f([Ljava/lang/Object;I)V
    .locals 2

    .line 801
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    iget-object v0, p0, Lj$/util/stream/K0;->a:Lj$/util/stream/I0;

    invoke-interface {v0, p1, p2}, Lj$/util/stream/I0;->f([Ljava/lang/Object;I)V

    .line 805
    invoke-interface {v0}, Lj$/util/stream/I0;->count()J

    move-result-wide v0

    long-to-int v0, v0

    add-int/2addr p2, v0

    iget-object v0, p0, Lj$/util/stream/K0;->b:Lj$/util/stream/I0;

    invoke-interface {v0, p1, p2}, Lj$/util/stream/I0;->f([Ljava/lang/Object;I)V

    return-void
.end method

.method public final forEach(Ljava/util/function/Consumer;)V
    .locals 1

    .line 820
    iget-object v0, p0, Lj$/util/stream/K0;->a:Lj$/util/stream/I0;

    invoke-interface {v0, p1}, Lj$/util/stream/I0;->forEach(Ljava/util/function/Consumer;)V

    .line 821
    iget-object v0, p0, Lj$/util/stream/K0;->b:Lj$/util/stream/I0;

    invoke-interface {v0, p1}, Lj$/util/stream/I0;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final g(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 4

    const-wide/32 v0, 0x7ffffff7

    .line 811
    iget-wide v2, p0, Lj$/util/stream/K0;->c:J

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    long-to-int v0, v2

    .line 813
    invoke-interface {p1, v0}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 814
    invoke-virtual {p0, p1, v0}, Lj$/util/stream/T0;->f([Ljava/lang/Object;I)V

    return-object p1

    .line 812
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Stream size exceeds max array size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final spliterator()Lj$/util/Spliterator;
    .locals 1

    .line 796
    new-instance v0, Lj$/util/stream/k1;

    .line 1070
    invoke-direct {v0, p0}, Lj$/util/stream/l1;-><init>(Lj$/util/stream/I0;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-wide/16 v0, 0x20

    .line 841
    iget-wide v2, p0, Lj$/util/stream/K0;->c:J

    cmp-long v0, v2, v0

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-gez v0, :cond_0

    const/4 v0, 0x2

    .line 842
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lj$/util/stream/K0;->a:Lj$/util/stream/I0;

    aput-object v2, v0, v4

    iget-object v2, p0, Lj$/util/stream/K0;->b:Lj$/util/stream/I0;

    aput-object v2, v0, v1

    const-string v1, "ConcNode[%s.%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 844
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v4

    const-string v0, "ConcNode[size=%d]"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
