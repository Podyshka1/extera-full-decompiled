.class public final synthetic Lj$/util/stream/IntStream$-CC;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static range(II)Lj$/util/stream/IntStream;
    .locals 1

    if-lt p0, p1, :cond_0

    .line 860
    sget-object p0, Lj$/util/Spliterators;->b:Lj$/util/l0;

    invoke-static {p0}, Lj$/util/stream/I3;->a(Lj$/util/Spliterator$OfInt;)Lj$/util/stream/Z;

    move-result-object p0

    return-object p0

    .line 1045
    :cond_0
    new-instance v0, Lj$/util/stream/L3;

    .line 65
    invoke-direct {v0, p0, p1}, Lj$/util/stream/L3;-><init>(II)V

    .line 1045
    invoke-static {v0}, Lj$/util/stream/I3;->a(Lj$/util/Spliterator$OfInt;)Lj$/util/stream/Z;

    move-result-object p0

    return-object p0
.end method
