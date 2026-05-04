.class public final synthetic Lj$/util/DesugarArrays;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a([Ljava/lang/Object;II)Lj$/util/i0;
    .locals 2

    .line 177
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    invoke-static {v0, p1, p2}, Lj$/util/Spliterators;->a(III)V

    .line 178
    new-instance v0, Lj$/util/i0;

    const/16 v1, 0x410

    invoke-direct {v0, p0, p1, p2, v1}, Lj$/util/i0;-><init>([Ljava/lang/Object;III)V

    return-object v0
.end method

.method public static b([JII)Lj$/util/q0;
    .locals 2

    .line 305
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    array-length v0, v0

    invoke-static {v0, p1, p2}, Lj$/util/Spliterators;->a(III)V

    .line 306
    new-instance v0, Lj$/util/q0;

    const/16 v1, 0x410

    invoke-direct {v0, p0, p1, p2, v1}, Lj$/util/q0;-><init>([JIII)V

    return-object v0
.end method

.method public static stream([I)Lj$/util/stream/IntStream;
    .locals 3

    .line 5671
    array-length v0, p0

    const/16 v1, 0x410

    const/4 v2, 0x0

    .line 5540
    invoke-static {p0, v2, v0, v1}, Lj$/util/Spliterators;->spliterator([IIII)Lj$/util/Spliterator$OfInt;

    move-result-object p0

    .line 5690
    invoke-static {p0}, Lj$/util/stream/I3;->a(Lj$/util/Spliterator$OfInt;)Lj$/util/stream/Z;

    move-result-object p0

    return-object p0
.end method

.method public static stream([J)Lj$/util/stream/LongStream;
    .locals 3

    .line 5703
    array-length v0, p0

    const/4 v1, 0x0

    .line 5722
    invoke-static {p0, v1, v0}, Lj$/util/DesugarArrays;->b([JII)Lj$/util/q0;

    move-result-object p0

    .line 206
    new-instance v0, Lj$/util/stream/i0;

    .line 207
    invoke-static {p0}, Lj$/util/stream/d3;->j(Lj$/util/Spliterator;)I

    move-result v2

    .line 81
    invoke-direct {v0, p0, v2, v1}, Lj$/util/stream/b;-><init>(Lj$/util/Spliterator;IZ)V

    return-object v0
.end method

.method public static stream([Ljava/lang/Object;)Lj$/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lj$/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 5638
    array-length v0, p0

    const/4 v1, 0x0

    .line 5658
    invoke-static {p0, v1, v0}, Lj$/util/DesugarArrays;->a([Ljava/lang/Object;II)Lj$/util/i0;

    move-result-object p0

    invoke-static {p0, v1}, Lj$/util/stream/I3;->b(Lj$/util/Spliterator;Z)Lj$/util/stream/e2;

    move-result-object p0

    return-object p0
.end method
