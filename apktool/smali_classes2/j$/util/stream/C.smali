.class public final synthetic Lj$/util/stream/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/E;


# instance fields
.field public final synthetic a:Ljava/util/stream/DoubleStream;


# direct methods
.method public synthetic constructor <init>(Ljava/util/stream/DoubleStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/stream/C;->a:Ljava/util/stream/DoubleStream;

    return-void
.end method

.method public static synthetic f(Ljava/util/stream/DoubleStream;)Lj$/util/stream/E;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/util/stream/D;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/util/stream/D;

    iget-object p0, p0, Lj$/util/stream/D;->a:Lj$/util/stream/E;

    return-object p0

    :cond_1
    new-instance v0, Lj$/util/stream/C;

    invoke-direct {v0, p0}, Lj$/util/stream/C;-><init>(Ljava/util/stream/DoubleStream;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lj$/time/s;)Lj$/util/stream/E;
    .locals 3

    .line 0
    iget-object v0, p0, Lj$/util/stream/C;->a:Ljava/util/stream/DoubleStream;

    .line 25
    new-instance v1, Lj$/time/s;

    const/4 v2, 0x5

    .line 116
    invoke-direct {v1, v2}, Lj$/time/s;-><init>(I)V

    .line 117
    iput-object p1, v1, Lj$/time/s;->b:Ljava/lang/Object;

    .line 0
    invoke-interface {v0, v1}, Ljava/util/stream/DoubleStream;->flatMap(Ljava/util/function/DoubleFunction;)Ljava/util/stream/DoubleStream;

    move-result-object p1

    invoke-static {p1}, Lj$/util/stream/C;->f(Ljava/util/stream/DoubleStream;)Lj$/util/stream/E;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic average()Lj$/util/B;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/C;->a:Ljava/util/stream/DoubleStream;

    invoke-interface {v0}, Ljava/util/stream/DoubleStream;->average()Ljava/util/OptionalDouble;

    move-result-object v0

    invoke-static {v0}, Lj$/com/android/tools/r8/a;->F(Ljava/util/OptionalDouble;)Lj$/util/B;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b()Lj$/util/stream/E;
    .locals 2

    const/4 v0, 0x0

    .line 0
    iget-object v1, p0, Lj$/util/stream/C;->a:Ljava/util/stream/DoubleStream;

    invoke-interface {v1, v0}, Ljava/util/stream/DoubleStream;->takeWhile(Ljava/util/function/DoublePredicate;)Ljava/util/stream/DoubleStream;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/C;->f(Ljava/util/stream/DoubleStream;)Lj$/util/stream/E;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic boxed()Lj$/util/stream/Stream;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/C;->a:Ljava/util/stream/DoubleStream;

    invoke-interface {v0}, Ljava/util/stream/DoubleStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/Stream$VivifiedWrapper;->convert(Ljava/util/stream/Stream;)Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lj$/util/stream/E;
    .locals 2

    const/4 v0, 0x0

    .line 0
    iget-object v1, p0, Lj$/util/stream/C;->a:Ljava/util/stream/DoubleStream;

    invoke-interface {v1, v0}, Ljava/util/stream/DoubleStream;->filter(Ljava/util/function/DoublePredicate;)Ljava/util/stream/DoubleStream;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/C;->f(Ljava/util/stream/DoubleStream;)Lj$/util/stream/E;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic close()V
    .locals 1

    iget-object v0, p0, Lj$/util/stream/C;->a:Ljava/util/stream/DoubleStream;

    invoke-interface {v0}, Ljava/util/stream/BaseStream;->close()V

    return-void
.end method

.method public final synthetic collect(Ljava/util/function/Supplier;Ljava/util/function/ObjDoubleConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/C;->a:Ljava/util/stream/DoubleStream;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/stream/DoubleStream;->collect(Ljava/util/function/Supplier;Ljava/util/function/ObjDoubleConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic count()J
    .locals 2

    iget-object v0, p0, Lj$/util/stream/C;->a:Ljava/util/stream/DoubleStream;

    invoke-interface {v0}, Ljava/util/stream/DoubleStream;->count()J

    move-result-wide v0

    return-wide v0
.end method

.method public final synthetic d()Lj$/util/stream/E;
    .locals 2

    const/4 v0, 0x0

    .line 0
    iget-object v1, p0, Lj$/util/stream/C;->a:Ljava/util/stream/DoubleStream;

    invoke-interface {v1, v0}, Ljava/util/stream/DoubleStream;->dropWhile(Ljava/util/function/DoublePredicate;)Ljava/util/stream/DoubleStream;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/C;->f(Ljava/util/stream/DoubleStream;)Lj$/util/stream/E;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic distinct()Lj$/util/stream/E;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/C;->a:Ljava/util/stream/DoubleStream;

    invoke-interface {v0}, Ljava/util/stream/DoubleStream;->distinct()Ljava/util/stream/DoubleStream;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/C;->f(Ljava/util/stream/DoubleStream;)Lj$/util/stream/E;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lj$/util/stream/E;
    .locals 2

    const/4 v0, 0x0

    .line 0
    iget-object v1, p0, Lj$/util/stream/C;->a:Ljava/util/stream/DoubleStream;

    invoke-interface {v1, v0}, Ljava/util/stream/DoubleStream;->map(Ljava/util/function/DoubleUnaryOperator;)Ljava/util/stream/DoubleStream;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/C;->f(Ljava/util/stream/DoubleStream;)Lj$/util/stream/E;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/util/stream/C;->a:Ljava/util/stream/DoubleStream;

    instance-of v1, p1, Lj$/util/stream/C;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/util/stream/C;

    iget-object p1, p1, Lj$/util/stream/C;->a:Ljava/util/stream/DoubleStream;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic findAny()Lj$/util/B;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/C;->a:Ljava/util/stream/DoubleStream;

    invoke-interface {v0}, Ljava/util/stream/DoubleStream;->findAny()Ljava/util/OptionalDouble;

    move-result-object v0

    invoke-static {v0}, Lj$/com/android/tools/r8/a;->F(Ljava/util/OptionalDouble;)Lj$/util/B;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic findFirst()Lj$/util/B;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/C;->a:Ljava/util/stream/DoubleStream;

    invoke-interface {v0}, Ljava/util/stream/DoubleStream;->findFirst()Ljava/util/OptionalDouble;

    move-result-object v0

    invoke-static {v0}, Lj$/com/android/tools/r8/a;->F(Ljava/util/OptionalDouble;)Lj$/util/B;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic forEach(Ljava/util/function/DoubleConsumer;)V
    .locals 1

    iget-object v0, p0, Lj$/util/stream/C;->a:Ljava/util/stream/DoubleStream;

    invoke-interface {v0, p1}, Ljava/util/stream/DoubleStream;->forEach(Ljava/util/function/DoubleConsumer;)V

    return-void
.end method

.method public final synthetic forEachOrdered(Ljava/util/function/DoubleConsumer;)V
    .locals 1

    iget-object v0, p0, Lj$/util/stream/C;->a:Ljava/util/stream/DoubleStream;

    invoke-interface {v0, p1}, Ljava/util/stream/DoubleStream;->forEachOrdered(Ljava/util/function/DoubleConsumer;)V

    return-void
.end method

.method public final synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/util/stream/C;->a:Ljava/util/stream/DoubleStream;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final synthetic isParallel()Z
    .locals 1

    iget-object v0, p0, Lj$/util/stream/C;->a:Ljava/util/stream/DoubleStream;

    invoke-interface {v0}, Ljava/util/stream/BaseStream;->isParallel()Z

    move-result v0

    return v0
.end method

.method public final synthetic iterator()Lj$/util/G;
    .locals 2

    iget-object v0, p0, Lj$/util/stream/C;->a:Ljava/util/stream/DoubleStream;

    invoke-interface {v0}, Ljava/util/stream/DoubleStream;->iterator()Ljava/util/PrimitiveIterator$OfDouble;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 0
    :cond_0
    instance-of v1, v0, Lj$/util/F;

    if-eqz v1, :cond_1

    check-cast v0, Lj$/util/F;

    iget-object v0, v0, Lj$/util/F;->a:Lj$/util/G;

    return-object v0

    :cond_1
    new-instance v1, Lj$/util/E;

    invoke-direct {v1, v0}, Lj$/util/E;-><init>(Ljava/util/PrimitiveIterator$OfDouble;)V

    return-object v1
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/C;->a:Ljava/util/stream/DoubleStream;

    invoke-interface {v0}, Ljava/util/stream/DoubleStream;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic l()Z
    .locals 2

    const/4 v0, 0x0

    .line 0
    iget-object v1, p0, Lj$/util/stream/C;->a:Ljava/util/stream/DoubleStream;

    invoke-interface {v1, v0}, Ljava/util/stream/DoubleStream;->anyMatch(Ljava/util/function/DoublePredicate;)Z

    move-result v0

    return v0
.end method

.method public final synthetic limit(J)Lj$/util/stream/E;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/C;->a:Ljava/util/stream/DoubleStream;

    invoke-interface {v0, p1, p2}, Ljava/util/stream/DoubleStream;->limit(J)Ljava/util/stream/DoubleStream;

    move-result-object p1

    invoke-static {p1}, Lj$/util/stream/C;->f(Ljava/util/stream/DoubleStream;)Lj$/util/stream/E;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mapToObj(Ljava/util/function/DoubleFunction;)Lj$/util/stream/Stream;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/C;->a:Ljava/util/stream/DoubleStream;

    invoke-interface {v0, p1}, Ljava/util/stream/DoubleStream;->mapToObj(Ljava/util/function/DoubleFunction;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {p1}, Lj$/util/stream/Stream$VivifiedWrapper;->convert(Ljava/util/stream/Stream;)Lj$/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic max()Lj$/util/B;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/C;->a:Ljava/util/stream/DoubleStream;

    invoke-interface {v0}, Ljava/util/stream/DoubleStream;->max()Ljava/util/OptionalDouble;

    move-result-object v0

    invoke-static {v0}, Lj$/com/android/tools/r8/a;->F(Ljava/util/OptionalDouble;)Lj$/util/B;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic min()Lj$/util/B;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/C;->a:Ljava/util/stream/DoubleStream;

    invoke-interface {v0}, Ljava/util/stream/DoubleStream;->min()Ljava/util/OptionalDouble;

    move-result-object v0

    invoke-static {v0}, Lj$/com/android/tools/r8/a;->F(Ljava/util/OptionalDouble;)Lj$/util/B;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/C;->a:Ljava/util/stream/DoubleStream;

    invoke-interface {v0, p1}, Ljava/util/stream/BaseStream;->onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;

    move-result-object p1

    invoke-static {p1}, Lj$/util/stream/f;->f(Ljava/util/stream/BaseStream;)Lj$/util/stream/BaseStream;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic parallel()Lj$/util/stream/BaseStream;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/C;->a:Ljava/util/stream/DoubleStream;

    invoke-interface {v0}, Ljava/util/stream/DoubleStream;->parallel()Ljava/util/stream/BaseStream;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/f;->f(Ljava/util/stream/BaseStream;)Lj$/util/stream/BaseStream;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic parallel()Lj$/util/stream/E;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/C;->a:Ljava/util/stream/DoubleStream;

    invoke-interface {v0}, Ljava/util/stream/DoubleStream;->parallel()Ljava/util/stream/DoubleStream;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/C;->f(Ljava/util/stream/DoubleStream;)Lj$/util/stream/E;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic peek(Ljava/util/function/DoubleConsumer;)Lj$/util/stream/E;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/C;->a:Ljava/util/stream/DoubleStream;

    invoke-interface {v0, p1}, Ljava/util/stream/DoubleStream;->peek(Ljava/util/function/DoubleConsumer;)Ljava/util/stream/DoubleStream;

    move-result-object p1

    invoke-static {p1}, Lj$/util/stream/C;->f(Ljava/util/stream/DoubleStream;)Lj$/util/stream/E;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic q()Z
    .locals 2

    const/4 v0, 0x0

    .line 0
    iget-object v1, p0, Lj$/util/stream/C;->a:Ljava/util/stream/DoubleStream;

    invoke-interface {v1, v0}, Ljava/util/stream/DoubleStream;->allMatch(Ljava/util/function/DoublePredicate;)Z

    move-result v0

    return v0
.end method

.method public final synthetic r()Lj$/util/stream/LongStream;
    .locals 2

    const/4 v0, 0x0

    .line 0
    iget-object v1, p0, Lj$/util/stream/C;->a:Ljava/util/stream/DoubleStream;

    invoke-interface {v1, v0}, Ljava/util/stream/DoubleStream;->mapToLong(Ljava/util/function/DoubleToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/m0;->f(Ljava/util/stream/LongStream;)Lj$/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic reduce(DLjava/util/function/DoubleBinaryOperator;)D
    .locals 1

    iget-object v0, p0, Lj$/util/stream/C;->a:Ljava/util/stream/DoubleStream;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/stream/DoubleStream;->reduce(DLjava/util/function/DoubleBinaryOperator;)D

    move-result-wide p1

    return-wide p1
.end method

.method public final synthetic reduce(Ljava/util/function/DoubleBinaryOperator;)Lj$/util/B;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/C;->a:Ljava/util/stream/DoubleStream;

    invoke-interface {v0, p1}, Ljava/util/stream/DoubleStream;->reduce(Ljava/util/function/DoubleBinaryOperator;)Ljava/util/OptionalDouble;

    move-result-object p1

    invoke-static {p1}, Lj$/com/android/tools/r8/a;->F(Ljava/util/OptionalDouble;)Lj$/util/B;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic sequential()Lj$/util/stream/BaseStream;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/C;->a:Ljava/util/stream/DoubleStream;

    invoke-interface {v0}, Ljava/util/stream/DoubleStream;->sequential()Ljava/util/stream/BaseStream;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/f;->f(Ljava/util/stream/BaseStream;)Lj$/util/stream/BaseStream;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic sequential()Lj$/util/stream/E;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/C;->a:Ljava/util/stream/DoubleStream;

    invoke-interface {v0}, Ljava/util/stream/DoubleStream;->sequential()Ljava/util/stream/DoubleStream;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/C;->f(Ljava/util/stream/DoubleStream;)Lj$/util/stream/E;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic skip(J)Lj$/util/stream/E;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/C;->a:Ljava/util/stream/DoubleStream;

    invoke-interface {v0, p1, p2}, Ljava/util/stream/DoubleStream;->skip(J)Ljava/util/stream/DoubleStream;

    move-result-object p1

    invoke-static {p1}, Lj$/util/stream/C;->f(Ljava/util/stream/DoubleStream;)Lj$/util/stream/E;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic sorted()Lj$/util/stream/E;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/C;->a:Ljava/util/stream/DoubleStream;

    invoke-interface {v0}, Ljava/util/stream/DoubleStream;->sorted()Ljava/util/stream/DoubleStream;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/C;->f(Ljava/util/stream/DoubleStream;)Lj$/util/stream/E;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic spliterator()Lj$/util/Spliterator;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/C;->a:Ljava/util/stream/DoubleStream;

    invoke-interface {v0}, Ljava/util/stream/DoubleStream;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/d0;->a(Ljava/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic spliterator()Lj$/util/U;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/C;->a:Ljava/util/stream/DoubleStream;

    invoke-interface {v0}, Ljava/util/stream/DoubleStream;->spliterator()Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    invoke-static {v0}, Lj$/util/S;->a(Ljava/util/Spliterator$OfDouble;)Lj$/util/U;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic sum()D
    .locals 2

    iget-object v0, p0, Lj$/util/stream/C;->a:Ljava/util/stream/DoubleStream;

    invoke-interface {v0}, Ljava/util/stream/DoubleStream;->sum()D

    move-result-wide v0

    return-wide v0
.end method

.method public final summaryStatistics()Lj$/util/w;
    .locals 2

    iget-object v0, p0, Lj$/util/stream/C;->a:Ljava/util/stream/DoubleStream;

    invoke-interface {v0}, Ljava/util/stream/DoubleStream;->summaryStatistics()Ljava/util/DoubleSummaryStatistics;

    .line 18
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Java 8+ API desugaring (library desugaring) cannot convert from java.util.DoubleSummaryStatistics"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final synthetic toArray()[D
    .locals 1

    iget-object v0, p0, Lj$/util/stream/C;->a:Ljava/util/stream/DoubleStream;

    invoke-interface {v0}, Ljava/util/stream/DoubleStream;->toArray()[D

    move-result-object v0

    return-object v0
.end method

.method public final synthetic unordered()Lj$/util/stream/BaseStream;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/C;->a:Ljava/util/stream/DoubleStream;

    invoke-interface {v0}, Ljava/util/stream/BaseStream;->unordered()Ljava/util/stream/BaseStream;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/f;->f(Ljava/util/stream/BaseStream;)Lj$/util/stream/BaseStream;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic w()Lj$/util/stream/IntStream;
    .locals 2

    const/4 v0, 0x0

    .line 0
    iget-object v1, p0, Lj$/util/stream/C;->a:Ljava/util/stream/DoubleStream;

    invoke-interface {v1, v0}, Ljava/util/stream/DoubleStream;->mapToInt(Ljava/util/function/DoubleToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/IntStream$VivifiedWrapper;->convert(Ljava/util/stream/IntStream;)Lj$/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic y()Z
    .locals 2

    const/4 v0, 0x0

    .line 0
    iget-object v1, p0, Lj$/util/stream/C;->a:Ljava/util/stream/DoubleStream;

    invoke-interface {v1, v0}, Ljava/util/stream/DoubleStream;->noneMatch(Ljava/util/function/DoublePredicate;)Z

    move-result v0

    return v0
.end method
