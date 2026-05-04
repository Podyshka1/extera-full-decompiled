.class public Lorg/telegram/tgnet/TLRPC$TL_secureValue;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_secureValue"
.end annotation


# instance fields
.field public data:Lorg/telegram/tgnet/TLRPC$TL_secureData;

.field public files:Ljava/util/ArrayList;

.field public flags:I

.field public front_side:Lorg/telegram/tgnet/TLRPC$SecureFile;

.field public hash:[B

.field public plain_data:Lorg/telegram/tgnet/TLRPC$SecurePlainData;

.field public reverse_side:Lorg/telegram/tgnet/TLRPC$SecureFile;

.field public selfie:Lorg/telegram/tgnet/TLRPC$SecureFile;

.field public translation:Ljava/util/ArrayList;

.field public type:Lorg/telegram/tgnet/TLRPC$SecureValueType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21124
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 21133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->translation:Ljava/util/ArrayList;

    .line 21134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->files:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_secureValue;
    .locals 2

    const v0, 0x187fa0ca

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 21139
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_secureValue;-><init>()V

    .line 21140
    :goto_0
    const-class v1, Lorg/telegram/tgnet/TLRPC$TL_secureValue;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;

    return-object p0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    .line 21144
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->flags:I

    .line 21145
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$SecureValueType;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$SecureValueType;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    .line 21146
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 21147
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_secureData;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_secureData;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->data:Lorg/telegram/tgnet/TLRPC$TL_secureData;

    .line 21149
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 21150
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$SecureFile;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$SecureFile;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->front_side:Lorg/telegram/tgnet/TLRPC$SecureFile;

    .line 21152
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 21153
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$SecureFile;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$SecureFile;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->reverse_side:Lorg/telegram/tgnet/TLRPC$SecureFile;

    .line 21155
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 21156
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$SecureFile;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$SecureFile;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->selfie:Lorg/telegram/tgnet/TLRPC$SecureFile;

    .line 21158
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_4

    .line 21159
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_secureValue$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_secureValue$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->translation:Ljava/util/ArrayList;

    .line 21161
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    .line 21162
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_secureValue$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_secureValue$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->files:Ljava/util/ArrayList;

    .line 21164
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    .line 21165
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$SecurePlainData;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$SecurePlainData;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->plain_data:Lorg/telegram/tgnet/TLRPC$SecurePlainData;

    .line 21167
    :cond_6
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readByteArray(Z)[B

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->hash:[B

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x187fa0ca

    .line 21171
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 21172
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 21173
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 21174
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 21175
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->data:Lorg/telegram/tgnet/TLRPC$TL_secureData;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_secureData;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 21177
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 21178
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->front_side:Lorg/telegram/tgnet/TLRPC$SecureFile;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 21180
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 21181
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->reverse_side:Lorg/telegram/tgnet/TLRPC$SecureFile;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 21183
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 21184
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->selfie:Lorg/telegram/tgnet/TLRPC$SecureFile;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 21186
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_4

    .line 21187
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->translation:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 21189
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    .line 21190
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->files:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 21192
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    .line 21193
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->plain_data:Lorg/telegram/tgnet/TLRPC$SecurePlainData;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 21195
    :cond_6
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->hash:[B

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeByteArray([B)V

    return-void
.end method
