.class public Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_startBot"
.end annotation


# instance fields
.field public bot:Lorg/telegram/tgnet/TLRPC$InputUser;

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public random_id:J

.field public start_param:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57657
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 57666
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Updates;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Updates;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x19208c88

    .line 57670
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 57671
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 57672
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 57673
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;->random_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 57674
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;->start_param:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    return-void
.end method
