.class public final Lj$/util/stream/V1;
.super Lj$/util/stream/Z1;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/m2;


# virtual methods
.method public final synthetic A(Ljava/lang/Double;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/y1;->A(Lj$/util/stream/m2;Ljava/lang/Double;)V

    return-void
.end method

.method public final accept(D)V
    .locals 2

    .line 844
    iget-wide p1, p0, Lj$/util/stream/Z1;->b:J

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    iput-wide p1, p0, Lj$/util/stream/Z1;->b:J

    return-void
.end method

.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/y1;->B(Lj$/util/stream/m2;Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic andThen(Ljava/util/function/DoubleConsumer;)Ljava/util/function/DoubleConsumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->b(Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleConsumer;)Lj$/util/function/b;

    move-result-object p1

    return-object p1
.end method

.method public final get()Ljava/lang/Object;
    .locals 2

    .line 812
    iget-wide v0, p0, Lj$/util/stream/Z1;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final t(Lj$/util/stream/T1;)V
    .locals 4

    .line 841
    check-cast p1, Lj$/util/stream/Z1;

    .line 817
    iget-wide v0, p0, Lj$/util/stream/Z1;->b:J

    iget-wide v2, p1, Lj$/util/stream/Z1;->b:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lj$/util/stream/Z1;->b:J

    return-void
.end method
