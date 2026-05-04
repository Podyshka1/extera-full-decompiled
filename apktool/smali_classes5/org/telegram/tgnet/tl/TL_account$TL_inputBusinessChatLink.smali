.class public Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessChatLink;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_account;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_inputBusinessChatLink"
.end annotation


# static fields
.field public static final constructor:I = 0x11679fa7


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

.field public message:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3194
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 3199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessChatLink;->entities:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessChatLink;
    .locals 2

    const v0, 0x11679fa7

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3203
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessChatLink;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessChatLink;-><init>()V

    .line 3204
    :goto_0
    const-class v1, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessChatLink;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessChatLink;

    return-object p0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    .line 3208
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessChatLink;->flags:I

    .line 3209
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessChatLink;->message:Ljava/lang/String;

    .line 3210
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessChatLink;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3211
    new-instance v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda190;

    invoke-direct {v0}, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda190;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessChatLink;->entities:Ljava/util/ArrayList;

    .line 3213
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessChatLink;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 3214
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessChatLink;->title:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x11679fa7

    .line 3219
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 3220
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessChatLink;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 3221
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessChatLink;->message:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 3222
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessChatLink;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3223
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessChatLink;->entities:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 3225
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessChatLink;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 3226
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessChatLink;->title:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
