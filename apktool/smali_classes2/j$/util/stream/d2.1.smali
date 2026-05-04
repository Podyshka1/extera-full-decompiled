.class public final Lj$/util/stream/d2;
.super Lj$/util/stream/l2;
.source "SourceFile"


# instance fields
.field public b:Z

.field public final c:Lj$/util/H;

.field public final synthetic d:Lj$/util/stream/W;


# direct methods
.method public constructor <init>(Lj$/util/stream/W;Lj$/util/stream/p2;)V
    .locals 1

    .line 305
    iput-object p1, p0, Lj$/util/stream/d2;->d:Lj$/util/stream/W;

    invoke-direct {p0, p2}, Lj$/util/stream/l2;-><init>(Lj$/util/stream/p2;)V

    .line 310
    iget-object p1, p0, Lj$/util/stream/l2;->a:Lj$/util/stream/p2;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lj$/util/H;

    const/4 v0, 0x1

    invoke-direct {p2, p1, v0}, Lj$/util/H;-><init>(Ljava/util/function/Consumer;I)V

    iput-object p2, p0, Lj$/util/stream/d2;->c:Lj$/util/H;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 319
    iget-object v0, p0, Lj$/util/stream/d2;->d:Lj$/util/stream/W;

    iget-object v0, v0, Lj$/util/stream/W;->t:Ljava/lang/Object;

    check-cast v0, Lj$/time/s;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/stream/IntStream;

    if-eqz p1, :cond_2

    .line 321
    :try_start_0
    iget-boolean v0, p0, Lj$/util/stream/d2;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lj$/util/stream/d2;->c:Lj$/util/H;

    if-nez v0, :cond_0

    .line 322
    :try_start_1
    invoke-interface {p1}, Lj$/util/stream/IntStream;->sequential()Lj$/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0, v1}, Lj$/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 325
    :cond_0
    invoke-interface {p1}, Lj$/util/stream/IntStream;->sequential()Lj$/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Lj$/util/stream/IntStream;->spliterator()Lj$/util/Spliterator$OfInt;

    move-result-object v0

    .line 326
    :cond_1
    iget-object v2, p0, Lj$/util/stream/l2;->a:Lj$/util/stream/p2;

    invoke-interface {v2}, Lj$/util/stream/p2;->p()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v0, v1}, Lj$/util/Spliterator$OfInt;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    goto :goto_2

    .line 319
    :goto_0
    :try_start_2
    invoke-interface {p1}, Lj$/util/stream/BaseStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v0

    :cond_2
    :goto_2
    if-eqz p1, :cond_3

    .line 329
    invoke-interface {p1}, Lj$/util/stream/BaseStream;->close()V

    :cond_3
    return-void
.end method

.method public final m(J)V
    .locals 2

    .line 314
    iget-object p1, p0, Lj$/util/stream/l2;->a:Lj$/util/stream/p2;

    const-wide/16 v0, -0x1

    invoke-interface {p1, v0, v1}, Lj$/util/stream/p2;->m(J)V

    return-void
.end method

.method public final p()Z
    .locals 1

    const/4 v0, 0x1

    .line 334
    iput-boolean v0, p0, Lj$/util/stream/d2;->b:Z

    .line 335
    iget-object v0, p0, Lj$/util/stream/l2;->a:Lj$/util/stream/p2;

    invoke-interface {v0}, Lj$/util/stream/p2;->p()Z

    move-result v0

    return v0
.end method
