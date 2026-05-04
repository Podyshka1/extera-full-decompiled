.class public abstract Lj$/util/stream/F3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lj$/util/Spliterator;

.field public final b:Z

.field public final c:I

.field public final d:J

.field public final e:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Lj$/util/Spliterator;JJ)V
    .locals 3

    .line 912
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 913
    iput-object p1, p0, Lj$/util/stream/F3;->a:Lj$/util/Spliterator;

    const-wide/16 v0, 0x0

    cmp-long p1, p4, v0

    if-gez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 914
    :goto_0
    iput-boolean v2, p0, Lj$/util/stream/F3;->b:Z

    if-ltz p1, :cond_1

    move-wide v0, p4

    .line 915
    :cond_1
    iput-wide v0, p0, Lj$/util/stream/F3;->d:J

    const/16 v0, 0x80

    .line 919
    iput v0, p0, Lj$/util/stream/F3;->c:I

    .line 920
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    if-ltz p1, :cond_2

    add-long/2addr p2, p4

    :cond_2
    invoke-direct {v0, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lj$/util/stream/F3;->e:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Lj$/util/Spliterator;Lj$/util/stream/F3;)V
    .locals 2

    .line 924
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 925
    iput-object p1, p0, Lj$/util/stream/F3;->a:Lj$/util/Spliterator;

    .line 926
    iget-boolean p1, p2, Lj$/util/stream/F3;->b:Z

    iput-boolean p1, p0, Lj$/util/stream/F3;->b:Z

    .line 927
    iget-object p1, p2, Lj$/util/stream/F3;->e:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p1, p0, Lj$/util/stream/F3;->e:Ljava/util/concurrent/atomic/AtomicLong;

    .line 928
    iget-wide v0, p2, Lj$/util/stream/F3;->d:J

    iput-wide v0, p0, Lj$/util/stream/F3;->d:J

    .line 929
    iget p1, p2, Lj$/util/stream/F3;->c:I

    iput p1, p0, Lj$/util/stream/F3;->c:I

    return-void
.end method


# virtual methods
.method public final a(J)J
    .locals 10

    .line 952
    :cond_0
    iget-object v0, p0, Lj$/util/stream/F3;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    .line 953
    iget-boolean v5, p0, Lj$/util/stream/F3;->b:Z

    if-nez v4, :cond_2

    if-eqz v5, :cond_1

    return-wide p1

    :cond_1
    return-wide v2

    .line 955
    :cond_2
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    cmp-long v4, v6, v2

    if-lez v4, :cond_3

    .line 956
    iget-object v4, p0, Lj$/util/stream/F3;->e:Ljava/util/concurrent/atomic/AtomicLong;

    sub-long v8, v0, v6

    .line 957
    invoke-virtual {v4, v0, v1, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_3
    if-eqz v5, :cond_4

    sub-long/2addr p1, v6

    .line 960
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    return-wide p1

    .line 961
    :cond_4
    iget-wide p1, p0, Lj$/util/stream/F3;->d:J

    cmp-long v4, v0, p1

    if-lez v4, :cond_5

    sub-long/2addr v0, p1

    sub-long/2addr v6, v0

    .line 962
    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    return-wide p1

    :cond_5
    return-wide v6
.end method

.method public abstract b(Lj$/util/Spliterator;)Lj$/util/Spliterator;
.end method

.method public final c()Lj$/util/stream/E3;
    .locals 4

    .line 971
    iget-object v0, p0, Lj$/util/stream/F3;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 972
    sget-object v0, Lj$/util/stream/E3;->MAYBE_MORE:Lj$/util/stream/E3;

    return-object v0

    .line 974
    :cond_0
    iget-boolean v0, p0, Lj$/util/stream/F3;->b:Z

    if-eqz v0, :cond_1

    sget-object v0, Lj$/util/stream/E3;->UNLIMITED:Lj$/util/stream/E3;

    return-object v0

    :cond_1
    sget-object v0, Lj$/util/stream/E3;->NO_MORE:Lj$/util/stream/E3;

    return-object v0
.end method

.method public final characteristics()I
    .locals 1

    .line 993
    iget-object v0, p0, Lj$/util/stream/F3;->a:Lj$/util/Spliterator;

    invoke-interface {v0}, Lj$/util/Spliterator;->characteristics()I

    move-result v0

    and-int/lit16 v0, v0, -0x4051

    return v0
.end method

.method public final estimateSize()J
    .locals 2

    .line 989
    iget-object v0, p0, Lj$/util/stream/F3;->a:Lj$/util/Spliterator;

    invoke-interface {v0}, Lj$/util/Spliterator;->estimateSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator$OfInt;
    .locals 1

    .line 1135
    invoke-virtual {p0}, Lj$/util/stream/F3;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Lj$/util/Spliterator$OfInt;

    return-object v0
.end method

.method public final trySplit()Lj$/util/Spliterator;
    .locals 4

    .line 979
    iget-object v0, p0, Lj$/util/stream/F3;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    .line 982
    :cond_0
    iget-object v0, p0, Lj$/util/stream/F3;->a:Lj$/util/Spliterator;

    invoke-interface {v0}, Lj$/util/Spliterator;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 983
    :cond_1
    invoke-virtual {p0, v0}, Lj$/util/stream/F3;->b(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Lj$/util/U;
    .locals 1

    .line 1205
    invoke-virtual {p0}, Lj$/util/stream/F3;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Lj$/util/U;

    return-object v0
.end method

.method public bridge synthetic trySplit()Lj$/util/Z;
    .locals 1

    .line 1170
    invoke-virtual {p0}, Lj$/util/stream/F3;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Lj$/util/Z;

    return-object v0
.end method

.method public bridge synthetic trySplit()Lj$/util/c0;
    .locals 1

    .line 1069
    invoke-virtual {p0}, Lj$/util/stream/F3;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Lj$/util/c0;

    return-object v0
.end method
