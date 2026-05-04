.class public final Lj$/util/stream/P3;
.super Lj$/util/stream/f2;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/Z3;


# instance fields
.field public final synthetic s:I

.field public final synthetic t:Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>(Lj$/util/stream/h2;ILjava/util/function/Predicate;I)V
    .locals 0

    iput p4, p0, Lj$/util/stream/P3;->s:I

    iput-object p3, p0, Lj$/util/stream/P3;->t:Ljava/util/function/Predicate;

    invoke-direct {p0, p1, p2}, Lj$/util/stream/b;-><init>(Lj$/util/stream/b;I)V

    return-void
.end method


# virtual methods
.method public final A0(Lj$/util/stream/y1;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/I0;
    .locals 1

    iget v0, p0, Lj$/util/stream/P3;->s:I

    packed-switch v0, :pswitch_data_0

    .line 356
    new-instance v0, Lj$/util/stream/b4;

    invoke-direct {v0, p0, p1, p2, p3}, Lj$/util/stream/b4;-><init>(Lj$/util/stream/b;Lj$/util/stream/y1;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)V

    .line 357
    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/stream/I0;

    return-object p1

    .line 82
    :pswitch_0
    new-instance v0, Lj$/util/stream/c4;

    invoke-direct {v0, p0, p1, p2, p3}, Lj$/util/stream/c4;-><init>(Lj$/util/stream/b;Lj$/util/stream/y1;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)V

    .line 83
    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/stream/I0;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final B0(Lj$/util/stream/b;Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 2

    iget v0, p0, Lj$/util/stream/P3;->s:I

    packed-switch v0, :pswitch_data_0

    .line 342
    sget-object v0, Lj$/util/stream/d3;->ORDERED:Lj$/util/stream/d3;

    .line 509
    iget v1, p1, Lj$/util/stream/b;->m:I

    .line 342
    invoke-virtual {v0, v1}, Lj$/util/stream/d3;->k(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    new-instance v0, Lj$/util/stream/d0;

    const/4 v1, 0x2

    .line 0
    invoke-direct {v0, v1}, Lj$/util/stream/d0;-><init>(I)V

    .line 343
    invoke-virtual {p0, p1, p2, v0}, Lj$/util/stream/P3;->A0(Lj$/util/stream/y1;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/I0;

    move-result-object p1

    .line 344
    invoke-interface {p1}, Lj$/util/stream/I0;->spliterator()Lj$/util/Spliterator;

    move-result-object p1

    goto :goto_0

    .line 347
    :cond_0
    new-instance v0, Lj$/util/stream/i4;

    .line 348
    invoke-virtual {p1, p2}, Lj$/util/stream/b;->u0(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object p1

    iget-object p2, p0, Lj$/util/stream/P3;->t:Ljava/util/function/Predicate;

    const/4 v1, 0x0

    .line 782
    invoke-direct {v0, p1, p2, v1}, Lj$/util/stream/i4;-><init>(Lj$/util/Spliterator;Ljava/util/function/Predicate;I)V

    move-object p1, v0

    :goto_0
    return-object p1

    .line 68
    :pswitch_0
    sget-object v0, Lj$/util/stream/d3;->ORDERED:Lj$/util/stream/d3;

    .line 509
    iget v1, p1, Lj$/util/stream/b;->m:I

    .line 68
    invoke-virtual {v0, v1}, Lj$/util/stream/d3;->k(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    new-instance v0, Lj$/util/stream/d0;

    const/4 v1, 0x2

    .line 0
    invoke-direct {v0, v1}, Lj$/util/stream/d0;-><init>(I)V

    .line 69
    invoke-virtual {p0, p1, p2, v0}, Lj$/util/stream/P3;->A0(Lj$/util/stream/y1;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/I0;

    move-result-object p1

    .line 70
    invoke-interface {p1}, Lj$/util/stream/I0;->spliterator()Lj$/util/Spliterator;

    move-result-object p1

    goto :goto_1

    .line 73
    :cond_1
    new-instance v0, Lj$/util/stream/i4;

    .line 74
    invoke-virtual {p1, p2}, Lj$/util/stream/b;->u0(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object p1

    iget-object p2, p0, Lj$/util/stream/P3;->t:Ljava/util/function/Predicate;

    const/4 v1, 0x1

    .line 740
    invoke-direct {v0, p1, p2, v1}, Lj$/util/stream/i4;-><init>(Lj$/util/Spliterator;Ljava/util/function/Predicate;I)V

    move-object p1, v0

    :goto_1
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final D0(ILj$/util/stream/p2;)Lj$/util/stream/p2;
    .locals 1

    iget p1, p0, Lj$/util/stream/P3;->s:I

    packed-switch p1, :pswitch_data_0

    .line 394
    new-instance p1, Lj$/util/stream/Q3;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/Q3;-><init>(Lj$/util/stream/P3;Lj$/util/stream/p2;Z)V

    return-object p1

    .line 88
    :pswitch_0
    new-instance p1, Lj$/util/stream/m;

    invoke-direct {p1, p0, p2}, Lj$/util/stream/m;-><init>(Lj$/util/stream/P3;Lj$/util/stream/p2;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public h(Lj$/util/stream/A0;Z)Lj$/util/stream/a4;
    .locals 1

    .line 394
    new-instance v0, Lj$/util/stream/Q3;

    invoke-direct {v0, p0, p1, p2}, Lj$/util/stream/Q3;-><init>(Lj$/util/stream/P3;Lj$/util/stream/p2;Z)V

    return-object v0
.end method
