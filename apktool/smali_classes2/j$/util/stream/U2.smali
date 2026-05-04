.class public final Lj$/util/stream/U2;
.super Lj$/util/stream/Y2;
.source "SourceFile"

# interfaces
.implements Lj$/util/Spliterator$OfInt;


# instance fields
.field public final synthetic g:Lj$/util/stream/V2;


# direct methods
.method public constructor <init>(Lj$/util/stream/V2;IIII)V
    .locals 0

    .line 818
    iput-object p1, p0, Lj$/util/stream/U2;->g:Lj$/util/stream/V2;

    .line 819
    invoke-direct/range {p0 .. p5}, Lj$/util/stream/Y2;-><init>(Lj$/util/stream/Z2;IIII)V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 815
    check-cast p2, [I

    check-cast p3, Ljava/util/function/IntConsumer;

    .line 832
    aget p1, p2, p1

    invoke-interface {p3, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void
.end method

.method public final b(Ljava/lang/Object;II)Lj$/util/c0;
    .locals 1

    .line 815
    check-cast p1, [I

    add-int/2addr p3, p2

    const/16 v0, 0x410

    .line 5540
    invoke-static {p1, p2, p3, v0}, Lj$/util/Spliterators;->spliterator([IIII)Lj$/util/Spliterator$OfInt;

    move-result-object p1

    return-object p1
.end method

.method public final c(IIII)Lj$/util/c0;
    .locals 6

    .line 826
    new-instance v0, Lj$/util/stream/U2;

    iget-object v1, p0, Lj$/util/stream/U2;->g:Lj$/util/stream/V2;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/U2;-><init>(Lj$/util/stream/V2;IIII)V

    return-object v0
.end method

.method public final synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->k(Lj$/util/Spliterator$OfInt;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->A(Lj$/util/Spliterator$OfInt;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method
