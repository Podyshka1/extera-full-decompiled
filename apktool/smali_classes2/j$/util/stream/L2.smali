.class public final Lj$/util/stream/L2;
.super Lj$/util/stream/f2;
.source "SourceFile"


# instance fields
.field public final s:Z

.field public final t:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Lj$/util/stream/h2;)V
    .locals 2

    .line 111
    sget v0, Lj$/util/stream/d3;->q:I

    sget v1, Lj$/util/stream/d3;->o:I

    or-int/2addr v0, v1

    .line 94
    invoke-direct {p0, p1, v0}, Lj$/util/stream/b;-><init>(Lj$/util/stream/b;I)V

    const/4 p1, 0x1

    .line 113
    iput-boolean p1, p0, Lj$/util/stream/L2;->s:Z

    .line 116
    invoke-static {}, Lj$/util/Comparator$-CC;->naturalOrder()Ljava/util/Comparator;

    move-result-object p1

    .line 117
    iput-object p1, p0, Lj$/util/stream/L2;->t:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lj$/util/stream/h2;Ljava/util/Comparator;)V
    .locals 2

    .line 126
    sget v0, Lj$/util/stream/d3;->q:I

    sget v1, Lj$/util/stream/d3;->p:I

    or-int/2addr v0, v1

    .line 94
    invoke-direct {p0, p1, v0}, Lj$/util/stream/b;-><init>(Lj$/util/stream/b;I)V

    const/4 p1, 0x0

    .line 128
    iput-boolean p1, p0, Lj$/util/stream/L2;->s:Z

    .line 129
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Comparator;

    iput-object p1, p0, Lj$/util/stream/L2;->t:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public final A0(Lj$/util/stream/y1;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/I0;
    .locals 2

    .line 152
    sget-object v0, Lj$/util/stream/d3;->SORTED:Lj$/util/stream/d3;

    move-object v1, p1

    check-cast v1, Lj$/util/stream/b;

    .line 509
    iget v1, v1, Lj$/util/stream/b;->m:I

    .line 152
    invoke-virtual {v0, v1}, Lj$/util/stream/d3;->k(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lj$/util/stream/L2;->s:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 153
    invoke-virtual {p1, p2, v0, p3}, Lj$/util/stream/y1;->d0(Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/I0;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    .line 157
    invoke-virtual {p1, p2, v0, p3}, Lj$/util/stream/y1;->d0(Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/I0;

    move-result-object p1

    invoke-interface {p1, p3}, Lj$/util/stream/I0;->g(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    .line 160
    iget-object p2, p0, Lj$/util/stream/L2;->t:Ljava/util/Comparator;

    invoke-static {p1, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 148
    new-instance p2, Lj$/util/stream/L0;

    invoke-direct {p2, p1}, Lj$/util/stream/L0;-><init>([Ljava/lang/Object;)V

    return-object p2
.end method

.method public final D0(ILj$/util/stream/p2;)Lj$/util/stream/p2;
    .locals 1

    .line 134
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lj$/util/stream/d3;->SORTED:Lj$/util/stream/d3;

    invoke-virtual {v0, p1}, Lj$/util/stream/d3;->k(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lj$/util/stream/L2;->s:Z

    if-eqz v0, :cond_0

    return-object p2

    .line 140
    :cond_0
    sget-object v0, Lj$/util/stream/d3;->SIZED:Lj$/util/stream/d3;

    invoke-virtual {v0, p1}, Lj$/util/stream/d3;->k(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 141
    new-instance p1, Lj$/util/stream/Q2;

    iget-object v0, p0, Lj$/util/stream/L2;->t:Ljava/util/Comparator;

    .line 348
    invoke-direct {p1, p2, v0}, Lj$/util/stream/E2;-><init>(Lj$/util/stream/p2;Ljava/util/Comparator;)V

    return-object p1

    .line 143
    :cond_1
    new-instance p1, Lj$/util/stream/M2;

    iget-object v0, p0, Lj$/util/stream/L2;->t:Ljava/util/Comparator;

    .line 388
    invoke-direct {p1, p2, v0}, Lj$/util/stream/E2;-><init>(Lj$/util/stream/p2;Ljava/util/Comparator;)V

    return-object p1
.end method
