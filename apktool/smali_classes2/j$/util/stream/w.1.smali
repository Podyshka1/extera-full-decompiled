.class public final Lj$/util/stream/w;
.super Lj$/util/stream/i2;
.source "SourceFile"


# instance fields
.field public b:Z

.field public final c:Lj$/util/D;

.field public final synthetic d:Lj$/util/stream/x;


# direct methods
.method public constructor <init>(Lj$/util/stream/x;Lj$/util/stream/p2;)V
    .locals 1

    .line 266
    iput-object p1, p0, Lj$/util/stream/w;->d:Lj$/util/stream/x;

    invoke-direct {p0, p2}, Lj$/util/stream/i2;-><init>(Lj$/util/stream/p2;)V

    .line 271
    iget-object p1, p0, Lj$/util/stream/i2;->a:Lj$/util/stream/p2;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lj$/util/D;

    const/4 v0, 0x1

    invoke-direct {p2, p1, v0}, Lj$/util/D;-><init>(Ljava/util/function/Consumer;I)V

    iput-object p2, p0, Lj$/util/stream/w;->c:Lj$/util/D;

    return-void
.end method


# virtual methods
.method public final accept(D)V
    .locals 2

    .line 280
    iget-object v0, p0, Lj$/util/stream/w;->d:Lj$/util/stream/x;

    iget-object v0, v0, Lj$/util/stream/x;->t:Ljava/lang/Object;

    check-cast v0, Lj$/time/s;

    invoke-interface {v0, p1, p2}, Ljava/util/function/DoubleFunction;->apply(D)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/stream/E;

    if-eqz p1, :cond_2

    .line 282
    :try_start_0
    iget-boolean p2, p0, Lj$/util/stream/w;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lj$/util/stream/w;->c:Lj$/util/D;

    if-nez p2, :cond_0

    .line 283
    :try_start_1
    invoke-interface {p1}, Lj$/util/stream/E;->sequential()Lj$/util/stream/E;

    move-result-object p2

    invoke-interface {p2, v0}, Lj$/util/stream/E;->forEach(Ljava/util/function/DoubleConsumer;)V

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_0

    .line 286
    :cond_0
    invoke-interface {p1}, Lj$/util/stream/E;->sequential()Lj$/util/stream/E;

    move-result-object p2

    invoke-interface {p2}, Lj$/util/stream/E;->spliterator()Lj$/util/U;

    move-result-object p2

    .line 287
    :cond_1
    iget-object v1, p0, Lj$/util/stream/i2;->a:Lj$/util/stream/p2;

    invoke-interface {v1}, Lj$/util/stream/p2;->p()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p2, v0}, Lj$/util/U;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    goto :goto_2

    .line 280
    :goto_0
    :try_start_2
    invoke-interface {p1}, Lj$/util/stream/BaseStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p2

    :cond_2
    :goto_2
    if-eqz p1, :cond_3

    .line 290
    invoke-interface {p1}, Lj$/util/stream/BaseStream;->close()V

    :cond_3
    return-void
.end method

.method public final m(J)V
    .locals 2

    .line 275
    iget-object p1, p0, Lj$/util/stream/i2;->a:Lj$/util/stream/p2;

    const-wide/16 v0, -0x1

    invoke-interface {p1, v0, v1}, Lj$/util/stream/p2;->m(J)V

    return-void
.end method

.method public final p()Z
    .locals 1

    const/4 v0, 0x1

    .line 299
    iput-boolean v0, p0, Lj$/util/stream/w;->b:Z

    .line 300
    iget-object v0, p0, Lj$/util/stream/i2;->a:Lj$/util/stream/p2;

    invoke-interface {v0}, Lj$/util/stream/p2;->p()Z

    move-result v0

    return v0
.end method
