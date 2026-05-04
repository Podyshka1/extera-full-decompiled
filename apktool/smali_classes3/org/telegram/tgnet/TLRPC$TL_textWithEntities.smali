.class public Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/json/TLJsonBuilder$Serializable;
.implements Lorg/telegram/tgnet/json/TLJsonParser$Deserializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_textWithEntities"
.end annotation


# instance fields
.field public entities:Ljava/util/ArrayList;

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48278
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 48282
    const-string v0, ""

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    .line 48283
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLJsonDeserialize(Lorg/telegram/tgnet/json/TLJsonParser;)Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;
    .locals 2

    .line 48302
    const-string v0, "_"

    invoke-virtual {p0, v0}, Lorg/telegram/tgnet/json/TLJsonParser;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48303
    const-string/jumbo v1, "textWithEntities"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48305
    :try_start_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;-><init>()V

    .line 48306
    invoke-virtual {v0, p0}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->deserializeFromJson(Lorg/telegram/tgnet/json/TLJsonParser;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 48309
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;
    .locals 2

    const v0, 0x751f3146

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 48286
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;-><init>()V

    .line 48287
    :goto_0
    const-class v1, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    return-object p0
.end method


# virtual methods
.method public deserializeFromJson(Lorg/telegram/tgnet/json/TLJsonParser;)V
    .locals 2

    .line 48323
    const-string/jumbo v0, "text"

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/json/TLJsonParser;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    .line 48324
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "entities"

    invoke-virtual {p1, v1, v0}, Lorg/telegram/tgnet/json/TLJsonParser;->readVector(Ljava/lang/String;Lorg/telegram/messenger/Utilities$CallbackReturn;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 48330
    :cond_0
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 48331
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    .line 48332
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    invoke-static {v1, p1}, Lorg/telegram/messenger/MediaDataController;->entitiesEqual(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2

    .line 48334
    :cond_2
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 48335
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v0

    :cond_3
    return v2
.end method

.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    .line 48291
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    .line 48292
    new-instance v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda190;

    invoke-direct {v0}, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda190;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    return-void
.end method

.method public serializeToJson(Lorg/telegram/tgnet/json/TLJsonBuilder;)V
    .locals 2

    .line 48317
    const-string v0, "_"

    const-string/jumbo v1, "textWithEntities"

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/json/TLJsonBuilder;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48318
    const-string/jumbo v0, "text"

    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/json/TLJsonBuilder;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48319
    const-string v0, "entities"

    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/json/TLJsonBuilder;->writeVector(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x751f3146

    .line 48296
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 48297
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 48298
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    return-void
.end method
