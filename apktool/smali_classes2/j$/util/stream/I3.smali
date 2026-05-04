.class public abstract Lj$/util/stream/I3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lj$/util/Spliterator$OfInt;)Lj$/util/stream/Z;
    .locals 3

    .line 138
    new-instance v0, Lj$/util/stream/Z;

    .line 139
    invoke-static {p0}, Lj$/util/stream/d3;->j(Lj$/util/Spliterator;)I

    move-result v1

    const/4 v2, 0x0

    .line 80
    invoke-direct {v0, p0, v1, v2}, Lj$/util/stream/b;-><init>(Lj$/util/Spliterator;IZ)V

    return-object v0
.end method

.method public static b(Lj$/util/Spliterator;Z)Lj$/util/stream/e2;
    .locals 2

    .line 68
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    new-instance v0, Lj$/util/stream/e2;

    .line 70
    invoke-static {p0}, Lj$/util/stream/d3;->j(Lj$/util/Spliterator;)I

    move-result v1

    .line 84
    invoke-direct {v0, p0, v1, p1}, Lj$/util/stream/b;-><init>(Lj$/util/Spliterator;IZ)V

    return-object v0
.end method
