.class public Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_account;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "passwordInputSettings"
.end annotation


# static fields
.field public static final constructor:I = -0x3dc8d837


# instance fields
.field public email:Ljava/lang/String;

.field public flags:I

.field public hint:Ljava/lang/String;

.field public new_algo:Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;

.field public new_password_hash:[B

.field public new_secure_settings:Lorg/telegram/tgnet/TLRPC$TL_secureSecretSettings;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 604
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;
    .locals 2

    const v0, -0x3dc8d837

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 615
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;-><init>()V

    .line 616
    :goto_0
    const-class v1, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;

    return-object p0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    .line 620
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 622
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;->new_algo:Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;

    .line 624
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 625
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readByteArray(Z)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;->new_password_hash:[B

    .line 627
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 628
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;->hint:Ljava/lang/String;

    .line 630
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 631
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;->email:Ljava/lang/String;

    .line 633
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    .line 634
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_secureSecretSettings;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_secureSecretSettings;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;->new_secure_settings:Lorg/telegram/tgnet/TLRPC$TL_secureSecretSettings;

    :cond_4
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x3dc8d837

    .line 639
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 640
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 641
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;->new_algo:Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 644
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 645
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;->new_password_hash:[B

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeByteArray([B)V

    .line 647
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 648
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;->hint:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 650
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 651
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;->email:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 653
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    .line 654
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;->new_secure_settings:Lorg/telegram/tgnet/TLRPC$TL_secureSecretSettings;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_secureSecretSettings;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :cond_4
    return-void
.end method
