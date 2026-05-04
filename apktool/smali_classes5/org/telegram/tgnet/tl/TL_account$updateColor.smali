.class public Lorg/telegram/tgnet/tl/TL_account$updateColor;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_account;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "updateColor"
.end annotation


# static fields
.field public static final constructor:I = 0x684d214e


# instance fields
.field public color:Lorg/telegram/tgnet/TLRPC$PeerColor;

.field public flags:I

.field public for_profile:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2268
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 2276
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Bool;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Bool;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x684d214e

    .line 2280
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 2281
    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_account$updateColor;->for_profile:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$updateColor;->flags:I

    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$updateColor;->flags:I

    and-int/lit8 v0, v0, -0x3

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_account$updateColor;->flags:I

    .line 2282
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 2283
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$updateColor;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 2284
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$updateColor;->color:Lorg/telegram/tgnet/TLRPC$PeerColor;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :cond_1
    return-void
.end method
