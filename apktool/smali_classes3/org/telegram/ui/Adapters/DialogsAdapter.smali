.class public Lorg/telegram/ui/Adapters/DialogsAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Cells/DialogCell$DialogCellDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;,
        Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;,
        Lorg/telegram/ui/Adapters/DialogsAdapter$LastEmptyView;
    }
.end annotation


# static fields
.field private static final ALLOW_UPDATE_IN_BACKGROUND:Z


# instance fields
.field private allowForwardAsStories:Z

.field private arrowDrawable:Landroid/graphics/drawable/Drawable;

.field private collapsedView:Z

.field private currentAccount:I

.field private currentCount:I

.field private dialogsCount:I

.field private dialogsListFrozen:Z

.field dialogsStableIds:Lorg/telegram/messenger/support/LongSparseIntArray;

.field private dialogsType:I

.field private firstUpdate:Z

.field private folderId:I

.field private forceShowEmptyCell:Z

.field private forceUpdatingContacts:Z

.field private hasChatlistHint:Z

.field private hasHints:Z

.field isCalculatingDiff:Z

.field public isEmpty:Z

.field private isOnlySelect:Z

.field private isReordering:Z

.field private isTransitionSupport:Z

.field itemInternals:Ljava/util/ArrayList;

.field public lastDialogsEmptyType:I

.field private lastSortTime:J

.field private mContext:Landroid/content/Context;

.field oldItems:Ljava/util/ArrayList;

.field private onlineContacts:Ljava/util/ArrayList;

.field private openedDialogId:J

.field private parentFragment:Lorg/telegram/ui/DialogsActivity;

.field private preloader:Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;

.field private pullForegroundDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

.field recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

.field private requestPeerType:Lorg/telegram/tgnet/TLRPC$RequestPeerType;

.field private selectedDialogs:Ljava/util/ArrayList;

.field stableIdPointer:I

.field updateListPending:Z


# direct methods
.method public static synthetic $r8$lambda$9S7fGEHjSK-snUP2r6wz80OCC2E(Lorg/telegram/ui/Adapters/DialogsAdapter;Ljava/lang/Runnable;Ljava/util/ArrayList;Landroidx/recyclerview/widget/DiffUtil$DiffResult;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Adapters/DialogsAdapter;->lambda$updateList$1(Ljava/lang/Runnable;Ljava/util/ArrayList;Landroidx/recyclerview/widget/DiffUtil$DiffResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ncu5D8c9rSY70kAilJcwM9XUHfE(Lorg/telegram/ui/Adapters/DialogsAdapter;Ljava/lang/Float;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Adapters/DialogsAdapter;->lambda$onBindViewHolder$5(Ljava/lang/Float;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XG1DDXU3uTtHR5NxbWIuy5US9Rk(Lorg/telegram/ui/Adapters/DialogsAdapter;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Adapters/DialogsAdapter;->lambda$onCreateViewHolder$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_IyqYv0ErkEI_Omrn2azgDWluho(Lorg/telegram/messenger/MessagesController;ILorg/telegram/tgnet/TLRPC$TL_contact;Lorg/telegram/tgnet/TLRPC$TL_contact;)I
    .locals 2

    .line 419
    iget-wide v0, p3, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p0, p3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p3

    .line 420
    iget-wide v0, p2, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p0

    const p2, 0xc350

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 424
    iget-boolean v1, p3, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz v1, :cond_0

    add-int p3, p1, p2

    goto :goto_0

    .line 426
    :cond_0
    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz p3, :cond_1

    .line 427
    iget p3, p3, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_0

    :cond_1
    move p3, v0

    :goto_0
    if-eqz p0, :cond_3

    .line 431
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz v1, :cond_2

    add-int/2addr p1, p2

    goto :goto_1

    .line 433
    :cond_2
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz p0, :cond_3

    .line 434
    iget p1, p0, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_1

    :cond_3
    move p1, v0

    :goto_1
    if-lez p3, :cond_5

    if-lez p1, :cond_5

    if-le p3, p1, :cond_4

    goto :goto_3

    :cond_4
    if-ge p3, p1, :cond_b

    goto :goto_2

    :cond_5
    if-gez p3, :cond_7

    if-gez p1, :cond_7

    if-le p3, p1, :cond_6

    goto :goto_3

    :cond_6
    if-ge p3, p1, :cond_b

    goto :goto_2

    :cond_7
    if-gez p3, :cond_8

    if-gtz p1, :cond_9

    :cond_8
    if-nez p3, :cond_a

    if-eqz p1, :cond_a

    :cond_9
    :goto_2
    const/4 p0, -0x1

    return p0

    :cond_a
    if-ltz p1, :cond_c

    if-eqz p3, :cond_b

    goto :goto_3

    :cond_b
    return v0

    :cond_c
    :goto_3
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$bOWDC2LVH-BW_ztqUwBt3I52P8Q(Lorg/telegram/ui/Adapters/DialogsAdapter;Landroidx/recyclerview/widget/DiffUtil$Callback;Ljava/lang/Runnable;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Adapters/DialogsAdapter;->lambda$updateList$2(Landroidx/recyclerview/widget/DiffUtil$Callback;Ljava/lang/Runnable;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iPI4SWtQZwjvuN0Au_-MQOoIObw(Lorg/telegram/ui/Adapters/DialogsAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->lambda$onBindViewHolder$4()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetarrowDrawable(Lorg/telegram/ui/Adapters/DialogsAdapter;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcollapsedView(Lorg/telegram/ui/Adapters/DialogsAdapter;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->collapsedView:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Adapters/DialogsAdapter;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdialogsType(Lorg/telegram/ui/Adapters/DialogsAdapter;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetfolderId(Lorg/telegram/ui/Adapters/DialogsAdapter;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->folderId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisTransitionSupport(Lorg/telegram/ui/Adapters/DialogsAdapter;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->isTransitionSupport:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetonlineContacts(Lorg/telegram/ui/Adapters/DialogsAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->onlineContacts:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetparentFragment(Lorg/telegram/ui/Adapters/DialogsAdapter;)Lorg/telegram/ui/DialogsActivity;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 484
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    sput-boolean v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->ALLOW_UPDATE_IN_BACKGROUND:Z

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;IIZLjava/util/ArrayList;ILorg/telegram/tgnet/TLRPC$RequestPeerType;)V
    .locals 2

    .line 147
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    const/4 v0, 0x1

    .line 130
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->firstUpdate:Z

    .line 133
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    .line 134
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->oldItems:Ljava/util/ArrayList;

    const/16 v1, 0xa

    .line 268
    iput v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->stableIdPointer:I

    .line 269
    new-instance v1, Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-direct {v1}, Lorg/telegram/messenger/support/LongSparseIntArray;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsStableIds:Lorg/telegram/messenger/support/LongSparseIntArray;

    const/4 v1, -0x1

    .line 798
    iput v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->lastDialogsEmptyType:I

    .line 148
    iput-object p2, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    .line 149
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    .line 150
    iput p3, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    .line 151
    iput p4, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->folderId:I

    .line 152
    iput-boolean p5, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->isOnlySelect:Z

    if-nez p4, :cond_0

    if-nez p3, :cond_0

    if-nez p5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 153
    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->hasHints:Z

    .line 154
    iput-object p6, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->selectedDialogs:Ljava/util/ArrayList;

    .line 155
    iput p7, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    if-nez p4, :cond_1

    .line 158
    new-instance p1, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;

    invoke-direct {p1}, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->preloader:Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;

    .line 160
    :cond_1
    iput-object p8, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->requestPeerType:Lorg/telegram/tgnet/TLRPC$RequestPeerType;

    return-void
.end method

.method private getCurrentFilter()Lorg/telegram/messenger/MessagesController$DialogFilter;
    .locals 3

    .line 1350
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 1351
    :cond_1
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->selectedDialogFilter:[Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget v2, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    sub-int/2addr v2, v1

    aget-object v0, v0, v2

    return-object v0
.end method

.method private synthetic lambda$onBindViewHolder$4()V
    .locals 2

    .line 943
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/DialogsActivity;->setScrollDisabled(Z)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$5(Ljava/lang/Float;)V
    .locals 1

    .line 944
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/DialogsActivity;->setContactsAlpha(F)V

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$3(Landroid/view/View;)V
    .locals 1

    .line 636
    iget p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MessagesController;->hintDialogs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 637
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p1

    .line 638
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "installReferer"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 639
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private synthetic lambda$updateList$1(Ljava/lang/Runnable;Ljava/util/ArrayList;Landroidx/recyclerview/widget/DiffUtil$DiffResult;)V
    .locals 1

    .line 531
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->isCalculatingDiff:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 534
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->isCalculatingDiff:Z

    if-eqz p1, :cond_1

    .line 536
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 538
    :cond_1
    iput-object p2, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    .line 539
    invoke-virtual {p3, p0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 540
    iget-boolean p2, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->updateListPending:Z

    if-eqz p2, :cond_2

    .line 541
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->updateListPending:Z

    .line 542
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Adapters/DialogsAdapter;->updateList(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$updateList$2(Landroidx/recyclerview/widget/DiffUtil$Callback;Ljava/lang/Runnable;Ljava/util/ArrayList;)V
    .locals 1

    .line 529
    invoke-static {p1}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object p1

    .line 530
    new-instance v0, Lorg/telegram/ui/Adapters/DialogsAdapter$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p2, p3, p1}, Lorg/telegram/ui/Adapters/DialogsAdapter$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;Ljava/lang/Runnable;Ljava/util/ArrayList;Landroidx/recyclerview/widget/DiffUtil$DiffResult;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateItemList()V
    .locals 16

    move-object/from16 v0, p0

    .line 1461
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1462
    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->updateHasHints()V

    .line 1464
    iget v1, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    .line 1465
    iget-object v2, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    iget v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    iget v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    iget v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->folderId:I

    iget-boolean v6, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsListFrozen:Z

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/telegram/ui/DialogsActivity;->getDialogsArray(IIIZ)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1467
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1469
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsCount:I

    const/4 v4, 0x0

    .line 1470
    iput-boolean v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->isEmpty:Z

    if-nez v3, :cond_1

    .line 1471
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/DialogsActivity;->isArchive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1472
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    const/16 v3, 0x13

    invoke-direct {v2, v0, v3}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 1476
    :cond_1
    iget-boolean v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->hasHints:Z

    const/4 v5, 0x0

    const/16 v6, 0xa

    const/4 v7, 0x1

    if-nez v3, :cond_7

    iget v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    if-nez v3, :cond_7

    iget v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->folderId:I

    if-nez v3, :cond_7

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/MessagesController;->isDialogsEndReached(I)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-boolean v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->forceUpdatingContacts:Z

    if-nez v3, :cond_7

    .line 1477
    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->getAllFoldersDialogsCount()I

    move-result v3

    if-gt v3, v6, :cond_6

    iget v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/messenger/ContactsController;->doneLoadingContacts:Z

    if-eqz v3, :cond_6

    iget v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1478
    new-instance v3, Ljava/util/ArrayList;

    iget v8, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v8

    iget-object v8, v8, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->onlineContacts:Ljava/util/ArrayList;

    .line 1479
    iget v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    iget-wide v8, v3, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    .line 1480
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->onlineContacts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v10, v4

    :goto_0
    if-ge v10, v3, :cond_4

    .line 1481
    iget-object v11, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->onlineContacts:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$TL_contact;

    iget-wide v11, v11, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    cmp-long v13, v11, v8

    if-eqz v13, :cond_2

    .line 1482
    iget-object v13, v1, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v13, v11, v12}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 1483
    :cond_2
    iget-object v11, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->onlineContacts:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v3, v3, -0x1

    :cond_3
    add-int/2addr v10, v7

    goto :goto_0

    .line 1488
    :cond_4
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->onlineContacts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1489
    iput-object v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->onlineContacts:Ljava/util/ArrayList;

    goto :goto_1

    .line 1491
    :cond_5
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Adapters/DialogsAdapter;->sortOnlineContacts(Z)V

    goto :goto_1

    .line 1494
    :cond_6
    iput-object v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->onlineContacts:Ljava/util/ArrayList;

    .line 1498
    :cond_7
    :goto_1
    invoke-direct {v0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->getCurrentFilter()Lorg/telegram/messenger/MessagesController$DialogFilter;

    move-result-object v3

    const-wide/16 v8, 0x0

    const/4 v10, 0x3

    const/16 v11, 0x14

    if-eqz v3, :cond_8

    .line 1499
    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesController$DialogFilter;->isDefault()Z

    move-result v12

    if-eqz v12, :cond_c

    :cond_8
    iget-object v12, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    if-eqz v12, :cond_c

    iget-boolean v13, v12, Lorg/telegram/ui/DialogsActivity;->isReplyTo:Z

    if-eqz v13, :cond_c

    iget-wide v12, v12, Lorg/telegram/ui/DialogsActivity;->replyMessageAuthor:J

    cmp-long v12, v12, v8

    if-eqz v12, :cond_c

    .line 1500
    iget-object v8, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v9, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v9, v0, v11}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v8, v4

    .line 1502
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_a

    .line 1503
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$Dialog;

    iget-wide v12, v9, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    iget-object v9, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    iget-wide v14, v9, Lorg/telegram/ui/DialogsActivity;->replyMessageAuthor:J

    cmp-long v9, v12, v14

    if-nez v9, :cond_9

    .line 1504
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Dialog;

    goto :goto_3

    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_a
    :goto_3
    if-nez v5, :cond_b

    .line 1509
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_dialog;-><init>()V

    .line 1510
    iget-object v8, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    iget-wide v8, v8, Lorg/telegram/ui/DialogsActivity;->replyMessageAuthor:J

    iput-wide v8, v5, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    .line 1512
    :cond_b
    iget-object v8, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v9, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v9, v0, v4, v5}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;ILorg/telegram/tgnet/TLRPC$Dialog;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1513
    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v8, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v8, v0, v11}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_c
    if-eqz v3, :cond_d

    .line 1514
    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesController$DialogFilter;->isDefault()Z

    move-result v12

    if-eqz v12, :cond_11

    :cond_d
    iget-object v12, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    if-eqz v12, :cond_11

    iget v13, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    if-ne v13, v10, :cond_11

    iget-wide v12, v12, Lorg/telegram/ui/DialogsActivity;->forwardOriginalChannel:J

    cmp-long v8, v12, v8

    if-eqz v8, :cond_11

    .line 1515
    iget-object v8, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v9, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v9, v0, v11}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v8, v4

    .line 1517
    :goto_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_f

    .line 1518
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$Dialog;

    iget-wide v12, v9, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    iget-object v9, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    iget-wide v14, v9, Lorg/telegram/ui/DialogsActivity;->forwardOriginalChannel:J

    cmp-long v9, v12, v14

    if-nez v9, :cond_e

    .line 1519
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Dialog;

    goto :goto_5

    :cond_e
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_f
    :goto_5
    if-nez v5, :cond_10

    .line 1524
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_dialog;-><init>()V

    .line 1525
    iget-object v8, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    iget-wide v8, v8, Lorg/telegram/ui/DialogsActivity;->forwardOriginalChannel:J

    iput-wide v8, v5, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    .line 1527
    :cond_10
    iget-object v8, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v9, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v9, v0, v4, v5}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;ILorg/telegram/tgnet/TLRPC$Dialog;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1528
    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v8, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v8, v0, v11}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1531
    :cond_11
    :goto_6
    iput-boolean v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->hasChatlistHint:Z

    .line 1532
    iget v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    const/16 v8, 0x8

    const/4 v9, 0x7

    if-eq v5, v9, :cond_12

    if-ne v5, v8, :cond_13

    :cond_12
    if-eqz v3, :cond_13

    .line 1533
    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesController$DialogFilter;->isChatlist()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 1534
    iget v5, v3, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    invoke-virtual {v1, v5, v4}, Lorg/telegram/messenger/MessagesController;->checkChatlistFolderUpdate(IZ)V

    .line 1535
    iget v3, v3, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/MessagesController;->getChatlistFolderUpdates(I)Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_chatlistUpdates;

    move-result-object v3

    if-eqz v3, :cond_13

    .line 1536
    iget-object v5, v3, Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_chatlistUpdates;->missing_peers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_13

    .line 1537
    iput-boolean v7, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->hasChatlistHint:Z

    .line 1538
    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v11, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v11, v0, v3}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_chatlistUpdates;)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1543
    :cond_13
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->requestPeerType:Lorg/telegram/tgnet/TLRPC$RequestPeerType;

    if-eqz v3, :cond_14

    .line 1544
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    const/16 v11, 0xf

    invoke-direct {v5, v0, v11}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1547
    :cond_14
    iget-boolean v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->collapsedView:Z

    const/4 v11, 0x2

    if-nez v3, :cond_2f

    iget-boolean v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->isTransitionSupport:Z

    if-eqz v3, :cond_15

    goto/16 :goto_14

    .line 1560
    :cond_15
    iget v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsCount:I

    const/16 v13, 0xd

    const/4 v15, 0x5

    const/16 v5, 0x10

    if-nez v3, :cond_17

    iget-boolean v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->forceUpdatingContacts:Z

    if-eqz v3, :cond_17

    .line 1561
    iput-boolean v7, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->isEmpty:Z

    .line 1562
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->requestPeerType:Lorg/telegram/tgnet/TLRPC$RequestPeerType;

    if-eqz v3, :cond_16

    .line 1563
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v14, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v14, v0, v5}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1565
    :cond_16
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v14, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsEmptyType()I

    move-result v12

    invoke-direct {v14, v0, v15, v12}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;II)V

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1567
    :goto_7
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v12, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v12, v0, v8}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1568
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v12, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v12, v0, v9}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1569
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v12, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v12, v0, v13}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    .line 1570
    :cond_17
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->onlineContacts:Ljava/util/ArrayList;

    if-eqz v3, :cond_1c

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1c

    iget v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    if-eq v3, v9, :cond_1c

    if-eq v3, v8, :cond_1c

    .line 1571
    iget v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsCount:I

    if-nez v3, :cond_19

    .line 1572
    iput-boolean v7, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->isEmpty:Z

    .line 1573
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->requestPeerType:Lorg/telegram/tgnet/TLRPC$RequestPeerType;

    if-eqz v3, :cond_18

    .line 1574
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v12, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v12, v0, v5}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 1576
    :cond_18
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v12, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsEmptyType()I

    move-result v13

    invoke-direct {v12, v0, v15, v13}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;II)V

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1578
    :goto_8
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v12, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v12, v0, v8}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1579
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v12, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v12, v0, v9}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_19
    move v3, v4

    .line 1581
    :goto_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v3, v12, :cond_1a

    .line 1582
    iget-object v12, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v13, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/tgnet/TLRPC$Dialog;

    invoke-direct {v13, v0, v4, v14}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;ILorg/telegram/tgnet/TLRPC$Dialog;)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 1584
    :cond_1a
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v12, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v12, v0, v8}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1585
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v12, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v12, v0, v9}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_a
    move v3, v4

    .line 1587
    :goto_b
    iget-object v12, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->onlineContacts:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v3, v12, :cond_1b

    .line 1588
    iget-object v12, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v13, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    iget-object v14, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->onlineContacts:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/tgnet/TLRPC$TL_contact;

    const/4 v15, 0x6

    invoke-direct {v13, v0, v15, v14}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;ILorg/telegram/tgnet/TLRPC$TL_contact;)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    const/4 v15, 0x5

    goto :goto_b

    .line 1590
    :cond_1b
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v12, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v12, v0, v6}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v7

    goto/16 :goto_f

    .line 1592
    :cond_1c
    iget-boolean v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->hasHints:Z

    if-eqz v3, :cond_1e

    .line 1593
    iget v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->hintDialogs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1594
    iget-object v12, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v13, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v13, v0, v11}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v12, v4

    :goto_c
    if-ge v12, v3, :cond_1d

    .line 1596
    iget-object v13, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v14, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    iget v15, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v15}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v15

    iget-object v15, v15, Lorg/telegram/messenger/MessagesController;->hintDialogs:Ljava/util/ArrayList;

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/TLRPC$RecentMeUrl;

    const/4 v5, 0x4

    invoke-direct {v14, v0, v5, v15}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;ILorg/telegram/tgnet/TLRPC$RecentMeUrl;)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    const/16 v5, 0x10

    goto :goto_c

    .line 1598
    :cond_1d
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v5, v0, v10}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 1599
    :cond_1e
    iget v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    const/16 v5, 0xb

    if-eq v3, v5, :cond_20

    if-ne v3, v13, :cond_1f

    goto :goto_d

    :cond_1f
    const/16 v5, 0xc

    if-ne v3, v5, :cond_21

    .line 1603
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v5, v0, v9}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 1600
    :cond_20
    :goto_d
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v5, v0, v9}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1601
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    const/16 v12, 0xc

    invoke-direct {v5, v0, v12}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_21
    :goto_e
    move v3, v4

    .line 1606
    :goto_f
    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->requestPeerType:Lorg/telegram/tgnet/TLRPC$RequestPeerType;

    instance-of v12, v5, Lorg/telegram/tgnet/TLRPC$TL_requestPeerTypeBroadcast;

    if-nez v12, :cond_22

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_requestPeerTypeChat;

    if-eqz v5, :cond_23

    :cond_22
    iget v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsCount:I

    if-lez v5, :cond_23

    .line 1607
    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v12, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    const/16 v13, 0xc

    invoke-direct {v12, v0, v13}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1610
    :cond_23
    iget-boolean v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->allowForwardAsStories:Z

    if-eqz v5, :cond_24

    iget v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    if-ne v5, v10, :cond_24

    .line 1611
    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v10, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    const/16 v12, 0x15

    invoke-direct {v10, v0, v12}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_24
    if-nez v3, :cond_2c

    move v3, v4

    .line 1615
    :goto_10
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_26

    .line 1616
    iget v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    if-ne v5, v11, :cond_25

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lorg/telegram/ui/DialogsActivity$DialogsHeader;

    if-eqz v5, :cond_25

    .line 1617
    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v10, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$Dialog;

    const/16 v13, 0xe

    invoke-direct {v10, v0, v13, v12}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;ILorg/telegram/tgnet/TLRPC$Dialog;)V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 1619
    :cond_25
    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v10, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$Dialog;

    invoke-direct {v10, v0, v4, v12}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;ILorg/telegram/tgnet/TLRPC$Dialog;)V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 1623
    :cond_26
    iget-boolean v2, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->forceShowEmptyCell:Z

    if-nez v2, :cond_28

    iget v2, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    if-eq v2, v9, :cond_28

    if-eq v2, v8, :cond_28

    iget v2, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->folderId:I

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->isDialogsEndReached(I)Z

    move-result v2

    if-nez v2, :cond_28

    .line 1624
    iget v2, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsCount:I

    if-eqz v2, :cond_27

    .line 1625
    iget-object v2, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v3, v0, v7}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1627
    :cond_27
    iget-object v2, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v3, v0, v6}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 1628
    :cond_28
    iget v2, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsCount:I

    if-nez v2, :cond_2a

    .line 1629
    iput-boolean v7, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->isEmpty:Z

    .line 1630
    iget-object v2, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->requestPeerType:Lorg/telegram/tgnet/TLRPC$RequestPeerType;

    if-eqz v2, :cond_29

    .line 1631
    iget-object v2, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    const/16 v5, 0x10

    invoke-direct {v3, v0, v5}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 1633
    :cond_29
    iget-object v2, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsEmptyType()I

    move-result v5

    const/4 v6, 0x5

    invoke-direct {v3, v0, v6, v5}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 1636
    :cond_2a
    iget v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->folderId:I

    if-nez v3, :cond_2b

    if-le v2, v6, :cond_2b

    iget v2, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    if-nez v2, :cond_2b

    .line 1637
    iget-object v2, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    const/16 v5, 0xb

    invoke-direct {v3, v0, v5}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1639
    :cond_2b
    iget-object v2, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v3, v0, v6}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1643
    :cond_2c
    :goto_12
    iget-object v2, v1, Lorg/telegram/messenger/MessagesController;->hiddenUndoChats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2e

    .line 1644
    :goto_13
    iget-object v2, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_2e

    .line 1645
    iget-object v2, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    .line 1646
    iget v3, v2, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    if-nez v3, :cond_2d

    iget-object v2, v2, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;->dialog:Lorg/telegram/tgnet/TLRPC$Dialog;

    if-eqz v2, :cond_2d

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->isHiddenByUndo(J)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 1647
    iget-object v2, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    :cond_2d
    add-int/2addr v4, v7

    goto :goto_13

    :cond_2e
    return-void

    :cond_2f
    :goto_14
    move v1, v4

    .line 1548
    :goto_15
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_31

    .line 1549
    iget v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    if-ne v3, v11, :cond_30

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lorg/telegram/ui/DialogsActivity$DialogsHeader;

    if-eqz v3, :cond_30

    .line 1550
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$Dialog;

    const/16 v13, 0xe

    invoke-direct {v5, v0, v13, v7}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;ILorg/telegram/tgnet/TLRPC$Dialog;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_30
    const/16 v13, 0xe

    .line 1552
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$Dialog;

    invoke-direct {v5, v0, v4, v7}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;ILorg/telegram/tgnet/TLRPC$Dialog;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 1555
    :cond_31
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-direct {v2, v0, v6}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public canClickButtonInside()Z
    .locals 1

    .line 1167
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->selectedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public dialogsEmptyType()I
    .locals 3

    .line 801
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    const/4 v1, 0x7

    const/4 v2, 0x2

    if-eq v0, v1, :cond_3

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 807
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->folderId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return v2

    .line 810
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->onlineContacts:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0

    .line 802
    :cond_3
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->folderId:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->isDialogsEndReached(I)Z

    move-result v0

    if-eqz v0, :cond_4

    return v2

    :cond_4
    const/4 v0, 0x3

    return v0
.end method

.method public didDatabaseCleared()V
    .locals 1

    .line 1138
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->preloader:Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;

    if-eqz v0, :cond_0

    .line 1139
    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->clear()V

    :cond_0
    return-void
.end method

.method public findDialogPosition(J)I
    .locals 3

    const/4 v0, 0x0

    .line 230
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 231
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    iget-object v1, v1, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;->dialog:Lorg/telegram/tgnet/TLRPC$Dialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    iget-object v1, v1, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;->dialog:Lorg/telegram/tgnet/TLRPC$Dialog;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public fixPosition(I)I
    .locals 2

    .line 176
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->hasChatlistHint:Z

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 179
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->hasHints:Z

    if-eqz v0, :cond_1

    .line 180
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->hintDialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    .line 182
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->allowForwardAsStories:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    add-int/lit8 p1, p1, -0x1

    .line 185
    :cond_2
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_5

    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0xc

    if-ne v0, v1, :cond_4

    add-int/lit8 p1, p1, -0x1

    :cond_4
    return p1

    :cond_5
    :goto_0
    add-int/lit8 p1, p1, -0x2

    return p1
.end method

.method public fixScrollGap(Lorg/telegram/ui/Components/RecyclerListView;IIZZZZ)I
    .locals 0

    .line 240
    sget-boolean p5, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz p5, :cond_0

    const/high16 p5, 0x42980000    # 76.0f

    goto :goto_0

    :cond_0
    const/high16 p5, 0x428c0000    # 70.0f

    :goto_0
    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p5

    .line 243
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p6

    add-int/2addr p6, p3

    mul-int p7, p2, p5

    sub-int/2addr p6, p7

    sub-int/2addr p6, p2

    if-eqz p4, :cond_1

    add-int/2addr p6, p5

    .line 258
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    if-le p6, p1, :cond_2

    add-int/2addr p3, p1

    sub-int/2addr p3, p6

    :cond_2
    return p3
.end method

.method public getArchiveHintCellPager()Landroidx/viewpager/widget/ViewPager;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getChatlistUpdate()Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_chatlistUpdates;
    .locals 3

    .line 1091
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    if-eqz v0, :cond_0

    .line 1092
    iget v1, v0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/16 v2, 0x11

    if-ne v1, v2, :cond_0

    .line 1093
    iget-object v0, v0, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;->chatlistUpdates:Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_chatlistUpdates;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentCount()I
    .locals 1

    .line 1342
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentCount:I

    return v0
.end method

.method public getDialogsCount()I
    .locals 1

    .line 215
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsCount:I

    return v0
.end method

.method public getDialogsListIsFrozen()Z
    .locals 1

    .line 471
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsListFrozen:Z

    return v0
.end method

.method public getDialogsType()I
    .locals 1

    .line 211
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    return v0
.end method

.method public getItem(I)Lorg/telegram/tgnet/TLObject;
    .locals 3

    const/4 v0, 0x0

    if-ltz p1, :cond_3

    .line 397
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 400
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    iget-object v1, v1, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;->dialog:Lorg/telegram/tgnet/TLRPC$Dialog;

    if-eqz v1, :cond_1

    .line 401
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    iget-object p1, p1, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;->dialog:Lorg/telegram/tgnet/TLRPC$Dialog;

    return-object p1

    .line 402
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    iget-object v1, v1, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;->contact:Lorg/telegram/tgnet/TLRPC$TL_contact;

    if-eqz v1, :cond_2

    .line 403
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    iget-object p1, p1, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;->contact:Lorg/telegram/tgnet/TLRPC$TL_contact;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    return-object p1

    .line 404
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    iget-object v1, v1, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;->recentMeUrl:Lorg/telegram/tgnet/TLRPC$RecentMeUrl;

    if-eqz v1, :cond_3

    .line 405
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    iget-object p1, p1, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;->recentMeUrl:Lorg/telegram/tgnet/TLRPC$RecentMeUrl;

    return-object p1

    :cond_3
    :goto_0
    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 225
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentCount:I

    return v0
.end method

.method public getItemHeight(I)I
    .locals 1

    .line 1655
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    iget v0, v0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    if-nez v0, :cond_3

    .line 1656
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    iget-boolean p1, p1, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;->isForumCell:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->collapsedView:Z

    if-nez p1, :cond_1

    .line 1657
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz p1, :cond_0

    const/high16 p1, 0x42ac0000    # 86.0f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x42b60000    # 91.0f

    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    :goto_1
    add-int/lit8 p1, p1, 0x1

    return p1

    .line 1659
    :cond_1
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz p1, :cond_2

    const/high16 p1, 0x42980000    # 76.0f

    goto :goto_2

    :cond_2
    const/high16 p1, 0x428c0000    # 70.0f

    :goto_2
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 220
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-static {p1}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;->-$$Nest$fgetstableId(Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;)I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1104
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    iget p1, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    return p1
.end method

.method public isAllowForwardAsStories()Z
    .locals 1

    .line 207
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->allowForwardAsStories:Z

    return v0
.end method

.method public isDataSetChanged()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    .line 573
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/16 v1, 0x8

    if-eq p1, v1, :cond_0

    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    const/16 v1, 0xa

    if-eq p1, v1, :cond_0

    const/16 v1, 0xb

    if-eq p1, v1, :cond_0

    const/16 v1, 0xd

    if-eq p1, v1, :cond_0

    const/16 v1, 0xf

    if-eq p1, v1, :cond_0

    const/16 v1, 0x10

    if-eq p1, v1, :cond_0

    const/16 v1, 0x12

    if-eq p1, v1, :cond_0

    const/16 v1, 0x13

    if-eq p1, v1, :cond_0

    const/16 v1, 0x14

    if-eq p1, v1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public moveDialogs(Lorg/telegram/ui/Components/RecyclerListView;II)V
    .locals 8

    .line 1108
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    iget v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    iget v2, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->folderId:I

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/telegram/ui/DialogsActivity;->getDialogsArray(IIIZ)Ljava/util/ArrayList;

    move-result-object p1

    .line 1109
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Adapters/DialogsAdapter;->fixPosition(I)I

    move-result p2

    .line 1110
    invoke-virtual {p0, p3}, Lorg/telegram/ui/Adapters/DialogsAdapter;->fixPosition(I)I

    move-result p3

    .line 1111
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Dialog;

    .line 1112
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Dialog;

    .line 1113
    iget v2, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    const/4 v4, 0x7

    const/16 v5, 0x8

    if-eq v2, v4, :cond_1

    if-ne v2, v5, :cond_0

    goto :goto_0

    .line 1120
    :cond_0
    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Dialog;->pinnedNum:I

    .line 1121
    iget v3, v1, Lorg/telegram/tgnet/TLRPC$Dialog;->pinnedNum:I

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$Dialog;->pinnedNum:I

    .line 1122
    iput v2, v1, Lorg/telegram/tgnet/TLRPC$Dialog;->pinnedNum:I

    goto :goto_1

    .line 1114
    :cond_1
    :goto_0
    iget v2, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->selectedDialogFilter:[Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget v4, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    if-ne v4, v5, :cond_2

    const/4 v3, 0x1

    :cond_2
    aget-object v2, v2, v3

    .line 1115
    iget-object v3, v2, Lorg/telegram/messenger/MessagesController$DialogFilter;->pinnedDialogs:Lorg/telegram/messenger/support/LongSparseIntArray;

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(J)I

    move-result v3

    .line 1116
    iget-object v4, v2, Lorg/telegram/messenger/MessagesController$DialogFilter;->pinnedDialogs:Lorg/telegram/messenger/support/LongSparseIntArray;

    iget-wide v5, v1, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(J)I

    move-result v4

    .line 1117
    iget-object v5, v2, Lorg/telegram/messenger/MessagesController$DialogFilter;->pinnedDialogs:Lorg/telegram/messenger/support/LongSparseIntArray;

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v5, v6, v7, v4}, Lorg/telegram/messenger/support/LongSparseIntArray;->put(JI)V

    .line 1118
    iget-object v0, v2, Lorg/telegram/messenger/MessagesController$DialogFilter;->pinnedDialogs:Lorg/telegram/messenger/support/LongSparseIntArray;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/support/LongSparseIntArray;->put(JI)V

    .line 1124
    :goto_1
    invoke-static {p1, p2, p3}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    const/4 p1, 0x0

    .line 1125
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Adapters/DialogsAdapter;->updateList(Ljava/lang/Runnable;)V

    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 552
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->isCalculatingDiff:Z

    if-eqz v0, :cond_0

    .line 553
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    :cond_0
    const/4 v0, 0x0

    .line 555
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->isCalculatingDiff:Z

    .line 556
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->updateItemList()V

    .line 557
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public notifyItemMoved(II)V
    .locals 0

    .line 1130
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    return-void
.end method

.method protected onArchiveSettingsClick()V
    .locals 0

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 816
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v3, :cond_1b

    const/4 v9, 0x4

    if-eq v3, v9, :cond_1a

    const/4 v9, 0x5

    const/4 v10, 0x7

    if-eq v3, v9, :cond_16

    const/4 v9, 0x6

    if-eq v3, v9, :cond_15

    const/16 v9, 0xc

    const/16 v11, 0xb

    if-eq v3, v10, :cond_10

    if-eq v3, v11, :cond_d

    if-eq v3, v9, :cond_8

    const/16 v9, 0x14

    if-eq v3, v9, :cond_4

    const/16 v5, 0x15

    if-eq v3, v5, :cond_3

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_f

    .line 1068
    :pswitch_0
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/DialogsHintCell;

    .line 1069
    iget-object v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    .line 1070
    iget-object v4, v4, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;->chatlistUpdates:Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_chatlistUpdates;

    if-eqz v4, :cond_35

    .line 1071
    iget-object v4, v4, Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_chatlistUpdates;->missing_peers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1072
    const-string v5, "FolderUpdatesTitle"

    new-array v9, v7, [Ljava/lang/Object;

    .line 1074
    invoke-static {v5, v4, v9}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteValueText:I

    .line 1073
    invoke-static {v5, v9, v7, v6}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;IILjava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    const-string v6, "FolderUpdatesSubtitle"

    new-array v7, v7, [Ljava/lang/Object;

    .line 1079
    invoke-static {v6, v4, v7}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1072
    invoke-virtual {v3, v5, v4}, Lorg/telegram/ui/Cells/DialogsHintCell;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    .line 964
    :pswitch_1
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/DialogsRequestedEmptyCell;

    iget-object v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->requestPeerType:Lorg/telegram/tgnet/TLRPC$RequestPeerType;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/DialogsRequestedEmptyCell;->set(Lorg/telegram/tgnet/TLRPC$RequestPeerType;)V

    goto/16 :goto_f

    .line 1063
    :pswitch_2
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/RequestPeerRequirementsCell;

    .line 1064
    iget-object v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->requestPeerType:Lorg/telegram/tgnet/TLRPC$RequestPeerType;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/RequestPeerRequirementsCell;->set(Lorg/telegram/tgnet/TLRPC$RequestPeerType;)V

    goto/16 :goto_f

    .line 996
    :pswitch_3
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/HeaderCell;

    const/high16 v5, 0x41600000    # 14.0f

    .line 997
    invoke-virtual {v3, v5}, Lorg/telegram/ui/Cells/HeaderCell;->setTextSize(F)V

    .line 998
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Cells/HeaderCell;->setTextColor(I)V

    .line 999
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_graySection:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1000
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Adapters/DialogsAdapter;->getItem(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/DialogsActivity$DialogsHeader;

    iget v5, v5, Lorg/telegram/ui/DialogsActivity$DialogsHeader;->headerType:I

    if-eqz v5, :cond_2

    if-eq v5, v8, :cond_1

    if-eq v5, v4, :cond_0

    goto/16 :goto_f

    .line 1008
    :cond_0
    sget v4, Lorg/telegram/messenger/R$string;->FilterGroups:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    .line 1005
    :cond_1
    sget v4, Lorg/telegram/messenger/R$string;->MyGroups:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    .line 1002
    :cond_2
    sget v4, Lorg/telegram/messenger/R$string;->MyChannels:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    :cond_3
    add-int/lit8 v3, v2, 0x1

    .line 818
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Adapters/DialogsAdapter;->getItem(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Dialog;

    .line 820
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/DialogCell;

    .line 821
    new-instance v4, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    invoke-direct {v4}, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;-><init>()V

    .line 822
    sget v5, Lorg/telegram/messenger/R$string;->StoriesForwardTitle:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->name:Ljava/lang/String;

    .line 823
    sget v5, Lorg/telegram/messenger/R$string;->StoriesForwardText:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->message:Ljava/lang/String;

    .line 825
    iput-boolean v7, v3, Lorg/telegram/ui/Cells/DialogCell;->useSeparator:Z

    .line 826
    iput-boolean v7, v3, Lorg/telegram/ui/Cells/DialogCell;->fullSeparator:Z

    .line 828
    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/DialogCell;->setDialog(Lorg/telegram/ui/Cells/DialogCell$CustomDialog;)V

    .line 829
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/DialogCell;->checkHeight()V

    goto/16 :goto_f

    .line 1014
    :cond_4
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/GraySectionCell;

    .line 1015
    iget-object v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    if-eqz v4, :cond_6

    iget-boolean v4, v4, Lorg/telegram/ui/DialogsActivity;->isReplyTo:Z

    if-eqz v4, :cond_6

    if-nez v2, :cond_5

    .line 1017
    sget v4, Lorg/telegram/messenger/R$string;->ReplyDialogMessageAuthor:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    .line 1019
    :cond_5
    sget v4, Lorg/telegram/messenger/R$string;->ReplyDialogYourChats:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    .line 1021
    :cond_6
    iget v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    if-ne v4, v5, :cond_35

    if-nez v2, :cond_7

    .line 1023
    sget v4, Lorg/telegram/messenger/R$string;->ForwardDialogYourChannel:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    .line 1025
    :cond_7
    sget v4, Lorg/telegram/messenger/R$string;->ReplyDialogYourChats:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    .line 1044
    :cond_8
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v4, v3, Lorg/telegram/ui/Cells/TextCell;

    if-nez v4, :cond_9

    goto/16 :goto_10

    .line 1047
    :cond_9
    check-cast v3, Lorg/telegram/ui/Cells/TextCell;

    .line 1048
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    invoke-virtual {v3, v4, v4}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    .line 1049
    iget-object v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->requestPeerType:Lorg/telegram/tgnet/TLRPC$RequestPeerType;

    if-eqz v4, :cond_b

    .line 1050
    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_requestPeerTypeBroadcast;

    if-eqz v4, :cond_a

    .line 1051
    sget v4, Lorg/telegram/messenger/R$string;->CreateChannelForThis:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_channel_create:I

    invoke-virtual {v3, v4, v5, v8}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    goto :goto_0

    .line 1053
    :cond_a
    sget v4, Lorg/telegram/messenger/R$string;->CreateGroupForThis:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_groups_create:I

    invoke-virtual {v3, v4, v5, v8}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    goto :goto_0

    .line 1056
    :cond_b
    sget v4, Lorg/telegram/messenger/R$string;->CreateGroupForImport:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_groups_create:I

    iget v6, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsCount:I

    if-eqz v6, :cond_c

    move v7, v8

    :cond_c
    invoke-virtual {v3, v4, v5, v7}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    .line 1058
    :goto_0
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/TextCell;->setIsInDialogs()V

    const/16 v4, 0x4b

    .line 1059
    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/TextCell;->setOffsetFromImage(I)V

    goto/16 :goto_f

    .line 1031
    :cond_d
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 1032
    sget v4, Lorg/telegram/messenger/R$string;->TapOnThePencilButton:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 1033
    iget-object v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_e

    .line 1034
    iget-object v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->arrow_newchat:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    .line 1035
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v7, v9}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1037
    :cond_e
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->getTextView()Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    move-result-object v3

    const/high16 v4, 0x40800000    # 4.0f

    .line 1038
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 1039
    iget-object v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    if-eqz v4, :cond_f

    iget-boolean v4, v4, Lorg/telegram/ui/DialogsActivity;->storiesEnabled:Z

    if-eqz v4, :cond_f

    move-object v4, v6

    goto :goto_1

    :cond_f
    iget-object v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-virtual {v3, v6, v6, v4, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1040
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const/4 v4, -0x2

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_f

    .line 979
    :cond_10
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/HeaderCell;

    .line 980
    iget v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    if-eq v4, v11, :cond_13

    if-eq v4, v9, :cond_13

    const/16 v5, 0xd

    if-ne v4, v5, :cond_11

    goto :goto_3

    .line 991
    :cond_11
    iget v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsCount:I

    if-nez v4, :cond_12

    iget-boolean v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->forceUpdatingContacts:Z

    if-eqz v4, :cond_12

    sget v4, Lorg/telegram/messenger/R$string;->ConnectingYourContacts:I

    goto :goto_2

    :cond_12
    sget v4, Lorg/telegram/messenger/R$string;->YourContacts:I

    :goto_2
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    :cond_13
    :goto_3
    if-nez v2, :cond_14

    .line 986
    sget v4, Lorg/telegram/messenger/R$string;->ImportHeader:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    .line 988
    :cond_14
    sget v4, Lorg/telegram/messenger/R$string;->ImportHeaderContacts:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    .line 973
    :cond_15
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/UserCell;

    .line 974
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Adapters/DialogsAdapter;->getItem(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    .line 975
    invoke-virtual {v3, v4, v6, v6, v7}, Lorg/telegram/ui/Cells/UserCell;->setData(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    goto/16 :goto_f

    .line 939
    :cond_16
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/DialogsEmptyCell;

    .line 940
    iget v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->lastDialogsEmptyType:I

    .line 941
    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsEmptyType()I

    move-result v5

    iput v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->lastDialogsEmptyType:I

    iget-boolean v6, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->isOnlySelect:Z

    invoke-virtual {v3, v5, v6}, Lorg/telegram/ui/Cells/DialogsEmptyCell;->setType(IZ)V

    .line 942
    iget v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    if-eq v5, v10, :cond_35

    const/16 v6, 0x8

    if-eq v5, v6, :cond_35

    .line 943
    new-instance v5, Lorg/telegram/ui/Adapters/DialogsAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Adapters/DialogsAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;)V

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Cells/DialogsEmptyCell;->setOnUtyanAnimationEndListener(Ljava/lang/Runnable;)V

    .line 944
    new-instance v5, Lorg/telegram/ui/Adapters/DialogsAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Adapters/DialogsAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;)V

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Cells/DialogsEmptyCell;->setOnUtyanAnimationUpdateListener(Landroidx/core/util/Consumer;)V

    .line 945
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/DialogsEmptyCell;->isUtyanAnimationTriggered()Z

    move-result v5

    if-nez v5, :cond_17

    iget v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsCount:I

    if-nez v5, :cond_17

    .line 946
    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/telegram/ui/DialogsActivity;->setContactsAlpha(F)V

    .line 947
    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v5, v8}, Lorg/telegram/ui/DialogsActivity;->setScrollDisabled(Z)V

    .line 949
    :cond_17
    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->onlineContacts:Ljava/util/ArrayList;

    if-eqz v5, :cond_18

    if-nez v4, :cond_18

    .line 950
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/DialogsEmptyCell;->isUtyanAnimationTriggered()Z

    move-result v4

    if-nez v4, :cond_35

    .line 951
    invoke-virtual {v3, v8}, Lorg/telegram/ui/Cells/DialogsEmptyCell;->startUtyanCollapseAnimation(Z)V

    goto/16 :goto_f

    .line 953
    :cond_18
    iget-boolean v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->forceUpdatingContacts:Z

    if-eqz v4, :cond_19

    .line 954
    iget v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsCount:I

    if-nez v4, :cond_35

    .line 955
    invoke-virtual {v3, v7}, Lorg/telegram/ui/Cells/DialogsEmptyCell;->startUtyanCollapseAnimation(Z)V

    goto/16 :goto_f

    .line 957
    :cond_19
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/DialogsEmptyCell;->isUtyanAnimationTriggered()Z

    move-result v4

    if-eqz v4, :cond_35

    iget v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->lastDialogsEmptyType:I

    if-nez v4, :cond_35

    .line 958
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/DialogsEmptyCell;->startUtyanExpandAnimation()V

    goto/16 :goto_f

    .line 968
    :cond_1a
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/DialogMeUrlCell;

    .line 969
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Adapters/DialogsAdapter;->getItem(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$RecentMeUrl;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/DialogMeUrlCell;->setRecentMeUrl(Lorg/telegram/tgnet/TLRPC$RecentMeUrl;)V

    goto/16 :goto_f

    .line 833
    :cond_1b
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Adapters/DialogsAdapter;->getItem(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Dialog;

    add-int/lit8 v9, v2, 0x1

    .line 834
    invoke-virtual {v0, v9}, Lorg/telegram/ui/Adapters/DialogsAdapter;->getItem(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$Dialog;

    .line 835
    iget v10, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    const-wide/16 v11, 0x0

    if-eq v10, v4, :cond_26

    const/16 v4, 0xf

    if-ne v10, v4, :cond_1c

    goto/16 :goto_8

    .line 900
    :cond_1c
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v4, Lorg/telegram/ui/Cells/DialogCell;

    .line 901
    iput-boolean v7, v4, Lorg/telegram/ui/Cells/DialogCell;->useSeparator:Z

    .line 902
    iput-boolean v7, v4, Lorg/telegram/ui/Cells/DialogCell;->fullSeparator:Z

    if-nez v10, :cond_1e

    .line 904
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v9

    if-eqz v9, :cond_1e

    .line 905
    iget-wide v9, v3, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    iget-wide v13, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->openedDialogId:J

    cmp-long v9, v9, v13

    if-nez v9, :cond_1d

    move v9, v8

    goto :goto_4

    :cond_1d
    move v9, v7

    :goto_4
    invoke-virtual {v4, v9}, Lorg/telegram/ui/Cells/DialogCell;->setDialogSelected(Z)V

    .line 908
    :cond_1e
    iget-object v9, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->selectedDialogs:Ljava/util/ArrayList;

    iget-wide v13, v3, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v4, v9, v7}, Lorg/telegram/ui/Cells/DialogCell;->setChecked(ZZ)V

    if-ne v2, v8, :cond_21

    .line 909
    iget-object v7, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    if-eqz v7, :cond_21

    iget-boolean v9, v7, Lorg/telegram/ui/DialogsActivity;->isReplyTo:Z

    if-eqz v9, :cond_21

    iget-wide v9, v7, Lorg/telegram/ui/DialogsActivity;->replyMessageAuthor:J

    cmp-long v7, v9, v11

    if-eqz v7, :cond_21

    iget v7, v3, Lorg/telegram/tgnet/TLRPC$Dialog;->top_message:I

    if-nez v7, :cond_21

    .line 910
    invoke-direct {v0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->getCurrentFilter()Lorg/telegram/messenger/MessagesController$DialogFilter;

    move-result-object v5

    if-eqz v5, :cond_20

    .line 911
    invoke-virtual {v5}, Lorg/telegram/messenger/MessagesController$DialogFilter;->isDefault()Z

    move-result v5

    if-eqz v5, :cond_1f

    goto :goto_5

    .line 914
    :cond_1f
    invoke-virtual {v4, v6}, Lorg/telegram/ui/Cells/DialogCell;->setCustomMessage(Ljava/lang/String;)V

    goto :goto_7

    .line 912
    :cond_20
    :goto_5
    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    iget-wide v5, v5, Lorg/telegram/ui/DialogsActivity;->replyMessageAuthor:J

    invoke-static {v5, v6}, Lorg/telegram/messenger/DialogObject;->getStatus(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/DialogCell;->setCustomMessage(Ljava/lang/String;)V

    goto :goto_7

    :cond_21
    if-ne v2, v8, :cond_24

    .line 916
    iget-object v7, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    if-eqz v7, :cond_24

    iget v9, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    if-ne v9, v5, :cond_24

    iget-wide v9, v7, Lorg/telegram/ui/DialogsActivity;->forwardOriginalChannel:J

    cmp-long v5, v9, v11

    if-eqz v5, :cond_24

    iget v5, v3, Lorg/telegram/tgnet/TLRPC$Dialog;->top_message:I

    if-nez v5, :cond_24

    .line 917
    invoke-direct {v0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->getCurrentFilter()Lorg/telegram/messenger/MessagesController$DialogFilter;

    move-result-object v5

    if-eqz v5, :cond_23

    .line 918
    invoke-virtual {v5}, Lorg/telegram/messenger/MessagesController$DialogFilter;->isDefault()Z

    move-result v5

    if-eqz v5, :cond_22

    goto :goto_6

    .line 921
    :cond_22
    invoke-virtual {v4, v6}, Lorg/telegram/ui/Cells/DialogCell;->setCustomMessage(Ljava/lang/String;)V

    goto :goto_7

    .line 919
    :cond_23
    :goto_6
    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    iget-wide v5, v5, Lorg/telegram/ui/DialogsActivity;->forwardOriginalChannel:J

    invoke-static {v5, v6}, Lorg/telegram/messenger/DialogObject;->getStatus(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/DialogCell;->setCustomMessage(Ljava/lang/String;)V

    goto :goto_7

    .line 924
    :cond_24
    invoke-virtual {v4, v6}, Lorg/telegram/ui/Cells/DialogCell;->setCustomMessage(Ljava/lang/String;)V

    .line 926
    :goto_7
    iget v5, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    iget v6, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->folderId:I

    invoke-virtual {v4, v3, v5, v6}, Lorg/telegram/ui/Cells/DialogCell;->setDialog(Lorg/telegram/tgnet/TLRPC$Dialog;II)V

    .line 927
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/DialogCell;->checkHeight()V

    .line 928
    iget-boolean v5, v4, Lorg/telegram/ui/Cells/DialogCell;->collapsed:Z

    iget-boolean v6, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->collapsedView:Z

    if-eq v5, v6, :cond_25

    .line 929
    iput-boolean v6, v4, Lorg/telegram/ui/Cells/DialogCell;->collapsed:Z

    .line 930
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/DialogCell;->requestLayout()V

    .line 932
    :cond_25
    iget-object v4, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->preloader:Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;

    if-eqz v4, :cond_35

    const/16 v5, 0xa

    if-ge v2, v5, :cond_35

    .line 933
    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->add(J)V

    goto/16 :goto_f

    .line 836
    :cond_26
    :goto_8
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v13, v4

    check-cast v13, Lorg/telegram/ui/Cells/ProfileSearchCell;

    .line 837
    invoke-virtual {v13}, Lorg/telegram/ui/Cells/ProfileSearchCell;->getDialogId()J

    move-result-wide v4

    .line 845
    iget-wide v14, v3, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    cmp-long v10, v14, v11

    if-eqz v10, :cond_27

    .line 846
    iget v10, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v10}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    iget-wide v11, v3, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    neg-long v11, v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v10

    if-eqz v10, :cond_28

    .line 847
    iget-object v11, v10, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    if-eqz v11, :cond_28

    .line 848
    iget v11, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v11}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v11

    iget-object v12, v10, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    iget-wide v14, v12, Lorg/telegram/tgnet/TLRPC$InputChannel;->channel_id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v11

    if-eqz v11, :cond_28

    move-object v10, v11

    goto :goto_9

    :cond_27
    move-object v10, v6

    :cond_28
    :goto_9
    if-eqz v10, :cond_2f

    .line 857
    iget-object v6, v10, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 858
    invoke-static {v10}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_2b

    iget-boolean v3, v10, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v3, :cond_2b

    .line 859
    iget v3, v10, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    if-eqz v3, :cond_29

    .line 860
    const-string v11, "Subscribers"

    invoke-static {v11, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    :goto_a
    move-object/from16 v17, v3

    move-object/from16 v16, v6

    move-object v14, v10

    goto/16 :goto_d

    .line 862
    :cond_29
    invoke-static {v10}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 863
    sget v3, Lorg/telegram/messenger/R$string;->ChannelPrivate:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    goto :goto_a

    .line 865
    :cond_2a
    sget v3, Lorg/telegram/messenger/R$string;->ChannelPublic:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    goto :goto_a

    .line 869
    :cond_2b
    iget v3, v10, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    if-eqz v3, :cond_2c

    .line 870
    const-string v11, "Members"

    invoke-static {v11, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_a

    .line 872
    :cond_2c
    iget-boolean v3, v10, Lorg/telegram/tgnet/TLRPC$Chat;->has_geo:Z

    if-eqz v3, :cond_2d

    .line 873
    sget v3, Lorg/telegram/messenger/R$string;->MegaLocation:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_a

    .line 874
    :cond_2d
    invoke-static {v10}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-nez v3, :cond_2e

    .line 875
    sget v3, Lorg/telegram/messenger/R$string;->MegaPrivate:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    goto :goto_a

    .line 877
    :cond_2e
    sget v3, Lorg/telegram/messenger/R$string;->MegaPublic:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    goto :goto_a

    .line 883
    :cond_2f
    iget v10, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v10}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    iget-wide v11, v3, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v10, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 884
    const-string v10, ""

    if-eqz v3, :cond_32

    .line 886
    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v6

    .line 887
    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v11

    if-nez v11, :cond_30

    .line 888
    iget-boolean v10, v3, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v10, :cond_31

    .line 889
    sget v10, Lorg/telegram/messenger/R$string;->Bot:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    :cond_30
    :goto_b
    move-object v14, v3

    move-object/from16 v16, v6

    :goto_c
    move-object/from16 v17, v10

    goto :goto_d

    .line 891
    :cond_31
    iget v10, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v10, v3}, Lorg/telegram/messenger/LocaleController;->formatUserStatus(ILorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v10

    goto :goto_b

    :cond_32
    move-object v14, v6

    move-object/from16 v16, v14

    goto :goto_c

    :goto_d
    if-eqz v9, :cond_33

    move v3, v8

    goto :goto_e

    :cond_33
    move v3, v7

    .line 896
    :goto_e
    iput-boolean v3, v13, Lorg/telegram/ui/Cells/ProfileSearchCell;->useSeparator:Z

    const/4 v15, 0x0

    const/16 v19, 0x0

    const/16 v18, 0x0

    .line 897
    invoke-virtual/range {v13 .. v19}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setData(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    .line 898
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->selectedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v13}, Lorg/telegram/ui/Cells/ProfileSearchCell;->getDialogId()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v13}, Lorg/telegram/ui/Cells/ProfileSearchCell;->getDialogId()J

    move-result-wide v9

    cmp-long v4, v4, v9

    if-nez v4, :cond_34

    move v7, v8

    :cond_34
    invoke-virtual {v13, v3, v7}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setChecked(ZZ)V

    .line 1085
    :cond_35
    :goto_f
    iget v3, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsCount:I

    add-int/2addr v3, v8

    if-lt v2, v3, :cond_36

    .line 1086
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_36
    :goto_10
    return-void

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onButtonClicked(Lorg/telegram/ui/Cells/DialogCell;)V
    .locals 0

    return-void
.end method

.method public onButtonLongPress(Lorg/telegram/ui/Cells/DialogCell;)V
    .locals 0

    return-void
.end method

.method public onCreateGroupForThisClick()V
    .locals 0

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 12

    const/4 p1, 0x5

    const/4 v0, -0x1

    const/16 v1, 0xf

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch p2, :pswitch_data_0

    .line 779
    :pswitch_0
    new-instance v2, Lorg/telegram/ui/Cells/TextCell;

    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    .line 780
    iget v3, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    if-ne v3, v1, :cond_a

    .line 781
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_6

    .line 688
    :pswitch_1
    new-instance v2, Lorg/telegram/ui/Cells/GraySectionCell;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Cells/GraySectionCell;-><init>(Landroid/content/Context;)V

    goto/16 :goto_6

    .line 699
    :pswitch_2
    new-instance v2, Lorg/telegram/ui/Adapters/DialogsAdapter$LastEmptyView;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v1}, Lorg/telegram/ui/Adapters/DialogsAdapter$LastEmptyView;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;Landroid/content/Context;)V

    .line 700
    new-instance v3, Lorg/telegram/ui/Components/ArchiveHelp;

    iget-object v4, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    iget v5, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    new-instance v7, Lorg/telegram/ui/Adapters/DialogsAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v7, p0}, Lorg/telegram/ui/Adapters/DialogsAdapter$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;)V

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/Components/ArchiveHelp;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v4, -0x1

    const/high16 v5, -0x40800000    # -1.0f

    const/16 v6, 0x11

    const/4 v7, 0x0

    const/high16 v8, -0x3de00000    # -40.0f

    .line 702
    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    .line 700
    invoke-virtual {v2, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_6

    .line 769
    :pswitch_3
    new-instance v2, Lorg/telegram/ui/Adapters/DialogsAdapter$5;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v1}, Lorg/telegram/ui/Adapters/DialogsAdapter$5;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;Landroid/content/Context;)V

    goto/16 :goto_6

    .line 766
    :pswitch_4
    new-instance v2, Lorg/telegram/ui/Cells/DialogsHintCell;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Cells/DialogsHintCell;-><init>(Landroid/content/Context;)V

    goto/16 :goto_6

    .line 665
    :pswitch_5
    new-instance v2, Lorg/telegram/ui/Adapters/DialogsAdapter$3;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v1}, Lorg/telegram/ui/Adapters/DialogsAdapter$3;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;Landroid/content/Context;)V

    goto/16 :goto_6

    .line 608
    :pswitch_6
    new-instance v2, Lorg/telegram/ui/Cells/RequestPeerRequirementsCell;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Cells/RequestPeerRequirementsCell;-><init>(Landroid/content/Context;)V

    goto/16 :goto_6

    .line 682
    :pswitch_7
    new-instance v4, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v5, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_graySectionText:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v7, 0x10

    invoke-direct/range {v4 .. v9}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;IIIZ)V

    const/16 v1, 0x20

    .line 683
    invoke-virtual {v4, v1}, Lorg/telegram/ui/Cells/HeaderCell;->setHeight(I)V

    .line 685
    invoke-virtual {v4, v3}, Landroid/view/View;->setClickable(Z)V

    move-object v2, v4

    goto/16 :goto_6

    .line 711
    :pswitch_8
    new-instance v1, Lorg/telegram/ui/Adapters/DialogsAdapter$4;

    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v3}, Lorg/telegram/ui/Adapters/DialogsAdapter$4;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;Landroid/content/Context;)V

    .line 759
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    sget v4, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 760
    new-instance v4, Lorg/telegram/ui/Components/CombinedDrawable;

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v4, v5, v3}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 761
    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    .line 762
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    move-object v2, v1

    goto/16 :goto_6

    .line 707
    :pswitch_9
    new-instance v2, Lorg/telegram/ui/Adapters/DialogsAdapter$LastEmptyView;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v1}, Lorg/telegram/ui/Adapters/DialogsAdapter$LastEmptyView;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;Landroid/content/Context;)V

    goto/16 :goto_6

    .line 691
    :pswitch_a
    new-instance v1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .line 692
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    sget v4, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 693
    new-instance v4, Lorg/telegram/ui/Components/CombinedDrawable;

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v4, v5, v3}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 694
    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    .line 695
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 676
    :pswitch_b
    new-instance v2, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 677
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    if-eqz v1, :cond_1

    iget-boolean v1, v1, Lorg/telegram/ui/DialogsActivity;->isReplyTo:Z

    if-nez v1, :cond_a

    :cond_1
    const/high16 v1, 0x41400000    # 12.0f

    .line 678
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v2, v3, v3, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_6

    .line 673
    :pswitch_c
    new-instance v2, Lorg/telegram/ui/Cells/UserCell;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    const/16 v4, 0x8

    invoke-direct {v2, v1, v4, v3, v3}, Lorg/telegram/ui/Cells/UserCell;-><init>(Landroid/content/Context;IIZ)V

    goto/16 :goto_6

    .line 662
    :pswitch_d
    new-instance v2, Lorg/telegram/ui/Cells/DialogsEmptyCell;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Cells/DialogsEmptyCell;-><init>(Landroid/content/Context;)V

    goto/16 :goto_6

    .line 659
    :pswitch_e
    new-instance v2, Lorg/telegram/ui/Cells/DialogMeUrlCell;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Cells/DialogMeUrlCell;-><init>(Landroid/content/Context;)V

    goto/16 :goto_6

    .line 646
    :pswitch_f
    new-instance v2, Lorg/telegram/ui/Adapters/DialogsAdapter$2;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v1}, Lorg/telegram/ui/Adapters/DialogsAdapter$2;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;Landroid/content/Context;)V

    .line 652
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 653
    new-instance v1, Landroid/view/View;

    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 654
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    sget v4, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v3, -0x40800000    # -1.0f

    .line 655
    invoke-static {v0, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_6

    .line 625
    :pswitch_10
    new-instance v1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 626
    sget v3, Lorg/telegram/messenger/R$string;->RecentlyViewed:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    .line 628
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v4, 0x41700000    # 15.0f

    .line 629
    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 630
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 631
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 632
    sget v2, Lorg/telegram/messenger/R$string;->RecentlyViewedHide:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 633
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v4, 0x3

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    move v2, p1

    :goto_1
    or-int/lit8 v2, v2, 0x10

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 634
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move v4, p1

    :goto_2
    or-int/lit8 v7, v4, 0x30

    const/high16 v10, 0x41880000    # 17.0f

    const/4 v11, 0x0

    const/4 v5, -0x1

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v8, 0x41880000    # 17.0f

    const/high16 v9, 0x41700000    # 15.0f

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 635
    new-instance v2, Lorg/telegram/ui/Adapters/DialogsAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Adapters/DialogsAdapter$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 612
    :pswitch_11
    new-instance v1, Lorg/telegram/ui/Components/FlickerLoadingView;

    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;)V

    .line 613
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->setIsSingleCell(Z)V

    const/16 v3, 0x12

    const/16 v4, 0xd

    if-ne p2, v4, :cond_4

    move v5, v3

    goto :goto_3

    :cond_4
    const/4 v5, 0x7

    .line 615
    :goto_3
    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    if-ne v5, v3, :cond_5

    .line 617
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->setIgnoreHeightCheck(Z)V

    :cond_5
    if-ne p2, v4, :cond_0

    .line 620
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    const/high16 v3, 0x42800000    # 64.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->setItemsCount(I)V

    goto/16 :goto_0

    .line 586
    :pswitch_12
    iget v3, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_9

    if-ne v3, v1, :cond_6

    goto :goto_4

    .line 590
    :cond_6
    new-instance v5, Lorg/telegram/ui/Cells/DialogCell;

    iget-object v6, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    iget-object v7, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    iget v10, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    const/4 v11, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct/range {v5 .. v11}, Lorg/telegram/ui/Cells/DialogCell;-><init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;ZZILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 591
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->showOpenBotButton()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 592
    new-instance v3, Lorg/telegram/ui/Adapters/DialogsAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Adapters/DialogsAdapter$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;)V

    invoke-virtual {v5, v2, v3}, Lorg/telegram/ui/Cells/DialogCell;->allowBotOpenButton(ZLorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/Cells/DialogCell;

    .line 594
    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->pullForegroundDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    invoke-virtual {v5, v2}, Lorg/telegram/ui/Cells/DialogCell;->setArchivedPullAnimation(Lorg/telegram/ui/Components/PullForegroundDrawable;)V

    .line 595
    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->preloader:Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;

    invoke-virtual {v5, v2}, Lorg/telegram/ui/Cells/DialogCell;->setPreloader(Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;)V

    .line 596
    invoke-virtual {v5, p0}, Lorg/telegram/ui/Cells/DialogCell;->setDialogCellDelegate(Lorg/telegram/ui/Cells/DialogCell$DialogCellDelegate;)V

    .line 597
    iget-boolean v2, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->isTransitionSupport:Z

    invoke-virtual {v5, v2}, Lorg/telegram/ui/Cells/DialogCell;->setIsTransitionSupport(Z)V

    const/16 v2, 0x15

    if-ne p2, v2, :cond_8

    .line 599
    invoke-virtual {v5}, Lorg/telegram/ui/Cells/DialogCell;->setIsShareToStoryCell()V

    :cond_8
    move-object v2, v5

    goto :goto_5

    .line 588
    :cond_9
    :goto_4
    new-instance v2, Lorg/telegram/ui/Cells/ProfileSearchCell;

    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lorg/telegram/ui/Cells/ProfileSearchCell;-><init>(Landroid/content/Context;)V

    .line 603
    :goto_5
    iget v3, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    if-ne v3, v1, :cond_a

    .line 604
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 786
    :cond_a
    :goto_6
    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    if-eq p2, p1, :cond_c

    const/16 p1, 0x13

    if-ne p2, p1, :cond_b

    goto :goto_7

    :cond_b
    const/4 p1, -0x2

    goto :goto_8

    :cond_c
    :goto_7
    move p1, v0

    :goto_8
    invoke-direct {v1, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 787
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, v2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_11
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_12
    .end packed-switch
.end method

.method protected onOpenBot(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    return-void
.end method

.method public onReorderStateChanged(Z)V
    .locals 0

    .line 172
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->isReordering:Z

    return-void
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 4

    .line 563
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v0, :cond_0

    .line 564
    check-cast p1, Lorg/telegram/ui/Cells/DialogCell;

    .line 565
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->isReordering:Z

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Cells/DialogCell;->onReorderStateChanged(ZZ)V

    .line 566
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsListFrozen:Z

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/DialogCell;->checkCurrentDialogIndex(Z)Z

    .line 567
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->selectedDialogs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/DialogCell;->getDialogId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Cells/DialogCell;->setChecked(ZZ)V

    :cond_0
    return-void
.end method

.method public openHiddenStories()V
    .locals 13

    .line 1187
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    .line 1188
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController;->getHiddenList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1191
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController;->getHiddenList()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v1}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Stories/StoriesController;->getUnreadState(J)I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    .line 1192
    :goto_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1193
    :goto_1
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController;->getHiddenList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 1194
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController;->getHiddenList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    iget-object v4, v4, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v4}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v4

    if-eqz v1, :cond_2

    .line 1195
    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/Stories/StoriesController;->getUnreadState(J)I

    move-result v6

    if-eqz v6, :cond_3

    .line 1196
    :cond_2
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1200
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getOrCreateStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0, v3}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->of(Lorg/telegram/ui/Components/RecyclerListView;Z)Lorg/telegram/ui/Stories/StoriesListPlaceProvider;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v12}, Lorg/telegram/ui/Stories/StoryViewer;->open(Landroid/content/Context;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Ljava/util/ArrayList;ILorg/telegram/ui/Stories/StoriesController$StoriesList;Lorg/telegram/tgnet/tl/TL_stories$PeerStories;Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;Z)V

    return-void
.end method

.method public openStory(Lorg/telegram/ui/Cells/DialogCell;Ljava/lang/Runnable;)V
    .locals 3

    .line 1172
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    .line 1173
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/DialogCell;->getDialogId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/StoriesController;->hasStories(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1174
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getOrCreateStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Stories/StoryViewer;->doOnAnimationReady(Ljava/lang/Runnable;)V

    .line 1175
    iget-object p2, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getOrCreateStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/DialogCell;->getDialogId()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->of(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Stories/StoriesListPlaceProvider;

    move-result-object p1

    invoke-virtual {p2, v0, v1, v2, p1}, Lorg/telegram/ui/Stories/StoryViewer;->open(Landroid/content/Context;JLorg/telegram/ui/Stories/StoryViewer$PlaceProvider;)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .line 1150
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->preloader:Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;

    if-eqz v0, :cond_0

    .line 1151
    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->pause()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .line 1144
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->preloader:Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;

    if-eqz v0, :cond_0

    .line 1145
    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->resume()V

    :cond_0
    return-void
.end method

.method public setAllowForwardAsStories(Z)V
    .locals 0

    .line 203
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->allowForwardAsStories:Z

    return-void
.end method

.method public setArchivedPullDrawable(Lorg/telegram/ui/Components/PullForegroundDrawable;)V
    .locals 0

    .line 1134
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->pullForegroundDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    return-void
.end method

.method public setCollapsedView(ZLorg/telegram/ui/Components/RecyclerListView;)V
    .locals 3

    .line 1208
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->collapsedView:Z

    const/4 v0, 0x0

    move v1, v0

    .line 1209
    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1210
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v2, :cond_0

    .line 1211
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Cells/DialogCell;

    iput-boolean p1, v2, Lorg/telegram/ui/Cells/DialogCell;->collapsed:Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 1214
    :goto_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getCachedChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 1215
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getCachedChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v2, :cond_2

    .line 1216
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getCachedChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Cells/DialogCell;

    iput-boolean p1, v2, Lorg/telegram/ui/Cells/DialogCell;->collapsed:Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v1, v0

    .line 1219
    :goto_2
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getHiddenChildCount()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 1220
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getHiddenChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v2, :cond_4

    .line 1221
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getHiddenChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Cells/DialogCell;

    iput-boolean p1, v2, Lorg/telegram/ui/Cells/DialogCell;->collapsed:Z

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1224
    :cond_5
    :goto_3
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAttachedScrapChildCount()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 1225
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->getAttachedScrapChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v1, :cond_6

    .line 1226
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->getAttachedScrapChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Cells/DialogCell;

    iput-boolean p1, v1, Lorg/telegram/ui/Cells/DialogCell;->collapsed:Z

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    return-void
.end method

.method public setDialogsListFrozen(Z)V
    .locals 0

    .line 467
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsListFrozen:Z

    return-void
.end method

.method public setDialogsType(I)V
    .locals 0

    .line 198
    iput p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    .line 199
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setForceShowEmptyCell(Z)V
    .locals 0

    .line 1346
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->forceShowEmptyCell:Z

    return-void
.end method

.method public setForceUpdatingContacts(Z)V
    .locals 0

    .line 1099
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->forceUpdatingContacts:Z

    return-void
.end method

.method public setIsTransitionSupport()V
    .locals 1

    const/4 v0, 0x1

    .line 1204
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->isTransitionSupport:Z

    return-void
.end method

.method public setOpenedDialogId(J)V
    .locals 0

    .line 168
    iput-wide p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->openedDialogId:J

    return-void
.end method

.method public setRecyclerListView(Lorg/telegram/ui/Components/RecyclerListView;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    return-void
.end method

.method public showChatPreview(Lorg/telegram/ui/Cells/DialogCell;)V
    .locals 1

    .line 1182
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/DialogsActivity;->showChatPreview(Lorg/telegram/ui/Cells/DialogCell;)Z

    return-void
.end method

.method protected showOpenBotButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public sortOnlineContacts(Z)V
    .locals 4

    .line 411
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->onlineContacts:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->lastSortTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    goto :goto_0

    .line 414
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->lastSortTime:J

    .line 416
    :try_start_0
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    .line 417
    iget v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    .line 418
    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->onlineContacts:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/Adapters/DialogsAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1, v0}, Lorg/telegram/ui/Adapters/DialogsAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/MessagesController;I)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz p1, :cond_1

    .line 459
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 462
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateHasHints()V
    .locals 1

    .line 479
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->folderId:I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->isOnlySelect:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->hintDialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->hasHints:Z

    return-void
.end method

.method public updateList(Ljava/lang/Runnable;)V
    .locals 4

    .line 487
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->isCalculatingDiff:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 488
    iput-boolean v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->updateListPending:Z

    return-void

    .line 491
    :cond_0
    iput-boolean v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->isCalculatingDiff:Z

    .line 492
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->oldItems:Ljava/util/ArrayList;

    .line 493
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 494
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->updateItemList()V

    .line 495
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 496
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->oldItems:Ljava/util/ArrayList;

    iput-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    .line 498
    new-instance v1, Lorg/telegram/ui/Adapters/DialogsAdapter$1;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Adapters/DialogsAdapter$1;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;Ljava/util/ArrayList;)V

    .line 519
    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x32

    if-lt v2, v3, :cond_2

    sget-boolean v2, Lorg/telegram/ui/Adapters/DialogsAdapter;->ALLOW_UPDATE_IN_BACKGROUND:Z

    if-nez v2, :cond_1

    goto :goto_0

    .line 528
    :cond_1
    sget-object v2, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/ui/Adapters/DialogsAdapter$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0, v1, p1, v0}, Lorg/telegram/ui/Adapters/DialogsAdapter$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;Landroidx/recyclerview/widget/DiffUtil$Callback;Ljava/lang/Runnable;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void

    .line 520
    :cond_2
    :goto_0
    invoke-static {v1}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object v1

    const/4 v2, 0x0

    .line 521
    iput-boolean v2, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->isCalculatingDiff:Z

    if-eqz p1, :cond_3

    .line 523
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 525
    :cond_3
    iput-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->itemInternals:Ljava/util/ArrayList;

    .line 526
    invoke-virtual {v1, p0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method
