.class public final Lj$/util/stream/m;
.super Lj$/util/stream/l2;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public c:Z

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lj$/util/stream/P3;Lj$/util/stream/p2;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lj$/util/stream/m;->b:I

    .line 88
    iput-object p1, p0, Lj$/util/stream/m;->d:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lj$/util/stream/l2;-><init>(Lj$/util/stream/p2;)V

    const/4 p1, 0x1

    .line 89
    iput-boolean p1, p0, Lj$/util/stream/m;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(Lj$/util/stream/p2;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lj$/util/stream/m;->b:I

    invoke-direct {p0, p1}, Lj$/util/stream/l2;-><init>(Lj$/util/stream/p2;)V

    return-void
.end method

.method public constructor <init>(Lj$/util/stream/s;Lj$/util/stream/p2;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lj$/util/stream/m;->b:I

    .line 260
    iput-object p1, p0, Lj$/util/stream/m;->d:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lj$/util/stream/l2;-><init>(Lj$/util/stream/p2;)V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lj$/util/stream/m;->b:I

    packed-switch v0, :pswitch_data_0

    .line 98
    iget-boolean v0, p0, Lj$/util/stream/m;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/util/stream/m;->d:Ljava/lang/Object;

    check-cast v0, Lj$/util/stream/P3;

    iget-object v0, v0, Lj$/util/stream/P3;->t:Ljava/util/function/Predicate;

    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lj$/util/stream/m;->c:Z

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lj$/util/stream/l2;->a:Lj$/util/stream/p2;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 271
    :pswitch_0
    iget-object v0, p0, Lj$/util/stream/m;->d:Ljava/lang/Object;

    check-cast v0, Lj$/util/stream/s;

    iget-object v0, v0, Lj$/util/stream/s;->t:Ljava/lang/Object;

    check-cast v0, Lj$/time/s;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/stream/Stream;

    if-eqz p1, :cond_3

    .line 273
    :try_start_0
    iget-boolean v0, p0, Lj$/util/stream/m;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lj$/util/stream/l2;->a:Lj$/util/stream/p2;

    if-nez v0, :cond_1

    .line 274
    :try_start_1
    invoke-interface {p1}, Lj$/util/stream/BaseStream;->sequential()Lj$/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Lj$/util/stream/Stream;

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 277
    :cond_1
    invoke-interface {p1}, Lj$/util/stream/BaseStream;->sequential()Lj$/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Lj$/util/stream/Stream;

    invoke-interface {v0}, Lj$/util/stream/BaseStream;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    .line 278
    :cond_2
    invoke-interface {v1}, Lj$/util/stream/p2;->p()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v0, v1}, Lj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_2

    goto :goto_2

    .line 271
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

    :cond_3
    :goto_2
    if-eqz p1, :cond_4

    .line 281
    invoke-interface {p1}, Lj$/util/stream/BaseStream;->close()V

    :cond_4
    return-void

    .line 147
    :pswitch_1
    iget-object v0, p0, Lj$/util/stream/l2;->a:Lj$/util/stream/p2;

    if-nez p1, :cond_5

    .line 148
    iget-boolean p1, p0, Lj$/util/stream/m;->c:Z

    if-nez p1, :cond_7

    const/4 p1, 0x1

    .line 149
    iput-boolean p1, p0, Lj$/util/stream/m;->c:Z

    const/4 p1, 0x0

    .line 150
    iput-object p1, p0, Lj$/util/stream/m;->d:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_3

    .line 152
    :cond_5
    iget-object v1, p0, Lj$/util/stream/m;->d:Ljava/lang/Object;

    if-eqz v1, :cond_6

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 153
    :cond_6
    iput-object p1, p0, Lj$/util/stream/m;->d:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_7
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public end()V
    .locals 1

    iget v0, p0, Lj$/util/stream/m;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lj$/util/stream/l2;->end()V

    return-void

    :pswitch_0
    const/4 v0, 0x0

    .line 140
    iput-boolean v0, p0, Lj$/util/stream/m;->c:Z

    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Lj$/util/stream/m;->d:Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Lj$/util/stream/l2;->a:Lj$/util/stream/p2;

    invoke-interface {v0}, Lj$/util/stream/p2;->end()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final m(J)V
    .locals 2

    iget p1, p0, Lj$/util/stream/m;->b:I

    packed-switch p1, :pswitch_data_0

    .line 93
    iget-object p1, p0, Lj$/util/stream/l2;->a:Lj$/util/stream/p2;

    const-wide/16 v0, -0x1

    invoke-interface {p1, v0, v1}, Lj$/util/stream/p2;->m(J)V

    return-void

    .line 266
    :pswitch_0
    iget-object p1, p0, Lj$/util/stream/l2;->a:Lj$/util/stream/p2;

    const-wide/16 v0, -0x1

    invoke-interface {p1, v0, v1}, Lj$/util/stream/p2;->m(J)V

    return-void

    :pswitch_1
    const/4 p1, 0x0

    .line 133
    iput-boolean p1, p0, Lj$/util/stream/m;->c:Z

    const/4 p1, 0x0

    .line 134
    iput-object p1, p0, Lj$/util/stream/m;->d:Ljava/lang/Object;

    .line 135
    iget-object p1, p0, Lj$/util/stream/l2;->a:Lj$/util/stream/p2;

    const-wide/16 v0, -0x1

    invoke-interface {p1, v0, v1}, Lj$/util/stream/p2;->m(J)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public p()Z
    .locals 1

    iget v0, p0, Lj$/util/stream/m;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lj$/util/stream/l2;->p()Z

    move-result v0

    return v0

    .line 105
    :pswitch_0
    iget-boolean v0, p0, Lj$/util/stream/m;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lj$/util/stream/l2;->a:Lj$/util/stream/p2;

    invoke-interface {v0}, Lj$/util/stream/p2;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :pswitch_1
    const/4 v0, 0x1

    .line 290
    iput-boolean v0, p0, Lj$/util/stream/m;->c:Z

    .line 291
    iget-object v0, p0, Lj$/util/stream/l2;->a:Lj$/util/stream/p2;

    invoke-interface {v0}, Lj$/util/stream/p2;->p()Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
