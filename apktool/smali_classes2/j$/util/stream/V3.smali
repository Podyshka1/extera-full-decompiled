.class public final Lj$/util/stream/V3;
.super Lj$/util/stream/k2;
.source "SourceFile"


# instance fields
.field public final b:Z


# direct methods
.method public constructor <init>(Lj$/util/stream/K2;Lj$/util/stream/p2;)V
    .locals 0

    .line 202
    invoke-direct {p0, p2}, Lj$/util/stream/k2;-><init>(Lj$/util/stream/p2;)V

    const/4 p1, 0x1

    .line 203
    iput-boolean p1, p0, Lj$/util/stream/V3;->b:Z

    return-void
.end method


# virtual methods
.method public final accept(J)V
    .locals 1

    .line 212
    iget-boolean v0, p0, Lj$/util/stream/V3;->b:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-interface {v0, p1, p2}, Ljava/util/function/LongPredicate;->test(J)Z

    throw v0
.end method

.method public final m(J)V
    .locals 2

    .line 207
    iget-object p1, p0, Lj$/util/stream/k2;->a:Lj$/util/stream/p2;

    const-wide/16 v0, -0x1

    invoke-interface {p1, v0, v1}, Lj$/util/stream/p2;->m(J)V

    return-void
.end method

.method public final p()Z
    .locals 1

    .line 219
    iget-boolean v0, p0, Lj$/util/stream/V3;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lj$/util/stream/k2;->a:Lj$/util/stream/p2;

    invoke-interface {v0}, Lj$/util/stream/p2;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
