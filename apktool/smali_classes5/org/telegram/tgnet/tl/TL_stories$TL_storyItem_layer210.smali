.class public Lorg/telegram/tgnet/tl/TL_stories$TL_storyItem_layer210;
.super Lorg/telegram/tgnet/tl/TL_stories$TL_storyItem;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_stories;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_storyItem_layer210"
.end annotation


# static fields
.field public static final constructor:I = 0x79b26a24


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1944
    invoke-direct {p0}, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItem;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 1948
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

    .line 1949
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->pinned:Z

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 1950
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->isPublic:Z

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    .line 1951
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->close_friends:Z

    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    .line 1952
    :goto_3
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->min:Z

    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_4

    :cond_4
    move v1, v2

    .line 1953
    :goto_4
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->noforwards:Z

    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_5

    move v1, v3

    goto :goto_5

    :cond_5
    move v1, v2

    .line 1954
    :goto_5
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->edited:Z

    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_6

    move v1, v3

    goto :goto_6

    :cond_6
    move v1, v2

    .line 1955
    :goto_6
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->contacts:Z

    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_7

    move v1, v3

    goto :goto_7

    :cond_7
    move v1, v2

    .line 1956
    :goto_7
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->selected_contacts:Z

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_8

    move v2, v3

    .line 1957
    :cond_8
    iput-boolean v2, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->out:Z

    .line 1958
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    .line 1959
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->date:I

    .line 1960
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->flags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    .line 1961
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 1963
    :cond_9
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->flags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_a

    .line 1964
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_stories$StoryFwdHeader;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stories$StoryFwdHeader;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->fwd_from:Lorg/telegram/tgnet/tl/TL_stories$StoryFwdHeader;

    .line 1966
    :cond_a
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->expire_date:I

    .line 1967
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->flags:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_b

    .line 1968
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->caption:Ljava/lang/String;

    .line 1970
    :cond_b
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_c

    .line 1971
    new-instance v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda190;

    invoke-direct {v0}, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda190;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->entities:Ljava/util/ArrayList;

    .line 1973
    :cond_c
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 1974
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_d

    .line 1975
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItem$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItem$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media_areas:Ljava/util/ArrayList;

    .line 1977
    :cond_d
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_e

    .line 1978
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updatePrivacy$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updatePrivacy$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->privacy:Ljava/util/ArrayList;

    .line 1980
    :cond_e
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_f

    .line 1981
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    .line 1983
    :cond_f
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->flags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_10

    .line 1984
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Reaction;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Reaction;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->sent_reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    :cond_10
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x79b26a24

    .line 1989
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1990
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

    .line 1991
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->isPublic:Z

    if-eqz v1, :cond_1

    or-int/lit16 v0, v0, 0x80

    goto :goto_1

    :cond_1
    and-int/lit16 v0, v0, -0x81

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->flags:I

    .line 1992
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->close_friends:Z

    if-eqz v1, :cond_2

    or-int/lit16 v0, v0, 0x100

    goto :goto_2

    :cond_2
    and-int/lit16 v0, v0, -0x101

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->flags:I

    .line 1993
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->min:Z

    if-eqz v1, :cond_3

    or-int/lit16 v0, v0, 0x200

    goto :goto_3

    :cond_3
    and-int/lit16 v0, v0, -0x201

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->flags:I

    .line 1994
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->noforwards:Z

    if-eqz v1, :cond_4

    or-int/lit16 v0, v0, 0x400

    goto :goto_4

    :cond_4
    and-int/lit16 v0, v0, -0x401

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->flags:I

    .line 1995
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->edited:Z

    if-eqz v1, :cond_5

    or-int/lit16 v0, v0, 0x800

    goto :goto_5

    :cond_5
    and-int/lit16 v0, v0, -0x801

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->flags:I

    .line 1996
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->contacts:Z

    if-eqz v1, :cond_6

    or-int/lit16 v0, v0, 0x1000

    goto :goto_6

    :cond_6
    and-int/lit16 v0, v0, -0x1001

    :goto_6
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->flags:I

    .line 1997
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->selected_contacts:Z

    if-eqz v1, :cond_7

    or-int/lit16 v0, v0, 0x2000

    goto :goto_7

    :cond_7
    and-int/lit16 v0, v0, -0x2001

    :goto_7
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->flags:I

    .line 1998
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

    .line 1999
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 2000
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 2001
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 2002
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->flags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    .line 2003
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 2005
    :cond_9
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->flags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_a

    .line 2006
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->fwd_from:Lorg/telegram/tgnet/tl/TL_stories$StoryFwdHeader;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 2008
    :cond_a
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->expire_date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 2009
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_b

    .line 2010
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->caption:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 2012
    :cond_b
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_c

    .line 2013
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->entities:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 2015
    :cond_c
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 2016
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_d

    .line 2017
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media_areas:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 2019
    :cond_d
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_e

    .line 2020
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->privacy:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 2022
    :cond_e
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_f

    .line 2023
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 2025
    :cond_f
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->flags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_10

    .line 2026
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->sent_reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :cond_10
    return-void
.end method
