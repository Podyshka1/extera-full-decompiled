.class public abstract Lj$/util/stream/Z1;
.super Lj$/util/stream/U1;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/T1;


# instance fields
.field public b:J


# virtual methods
.method public synthetic accept(D)V
    .locals 0

    invoke-static {}, Lj$/util/stream/y1;->z()V

    const/4 p1, 0x0

    throw p1
.end method

.method public synthetic accept(I)V
    .locals 0

    invoke-static {}, Lj$/util/stream/y1;->G()V

    const/4 p1, 0x0

    throw p1
.end method

.method public synthetic accept(J)V
    .locals 0

    invoke-static {}, Lj$/util/stream/y1;->H()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic end()V
    .locals 0

    return-void
.end method

.method public final m(J)V
    .locals 0

    const-wide/16 p1, 0x0

    .line 807
    iput-wide p1, p0, Lj$/util/stream/Z1;->b:J

    return-void
.end method

.method public final synthetic p()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
