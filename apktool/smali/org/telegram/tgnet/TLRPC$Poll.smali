.class public abstract Lorg/telegram/tgnet/TLRPC$Poll;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Poll"
.end annotation


# instance fields
.field public answers:Ljava/util/ArrayList;

.field public close_date:I

.field public close_period:I

.field public closed:Z

.field public flags:I

.field public id:J

.field public multiple_choice:Z

.field public public_voters:Z

.field public question:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

.field public quiz:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37575
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 37583
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Poll;->question:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    .line 37584
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Poll;->answers:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Poll;
    .locals 2

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    .line 37592
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_poll;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_poll;-><init>()V

    goto :goto_0

    .line 37601
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_poll_layer111;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_poll_layer111;-><init>()V

    goto :goto_0

    .line 37598
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_poll_toDelete;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_poll_toDelete;-><init>()V

    goto :goto_0

    .line 37595
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_poll_layer178;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_poll_layer178;-><init>()V

    .line 37604
    :goto_0
    const-class v1, Lorg/telegram/tgnet/TLRPC$Poll;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$Poll;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x791e7e9f -> :sswitch_3
        -0x508b987a -> :sswitch_2
        -0x2aad62fa -> :sswitch_1
        0x58747131 -> :sswitch_0
    .end sparse-switch
.end method
