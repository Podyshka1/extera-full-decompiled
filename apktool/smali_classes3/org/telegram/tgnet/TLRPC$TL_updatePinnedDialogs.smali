.class public Lorg/telegram/tgnet/TLRPC$TL_updatePinnedDialogs;
.super Lorg/telegram/tgnet/TLRPC$Update;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_updatePinnedDialogs"
.end annotation


# instance fields
.field public flags:I

.field public folder_id:I

.field public order:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34276
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Update;-><init>()V

    .line 34281
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedDialogs;->order:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    .line 34284
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedDialogs;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 34286
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedDialogs;->folder_id:I

    .line 34288
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedDialogs;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 34289
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogUnreadMarks$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogUnreadMarks$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedDialogs;->order:Ljava/util/ArrayList;

    :cond_1
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x5f0c35e

    .line 34294
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 34295
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedDialogs;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 34296
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedDialogs;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 34297
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedDialogs;->folder_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 34299
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedDialogs;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 34300
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedDialogs;->order:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method
