.class public Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowChatParticipants;
.super Lorg/telegram/tgnet/TLRPC$PrivacyRule;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_privacyValueDisallowChatParticipants"
.end annotation


# instance fields
.field public chats:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7276
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$PrivacyRule;-><init>()V

    .line 7279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowChatParticipants;->chats:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 0

    .line 7282
    invoke-static {p1, p2}, Lorg/telegram/tgnet/Vector;->deserializeLong(Lorg/telegram/tgnet/InputSerializedData;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowChatParticipants;->chats:Ljava/util/ArrayList;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x41c87565

    .line 7286
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 7287
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowChatParticipants;->chats:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serializeLong(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    return-void
.end method
