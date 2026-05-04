.class public abstract Lj$/util/stream/b1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/I0;


# virtual methods
.method public a(I)Lj$/util/stream/I0;
    .locals 0

    .line 104
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final c(ILjava/lang/Object;)V
    .locals 0

    .line 573
    return-void
.end method

.method public final count()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public synthetic e(JJLjava/util/function/IntFunction;)Lj$/util/stream/I0;
    .locals 0

    invoke-static/range {p0 .. p5}, Lj$/util/stream/y1;->S(Lj$/util/stream/I0;JJLjava/util/function/IntFunction;)Lj$/util/stream/I0;

    move-result-object p1

    return-object p1
.end method

.method public final g(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 570
    invoke-interface {p1, v0}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    return-object p1
.end method

.method public final synthetic h()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
