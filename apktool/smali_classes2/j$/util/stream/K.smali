.class public abstract Lj$/util/stream/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/N3;


# instance fields
.field public a:Z

.field public b:Ljava/lang/Object;


# virtual methods
.method public bridge synthetic A(Ljava/lang/Double;)V
    .locals 0

    .line 251
    invoke-virtual {p0, p1}, Lj$/util/stream/K;->accept(Ljava/lang/Object;)V

    return-void
.end method

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

.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 179
    iget-boolean v0, p0, Lj$/util/stream/K;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 180
    iput-boolean v0, p0, Lj$/util/stream/K;->a:Z

    .line 181
    iput-object p1, p0, Lj$/util/stream/K;->b:Ljava/lang/Object;

    :cond_0
    return-void
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

.method public final synthetic m(J)V
    .locals 0

    return-void
.end method

.method public bridge synthetic n(Ljava/lang/Integer;)V
    .locals 0

    .line 207
    invoke-virtual {p0, p1}, Lj$/util/stream/K;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final p()Z
    .locals 1

    .line 187
    iget-boolean v0, p0, Lj$/util/stream/K;->a:Z

    return v0
.end method

.method public bridge synthetic v(Ljava/lang/Long;)V
    .locals 0

    .line 229
    invoke-virtual {p0, p1}, Lj$/util/stream/K;->accept(Ljava/lang/Object;)V

    return-void
.end method
