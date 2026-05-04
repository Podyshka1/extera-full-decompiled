.class public abstract Lorg/telegram/tgnet/TLRPC$PollResults;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PollResults"
.end annotation


# instance fields
.field public flags:I

.field public min:Z

.field public recent_voters:Ljava/util/ArrayList;

.field public results:Ljava/util/ArrayList;

.field public solution:Ljava/lang/String;

.field public solution_entities:Ljava/util/ArrayList;

.field public total_voters:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4201
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 4205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$PollResults;->results:Ljava/util/ArrayList;

    .line 4207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$PollResults;->recent_voters:Ljava/util/ArrayList;

    .line 4209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$PollResults;->solution_entities:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PollResults;
    .locals 2

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    .line 4227
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pollResults;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pollResults;-><init>()V

    goto :goto_0

    .line 4215
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pollResults_layer108;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pollResults_layer108;-><init>()V

    goto :goto_0

    .line 4224
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pollResults_layer158;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pollResults_layer158;-><init>()V

    goto :goto_0

    .line 4218
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pollResults_layer111;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pollResults_layer111;-><init>()V

    goto :goto_0

    .line 4221
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pollResults_layer131;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pollResults_layer131;-><init>()V

    .line 4230
    :goto_0
    const-class v1, Lorg/telegram/tgnet/TLRPC$PollResults;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$PollResults;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x45233e5d -> :sswitch_4
        -0x378fdb5e -> :sswitch_3
        -0x2347d15d -> :sswitch_2
        0x5755785a -> :sswitch_1
        0x7adf2420 -> :sswitch_0
    .end sparse-switch
.end method
