.class public Lorg/telegram/tgnet/tl/TL_stories$TL_storyItem_layer174;
.super Lorg/telegram/tgnet/tl/TL_stories$TL_storyItem;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_stories;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_storyItem_layer174"
.end annotation


# static fields
.field public static final constructor:I = -0x509c9a5f


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2031
    invoke-direct {p0}, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItem;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 2035
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->flags:I

    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 2036
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->pinned:Z

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 2037
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->isPublic:Z

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    .line 2038
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->close_friends:Z

    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    .line 2039
    :goto_3
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->min:Z

    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_4

    :cond_4
    move v1, v2

    .line 2040
    :goto_4
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->noforwards:Z

    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_5

    move v1, v3

    goto :goto_5

    :cond_5
    move v1, v2

    .line 2041
    :goto_5
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->edited:Z

    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_6

    move v1, v3

    goto :goto_6

    :cond_6
    move v1, v2

    .line 2042
    :goto_6
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->contacts:Z

    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_7

    move v1, v3

    goto :goto_7

    :cond_7
    move v1, v2

    .line 2043
    :goto_7
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->selected_contacts:Z

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_8

    move v2, v3

    .line 2044
    :cond_8
    iput-boolean v2, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->out:Z

    .line 2045
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    .line 2046
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->date:I

    .line 2047
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->flags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    .line 2048
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_stories$StoryFwdHeader;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stories$StoryFwdHeader;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->fwd_from:Lorg/telegram/tgnet/tl/TL_stories$StoryFwdHeader;

    .line 2050
    :cond_9
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->expire_date:I

    .line 2051
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->flags:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_a

    .line 2052
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->caption:Ljava/lang/String;

    .line 2054
    :cond_a
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_b

    .line 2055
    new-instance v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda190;

    invoke-direct {v0}, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda190;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->entities:Ljava/util/ArrayList;

    .line 2057
    :cond_b
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 2058
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_c

    .line 2059
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItem$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItem$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media_areas:Ljava/util/ArrayList;

    .line 2061
    :cond_c
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_d

    .line 2062
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updatePrivacy$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updatePrivacy$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->privacy:Ljava/util/ArrayList;

    .line 2064
    :cond_d
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_e

    .line 2065
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    .line 2067
    :cond_e
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->flags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_f

    .line 2068
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Reaction;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Reaction;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->sent_reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    :cond_f
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x509c9a5f

    .line 2073
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 2074
    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->pinned:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->flags:I

    or-int/lit8 v0, v0, 0x20

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->flags:I

    and-int/lit8 v0, v0, -0x21

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->flags:I

    .line 2075
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->isPublic:Z

    if-eqz v1, :cond_1

    or-int/lit16 v0, v0, 0x80

    goto :goto_1

    :cond_1
    and-int/lit16 v0, v0, -0x81

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->flags:I

    .line 2076
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->close_friends:Z

    if-eqz v1, :cond_2

    or-int/lit16 v0, v0, 0x100

    goto :goto_2

    :cond_2
    and-int/lit16 v0, v0, -0x101

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->flags:I

    .line 2077
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->min:Z

    if-eqz v1, :cond_3

    or-int/lit16 v0, v0, 0x200

    goto :goto_3

    :cond_3
    and-int/lit16 v0, v0, -0x201

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->flags:I

    .line 2078
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->noforwards:Z

    if-eqz v1, :cond_4

    or-int/lit16 v0, v0, 0x400

    goto :goto_4

    :cond_4
    and-int/lit16 v0, v0, -0x401

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->flags:I

    .line 2079
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->edited:Z

    if-eqz v1, :cond_5

    or-int/lit16 v0, v0, 0x800

    goto :goto_5

    :cond_5
    and-int/lit16 v0, v0, -0x801

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->flags:I

    .line 2080
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->contacts:Z

    if-eqz v1, :cond_6

    or-int/lit16 v0, v0, 0x1000

    goto :goto_6

    :cond_6
    and-int/lit16 v0, v0, -0x1001

    :goto_6
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->flags:I

    .line 2081
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->selected_contacts:Z

    if-eqz v1, :cond_7

    or-int/lit16 v0, v0, 0x2000

    goto :goto_7

    :cond_7
    and-int/lit16 v0, v0, -0x2001

    :goto_7
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->flags:I

    .line 2082
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->out:Z

    if-eqz v1, :cond_8

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    goto :goto_8

    :cond_8
    const v1, -0x10001

    and-int/2addr v0, v1

    :goto_8
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->flags:I

    .line 2083
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 2084
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 2085
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 2086
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->flags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    .line 2087
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->fwd_from:Lorg/telegram/tgnet/tl/TL_stories$StoryFwdHeader;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 2089
    :cond_9
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->expire_date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 2090
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_a

    .line 2091
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->caption:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 2093
    :cond_a
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_b

    .line 2094
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->entities:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 2096
    :cond_b
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 2097
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_c

    .line 2098
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media_areas:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 2100
    :cond_c
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_d

    .line 2101
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->privacy:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 2103
    :cond_d
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_e

    .line 2104
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 2106
    :cond_e
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->flags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_f

    .line 2107
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->sent_reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :cond_f
    return-void
.end method
