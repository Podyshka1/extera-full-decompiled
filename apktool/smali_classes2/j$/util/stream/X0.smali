.class public final Lj$/util/stream/X0;
.super Lj$/util/stream/b1;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/C0;


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
    invoke-virtual {p0, p1}, Lj$/util/stream/X0;->a(I)Lj$/util/stream/H0;

    const/4 p1, 0x0

    throw p1
.end method

.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 1

    .line 627
    sget-object v0, Lj$/util/stream/y1;->g:[D

    return-object v0
.end method

.method public final synthetic e(JJLjava/util/function/IntFunction;)Lj$/util/stream/I0;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lj$/util/stream/y1;->P(Lj$/util/stream/C0;JJ)Lj$/util/stream/C0;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic f([Ljava/lang/Object;I)V
    .locals 0

    .line 471
    check-cast p1, [Ljava/lang/Double;

    .line 0
    invoke-static {p0, p1, p2}, Lj$/util/stream/y1;->J(Lj$/util/stream/C0;[Ljava/lang/Double;I)V

    return-void
.end method

.method public final synthetic forEach(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/y1;->M(Lj$/util/stream/C0;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final bridge synthetic spliterator()Lj$/util/Spliterator;
    .locals 1

    .line 627
    sget-object v0, Lj$/util/Spliterators;->d:Lj$/util/k0;

    return-object v0
.end method

.method public final bridge synthetic spliterator()Lj$/util/c0;
    .locals 1

    .line 627
    sget-object v0, Lj$/util/Spliterators;->d:Lj$/util/k0;

    return-object v0
.end method
