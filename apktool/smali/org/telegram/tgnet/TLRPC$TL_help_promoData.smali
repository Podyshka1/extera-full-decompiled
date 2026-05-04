.class public Lorg/telegram/tgnet/TLRPC$TL_help_promoData;
.super Lorg/telegram/tgnet/TLRPC$help_PromoData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_help_promoData"
.end annotation


# instance fields
.field public chats:Ljava/util/ArrayList;

.field public custom_pending_suggestion:Lorg/telegram/tgnet/TLRPC$TL_pendingSuggestion;

.field public dismissed_suggestions:Ljava/util/ArrayList;

.field public expires:I

.field public flags:I

.field public peer:Lorg/telegram/tgnet/TLRPC$Peer;

.field public pending_suggestions:Ljava/util/ArrayList;

.field public proxy:Z

.field public psa_message:Ljava/lang/String;

.field public psa_type:Ljava/lang/String;

.field public users:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38989
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$help_PromoData;-><init>()V

    .line 38998
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_promoData;->pending_suggestions:Ljava/util/ArrayList;

    .line 38999
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_promoData;->dismissed_suggestions:Ljava/util/ArrayList;

    .line 39001
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_promoData;->chats:Ljava/util/ArrayList;

    .line 39002
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_promoData;->users:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 39005
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_promoData;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 39006
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_help_promoData;->proxy:Z

    .line 39007
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_promoData;->expires:I

    .line 39008
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_promoData;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    .line 39009
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_promoData;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 39011
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_promoData;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 39012
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_promoData;->psa_type:Ljava/lang/String;

    .line 39014
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_promoData;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 39015
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_promoData;->psa_message:Ljava/lang/String;

    .line 39017
    :cond_3
    invoke-static {p1, p2}, Lorg/telegram/tgnet/Vector;->deserializeString(Lorg/telegram/tgnet/InputSerializedData;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_promoData;->pending_suggestions:Ljava/util/ArrayList;

    .line 39018
    invoke-static {p1, p2}, Lorg/telegram/tgnet/Vector;->deserializeString(Lorg/telegram/tgnet/InputSerializedData;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_promoData;->dismissed_suggestions:Ljava/util/ArrayList;

    .line 39019
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_promoData;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 39020
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_pendingSuggestion;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_pendingSuggestion;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_promoData;->custom_pending_suggestion:Lorg/telegram/tgnet/TLRPC$TL_pendingSuggestion;

    .line 39022
    :cond_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_adminLogResults$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_adminLogResults$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_promoData;->chats:Ljava/util/ArrayList;

    .line 39023
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_help_promoData;->users:Ljava/util/ArrayList;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x8a4d87a

    .line 39027
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 39028
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_promoData;->proxy:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_promoData;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_promoData;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_promoData;->flags:I

    .line 39029
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 39030
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_promoData;->expires:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 39031
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_promoData;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    .line 39032
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_promoData;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 39034
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_promoData;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 39035
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_promoData;->psa_type:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 39037
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_promoData;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 39038
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_promoData;->psa_message:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 39040
    :cond_3
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_promoData;->pending_suggestions:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serializeString(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 39041
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_promoData;->dismissed_suggestions:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serializeString(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 39042
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_promoData;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 39043
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_promoData;->custom_pending_suggestion:Lorg/telegram/tgnet/TLRPC$TL_pendingSuggestion;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_pendingSuggestion;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 39045
    :cond_4
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_promoData;->chats:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 39046
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_promoData;->users:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    return-void
.end method
