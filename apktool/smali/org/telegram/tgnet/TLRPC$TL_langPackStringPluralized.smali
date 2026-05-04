.class public Lorg/telegram/tgnet/TLRPC$TL_langPackStringPluralized;
.super Lorg/telegram/tgnet/TLRPC$LangPackString;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_langPackStringPluralized"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8419
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$LangPackString;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    .line 8423
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->flags:I

    .line 8424
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->key:Ljava/lang/String;

    .line 8425
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 8426
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->zero_value:Ljava/lang/String;

    .line 8428
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 8429
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->one_value:Ljava/lang/String;

    .line 8431
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 8432
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->two_value:Ljava/lang/String;

    .line 8434
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 8435
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->few_value:Ljava/lang/String;

    .line 8437
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 8438
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->many_value:Ljava/lang/String;

    .line 8440
    :cond_4
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->other_value:Ljava/lang/String;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x6c47ac9f

    .line 8444
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 8445
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 8446
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->key:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 8447
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 8448
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->zero_value:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 8450
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 8451
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->one_value:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 8453
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 8454
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->two_value:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 8456
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 8457
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->few_value:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 8459
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 8460
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->many_value:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 8462
    :cond_4
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->other_value:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    return-void
.end method
