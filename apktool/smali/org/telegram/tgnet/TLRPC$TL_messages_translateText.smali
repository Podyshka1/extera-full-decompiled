.class public Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_translateText"
.end annotation


# instance fields
.field public flags:I

.field public id:Ljava/util/ArrayList;

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public text:Ljava/util/ArrayList;

.field public to_lang:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59136
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 59141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->id:Ljava/util/ArrayList;

    .line 59142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->text:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 59146
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$TL_messages_translateResult;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_messages_translateResult;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x63183030

    .line 59150
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 59151
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 59152
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 59153
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 59155
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 59156
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->id:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serializeInt(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 59158
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 59159
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->text:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 59161
    :cond_2
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->to_lang:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    return-void
.end method
