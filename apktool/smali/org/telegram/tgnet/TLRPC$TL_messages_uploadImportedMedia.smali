.class public Lorg/telegram/tgnet/TLRPC$TL_messages_uploadImportedMedia;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_uploadImportedMedia"
.end annotation


# instance fields
.field public file_name:Ljava/lang/String;

.field public import_id:J

.field public media:Lorg/telegram/tgnet/TLRPC$InputMedia;

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59941
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 59950
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x2a862092

    .line 59954
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 59955
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_uploadImportedMedia;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 59956
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_uploadImportedMedia;->import_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 59957
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_uploadImportedMedia;->file_name:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 59958
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_uploadImportedMedia;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    return-void
.end method
