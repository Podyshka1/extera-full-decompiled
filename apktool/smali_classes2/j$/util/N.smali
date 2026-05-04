.class public final synthetic Lj$/util/N;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/PrimitiveIterator$OfLong;


# instance fields
.field public final synthetic a:Lj$/util/O;


# direct methods
.method public synthetic constructor <init>(Lj$/util/O;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/N;->a:Lj$/util/O;

    return-void
.end method


# virtual methods
.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/util/N;->a:Lj$/util/O;

    instance-of v1, p1, Lj$/util/N;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/util/N;

    iget-object p1, p1, Lj$/util/N;->a:Lj$/util/O;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lj$/util/N;->a:Lj$/util/O;

    invoke-interface {v0, p1}, Lj$/util/P;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 1

    iget-object v0, p0, Lj$/util/N;->a:Lj$/util/O;

    invoke-interface {v0, p1}, Lj$/util/O;->forEachRemaining(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic forEachRemaining(Ljava/util/function/LongConsumer;)V
    .locals 1

    iget-object v0, p0, Lj$/util/N;->a:Lj$/util/O;

    invoke-interface {v0, p1}, Lj$/util/O;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method public final synthetic hasNext()Z
    .locals 1

    iget-object v0, p0, Lj$/util/N;->a:Lj$/util/O;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/util/N;->a:Lj$/util/O;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lj$/util/N;->a:Lj$/util/O;

    invoke-interface {v0}, Lj$/util/O;->next()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lj$/util/N;->a:Lj$/util/O;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic nextLong()J
    .locals 2

    iget-object v0, p0, Lj$/util/N;->a:Lj$/util/O;

    invoke-interface {v0}, Lj$/util/O;->nextLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public final synthetic remove()V
    .locals 1

    iget-object v0, p0, Lj$/util/N;->a:Lj$/util/O;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
