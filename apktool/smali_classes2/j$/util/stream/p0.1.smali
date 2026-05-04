.class public final synthetic Lj$/util/stream/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lj$/util/stream/v0;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lj$/util/stream/v0;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lj$/util/stream/p0;->a:I

    iput-object p1, p0, Lj$/util/stream/p0;->b:Lj$/util/stream/v0;

    iput-object p2, p0, Lj$/util/stream/p0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lj$/util/stream/p0;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lj$/util/stream/p0;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/Predicate;

    .line 97
    new-instance v1, Lj$/util/stream/q0;

    iget-object v2, p0, Lj$/util/stream/p0;->b:Lj$/util/stream/v0;

    invoke-direct {v1, v2, v0}, Lj$/util/stream/q0;-><init>(Lj$/util/stream/v0;Ljava/util/function/Predicate;)V

    return-object v1

    .line 0
    :pswitch_0
    iget-object v0, p0, Lj$/util/stream/p0;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/IntPredicate;

    .line 126
    new-instance v1, Lj$/util/stream/r0;

    iget-object v2, p0, Lj$/util/stream/p0;->b:Lj$/util/stream/v0;

    invoke-direct {v1, v2, v0}, Lj$/util/stream/r0;-><init>(Lj$/util/stream/v0;Ljava/util/function/IntPredicate;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
