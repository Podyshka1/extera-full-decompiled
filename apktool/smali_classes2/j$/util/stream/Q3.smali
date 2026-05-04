.class public final Lj$/util/stream/Q3;
.super Lj$/util/stream/l2;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/a4;


# instance fields
.field public b:J

.field public c:Z

.field public final synthetic d:Z

.field public final synthetic e:Lj$/util/stream/P3;


# direct methods
.method public constructor <init>(Lj$/util/stream/P3;Lj$/util/stream/p2;Z)V
    .locals 0

    .line 370
    iput-object p1, p0, Lj$/util/stream/Q3;->e:Lj$/util/stream/P3;

    iput-boolean p3, p0, Lj$/util/stream/Q3;->d:Z

    .line 371
    invoke-direct {p0, p2}, Lj$/util/stream/l2;-><init>(Lj$/util/stream/p2;)V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    .line 376
    iget-boolean v0, p0, Lj$/util/stream/Q3;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lj$/util/stream/Q3;->e:Lj$/util/stream/P3;

    iget-object v0, v0, Lj$/util/stream/P3;->t:Ljava/util/function/Predicate;

    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    iput-boolean v1, p0, Lj$/util/stream/Q3;->c:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 380
    :goto_1
    iget-boolean v1, p0, Lj$/util/stream/Q3;->d:Z

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    .line 381
    iget-wide v2, p0, Lj$/util/stream/Q3;->b:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lj$/util/stream/Q3;->b:J

    :cond_2
    if-nez v1, :cond_4

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    return-void

    .line 386
    :cond_4
    :goto_2
    iget-object v0, p0, Lj$/util/stream/l2;->a:Lj$/util/stream/p2;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final s()J
    .locals 2

    .line 391
    iget-wide v0, p0, Lj$/util/stream/Q3;->b:J

    return-wide v0
.end method
