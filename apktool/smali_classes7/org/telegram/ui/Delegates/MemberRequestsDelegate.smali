.class public abstract Lorg/telegram/ui/Delegates/MemberRequestsDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Cells/MemberRequestCell$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Delegates/MemberRequestsDelegate$Adapter;,
        Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;
    }
.end annotation


# instance fields
.field private final adapter:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$Adapter;

.field private final allImporters:Ljava/util/ArrayList;

.field private final chatId:J

.field private final controller:Lorg/telegram/messenger/MemberRequestsController;

.field private final currentAccount:I

.field private final currentImporters:Ljava/util/List;

.field private emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

.field private final fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private hasMore:Z

.field private importer:Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;

.field public final isChannel:Z

.field private isDataLoaded:Z

.field private isFirstLoading:Z

.field private isLoading:Z

.field public isNeedRestoreList:Z

.field private isSearchExpanded:Z

.field private isShowLastItemDivider:Z

.field private final layoutContainer:Landroid/widget/FrameLayout;

.field private final listScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private final loadMembersRunnable:Ljava/lang/Runnable;

.field private loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

.field private previewDialog:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;

.field private query:Ljava/lang/String;

.field private recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

.field private rootLayout:Landroid/widget/FrameLayout;

.field private searchEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

.field private searchRequestId:I

.field private searchRunnable:Ljava/lang/Runnable;

.field private final showSearchMenu:Z

.field private final users:Landroid/util/LongSparseArray;


# direct methods
.method public static synthetic $r8$lambda$2n2gxPHM92617CJ0tNI1VG-3qaE(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;ZLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_messages_hideChatJoinRequest;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->lambda$hideChatJoinRequest$6(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;ZLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_messages_hideChatJoinRequest;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IzZlgwyo0MRKrX3sUOIj3tBJLtY(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->lambda$new$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$O3o5_ZtgV9aaSeucdYx3bj6hsgQ(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;Lorg/telegram/ui/Cells/MemberRequestCell;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->lambda$onItemClick$1(Lorg/telegram/ui/Cells/MemberRequestCell;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XyPKEEDoC2QymE_V1FxRdrGLwEs(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->lambda$loadMembers$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$YQMbo-ypHp8FnQrEfyCf5lJtOVw(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->lambda$onItemClick$0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jLtR16Tn8TR5SfjwaRx600hpJfQ(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->lambda$loadMembers$5(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$mM1Xi-svfpzBZKpnOJFlBuyd67o(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;ZLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_messages_hideChatJoinRequest;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->lambda$hideChatJoinRequest$7(Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;ZLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_messages_hideChatJoinRequest;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rPmRSvZhQFl9S9R68a-2YHIFxzU(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;ZLjava/lang/Runnable;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Z)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->lambda$loadMembers$3(ZLjava/lang/Runnable;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$x300BY5jOAleWfV_yPyG9IVmGog(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;ZLjava/lang/Runnable;Ljava/lang/String;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->lambda$loadMembers$4(ZLjava/lang/Runnable;Ljava/lang/String;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetadapter(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;)Lorg/telegram/ui/Delegates/MemberRequestsDelegate$Adapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->adapter:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$Adapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->currentAccount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentImporters(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->currentImporters:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfragment(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgethasMore(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->hasMore:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisLoading(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->isLoading:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisShowLastItemDivider(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->isShowLastItemDivider:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlistScrollListener(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;)Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->listScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetloadMembersRunnable(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->loadMembersRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetusers(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;)Landroid/util/LongSparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->users:Landroid/util/LongSparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhidePreview(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->hidePreview()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/widget/FrameLayout;JZ)V
    .locals 2

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->currentImporters:Ljava/util/List;

    .line 91
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->users:Landroid/util/LongSparseArray;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->allImporters:Ljava/util/ArrayList;

    .line 94
    new-instance v0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$Adapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$Adapter;-><init>(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;Lorg/telegram/ui/Delegates/MemberRequestsDelegate-IA;)V

    iput-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->adapter:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$Adapter;

    const/4 v0, 0x1

    .line 115
    iput-boolean v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->hasMore:Z

    .line 118
    iput-boolean v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->isFirstLoading:Z

    .line 119
    iput-boolean v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->isShowLastItemDivider:Z

    .line 555
    new-instance v0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;)V

    iput-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->loadMembersRunnable:Ljava/lang/Runnable;

    .line 557
    new-instance v0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$2;-><init>(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;)V

    iput-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->listScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 122
    iput-object p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 123
    iput-object p2, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->layoutContainer:Landroid/widget/FrameLayout;

    .line 124
    iput-wide p3, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->chatId:J

    .line 125
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->currentAccount:I

    .line 126
    invoke-static {p3, p4, p1}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(JI)Z

    move-result p2

    iput-boolean p2, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->isChannel:Z

    .line 127
    iput-boolean p5, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->showSearchMenu:Z

    .line 128
    invoke-static {p1}, Lorg/telegram/messenger/MemberRequestsController;->getInstance(I)Lorg/telegram/messenger/MemberRequestsController;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->controller:Lorg/telegram/messenger/MemberRequestsController;

    return-void
.end method

.method private hideChatJoinRequest(Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;Z)V
    .locals 7

    .line 467
    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->users:Landroid/util/LongSparseArray;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;->user_id:J

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lorg/telegram/tgnet/TLRPC$User;

    if-nez v5, :cond_0

    return-void

    .line 471
    :cond_0
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_messages_hideChatJoinRequest;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_messages_hideChatJoinRequest;-><init>()V

    .line 472
    iput-boolean p2, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_hideChatJoinRequest;->approved:Z

    .line 473
    iget v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->chatId:J

    neg-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    iput-object v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_hideChatJoinRequest;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 474
    iget v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v0

    iput-object v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_hideChatJoinRequest;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 475
    iget v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$$ExternalSyntheticLambda9;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;ZLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_messages_hideChatJoinRequest;)V

    invoke-virtual {v0, v6, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private hidePreview()V
    .locals 1

    .line 528
    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->previewDialog:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;

    invoke-virtual {v0}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->dismiss()V

    const/4 v0, 0x0

    .line 529
    iput-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->importer:Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;

    return-void
.end method

.method private synthetic lambda$hideChatJoinRequest$6(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;ZLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_messages_hideChatJoinRequest;)V
    .locals 5

    .line 481
    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 485
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_updates;

    .line 486
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const/4 p6, 0x1

    if-nez p1, :cond_1

    .line 487
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 488
    iget p2, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {p2, v1, v2, v0, p6}, Lorg/telegram/messenger/MessagesController;->loadFullChat(JIZ)V

    :cond_1
    move p1, v0

    .line 490
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->allImporters:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_3

    .line 491
    iget-object p2, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->allImporters:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;

    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;->user_id:J

    iget-wide v3, p3, Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;->user_id:J

    cmp-long p2, v1, v3

    if-nez p2, :cond_2

    .line 492
    iget-object p2, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->allImporters:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 496
    :cond_3
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->adapter:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$Adapter;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$Adapter;->removeItem(Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;)V

    .line 497
    iget-object p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->query:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p6}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->onImportersChanged(Ljava/lang/String;ZZ)V

    if-eqz p4, :cond_6

    .line 499
    new-instance p1, Lorg/telegram/ui/Components/Bulletin$MultiLineLayout;

    iget-object p2, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lorg/telegram/ui/Components/Bulletin$MultiLineLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 500
    iget-object p2, p1, Lorg/telegram/ui/Components/Bulletin$MultiLineLayout;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 p3, 0x42000000    # 32.0f

    invoke-static {p3}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(F)I

    move-result p3

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 501
    iget-object p2, p1, Lorg/telegram/ui/Components/Bulletin$MultiLineLayout;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    new-instance p3, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {p3, p5}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {p2, p5, p3}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    .line 502
    invoke-static {p5}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p2

    .line 503
    iget-boolean p3, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->isChannel:Z

    if-eqz p3, :cond_4

    .line 504
    sget p3, Lorg/telegram/messenger/R$string;->HasBeenAddedToChannel:I

    new-array p4, p6, [Ljava/lang/Object;

    aput-object p2, p4, v0

    const-string p5, "HasBeenAddedToChannel"

    invoke-static {p5, p3, p4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_2

    .line 505
    :cond_4
    sget p3, Lorg/telegram/messenger/R$string;->HasBeenAddedToGroup:I

    new-array p4, p6, [Ljava/lang/Object;

    aput-object p2, p4, v0

    const-string p5, "HasBeenAddedToGroup"

    invoke-static {p5, p3, p4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 506
    :goto_2
    new-instance p4, Landroid/text/SpannableStringBuilder;

    invoke-direct {p4, p3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 507
    invoke-virtual {p3, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p3

    .line 508
    new-instance p5, Lorg/telegram/ui/Components/TypefaceSpan;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object p6

    invoke-direct {p5, p6}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, p3

    const/16 p6, 0x12

    invoke-virtual {p4, p5, p3, p2, p6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 509
    iget-object p2, p1, Lorg/telegram/ui/Components/Bulletin$MultiLineLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 510
    iget-object p2, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->allImporters:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    const/16 p3, 0xabe

    if-eqz p2, :cond_5

    .line 511
    iget-object p2, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {p2, p1, p3}, Lorg/telegram/ui/Components/Bulletin;->make(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_3

    .line 513
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->layoutContainer:Landroid/widget/FrameLayout;

    invoke-static {p2, p1, p3}, Lorg/telegram/ui/Components/Bulletin;->make(Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 516
    :cond_6
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object p1

    .line 517
    iget-object p2, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->query:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_9

    iget-boolean p2, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->showSearchMenu:Z

    if-eqz p2, :cond_9

    .line 518
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getItem(I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->allImporters:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_7

    const/16 v0, 0x8

    :cond_7
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 521
    :cond_8
    iget p2, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->currentAccount:I

    iget-object p3, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-array p4, v0, [Ljava/lang/Object;

    invoke-static {p2, p1, p3, p6, p4}, Lorg/telegram/ui/Components/AlertsCreator;->processError(ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    :cond_9
    :goto_4
    return-void
.end method

.method private synthetic lambda$hideChatJoinRequest$7(Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;ZLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_messages_hideChatJoinRequest;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 9

    if-nez p6, :cond_0

    .line 477
    move-object v0, p5

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_updates;

    .line 478
    iget v1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    .line 480
    :cond_0
    new-instance v1, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$$ExternalSyntheticLambda10;

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v4, p5

    move-object v3, p6

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;ZLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_messages_hideChatJoinRequest;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadMembers$2()V
    .locals 2

    .line 346
    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v1}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->setViewVisible(Landroid/view/View;ZZ)V

    return-void
.end method

.method private synthetic lambda$loadMembers$3(ZLjava/lang/Runnable;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Z)V
    .locals 2

    const/4 v0, 0x0

    .line 352
    iput-boolean v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->isLoading:Z

    const/4 v1, 0x1

    .line 353
    iput-boolean v1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->isDataLoaded:Z

    if-eqz p1, :cond_0

    .line 355
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 357
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-direct {p0, p1, v0, v0}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->setViewVisible(Landroid/view/View;ZZ)V

    .line 358
    iget-object p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->query:Ljava/lang/String;

    invoke-static {p3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    if-nez p4, :cond_2

    .line 362
    iput-boolean v1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->isDataLoaded:Z

    .line 363
    check-cast p5, Lorg/telegram/tgnet/TLRPC$TL_messages_chatInviteImporters;

    .line 364
    invoke-direct {p0, p5, p3, p6, v0}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->onImportersLoaded(Lorg/telegram/tgnet/TLRPC$TL_messages_chatInviteImporters;Ljava/lang/String;ZZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$loadMembers$4(ZLjava/lang/Runnable;Ljava/lang/String;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 8

    .line 351
    new-instance v0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$$ExternalSyntheticLambda8;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v7, p4

    move-object v6, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;ZLjava/lang/Runnable;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Z)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadMembers$5(Z)V
    .locals 12

    .line 336
    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->query:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 337
    iget-object v5, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->query:Ljava/lang/String;

    const/4 v0, 0x1

    .line 339
    iput-boolean v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->isLoading:Z

    const/4 v1, 0x0

    .line 340
    iput-boolean v1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->isFirstLoading:Z

    const/4 v2, 0x0

    if-eqz v3, :cond_0

    .line 342
    iget-object v4, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->currentImporters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 343
    iget-object v4, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->currentImporters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;

    move-object v8, v4

    goto :goto_0

    :cond_0
    move-object v8, v2

    :goto_0
    if-nez v8, :cond_1

    move v6, v0

    goto :goto_1

    :cond_1
    move v6, v1

    :goto_1
    if-eqz v3, :cond_2

    if-eqz v6, :cond_2

    if-eqz p1, :cond_2

    .line 346
    new-instance v2, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;)V

    :cond_2
    move-object v4, v2

    if-eqz v3, :cond_3

    const-wide/16 v0, 0x12c

    .line 348
    invoke-static {v4, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 350
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->controller:Lorg/telegram/messenger/MemberRequestsController;

    iget-wide v9, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->chatId:J

    move-wide v10, v9

    iget-object v9, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->users:Landroid/util/LongSparseArray;

    new-instance v1, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$$ExternalSyntheticLambda4;

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;ZLjava/lang/Runnable;Ljava/lang/String;Z)V

    move-object v4, p1

    move-object v7, v5

    move-wide v5, v10

    move-object v10, v1

    invoke-virtual/range {v4 .. v10}, Lorg/telegram/messenger/MemberRequestsController;->getImporters(JLjava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;Landroid/util/LongSparseArray;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p1

    iput p1, v2, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->searchRequestId:I

    return-void
.end method

.method private synthetic lambda$new$8()V
    .locals 0

    .line 555
    invoke-virtual {p0}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->loadMembers()V

    return-void
.end method

.method private synthetic lambda$onItemClick$0(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 262
    iput-object p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->previewDialog:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;

    return-void
.end method

.method private synthetic lambda$onItemClick$1(Lorg/telegram/ui/Cells/MemberRequestCell;)V
    .locals 7

    .line 242
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/MemberRequestCell;->getImporter()Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->importer:Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;

    .line 243
    iget-object v1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->users:Landroid/util/LongSparseArray;

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;->user_id:J

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    if-nez v0, :cond_1

    :cond_0
    move-object v1, p0

    goto :goto_1

    .line 247
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 248
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    const/4 v4, 0x1

    if-le v3, v1, :cond_2

    move v1, v4

    goto :goto_0

    :cond_2
    move v1, v2

    .line 249
    :goto_0
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v3, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    move-object v1, p0

    goto :goto_2

    .line 258
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->previewDialog:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;

    if-nez v0, :cond_0

    .line 259
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lorg/telegram/ui/Components/RecyclerListView;

    .line 260
    new-instance v1, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;

    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v5

    iget-boolean v6, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->isChannel:Z

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;-><init>(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;Landroid/content/Context;Lorg/telegram/ui/Components/RecyclerListView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V

    move-object v0, v1

    move-object v1, v2

    iput-object v0, v1, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->previewDialog:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;

    .line 261
    iget-object v2, v1, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->importer:Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/MemberRequestCell;->getAvatarImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->setImporter(Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;Lorg/telegram/ui/Components/BackupImageView;)V

    .line 262
    iget-object p1, v1, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->previewDialog:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;

    new-instance v0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 263
    iget-object p1, v1, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->previewDialog:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;

    invoke-virtual {p1}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->show()V

    :goto_1
    return-void

    .line 251
    :goto_2
    iput-boolean v4, v1, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->isNeedRestoreList:Z

    .line 252
    iget-object p1, v1, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->dismissCurrentDialog()V

    .line 253
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 254
    new-instance v3, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {v3, p1}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    .line 255
    const-string v4, "user_id"

    iget-wide v5, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {p1, v4, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 256
    const-string v0, "removeFragmentOnChatOpen"

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 257
    iget-object p1, v1, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private onImportersLoaded(Lorg/telegram/tgnet/TLRPC$TL_messages_chatInviteImporters;Ljava/lang/String;ZZ)V
    .locals 8

    .line 372
    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->currentImporters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->hasMore:Z

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    move v3, v1

    .line 373
    :goto_1
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_chatInviteImporters;->users:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 374
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_chatInviteImporters;->users:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    .line 375
    iget-object v5, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->users:Landroid/util/LongSparseArray;

    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v5, v6, v7, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    .line 378
    iget-object v3, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->adapter:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$Adapter;

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_chatInviteImporters;->importers:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$Adapter;->setItems(Ljava/util/List;)V

    goto :goto_3

    .line 380
    :cond_2
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_chatInviteImporters;->importers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->currentImporters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_chatInviteImporters;->importers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_chatInviteImporters;->count:I

    if-ge v3, v4, :cond_3

    move v3, v2

    goto :goto_2

    :cond_3
    move v3, v1

    :goto_2
    if-eqz v3, :cond_4

    .line 382
    iget-object v4, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->adapter:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$Adapter;

    iget-boolean v5, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->isShowLastItemDivider:Z

    xor-int/2addr v5, v2

    iget-object v6, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->currentImporters:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 384
    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->adapter:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$Adapter;

    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_chatInviteImporters;->importers:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$Adapter;->appendItems(Ljava/util/List;)V

    if-eqz v3, :cond_5

    .line 386
    iget-object v3, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->adapter:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$Adapter;

    iget-boolean v4, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->isShowLastItemDivider:Z

    xor-int/2addr v4, v2

    iget-object v5, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->currentImporters:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 389
    :cond_5
    :goto_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-eqz p3, :cond_6

    .line 391
    iget-object p3, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->allImporters:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 393
    :cond_6
    iget-object p3, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->allImporters:Ljava/util/ArrayList;

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_chatInviteImporters;->importers:Ljava/util/ArrayList;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 394
    iget-boolean p3, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->showSearchMenu:Z

    if-eqz p3, :cond_8

    .line 395
    iget-object p3, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object p3

    invoke-virtual {p3, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getItem(I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p3

    iget-object v3, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->allImporters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    const/16 v3, 0x8

    goto :goto_4

    :cond_7
    move v3, v1

    :goto_4
    invoke-virtual {p3, v3}, Landroid/view/View;->setVisibility(I)V

    .line 398
    :cond_8
    invoke-virtual {p0, p2, p4, v1}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->onImportersChanged(Ljava/lang/String;ZZ)V

    .line 399
    iget-object p2, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->currentImporters:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_chatInviteImporters;->count:I

    if-ge p2, p1, :cond_9

    move p1, v2

    goto :goto_5

    :cond_9
    move p1, v1

    :goto_5
    iput-boolean p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->hasMore:Z

    .line 400
    iget-object p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->currentImporters:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    iget-boolean p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->hasMore:Z

    if-eqz p1, :cond_a

    move v1, v2

    :cond_a
    if-eq v0, v1, :cond_c

    .line 401
    iget-boolean p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->hasMore:Z

    if-eqz p1, :cond_b

    .line 402
    iget-object p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->adapter:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$Adapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$Adapter;->getItemCount()I

    move-result p2

    sub-int/2addr p2, v2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    return-void

    .line 404
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->adapter:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$Adapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$Adapter;->getItemCount()I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    :cond_c
    return-void
.end method

.method private setViewVisible(Landroid/view/View;ZZ)V
    .locals 4

    if-nez p1, :cond_0

    goto :goto_2

    .line 536
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_2

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    if-ne p2, v0, :cond_3

    .line 538
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v3, v0

    if-nez v0, :cond_3

    :goto_2
    return-void

    :cond_3
    if-eqz p3, :cond_5

    if-eqz p2, :cond_4

    .line 543
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 545
    :cond_4
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 546
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 547
    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p2, 0x96

    .line 548
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 549
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    :cond_5
    if-eqz p2, :cond_6

    goto :goto_3

    :cond_6
    const/4 v1, 0x4

    .line 551
    :goto_3
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getAdapter()Lorg/telegram/ui/Delegates/MemberRequestsDelegate$Adapter;
    .locals 1

    .line 169
    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->adapter:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$Adapter;

    return-object v0
.end method

.method public getEmptyView()Lorg/telegram/ui/Components/StickerEmptyView;
    .locals 5

    .line 187
    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    if-nez v0, :cond_2

    .line 188
    new-instance v0, Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-direct {v0, v1, v3, v4, v2}, Lorg/telegram/ui/Components/StickerEmptyView;-><init>(Landroid/content/Context;Landroid/view/View;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    .line 189
    iget-object v0, v0, Lorg/telegram/ui/Components/StickerEmptyView;->title:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    iget-boolean v1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->isChannel:Z

    if-eqz v1, :cond_0

    sget v1, Lorg/telegram/messenger/R$string;->NoSubscribeRequests:I

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    sget v1, Lorg/telegram/messenger/R$string;->NoMemberRequests:I

    goto :goto_0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    iget-boolean v1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->isChannel:Z

    if-eqz v1, :cond_1

    sget v1, Lorg/telegram/messenger/R$string;->NoSubscribeRequestsDescription:I

    :goto_2
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_1
    sget v1, Lorg/telegram/messenger/R$string;->NoMemberRequestsDescription:I

    goto :goto_2

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/StickerEmptyView;->setAnimateLayoutChange(Z)V

    .line 192
    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/StickerEmptyView;->setVisibility(I)V

    .line 194
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    return-object v0
.end method

.method public getLoadingView()Lorg/telegram/ui/Components/FlickerLoadingView;
    .locals 4

    .line 173
    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    if-nez v0, :cond_1

    .line 174
    new-instance v0, Lorg/telegram/ui/Components/FlickerLoadingView;

    iget-object v1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    const/4 v1, 0x0

    .line 175
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 176
    iget-boolean v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->isShowLastItemDivider:Z

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    iget-object v2, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 179
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Components/FlickerLoadingView;->setColors(III)V

    .line 180
    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    .line 181
    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    iget-boolean v1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->isChannel:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->setMemberRequestButton(Z)V

    .line 183
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    return-object v0
.end method

.method public getRootLayout()Landroid/widget/FrameLayout;
    .locals 4

    .line 132
    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->rootLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->rootLayout:Landroid/widget/FrameLayout;

    .line 134
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    iget-object v2, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 136
    invoke-virtual {p0}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->getLoadingView()Lorg/telegram/ui/Components/FlickerLoadingView;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    .line 137
    iget-object v1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->rootLayout:Landroid/widget/FrameLayout;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 139
    invoke-virtual {p0}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->getSearchEmptyView()Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->searchEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    .line 140
    iget-object v1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->rootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 142
    invoke-virtual {p0}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->getEmptyView()Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    .line 143
    iget-object v1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->rootLayout:Landroid/widget/FrameLayout;

    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 146
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v3, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 147
    iget-object v3, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->adapter:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$Adapter;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 148
    iget-object v1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 149
    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 150
    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->listScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 151
    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    iget-object v3, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setSelectorDrawableColor(I)V

    .line 152
    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->rootLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 154
    new-instance v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    const-wide/16 v1, 0x15e

    .line 155
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    .line 156
    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v1, 0x0

    .line 157
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 158
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 159
    iget-object v1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 161
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->rootLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getSearchEmptyView()Lorg/telegram/ui/Components/StickerEmptyView;
    .locals 5

    .line 198
    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->searchEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    if-nez v0, :cond_1

    .line 199
    new-instance v0, Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v1, v3, v4, v2}, Lorg/telegram/ui/Components/StickerEmptyView;-><init>(Landroid/content/Context;Landroid/view/View;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->searchEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    .line 200
    iget-boolean v1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->isShowLastItemDivider:Z

    if-eqz v1, :cond_0

    .line 201
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    iget-object v2, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 203
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->searchEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickerEmptyView;->title:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    sget v1, Lorg/telegram/messenger/R$string;->NoResult:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->searchEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v1, Lorg/telegram/messenger/R$string;->SearchEmptyViewFilteredSubtitle2:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->searchEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/StickerEmptyView;->setAnimateLayoutChange(Z)V

    .line 206
    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->searchEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/StickerEmptyView;->setVisibility(I)V

    .line 208
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->searchEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    return-object v0
.end method

.method protected hasAllImporters()Z
    .locals 1

    .line 463
    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->allImporters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public loadMembers()V
    .locals 4

    .line 326
    iget-boolean v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->isFirstLoading:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->controller:Lorg/telegram/messenger/MemberRequestsController;

    iget-wide v2, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->chatId:J

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/MemberRequestsController;->getCachedImporters(J)Lorg/telegram/tgnet/TLRPC$TL_messages_chatInviteImporters;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 330
    iput-boolean v1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->isDataLoaded:Z

    const/4 v2, 0x0

    .line 331
    invoke-direct {p0, v0, v2, v1, v1}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->onImportersLoaded(Lorg/telegram/tgnet/TLRPC$TL_messages_chatInviteImporters;Ljava/lang/String;ZZ)V

    const/4 v1, 0x0

    .line 335
    :cond_0
    new-instance v0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;Z)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAddClicked(Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;)V
    .locals 1

    const/4 v0, 0x1

    .line 411
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->hideChatJoinRequest(Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;Z)V

    return-void
.end method

.method public onBackPressed(Z)Z
    .locals 1

    .line 270
    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->previewDialog:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 271
    invoke-virtual {v0}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->dismiss()V

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public onDismissClicked(Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;)V
    .locals 1

    const/4 v0, 0x0

    .line 416
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->hideChatJoinRequest(Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;Z)V

    return-void
.end method

.method protected onImportersChanged(Ljava/lang/String;ZZ)V
    .locals 3

    .line 430
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p3, 0x1

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 431
    iget-object p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->allImporters:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p1, p3

    .line 432
    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    if-eqz p2, :cond_3

    if-eqz p1, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    move v2, v1

    .line 433
    :goto_2
    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/StickerEmptyView;->setVisibility(I)V

    .line 435
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->searchEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    if-eqz p2, :cond_9

    .line 436
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/StickerEmptyView;->setVisibility(I)V

    goto :goto_6

    .line 439
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->currentImporters:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    if-eqz p2, :cond_5

    goto :goto_3

    :cond_5
    move p1, v1

    goto :goto_4

    :cond_6
    :goto_3
    move p1, p3

    .line 440
    :goto_4
    iget-object p2, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    if-eqz p2, :cond_7

    .line 441
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/StickerEmptyView;->setVisibility(I)V

    .line 443
    :cond_7
    iget-object p2, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->searchEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    if-eqz p2, :cond_9

    if-eqz p1, :cond_8

    move v2, v0

    goto :goto_5

    :cond_8
    move v2, v1

    .line 444
    :goto_5
    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/StickerEmptyView;->setVisibility(I)V

    .line 447
    :cond_9
    :goto_6
    iget-object p2, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {p0, p2, p1, p3}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->setViewVisible(Landroid/view/View;ZZ)V

    .line 448
    iget-object p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->allImporters:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 449
    iget-object p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    if-eqz p1, :cond_a

    .line 450
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/StickerEmptyView;->setVisibility(I)V

    .line 452
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->searchEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    if-eqz p1, :cond_b

    .line 453
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/StickerEmptyView;->setVisibility(I)V

    .line 455
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-direct {p0, p1, v1, v1}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->setViewVisible(Landroid/view/View;ZZ)V

    .line 456
    iget-boolean p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->isSearchExpanded:Z

    if-eqz p1, :cond_c

    iget-boolean p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->showSearchMenu:Z

    if-eqz p1, :cond_c

    .line 457
    iget-object p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->closeSearchField(Z)V

    :cond_c
    return-void
.end method

.method public onItemClick(Landroid/view/View;I)V
    .locals 2

    .line 236
    instance-of p2, p1, Lorg/telegram/ui/Cells/MemberRequestCell;

    if-eqz p2, :cond_2

    .line 237
    iget-boolean p2, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->isSearchExpanded:Z

    if-eqz p2, :cond_0

    .line 238
    iget-object p2, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 240
    :cond_0
    check-cast p1, Lorg/telegram/ui/Cells/MemberRequestCell;

    .line 241
    new-instance p2, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;Lorg/telegram/ui/Cells/MemberRequestCell;)V

    .line 265
    iget-boolean p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->isSearchExpanded:Z

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x64

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    .line 241
    :goto_0
    invoke-static {p2, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_2
    return-void
.end method

.method public setAdapterItemsEnabled(Z)V
    .locals 2

    .line 420
    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->adapter:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$Adapter;

    invoke-static {v0}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$Adapter;->-$$Nest$mextraFirstHolders(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$Adapter;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 422
    iget-object v1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 423
    iget-object v1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setQuery(Ljava/lang/String;)V
    .locals 5

    .line 283
    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->searchRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 284
    sget-object v0, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->searchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 285
    iput-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->searchRunnable:Ljava/lang/Runnable;

    .line 287
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->searchRequestId:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 288
    iget v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->searchRequestId:I

    invoke-virtual {v0, v2, v1}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 289
    iput v1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->searchRequestId:I

    .line 292
    :cond_1
    iput-object p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->query:Ljava/lang/String;

    .line 293
    iget-boolean v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->isDataLoaded:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->allImporters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 294
    iget-object p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-direct {p0, p1, v1, v1}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->setViewVisible(Landroid/view/View;ZZ)V

    return-void

    .line 298
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    .line 299
    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->adapter:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$Adapter;

    iget-object v4, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->allImporters:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$Adapter;->setItems(Ljava/util/List;)V

    .line 300
    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {p0, v0, v3, v3}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->setViewVisible(Landroid/view/View;ZZ)V

    .line 301
    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-direct {p0, v0, v1, v1}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->setViewVisible(Landroid/view/View;ZZ)V

    .line 302
    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->searchEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    if-eqz v0, :cond_3

    .line 303
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/StickerEmptyView;->setVisibility(I)V

    :cond_3
    if-nez p1, :cond_6

    .line 305
    iget-boolean v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->showSearchMenu:Z

    if-eqz v0, :cond_6

    .line 306
    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getItem(I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->allImporters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v1, 0x8

    :cond_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 309
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->adapter:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$Adapter;

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$Adapter;->setItems(Ljava/util/List;)V

    .line 310
    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {p0, v0, v1, v1}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->setViewVisible(Landroid/view/View;ZZ)V

    .line 311
    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-direct {p0, v0, v3, v3}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->setViewVisible(Landroid/view/View;ZZ)V

    .line 312
    sget-object v0, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;)V

    iput-object v1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->searchRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v1, v3, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z

    :cond_6
    :goto_0
    if-eqz p1, :cond_8

    .line 315
    iget-object p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    if-eqz p1, :cond_7

    .line 316
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/StickerEmptyView;->setVisibility(I)V

    .line 318
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->searchEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    if-eqz p1, :cond_8

    .line 319
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/StickerEmptyView;->setVisibility(I)V

    :cond_8
    return-void
.end method

.method public setRecyclerView(Lorg/telegram/ui/Components/RecyclerListView;)V
    .locals 2

    .line 212
    iput-object p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 213
    new-instance v0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 214
    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->getOnScrollListener()Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->listScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void

    .line 218
    :cond_0
    new-instance v1, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$1;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$1;-><init>(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public setSearchExpanded(Z)V
    .locals 0

    .line 279
    iput-boolean p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->isSearchExpanded:Z

    return-void
.end method

.method public setShowLastItemDivider(Z)V
    .locals 0

    .line 165
    iput-boolean p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->isShowLastItemDivider:Z

    return-void
.end method
