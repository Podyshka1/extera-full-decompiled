.class public abstract Lj$/util/stream/g4;
.super Lj$/util/stream/j4;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntConsumer;
.implements Lj$/util/Spliterator$OfInt;


# instance fields
.field public final e:Ljava/util/function/IntPredicate;

.field public f:I


# direct methods
.method public constructor <init>(Lj$/util/Spliterator$OfInt;Lj$/util/stream/g4;)V
    .locals 0

    .line 833
    invoke-direct {p0, p1, p2}, Lj$/util/stream/j4;-><init>(Lj$/util/Spliterator;Lj$/util/stream/j4;)V

    .line 834
    iget-object p1, p2, Lj$/util/stream/g4;->e:Ljava/util/function/IntPredicate;

    iput-object p1, p0, Lj$/util/stream/g4;->e:Ljava/util/function/IntPredicate;

    return-void
.end method

.method public constructor <init>(Lj$/util/Spliterator$OfInt;Ljava/util/function/IntPredicate;)V
    .locals 0

    .line 828
    invoke-direct {p0, p1}, Lj$/util/stream/j4;-><init>(Lj$/util/Spliterator;)V

    .line 829
    iput-object p2, p0, Lj$/util/stream/g4;->e:Ljava/util/function/IntPredicate;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 1

    .line 839
    iget v0, p0, Lj$/util/stream/j4;->d:I

    add-int/lit8 v0, v0, 0x1

    and-int/lit8 v0, v0, 0x3f

    iput v0, p0, Lj$/util/stream/j4;->d:I

    .line 840
    iput p1, p0, Lj$/util/stream/g4;->f:I

    return-void
.end method

.method public final synthetic andThen(Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->c(Ljava/util/function/IntConsumer;Ljava/util/function/IntConsumer;)Lj$/util/function/d;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 650
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Lj$/util/stream/g4;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public final synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->k(Lj$/util/Spliterator$OfInt;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final forEachRemaining(Ljava/util/function/IntConsumer;)V
    .locals 1

    .line 660
    :cond_0
    invoke-interface {p0, p1}, Lj$/util/Spliterator$OfInt;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 885
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Lj$/util/stream/g4;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result p1

    return p1
.end method

.method public final synthetic tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->A(Lj$/util/Spliterator$OfInt;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method
