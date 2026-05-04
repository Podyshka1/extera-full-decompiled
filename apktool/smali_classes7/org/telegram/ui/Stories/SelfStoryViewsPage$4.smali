.class Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/SelfStoryViewsPage;-><init>(Lorg/telegram/ui/Stories/StoryViewer;Landroid/content/Context;Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;Lcom/google/android/exoplayer2/util/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

.field final synthetic val$storyViewer:Lorg/telegram/ui/Stories/StoryViewer;


# direct methods
.method public static synthetic $r8$lambda$1KN0hYXengMVemo07StZZMXm3gg(Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/Cells/ReactedUserHolderView;Lorg/telegram/tgnet/tl/TL_stories$StoryView;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;->lambda$onItemClick$2(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/Cells/ReactedUserHolderView;Lorg/telegram/tgnet/tl/TL_stories$StoryView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6cRBX1vNBff6NygIF_H0MebLVbc(Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/Cells/ReactedUserHolderView;Lorg/telegram/tgnet/tl/TL_stories$StoryView;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;->lambda$onItemClick$3(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/Cells/ReactedUserHolderView;Lorg/telegram/tgnet/tl/TL_stories$StoryView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$A0v459o1TLR1YtC4ulHSziXU5B4(Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/ui/Cells/ReactedUserHolderView;Lorg/telegram/tgnet/tl/TL_stories$StoryView;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;->lambda$onItemClick$0(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/ui/Cells/ReactedUserHolderView;Lorg/telegram/tgnet/tl/TL_stories$StoryView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GhJ4X-DceIZPwagje96zzfd60m8(Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/ui/Cells/ReactedUserHolderView;Lorg/telegram/tgnet/tl/TL_stories$StoryView;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;->lambda$onItemClick$4(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/ui/Cells/ReactedUserHolderView;Lorg/telegram/tgnet/tl/TL_stories$StoryView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SYNn7a_m0D5ZJjALqQQatMUqx2I(Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;Ljava/util/ArrayList;Lorg/telegram/ui/Components/ItemOptions;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;->lambda$onItemClick$5(Ljava/util/ArrayList;Lorg/telegram/ui/Components/ItemOptions;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dT0rGYOjTZm3f9Q4VW6lefiz1Kk(Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/ui/Cells/ReactedUserHolderView;Lorg/telegram/tgnet/tl/TL_stories$StoryView;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;->lambda$onItemClick$1(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/ui/Cells/ReactedUserHolderView;Lorg/telegram/tgnet/tl/TL_stories$StoryView;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage;Lorg/telegram/ui/Stories/StoryViewer;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    iput-object p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;->val$storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onItemClick$0(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/ui/Cells/ReactedUserHolderView;Lorg/telegram/tgnet/tl/TL_stories$StoryView;)V
    .locals 4

    .line 313
    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object p1

    iget-wide v0, p2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const/4 p2, 0x1

    invoke-virtual {p1, v0, v1, p2}, Lorg/telegram/ui/Stories/StoriesController;->updateBlockUser(JZ)V

    .line 314
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    iget-object v0, p1, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$raw;->ic_ban:I

    sget v1, Lorg/telegram/messenger/R$string;->StoryHidFromToast:I

    new-array v2, p2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    .line 315
    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v0, p3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 316
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 317
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    invoke-static {p1, p5}, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->-$$Nest$misStoryShownToUser(Lorg/telegram/ui/Stories/SelfStoryViewsPage;Lorg/telegram/tgnet/tl/TL_stories$StoryView;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f000000    # 0.5f

    :goto_0
    invoke-virtual {p4, p1, p2}, Lorg/telegram/ui/Cells/ReactedUserHolderView;->animateAlpha(FZ)V

    return-void
.end method

.method private synthetic lambda$onItemClick$1(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/ui/Cells/ReactedUserHolderView;Lorg/telegram/tgnet/tl/TL_stories$StoryView;)V
    .locals 4

    .line 320
    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object p1

    iget-wide v0, p2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const/4 p2, 0x0

    invoke-virtual {p1, v0, v1, p2}, Lorg/telegram/ui/Stories/StoriesController;->updateBlockUser(JZ)V

    .line 321
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    iget-object v0, p1, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$raw;->contact_check:I

    sget v1, Lorg/telegram/messenger/R$string;->StoryShownBackToToast:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p3, v3, p2

    .line 322
    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 323
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 324
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    invoke-static {p1, p5}, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->-$$Nest$misStoryShownToUser(Lorg/telegram/ui/Stories/SelfStoryViewsPage;Lorg/telegram/tgnet/tl/TL_stories$StoryView;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f000000    # 0.5f

    :goto_0
    invoke-virtual {p4, p1, v2}, Lorg/telegram/ui/Cells/ReactedUserHolderView;->animateAlpha(FZ)V

    return-void
.end method

.method private synthetic lambda$onItemClick$2(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/Cells/ReactedUserHolderView;Lorg/telegram/tgnet/tl/TL_stories$StoryView;)V
    .locals 2

    .line 336
    iget-wide v0, p2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/MessagesController;->blockPeer(J)V

    .line 337
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    iget-object p2, p1, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createBanBulletin(Z)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 338
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    invoke-static {p1, p4}, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->-$$Nest$misStoryShownToUser(Lorg/telegram/ui/Stories/SelfStoryViewsPage;Lorg/telegram/tgnet/tl/TL_stories$StoryView;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f000000    # 0.5f

    :goto_0
    invoke-virtual {p3, p1, p2}, Lorg/telegram/ui/Cells/ReactedUserHolderView;->animateAlpha(FZ)V

    return-void
.end method

.method private synthetic lambda$onItemClick$3(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/Cells/ReactedUserHolderView;Lorg/telegram/tgnet/tl/TL_stories$StoryView;)V
    .locals 4

    .line 341
    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Stories/StoriesController;->updateBlockUser(JZ)V

    .line 342
    iget-wide v0, p2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/MessagesController;->unblockPeer(J)V

    .line 343
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    iget-object p2, p1, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/BulletinFactory;->createBanBulletin(Z)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 344
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    invoke-static {p1, p4}, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->-$$Nest$misStoryShownToUser(Lorg/telegram/ui/Stories/SelfStoryViewsPage;Lorg/telegram/tgnet/tl/TL_stories$StoryView;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f000000    # 0.5f

    :goto_0
    const/4 p2, 0x1

    invoke-virtual {p3, p1, p2}, Lorg/telegram/ui/Cells/ReactedUserHolderView;->animateAlpha(FZ)V

    return-void
.end method

.method private synthetic lambda$onItemClick$4(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/ui/Cells/ReactedUserHolderView;Lorg/telegram/tgnet/tl/TL_stories$StoryView;)V
    .locals 5

    .line 347
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 348
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    iget p1, p1, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/ContactsController;->deleteContact(Ljava/util/ArrayList;Z)V

    .line 350
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    iget-object v0, p1, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$raw;->ic_ban:I

    sget v2, Lorg/telegram/messenger/R$string;->DeletedFromYourContacts:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p2, v4, v1

    .line 351
    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 352
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 353
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    invoke-static {p1, p4}, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->-$$Nest$misStoryShownToUser(Lorg/telegram/ui/Stories/SelfStoryViewsPage;Lorg/telegram/tgnet/tl/TL_stories$StoryView;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f000000    # 0.5f

    :goto_0
    invoke-virtual {p3, p1, v3}, Lorg/telegram/ui/Cells/ReactedUserHolderView;->animateAlpha(FZ)V

    return-void
.end method

.method private synthetic lambda$onItemClick$5(Ljava/util/ArrayList;Lorg/telegram/ui/Components/ItemOptions;Landroid/view/View;)V
    .locals 3

    .line 366
    new-instance p3, Lorg/telegram/ui/Components/EmojiPacksAlert;

    new-instance v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4$1;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    .line 381
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    iget-object v2, v2, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p3, v0, v1, v2, p1}, Lorg/telegram/ui/Components/EmojiPacksAlert;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/util/ArrayList;)V

    invoke-virtual {p3}, Lorg/telegram/ui/Components/EmojiPacksAlert;->show()V

    .line 382
    invoke-virtual {p2}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)Z
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 273
    instance-of v2, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;

    const/4 v7, 0x0

    if-nez v2, :cond_0

    return v7

    .line 276
    :cond_0
    move-object v4, v0

    check-cast v4, Lorg/telegram/ui/Cells/ReactedUserHolderView;

    .line 277
    iget-object v2, v1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;->val$storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    if-nez v2, :cond_2

    :cond_1
    move v14, v7

    goto/16 :goto_a

    .line 280
    :cond_2
    iget-object v2, v1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    iget-object v2, v2, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->listAdapter:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;

    iget-object v2, v2, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->items:Ljava/util/ArrayList;

    move/from16 v3, p2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;

    iget-object v5, v2, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;->view:Lorg/telegram/tgnet/tl/TL_stories$StoryView;

    if-nez v5, :cond_3

    return v7

    .line 285
    :cond_3
    iget-object v2, v1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    iget v2, v2, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    .line 287
    iget-wide v8, v5, Lorg/telegram/tgnet/tl/TL_stories$StoryView;->user_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    if-nez v3, :cond_4

    return v7

    .line 292
    :cond_4
    iget-object v6, v2, Lorg/telegram/messenger/MessagesController;->blockePeers:Lorg/telegram/messenger/support/LongSparseIntArray;

    iget-wide v8, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v6, v8, v9}, Lorg/telegram/messenger/support/LongSparseIntArray;->indexOfKey(J)I

    move-result v6

    const/4 v8, 0x1

    if-ltz v6, :cond_5

    move v9, v8

    goto :goto_0

    :cond_5
    move v9, v7

    .line 293
    :goto_0
    iget-boolean v6, v3, Lorg/telegram/tgnet/TLRPC$User;->contact:Z

    if-nez v6, :cond_7

    iget-object v6, v1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    iget v6, v6, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/messenger/ContactsController;->contactsDict:Lj$/util/concurrent/ConcurrentHashMap;

    iget-wide v10, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v6, v10}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_6

    goto :goto_1

    :cond_6
    move v10, v7

    goto :goto_2

    :cond_7
    :goto_1
    move v10, v8

    .line 294
    :goto_2
    iget-object v6, v1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    invoke-static {v6, v5}, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->-$$Nest$misStoryShownToUser(Lorg/telegram/ui/Stories/SelfStoryViewsPage;Lorg/telegram/tgnet/tl/TL_stories$StoryView;)Z

    move-result v6

    .line 295
    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v11

    invoke-virtual {v11, v5}, Lorg/telegram/ui/Stories/StoriesController;->isBlocked(Lorg/telegram/tgnet/tl/TL_stories$StoryView;)Z

    move-result v11

    .line 296
    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v12

    .line 298
    iget-object v13, v3, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_9

    iget-object v13, v3, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_8

    const-string v13, ""

    goto :goto_3

    :cond_8
    iget-object v13, v3, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    goto :goto_3

    :cond_9
    iget-object v13, v3, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 300
    :goto_3
    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/4 v15, 0x2

    if-le v14, v15, :cond_a

    .line 301
    invoke-virtual {v13, v7, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    :cond_a
    if-eqz v12, :cond_b

    return v7

    .line 308
    :cond_b
    iget-object v14, v1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;->val$storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v14, v14, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    iget-object v15, v1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    iget-object v15, v15, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v14, v15, v0}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    const/4 v14, 0x3

    .line 309
    invoke-virtual {v0, v14}, Lorg/telegram/ui/Components/ItemOptions;->setGravity(I)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ItemOptions;->ignoreX()Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    new-instance v14, Landroid/graphics/drawable/ColorDrawable;

    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    move/from16 v16, v7

    iget-object v7, v1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    iget-object v7, v7, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 310
    invoke-static {v15, v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    invoke-direct {v14, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v14}, Lorg/telegram/ui/Components/ItemOptions;->setScrimViewBackground(Landroid/graphics/drawable/Drawable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    const/16 v7, 0x85

    .line 311
    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/ItemOptions;->setDimAlpha(I)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v7

    if-eqz v6, :cond_c

    if-nez v11, :cond_c

    if-nez v9, :cond_c

    if-nez v12, :cond_c

    move v14, v8

    goto :goto_4

    :cond_c
    move/from16 v14, v16

    :goto_4
    sget v15, Lorg/telegram/messenger/R$drawable;->msg_stories_myhide:I

    sget v0, Lorg/telegram/messenger/R$string;->StoryHideFrom:I

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v13, v6, v16

    .line 312
    invoke-static {v0, v6}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    new-instance v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4$$ExternalSyntheticLambda0;

    move-object/from16 v23, v5

    move-object v5, v4

    move-object v4, v13

    move-object v13, v6

    move-object/from16 v6, v23

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/ui/Cells/ReactedUserHolderView;Lorg/telegram/tgnet/tl/TL_stories$StoryView;)V

    move-object v1, v0

    move-object v0, v4

    move-object v4, v5

    move-object v5, v6

    invoke-virtual {v7, v14, v15, v13, v1}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    move/from16 v6, v16

    .line 318
    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/ItemOptions;->makeMultiline(Z)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ItemOptions;->cutTextInFancyHalf()Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v7

    if-eqz v11, :cond_d

    if-nez v9, :cond_d

    if-nez v12, :cond_d

    move v11, v8

    goto :goto_5

    :cond_d
    const/4 v11, 0x0

    :goto_5
    sget v13, Lorg/telegram/messenger/R$drawable;->msg_menu_stories:I

    sget v1, Lorg/telegram/messenger/R$string;->StoryShowBackTo:I

    new-array v6, v8, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v0, v6, v14

    .line 319
    invoke-static {v1, v6}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    move-object v6, v5

    move-object v5, v4

    move-object v4, v0

    new-instance v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4$$ExternalSyntheticLambda1;

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/ui/Cells/ReactedUserHolderView;Lorg/telegram/tgnet/tl/TL_stories$StoryView;)V

    move-object/from16 v23, v6

    move-object v6, v4

    move-object v4, v5

    move-object/from16 v5, v23

    invoke-virtual {v7, v11, v13, v15, v0}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    .line 325
    invoke-virtual {v0, v14}, Lorg/telegram/ui/Components/ItemOptions;->makeMultiline(Z)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ItemOptions;->cutTextInFancyHalf()Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v17

    if-nez v10, :cond_e

    if-nez v9, :cond_e

    if-nez v12, :cond_e

    move/from16 v18, v8

    goto :goto_6

    :cond_e
    const/16 v18, 0x0

    :goto_6
    sget v19, Lorg/telegram/messenger/R$drawable;->msg_user_remove:I

    sget v0, Lorg/telegram/messenger/R$string;->BlockUser:I

    .line 335
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v20

    new-instance v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4$$ExternalSyntheticLambda2;

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/Cells/ReactedUserHolderView;Lorg/telegram/tgnet/tl/TL_stories$StoryView;)V

    const/16 v21, 0x1

    move-object/from16 v22, v0

    invoke-virtual/range {v17 .. v22}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;ZLjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v7

    if-nez v10, :cond_f

    if-eqz v9, :cond_f

    if-nez v12, :cond_f

    move v9, v8

    goto :goto_7

    :cond_f
    const/4 v9, 0x0

    :goto_7
    sget v11, Lorg/telegram/messenger/R$drawable;->msg_block:I

    sget v0, Lorg/telegram/messenger/R$string;->Unblock:I

    .line 340
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v13

    new-instance v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4$$ExternalSyntheticLambda3;

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/Cells/ReactedUserHolderView;Lorg/telegram/tgnet/tl/TL_stories$StoryView;)V

    invoke-virtual {v7, v9, v11, v13, v0}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v17

    if-eqz v10, :cond_10

    if-nez v12, :cond_10

    move/from16 v18, v8

    goto :goto_8

    :cond_10
    const/16 v18, 0x0

    :goto_8
    sget v19, Lorg/telegram/messenger/R$drawable;->msg_user_remove:I

    sget v0, Lorg/telegram/messenger/R$string;->StoryDeleteContact:I

    .line 346
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v20

    new-instance v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4$$ExternalSyntheticLambda4;

    move-object/from16 v1, p0

    move-object v2, v3

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/ui/Cells/ReactedUserHolderView;Lorg/telegram/tgnet/tl/TL_stories$StoryView;)V

    const/16 v21, 0x1

    move-object/from16 v22, v0

    invoke-virtual/range {v17 .. v22}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;ZLjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    .line 357
    iget-object v2, v5, Lorg/telegram/tgnet/tl/TL_stories$StoryView;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;

    if-eqz v3, :cond_11

    .line 358
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;

    .line 359
    iget-object v3, v1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    iget v3, v3, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getDocumentFetcher(I)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;

    move-result-object v3

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;->document_id:J

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->findStickerSet(J)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 361
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ItemOptions;->addGap()Lorg/telegram/ui/Components/ItemOptions;

    .line 362
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 363
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    new-instance v9, Lorg/telegram/ui/Components/MessageContainsEmojiButton;

    iget-object v2, v1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    iget v10, v2, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentAccount:I

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    iget-object v2, v1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    iget-object v12, v2, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v14, 0x3

    invoke-direct/range {v9 .. v14}, Lorg/telegram/ui/Components/MessageContainsEmojiButton;-><init>(ILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/util/ArrayList;I)V

    .line 365
    new-instance v2, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4$$ExternalSyntheticLambda5;

    invoke-direct {v2, v1, v13, v0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;Ljava/util/ArrayList;Lorg/telegram/ui/Components/ItemOptions;)V

    invoke-virtual {v9, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    invoke-virtual {v0, v9}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move v6, v8

    goto :goto_9

    :cond_11
    const/4 v6, 0x0

    .line 389
    :goto_9
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ItemOptions;->getItemsCount()I

    move-result v2

    if-gtz v2, :cond_12

    if-nez v6, :cond_12

    const/4 v14, 0x0

    return v14

    :cond_12
    const/4 v14, 0x0

    .line 393
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    .line 396
    :try_start_0
    iget-object v0, v1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    invoke-virtual {v0, v14, v8}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v8

    :goto_a
    return v14
.end method
