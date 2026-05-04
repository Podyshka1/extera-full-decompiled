.class public Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_account;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_businessChatLink"
.end annotation


# static fields
.field public static final constructor:I = -0x4b519991


# instance fields
.field public entities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$MessageEntity;",
            ">;"
        }
    .end annotation
.end field

.field public flags:I

.field public link:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public views:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3231
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 3237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;->entities:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;
    .locals 2

    const v0, -0x4b519991

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3242
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;-><init>()V

    .line 3243
    :goto_0
    const-class v1, Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;

    return-object p0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    .line 3247
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;->flags:I

    .line 3248
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;->link:Ljava/lang/String;

    .line 3249
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;->message:Ljava/lang/String;

    .line 3250
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3251
    new-instance v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda190;

    invoke-direct {v0}, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda190;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;->entities:Ljava/util/ArrayList;

    .line 3253
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 3254
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;->title:Ljava/lang/String;

    .line 3256
    :cond_1
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;->views:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x4b519991

    .line 3260
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 3261
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 3262
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;->link:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 3263
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;->message:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 3264
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3265
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;->entities:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 3267
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 3268
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;->title:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 3270
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;->views:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
