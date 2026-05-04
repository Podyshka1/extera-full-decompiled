.class public Lorg/telegram/tgnet/tl/TL_account$TL_password_layer144;
.super Lorg/telegram/tgnet/tl/TL_account$Password;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_account;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_password_layer144"
.end annotation


# static fields
.field public static final constructor:I = 0x185b184f


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 409
    invoke-direct {p0}, Lorg/telegram/tgnet/tl/TL_account$Password;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 413
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->flags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 414
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->has_recovery:Z

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 415
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->has_secure_values:Z

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    move v2, v3

    .line 416
    :cond_2
    iput-boolean v2, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->has_password:Z

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 418
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->current_algo:Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;

    .line 420
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    .line 421
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readByteArray(Z)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->srp_B:[B

    .line 423
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_5

    .line 424
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->srp_id:J

    .line 426
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_6

    .line 427
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->hint:Ljava/lang/String;

    .line 429
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_7

    .line 430
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->email_unconfirmed_pattern:Ljava/lang/String;

    .line 432
    :cond_7
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->new_algo:Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;

    .line 433
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$SecurePasswordKdfAlgo;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$SecurePasswordKdfAlgo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->new_secure_algo:Lorg/telegram/tgnet/TLRPC$SecurePasswordKdfAlgo;

    .line 434
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readByteArray(Z)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->secure_random:[B

    .line 435
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    .line 436
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->pending_reset_date:I

    :cond_8
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x185b184f

    .line 441
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 442
    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->has_recovery:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->flags:I

    .line 443
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->has_secure_values:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->flags:I

    .line 444
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->has_password:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x5

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->flags:I

    .line 445
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 446
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 447
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->current_algo:Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 449
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    .line 450
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->srp_B:[B

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeByteArray([B)V

    .line 452
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_5

    .line 453
    iget-wide v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->srp_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 455
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_6

    .line 456
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->hint:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 458
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_7

    .line 459
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->email_unconfirmed_pattern:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 461
    :cond_7
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->new_algo:Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 462
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->new_secure_algo:Lorg/telegram/tgnet/TLRPC$SecurePasswordKdfAlgo;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 463
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->secure_random:[B

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeByteArray([B)V

    .line 464
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    .line 465
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->pending_reset_date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    :cond_8
    return-void
.end method
