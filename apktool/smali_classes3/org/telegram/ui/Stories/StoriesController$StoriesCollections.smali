.class public Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/StoriesController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StoriesCollections"
.end annotation


# instance fields
.field public collections:Ljava/util/ArrayList;

.field public creating:Z

.field public final currentAccount:I

.field public currentRequestId:I

.field public final dialogId:J

.field public final isSelf:Z

.field private lastCollections:Ljava/util/ArrayList;

.field public loaded:Z

.field private loadedCache:Z

.field public loading:Z

.field final synthetic this$0:Lorg/telegram/ui/Stories/StoriesController;


# direct methods
.method public static synthetic $r8$lambda$EjwPCvVHg1OdqsSWaYmZgALK3p4(Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->lambda$load$0(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Pqh_viu1ivnpOd51WOAEMNnwbw8(Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->lambda$createCollection$5(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VCeUGGr2GZ3ceowPtrSEpZdH3AU(Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->lambda$load$3(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dNWDaulBCDVU9GkGHWt5mlqV1Is(Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->lambda$createCollection$4(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gfm2UPehN4dX3BgyEYhLjM_LjNo(Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->lambda$load$1(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uvFFfvs_KHXuIe2qQkvEjw5ayEQ(Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->lambda$load$2(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method private constructor <init>(Lorg/telegram/ui/Stories/StoriesController;IJ)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    .line 4819
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;-><init>(Lorg/telegram/ui/Stories/StoriesController;IJZ)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Stories/StoriesController;IJLorg/telegram/ui/Stories/StoriesController-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;-><init>(Lorg/telegram/ui/Stories/StoriesController;IJ)V

    return-void
.end method

.method private constructor <init>(Lorg/telegram/ui/Stories/StoriesController;IJZ)V
    .locals 0

    .line 4822
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4842
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->lastCollections:Ljava/util/ArrayList;

    .line 4843
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->collections:Ljava/util/ArrayList;

    const/4 p1, -0x1

    .line 4844
    iput p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->currentRequestId:I

    .line 4823
    iput p2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->currentAccount:I

    .line 4824
    iput-wide p3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->dialogId:J

    .line 4825
    invoke-static {p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide p1

    cmp-long p1, p3, p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->isSelf:Z

    if-eqz p5, :cond_1

    .line 4826
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->load()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$createCollection$4(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 5

    const/4 v0, 0x0

    .line 4949
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->creating:Z

    .line 4950
    instance-of v1, p1, Lorg/telegram/tgnet/tl/TL_stories$TL_storyAlbum;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 4951
    check-cast p1, Lorg/telegram/tgnet/tl/TL_stories$TL_storyAlbum;

    invoke-static {p1}, Lorg/telegram/ui/Stories/StoriesController$StoryAlbum;->from(Lorg/telegram/tgnet/tl/TL_stories$TL_storyAlbum;)Lorg/telegram/ui/Stories/StoriesController$StoryAlbum;

    move-result-object p1

    .line 4953
    iget-object p3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->collections:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4955
    invoke-direct {p0, v2}, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->updateAlbumsListCache(Z)V

    if-eqz p2, :cond_0

    .line 4957
    invoke-interface {p2, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    if-eqz p3, :cond_2

    .line 4961
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4963
    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/BulletinFactory;->showForError(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    .line 4967
    :cond_2
    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->storyAlbumsCollectionsUpdate:I

    iget-wide v3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->dialogId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p3, v1, v0

    aput-object p0, v1, v2

    invoke-virtual {p1, p2, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$createCollection$5(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 4948
    new-instance v0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p2, p1, p3}, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$load$0(Ljava/util/List;)V
    .locals 5

    .line 4854
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->collections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4855
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->collections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x1

    .line 4856
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->loadedCache:Z

    const/4 v0, 0x0

    .line 4857
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->loading:Z

    .line 4858
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->load()V

    .line 4860
    iget v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->storyAlbumsCollectionsUpdate:I

    iget-wide v3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->dialogId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v0

    aput-object p0, v4, p1

    invoke-virtual {v1, v2, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$load$1(Ljava/util/List;)V
    .locals 1

    .line 4853
    new-instance v0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;Ljava/util/List;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$load$2(Lorg/telegram/tgnet/TLObject;)V
    .locals 6

    .line 4870
    instance-of v0, p1, Lorg/telegram/tgnet/tl/TL_stories$TL_albums;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 4871
    check-cast p1, Lorg/telegram/tgnet/tl/TL_stories$TL_albums;

    .line 4872
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p1, Lorg/telegram/tgnet/tl/TL_stories$Albums;->albums:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 4873
    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stories$Albums;->albums:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_0

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lorg/telegram/tgnet/tl/TL_stories$TL_storyAlbum;

    .line 4874
    invoke-static {v5}, Lorg/telegram/ui/Stories/StoriesController$StoryAlbum;->from(Lorg/telegram/tgnet/tl/TL_stories$TL_storyAlbum;)Lorg/telegram/ui/Stories/StoriesController$StoryAlbum;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4877
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->collections:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 4878
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->collections:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4880
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->lastCollections:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 4881
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->lastCollections:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4891
    iput-boolean v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->loaded:Z

    .line 4892
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->loading:Z

    .line 4894
    invoke-direct {p0, v2}, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->updateAlbumsListCache(Z)V

    return-void

    .line 4895
    :cond_1
    instance-of p1, p1, Lorg/telegram/tgnet/tl/TL_stories$TL_albumsNotModified;

    if-eqz p1, :cond_2

    .line 4896
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->collections:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 4897
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->collections:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->lastCollections:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4899
    iput-boolean v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->loaded:Z

    .line 4900
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->loading:Z

    .line 4902
    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->storyAlbumsCollectionsUpdate:I

    iget-wide v3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->dialogId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v1

    aput-object p0, v4, v2

    invoke-virtual {p1, v0, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$load$3(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 4869
    new-instance p2, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateAlbumsListCache(Z)V
    .locals 4

    .line 4908
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->dialogId:J

    iget-object v3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->collections:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesStorage;->saveStoryAlbumsCache(JLjava/util/List;)V

    if-eqz p1, :cond_0

    .line 4910
    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->storyAlbumsCollectionsUpdate:I

    iget-wide v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->dialogId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object p0, v2, v1

    invoke-virtual {p1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addStories(ILjava/util/ArrayList;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v5, p1

    move-object/from16 v7, p2

    .line 5023
    new-instance v8, Lorg/telegram/tgnet/tl/TL_stories$TL_updateAlbum;

    invoke-direct {v8}, Lorg/telegram/tgnet/tl/TL_stories$TL_updateAlbum;-><init>()V

    .line 5024
    iget v1, v0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, v0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->dialogId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v8, Lorg/telegram/tgnet/tl/TL_stories$TL_updateAlbum;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 5025
    iput v5, v8, Lorg/telegram/tgnet/tl/TL_stories$TL_updateAlbum;->album_id:I

    .line 5026
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v8, Lorg/telegram/tgnet/tl/TL_stories$TL_updateAlbum;->add_stories:Ljava/util/ArrayList;

    .line 5027
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v9, 0x0

    move v2, v9

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    .line 5028
    iget-object v4, v8, Lorg/telegram/tgnet/tl/TL_stories$TL_updateAlbum;->add_stories:Ljava/util/ArrayList;

    iget v3, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5031
    :cond_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v9

    :cond_1
    :goto_1
    if-ge v2, v1, :cond_3

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    .line 5032
    iget-object v4, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->albums:Ljava/util/ArrayList;

    if-nez v4, :cond_2

    .line 5033
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->albums:Ljava/util/ArrayList;

    .line 5034
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 5035
    :cond_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 5036
    iget-object v3, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->albums:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 5040
    :cond_3
    iget v1, v0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v8, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 5041
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v2, v0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->dialogId:J

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lorg/telegram/ui/Stories/StoriesController;->-$$Nest$mgetStoriesList(Lorg/telegram/ui/Stories/StoriesController;JIIZ)Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    move-result-object v1

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    .line 5043
    invoke-virtual {v1, v7, v2}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->updateStories(Ljava/util/List;Z)V

    .line 5046
    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->collections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v9

    :goto_2
    if-ge v3, v2, :cond_6

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lorg/telegram/ui/Stories/StoriesController$StoryAlbum;

    .line 5047
    iget-object v10, v0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v11, v0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->dialogId:J

    iget v14, v4, Lorg/telegram/ui/Stories/StoriesController$StoryAlbum;->album_id:I

    const/4 v15, 0x0

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lorg/telegram/ui/Stories/StoriesController;->-$$Nest$mgetStoriesList(Lorg/telegram/ui/Stories/StoriesController;JIIZ)Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    move-result-object v4

    if-nez v4, :cond_5

    goto :goto_2

    .line 5051
    :cond_5
    iget-object v6, v8, Lorg/telegram/tgnet/tl/TL_stories$TL_updateAlbum;->add_stories:Ljava/util/ArrayList;

    invoke-virtual {v4, v5, v6, v9}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->updateStoryItemsAlbums(ILjava/util/List;Z)V

    goto :goto_2

    :cond_6
    return-void
.end method

.method public canCreateNewAlbum()Z
    .locals 4

    .line 4830
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->isSelf:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->dialogId:J

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Stories/StoriesController;->canEditStoryAlbums(J)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 4833
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->loaded:Z

    if-nez v0, :cond_1

    return v1

    .line 4836
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->collections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->config:Lorg/telegram/messenger/AppGlobalConfig;

    iget-object v2, v2, Lorg/telegram/messenger/AppGlobalConfig;->storiesAlbumsLimit:Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

    invoke-virtual {v2}, Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;->get()I

    move-result v2

    if-ge v0, v2, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public createCollection(Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 4

    .line 4929
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->creating:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4931
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->creating:Z

    .line 4945
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stories$TL_createAlbum;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stories$TL_createAlbum;-><init>()V

    .line 4946
    iget v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->dialogId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_createAlbum;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 4947
    iput-object p1, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_createAlbum;->title:Ljava/lang/String;

    .line 4948
    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v1, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p2}, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public findById(I)Lorg/telegram/ui/Stories/StoriesController$StoryAlbum;
    .locals 3

    const/4 v0, 0x0

    .line 4974
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->collections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4975
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->collections:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/StoriesController$StoryAlbum;

    .line 4976
    iget v2, v1, Lorg/telegram/ui/Stories/StoriesController$StoryAlbum;->album_id:I

    if-ne p1, v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public indexOf(I)I
    .locals 2

    const/4 v0, 0x0

    .line 4984
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->collections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4985
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->collections:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/StoriesController$StoryAlbum;

    .line 4986
    iget v1, v1, Lorg/telegram/ui/Stories/StoriesController$StoryAlbum;->album_id:I

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public load()V
    .locals 4

    .line 4847
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->loading:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->loaded:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 4849
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->loading:Z

    .line 4851
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->loadedCache:Z

    if-nez v0, :cond_1

    .line 4852
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->dialogId:J

    new-instance v3, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;)V

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesStorage;->loadStoryAlbumsCache(JLjava/util/function/Consumer;)V

    return-void

    .line 4866
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stories$TL_getAlbums;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stories$TL_getAlbums;-><init>()V

    .line 4867
    iget v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->dialogId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_getAlbums;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 4869
    iget v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->currentRequestId:I

    :cond_2
    :goto_0
    return-void
.end method

.method public removeCollection(I)V
    .locals 4

    .line 4994
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->indexOf(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 4997
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->collections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Stories/StoriesController$StoryAlbum;

    .line 4998
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stories$TL_deleteAlbum;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stories$TL_deleteAlbum;-><init>()V

    .line 4999
    iget v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->dialogId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_deleteAlbum;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 5000
    iget p1, p1, Lorg/telegram/ui/Stories/StoriesController$StoryAlbum;->album_id:I

    iput p1, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_deleteAlbum;->album_id:I

    .line 5001
    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    const/4 p1, 0x1

    .line 5003
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->updateAlbumsListCache(Z)V

    return-void
.end method

.method public removeStories(ILjava/util/ArrayList;)V
    .locals 11

    .line 5056
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stories$TL_updateAlbum;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stories$TL_updateAlbum;-><init>()V

    .line 5057
    iget v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->dialogId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_updateAlbum;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 5058
    iput p1, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_updateAlbum;->album_id:I

    .line 5059
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_updateAlbum;->delete_stories:Ljava/util/ArrayList;

    .line 5060
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    .line 5061
    iget-object v5, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_updateAlbum;->delete_stories:Ljava/util/ArrayList;

    iget v4, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5064
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :cond_1
    :goto_1
    const/4 v4, 0x0

    if-ge v3, v1, :cond_2

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    check-cast v5, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    .line 5065
    iget-object v6, v5, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->albums:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    .line 5066
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5067
    iget-object v6, v5, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->albums:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 5068
    iput-object v4, v5, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->albums:Ljava/util/ArrayList;

    goto :goto_1

    .line 5073
    :cond_2
    iget v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 5074
    iget-object v5, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v6, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->dialogId:J

    const/4 v8, 0x0

    const/4 v10, 0x0

    move v9, p1

    invoke-static/range {v5 .. v10}, Lorg/telegram/ui/Stories/StoriesController;->-$$Nest$mgetStoriesList(Lorg/telegram/ui/Stories/StoriesController;JIIZ)Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 5076
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->updateDeletedStories(Ljava/util/List;)V

    .line 5079
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->collections:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_2
    if-ge v2, p2, :cond_5

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Lorg/telegram/ui/Stories/StoriesController$StoryAlbum;

    .line 5080
    iget-object v3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v4, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->dialogId:J

    iget v7, v1, Lorg/telegram/ui/Stories/StoriesController$StoryAlbum;->album_id:I

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lorg/telegram/ui/Stories/StoriesController;->-$$Nest$mgetStoriesList(Lorg/telegram/ui/Stories/StoriesController;JIIZ)Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_2

    .line 5084
    :cond_4
    iget-object v3, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_updateAlbum;->delete_stories:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-virtual {v1, v9, v3, v4}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->updateStoryItemsAlbums(ILjava/util/List;Z)V

    goto :goto_2

    :cond_5
    return-void
.end method

.method public renameCollection(ILjava/lang/String;)V
    .locals 4

    .line 5007
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 5010
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->collections:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stories/StoriesController$StoryAlbum;

    .line 5011
    iput-object p2, v0, Lorg/telegram/ui/Stories/StoriesController$StoryAlbum;->title:Ljava/lang/String;

    .line 5013
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stories$TL_updateAlbum;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stories$TL_updateAlbum;-><init>()V

    .line 5014
    iget v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->dialogId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_updateAlbum;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 5015
    iput p1, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_updateAlbum;->album_id:I

    .line 5016
    iput-object p2, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_updateAlbum;->title:Ljava/lang/String;

    .line 5017
    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    const/4 p1, 0x1

    .line 5019
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->updateAlbumsListCache(Z)V

    return-void
.end method

.method public reorderComplete(Z)V
    .locals 0

    .line 5107
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->sendOrder()V

    .line 5108
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->updateAlbumsListCache(Z)V

    return-void
.end method

.method public reorderStep(Ljava/util/ArrayList;)V
    .locals 7

    .line 5090
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5091
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->collections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lorg/telegram/ui/Stories/StoriesController$StoryAlbum;

    .line 5092
    iget v6, v5, Lorg/telegram/ui/Stories/StoriesController$StoryAlbum;->album_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5094
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5095
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

    .line 5096
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Stories/StoriesController$StoryAlbum;

    if-eqz v4, :cond_1

    .line 5098
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 5102
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->collections:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 5103
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->collections:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public sendOrder()V
    .locals 6

    .line 5112
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stories$TL_reorderAlbums;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stories$TL_reorderAlbums;-><init>()V

    .line 5113
    iget v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->dialogId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_reorderAlbums;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 5114
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_reorderAlbums;->order:Ljava/util/ArrayList;

    .line 5115
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->collections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lorg/telegram/ui/Stories/StoriesController$StoryAlbum;

    .line 5116
    iget-object v5, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_reorderAlbums;->order:Ljava/util/ArrayList;

    iget v4, v4, Lorg/telegram/ui/Stories/StoriesController$StoryAlbum;->album_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5119
    :cond_0
    iget v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method
