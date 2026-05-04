.class public final Lj$/util/stream/W2;
.super Lj$/util/stream/Y2;
.source "SourceFile"

# interfaces
.implements Lj$/util/Z;


# instance fields
.field public final synthetic g:Lj$/util/stream/X2;


# direct methods
.method public constructor <init>(Lj$/util/stream/X2;IIII)V
    .locals 0

    .line 932
    iput-object p1, p0, Lj$/util/stream/W2;->g:Lj$/util/stream/X2;

    .line 933
    invoke-direct/range {p0 .. p5}, Lj$/util/stream/Y2;-><init>(Lj$/util/stream/Z2;IIII)V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 929
    check-cast p2, [J

    check-cast p3, Ljava/util/function/LongConsumer;

    .line 946
    aget-wide p1, p2, p1

    invoke-interface {p3, p1, p2}, Ljava/util/function/LongConsumer;->accept(J)V

    return-void
.end method

.method public final b(Ljava/lang/Object;II)Lj$/util/c0;
    .locals 0

    .line 929
    check-cast p1, [J

    add-int/2addr p3, p2

    .line 951
    invoke-static {p1, p2, p3}, Lj$/util/DesugarArrays;->b([JII)Lj$/util/q0;

    move-result-object p1

    return-object p1
.end method

.method public final c(IIII)Lj$/util/c0;
    .locals 6

    .line 940
    new-instance v0, Lj$/util/stream/W2;

    iget-object v1, p0, Lj$/util/stream/W2;->g:Lj$/util/stream/X2;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/W2;-><init>(Lj$/util/stream/X2;IIII)V

    return-object v0
.end method

.method public final synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->l(Lj$/util/Z;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->B(Lj$/util/Z;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method
