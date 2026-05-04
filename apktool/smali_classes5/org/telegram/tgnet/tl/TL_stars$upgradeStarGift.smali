.class public Lorg/telegram/tgnet/tl/TL_stars$upgradeStarGift;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_stars;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "upgradeStarGift"
.end annotation


# static fields
.field public static final constructor:I = -0x51291b0b


# instance fields
.field public flags:I

.field public keep_original_details:Z

.field public stargift:Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1959
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 1968
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Updates;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Updates;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x51291b0b

    .line 1973
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1974
    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_stars$upgradeStarGift;->keep_original_details:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$upgradeStarGift;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$upgradeStarGift;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$upgradeStarGift;->flags:I

    .line 1975
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1976
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$upgradeStarGift;->stargift:Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    return-void
.end method
