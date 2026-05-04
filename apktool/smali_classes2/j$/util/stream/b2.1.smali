.class public final Lj$/util/stream/b2;
.super Lj$/util/stream/l2;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public c:Z

.field public final d:Ljava/lang/Object;

.field public final synthetic e:Lj$/util/stream/b;


# direct methods
.method public constructor <init>(Lj$/util/stream/h0;Lj$/util/stream/p2;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lj$/util/stream/b2;->b:I

    .line 394
    iput-object p1, p0, Lj$/util/stream/b2;->e:Lj$/util/stream/b;

    invoke-direct {p0, p2}, Lj$/util/stream/l2;-><init>(Lj$/util/stream/p2;)V

    .line 399
    iget-object p1, p0, Lj$/util/stream/l2;->a:Lj$/util/stream/p2;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lj$/util/L;

    const/4 v0, 0x1

    invoke-direct {p2, p1, v0}, Lj$/util/L;-><init>(Ljava/util/function/Consumer;I)V

    iput-object p2, p0, Lj$/util/stream/b2;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lj$/util/stream/x;Lj$/util/stream/p2;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lj$/util/stream/b2;->b:I

    .line 349
    iput-object p1, p0, Lj$/util/stream/b2;->e:Lj$/util/stream/b;

    invoke-direct {p0, p2}, Lj$/util/stream/l2;-><init>(Lj$/util/stream/p2;)V

    .line 354
    iget-object p1, p0, Lj$/util/stream/l2;->a:Lj$/util/stream/p2;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lj$/util/D;

    invoke-direct {p2, p1, v0}, Lj$/util/D;-><init>(Ljava/util/function/Consumer;I)V

    iput-object p2, p0, Lj$/util/stream/b2;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lj$/util/stream/b2;->b:I

    packed-switch v0, :pswitch_data_0

    .line 363
    iget-object v0, p0, Lj$/util/stream/b2;->d:Ljava/lang/Object;

    check-cast v0, Lj$/util/D;

    iget-object v1, p0, Lj$/util/stream/b2;->e:Lj$/util/stream/b;

    check-cast v1, Lj$/util/stream/x;

    iget-object v1, v1, Lj$/util/stream/x;->t:Ljava/lang/Object;

    check-cast v1, Lj$/time/s;

    invoke-interface {v1, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/stream/E;

    if-eqz p1, :cond_2

    .line 365
    :try_start_0
    iget-boolean v1, p0, Lj$/util/stream/b2;->c:Z

    if-nez v1, :cond_0

    .line 366
    invoke-interface {p1}, Lj$/util/stream/E;->sequential()Lj$/util/stream/E;

    move-result-object v1

    invoke-interface {v1, v0}, Lj$/util/stream/E;->forEach(Ljava/util/function/DoubleConsumer;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 369
    :cond_0
    invoke-interface {p1}, Lj$/util/stream/E;->sequential()Lj$/util/stream/E;

    move-result-object v1

    invoke-interface {v1}, Lj$/util/stream/E;->spliterator()Lj$/util/U;

    move-result-object v1

    .line 370
    :cond_1
    iget-object v2, p0, Lj$/util/stream/l2;->a:Lj$/util/stream/p2;

    invoke-interface {v2}, Lj$/util/stream/p2;->p()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v1, v0}, Lj$/util/U;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    goto :goto_2

    .line 363
    :goto_0
    :try_start_1
    invoke-interface {p1}, Lj$/util/stream/BaseStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v0

    :cond_2
    :goto_2
    if-eqz p1, :cond_3

    .line 373
    invoke-interface {p1}, Lj$/util/stream/BaseStream;->close()V

    :cond_3
    return-void

    .line 408
    :pswitch_0
    iget-object v0, p0, Lj$/util/stream/b2;->d:Ljava/lang/Object;

    check-cast v0, Lj$/util/L;

    iget-object v1, p0, Lj$/util/stream/b2;->e:Lj$/util/stream/b;

    check-cast v1, Lj$/util/stream/h0;

    iget-object v1, v1, Lj$/util/stream/h0;->t:Ljava/lang/Object;

    check-cast v1, Lj$/time/s;

    invoke-interface {v1, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/stream/LongStream;

    if-eqz p1, :cond_6

    .line 410
    :try_start_2
    iget-boolean v1, p0, Lj$/util/stream/b2;->c:Z

    if-nez v1, :cond_4

    .line 411
    invoke-interface {p1}, Lj$/util/stream/LongStream;->sequential()Lj$/util/stream/LongStream;

    move-result-object v1

    invoke-interface {v1, v0}, Lj$/util/stream/LongStream;->forEach(Ljava/util/function/LongConsumer;)V

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_3

    .line 414
    :cond_4
    invoke-interface {p1}, Lj$/util/stream/LongStream;->sequential()Lj$/util/stream/LongStream;

    move-result-object v1

    invoke-interface {v1}, Lj$/util/stream/LongStream;->spliterator()Lj$/util/Z;

    move-result-object v1

    .line 415
    :cond_5
    iget-object v2, p0, Lj$/util/stream/l2;->a:Lj$/util/stream/p2;

    invoke-interface {v2}, Lj$/util/stream/p2;->p()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-interface {v1, v0}, Lj$/util/Z;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v2, :cond_5

    goto :goto_5

    .line 408
    :goto_3
    :try_start_3
    invoke-interface {p1}, Lj$/util/stream/BaseStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v0

    :cond_6
    :goto_5
    if-eqz p1, :cond_7

    .line 418
    invoke-interface {p1}, Lj$/util/stream/BaseStream;->close()V

    :cond_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final m(J)V
    .locals 2

    iget p1, p0, Lj$/util/stream/b2;->b:I

    packed-switch p1, :pswitch_data_0

    .line 358
    iget-object p1, p0, Lj$/util/stream/l2;->a:Lj$/util/stream/p2;

    const-wide/16 v0, -0x1

    invoke-interface {p1, v0, v1}, Lj$/util/stream/p2;->m(J)V

    return-void

    .line 403
    :pswitch_0
    iget-object p1, p0, Lj$/util/stream/l2;->a:Lj$/util/stream/p2;

    const-wide/16 v0, -0x1

    invoke-interface {p1, v0, v1}, Lj$/util/stream/p2;->m(J)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final p()Z
    .locals 1

    iget v0, p0, Lj$/util/stream/b2;->b:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    .line 378
    iput-boolean v0, p0, Lj$/util/stream/b2;->c:Z

    .line 379
    iget-object v0, p0, Lj$/util/stream/l2;->a:Lj$/util/stream/p2;

    invoke-interface {v0}, Lj$/util/stream/p2;->p()Z

    move-result v0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    .line 423
    iput-boolean v0, p0, Lj$/util/stream/b2;->c:Z

    .line 424
    iget-object v0, p0, Lj$/util/stream/l2;->a:Lj$/util/stream/p2;

    invoke-interface {v0}, Lj$/util/stream/p2;->p()Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
