.class public abstract Lj$/util/stream/A2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(JJJ)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    const-wide/16 v1, -0x1

    if-ltz v0, :cond_0

    sub-long/2addr p0, p2

    .line 53
    invoke-static {p0, p1, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    invoke-static {v1, v2, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0

    :cond_0
    return-wide v1
.end method

.method public static b(Lj$/util/stream/e3;Lj$/util/Spliterator;JJ)Lj$/util/Spliterator;
    .locals 2

    .line 80
    invoke-static {p2, p3, p4, p5}, Lj$/util/stream/A2;->c(JJ)J

    move-result-wide p4

    .line 81
    sget-object v0, Lj$/util/stream/y2;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 92
    new-instance p0, Lj$/util/stream/t3;

    check-cast p1, Lj$/util/U;

    .line 871
    invoke-direct/range {p0 .. p5}, Lj$/util/stream/w3;-><init>(Lj$/util/c0;JJ)V

    return-object p0

    .line 95
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unknown shape "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 89
    :cond_1
    new-instance p0, Lj$/util/stream/v3;

    check-cast p1, Lj$/util/Z;

    .line 847
    invoke-direct/range {p0 .. p5}, Lj$/util/stream/w3;-><init>(Lj$/util/c0;JJ)V

    return-object p0

    .line 86
    :cond_2
    new-instance p0, Lj$/util/stream/u3;

    check-cast p1, Lj$/util/Spliterator$OfInt;

    .line 823
    invoke-direct/range {p0 .. p5}, Lj$/util/stream/w3;-><init>(Lj$/util/c0;JJ)V

    return-object p0

    .line 83
    :cond_3
    new-instance p0, Lj$/util/stream/x3;

    invoke-direct/range {p0 .. p5}, Lj$/util/stream/x3;-><init>(Lj$/util/Spliterator;JJ)V

    return-object p0
.end method

.method public static c(JJ)J
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    const-wide v3, 0x7fffffffffffffffL

    if-ltz v2, :cond_0

    add-long/2addr p0, p2

    goto :goto_0

    :cond_0
    move-wide p0, v3

    :goto_0
    cmp-long p2, p0, v0

    if-ltz p2, :cond_1

    return-wide p0

    :cond_1
    return-wide v3
.end method

.method public static d(J)I
    .locals 3

    .line 544
    sget v0, Lj$/util/stream/d3;->t:I

    const-wide/16 v1, -0x1

    cmp-long p0, p0, v1

    if-eqz p0, :cond_0

    sget p0, Lj$/util/stream/d3;->u:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    or-int/2addr p0, v0

    return p0
.end method

.method public static e(Lj$/util/stream/B;JJ)Lj$/util/stream/x2;
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 448
    new-instance v1, Lj$/util/stream/x2;

    .line 449
    invoke-static {p3, p4}, Lj$/util/stream/A2;->d(J)I

    move-result v3

    move-object v2, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lj$/util/stream/x2;-><init>(Lj$/util/stream/B;IJJ)V

    return-object v1

    :cond_0
    move-wide v4, p1

    .line 446
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Skip must be non-negative: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static f(Lj$/util/stream/c0;JJ)Lj$/util/stream/t2;
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 230
    new-instance v1, Lj$/util/stream/t2;

    .line 231
    invoke-static {p3, p4}, Lj$/util/stream/A2;->d(J)I

    move-result v3

    move-object v2, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lj$/util/stream/t2;-><init>(Lj$/util/stream/c0;IJJ)V

    return-object v1

    :cond_0
    move-wide v4, p1

    .line 228
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Skip must be non-negative: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static g(Lj$/util/stream/l0;JJ)Lj$/util/stream/v2;
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 339
    new-instance v1, Lj$/util/stream/v2;

    .line 340
    invoke-static {p3, p4}, Lj$/util/stream/A2;->d(J)I

    move-result v3

    move-object v2, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lj$/util/stream/v2;-><init>(Lj$/util/stream/l0;IJJ)V

    return-object v1

    :cond_0
    move-wide v4, p1

    .line 337
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Skip must be non-negative: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static h(Lj$/util/stream/h2;JJ)Lj$/util/stream/r2;
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 114
    new-instance v1, Lj$/util/stream/r2;

    .line 115
    invoke-static {p3, p4}, Lj$/util/stream/A2;->d(J)I

    move-result v3

    move-object v2, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lj$/util/stream/r2;-><init>(Lj$/util/stream/h2;IJJ)V

    return-object v1

    :cond_0
    move-wide v4, p1

    .line 112
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Skip must be non-negative: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
