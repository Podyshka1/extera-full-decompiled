.class public Lorg/telegram/tgnet/TLRPC$TL_updates_state;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_updates_state"
.end annotation


# instance fields
.field public date:I

.field public pts:I

.field public qts:I

.field public seq:I

.field public unread_count:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48341
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_updates_state;
    .locals 2

    const v0, -0x5a93d5c2

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 48351
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updates_state;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updates_state;-><init>()V

    .line 48352
    :goto_0
    const-class v1, Lorg/telegram/tgnet/TLRPC$TL_updates_state;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_updates_state;

    return-object p0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    .line 48356
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_state;->pts:I

    .line 48357
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_state;->qts:I

    .line 48358
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_state;->date:I

    .line 48359
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_state;->seq:I

    .line 48360
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_state;->unread_count:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x5a93d5c2

    .line 48364
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 48365
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_state;->pts:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 48366
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_state;->qts:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 48367
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_state;->date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 48368
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_state;->seq:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 48369
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_state;->unread_count:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
