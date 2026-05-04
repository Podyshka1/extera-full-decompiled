.class public final Lj$/util/stream/w2;
.super Lj$/util/stream/i2;
.source "SourceFile"


# instance fields
.field public b:J

.field public c:J

.field public final synthetic d:Lj$/util/stream/x2;


# direct methods
.method public constructor <init>(Lj$/util/stream/x2;Lj$/util/stream/p2;)V
    .locals 2

    .line 512
    iput-object p1, p0, Lj$/util/stream/w2;->d:Lj$/util/stream/x2;

    invoke-direct {p0, p2}, Lj$/util/stream/i2;-><init>(Lj$/util/stream/p2;)V

    .line 513
    iget-wide v0, p1, Lj$/util/stream/x2;->s:J

    iput-wide v0, p0, Lj$/util/stream/w2;->b:J

    .line 514
    iget-wide p1, p1, Lj$/util/stream/x2;->t:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide p1, 0x7fffffffffffffffL

    :goto_0
    iput-wide p1, p0, Lj$/util/stream/w2;->c:J

    return-void
.end method


# virtual methods
.method public final accept(D)V
    .locals 7

    .line 523
    iget-wide v0, p0, Lj$/util/stream/w2;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const-wide/16 v5, 0x1

    if-nez v4, :cond_1

    .line 524
    iget-wide v0, p0, Lj$/util/stream/w2;->c:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    sub-long/2addr v0, v5

    .line 525
    iput-wide v0, p0, Lj$/util/stream/w2;->c:J

    .line 526
    iget-object v0, p0, Lj$/util/stream/i2;->a:Lj$/util/stream/p2;

    invoke-interface {v0, p1, p2}, Lj$/util/stream/p2;->accept(D)V

    :cond_0
    return-void

    :cond_1
    sub-long/2addr v0, v5

    .line 530
    iput-wide v0, p0, Lj$/util/stream/w2;->b:J

    return-void
.end method

.method public final m(J)V
    .locals 7

    .line 518
    iget-object v0, p0, Lj$/util/stream/w2;->d:Lj$/util/stream/x2;

    iget-wide v3, v0, Lj$/util/stream/x2;->s:J

    iget-wide v5, p0, Lj$/util/stream/w2;->c:J

    move-wide v1, p1

    invoke-static/range {v1 .. v6}, Lj$/util/stream/A2;->a(JJJ)J

    move-result-wide p1

    iget-object v0, p0, Lj$/util/stream/i2;->a:Lj$/util/stream/p2;

    invoke-interface {v0, p1, p2}, Lj$/util/stream/p2;->m(J)V

    return-void
.end method

.method public final p()Z
    .locals 4

    .line 536
    iget-wide v0, p0, Lj$/util/stream/w2;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lj$/util/stream/i2;->a:Lj$/util/stream/p2;

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
