.class public final Lj$/util/stream/R3;
.super Lj$/util/stream/j2;
.source "SourceFile"


# instance fields
.field public b:Z

.field public final synthetic c:Lj$/util/stream/S3;


# direct methods
.method public constructor <init>(Lj$/util/stream/S3;Lj$/util/stream/p2;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lj$/util/stream/R3;->c:Lj$/util/stream/S3;

    invoke-direct {p0, p2}, Lj$/util/stream/j2;-><init>(Lj$/util/stream/p2;)V

    const/4 p1, 0x1

    .line 146
    iput-boolean p1, p0, Lj$/util/stream/R3;->b:Z

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 1

    .line 155
    iget-boolean v0, p0, Lj$/util/stream/R3;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/util/stream/R3;->c:Lj$/util/stream/S3;

    iget-object v0, v0, Lj$/util/stream/S3;->s:Ljava/util/function/IntPredicate;

    invoke-interface {v0, p1}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result v0

    iput-boolean v0, p0, Lj$/util/stream/R3;->b:Z

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lj$/util/stream/j2;->a:Lj$/util/stream/p2;

    invoke-interface {v0, p1}, Lj$/util/stream/p2;->accept(I)V

    :cond_0
    return-void
.end method

.method public final m(J)V
    .locals 2

    .line 150
    iget-object p1, p0, Lj$/util/stream/j2;->a:Lj$/util/stream/p2;

    const-wide/16 v0, -0x1

    invoke-interface {p1, v0, v1}, Lj$/util/stream/p2;->m(J)V

    return-void
.end method

.method public final p()Z
    .locals 1

    .line 162
    iget-boolean v0, p0, Lj$/util/stream/R3;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lj$/util/stream/j2;->a:Lj$/util/stream/p2;

    invoke-interface {v0}, Lj$/util/stream/p2;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
