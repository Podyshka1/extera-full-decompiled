.class public final Lj$/util/stream/K3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/Spliterator;


# instance fields
.field public final a:Lj$/util/Spliterator;

.field public final b:Lj$/util/Spliterator;

.field public c:Z

.field public final d:Z


# direct methods
.method public constructor <init>(Lj$/util/Spliterator;Lj$/util/Spliterator;)V
    .locals 3

    .line 697
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 698
    iput-object p1, p0, Lj$/util/stream/K3;->a:Lj$/util/Spliterator;

    .line 699
    iput-object p2, p0, Lj$/util/stream/K3;->b:Lj$/util/Spliterator;

    const/4 v0, 0x1

    .line 700
    iput-boolean v0, p0, Lj$/util/stream/K3;->c:Z

    .line 703
    invoke-interface {p1}, Lj$/util/Spliterator;->estimateSize()J

    move-result-wide v1

    invoke-interface {p2}, Lj$/util/Spliterator;->estimateSize()J

    move-result-wide p1

    add-long/2addr p1, v1

    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lj$/util/stream/K3;->d:Z

    return-void
.end method


# virtual methods
.method public final characteristics()I
    .locals 2

    .line 751
    iget-boolean v0, p0, Lj$/util/stream/K3;->c:Z

    iget-object v1, p0, Lj$/util/stream/K3;->b:Lj$/util/Spliterator;

    if-eqz v0, :cond_1

    .line 753
    iget-object v0, p0, Lj$/util/stream/K3;->a:Lj$/util/Spliterator;

    invoke-interface {v0}, Lj$/util/Spliterator;->characteristics()I

    move-result v0

    invoke-interface {v1}, Lj$/util/Spliterator;->characteristics()I

    move-result v1

    and-int/2addr v0, v1

    .line 755
    iget-boolean v1, p0, Lj$/util/stream/K3;->d:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x4040

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/lit8 v1, v1, 0x5

    not-int v1, v1

    and-int/2addr v0, v1

    return v0

    .line 758
    :cond_1
    invoke-interface {v1}, Lj$/util/Spliterator;->characteristics()I

    move-result v0

    return v0
.end method

.method public final estimateSize()J
    .locals 4

    .line 738
    iget-boolean v0, p0, Lj$/util/stream/K3;->c:Z

    iget-object v1, p0, Lj$/util/stream/K3;->b:Lj$/util/Spliterator;

    if-eqz v0, :cond_1

    .line 741
    iget-object v0, p0, Lj$/util/stream/K3;->a:Lj$/util/Spliterator;

    invoke-interface {v0}, Lj$/util/Spliterator;->estimateSize()J

    move-result-wide v2

    invoke-interface {v1}, Lj$/util/Spliterator;->estimateSize()J

    move-result-wide v0

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    .line 745
    :cond_1
    invoke-interface {v1}, Lj$/util/Spliterator;->estimateSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public final forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 1

    .line 731
    iget-boolean v0, p0, Lj$/util/stream/K3;->c:Z

    if-eqz v0, :cond_0

    .line 732
    iget-object v0, p0, Lj$/util/stream/K3;->a:Lj$/util/Spliterator;

    invoke-interface {v0, p1}, Lj$/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 733
    :cond_0
    iget-object v0, p0, Lj$/util/stream/K3;->b:Lj$/util/Spliterator;

    invoke-interface {v0, p1}, Lj$/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final getComparator()Ljava/util/Comparator;
    .locals 1

    .line 764
    iget-boolean v0, p0, Lj$/util/stream/K3;->c:Z

    if-nez v0, :cond_0

    .line 766
    iget-object v0, p0, Lj$/util/stream/K3;->b:Lj$/util/Spliterator;

    invoke-interface {v0}, Lj$/util/Spliterator;->getComparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0

    .line 765
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final synthetic getExactSizeIfKnown()J
    .locals 2

    .line 0
    invoke-static {p0}, Lj$/com/android/tools/r8/a;->o(Lj$/util/Spliterator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final synthetic hasCharacteristics(I)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->q(Lj$/util/Spliterator;I)Z

    move-result p1

    return p1
.end method

.method public final tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 2

    .line 717
    iget-boolean v0, p0, Lj$/util/stream/K3;->c:Z

    iget-object v1, p0, Lj$/util/stream/K3;->b:Lj$/util/Spliterator;

    if-eqz v0, :cond_1

    .line 718
    iget-object v0, p0, Lj$/util/stream/K3;->a:Lj$/util/Spliterator;

    invoke-interface {v0, p1}, Lj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 720
    iput-boolean v0, p0, Lj$/util/stream/K3;->c:Z

    .line 721
    invoke-interface {v1, p1}, Lj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result p1

    return p1

    :cond_0
    return v0

    .line 725
    :cond_1
    invoke-interface {v1, p1}, Lj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public final trySplit()Lj$/util/Spliterator;
    .locals 2

    .line 709
    iget-boolean v0, p0, Lj$/util/stream/K3;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/util/stream/K3;->a:Lj$/util/Spliterator;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lj$/util/stream/K3;->b:Lj$/util/Spliterator;

    invoke-interface {v0}, Lj$/util/Spliterator;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    .line 710
    iput-boolean v1, p0, Lj$/util/stream/K3;->c:Z

    return-object v0
.end method
