.class public Lorg/telegram/tgnet/tl/TL_stories$TL_updateAlbum;
.super Lorg/telegram/tgnet/TLMethod;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_stories;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_updateAlbum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/telegram/tgnet/TLMethod;"
    }
.end annotation


# static fields
.field public static final constructor:I = 0x5e5259b6


# instance fields
.field public add_stories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public album_id:I

.field public delete_stories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public order:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3048
    invoke-direct {p0}, Lorg/telegram/tgnet/TLMethod;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic deserializeResponseT(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 3048
    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/tgnet/tl/TL_stories$TL_updateAlbum;->deserializeResponseT(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stories$TL_storyAlbum;

    move-result-object p1

    return-object p1
.end method

.method public deserializeResponseT(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stories$TL_storyAlbum;
    .locals 0

    .line 3087
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/tl/TL_stories$TL_storyAlbum;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stories$TL_storyAlbum;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 6

    const v0, 0x5e5259b6

    .line 3060
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 3063
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_updateAlbum;->title:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v1, v2, v0}, Lorg/telegram/tgnet/TLObject;->setFlag(IIZ)I

    move-result v0

    .line 3064
    iget-object v3, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_updateAlbum;->delete_stories:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    const/4 v4, 0x2

    invoke-static {v0, v4, v3}, Lorg/telegram/tgnet/TLObject;->setFlag(IIZ)I

    move-result v0

    .line 3065
    iget-object v3, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_updateAlbum;->add_stories:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    const/4 v5, 0x4

    invoke-static {v0, v5, v3}, Lorg/telegram/tgnet/TLObject;->setFlag(IIZ)I

    move-result v0

    .line 3066
    iget-object v3, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_updateAlbum;->order:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    move v1, v2

    :cond_3
    const/16 v3, 0x8

    invoke-static {v0, v3, v1}, Lorg/telegram/tgnet/TLObject;->setFlag(IIZ)I

    move-result v0

    .line 3067
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 3069
    iget-object v1, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_updateAlbum;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v1, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 3070
    iget v1, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_updateAlbum;->album_id:I

    invoke-interface {p1, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 3071
    invoke-static {v0, v2}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3072
    iget-object v1, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_updateAlbum;->title:Ljava/lang/String;

    invoke-interface {p1, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 3074
    :cond_4
    invoke-static {v0, v4}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3075
    iget-object v1, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_updateAlbum;->delete_stories:Ljava/util/ArrayList;

    invoke-static {p1, v1}, Lorg/telegram/tgnet/Vector;->serializeInt(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 3077
    :cond_5
    invoke-static {v0, v5}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3078
    iget-object v1, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_updateAlbum;->add_stories:Ljava/util/ArrayList;

    invoke-static {p1, v1}, Lorg/telegram/tgnet/Vector;->serializeInt(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 3080
    :cond_6
    invoke-static {v0, v3}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3081
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_updateAlbum;->order:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serializeInt(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    :cond_7
    return-void
.end method
