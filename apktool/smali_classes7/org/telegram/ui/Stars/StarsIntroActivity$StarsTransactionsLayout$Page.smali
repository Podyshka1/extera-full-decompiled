.class public Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Page"
.end annotation


# instance fields
.field private final bot_id:J

.field private final currentAccount:I

.field private final listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

.field private final loadTransactionsRunnable:Ljava/lang/Runnable;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private final ton:Z

.field private final type:I


# direct methods
.method public static synthetic $r8$lambda$BdY5IePEJVmjFRMp_wLAQjLeH9U(JIIZ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    .line 1325
    invoke-static {p2}, Lorg/telegram/ui/Stars/BotStarsController;->getInstance(I)Lorg/telegram/ui/Stars/BotStarsController;

    move-result-object p2

    invoke-virtual {p2, p0, p1, p3}, Lorg/telegram/ui/Stars/BotStarsController;->loadTransactions(JI)V

    return-void

    .line 1327
    :cond_0
    invoke-static {p2, p4}, Lorg/telegram/ui/Stars/StarsController;->getInstance(IZ)Lorg/telegram/ui/Stars/StarsController;

    move-result-object p0

    invoke-virtual {p0, p3}, Lorg/telegram/ui/Stars/StarsController;->loadTransactions(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$cX17L0_64AzQgr4ZD8L8Mmg_T0E(Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sFEcM1-z2qmflPUDc8Px-lXhV7Y(Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetlistView(Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;)Lorg/telegram/ui/Components/UniversalRecyclerView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetloadTransactionsRunnable(Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->loadTransactionsRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;ZJIIILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 9

    .line 1315
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1317
    iput p5, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->type:I

    .line 1318
    iput-boolean p2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->ton:Z

    .line 1319
    iput p6, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->currentAccount:I

    .line 1320
    iput-wide p3, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->bot_id:J

    move-object/from16 v8, p8

    .line 1321
    iput-object v8, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 1323
    new-instance v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page$$ExternalSyntheticLambda0;

    move v5, p2

    move-wide v1, p3

    move v4, p5

    move v3, p6

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page$$ExternalSyntheticLambda0;-><init>(JIIZ)V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->loadTransactionsRunnable:Ljava/lang/Runnable;

    .line 1331
    new-instance v0, Lorg/telegram/ui/Components/UniversalRecyclerView;

    new-instance v5, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;)V

    new-instance v6, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;)V

    const/4 v7, 0x0

    const/4 v4, 0x1

    move-object v1, p1

    move v2, p6

    move/from16 v3, p7

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Components/UniversalRecyclerView;-><init>(Landroid/content/Context;IIZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback5;Lorg/telegram/messenger/Utilities$Callback5Return;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    const/4 p1, -0x1

    const/high16 p2, -0x40800000    # -1.0f

    .line 1332
    invoke-static {p1, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1333
    new-instance p1, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page$1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page$1;-><init>(Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method private fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 6

    .line 1389
    iget-wide v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->bot_id:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    const/4 v0, 0x0

    const/4 v1, 0x7

    if-eqz p2, :cond_1

    .line 1390
    iget p2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/ui/Stars/BotStarsController;->getInstance(I)Lorg/telegram/ui/Stars/BotStarsController;

    move-result-object p2

    .line 1391
    iget-wide v2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->bot_id:J

    iget v4, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->type:I

    invoke-virtual {p2, v2, v3, v4}, Lorg/telegram/ui/Stars/BotStarsController;->getTransactions(JI)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    if-ge v0, v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    check-cast v4, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;

    const/4 v5, 0x1

    .line 1392
    invoke-static {v4, v5}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView$Factory;->asTransaction(Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1394
    :cond_0
    iget-wide v2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->bot_id:J

    iget v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->type:I

    invoke-virtual {p2, v2, v3, v0}, Lorg/telegram/ui/Stars/BotStarsController;->didFullyLoadTransactions(JI)Z

    move-result p2

    if-nez p2, :cond_3

    .line 1395
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-static {p2, v1}, Lorg/telegram/ui/Components/UItem;->asFlicker(II)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1396
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-static {p2, v1}, Lorg/telegram/ui/Components/UItem;->asFlicker(II)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1397
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-static {p2, v1}, Lorg/telegram/ui/Components/UItem;->asFlicker(II)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 1400
    :cond_1
    iget p2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->currentAccount:I

    iget-boolean v2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->ton:Z

    invoke-static {p2, v2}, Lorg/telegram/ui/Stars/StarsController;->getInstance(IZ)Lorg/telegram/ui/Stars/StarsController;

    move-result-object p2

    .line 1401
    iget-object v2, p2, Lorg/telegram/ui/Stars/StarsController;->transactions:[Ljava/util/ArrayList;

    iget v3, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->type:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;

    .line 1402
    invoke-static {v5, v0}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView$Factory;->asTransaction(Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1404
    :cond_2
    iget v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->type:I

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Stars/StarsController;->didFullyLoadTransactions(I)Z

    move-result p2

    if-nez p2, :cond_3

    .line 1405
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-static {p2, v1}, Lorg/telegram/ui/Components/UItem;->asFlicker(II)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1406
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-static {p2, v1}, Lorg/telegram/ui/Components/UItem;->asFlicker(II)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1407
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-static {p2, v1}, Lorg/telegram/ui/Components/UItem;->asFlicker(II)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method private onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .locals 7

    .line 1413
    iget-object p2, p1, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    instance-of p2, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;

    if-eqz p2, :cond_0

    .line 1414
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v4, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->currentAccount:I

    iget-object p1, p1, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;

    iget-object v6, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Stars/StarsIntroActivity;->showTransactionSheet(Landroid/content/Context;ZJILorg/telegram/tgnet/tl/TL_stars$StarsTransaction;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;

    :cond_0
    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 3

    .line 1355
    sget p2, Lorg/telegram/messenger/NotificationCenter;->starTransactionsLoaded:I

    const/4 v0, 0x1

    if-ne p1, p2, :cond_1

    .line 1356
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 1357
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->canScrollVertically(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->isLoadingVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1358
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->loadTransactionsRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 1360
    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->botStarsTransactionsLoaded:I

    if-ne p1, p2, :cond_2

    const/4 p1, 0x0

    .line 1361
    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iget-wide v1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->bot_id:J

    cmp-long p1, p1, v1

    if-nez p1, :cond_2

    .line 1362
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_2
    return-void
.end method

.method public isLoadingVisible()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 1346
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1347
    iget-object v2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/Components/FlickerLoadingView;

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 1369
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1370
    iget-wide v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->bot_id:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1371
    iget v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->botStarsTransactionsLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    goto :goto_0

    .line 1373
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starTransactionsLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1375
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v0, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .line 1380
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1381
    iget-wide v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->bot_id:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1382
    iget v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->botStarsTransactionsLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void

    .line 1384
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starTransactionsLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method
