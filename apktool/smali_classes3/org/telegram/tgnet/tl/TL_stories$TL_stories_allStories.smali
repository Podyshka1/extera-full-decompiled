.class public Lorg/telegram/tgnet/tl/TL_stories$TL_stories_allStories;
.super Lorg/telegram/tgnet/tl/TL_stories$stories_AllStories;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_stories;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_stories_allStories"
.end annotation


# static fields
.field public static final constructor:I = 0x6efc5e81


# instance fields
.field public chats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;"
        }
    .end annotation
.end field

.field public count:I

.field public flags:I

.field public has_more:Z

.field public peer_stories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/tl/TL_stories$PeerStories;",
            ">;"
        }
    .end annotation
.end field

.field public state:Ljava/lang/String;

.field public stealth_mode:Lorg/telegram/tgnet/tl/TL_stories$TL_storiesStealthMode;

.field public users:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 272
    invoke-direct {p0}, Lorg/telegram/tgnet/tl/TL_stories$stories_AllStories;-><init>()V

    .line 279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_allStories;->peer_stories:Ljava/util/ArrayList;

    .line 280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_allStories;->chats:Ljava/util/ArrayList;

    .line 281
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_allStories;->users:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 285
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_allStories;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 286
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_allStories;->has_more:Z

    .line 287
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_allStories;->count:I

    .line 288
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_allStories;->state:Ljava/lang/String;

    .line 289
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_allStories$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_allStories$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_allStories;->peer_stories:Ljava/util/ArrayList;

    .line 290
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_adminLogResults$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_adminLogResults$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_allStories;->chats:Ljava/util/ArrayList;

    .line 291
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_allStories;->users:Ljava/util/ArrayList;

    .line 292
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_stories$TL_storiesStealthMode;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stories$TL_storiesStealthMode;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_allStories;->stealth_mode:Lorg/telegram/tgnet/tl/TL_stories$TL_storiesStealthMode;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x6efc5e81

    .line 296
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 297
    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_allStories;->has_more:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_allStories;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_allStories;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_allStories;->flags:I

    .line 298
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 299
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_allStories;->count:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 300
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_allStories;->state:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_allStories;->peer_stories:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 302
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_allStories;->chats:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 303
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_allStories;->users:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 304
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_allStories;->stealth_mode:Lorg/telegram/tgnet/tl/TL_stories$TL_storiesStealthMode;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/tl/TL_stories$TL_storiesStealthMode;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    return-void
.end method
