.class public final Lj$/util/stream/x;
.super Lj$/util/stream/A;
.source "SourceFile"


# instance fields
.field public final synthetic s:I

.field public final synthetic t:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lj$/util/stream/B;Ljava/util/function/DoubleConsumer;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lj$/util/stream/x;->s:I

    .line 346
    iput-object p2, p0, Lj$/util/stream/x;->t:Ljava/lang/Object;

    const/4 p2, 0x0

    .line 90
    invoke-direct {p0, p1, p2}, Lj$/util/stream/b;-><init>(Lj$/util/stream/b;I)V

    return-void
.end method

.method public synthetic constructor <init>(Lj$/util/stream/b;ILjava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lj$/util/stream/x;->s:I

    iput-object p3, p0, Lj$/util/stream/x;->t:Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lj$/util/stream/b;-><init>(Lj$/util/stream/b;I)V

    return-void
.end method


# virtual methods
.method public final D0(ILj$/util/stream/p2;)Lj$/util/stream/p2;
    .locals 1

    iget p1, p0, Lj$/util/stream/x;->s:I

    packed-switch p1, :pswitch_data_0

    .line 349
    new-instance p1, Lj$/util/stream/b2;

    invoke-direct {p1, p0, p2}, Lj$/util/stream/b2;-><init>(Lj$/util/stream/x;Lj$/util/stream/p2;)V

    return-object p1

    .line 243
    :pswitch_0
    new-instance p1, Lj$/util/stream/n;

    const/4 v0, 0x6

    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/n;-><init>(Lj$/util/stream/b;Lj$/util/stream/p2;I)V

    return-object p1

    .line 349
    :pswitch_1
    new-instance p1, Lj$/util/stream/r;

    const/4 v0, 0x5

    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/r;-><init>(Lj$/util/stream/b;Lj$/util/stream/p2;I)V

    return-object p1

    .line 266
    :pswitch_2
    new-instance p1, Lj$/util/stream/w;

    invoke-direct {p1, p0, p2}, Lj$/util/stream/w;-><init>(Lj$/util/stream/x;Lj$/util/stream/p2;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
