.class public final synthetic Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback2;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;

.field public final synthetic f$1:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;

    iput-object p2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$$ExternalSyntheticLambda5;->f$1:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;

    iget-object v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$$ExternalSyntheticLambda5;->f$1:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    check-cast p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    check-cast p2, Ljava/lang/Long;

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->$r8$lambda$OVedPBn65yDBaUqPwZ2qQnaLUWY(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Long;)V

    return-void
.end method
