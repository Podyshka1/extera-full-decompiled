.class public final Lj$/util/stream/C1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/T1;
.implements Lj$/util/stream/m2;


# instance fields
.field public a:D

.field public final synthetic b:D

.field public final synthetic c:Ljava/util/function/DoubleBinaryOperator;


# direct methods
.method public constructor <init>(DLjava/util/function/DoubleBinaryOperator;)V
    .locals 0

    .line 634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lj$/util/stream/C1;->b:D

    iput-object p3, p0, Lj$/util/stream/C1;->c:Ljava/util/function/DoubleBinaryOperator;

    return-void
.end method


# virtual methods
.method public final synthetic A(Ljava/lang/Double;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/y1;->A(Lj$/util/stream/m2;Ljava/lang/Double;)V

    return-void
.end method

.method public final accept(D)V
    .locals 3

    .line 645
    iget-object v0, p0, Lj$/util/stream/C1;->c:Ljava/util/function/DoubleBinaryOperator;

    iget-wide v1, p0, Lj$/util/stream/C1;->a:D

    invoke-interface {v0, v1, v2, p1, p2}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide p1

    iput-wide p1, p0, Lj$/util/stream/C1;->a:D

    return-void
.end method

.method public final synthetic accept(I)V
    .locals 0

    invoke-static {}, Lj$/util/stream/y1;->G()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final synthetic accept(J)V
    .locals 0

    invoke-static {}, Lj$/util/stream/y1;->H()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/y1;->B(Lj$/util/stream/m2;Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic andThen(Ljava/util/function/DoubleConsumer;)Ljava/util/function/DoubleConsumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->b(Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleConsumer;)Lj$/util/function/b;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic end()V
    .locals 0

    return-void
.end method

.method public final get()Ljava/lang/Object;
    .locals 2

    .line 650
    iget-wide v0, p0, Lj$/util/stream/C1;->a:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public final m(J)V
    .locals 0

    .line 640
    iget-wide p1, p0, Lj$/util/stream/C1;->b:D

    iput-wide p1, p0, Lj$/util/stream/C1;->a:D

    return-void
.end method

.method public final synthetic p()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final t(Lj$/util/stream/T1;)V
    .locals 2

    .line 634
    check-cast p1, Lj$/util/stream/C1;

    .line 655
    iget-wide v0, p1, Lj$/util/stream/C1;->a:D

    invoke-virtual {p0, v0, v1}, Lj$/util/stream/C1;->accept(D)V

    return-void
.end method
