.class public Lorg/telegram/ui/Stars/StarsController$GiftsCollections;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stars/StarsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GiftsCollections"
.end annotation


# instance fields
.field public all:Lorg/telegram/ui/Stars/StarsController$GiftsList;

.field private collections:Ljava/util/ArrayList;

.field public creating:Z

.field public final currentAccount:I

.field public currentRequestId:I

.field public final dialogId:J

.field private filteredCollections:Ljava/util/ArrayList;

.field public gifts:Ljava/util/HashMap;

.field public loaded:Z

.field public loading:Z

.field public shown:Z


# direct methods
.method public static synthetic $r8$lambda$3DcNoxECVkEJ87EZyBr3Mu8fn-c(Lorg/telegram/ui/Stars/StarsController$GiftsCollections;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->lambda$load$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8QrrZoQF4CmusYMir7jaH_2YsGU(Lorg/telegram/ui/Stars/StarsController$GiftsCollections;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->lambda$removeGifts$7(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bTmgNTCLoBnN6adC5Ai-WG8zh6U(Lorg/telegram/ui/Stars/StarsController$GiftsCollections;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->lambda$removeGifts$6(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gfhZCB5yxKoqgvILqFd9-1Z7XSY(Lorg/telegram/ui/Stars/StarsController$GiftsCollections;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;Lorg/telegram/ui/Stars/StarsController$GiftsList;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->lambda$createCollection$3(Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;Lorg/telegram/ui/Stars/StarsController$GiftsList;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lrgihLBSwGp_0X7XkYxV5-3L1YE(Lorg/telegram/ui/Stars/StarsController$GiftsCollections;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->lambda$load$0(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pzK0WKds46Ub4gQRY8uK7BXFA14(Lorg/telegram/ui/Stars/StarsController$GiftsCollections;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;Lorg/telegram/ui/Stars/StarsController$GiftsList;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->lambda$createCollection$2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;Lorg/telegram/ui/Stars/StarsController$GiftsList;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qTEQtRx4l_gxmFCPF7XTCcSRhIM(Lorg/telegram/ui/Stars/StarsController$GiftsCollections;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->lambda$addGifts$4(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xtRbGB-TvRJCDlbzJXD6YG3TpZ8(Lorg/telegram/ui/Stars/StarsController$GiftsCollections;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->lambda$addGifts$5(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 1

    const/4 v0, 0x1

    .line 2994
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;-><init>(IJZ)V

    return-void
.end method

.method public constructor <init>(IJZ)V
    .locals 1

    .line 2996
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3004
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->collections:Ljava/util/ArrayList;

    .line 3005
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->filteredCollections:Ljava/util/ArrayList;

    .line 3007
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->gifts:Ljava/util/HashMap;

    const/4 v0, -0x1

    .line 3008
    iput v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->currentRequestId:I

    .line 2997
    iput p1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->currentAccount:I

    .line 2998
    iput-wide p2, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->dialogId:J

    if-eqz p4, :cond_0

    .line 2999
    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->load()V

    :cond_0
    return-void
.end method

.method private getHash(Ljava/util/ArrayList;)J
    .locals 6

    .line 3050
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;

    .line 3051
    iget-wide v4, v4, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;->hash:J

    invoke-static {v1, v2, v4, v5}, Lorg/telegram/messenger/MediaDataController;->calcHash(JJ)J

    move-result-wide v1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method private synthetic lambda$addGifts$4(Lorg/telegram/tgnet/TLObject;)V
    .locals 2

    .line 3264
    instance-of v0, p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;

    if-eqz v0, :cond_0

    .line 3265
    check-cast p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;

    .line 3266
    iget v0, p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;->collection_id:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 3268
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->collections:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private synthetic lambda$addGifts$5(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 3263
    new-instance p2, Lorg/telegram/ui/Stars/StarsController$GiftsCollections$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stars/StarsController$GiftsCollections;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$createCollection$2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;Lorg/telegram/ui/Stars/StarsController$GiftsList;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    const/4 v0, -0x1

    .line 3146
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    .line 3141
    iput-boolean v1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->creating:Z

    .line 3142
    instance-of v2, p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v2, :cond_1

    .line 3143
    check-cast p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;

    .line 3144
    iget-object p5, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->collections:Ljava/util/ArrayList;

    invoke-virtual {p5, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3145
    iget-object p2, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->collections:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3146
    iget-object p2, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->gifts:Ljava/util/HashMap;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3147
    iget p2, p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;->collection_id:I

    iput p2, p3, Lorg/telegram/ui/Stars/StarsController$GiftsList;->collectionId:I

    .line 3148
    iget-object p5, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->gifts:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p5, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3149
    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->refilterCollections()V

    .line 3151
    iget p2, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/NotificationCenter;->starUserGiftCollectionsLoaded:I

    iget-wide v5, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->dialogId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p5, v0, v1

    aput-object p0, v0, v3

    invoke-virtual {p2, p3, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    if-eqz p4, :cond_0

    .line 3154
    invoke-interface {p4, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    if-eqz p5, :cond_2

    .line 3158
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3160
    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    invoke-virtual {p1, p5}, Lorg/telegram/ui/Components/BulletinFactory;->showForError(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    .line 3163
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->collections:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3164
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->gifts:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3165
    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->refilterCollections()V

    .line 3167
    iget p1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->starUserGiftCollectionsLoaded:I

    iget-wide p3, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->dialogId:J

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    new-array p4, v4, [Ljava/lang/Object;

    aput-object p3, p4, v1

    aput-object p0, p4, v3

    invoke-virtual {p1, p2, p4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$createCollection$3(Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;Lorg/telegram/ui/Stars/StarsController$GiftsList;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    .line 3140
    new-instance v0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections$$ExternalSyntheticLambda6;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v2, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Stars/StarsController$GiftsCollections;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;Lorg/telegram/ui/Stars/StarsController$GiftsList;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$load$0(Lorg/telegram/tgnet/TLObject;)V
    .locals 10

    .line 3076
    instance-of v0, p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollections;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 3077
    check-cast p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollections;

    .line 3079
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->collections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3080
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->collections:Ljava/util/ArrayList;

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stars$StarGiftCollections;->collections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3081
    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->refilterCollections()V

    .line 3083
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->collections:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_1

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;

    .line 3084
    iget v6, v5, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;->collection_id:I

    invoke-virtual {p0, v6}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->getListById(I)Lorg/telegram/ui/Stars/StarsController$GiftsList;

    move-result-object v6

    if-eqz v6, :cond_0

    goto :goto_0

    .line 3086
    :cond_0
    new-instance v6, Lorg/telegram/ui/Stars/StarsController$GiftsList;

    iget v7, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->currentAccount:I

    iget-wide v8, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->dialogId:J

    invoke-direct {v6, v7, v8, v9, v3}, Lorg/telegram/ui/Stars/StarsController$GiftsList;-><init>(IJZ)V

    .line 3087
    iget v7, v5, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;->collection_id:I

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->setCollectionId(I)V

    .line 3088
    iget-object v7, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->gifts:Ljava/util/HashMap;

    iget v5, v5, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;->collection_id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3091
    :cond_1
    iput-boolean v2, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->loaded:Z

    .line 3092
    iput-boolean v3, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->loading:Z

    .line 3094
    iget p1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->starUserGiftCollectionsLoaded:I

    iget-wide v4, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->dialogId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v3

    aput-object p0, v1, v2

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void

    .line 3096
    :cond_2
    instance-of p1, p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollectionsNotModified;

    if-eqz p1, :cond_3

    .line 3097
    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->refilterCollections()V

    .line 3099
    iput-boolean v2, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->loaded:Z

    .line 3100
    iput-boolean v3, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->loading:Z

    .line 3102
    iget p1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->starUserGiftCollectionsLoaded:I

    iget-wide v4, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->dialogId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v3

    aput-object p0, v1, v2

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private synthetic lambda$load$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 3075
    new-instance p2, Lorg/telegram/ui/Stars/StarsController$GiftsCollections$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stars/StarsController$GiftsCollections;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$removeGifts$6(Lorg/telegram/tgnet/TLObject;)V
    .locals 2

    .line 3322
    instance-of v0, p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;

    if-eqz v0, :cond_0

    .line 3323
    check-cast p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;

    .line 3324
    iget v0, p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;->collection_id:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 3326
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->collections:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private synthetic lambda$removeGifts$7(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 3321
    new-instance p2, Lorg/telegram/ui/Stars/StarsController$GiftsCollections$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Stars/StarsController$GiftsCollections;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private refilterCollections()V
    .locals 3

    .line 3021
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->filteredCollections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 3022
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->collections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3023
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->collections:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;

    .line 3024
    iget v2, v1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;->gifts_count:I

    if-gtz v2, :cond_0

    goto :goto_1

    .line 3026
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->filteredCollections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addGift(ILorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Z)V
    .locals 1

    .line 3230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3231
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3232
    invoke-virtual {p0, p1, v0, p3}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->addGifts(ILjava/util/ArrayList;Z)V

    return-void
.end method

.method public addGifts(ILjava/util/ArrayList;Z)V
    .locals 8

    .line 3236
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3237
    :cond_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->getListById(I)Lorg/telegram/ui/Stars/StarsController$GiftsList;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    .line 3239
    iget-object p3, v0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {p3, v2, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 3240
    iget p3, v0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->totalCount:I

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr p3, v3

    iput p3, v0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->totalCount:I

    .line 3241
    iget p3, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p3

    sget v3, Lorg/telegram/messenger/NotificationCenter;->starUserGiftsLoaded:I

    iget-wide v4, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->dialogId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v2

    aput-object v0, v5, v1

    invoke-virtual {p3, v3, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 3242
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->updateIcon(I)V

    .line 3244
    :cond_1
    new-instance p3, Lorg/telegram/tgnet/tl/TL_stars$updateStarGiftCollection;

    invoke-direct {p3}, Lorg/telegram/tgnet/tl/TL_stars$updateStarGiftCollection;-><init>()V

    .line 3245
    iget v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v3, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->dialogId:J

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    iput-object v0, p3, Lorg/telegram/tgnet/tl/TL_stars$updateStarGiftCollection;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 3246
    iput p1, p3, Lorg/telegram/tgnet/tl/TL_stars$updateStarGiftCollection;->collection_id:I

    .line 3247
    iget v0, p3, Lorg/telegram/tgnet/tl/TL_stars$updateStarGiftCollection;->flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p3, Lorg/telegram/tgnet/tl/TL_stars$updateStarGiftCollection;->flags:I

    .line 3248
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v2, v0, :cond_4

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    .line 3249
    invoke-virtual {p0, v3, p1, v1}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->updateGiftsCollections(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;IZ)V

    .line 3250
    iget v4, v3, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->msg_id:I

    if-lez v4, :cond_2

    .line 3251
    new-instance v4, Lorg/telegram/tgnet/tl/TL_stars$TL_inputSavedStarGiftUser;

    invoke-direct {v4}, Lorg/telegram/tgnet/tl/TL_stars$TL_inputSavedStarGiftUser;-><init>()V

    .line 3252
    iget v3, v3, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->msg_id:I

    iput v3, v4, Lorg/telegram/tgnet/tl/TL_stars$TL_inputSavedStarGiftUser;->msg_id:I

    .line 3253
    iget-object v3, p3, Lorg/telegram/tgnet/tl/TL_stars$updateStarGiftCollection;->add_stargift:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3254
    :cond_2
    iget-wide v4, v3, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->saved_id:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    .line 3255
    new-instance v4, Lorg/telegram/tgnet/tl/TL_stars$TL_inputSavedStarGiftChat;

    invoke-direct {v4}, Lorg/telegram/tgnet/tl/TL_stars$TL_inputSavedStarGiftChat;-><init>()V

    .line 3256
    iget v5, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-wide v6, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->dialogId:J

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/tgnet/tl/TL_stars$TL_inputSavedStarGiftChat;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 3257
    iget-wide v5, v3, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->saved_id:J

    iput-wide v5, v4, Lorg/telegram/tgnet/tl/TL_stars$TL_inputSavedStarGiftChat;->saved_id:J

    .line 3258
    iget-object v3, p3, Lorg/telegram/tgnet/tl/TL_stars$updateStarGiftCollection;->add_stargift:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3260
    :cond_3
    const-string v3, "can\'t convert gift to inputgift to add into the collection"

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 3263
    :cond_4
    iget p1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Stars/StarsController$GiftsCollections$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stars/StarsController$GiftsCollections;)V

    invoke-virtual {p1, p3, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public createCollection(Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 8

    .line 3121
    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->creating:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3123
    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->creating:Z

    .line 3125
    new-instance v1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;

    invoke-direct {v1}, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;-><init>()V

    const/4 v2, -0x1

    .line 3126
    iput v2, v1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;->collection_id:I

    .line 3127
    iput-object p1, v1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;->title:Ljava/lang/String;

    .line 3128
    iget-object v3, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->collections:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3129
    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->refilterCollections()V

    .line 3131
    new-instance v3, Lorg/telegram/ui/Stars/StarsController$GiftsList;

    iget v4, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->currentAccount:I

    iget-wide v5, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->dialogId:J

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/telegram/ui/Stars/StarsController$GiftsList;-><init>(IJZ)V

    .line 3132
    invoke-virtual {v3, v2}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->setCollectionId(I)V

    .line 3133
    iput v7, v3, Lorg/telegram/ui/Stars/StarsController$GiftsList;->totalCount:I

    .line 3134
    iput-boolean v0, v3, Lorg/telegram/ui/Stars/StarsController$GiftsList;->endReached:Z

    .line 3135
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->gifts:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3137
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$createStarGiftCollection;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$createStarGiftCollection;-><init>()V

    .line 3138
    iget v2, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v4, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->dialogId:J

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/tl/TL_stars$createStarGiftCollection;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 3139
    iput-object p1, v0, Lorg/telegram/tgnet/tl/TL_stars$createStarGiftCollection;->title:Ljava/lang/String;

    .line 3140
    iget p1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v2, Lorg/telegram/ui/Stars/StarsController$GiftsCollections$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v1, v3, p2}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stars/StarsController$GiftsCollections;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;Lorg/telegram/ui/Stars/StarsController$GiftsList;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {p1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public findById(I)Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;
    .locals 3

    const/4 v0, 0x0

    .line 3173
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->collections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3174
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->collections:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;

    .line 3175
    iget v2, v1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;->collection_id:I

    if-ne p1, v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCollections()Ljava/util/ArrayList;
    .locals 1

    .line 3017
    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->isMine()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->collections:Ljava/util/ArrayList;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->filteredCollections:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getListById(I)Lorg/telegram/ui/Stars/StarsController$GiftsList;
    .locals 1

    .line 3064
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->gifts:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Stars/StarsController$GiftsList;

    return-object p1
.end method

.method public getListByIndex(I)Lorg/telegram/ui/Stars/StarsController$GiftsList;
    .locals 1

    if-ltz p1, :cond_1

    .line 3057
    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->getCollections()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 3059
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->getCollections()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;

    .line 3060
    iget p1, p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;->collection_id:I

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->getListById(I)Lorg/telegram/ui/Stars/StarsController$GiftsList;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public indexOf(I)I
    .locals 2

    const/4 v0, 0x0

    .line 3183
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->collections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3184
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->collections:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;

    .line 3185
    iget v1, v1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;->collection_id:I

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public invalidate(Z)V
    .locals 4

    .line 3110
    iget v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->currentRequestId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3111
    iget v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->currentRequestId:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 3112
    iput v1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->currentRequestId:I

    :cond_0
    const/4 v0, 0x0

    .line 3114
    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->loading:Z

    .line 3115
    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->loaded:Z

    if-nez p1, :cond_2

    .line 3116
    iget-boolean p1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->shown:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->load()V

    return-void
.end method

.method public isMine()Z
    .locals 5

    .line 3011
    iget-wide v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->dialogId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 3012
    iget v2, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 3013
    :cond_2
    iget v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->dialogId:J

    neg-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lorg/telegram/messenger/ChatObject;->canUserDoAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result v0

    return v0
.end method

.method public load()V
    .locals 4

    .line 3068
    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->loading:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->loaded:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 3070
    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->loading:Z

    .line 3072
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$getStarGiftCollections;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$getStarGiftCollections;-><init>()V

    .line 3073
    iget v1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->dialogId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stars$getStarGiftCollections;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 3074
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->collections:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->getHash(Ljava/util/ArrayList;)J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/tgnet/tl/TL_stars$getStarGiftCollections;->hash:J

    .line 3075
    iget v1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stars/StarsController$GiftsCollections$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stars/StarsController$GiftsCollections;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->currentRequestId:I

    :cond_1
    :goto_0
    return-void
.end method

.method public removeCollection(I)V
    .locals 4

    .line 3193
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->indexOf(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 3196
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->collections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;

    .line 3197
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->gifts:Ljava/util/HashMap;

    iget v1, p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;->collection_id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3199
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$deleteStarGiftCollection;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$deleteStarGiftCollection;-><init>()V

    .line 3200
    iget v1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->dialogId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stars$deleteStarGiftCollection;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 3201
    iget p1, p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;->collection_id:I

    iput p1, v0, Lorg/telegram/tgnet/tl/TL_stars$deleteStarGiftCollection;->collection_id:I

    .line 3202
    iget p1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public removeGift(ILorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)V
    .locals 1

    .line 3275
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3276
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3277
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->removeGifts(ILjava/util/ArrayList;)V

    return-void
.end method

.method public removeGifts(ILjava/util/ArrayList;)V
    .locals 12

    .line 3281
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3282
    :cond_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->getListById(I)Lorg/telegram/ui/Stars/StarsController$GiftsList;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 3283
    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v2

    .line 3284
    :goto_0
    iget-object v4, v0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 3285
    iget-object v4, v0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    move v5, v2

    .line 3287
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 3288
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    invoke-static {v4, v6}, Lorg/telegram/ui/Stars/StarsController;->eq(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3294
    iget-object v4, v0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3295
    iget v4, v0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->totalCount:I

    sub-int/2addr v4, v1

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->totalCount:I

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/2addr v3, v1

    goto :goto_0

    .line 3300
    :cond_3
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->updateIcon(I)V

    .line 3301
    new-instance v3, Lorg/telegram/tgnet/tl/TL_stars$updateStarGiftCollection;

    invoke-direct {v3}, Lorg/telegram/tgnet/tl/TL_stars$updateStarGiftCollection;-><init>()V

    .line 3302
    iget v4, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v5, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->dialogId:J

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v4

    iput-object v4, v3, Lorg/telegram/tgnet/tl/TL_stars$updateStarGiftCollection;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 3303
    iput p1, v3, Lorg/telegram/tgnet/tl/TL_stars$updateStarGiftCollection;->collection_id:I

    .line 3304
    iget v4, v3, Lorg/telegram/tgnet/tl/TL_stars$updateStarGiftCollection;->flags:I

    const/4 v5, 0x2

    or-int/2addr v4, v5

    iput v4, v3, Lorg/telegram/tgnet/tl/TL_stars$updateStarGiftCollection;->flags:I

    .line 3305
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v6, v2

    :goto_3
    if-ge v6, v4, :cond_6

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    .line 3306
    invoke-virtual {p0, v7, p1, v2}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->updateGiftsCollections(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;IZ)V

    .line 3307
    iget v8, v7, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->msg_id:I

    if-lez v8, :cond_4

    .line 3308
    new-instance v8, Lorg/telegram/tgnet/tl/TL_stars$TL_inputSavedStarGiftUser;

    invoke-direct {v8}, Lorg/telegram/tgnet/tl/TL_stars$TL_inputSavedStarGiftUser;-><init>()V

    .line 3309
    iget v7, v7, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->msg_id:I

    iput v7, v8, Lorg/telegram/tgnet/tl/TL_stars$TL_inputSavedStarGiftUser;->msg_id:I

    .line 3310
    iget-object v7, v3, Lorg/telegram/tgnet/tl/TL_stars$updateStarGiftCollection;->delete_stargift:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 3311
    :cond_4
    iget-wide v8, v7, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->saved_id:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_5

    .line 3312
    new-instance v8, Lorg/telegram/tgnet/tl/TL_stars$TL_inputSavedStarGiftChat;

    invoke-direct {v8}, Lorg/telegram/tgnet/tl/TL_stars$TL_inputSavedStarGiftChat;-><init>()V

    .line 3313
    iget v9, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->currentAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget-wide v10, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->dialogId:J

    invoke-virtual {v9, v10, v11}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v9

    iput-object v9, v8, Lorg/telegram/tgnet/tl/TL_stars$TL_inputSavedStarGiftChat;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 3314
    iget-wide v9, v7, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->saved_id:J

    iput-wide v9, v8, Lorg/telegram/tgnet/tl/TL_stars$TL_inputSavedStarGiftChat;->saved_id:J

    .line 3315
    iget-object v7, v3, Lorg/telegram/tgnet/tl/TL_stars$updateStarGiftCollection;->delete_stargift:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 3317
    :cond_5
    const-string v7, "can\'t convert gift to inputgift to add into the collection"

    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    goto :goto_3

    .line 3320
    :cond_6
    iget-object p1, v3, Lorg/telegram/tgnet/tl/TL_stars$updateStarGiftCollection;->delete_stargift:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 3321
    iget p1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Stars/StarsController$GiftsCollections$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stars/StarsController$GiftsCollections;)V

    invoke-virtual {p1, v3, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 3330
    iget p1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->starUserGiftsLoaded:I

    iget-wide v3, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->dialogId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v3, v4, v2

    aput-object v0, v4, v1

    invoke-virtual {p1, p2, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public rename(ILjava/lang/String;)V
    .locals 4

    .line 3221
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$updateStarGiftCollection;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$updateStarGiftCollection;-><init>()V

    .line 3222
    iget v1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->dialogId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stars$updateStarGiftCollection;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 3223
    iput p1, v0, Lorg/telegram/tgnet/tl/TL_stars$updateStarGiftCollection;->collection_id:I

    .line 3224
    iget p1, v0, Lorg/telegram/tgnet/tl/TL_stars$updateStarGiftCollection;->flags:I

    or-int/lit8 p1, p1, 0x1

    iput p1, v0, Lorg/telegram/tgnet/tl/TL_stars$updateStarGiftCollection;->flags:I

    .line 3225
    iput-object p2, v0, Lorg/telegram/tgnet/tl/TL_stars$updateStarGiftCollection;->title:Ljava/lang/String;

    .line 3226
    iget p1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public reorder(Ljava/util/ArrayList;)V
    .locals 7

    .line 3334
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3335
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->collections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;

    .line 3336
    iget v6, v5, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;->collection_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3338
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3339
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_1
    :goto_1
    if-ge v3, v2, :cond_2

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 3340
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;

    if-eqz v4, :cond_1

    .line 3342
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3346
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->collections:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 3347
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->collections:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3348
    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->refilterCollections()V

    return-void
.end method

.method public sendOrder()V
    .locals 6

    .line 3352
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$reorderStarGiftCollections;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$reorderStarGiftCollections;-><init>()V

    .line 3353
    iget v1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->dialogId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stars$reorderStarGiftCollections;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 3354
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->collections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;

    .line 3355
    iget-object v5, v0, Lorg/telegram/tgnet/tl/TL_stars$reorderStarGiftCollections;->order:Ljava/util/ArrayList;

    iget v4, v4, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;->collection_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3357
    :cond_0
    iget v1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 3358
    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->refilterCollections()V

    return-void
.end method

.method public updateGiftsCollections(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;IZ)V
    .locals 2

    .line 3031
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->gifts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stars/StarsController$GiftsList;

    .line 3032
    invoke-virtual {v1, p1, p2, p3}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->updateGiftsCollections(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;IZ)V

    goto :goto_0

    .line 3034
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->all:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    if-eqz v0, :cond_1

    .line 3035
    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->updateGiftsCollections(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;IZ)V

    :cond_1
    return-void
.end method

.method public updateGiftsUnsaved(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Z)V
    .locals 2

    .line 3040
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->gifts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stars/StarsController$GiftsList;

    .line 3041
    invoke-virtual {v1, p1, p2}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->updateGiftsUnsaved(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Z)V

    goto :goto_0

    .line 3043
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->all:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    if-eqz v0, :cond_1

    .line 3044
    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->updateGiftsUnsaved(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Z)V

    :cond_1
    return-void
.end method

.method public updateIcon(I)V
    .locals 5

    .line 3206
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->getListById(I)Lorg/telegram/ui/Stars/StarsController$GiftsList;

    move-result-object v0

    .line 3207
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->findById(I)Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;

    move-result-object p1

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_2

    .line 3209
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move-object v0, v3

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    :goto_0
    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 3211
    iget v0, p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;->flags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;->flags:I

    .line 3212
    iput-object v3, p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;->icon:Lorg/telegram/tgnet/TLRPC$Document;

    goto :goto_1

    .line 3214
    :cond_2
    iget v3, p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;->flags:I

    or-int/2addr v3, v1

    iput v3, p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;->flags:I

    .line 3215
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    invoke-virtual {v0}, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    iput-object v0, p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;->icon:Lorg/telegram/tgnet/TLRPC$Document;

    .line 3217
    :goto_1
    iget p1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->starUserGiftCollectionsLoaded:I

    iget-wide v3, p0, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->dialogId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v2

    aput-object p0, v4, v1

    invoke-virtual {p1, v0, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_3
    :goto_2
    return-void
.end method
