.class public Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminedPublicChannels;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_channels_getAdminedPublicChannels"
.end annotation


# instance fields
.field public by_location:Z

.field public check_limit:Z

.field public flags:I

.field public for_personal:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 60698
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 60707
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$messages_Chats;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$messages_Chats;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x74fc951

    .line 60711
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 60712
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminedPublicChannels;->by_location:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminedPublicChannels;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminedPublicChannels;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminedPublicChannels;->flags:I

    .line 60713
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminedPublicChannels;->check_limit:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminedPublicChannels;->flags:I

    .line 60714
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminedPublicChannels;->for_personal:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x5

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminedPublicChannels;->flags:I

    .line 60715
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
