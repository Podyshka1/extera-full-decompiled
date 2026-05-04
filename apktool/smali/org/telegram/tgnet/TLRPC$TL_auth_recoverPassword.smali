.class public Lorg/telegram/tgnet/TLRPC$TL_auth_recoverPassword;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_auth_recoverPassword"
.end annotation


# instance fields
.field public code:Ljava/lang/String;

.field public flags:I

.field public new_settings:Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57480
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 57488
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$auth_Authorization;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$auth_Authorization;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x37096c70

    .line 57492
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 57493
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_recoverPassword;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 57494
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_recoverPassword;->code:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 57495
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_recoverPassword;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 57496
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_recoverPassword;->new_settings:Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :cond_0
    return-void
.end method
