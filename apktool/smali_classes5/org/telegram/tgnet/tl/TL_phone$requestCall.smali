.class public Lorg/telegram/tgnet/tl/TL_phone$requestCall;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_phone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "requestCall"
.end annotation


# static fields
.field public static final constructor:I = 0x42ff96ed


# instance fields
.field public flags:I

.field public g_a_hash:[B

.field public protocol:Lorg/telegram/tgnet/tl/TL_phone$TL_phoneCallProtocol;

.field public random_id:I

.field public user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

.field public video:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 461
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 472
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/tl/TL_phone$TL_phone_phoneCall;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_phone$TL_phone_phoneCall;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x42ff96ed

    .line 476
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 477
    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_phone$requestCall;->video:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/tl/TL_phone$requestCall;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_phone$requestCall;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_phone$requestCall;->flags:I

    .line 478
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 479
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_phone$requestCall;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 480
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_phone$requestCall;->random_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 481
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_phone$requestCall;->g_a_hash:[B

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeByteArray([B)V

    .line 482
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_phone$requestCall;->protocol:Lorg/telegram/tgnet/tl/TL_phone$TL_phoneCallProtocol;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/tl/TL_phone$TL_phoneCallProtocol;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    return-void
.end method
