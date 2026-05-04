.class public final Lj$/util/stream/o1;
.super Lj$/util/stream/X2;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/G0;
.implements Lj$/util/stream/z0;


# virtual methods
.method public final a(I)Lj$/util/stream/H0;
    .locals 0

    .line 253
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final bridge synthetic a(I)Lj$/util/stream/I0;
    .locals 0

    .line 227
    invoke-virtual {p0, p1}, Lj$/util/stream/o1;->a(I)Lj$/util/stream/H0;

    const/4 p1, 0x0

    throw p1
.end method

.method public final synthetic accept(D)V
    .locals 0

    invoke-static {}, Lj$/util/stream/y1;->z()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final synthetic accept(I)V
    .locals 0

    invoke-static {}, Lj$/util/stream/y1;->G()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/y1;->F(Lj$/util/stream/o2;Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    .line 1756
    invoke-super {p0}, Lj$/util/stream/Z2;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

.method public final build()Lj$/util/stream/G0;
    .locals 0

    return-object p0
.end method

.method public final build()Lj$/util/stream/I0;
    .locals 0

    return-object p0
.end method

.method public final c(ILjava/lang/Object;)V
    .locals 0

    .line 1706
    check-cast p2, [J

    .line 1750
    invoke-super {p0, p1, p2}, Lj$/util/stream/Z2;->c(ILjava/lang/Object;)V

    return-void
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 0

    .line 1706
    check-cast p1, Ljava/util/function/LongConsumer;

    .line 1722
    invoke-super {p0, p1}, Lj$/util/stream/Z2;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic e(JJLjava/util/function/IntFunction;)Lj$/util/stream/I0;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lj$/util/stream/y1;->R(Lj$/util/stream/G0;JJ)Lj$/util/stream/G0;

    move-result-object p1

    return-object p1
.end method

.method public final end()V
    .locals 0

    return-void
.end method

.method public final synthetic f([Ljava/lang/Object;I)V
    .locals 0

    .line 394
    check-cast p1, [Ljava/lang/Long;

    .line 0
    invoke-static {p0, p1, p2}, Lj$/util/stream/y1;->L(Lj$/util/stream/G0;[Ljava/lang/Long;I)V

    return-void
.end method

.method public final synthetic g(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/y1;->I(Lj$/util/stream/H0;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic h()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final m(J)V
    .locals 0

    .line 1730
    invoke-virtual {p0}, Lj$/util/stream/Z2;->clear()V

    .line 1731
    invoke-virtual {p0, p1, p2}, Lj$/util/stream/Z2;->l(J)V

    return-void
.end method

.method public final synthetic p()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final spliterator()Lj$/util/Spliterator;
    .locals 1

    .line 1716
    invoke-super {p0}, Lj$/util/stream/X2;->r()Lj$/util/Z;

    move-result-object v0

    return-object v0
.end method

.method public final spliterator()Lj$/util/c0;
    .locals 1

    .line 1716
    invoke-super {p0}, Lj$/util/stream/X2;->r()Lj$/util/Z;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic v(Ljava/lang/Long;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/y1;->E(Lj$/util/stream/o2;Ljava/lang/Long;)V

    return-void
.end method
