.class public Lorg/telegram/tgnet/tl/TL_account$initPasskeyLogin;
.super Lorg/telegram/tgnet/TLMethod;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_account;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "initPasskeyLogin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/telegram/tgnet/TLMethod;"
    }
.end annotation


# static fields
.field public static final constructor:I = 0x518ad0b7


# instance fields
.field public api_hash:Ljava/lang/String;

.field public api_id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4214
    invoke-direct {p0}, Lorg/telegram/tgnet/TLMethod;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic deserializeResponseT(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 4214
    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/tgnet/tl/TL_account$initPasskeyLogin;->deserializeResponseT(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_account$passkeyLoginOptions;

    move-result-object p1

    return-object p1
.end method

.method public deserializeResponseT(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_account$passkeyLoginOptions;
    .locals 0

    .line 4222
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/tl/TL_account$passkeyLoginOptions;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_account$passkeyLoginOptions;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x518ad0b7

    .line 4227
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 4228
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$initPasskeyLogin;->api_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 4229
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$initPasskeyLogin;->api_hash:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    return-void
.end method
