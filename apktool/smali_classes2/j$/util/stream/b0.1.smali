.class public abstract Lj$/util/stream/b0;
.super Lj$/util/stream/c0;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 617
    const-class v0, Lj$/util/stream/c0;

    return-void
.end method


# virtual methods
.method public final C0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final parallel()Lj$/util/stream/IntStream;
    .locals 2

    .line 311
    iget-object v0, p0, Lj$/util/stream/b;->h:Lj$/util/stream/b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lj$/util/stream/b;->r:Z

    return-object p0
.end method

.method public final sequential()Lj$/util/stream/IntStream;
    .locals 2

    .line 304
    iget-object v0, p0, Lj$/util/stream/b;->h:Lj$/util/stream/b;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lj$/util/stream/b;->r:Z

    return-object p0
.end method

.method public final bridge synthetic spliterator()Lj$/util/Spliterator;
    .locals 1

    .line 617
    invoke-virtual {p0}, Lj$/util/stream/c0;->spliterator()Lj$/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public final unordered()Lj$/util/stream/BaseStream;
    .locals 3

    .line 513
    sget-object v0, Lj$/util/stream/d3;->ORDERED:Lj$/util/stream/d3;

    iget v1, p0, Lj$/util/stream/b;->m:I

    invoke-virtual {v0, v1}, Lj$/util/stream/d3;->k(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 345
    :cond_0
    new-instance v0, Lj$/util/stream/u;

    sget v1, Lj$/util/stream/d3;->r:I

    const/4 v2, 0x1

    .line 91
    invoke-direct {v0, p0, v1, v2}, Lj$/util/stream/u;-><init>(Lj$/util/stream/b;II)V

    return-object v0
.end method
