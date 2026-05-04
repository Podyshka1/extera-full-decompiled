.class public Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_channels_editAdmin"
.end annotation


# instance fields
.field public admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

.field public channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

.field public flags:I

.field public rank:Ljava/lang/String;

.field public user_id:Lorg/telegram/tgnet/TLRPC$InputUser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 60499
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 60509
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Updates;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Updates;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x65675298

    .line 60513
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 60514
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 60515
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 60516
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 60517
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 60518
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;->flags:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60519
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;->rank:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
