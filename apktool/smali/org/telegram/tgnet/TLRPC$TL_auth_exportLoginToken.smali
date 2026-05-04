.class public Lorg/telegram/tgnet/TLRPC$TL_auth_exportLoginToken;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_auth_exportLoginToken"
.end annotation


# instance fields
.field public api_hash:Ljava/lang/String;

.field public api_id:I

.field public except_ids:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55317
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 55322
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_exportLoginToken;->except_ids:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 55325
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$auth_LoginToken;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$auth_LoginToken;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x481f7a02

    .line 55329
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 55330
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_exportLoginToken;->api_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 55331
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_exportLoginToken;->api_hash:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 55332
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_exportLoginToken;->except_ids:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serializeLong(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    return-void
.end method
