.class public Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerDialogs;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_getPeerDialogs"
.end annotation


# instance fields
.field public peers:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57966
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 57969
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerDialogs;->peers:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 57972
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x1b8f4303

    .line 57976
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 57977
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerDialogs;->peers:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    return-void
.end method
