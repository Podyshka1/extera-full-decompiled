.class public final Lj$/util/stream/O;
.super Lj$/util/stream/S;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/n2;


# instance fields
.field public final b:Ljava/util/function/IntConsumer;


# direct methods
.method public constructor <init>(Ljava/util/function/IntConsumer;Z)V
    .locals 0

    .line 193
    invoke-direct {p0, p2}, Lj$/util/stream/S;-><init>(Z)V

    .line 194
    iput-object p1, p0, Lj$/util/stream/O;->b:Ljava/util/function/IntConsumer;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 1

    .line 204
    iget-object v0, p0, Lj$/util/stream/O;->b:Ljava/util/function/IntConsumer;

    invoke-interface {v0, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void
.end method

.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/y1;->D(Lj$/util/stream/n2;Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic andThen(Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->c(Ljava/util/function/IntConsumer;Ljava/util/function/IntConsumer;)Lj$/util/function/d;

    move-result-object p1

    return-object p1
.end method

.method public final f(Lj$/util/stream/b;Lj$/util/Spliterator;)Ljava/lang/Object;
    .locals 0

    .line 150
    invoke-virtual {p1, p2, p0}, Lj$/util/stream/b;->s0(Lj$/util/Spliterator;Lj$/util/stream/p2;)Lj$/util/stream/p2;

    const/4 p1, 0x0

    return-object p1
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final bridge synthetic i(Lj$/util/stream/y1;Lj$/util/Spliterator;)Ljava/lang/Object;
    .locals 0

    .line 188
    invoke-virtual {p0, p1, p2}, Lj$/util/stream/S;->a(Lj$/util/stream/y1;Lj$/util/Spliterator;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final synthetic n(Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/y1;->C(Lj$/util/stream/n2;Ljava/lang/Integer;)V

    return-void
.end method
