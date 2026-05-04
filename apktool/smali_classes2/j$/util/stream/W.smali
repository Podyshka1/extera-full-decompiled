.class public final Lj$/util/stream/W;
.super Lj$/util/stream/b0;
.source "SourceFile"


# instance fields
.field public final synthetic s:I

.field public final synthetic t:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lj$/util/stream/b;ILjava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lj$/util/stream/W;->s:I

    iput-object p3, p0, Lj$/util/stream/W;->t:Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lj$/util/stream/b;-><init>(Lj$/util/stream/b;I)V

    return-void
.end method

.method public constructor <init>(Lj$/util/stream/c0;Ljava/util/function/IntConsumer;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lj$/util/stream/W;->s:I

    .line 380
    iput-object p2, p0, Lj$/util/stream/W;->t:Ljava/lang/Object;

    const/4 p2, 0x0

    .line 91
    invoke-direct {p0, p1, p2}, Lj$/util/stream/b;-><init>(Lj$/util/stream/b;I)V

    return-void
.end method


# virtual methods
.method public final D0(ILj$/util/stream/p2;)Lj$/util/stream/p2;
    .locals 1

    iget p1, p0, Lj$/util/stream/W;->s:I

    packed-switch p1, :pswitch_data_0

    .line 305
    new-instance p1, Lj$/util/stream/d2;

    invoke-direct {p1, p0, p2}, Lj$/util/stream/d2;-><init>(Lj$/util/stream/W;Lj$/util/stream/p2;)V

    return-object p1

    .line 209
    :pswitch_0
    new-instance p1, Lj$/util/stream/n;

    const/4 v0, 0x4

    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/n;-><init>(Lj$/util/stream/b;Lj$/util/stream/p2;I)V

    return-object p1

    .line 360
    :pswitch_1
    new-instance p1, Lj$/util/stream/V;

    const/4 v0, 0x5

    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/V;-><init>(Lj$/util/stream/b;Lj$/util/stream/p2;I)V

    return-object p1

    .line 300
    :pswitch_2
    new-instance p1, Lj$/util/stream/Y;

    invoke-direct {p1, p0, p2}, Lj$/util/stream/Y;-><init>(Lj$/util/stream/W;Lj$/util/stream/p2;)V

    return-object p1

    .line 243
    :pswitch_3
    new-instance p1, Lj$/util/stream/V;

    const/4 v0, 0x2

    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/V;-><init>(Lj$/util/stream/b;Lj$/util/stream/p2;I)V

    return-object p1

    .line 383
    :pswitch_4
    new-instance p1, Lj$/util/stream/V;

    const/4 v0, 0x1

    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/V;-><init>(Lj$/util/stream/b;Lj$/util/stream/p2;I)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
