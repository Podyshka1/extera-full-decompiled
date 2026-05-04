.class public Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_stars;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputSavedStarGift"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5443
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;
    .locals 2

    const v0, -0xefe5581

    if-eq p1, v0, :cond_2

    const v0, 0x2085c238

    if-eq p1, v0, :cond_1

    const v0, 0x69279795

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 5448
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_inputSavedStarGiftUser;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_inputSavedStarGiftUser;-><init>()V

    goto :goto_0

    .line 5454
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_inputSavedStarGiftSlug;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_inputSavedStarGiftSlug;-><init>()V

    goto :goto_0

    .line 5451
    :cond_2
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_inputSavedStarGiftChat;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_inputSavedStarGiftChat;-><init>()V

    .line 5457
    :goto_0
    const-class v1, Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;

    return-object p0
.end method
