.class public final Lj$/util/stream/L1;
.super Lj$/util/stream/U1;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/T1;


# instance fields
.field public final synthetic b:Ljava/util/function/Supplier;

.field public final synthetic c:Ljava/util/function/BiConsumer;

.field public final synthetic d:Ljava/util/function/BinaryOperator;


# direct methods
.method public constructor <init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;)V
    .locals 0

    .line 872
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object p1, p0, Lj$/util/stream/L1;->b:Ljava/util/function/Supplier;

    iput-object p2, p0, Lj$/util/stream/L1;->c:Ljava/util/function/BiConsumer;

    iput-object p3, p0, Lj$/util/stream/L1;->d:Ljava/util/function/BinaryOperator;

    return-void
.end method


# virtual methods
.method public final synthetic accept(D)V
    .locals 0

    invoke-static {}, Lj$/util/stream/y1;->z()V

    const/4 p1, 0x0

    throw p1
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

.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 169
    iget-object v0, p0, Lj$/util/stream/L1;->c:Ljava/util/function/BiConsumer;

    iget-object v1, p0, Lj$/util/stream/U1;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic end()V
    .locals 0

    return-void
.end method

.method public final m(J)V
    .locals 0

    .line 164
    iget-object p1, p0, Lj$/util/stream/L1;->b:Ljava/util/function/Supplier;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lj$/util/stream/U1;->a:Ljava/lang/Object;

    return-void
.end method

.method public final synthetic p()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final t(Lj$/util/stream/T1;)V
    .locals 2

    .line 160
    check-cast p1, Lj$/util/stream/L1;

    .line 174
    iget-object v0, p0, Lj$/util/stream/U1;->a:Ljava/lang/Object;

    iget-object p1, p1, Lj$/util/stream/U1;->a:Ljava/lang/Object;

    iget-object v1, p0, Lj$/util/stream/L1;->d:Ljava/util/function/BinaryOperator;

    invoke-interface {v1, v0, p1}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lj$/util/stream/U1;->a:Ljava/lang/Object;

    return-void
.end method
