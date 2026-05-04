.class public Lorg/telegram/tgnet/tl/TL_stories$TL_stories_searchPosts;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_stories;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_stories_searchPosts"
.end annotation


# static fields
.field public static final constructor:I = -0x2e7ef6f9


# instance fields
.field public area:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

.field public flags:I

.field public hashtag:Ljava/lang/String;

.field public limit:I

.field public offset:Ljava/lang/String;

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 882
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 894
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/tl/TL_stories$TL_foundStories;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stories$TL_foundStories;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x2e7ef6f9

    .line 899
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 900
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_searchPosts;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 901
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_searchPosts;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 902
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_searchPosts;->hashtag:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 904
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_searchPosts;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 905
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_searchPosts;->area:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 907
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_searchPosts;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 908
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_searchPosts;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 910
    :cond_2
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_searchPosts;->offset:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 911
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_searchPosts;->limit:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
