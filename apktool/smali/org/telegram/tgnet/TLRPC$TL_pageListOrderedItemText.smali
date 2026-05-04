.class public Lorg/telegram/tgnet/TLRPC$TL_pageListOrderedItemText;
.super Lorg/telegram/tgnet/TLRPC$PageListOrderedItem;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_pageListOrderedItemText"
.end annotation


# instance fields
.field public num:Ljava/lang/String;

.field public text:Lorg/telegram/tgnet/TLRPC$RichText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46964
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$PageListOrderedItem;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    .line 46971
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageListOrderedItemText;->num:Ljava/lang/String;

    .line 46972
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$RichText;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_pageListOrderedItemText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x5e068047

    .line 46976
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 46977
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageListOrderedItemText;->num:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 46978
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageListOrderedItemText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    return-void
.end method
