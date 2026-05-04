.class public Lorg/telegram/tgnet/TLRPC$TL_messageActionSuggestedPostSuccess;
.super Lorg/telegram/tgnet/TLRPC$MessageAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messageActionSuggestedPostSuccess"
.end annotation


# instance fields
.field public price:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25725
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$MessageAction;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    .line 25730
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionSuggestedPostSuccess;->price:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x6a223097

    .line 25734
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 25735
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionSuggestedPostSuccess;->price:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    return-void
.end method
