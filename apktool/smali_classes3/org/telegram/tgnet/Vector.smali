.class public Lorg/telegram/tgnet/Vector;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/tgnet/Vector$TLDeserializer;,
        Lorg/telegram/tgnet/Vector$Int;
    }
.end annotation


# instance fields
.field private final itemDeserializer:Lorg/telegram/tgnet/Vector$TLDeserializer;

.field public final objects:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lorg/telegram/tgnet/Vector$TLDeserializer;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/Vector;->objects:Ljava/util/ArrayList;

    .line 14
    iput-object p1, p0, Lorg/telegram/tgnet/Vector;->itemDeserializer:Lorg/telegram/tgnet/Vector$TLDeserializer;

    return-void
.end method

.method public static TLDeserialize(Lorg/telegram/tgnet/InputSerializedData;IZLorg/telegram/tgnet/Vector$TLDeserializer;)Lorg/telegram/tgnet/Vector;
    .locals 1

    const v0, 0x1cb5c415

    if-eq p1, v0, :cond_0

    .line 24
    const-string p3, "Vector"

    invoke-static {p0, p3, p1, p2}, Lorg/telegram/tgnet/TLParseException;->doThrowOrLog(Lorg/telegram/tgnet/InputSerializedData;Ljava/lang/String;IZ)V

    const/4 p0, 0x0

    return-object p0

    .line 28
    :cond_0
    new-instance p1, Lorg/telegram/tgnet/Vector;

    invoke-direct {p1, p3}, Lorg/telegram/tgnet/Vector;-><init>(Lorg/telegram/tgnet/Vector$TLDeserializer;)V

    .line 29
    invoke-virtual {p1, p0, p2}, Lorg/telegram/tgnet/Vector;->readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V

    return-object p1
.end method

.method public static TLDeserializeInt(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/Vector;
    .locals 1

    const v0, 0x1cb5c415

    if-eq p1, v0, :cond_0

    .line 77
    const-string v0, "StarGift"

    invoke-static {p0, v0, p1, p2}, Lorg/telegram/tgnet/TLParseException;->doThrowOrLog(Lorg/telegram/tgnet/InputSerializedData;Ljava/lang/String;IZ)V

    const/4 p0, 0x0

    return-object p0

    .line 81
    :cond_0
    new-instance p1, Lorg/telegram/tgnet/Vector;

    new-instance v0, Lorg/telegram/tgnet/Vector$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lorg/telegram/tgnet/Vector$$ExternalSyntheticLambda5;-><init>()V

    invoke-direct {p1, v0}, Lorg/telegram/tgnet/Vector;-><init>(Lorg/telegram/tgnet/Vector$TLDeserializer;)V

    .line 82
    invoke-virtual {p1, p0, p2}, Lorg/telegram/tgnet/Vector;->readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V

    return-object p1
.end method

.method public static TLDeserializeLong(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/Vector;
    .locals 1

    const v0, 0x1cb5c415

    if-eq p1, v0, :cond_0

    .line 121
    const-string v0, "Vector"

    invoke-static {p0, v0, p1, p2}, Lorg/telegram/tgnet/TLParseException;->doThrowOrLog(Lorg/telegram/tgnet/InputSerializedData;Ljava/lang/String;IZ)V

    const/4 p0, 0x0

    return-object p0

    .line 125
    :cond_0
    new-instance p1, Lorg/telegram/tgnet/Vector;

    new-instance v0, Lorg/telegram/tgnet/Vector$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lorg/telegram/tgnet/Vector$$ExternalSyntheticLambda5;-><init>()V

    invoke-direct {p1, v0}, Lorg/telegram/tgnet/Vector;-><init>(Lorg/telegram/tgnet/Vector$TLDeserializer;)V

    .line 126
    invoke-virtual {p1, p0, p2}, Lorg/telegram/tgnet/Vector;->readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V

    return-object p1
.end method

.method public static deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/messenger/Utilities$CallbackReturn;Z)Ljava/util/ArrayList;
    .locals 3

    .line 169
    invoke-interface {p0, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    const v1, 0x1cb5c415

    if-eq v0, v1, :cond_0

    .line 171
    const-string p1, "Vector"

    invoke-static {p0, p1, v0, p2}, Lorg/telegram/tgnet/TLParseException;->doThrowOrLog(Lorg/telegram/tgnet/InputSerializedData;Ljava/lang/String;IZ)V

    .line 172
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 174
    :cond_0
    invoke-interface {p0, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p0

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_1

    .line 177
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/telegram/messenger/Utilities$CallbackReturn;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;
    .locals 4

    .line 194
    invoke-interface {p0, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    const v1, 0x1cb5c415

    if-eq v0, v1, :cond_0

    .line 196
    const-string p1, "Vector"

    invoke-static {p0, p1, v0, p2}, Lorg/telegram/tgnet/TLParseException;->doThrowOrLog(Lorg/telegram/tgnet/InputSerializedData;Ljava/lang/String;IZ)V

    .line 197
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 200
    :cond_0
    invoke-interface {p0, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    .line 201
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 203
    invoke-interface {p0, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v3

    invoke-interface {p1, p0, v3, p2}, Lorg/telegram/tgnet/Vector$TLDeserializer;->deserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 205
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static deserializeByteArray(Lorg/telegram/tgnet/InputSerializedData;Z)Ljava/util/ArrayList;
    .locals 1

    .line 191
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/telegram/tgnet/Vector$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lorg/telegram/tgnet/Vector$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/tgnet/InputSerializedData;)V

    invoke-static {p0, v0, p1}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/messenger/Utilities$CallbackReturn;Z)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static deserializeInt(Lorg/telegram/tgnet/InputSerializedData;Z)Ljava/util/ArrayList;
    .locals 1

    .line 182
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/telegram/tgnet/Vector$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/tgnet/Vector$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/tgnet/InputSerializedData;)V

    invoke-static {p0, v0, p1}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/messenger/Utilities$CallbackReturn;Z)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static deserializeLong(Lorg/telegram/tgnet/InputSerializedData;Z)Ljava/util/ArrayList;
    .locals 1

    .line 185
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/telegram/tgnet/Vector$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/tgnet/Vector$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/tgnet/InputSerializedData;)V

    invoke-static {p0, v0, p1}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/messenger/Utilities$CallbackReturn;Z)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static deserializeString(Lorg/telegram/tgnet/InputSerializedData;Z)Ljava/util/ArrayList;
    .locals 1

    .line 188
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/telegram/tgnet/Vector$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/telegram/tgnet/Vector$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/tgnet/InputSerializedData;)V

    invoke-static {p0, v0, p1}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/messenger/Utilities$CallbackReturn;Z)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V
    .locals 2

    const v0, 0x1cb5c415

    .line 145
    invoke-interface {p0, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 146
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-interface {p0, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    const/4 v0, 0x0

    .line 147
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 148
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLObject;

    invoke-virtual {v1, p0}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static serialize(Lorg/telegram/tgnet/OutputSerializedData;Lorg/telegram/messenger/Utilities$Callback;Ljava/util/ArrayList;)V
    .locals 1

    const v0, 0x1cb5c415

    .line 152
    invoke-interface {p0, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 153
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-interface {p0, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    const/4 p0, 0x0

    .line 154
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p0, v0, :cond_0

    .line 155
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static serializeInt(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V
    .locals 1

    .line 159
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/telegram/tgnet/Vector$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/telegram/tgnet/Vector$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/tgnet/OutputSerializedData;)V

    invoke-static {p0, v0, p1}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Lorg/telegram/messenger/Utilities$Callback;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static serializeLong(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V
    .locals 1

    .line 162
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/telegram/tgnet/Vector$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/tgnet/Vector$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/tgnet/OutputSerializedData;)V

    invoke-static {p0, v0, p1}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Lorg/telegram/messenger/Utilities$Callback;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static serializeString(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V
    .locals 1

    .line 165
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/telegram/tgnet/Vector$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lorg/telegram/tgnet/Vector$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/tgnet/OutputSerializedData;)V

    invoke-static {p0, v0, p1}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Lorg/telegram/messenger/Utilities$Callback;Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 5

    .line 35
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 37
    iget-object v2, p0, Lorg/telegram/tgnet/Vector;->objects:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/tgnet/Vector;->itemDeserializer:Lorg/telegram/tgnet/Vector$TLDeserializer;

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v4

    invoke-interface {v3, p1, v4, p2}, Lorg/telegram/tgnet/Vector$TLDeserializer;->deserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/telegram/tgnet/Vector;->objects:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    return-void
.end method

.method public toIntArray()Ljava/util/ArrayList;
    .locals 6

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    iget-object v1, p0, Lorg/telegram/tgnet/Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lorg/telegram/tgnet/TLObject;

    .line 89
    instance-of v5, v4, Lorg/telegram/tgnet/Vector$Int;

    if-eqz v5, :cond_0

    .line 90
    check-cast v4, Lorg/telegram/tgnet/Vector$Int;

    iget v4, v4, Lorg/telegram/tgnet/Vector$Int;->value:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method
