.class public final Lj$/util/stream/W0;
.super Lj$/util/stream/T2;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/C0;
.implements Lj$/util/stream/x0;


# virtual methods
.method public final synthetic A(Ljava/lang/Double;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/y1;->A(Lj$/util/stream/m2;Ljava/lang/Double;)V

    return-void
.end method

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
    invoke-virtual {p0, p1}, Lj$/util/stream/W0;->a(I)Lj$/util/stream/H0;

    const/4 p1, 0x0

    throw p1
.end method

.method public final synthetic accept(I)V
    .locals 0

    invoke-static {}, Lj$/util/stream/y1;->G()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final synthetic accept(J)V
    .locals 0

    invoke-static {}, Lj$/util/stream/y1;->H()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/y1;->B(Lj$/util/stream/m2;Ljava/lang/Object;)V

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

    .line 1816
    invoke-super {p0}, Lj$/util/stream/Z2;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public final build()Lj$/util/stream/C0;
    .locals 0

    return-object p0
.end method

.method public final build()Lj$/util/stream/I0;
    .locals 0

    return-object p0
.end method

.method public final c(ILjava/lang/Object;)V
    .locals 0

    .line 1766
    check-cast p2, [D

    .line 1810
    invoke-super {p0, p1, p2}, Lj$/util/stream/Z2;->c(ILjava/lang/Object;)V

    return-void
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 0

    .line 1766
    check-cast p1, Ljava/util/function/DoubleConsumer;

    .line 1782
    invoke-super {p0, p1}, Lj$/util/stream/Z2;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic e(JJLjava/util/function/IntFunction;)Lj$/util/stream/I0;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lj$/util/stream/y1;->P(Lj$/util/stream/C0;JJ)Lj$/util/stream/C0;

    move-result-object p1

    return-object p1
.end method

.method public final end()V
    .locals 0

    return-void
.end method

.method public final synthetic f([Ljava/lang/Object;I)V
    .locals 0

    .line 471
    check-cast p1, [Ljava/lang/Double;

    .line 0
    invoke-static {p0, p1, p2}, Lj$/util/stream/y1;->J(Lj$/util/stream/C0;[Ljava/lang/Double;I)V

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

    .line 1790
    invoke-virtual {p0}, Lj$/util/stream/Z2;->clear()V

    .line 1791
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

    .line 1776
    invoke-super {p0}, Lj$/util/stream/T2;->r()Lj$/util/U;

    move-result-object v0

    return-object v0
.end method

.method public final spliterator()Lj$/util/c0;
    .locals 1

    .line 1776
    invoke-super {p0}, Lj$/util/stream/T2;->r()Lj$/util/U;

    move-result-object v0

    return-object v0
.end method
