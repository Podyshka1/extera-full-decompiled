.class public Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_inputSecureValue"
.end annotation


# instance fields
.field public data:Lorg/telegram/tgnet/TLRPC$TL_secureData;

.field public files:Ljava/util/ArrayList;

.field public flags:I

.field public front_side:Lorg/telegram/tgnet/TLRPC$InputSecureFile;

.field public plain_data:Lorg/telegram/tgnet/TLRPC$SecurePlainData;

.field public reverse_side:Lorg/telegram/tgnet/TLRPC$InputSecureFile;

.field public selfie:Lorg/telegram/tgnet/TLRPC$InputSecureFile;

.field public translation:Ljava/util/ArrayList;

.field public type:Lorg/telegram/tgnet/TLRPC$SecureValueType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9096
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 9105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;->translation:Ljava/util/ArrayList;

    .line 9106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;->files:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    .line 9115
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;->flags:I

    .line 9116
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$SecureValueType;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$SecureValueType;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    .line 9117
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 9118
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_secureData;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_secureData;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;->data:Lorg/telegram/tgnet/TLRPC$TL_secureData;

    .line 9120
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 9121
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$InputSecureFile;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputSecureFile;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;->front_side:Lorg/telegram/tgnet/TLRPC$InputSecureFile;

    .line 9123
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 9124
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$InputSecureFile;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputSecureFile;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;->reverse_side:Lorg/telegram/tgnet/TLRPC$InputSecureFile;

    .line 9126
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 9127
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$InputSecureFile;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputSecureFile;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;->selfie:Lorg/telegram/tgnet/TLRPC$InputSecureFile;

    .line 9129
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_4

    .line 9130
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;->translation:Ljava/util/ArrayList;

    .line 9132
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    .line 9133
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;->files:Ljava/util/ArrayList;

    .line 9135
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    .line 9136
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$SecurePlainData;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$SecurePlainData;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;->plain_data:Lorg/telegram/tgnet/TLRPC$SecurePlainData;

    :cond_6
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x24de2f59

    .line 9141
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 9142
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 9143
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 9144
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 9145
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;->data:Lorg/telegram/tgnet/TLRPC$TL_secureData;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_secureData;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 9147
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 9148
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;->front_side:Lorg/telegram/tgnet/TLRPC$InputSecureFile;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 9150
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 9151
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;->reverse_side:Lorg/telegram/tgnet/TLRPC$InputSecureFile;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 9153
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 9154
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;->selfie:Lorg/telegram/tgnet/TLRPC$InputSecureFile;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 9156
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_4

    .line 9157
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;->translation:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 9159
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    .line 9160
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;->files:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 9162
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    .line 9163
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;->plain_data:Lorg/telegram/tgnet/TLRPC$SecurePlainData;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :cond_6
    return-void
.end method
