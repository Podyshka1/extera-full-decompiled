.class public Lorg/telegram/tgnet/tl/TL_stars$getResaleStarGifts;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_stars;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "getResaleStarGifts"
.end annotation


# static fields
.field public static final constructor:I = 0x7a5fa236


# instance fields
.field public attributes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttributeId;",
            ">;"
        }
    .end annotation
.end field

.field public attributes_hash:J

.field public flags:I

.field public for_craft:Z

.field public gift_id:J

.field public limit:I

.field public offset:Ljava/lang/String;

.field public sort_by_num:Z

.field public sort_by_price:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5759
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 5768
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$getResaleStarGifts;->attributes:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 5774
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/tl/TL_stars$resaleStarGifts;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stars$resaleStarGifts;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x7a5fa236

    .line 5779
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 5780
    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_stars$getResaleStarGifts;->sort_by_price:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$getResaleStarGifts;->flags:I

    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$getResaleStarGifts;->flags:I

    and-int/lit8 v0, v0, -0x3

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$getResaleStarGifts;->flags:I

    .line 5781
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$getResaleStarGifts;->sort_by_num:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x5

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$getResaleStarGifts;->flags:I

    .line 5782
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$getResaleStarGifts;->for_craft:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x10

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x11

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$getResaleStarGifts;->flags:I

    .line 5783
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 5784
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$getResaleStarGifts;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 5785
    iget-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stars$getResaleStarGifts;->attributes_hash:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 5787
    :cond_3
    iget-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stars$getResaleStarGifts;->gift_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 5788
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$getResaleStarGifts;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 5789
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$getResaleStarGifts;->attributes:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 5791
    :cond_4
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$getResaleStarGifts;->offset:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 5792
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$getResaleStarGifts;->limit:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
