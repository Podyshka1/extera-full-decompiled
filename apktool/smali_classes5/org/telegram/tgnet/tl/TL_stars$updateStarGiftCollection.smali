.class public Lorg/telegram/tgnet/tl/TL_stars$updateStarGiftCollection;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_stars;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "updateStarGiftCollection"
.end annotation


# static fields
.field public static final constructor:I = 0x4fddbee7


# instance fields
.field public add_stargift:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;",
            ">;"
        }
    .end annotation
.end field

.field public collection_id:I

.field public delete_stargift:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;",
            ">;"
        }
    .end annotation
.end field

.field public flags:I

.field public order:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;",
            ">;"
        }
    .end annotation
.end field

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5943
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 5950
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$updateStarGiftCollection;->delete_stargift:Ljava/util/ArrayList;

    .line 5951
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$updateStarGiftCollection;->add_stargift:Ljava/util/ArrayList;

    .line 5952
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$updateStarGiftCollection;->order:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 5956
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x4fddbee7

    .line 5961
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 5962
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$updateStarGiftCollection;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 5963
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$updateStarGiftCollection;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 5964
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$updateStarGiftCollection;->collection_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 5965
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$updateStarGiftCollection;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 5966
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$updateStarGiftCollection;->title:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 5968
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$updateStarGiftCollection;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 5969
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$updateStarGiftCollection;->delete_stargift:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 5971
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$updateStarGiftCollection;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 5972
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$updateStarGiftCollection;->add_stargift:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 5974
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$updateStarGiftCollection;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 5975
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$updateStarGiftCollection;->order:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    :cond_3
    return-void
.end method
