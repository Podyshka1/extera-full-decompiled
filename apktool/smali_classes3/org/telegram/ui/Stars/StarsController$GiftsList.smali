.class public Lorg/telegram/ui/Stars/StarsController$GiftsList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Stars/StarsController$IGiftsList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stars/StarsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GiftsList"
.end annotation


# instance fields
.field public chat_notifications_enabled:Ljava/lang/Boolean;

.field public collectionId:I

.field private craftingGiftId:J

.field public final currentAccount:I

.field public currentRequestId:I

.field public final dialogId:J

.field public endReached:Z

.field public gifts:Ljava/util/ArrayList;

.field private includeFlags:I

.field public isCollection:Z

.field public lastOffset:Ljava/lang/String;

.field public loading:Z

.field public peer_color_available:Z

.field private savedPinnedState:Ljava/util/ArrayList;

.field public shown:Z

.field public sort_by_date:Z

.field public totalCount:I


# direct methods
.method public static synthetic $r8$lambda$0NrJlscDpM24Kyu4MXSRqJVLA4I(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)I
    .locals 0

    .line 3745
    iget p1, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->date:I

    iget p0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->date:I

    sub-int/2addr p1, p0

    return p1
.end method

.method public static synthetic $r8$lambda$MadElTAJuHwaYYhGZiGalP5gfbQ(Lorg/telegram/ui/Stars/StarsController$GiftsList;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->lambda$processCrafting$2(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$e78YbGIubqcy-GaOdw3hmk91zpA(Lorg/telegram/ui/Stars/StarsController$GiftsList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->lambda$processCrafting$3(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$meQZFqBuIDvvRknmnyTCHDOjfJI(Lorg/telegram/ui/Stars/StarsController$GiftsList;[ILorg/telegram/tgnet/TLObject;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->lambda$load$0([ILorg/telegram/tgnet/TLObject;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$o_kNtECv5tdzurkuOWUGKNeeFVE(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$tMKXcJCxS_WwOpBsxNLl9vdYpQ8(Lorg/telegram/ui/Stars/StarsController$GiftsList;[IZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->lambda$load$1([IZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wnJT01tEmt5i9wNF1FR_FImlPC4(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)I
    .locals 0

    .line 3783
    iget p1, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->date:I

    iget p0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->date:I

    sub-int/2addr p1, p0

    return p1
.end method

.method public constructor <init>(IJ)V
    .locals 1

    const/4 v0, 0x1

    .line 3381
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Stars/StarsController$GiftsList;-><init>(IJZ)V

    return-void
.end method

.method public constructor <init>(IJZ)V
    .locals 2

    .line 3383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3389
    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->isCollection:Z

    const/4 v1, 0x1

    .line 3454
    iput-boolean v1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->sort_by_date:Z

    .line 3455
    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->peer_color_available:Z

    const/16 v0, 0x30f

    .line 3467
    iput v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->includeFlags:I

    .line 3554
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 3555
    iput v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->currentRequestId:I

    const-wide/16 v0, 0x0

    .line 3590
    iput-wide v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->craftingGiftId:J

    .line 3384
    iput p1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->currentAccount:I

    .line 3385
    iput-wide p2, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->dialogId:J

    if-eqz p4, :cond_0

    .line 3386
    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->load()V

    :cond_0
    return-void
.end method

.method private getMask(I)I
    .locals 1

    and-int/lit8 v0, p1, 0xf

    if-eqz v0, :cond_0

    const/16 p1, 0xf

    return p1

    :cond_0
    const/16 v0, 0x300

    and-int/2addr p1, v0

    if-eqz p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$load$0([ILorg/telegram/tgnet/TLObject;Z)V
    .locals 5

    const/4 v0, 0x0

    .line 3632
    aget p1, p1, v0

    iget v1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->currentRequestId:I

    if-eq p1, v1, :cond_0

    return-void

    .line 3633
    :cond_0
    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->loading:Z

    const/4 p1, -0x1

    .line 3634
    iput p1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->currentRequestId:I

    .line 3635
    instance-of p1, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_savedStarGifts;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_5

    .line 3636
    check-cast p2, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_savedStarGifts;

    .line 3637
    iget p1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v3, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_savedStarGifts;->users:Ljava/util/ArrayList;

    invoke-virtual {p1, v3, v0}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 3638
    iget p1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v3, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_savedStarGifts;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1, v3, v0}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    if-eqz p3, :cond_1

    .line 3641
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 3643
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    iget-object p3, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_savedStarGifts;->gifts:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3644
    iget-object p1, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_savedStarGifts;->next_offset:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->lastOffset:Ljava/lang/String;

    .line 3645
    iget p1, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_savedStarGifts;->count:I

    iput p1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->totalCount:I

    .line 3646
    iget p1, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_savedStarGifts;->flags:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_2

    iget-boolean p1, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_savedStarGifts;->chat_notifications_enabled:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->chat_notifications_enabled:Ljava/lang/Boolean;

    .line 3647
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget p2, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->totalCount:I

    if-gt p1, p2, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->lastOffset:Ljava/lang/String;

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    move p1, v0

    goto :goto_2

    :cond_4
    :goto_1
    move p1, v2

    :goto_2
    iput-boolean p1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->endReached:Z

    goto :goto_3

    .line 3649
    :cond_5
    iput-boolean v2, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->endReached:Z

    .line 3651
    :goto_3
    iget p1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->starUserGiftsLoaded:I

    iget-wide v3, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->dialogId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p3, v1, v0

    aput-object p0, v1, v2

    invoke-virtual {p1, p2, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$load$1([IZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 3631
    new-instance p4, Lorg/telegram/ui/Stars/StarsController$GiftsList$$ExternalSyntheticLambda1;

    invoke-direct {p4, p0, p1, p3, p2}, Lorg/telegram/ui/Stars/StarsController$GiftsList$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stars/StarsController$GiftsList;[ILorg/telegram/tgnet/TLObject;Z)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$processCrafting$2(Lorg/telegram/tgnet/TLObject;)V
    .locals 5

    .line 3687
    instance-of v0, p1, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_savedStarGifts;

    if-eqz v0, :cond_1

    .line 3688
    check-cast p1, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_savedStarGifts;

    .line 3689
    iget v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_savedStarGifts;->users:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 3690
    iget v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_savedStarGifts;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 3691
    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_savedStarGifts;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 3692
    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_savedStarGifts;->gifts:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    move v0, v2

    .line 3694
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    iget-boolean v1, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->pinned_to_top:Z

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3695
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3696
    iget p1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->starUserGiftsLoaded:I

    iget-wide v3, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->dialogId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    const/4 v1, 0x1

    aput-object p0, v3, v1

    invoke-virtual {p1, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$processCrafting$3(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 3686
    new-instance p2, Lorg/telegram/ui/Stars/StarsController$GiftsList$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Stars/StarsController$GiftsList$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Stars/StarsController$GiftsList;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .line 3656
    iget v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->currentRequestId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3657
    iget v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->currentRequestId:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 3658
    iput v1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->currentRequestId:I

    :cond_0
    const/4 v0, 0x0

    .line 3660
    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->loading:Z

    return-void
.end method

.method public contains(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)Z
    .locals 5

    .line 3844
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    .line 3845
    invoke-static {v4, p1}, Lorg/telegram/ui/Stars/StarsController;->eq(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    return v2
.end method

.method public eq(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_1

    goto :goto_1

    .line 3721
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    move v2, v1

    .line 3722
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 3723
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eq v3, v4, :cond_3

    return v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public findGiftToUpgrade(I)I
    .locals 3

    .line 3428
    iget v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->currentAccount:I

    iget-wide v1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->dialogId:J

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Stars/StarGiftSheet;->isMineWithActions(IJ)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, p1, 0x1

    .line 3429
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 3430
    iget-object v2, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    .line 3431
    iget-boolean v2, v2, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->can_upgrade:Z

    if-eqz v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 p1, p1, -0x1

    :goto_1
    if-ltz p1, :cond_4

    .line 3436
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    .line 3437
    iget-boolean v0, v0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->can_upgrade:Z

    if-eqz v0, :cond_3

    return p1

    :cond_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_4
    return v1
.end method

.method public forCrafting(J)V
    .locals 0

    .line 3592
    iput-wide p1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->craftingGiftId:J

    return-void
.end method

.method public forceTypeIncludeFlag(IZ)V
    .locals 2

    .line 3480
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->getMask(I)I

    move-result v0

    .line 3482
    iget v1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->includeFlags:I

    not-int v0, v0

    and-int/2addr v0, v1

    or-int/2addr p1, v0

    if-eq v1, p1, :cond_0

    .line 3484
    iput p1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->includeFlags:I

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 3486
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->invalidate(Z)V

    :cond_0
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1

    if-ltz p1, :cond_1

    .line 3567
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 3569
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getInput(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3730
    :cond_0
    iget v0, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    .line 3731
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_inputSavedStarGiftUser;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_inputSavedStarGiftUser;-><init>()V

    .line 3732
    iget p1, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->msg_id:I

    iput p1, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_inputSavedStarGiftUser;->msg_id:I

    return-object v0

    .line 3735
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_inputSavedStarGiftChat;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_inputSavedStarGiftChat;-><init>()V

    .line 3736
    iget v1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->dialogId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_inputSavedStarGiftChat;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 3737
    iget-wide v1, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->saved_id:J

    iput-wide v1, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_inputSavedStarGiftChat;->saved_id:J

    return-object v0
.end method

.method public getLoadedCount()I
    .locals 1

    .line 3563
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getPinned()Ljava/util/ArrayList;
    .locals 4

    .line 3708
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 3709
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3710
    iget-object v2, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    .line 3711
    iget-boolean v3, v2, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->pinned_to_top:Z

    if-eqz v3, :cond_0

    iget-boolean v3, v2, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->unsaved:Z

    if-nez v3, :cond_0

    .line 3712
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getTotalCount()I
    .locals 1

    .line 3559
    iget v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->totalCount:I

    return v0
.end method

.method public hasFilters()Z
    .locals 2

    .line 3524
    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->sort_by_date:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->includeFlags:I

    const/16 v1, 0x30f

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 3573
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public invalidate(Z)V
    .locals 4

    .line 3579
    iget v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->currentRequestId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3580
    iget v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->currentRequestId:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 3581
    iput v1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->currentRequestId:I

    :cond_0
    const/4 v0, 0x0

    .line 3583
    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->loading:Z

    .line 3584
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    .line 3585
    iput-object v1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->lastOffset:Ljava/lang/String;

    .line 3586
    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->endReached:Z

    if-nez p1, :cond_2

    .line 3587
    iget-boolean p1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->shown:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->load()V

    return-void
.end method

.method public isInclude_displayed()Z
    .locals 2

    .line 3544
    iget v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->includeFlags:I

    const/16 v1, 0x100

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    return v0
.end method

.method public isInclude_hidden()Z
    .locals 2

    .line 3548
    iget v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->includeFlags:I

    const/16 v1, 0x200

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    return v0
.end method

.method public isInclude_limited()Z
    .locals 2

    .line 3532
    iget v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->includeFlags:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    return v0
.end method

.method public isInclude_unique()Z
    .locals 2

    .line 3540
    iget v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->includeFlags:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    return v0
.end method

.method public isInclude_unlimited()Z
    .locals 2

    .line 3528
    iget v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->includeFlags:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    return v0
.end method

.method public isInclude_upgradable()Z
    .locals 2

    .line 3536
    iget v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->includeFlags:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    return v0
.end method

.method public load()V
    .locals 11

    .line 3596
    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->loading:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->endReached:Z

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 3598
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->lastOffset:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 3599
    :goto_0
    iput-boolean v2, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->loading:Z

    .line 3601
    iget-wide v3, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->craftingGiftId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const/16 v4, 0x1e

    const/16 v7, 0xf

    const-string v8, ""

    if-eqz v3, :cond_4

    .line 3602
    new-instance v3, Lorg/telegram/tgnet/tl/TL_stars$getCraftStarGifts;

    invoke-direct {v3}, Lorg/telegram/tgnet/tl/TL_stars$getCraftStarGifts;-><init>()V

    .line 3603
    iget-wide v5, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->craftingGiftId:J

    iput-wide v5, v3, Lorg/telegram/tgnet/tl/TL_stars$getCraftStarGifts;->gift_id:J

    if-eqz v0, :cond_2

    goto :goto_1

    .line 3604
    :cond_2
    iget-object v8, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->lastOffset:Ljava/lang/String;

    :goto_1
    iput-object v8, v3, Lorg/telegram/tgnet/tl/TL_stars$getCraftStarGifts;->offset:Ljava/lang/String;

    if-eqz v0, :cond_3

    move v4, v7

    .line 3605
    :cond_3
    iput v4, v3, Lorg/telegram/tgnet/tl/TL_stars$getCraftStarGifts;->limit:I

    goto/16 :goto_4

    .line 3608
    :cond_4
    new-instance v3, Lorg/telegram/tgnet/tl/TL_stars$getSavedStarGifts;

    invoke-direct {v3}, Lorg/telegram/tgnet/tl/TL_stars$getSavedStarGifts;-><init>()V

    .line 3609
    iget-boolean v9, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->sort_by_date:Z

    xor-int/2addr v9, v2

    iput-boolean v9, v3, Lorg/telegram/tgnet/tl/TL_stars$getSavedStarGifts;->sort_by_value:Z

    .line 3610
    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->isInclude_limited()Z

    move-result v9

    xor-int/2addr v9, v2

    iput-boolean v9, v3, Lorg/telegram/tgnet/tl/TL_stars$getSavedStarGifts;->exclude_unupgradable:Z

    .line 3611
    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->isInclude_upgradable()Z

    move-result v9

    xor-int/2addr v9, v2

    iput-boolean v9, v3, Lorg/telegram/tgnet/tl/TL_stars$getSavedStarGifts;->exclude_upgradable:Z

    .line 3612
    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->isInclude_unlimited()Z

    move-result v9

    xor-int/2addr v9, v2

    iput-boolean v9, v3, Lorg/telegram/tgnet/tl/TL_stars$getSavedStarGifts;->exclude_unlimited:Z

    .line 3613
    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->isInclude_unique()Z

    move-result v9

    xor-int/2addr v9, v2

    iput-boolean v9, v3, Lorg/telegram/tgnet/tl/TL_stars$getSavedStarGifts;->exclude_unique:Z

    .line 3614
    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->isInclude_displayed()Z

    move-result v9

    xor-int/2addr v9, v2

    iput-boolean v9, v3, Lorg/telegram/tgnet/tl/TL_stars$getSavedStarGifts;->exclude_saved:Z

    .line 3615
    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->isInclude_hidden()Z

    move-result v9

    xor-int/2addr v9, v2

    iput-boolean v9, v3, Lorg/telegram/tgnet/tl/TL_stars$getSavedStarGifts;->exclude_unsaved:Z

    .line 3616
    iget-boolean v9, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->peer_color_available:Z

    iput-boolean v9, v3, Lorg/telegram/tgnet/tl/TL_stars$getSavedStarGifts;->peer_color_available:Z

    .line 3617
    iget-wide v9, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->dialogId:J

    cmp-long v5, v9, v5

    if-nez v5, :cond_5

    .line 3618
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_inputPeerSelf;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerSelf;-><init>()V

    iput-object v5, v3, Lorg/telegram/tgnet/tl/TL_stars$getSavedStarGifts;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_2

    .line 3620
    :cond_5
    iget v5, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-wide v9, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->dialogId:J

    invoke-virtual {v5, v9, v10}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v5

    iput-object v5, v3, Lorg/telegram/tgnet/tl/TL_stars$getSavedStarGifts;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    :goto_2
    if-eqz v0, :cond_6

    goto :goto_3

    .line 3622
    :cond_6
    iget-object v8, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->lastOffset:Ljava/lang/String;

    :goto_3
    iput-object v8, v3, Lorg/telegram/tgnet/tl/TL_stars$getSavedStarGifts;->offset:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 3623
    iget v4, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget v4, v4, Lorg/telegram/messenger/MessagesController;->stargiftsPinnedToTopLimit:I

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_7
    iput v4, v3, Lorg/telegram/tgnet/tl/TL_stars$getSavedStarGifts;->limit:I

    .line 3624
    iget-boolean v4, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->isCollection:Z

    if-eqz v4, :cond_8

    .line 3625
    iget v4, v3, Lorg/telegram/tgnet/tl/TL_stars$getSavedStarGifts;->flags:I

    or-int/lit8 v4, v4, 0x40

    iput v4, v3, Lorg/telegram/tgnet/tl/TL_stars$getSavedStarGifts;->flags:I

    .line 3626
    iget v4, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->collectionId:I

    iput v4, v3, Lorg/telegram/tgnet/tl/TL_stars$getSavedStarGifts;->collection_id:I

    .line 3630
    :cond_8
    :goto_4
    new-array v2, v2, [I

    .line 3631
    iget v4, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/Stars/StarsController$GiftsList$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v2, v0}, Lorg/telegram/ui/Stars/StarsController$GiftsList$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stars/StarsController$GiftsList;[IZ)V

    invoke-virtual {v4, v3, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->currentRequestId:I

    aput v0, v2, v1

    :cond_9
    :goto_5
    return-void
.end method

.method public notifyUpdate()V
    .locals 5

    .line 3398
    iget v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starUserGiftsLoaded:I

    iget-wide v2, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->dialogId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    aput-object p0, v3, v2

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public processCrafting(Ljava/util/ArrayList;Lorg/telegram/tgnet/tl/TL_stars$StarGift;)V
    .locals 11

    if-eqz p1, :cond_3

    .line 3664
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3666
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :cond_0
    :goto_0
    const/4 v4, 0x1

    if-ge v3, v0, :cond_2

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    check-cast v5, Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    move v6, v1

    .line 3667
    :goto_1
    iget-object v7, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 3668
    iget-object v7, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    .line 3669
    iget-object v7, v7, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    if-eqz v7, :cond_1

    iget-wide v7, v7, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J

    iget-wide v9, v5, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_1

    .line 3670
    iget-object v2, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3671
    iget v2, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->totalCount:I

    sub-int/2addr v2, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->totalCount:I

    move v2, v4

    goto :goto_0

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    .line 3678
    iget p1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->starUserGiftsLoaded:I

    iget-wide v2, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->dialogId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v1

    aput-object p0, v3, v4

    invoke-virtual {p1, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_3
    if-eqz p2, :cond_4

    .line 3682
    new-instance p1, Lorg/telegram/tgnet/tl/TL_stars$getSavedStarGift;

    invoke-direct {p1}, Lorg/telegram/tgnet/tl/TL_stars$getSavedStarGift;-><init>()V

    .line 3683
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_inputSavedStarGiftSlug;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_inputSavedStarGiftSlug;-><init>()V

    .line 3684
    iget-object p2, p2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->slug:Ljava/lang/String;

    iput-object p2, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_inputSavedStarGiftSlug;->slug:Ljava/lang/String;

    .line 3685
    iget-object p2, p1, Lorg/telegram/tgnet/tl/TL_stars$getSavedStarGift;->stargift:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3686
    iget p2, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/Stars/StarsController$GiftsList$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stars/StarsController$GiftsList$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stars/StarsController$GiftsList;)V

    invoke-virtual {p2, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_4
    return-void
.end method

.method public reorder(II)V
    .locals 2

    .line 3801
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    move-result p1

    if-ltz p1, :cond_2

    .line 3802
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 3804
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    .line 3806
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p2, v0, v1}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    move-result p2

    if-ltz p2, :cond_2

    .line 3807
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_1

    goto :goto_0

    .line 3809
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public reorderDone()V
    .locals 3

    .line 3813
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->savedPinnedState:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->getPinned()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->eq(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3817
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->sendPinnedOrder()V

    .line 3818
    iput-object v1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->savedPinnedState:Ljava/util/ArrayList;

    return-void

    .line 3814
    :cond_1
    :goto_0
    iput-object v1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->savedPinnedState:Ljava/util/ArrayList;

    return-void
.end method

.method public reorderPinned(II)V
    .locals 1

    .line 3794
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->savedPinnedState:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 3795
    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->getPinned()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->savedPinnedState:Ljava/util/ArrayList;

    .line 3797
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->reorder(II)V

    return-void
.end method

.method public resetFilters()V
    .locals 1

    .line 3511
    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->hasFilters()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x30f

    .line 3512
    iput v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->includeFlags:I

    const/4 v0, 0x1

    .line 3513
    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->sort_by_date:Z

    .line 3514
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->invalidate(Z)V

    return-void
.end method

.method public sendPinnedOrder()V
    .locals 7

    .line 3822
    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->isCollection:Z

    const/16 v1, 0x40

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 3823
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$updateStarGiftCollection;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$updateStarGiftCollection;-><init>()V

    .line 3824
    iget v3, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v4, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->dialogId:J

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/tgnet/tl/TL_stars$updateStarGiftCollection;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 3825
    iget v3, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->collectionId:I

    iput v3, v0, Lorg/telegram/tgnet/tl/TL_stars$updateStarGiftCollection;->collection_id:I

    .line 3826
    iget v3, v0, Lorg/telegram/tgnet/tl/TL_stars$updateStarGiftCollection;->flags:I

    or-int/lit8 v3, v3, 0x8

    iput v3, v0, Lorg/telegram/tgnet/tl/TL_stars$updateStarGiftCollection;->flags:I

    .line 3827
    iget-object v3, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_0
    if-ge v2, v4, :cond_0

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v2, v2, 0x1

    check-cast v5, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    .line 3828
    iget-object v6, v0, Lorg/telegram/tgnet/tl/TL_stars$updateStarGiftCollection;->order:Ljava/util/ArrayList;

    invoke-virtual {p0, v5}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->getInput(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3830
    :cond_0
    iget v2, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void

    .line 3832
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$toggleStarGiftsPinnedToTop;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$toggleStarGiftsPinnedToTop;-><init>()V

    .line 3833
    iget v3, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v4, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->dialogId:J

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/tgnet/tl/TL_stars$toggleStarGiftsPinnedToTop;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 3834
    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->getPinned()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_1
    if-ge v2, v4, :cond_2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v2, v2, 0x1

    check-cast v5, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    .line 3835
    iget-object v6, v0, Lorg/telegram/tgnet/tl/TL_stars$toggleStarGiftsPinnedToTop;->stargift:Ljava/util/ArrayList;

    invoke-virtual {p0, v5}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->getInput(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3837
    :cond_2
    iget v2, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Stars/StarsController$GiftsList$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lorg/telegram/ui/Stars/StarsController$GiftsList$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v2, v0, v3, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method public setCollectionId(I)V
    .locals 1

    const/4 v0, 0x1

    .line 3392
    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->isCollection:Z

    .line 3393
    iput p1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->collectionId:I

    return-void
.end method

.method public setFilters(I)V
    .locals 0

    .line 3518
    iput p1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->includeFlags:I

    const/4 p1, 0x1

    .line 3519
    iput-boolean p1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->sort_by_date:Z

    .line 3520
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->invalidate(Z)V

    return-void
.end method

.method public setPinned(Ljava/util/ArrayList;)V
    .locals 4

    .line 3743
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 3744
    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->sort_by_date:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->isCollection:Z

    if-nez v0, :cond_0

    .line 3745
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Stars/StarsController$GiftsList$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lorg/telegram/ui/Stars/StarsController$GiftsList$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3747
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 3748
    iget p1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->starUserGiftsLoaded:I

    iget-wide v2, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->dialogId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v1

    const/4 v1, 0x1

    aput-object p0, v3, v1

    invoke-virtual {p1, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 3749
    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->sendPinnedOrder()V

    return-void
.end method

.method public togglePinned(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;ZZ)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 3757
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->getPinned()Ljava/util/ArrayList;

    move-result-object v1

    .line 3758
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-eqz p2, :cond_1

    return v0

    .line 3762
    :cond_1
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move p3, v0

    goto :goto_2

    :cond_2
    if-nez p2, :cond_3

    return v0

    .line 3767
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v2, v3

    iget v4, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget v4, v4, Lorg/telegram/messenger/MessagesController;->stargiftsPinnedToTopLimit:I

    if-le v2, v4, :cond_6

    if-eqz p3, :cond_5

    .line 3770
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lez p3, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/2addr p3, v3

    iget v2, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v2, v2, Lorg/telegram/messenger/MessagesController;->stargiftsPinnedToTopLimit:I

    if-le p3, v2, :cond_4

    .line 3771
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v3

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    .line 3772
    iput-boolean v0, p3, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->pinned_to_top:Z

    goto :goto_0

    :cond_4
    move p3, v3

    goto :goto_1

    :cond_5
    return v3

    :cond_6
    move p3, v0

    .line 3778
    :goto_1
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3780
    :goto_2
    iput-boolean p2, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->pinned_to_top:Z

    .line 3781
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 3782
    iget-boolean p1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->sort_by_date:Z

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->isCollection:Z

    if-nez p1, :cond_7

    .line 3783
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    new-instance p2, Lorg/telegram/ui/Stars/StarsController$GiftsList$$ExternalSyntheticLambda3;

    invoke-direct {p2}, Lorg/telegram/ui/Stars/StarsController$GiftsList$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3785
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 3786
    iget p1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->starUserGiftsLoaded:I

    iget-wide v1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->dialogId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v0

    aput-object p0, v2, v3

    invoke-virtual {p1, p2, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 3787
    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->sendPinnedOrder()V

    return p3
.end method

.method public toggleTypeIncludeFlag(I)V
    .locals 4

    .line 3492
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->getMask(I)I

    move-result v0

    .line 3494
    iget v1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->includeFlags:I

    and-int/2addr v1, v0

    .line 3495
    invoke-static {v1, p1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-static {v1, p1, v2}, Lorg/telegram/tgnet/TLObject;->setFlag(IIZ)I

    move-result v1

    if-nez v1, :cond_0

    not-int p1, p1

    and-int v1, v0, p1

    .line 3500
    :cond_0
    iget p1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->includeFlags:I

    not-int v0, v0

    and-int/2addr v0, p1

    or-int/2addr v0, v1

    if-eq p1, v0, :cond_1

    .line 3503
    iput v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->includeFlags:I

    .line 3504
    invoke-virtual {p0, v3}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->invalidate(Z)V

    :cond_1
    return-void
.end method

.method public updateGiftsCollections(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;IZ)V
    .locals 6

    .line 3402
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    .line 3403
    invoke-static {v3, p1}, Lorg/telegram/ui/Stars/StarsController;->eq(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p3, :cond_1

    .line 3405
    iget-object v4, v3, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->collection_id:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3406
    iget-object v3, v3, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->collection_id:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3408
    :cond_1
    iget-object v3, v3, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->collection_id:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public updateGiftsUnsaved(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Z)V
    .locals 8

    .line 3416
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :cond_0
    :goto_0
    const/4 v5, 0x1

    if-ge v4, v1, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    check-cast v6, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    .line 3417
    invoke-static {v6, p1}, Lorg/telegram/ui/Stars/StarsController;->eq(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-boolean v7, v6, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->unsaved:Z

    if-eq v7, p2, :cond_0

    .line 3418
    iput-boolean p2, v6, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->unsaved:Z

    move v3, v5

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    .line 3423
    iget p1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->starUserGiftsLoaded:I

    iget-wide v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->dialogId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    aput-object p0, v1, v5

    invoke-virtual {p1, p2, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
