.class public Lorg/telegram/tgnet/TLRPC$TL_pageListItemText;
.super Lorg/telegram/tgnet/TLRPC$PageListItem;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_pageListItemText"
.end annotation


# instance fields
.field public text:Lorg/telegram/tgnet/TLRPC$RichText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53483
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$PageListItem;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    .line 53489
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$RichText;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_pageListItemText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x46d04933

    .line 53493
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 53494
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageListItemText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    return-void
.end method
