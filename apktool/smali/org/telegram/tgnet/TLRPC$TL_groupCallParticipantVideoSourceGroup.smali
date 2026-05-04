.class public Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_groupCallParticipantVideoSourceGroup"
.end annotation


# instance fields
.field public semantics:Ljava/lang/String;

.field public sources:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37033
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 37037
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;->sources:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;
    .locals 2

    const v0, -0x234ee749

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 37040
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;-><init>()V

    .line 37041
    :goto_0
    const-class v1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;

    return-object p0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    .line 37045
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;->semantics:Ljava/lang/String;

    .line 37046
    invoke-static {p1, p2}, Lorg/telegram/tgnet/Vector;->deserializeInt(Lorg/telegram/tgnet/InputSerializedData;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;->sources:Ljava/util/ArrayList;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x234ee749

    .line 37050
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 37051
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;->semantics:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 37052
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;->sources:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serializeInt(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    return-void
.end method
