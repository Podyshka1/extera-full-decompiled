.class public Lorg/telegram/tgnet/TLRPC$TL_secureValueErrorTranslationFiles;
.super Lorg/telegram/tgnet/TLRPC$SecureValueError;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_secureValueErrorTranslationFiles"
.end annotation


# instance fields
.field public file_hash:Ljava/util/ArrayList;

.field public text:Ljava/lang/String;

.field public type:Lorg/telegram/tgnet/TLRPC$SecureValueType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21067
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$SecureValueError;-><init>()V

    .line 21071
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValueErrorTranslationFiles;->file_hash:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 21075
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$SecureValueType;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$SecureValueType;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValueErrorTranslationFiles;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    .line 21076
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    const v1, 0x1cb5c415

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    if-nez p2, :cond_0

    return-void

    .line 21079
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v2

    const-string/jumbo p2, "wrong Vector magic, got %x"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21083
    :cond_1
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 21085
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValueErrorTranslationFiles;->file_hash:Ljava/util/ArrayList;

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readByteArray(Z)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 21087
    :cond_2
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValueErrorTranslationFiles;->text:Ljava/lang/String;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 3

    const v0, 0x34636dd8

    .line 21091
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 21092
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValueErrorTranslationFiles;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    const v0, 0x1cb5c415

    .line 21093
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 21094
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValueErrorTranslationFiles;->file_hash:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 21095
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 21097
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValueErrorTranslationFiles;->file_hash:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-interface {p1, v2}, Lorg/telegram/tgnet/OutputSerializedData;->writeByteArray([B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 21099
    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValueErrorTranslationFiles;->text:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    return-void
.end method
