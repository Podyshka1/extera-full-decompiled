.class public Lorg/telegram/tgnet/TLRPC$TL_help_peerColorOption;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_help_peerColorOption"
.end annotation


# instance fields
.field public channel_min_level:I

.field public color_id:I

.field public colors:Lorg/telegram/tgnet/TLRPC$help_PeerColorSet;

.field public dark_colors:Lorg/telegram/tgnet/TLRPC$help_PeerColorSet;

.field public flags:I

.field public group_min_level:I

.field public hidden:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_help_peerColorOption;
    .locals 2

    const v0, -0x52139142

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_help_peerColorOption;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_help_peerColorOption;-><init>()V

    :goto_0
    const-class v1, Lorg/telegram/tgnet/TLRPC$TL_help_peerColorOption;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_help_peerColorOption;

    return-object p0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_peerColorOption;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_help_peerColorOption;->hidden:Z

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_peerColorOption;->color_id:I

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_peerColorOption;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$help_PeerColorSet;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$help_PeerColorSet;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_peerColorOption;->colors:Lorg/telegram/tgnet/TLRPC$help_PeerColorSet;

    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_peerColorOption;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$help_PeerColorSet;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$help_PeerColorSet;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_peerColorOption;->dark_colors:Lorg/telegram/tgnet/TLRPC$help_PeerColorSet;

    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_peerColorOption;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_peerColorOption;->channel_min_level:I

    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_peerColorOption;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_help_peerColorOption;->group_min_level:I

    :cond_4
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x52139142

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_peerColorOption;->hidden:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_peerColorOption;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_peerColorOption;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_peerColorOption;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_peerColorOption;->color_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_peerColorOption;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_peerColorOption;->colors:Lorg/telegram/tgnet/TLRPC$help_PeerColorSet;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_peerColorOption;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_peerColorOption;->dark_colors:Lorg/telegram/tgnet/TLRPC$help_PeerColorSet;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_peerColorOption;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_peerColorOption;->channel_min_level:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_peerColorOption;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_peerColorOption;->group_min_level:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    :cond_4
    return-void
.end method
