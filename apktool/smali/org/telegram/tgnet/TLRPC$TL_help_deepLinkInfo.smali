.class public Lorg/telegram/tgnet/TLRPC$TL_help_deepLinkInfo;
.super Lorg/telegram/tgnet/TLRPC$help_DeepLinkInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_help_deepLinkInfo"
.end annotation


# instance fields
.field public entities:Ljava/util/ArrayList;

.field public flags:I

.field public message:Ljava/lang/String;

.field public update_app:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4088
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$help_DeepLinkInfo;-><init>()V

    .line 4094
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_deepLinkInfo;->entities:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 4097
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_deepLinkInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4098
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_help_deepLinkInfo;->update_app:Z

    .line 4099
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_deepLinkInfo;->message:Ljava/lang/String;

    .line 4100
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_deepLinkInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 4101
    new-instance v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda190;

    invoke-direct {v0}, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda190;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_help_deepLinkInfo;->entities:Ljava/util/ArrayList;

    :cond_1
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x6a4ee832

    .line 4106
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 4107
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_deepLinkInfo;->update_app:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_deepLinkInfo;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_deepLinkInfo;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_deepLinkInfo;->flags:I

    .line 4108
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 4109
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_deepLinkInfo;->message:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 4110
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_deepLinkInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 4111
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_deepLinkInfo;->entities:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method
