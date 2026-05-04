.class public Lorg/telegram/tgnet/TLRPC$TL_messages_updateDialogFilter;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_updateDialogFilter"
.end annotation


# instance fields
.field public filter:Lorg/telegram/tgnet/TLRPC$TL_dialogFilter;

.field public flags:I

.field public id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59467
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 59475
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Bool;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Bool;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x1ad4a04a

    .line 59479
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 59480
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_updateDialogFilter;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 59481
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_updateDialogFilter;->id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 59482
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_updateDialogFilter;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 59483
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_updateDialogFilter;->filter:Lorg/telegram/tgnet/TLRPC$TL_dialogFilter;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_dialogFilter;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :cond_0
    return-void
.end method
