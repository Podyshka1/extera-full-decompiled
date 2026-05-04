.class public abstract Lj$/util/stream/g2;
.super Lj$/util/stream/h2;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 683
    const-class v0, Lj$/util/stream/h2;

    return-void
.end method


# virtual methods
.method public final C0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final unordered()Lj$/util/stream/BaseStream;
    .locals 2

    .line 513
    sget-object v0, Lj$/util/stream/d3;->ORDERED:Lj$/util/stream/d3;

    iget v1, p0, Lj$/util/stream/b;->m:I

    invoke-virtual {v0, v1}, Lj$/util/stream/d3;->k(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 153
    :cond_0
    new-instance v0, Lj$/util/stream/c2;

    sget v1, Lj$/util/stream/d3;->r:I

    .line 94
    invoke-direct {v0, p0, v1}, Lj$/util/stream/b;-><init>(Lj$/util/stream/b;I)V

    return-object v0
.end method
