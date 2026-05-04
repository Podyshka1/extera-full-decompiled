.class public Lorg/telegram/tgnet/tl/TL_stars$getSavedStarGifts;
.super Lorg/telegram/tgnet/TLMethod;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_stars;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "getSavedStarGifts"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/telegram/tgnet/TLMethod;"
    }
.end annotation


# static fields
.field public static final constructor:I = -0x5ce61a97


# instance fields
.field public collection_id:I

.field public exclude_saved:Z

.field public exclude_unique:Z

.field public exclude_unlimited:Z

.field public exclude_unsaved:Z

.field public exclude_unupgradable:Z

.field public exclude_upgradable:Z

.field public flags:I

.field public limit:I

.field public offset:Ljava/lang/String;

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public peer_color_available:Z

.field public sort_by_value:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1861
    invoke-direct {p0}, Lorg/telegram/tgnet/TLMethod;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic deserializeResponseT(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 1861
    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/tgnet/tl/TL_stars$getSavedStarGifts;->deserializeResponseT(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stars$TL_payments_savedStarGifts;

    move-result-object p1

    return-object p1
.end method

.method public deserializeResponseT(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stars$TL_payments_savedStarGifts;
    .locals 0

    .line 1880
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_savedStarGifts;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stars$TL_payments_savedStarGifts;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 3

    const v0, -0x5ce61a97

    .line 1885
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1886
    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_stars$getSavedStarGifts;->exclude_unsaved:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$getSavedStarGifts;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$getSavedStarGifts;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$getSavedStarGifts;->flags:I

    .line 1887
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$getSavedStarGifts;->exclude_saved:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$getSavedStarGifts;->flags:I

    .line 1888
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$getSavedStarGifts;->exclude_unlimited:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x5

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$getSavedStarGifts;->flags:I

    .line 1889
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$getSavedStarGifts;->exclude_unique:Z

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x10

    goto :goto_3

    :cond_3
    and-int/lit8 v0, v0, -0x11

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$getSavedStarGifts;->flags:I

    .line 1890
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$getSavedStarGifts;->sort_by_value:Z

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x20

    goto :goto_4

    :cond_4
    and-int/lit8 v0, v0, -0x21

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$getSavedStarGifts;->flags:I

    const/16 v1, 0x80

    .line 1891
    iget-boolean v2, p0, Lorg/telegram/tgnet/tl/TL_stars$getSavedStarGifts;->exclude_upgradable:Z

    invoke-static {v0, v1, v2}, Lorg/telegram/tgnet/TLObject;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$getSavedStarGifts;->flags:I

    const/16 v1, 0x100

    .line 1892
    iget-boolean v2, p0, Lorg/telegram/tgnet/tl/TL_stars$getSavedStarGifts;->exclude_unupgradable:Z

    invoke-static {v0, v1, v2}, Lorg/telegram/tgnet/TLObject;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$getSavedStarGifts;->flags:I

    const/16 v1, 0x200

    .line 1893
    iget-boolean v2, p0, Lorg/telegram/tgnet/tl/TL_stars$getSavedStarGifts;->peer_color_available:Z

    invoke-static {v0, v1, v2}, Lorg/telegram/tgnet/TLObject;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$getSavedStarGifts;->flags:I

    .line 1894
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1895
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$getSavedStarGifts;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 1896
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$getSavedStarGifts;->flags:I

    const/16 v1, 0x40

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1897
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$getSavedStarGifts;->collection_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1899
    :cond_5
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$getSavedStarGifts;->offset:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 1900
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$getSavedStarGifts;->limit:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
