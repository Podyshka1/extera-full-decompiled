.class public Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;
.super Lorg/telegram/tgnet/TLRPC$SecureRequiredType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_secureRequiredType"
.end annotation


# instance fields
.field public flags:I

.field public native_names:Z

.field public selfie_required:Z

.field public translation_required:Z

.field public type:Lorg/telegram/tgnet/TLRPC$SecureValueType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10685
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$SecureRequiredType;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 10695
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->flags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 10696
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->native_names:Z

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 10697
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->selfie_required:Z

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    move v2, v3

    .line 10698
    :cond_2
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->translation_required:Z

    .line 10699
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$SecureValueType;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$SecureValueType;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x7d626626

    .line 10703
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 10704
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->native_names:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->flags:I

    .line 10705
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->selfie_required:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->flags:I

    .line 10706
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->translation_required:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x5

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->flags:I

    .line 10707
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 10708
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    return-void
.end method
