.class public Lorg/telegram/tgnet/TLRPC$TL_auth_authorizationSignUpRequired;
.super Lorg/telegram/tgnet/TLRPC$auth_Authorization;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_auth_authorizationSignUpRequired"
.end annotation


# instance fields
.field public flags:I

.field public terms_of_service:Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2914
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$auth_Authorization;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    .line 2921
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_authorizationSignUpRequired;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2923
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_authorizationSignUpRequired;->terms_of_service:Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;

    :cond_0
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x44747e9a

    .line 2928
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 2929
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_authorizationSignUpRequired;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 2930
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_authorizationSignUpRequired;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2931
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_authorizationSignUpRequired;->terms_of_service:Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :cond_0
    return-void
.end method
