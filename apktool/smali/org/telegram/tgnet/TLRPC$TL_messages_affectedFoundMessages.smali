.class public Lorg/telegram/tgnet/TLRPC$TL_messages_affectedFoundMessages;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_affectedFoundMessages"
.end annotation


# instance fields
.field public messages:Ljava/util/ArrayList;

.field public offset:I

.field public pts:I

.field public pts_count:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5566
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 5572
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedFoundMessages;->messages:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_messages_affectedFoundMessages;
    .locals 2

    const v0, -0x1072c194

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 5575
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedFoundMessages;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedFoundMessages;-><init>()V

    .line 5576
    :goto_0
    const-class v1, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedFoundMessages;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedFoundMessages;

    return-object p0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    .line 5580
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedFoundMessages;->pts:I

    .line 5581
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedFoundMessages;->pts_count:I

    .line 5582
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedFoundMessages;->offset:I

    .line 5583
    invoke-static {p1, p2}, Lorg/telegram/tgnet/Vector;->deserializeInt(Lorg/telegram/tgnet/InputSerializedData;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedFoundMessages;->messages:Ljava/util/ArrayList;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x1072c194

    .line 5587
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 5588
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedFoundMessages;->pts:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 5589
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedFoundMessages;->pts_count:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 5590
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedFoundMessages;->offset:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 5591
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedFoundMessages;->messages:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serializeInt(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    return-void
.end method
