.class public Lorg/telegram/tgnet/TLRPC$TL_messageReactions_layer185;
.super Lorg/telegram/tgnet/TLRPC$TL_messageReactions;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messageReactions_layer185"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27827
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageReactions;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 27831
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReactions;->flags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 27832
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$MessageReactions;->min:Z

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 27833
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$MessageReactions;->can_see_list:Z

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    move v2, v3

    .line 27834
    :cond_2
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$MessageReactions;->reactions_as_tags:Z

    .line 27835
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageReactions$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageReactions$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReactions;->results:Ljava/util/ArrayList;

    .line 27836
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReactions;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 27837
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageReactions$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageReactions$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$MessageReactions;->recent_reactions:Ljava/util/ArrayList;

    :cond_3
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x4f2b9479    # 2.8786342E9f

    .line 27842
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 27843
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReactions;->min:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReactions;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReactions;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReactions;->flags:I

    .line 27844
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$MessageReactions;->can_see_list:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x5

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReactions;->flags:I

    .line 27845
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$MessageReactions;->reactions_as_tags:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x8

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x9

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReactions;->flags:I

    .line 27846
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 27847
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReactions;->results:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 27848
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReactions;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 27849
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReactions;->recent_reactions:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    :cond_3
    return-void
.end method
