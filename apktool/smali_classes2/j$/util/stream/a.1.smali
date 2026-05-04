.class public final synthetic Lj$/util/stream/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lj$/util/stream/a;->a:I

    iput-object p2, p0, Lj$/util/stream/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lj$/util/stream/a;->a:I

    iget-object v1, p0, Lj$/util/stream/a;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast v1, Ljava/lang/CharSequence;

    sget-object v0, Lj$/util/stream/Collectors;->a:Ljava/util/Set;

    .line 403
    new-instance v0, Lj$/util/r0;

    invoke-direct {v0, v1}, Lj$/util/r0;-><init>(Ljava/lang/CharSequence;)V

    return-object v0

    .line 0
    :pswitch_0
    check-cast v1, Lj$/util/Spliterator;

    return-object v1

    .line 0
    :pswitch_1
    check-cast v1, Lj$/util/stream/b;

    const/4 v0, 0x0

    .line 367
    invoke-virtual {v1, v0}, Lj$/util/stream/b;->E0(I)Lj$/util/Spliterator;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
