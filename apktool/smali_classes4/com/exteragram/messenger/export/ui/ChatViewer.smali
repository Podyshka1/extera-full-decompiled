.class public Lcom/exteragram/messenger/export/ui/ChatViewer;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/exteragram/messenger/export/ui/ChatViewer$QuadroResult;,
        Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;
    }
.end annotation


# instance fields
.field private aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

.field private avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

.field private chatAdapter:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

.field private final chatInfo:Lcom/exteragram/messenger/export/ui/ExportMapper$ChatInfo;

.field private chatLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private chatListItemAnimator:Landroidx/recyclerview/widget/ChatListItemAnimator;

.field private chatListView:Lorg/telegram/ui/Components/RecyclerListView;

.field private final chatMessageCellsCache:Ljava/util/ArrayList;

.field private checkTextureViewPosition:Z

.field private contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

.field protected currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private currentFloatingDateOnScreen:Z

.field private currentFloatingTopIsNotMessage:Z

.field private emptyView:Landroid/widget/TextView;

.field private emptyViewContainer:Landroid/widget/FrameLayout;

.field private endReached:Z

.field private floatingDateAnimation:Landroid/animation/AnimatorSet;

.field private floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

.field private lastLoadedMsgFileId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private loading:Z

.field protected messages:Ljava/util/ArrayList;

.field private final messagesByDays:Ljava/util/HashMap;

.field private final messagesDict:Landroidx/collection/LongSparseArray;

.field private minEventId:J

.field private final notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

.field private final path:Ljava/lang/String;

.field private paused:Z

.field private progressBar:Lorg/telegram/ui/Components/RadialProgressView;

.field private progressView:Landroid/widget/FrameLayout;

.field private progressView2:Landroid/view/View;

.field private final provider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

.field private roundVideoContainer:Landroid/widget/FrameLayout;

.field private scrimPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

.field private scrollToOffsetOnRecreate:I

.field private scrollToPositionOnRecreate:I

.field private scrollingFloatingDate:Z

.field private final searchQuery:Ljava/lang/String;

.field private searchWas:Z

.field private selectedObject:Lorg/telegram/messenger/MessageObject;

.field public sharedResources:Lorg/telegram/messenger/ChatMessageSharedResources;

.field private final theme:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

.field private undoView:Lorg/telegram/ui/Components/UndoView;

.field private videoTextureView:Landroid/view/TextureView;

.field private wasPaused:Z


# direct methods
.method public static synthetic $r8$lambda$6DSknWxE-QzdmDrzFTcnJnuhpAU(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 367
    const-string p0, "messages"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "json"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$FCwMhBQ-q047uSYAuBP2Yay1Zkw(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 879
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$H-mS-pKxSvUeiyKiSbM91ehH2_o(Lcom/exteragram/messenger/export/ui/ChatViewer;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/export/ui/ChatViewer;->lambda$loadMessages$4(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_Z5HNc14lr8La2q6wD020Cnw1iM(Lcom/exteragram/messenger/export/ui/ChatViewer;Landroid/view/View;IFF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/exteragram/messenger/export/ui/ChatViewer;->lambda$createView$6(Landroid/view/View;IFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$b9vIx0jc9UW1Qgno9AhgqCKp_LY(Lcom/exteragram/messenger/export/ui/ChatViewer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/exteragram/messenger/export/ui/ChatViewer;->lambda$fillMessagesCount$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$hR2b0EEyYUiGfEek1sq7x1qlsz0(Lcom/exteragram/messenger/export/ui/ChatViewer;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/view/View;FF)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/exteragram/messenger/export/ui/ChatViewer;->lambda$createMenu$9(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/view/View;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$hTBgLcVY3fnv_A1Qur7zXN0vDh4(Ljava/util/ArrayList;Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;)V
    .locals 2

    .line 415
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 416
    invoke-virtual {p1, p0, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 418
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    .line 419
    invoke-virtual {p1, p2, v1}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    :cond_1
    return-void
.end method

.method public static synthetic $r8$lambda$lL-MPjEk59hwCnw8ThrH5DzJN3Q(Lcom/exteragram/messenger/export/ui/ChatViewer;ILjava/util/ArrayList;Ljava/lang/Integer;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/exteragram/messenger/export/ui/ChatViewer;->lambda$createMenu$7(ILjava/util/ArrayList;Ljava/lang/Integer;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$q4N0PZx_KkSZbXNBnuHoqX9QKnA(Lcom/exteragram/messenger/export/ui/ChatViewer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/exteragram/messenger/export/ui/ChatViewer;->lambda$fillMessagesCount$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$v1321gbQZo6kZCfTFZAZBBHkImA(Lcom/exteragram/messenger/export/ui/ChatViewer;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;ILandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/exteragram/messenger/export/ui/ChatViewer;->lambda$createMenu$8(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v_CCXdyo11M0L8olRfs--sFBSCk(Lcom/exteragram/messenger/export/ui/ChatViewer;Lorg/telegram/ui/ChatActivity;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/exteragram/messenger/export/ui/ChatViewer;->lambda$processSelectedOption$10(Lorg/telegram/ui/ChatActivity;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$wR5kJIbOpBNoSMXdQIg3WEHnMbc(Lcom/exteragram/messenger/export/ui/ChatViewer;Ljava/lang/String;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/exteragram/messenger/export/ui/ChatViewer;->lambda$showOpenUrlAlert$11(Ljava/lang/String;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetaspectRatioFrameLayout(Lcom/exteragram/messenger/export/ui/ChatViewer;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetchatLayoutManager(Lcom/exteragram/messenger/export/ui/ChatViewer;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetchatListView(Lcom/exteragram/messenger/export/ui/ChatViewer;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetchatMessageCellsCache(Lcom/exteragram/messenger/export/ui/ChatViewer;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatMessageCellsCache:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcontentView(Lcom/exteragram/messenger/export/ui/ChatViewer;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentFloatingTopIsNotMessage(Lcom/exteragram/messenger/export/ui/ChatViewer;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->currentFloatingTopIsNotMessage:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetemptyViewContainer(Lcom/exteragram/messenger/export/ui/ChatViewer;)Landroid/widget/FrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->emptyViewContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetendReached(Lcom/exteragram/messenger/export/ui/ChatViewer;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->endReached:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetfloatingDateAnimation(Lcom/exteragram/messenger/export/ui/ChatViewer;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->floatingDateAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfloatingDateView(Lcom/exteragram/messenger/export/ui/ChatViewer;)Lorg/telegram/ui/Cells/ChatActionCell;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetprogressView(Lcom/exteragram/messenger/export/ui/ChatViewer;)Landroid/widget/FrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->progressView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetprovider(Lcom/exteragram/messenger/export/ui/ChatViewer;)Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->provider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetroundVideoContainer(Lcom/exteragram/messenger/export/ui/ChatViewer;)Landroid/widget/FrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->roundVideoContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetscrimPopupWindow(Lcom/exteragram/messenger/export/ui/ChatViewer;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->scrimPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetscrollToPositionOnRecreate(Lcom/exteragram/messenger/export/ui/ChatViewer;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->scrollToPositionOnRecreate:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetscrollingFloatingDate(Lcom/exteragram/messenger/export/ui/ChatViewer;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->scrollingFloatingDate:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettheme(Lcom/exteragram/messenger/export/ui/ChatViewer;)Lorg/telegram/ui/ChatActivity$ThemeDelegate;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->theme:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetundoView(Lcom/exteragram/messenger/export/ui/ChatViewer;)Lorg/telegram/ui/Components/UndoView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->undoView:Lorg/telegram/ui/Components/UndoView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputcheckTextureViewPosition(Lcom/exteragram/messenger/export/ui/ChatViewer;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->checkTextureViewPosition:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputfloatingDateAnimation(Lcom/exteragram/messenger/export/ui/ChatViewer;Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->floatingDateAnimation:Landroid/animation/AnimatorSet;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputscrimPopupWindow(Lcom/exteragram/messenger/export/ui/ChatViewer;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->scrimPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputscrollToOffsetOnRecreate(Lcom/exteragram/messenger/export/ui/ChatViewer;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->scrollToOffsetOnRecreate:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputscrollToPositionOnRecreate(Lcom/exteragram/messenger/export/ui/ChatViewer;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->scrollToPositionOnRecreate:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputscrollingFloatingDate(Lcom/exteragram/messenger/export/ui/ChatViewer;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->scrollingFloatingDate:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$malertUserOpenError(Lcom/exteragram/messenger/export/ui/ChatViewer;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/export/ui/ChatViewer;->alertUserOpenError(Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckScrollForLoad(Lcom/exteragram/messenger/export/ui/ChatViewer;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/export/ui/ChatViewer;->checkScrollForLoad(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcloseMenu(Lcom/exteragram/messenger/export/ui/ChatViewer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/exteragram/messenger/export/ui/ChatViewer;->closeMenu()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateMenu(Lcom/exteragram/messenger/export/ui/ChatViewer;Landroid/view/View;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/export/ui/ChatViewer;->createMenu(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mcreateTextureView(Lcom/exteragram/messenger/export/ui/ChatViewer;Z)Landroid/view/TextureView;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/export/ui/ChatViewer;->createTextureView(Z)Landroid/view/TextureView;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetDialogId(Lcom/exteragram/messenger/export/ui/ChatViewer;)J
    .locals 2

    .line 0
    invoke-direct {p0}, Lcom/exteragram/messenger/export/ui/ChatViewer;->getDialogId()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$mhideFloatingDateView(Lcom/exteragram/messenger/export/ui/ChatViewer;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/export/ui/ChatViewer;->hideFloatingDateView(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateMessageAnimatedInternal(Lcom/exteragram/messenger/export/ui/ChatViewer;Lorg/telegram/messenger/MessageObject;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/exteragram/messenger/export/ui/ChatViewer;->updateMessageAnimatedInternal(Lorg/telegram/messenger/MessageObject;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateMessagesVisiblePart(Lcom/exteragram/messenger/export/ui/ChatViewer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/exteragram/messenger/export/ui/ChatViewer;->updateMessagesVisiblePart()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    .line 277
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatMessageCellsCache:Ljava/util/ArrayList;

    .line 169
    new-instance v0, Lorg/telegram/messenger/AnimationNotificationsLocker;

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    sget v2, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    sget v3, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    sget v4, Lorg/telegram/messenger/NotificationCenter;->messagesDidLoad:I

    sget v5, Lorg/telegram/messenger/NotificationCenter;->botKeyboardDidLoad:I

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/AnimationNotificationsLocker;-><init>([I)V

    iput-object v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    .line 177
    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->messagesDict:Landroidx/collection/LongSparseArray;

    .line 178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->messagesByDays:Ljava/util/HashMap;

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->messages:Ljava/util/ArrayList;

    .line 188
    new-instance v0, Lcom/exteragram/messenger/export/ui/ChatViewer$1;

    invoke-direct {v0, p0}, Lcom/exteragram/messenger/export/ui/ChatViewer$1;-><init>(Lcom/exteragram/messenger/export/ui/ChatViewer;)V

    iput-object v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->provider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    const/4 v0, -0x1

    .line 258
    iput v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->scrollToPositionOnRecreate:I

    const/4 v0, 0x0

    .line 259
    iput v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->scrollToOffsetOnRecreate:I

    const/4 v1, 0x1

    .line 260
    iput-boolean v1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->paused:Z

    .line 261
    iput-boolean v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->wasPaused:Z

    .line 263
    const-string v0, ""

    iput-object v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->searchQuery:Ljava/lang/String;

    .line 278
    iput-object p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->path:Ljava/lang/String;

    const/4 v0, 0x0

    .line 279
    iput-object v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->theme:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    .line 280
    iput-object v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->lastLoadedMsgFileId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 282
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/info.json"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 284
    invoke-static {v0}, Lcom/exteragram/messenger/export/output/FileManager;->readFileContent(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    .line 286
    sget-object v0, Lcom/exteragram/messenger/ExteraConfig;->GSON:Lcom/google/gson/Gson;

    const-class v1, Lcom/exteragram/messenger/export/ui/ExportMapper$ChatInfo;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/exteragram/messenger/export/ui/ExportMapper$ChatInfo;

    iput-object p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatInfo:Lcom/exteragram/messenger/export/ui/ExportMapper$ChatInfo;

    return-void
.end method

.method static synthetic access$000(Lcom/exteragram/messenger/export/ui/ChatViewer;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 152
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$100(Lcom/exteragram/messenger/export/ui/ChatViewer;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 152
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/exteragram/messenger/export/ui/ChatViewer;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 152
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/exteragram/messenger/export/ui/ChatViewer;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 152
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/exteragram/messenger/export/ui/ChatViewer;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 152
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/exteragram/messenger/export/ui/ChatViewer;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 152
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/exteragram/messenger/export/ui/ChatViewer;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 152
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/exteragram/messenger/export/ui/ChatViewer;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 152
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/exteragram/messenger/export/ui/ChatViewer;)I
    .locals 0

    .line 152
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$1700(Lcom/exteragram/messenger/export/ui/ChatViewer;)I
    .locals 0

    .line 152
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$1800(Lcom/exteragram/messenger/export/ui/ChatViewer;)I
    .locals 0

    .line 152
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$1900(Lcom/exteragram/messenger/export/ui/ChatViewer;)I
    .locals 0

    .line 152
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$200(Lcom/exteragram/messenger/export/ui/ChatViewer;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 152
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/exteragram/messenger/export/ui/ChatViewer;)I
    .locals 0

    .line 152
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    return p0
.end method

.method static synthetic access$2100(Lcom/exteragram/messenger/export/ui/ChatViewer;)I
    .locals 0

    .line 152
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$2200(Lcom/exteragram/messenger/export/ui/ChatViewer;)I
    .locals 0

    .line 152
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$2300(Lcom/exteragram/messenger/export/ui/ChatViewer;)I
    .locals 0

    .line 152
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$2400(Lcom/exteragram/messenger/export/ui/ChatViewer;)I
    .locals 0

    .line 152
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$2500(Lcom/exteragram/messenger/export/ui/ChatViewer;)I
    .locals 0

    .line 152
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$2600(Lcom/exteragram/messenger/export/ui/ChatViewer;)I
    .locals 0

    .line 152
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$2700(Lcom/exteragram/messenger/export/ui/ChatViewer;)I
    .locals 0

    .line 152
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$2800(Lcom/exteragram/messenger/export/ui/ChatViewer;)I
    .locals 0

    .line 152
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$2900(Lcom/exteragram/messenger/export/ui/ChatViewer;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 152
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$300(Lcom/exteragram/messenger/export/ui/ChatViewer;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 152
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/exteragram/messenger/export/ui/ChatViewer;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 152
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/exteragram/messenger/export/ui/ChatViewer;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 152
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$400(Lcom/exteragram/messenger/export/ui/ChatViewer;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 152
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$500(Lcom/exteragram/messenger/export/ui/ChatViewer;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 152
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$600(Lcom/exteragram/messenger/export/ui/ChatViewer;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 152
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$700(Lcom/exteragram/messenger/export/ui/ChatViewer;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 152
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$800(Lcom/exteragram/messenger/export/ui/ChatViewer;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 152
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$900(Lcom/exteragram/messenger/export/ui/ChatViewer;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 152
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method private alertUserOpenError(Lorg/telegram/messenger/MessageObject;)V
    .locals 4

    .line 2043
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2046
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2047
    sget v1, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2048
    sget v1, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2049
    iget v1, p1, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 2050
    sget p1, Lorg/telegram/messenger/R$string;->NoPlayerInstalled:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_0

    .line 2052
    :cond_1
    sget v1, Lorg/telegram/messenger/R$string;->NoHandleAppInstalled:I

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2054
    :goto_0
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private checkScrollForLoad(Z)V
    .locals 3

    .line 1792
    iget-object v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->paused:Z

    if-eqz v1, :cond_0

    goto :goto_2

    .line 1795
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    move v1, v2

    goto :goto_0

    .line 1796
    :cond_1
    iget-object v1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    :goto_0
    if-lez v1, :cond_3

    if-eqz p1, :cond_2

    const/16 p1, 0x19

    goto :goto_1

    :cond_2
    const/4 p1, 0x5

    :goto_1
    if-gt v0, p1, :cond_3

    .line 1804
    iget-boolean p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->loading:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->endReached:Z

    if-nez p1, :cond_3

    .line 1805
    invoke-direct {p0, v2}, Lcom/exteragram/messenger/export/ui/ChatViewer;->loadMessages(Z)V

    :cond_3
    :goto_2
    return-void
.end method

.method private closeMenu()V
    .locals 1

    .line 1157
    iget-object v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->scrimPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_0

    .line 1158
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method private createMenu(Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1163
    invoke-direct {p0, p1, v0, v0}, Lcom/exteragram/messenger/export/ui/ChatViewer;->createMenu(Landroid/view/View;FF)Z

    move-result p1

    return p1
.end method

.method private createMenu(Landroid/view/View;FF)Z
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    const/16 v0, 0xb

    .line 1198
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x5

    .line 1235
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x4

    .line 1204
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x6

    .line 1207
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v9, 0xa

    .line 1211
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 1168
    instance-of v11, v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v11, :cond_0

    .line 1169
    move-object v11, v5

    check-cast v11, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v11}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v11

    goto :goto_0

    .line 1170
    :cond_0
    instance-of v11, v5, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v11, :cond_1

    .line 1171
    move-object v11, v5

    check-cast v11, Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v11}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v11

    goto :goto_0

    :cond_1
    const/4 v11, 0x0

    :goto_0
    const/4 v13, 0x0

    if-nez v11, :cond_2

    return v13

    .line 1176
    :cond_2
    iget v14, v11, Lorg/telegram/messenger/MessageObject;->type:I

    if-ne v14, v9, :cond_3

    return v13

    .line 1179
    :cond_3
    invoke-direct {v1, v11}, Lcom/exteragram/messenger/export/ui/ChatViewer;->getMessageType(Lorg/telegram/messenger/MessageObject;)I

    move-result v14

    .line 1180
    iput-object v11, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->selectedObject:Lorg/telegram/messenger/MessageObject;

    .line 1181
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v11

    if-nez v11, :cond_4

    return v13

    .line 1185
    :cond_4
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1186
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1187
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1189
    iget-object v12, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->selectedObject:Lorg/telegram/messenger/MessageObject;

    iget v7, v12, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v9, 0x3

    if-eqz v7, :cond_5

    iget-object v7, v12, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    if-eqz v7, :cond_6

    .line 1190
    :cond_5
    sget v7, Lorg/telegram/messenger/R$string;->Copy:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1191
    sget v7, Lorg/telegram/messenger/R$drawable;->msg_copy:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1192
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    if-ne v14, v9, :cond_7

    .line 1195
    iget-object v2, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->selectedObject:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v3, :cond_14

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->isNewGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1196
    sget v2, Lorg/telegram/messenger/R$string;->SaveToGIFs:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1197
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_gif:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1198
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_7
    if-ne v14, v4, :cond_c

    .line 1201
    iget-object v2, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->selectedObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1202
    sget v0, Lorg/telegram/messenger/R$string;->SaveToGallery:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1203
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_gallery:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1204
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1205
    sget v0, Lorg/telegram/messenger/R$string;->ShareFile:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1206
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_share:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1207
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1208
    :cond_8
    iget-object v2, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->selectedObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1209
    sget v0, Lorg/telegram/messenger/R$string;->SaveToMusic:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1210
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_download:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1211
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1212
    sget v0, Lorg/telegram/messenger/R$string;->ShareFile:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1213
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_share:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1214
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1215
    :cond_9
    iget-object v2, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->selectedObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 1216
    iget-object v2, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->selectedObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->isNewGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1217
    sget v2, Lorg/telegram/messenger/R$string;->SaveToGIFs:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1218
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_gif:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1219
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1221
    :cond_a
    sget v0, Lorg/telegram/messenger/R$string;->SaveToDownloads:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1222
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_download:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1223
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1224
    sget v0, Lorg/telegram/messenger/R$string;->ShareFile:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1225
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_share:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1226
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1228
    :cond_b
    sget v0, Lorg/telegram/messenger/R$string;->SaveToGallery:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1229
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_gallery:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1230
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_c
    if-ne v14, v2, :cond_d

    .line 1233
    sget v0, Lorg/telegram/messenger/R$string;->ApplyLocalizationFile:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1234
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_language:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1235
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1236
    sget v0, Lorg/telegram/messenger/R$string;->SaveToDownloads:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1237
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_download:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1238
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1239
    sget v0, Lorg/telegram/messenger/R$string;->ShareFile:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1240
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_share:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1241
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_d
    const/16 v0, 0xa

    if-ne v14, v0, :cond_e

    .line 1243
    sget v0, Lorg/telegram/messenger/R$string;->ApplyThemeFile:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1244
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_theme:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1245
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1246
    sget v0, Lorg/telegram/messenger/R$string;->SaveToDownloads:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1247
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_download:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1248
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1249
    sget v0, Lorg/telegram/messenger/R$string;->ShareFile:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1250
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_share:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1251
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_e
    const/4 v0, 0x7

    const/4 v2, 0x6

    if-ne v14, v2, :cond_f

    .line 1253
    sget v2, Lorg/telegram/messenger/R$string;->SaveToGallery:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1254
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_gallery:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1255
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1256
    sget v0, Lorg/telegram/messenger/R$string;->SaveToDownloads:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1257
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_download:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1258
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1259
    sget v0, Lorg/telegram/messenger/R$string;->ShareFile:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1260
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_share:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1261
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_f
    if-ne v14, v0, :cond_11

    .line 1263
    iget-object v0, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->selectedObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isMask()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1264
    sget v0, Lorg/telegram/messenger/R$string;->AddToMasks:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1266
    :cond_10
    sget v0, Lorg/telegram/messenger/R$string;->AddToStickers:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1268
    :goto_1
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_sticker:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x9

    .line 1269
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_11
    const/16 v0, 0x8

    if-ne v14, v0, :cond_14

    .line 1271
    iget-object v0, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->selectedObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:J

    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-eqz v0, :cond_12

    .line 1274
    iget v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v12

    goto :goto_2

    :cond_12
    const/4 v12, 0x0

    :goto_2
    if-eqz v12, :cond_13

    .line 1276
    iget-wide v2, v12, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v6

    cmp-long v0, v2, v6

    if-eqz v0, :cond_13

    iget v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController;->contactsDict:Lj$/util/concurrent/ConcurrentHashMap;

    iget-wide v2, v12, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_13

    .line 1277
    sget v0, Lorg/telegram/messenger/R$string;->AddContactTitle:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1278
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_addcontact:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v0, 0xf

    .line 1279
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1281
    :cond_13
    iget-object v0, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->selectedObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->phone_number:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 1282
    sget v0, Lorg/telegram/messenger/R$string;->Copy:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1283
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_copy:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x10

    .line 1284
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1285
    sget v0, Lorg/telegram/messenger/R$string;->Call:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1286
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_calls:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x11

    .line 1287
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1298
    :cond_14
    :goto_3
    sget v0, Lorg/telegram/messenger/R$string;->Details:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v0, 0xcc

    .line 1299
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1300
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_info:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1302
    new-instance v0, Lcom/exteragram/messenger/export/ui/ChatViewer$$ExternalSyntheticLambda6;

    move/from16 v6, p2

    move/from16 v7, p3

    move-object v3, v11

    move-object v2, v13

    move-object v4, v15

    invoke-direct/range {v0 .. v7}, Lcom/exteragram/messenger/export/ui/ChatViewer$$ExternalSyntheticLambda6;-><init>(Lcom/exteragram/messenger/export/ui/ChatViewer;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/view/View;FF)V

    .line 1432
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x1

    return v0
.end method

.method private createTextureView(Z)Landroid/view/TextureView;
    .locals 7

    .line 1438
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1441
    :cond_0
    iget-object v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->roundVideoContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 1442
    new-instance v0, Lcom/exteragram/messenger/export/ui/ChatViewer$12;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, p0, v4}, Lcom/exteragram/messenger/export/ui/ChatViewer$12;-><init>(Lcom/exteragram/messenger/export/ui/ChatViewer;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->roundVideoContainer:Landroid/widget/FrameLayout;

    .line 1449
    new-instance v4, Lcom/exteragram/messenger/export/ui/ChatViewer$13;

    invoke-direct {v4, p0}, Lcom/exteragram/messenger/export/ui/ChatViewer$13;-><init>(Lcom/exteragram/messenger/export/ui/ChatViewer;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 1455
    iget-object v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->roundVideoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClipToOutline(Z)V

    .line 1456
    iget-object v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->roundVideoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 1457
    iget-object v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->roundVideoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1459
    new-instance v0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    .line 1460
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v4, -0x1

    if-eqz p1, :cond_1

    .line 1462
    iget-object p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->roundVideoContainer:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-static {v4, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1465
    :cond_1
    new-instance p1, Landroid/view/TextureView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {p1, v5}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->videoTextureView:Landroid/view/TextureView;

    .line 1466
    invoke-virtual {p1, v3}, Landroid/view/TextureView;->setOpaque(Z)V

    .line 1467
    iget-object p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object v5, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->videoTextureView:Landroid/view/TextureView;

    invoke-static {v4, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1469
    :cond_2
    iget-object p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->roundVideoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_3

    .line 1470
    iget-object p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->roundVideoContainer:Landroid/widget/FrameLayout;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->roundMessageSize:I

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1472
    :cond_3
    iget-object p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->roundVideoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1473
    iget-object p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setDrawingReady(Z)V

    .line 1474
    iget-object p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->videoTextureView:Landroid/view/TextureView;

    return-object p1
.end method

.method private fillMessagesCount()V
    .locals 2

    .line 313
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lcom/exteragram/messenger/export/ui/ChatViewer$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/exteragram/messenger/export/ui/ChatViewer$$ExternalSyntheticLambda5;-><init>(Lcom/exteragram/messenger/export/ui/ChatViewer;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private getDateKey(Lorg/telegram/messenger/MessageObject;)Ljava/lang/String;
    .locals 6

    .line 436
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 437
    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v1, p1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p1, 0x6

    .line 438
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const/4 v1, 0x1

    .line 439
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    .line 440
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 441
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    aput-object v0, v4, v1

    aput-object p1, v4, v3

    const-string p1, "%d_%02d_%02d"

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static getDialogFromAccountNumber(IJ)Lorg/telegram/tgnet/TLObject;
    .locals 1

    .line 2885
    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(J)Lorg/telegram/tgnet/TLObject;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2890
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/MessagesStorage;->getUserSync(J)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 2895
    :cond_1
    invoke-static {p0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/MessagesStorage;->getChatSync(J)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    .line 2900
    :cond_2
    invoke-static {p0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p0

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/MessagesStorage;->getChatSync(J)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p0

    return-object p0
.end method

.method private getDialogId()J
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatInfo:Lcom/exteragram/messenger/export/ui/ExportMapper$ChatInfo;

    iget-wide v0, v0, Lcom/exteragram/messenger/export/ui/ExportMapper$ChatInfo;->id:J

    return-wide v0
.end method

.method public static getDialogInAnyWay(JLjava/lang/Integer;Z)Lorg/telegram/tgnet/TLObject;
    .locals 2

    .line 2853
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, p0, p1}, Lcom/exteragram/messenger/export/ui/ChatViewer;->getDialogFromAccountNumber(IJ)Lorg/telegram/tgnet/TLObject;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_4

    .line 2859
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 2863
    :cond_1
    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->isValidAccount(I)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 2867
    :cond_2
    invoke-static {v0, p0, p1}, Lcom/exteragram/messenger/export/ui/ChatViewer;->getDialogFromAccountNumber(IJ)Lorg/telegram/tgnet/TLObject;

    move-result-object v1

    if-eqz v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    if-eqz p3, :cond_5

    .line 2874
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_chat;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_chat;-><init>()V

    .line 2875
    iput-wide p0, p2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    .line 2876
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown (ID: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    return-object p2

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getEntities(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/exteragram/messenger/export/ui/ChatViewer$QuadroResult;
    .locals 3

    .line 2795
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2796
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2801
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2802
    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/MessagesStorage;->getUsersInternal(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2808
    :catch_0
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 2809
    const-string p1, ","

    invoke-static {p1, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lorg/telegram/messenger/MessagesStorage;->getChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2814
    :catch_1
    :cond_1
    new-instance p0, Lcom/exteragram/messenger/export/ui/ChatViewer$QuadroResult;

    invoke-direct {p0, v0, v1}, Lcom/exteragram/messenger/export/ui/ChatViewer$QuadroResult;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-object p0
.end method

.method private getMessageType(Lorg/telegram/messenger/MessageObject;)I
    .locals 7

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 1700
    :cond_0
    iget v1, p1, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    return v0

    :cond_1
    const/16 v3, 0xa

    const/4 v4, 0x1

    if-eq v1, v3, :cond_12

    const/16 v5, 0xb

    if-eq v1, v5, :cond_12

    const/16 v5, 0x10

    if-ne v1, v5, :cond_2

    goto/16 :goto_4

    .line 1708
    :cond_2
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_3

    return v1

    .line 1710
    :cond_3
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isSticker()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isAnimatedSticker()Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_3

    .line 1721
    :cond_4
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    .line 1750
    :cond_6
    iget v0, p1, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v2, 0xc

    if-ne v0, v2, :cond_7

    const/16 p1, 0x8

    return p1

    .line 1752
    :cond_7
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isMediaEmpty()Z

    move-result p1

    if-eqz p1, :cond_11

    const/4 p1, 0x3

    return p1

    .line 1723
    :cond_8
    :goto_0
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_9

    .line 1724
    new-instance v0, Ljava/io/File;

    iget-object v5, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1725
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v4

    goto :goto_1

    :cond_9
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_a

    .line 1730
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v5

    iget-object v6, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v5

    .line 1731
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_a

    goto :goto_2

    :cond_a
    move v4, v0

    :goto_2
    if-eqz v4, :cond_11

    .line 1736
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 1737
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 1739
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocumentName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v1, "attheme"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    return v3

    .line 1741
    :cond_b
    const-string p1, "/xml"

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x5

    return p1

    .line 1743
    :cond_c
    const-string p1, "/png"

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_d

    const-string p1, "/jpg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_d

    const-string p1, "/jpeg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    :cond_d
    return v2

    :cond_e
    const/4 p1, 0x4

    return p1

    .line 1711
    :cond_f
    :goto_3
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getInputStickerSet()Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object p1

    .line 1712
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;

    const/4 v2, 0x7

    if-eqz v0, :cond_10

    .line 1713
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/MediaDataController;->isStickerPackInstalled(J)Z

    move-result p1

    if-nez p1, :cond_11

    return v2

    .line 1716
    :cond_10
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;

    if-eqz v0, :cond_11

    .line 1717
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->short_name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MediaDataController;->isStickerPackInstalled(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_11

    return v2

    :cond_11
    return v1

    .line 1703
    :cond_12
    :goto_4
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    if-nez p1, :cond_13

    return v0

    :cond_13
    return v4
.end method

.method private hideFloatingDateView(Z)V
    .locals 5

    .line 1765
    iget-object v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->currentFloatingDateOnScreen:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->scrollingFloatingDate:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->currentFloatingTopIsNotMessage:Z

    if-eqz v0, :cond_3

    .line 1766
    :cond_0
    iget-object v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1768
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->floatingDateAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x96

    .line 1769
    invoke-virtual {p1, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1770
    iget-object p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->floatingDateAnimation:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    const-string v0, "alpha"

    invoke-static {v1, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-array v1, v2, [Landroid/animation/Animator;

    aput-object v0, v1, v4

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1771
    iget-object p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->floatingDateAnimation:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/exteragram/messenger/export/ui/ChatViewer$14;

    invoke-direct {v0, p0}, Lcom/exteragram/messenger/export/ui/ChatViewer$14;-><init>(Lcom/exteragram/messenger/export/ui/ChatViewer;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1779
    iget-object p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->floatingDateAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 1780
    iget-object p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->floatingDateAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    .line 1782
    :cond_1
    iget-object p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->floatingDateAnimation:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_2

    .line 1783
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1784
    iput-object v1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->floatingDateAnimation:Landroid/animation/AnimatorSet;

    .line 1786
    :cond_2
    iget-object p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    return-void
.end method

.method private synthetic lambda$createMenu$7(ILjava/util/ArrayList;Ljava/lang/Integer;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Landroid/view/View;)V
    .locals 0

    .line 1325
    iget-object p6, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->selectedObject:Lorg/telegram/messenger/MessageObject;

    if-eqz p6, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p6

    if-lt p1, p6, :cond_0

    goto :goto_0

    .line 1328
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1, p2, p4, p5}, Lcom/exteragram/messenger/export/ui/ChatViewer;->processSelectedOption(ILjava/util/ArrayList;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$createMenu$8(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;ILandroid/view/View;)V
    .locals 0

    .line 1342
    iget-object p3, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->selectedObject:Lorg/telegram/messenger/MessageObject;

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p3

    if-nez p3, :cond_0

    goto :goto_0

    .line 1345
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->openForeground(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$createMenu$9(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/view/View;FF)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    .line 1303
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1307
    :cond_0
    new-instance v5, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert:I

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    const/4 v7, 0x1

    invoke-direct {v5, v0, v2, v4, v7}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    const/high16 v8, 0x43480000    # 200.0f

    .line 1308
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/view/View;->setMinimumWidth(I)V

    .line 1309
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 1310
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1311
    invoke-virtual {v0, v9}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1312
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    invoke-virtual {v1, v0}, Lcom/exteragram/messenger/export/ui/ChatViewer;->getThemedColor(I)I

    move-result v0

    invoke-virtual {v5, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setBackgroundColor(I)V

    .line 1314
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x0

    move v2, v11

    :goto_0
    if-ge v2, v10, :cond_5

    .line 1315
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1316
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v6

    invoke-direct {v0, v4, v6}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v4, -0x1

    const/16 v6, 0x8

    invoke-static {v4, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v5, v0, v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move v14, v2

    move-object v6, v5

    goto/16 :goto_3

    .line 1318
    :cond_1
    new-instance v6, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v2, :cond_2

    move v4, v7

    goto :goto_1

    :cond_2
    move v4, v11

    :goto_1
    add-int/lit8 v12, v10, -0x1

    if-ne v2, v12, :cond_3

    move v12, v7

    goto :goto_2

    :cond_3
    move v12, v11

    :goto_2
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v13

    invoke-direct {v6, v0, v4, v12, v13}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1319
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/view/View;->setMinimumWidth(I)V

    move-object/from16 v12, p2

    .line 1320
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    move-object/from16 v13, p3

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v6, v0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 1321
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/Integer;

    .line 1322
    invoke-virtual {v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 1324
    new-instance v0, Lcom/exteragram/messenger/export/ui/ChatViewer$$ExternalSyntheticLambda9;

    invoke-direct/range {v0 .. v6}, Lcom/exteragram/messenger/export/ui/ChatViewer$$ExternalSyntheticLambda9;-><init>(Lcom/exteragram/messenger/export/ui/ChatViewer;ILjava/util/ArrayList;Ljava/lang/Integer;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)V

    move v14, v2

    move-object v15, v6

    move-object v6, v5

    invoke-virtual {v15, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1330
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0xcc

    if-ne v0, v2, :cond_4

    .line 1331
    new-instance v0, Lcom/exteragram/messenger/export/ui/ChatViewer$9;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object v3

    iget-object v4, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->selectedObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v5

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/exteragram/messenger/export/ui/ChatViewer$9;-><init>(Lcom/exteragram/messenger/export/ui/ChatViewer;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/PopupSwipeBackLayout;Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1339
    iget-object v0, v0, Lcom/exteragram/messenger/components/MessageDetailsPopupWrapper;->swipeBack:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addViewToSwipeBack(Landroid/view/View;)I

    move-result v0

    .line 1340
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_arrowright:I

    invoke-virtual {v15, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setRightIcon(I)V

    .line 1341
    new-instance v2, Lcom/exteragram/messenger/export/ui/ChatViewer$$ExternalSyntheticLambda10;

    invoke-direct {v2, v1, v6, v0}, Lcom/exteragram/messenger/export/ui/ChatViewer$$ExternalSyntheticLambda10;-><init>(Lcom/exteragram/messenger/export/ui/ChatViewer;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;I)V

    invoke-virtual {v15, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    :goto_3
    add-int/lit8 v2, v14, 0x1

    move-object/from16 v3, p1

    move-object v5, v6

    goto/16 :goto_0

    :cond_5
    move-object v6, v5

    .line 1351
    new-instance v0, Lcom/exteragram/messenger/export/ui/ChatViewer$10;

    iget-object v2, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/exteragram/messenger/export/ui/ChatViewer$10;-><init>(Lcom/exteragram/messenger/export/ui/ChatViewer;Landroid/content/Context;)V

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/high16 v12, -0x40000000    # -2.0f

    const/high16 v13, -0x40000000    # -2.0f

    const/4 v14, 0x3

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 1369
    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createLinearRelatively(FFIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1370
    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->setPopupWindowLayout(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)V

    .line 1372
    new-instance v2, Lcom/exteragram/messenger/export/ui/ChatViewer$11;

    const/4 v3, -0x2

    invoke-direct {v2, v1, v0, v3, v3}, Lcom/exteragram/messenger/export/ui/ChatViewer$11;-><init>(Lcom/exteragram/messenger/export/ui/ChatViewer;Landroid/view/View;II)V

    iput-object v2, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->scrimPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    .line 1383
    invoke-virtual {v2, v7}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setPauseNotifications(Z)V

    .line 1384
    iget-object v2, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->scrimPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/16 v3, 0xdc

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setDismissAnimationDuration(I)V

    .line 1385
    iget-object v2, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->scrimPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v2, v7}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 1386
    iget-object v2, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->scrimPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v2, v7}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 1387
    iget-object v2, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->scrimPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    sget v3, Lorg/telegram/messenger/R$style;->PopupContextAnimation:I

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 1388
    iget-object v2, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->scrimPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v2, v7}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    const/high16 v2, 0x447a0000    # 1000.0f

    .line 1389
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, -0x80000000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v3, v2}, Landroid/view/View;->measure(II)V

    .line 1390
    iget-object v2, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->scrimPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1391
    iget-object v2, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->scrimPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/16 v4, 0x30

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 1392
    iget-object v2, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->scrimPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 1393
    invoke-virtual {v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setFitItems(Z)V

    .line 1395
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getLeft()I

    move-result v2

    move/from16 v4, p5

    float-to-int v4, v4

    add-int/2addr v2, v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v2, v4

    iget v4, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v4

    const/high16 v4, 0x41e00000    # 28.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v2, v4

    const/high16 v4, 0x40c00000    # 6.0f

    .line 1396
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    if-ge v2, v5, :cond_6

    .line 1397
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    goto :goto_4

    .line 1398
    :cond_6
    iget-object v5, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v5, v6

    if-le v2, v5, :cond_7

    .line 1399
    iget-object v2, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v2, v4

    .line 1401
    :cond_7
    :goto_4
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1402
    new-array v3, v3, [I

    .line 1403
    iget-object v4, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1404
    aget v3, v3, v11

    add-int/2addr v2, v3

    .line 1406
    :cond_8
    iget-object v3, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1407
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    const/high16 v5, 0x42400000    # 48.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v4, v5

    .line 1408
    iget-object v5, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->measureKeyboardHeight()I

    move-result v5

    const/high16 v6, 0x41a00000    # 20.0f

    .line 1409
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    if-le v5, v6, :cond_9

    add-int/2addr v3, v5

    :cond_9
    if-ge v4, v3, :cond_c

    .line 1414
    iget-object v5, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v5

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getTop()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    add-float v5, v5, p6

    float-to-int v5, v5

    .line 1415
    iget v6, v9, Landroid/graphics/Rect;->top:I

    sub-int v6, v4, v6

    iget v7, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    const/high16 v7, 0x43700000    # 240.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    if-le v6, v8, :cond_a

    .line 1416
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v6, v4

    add-int/2addr v5, v6

    :cond_a
    int-to-float v6, v5

    .line 1418
    iget-object v7, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7}, Landroid/view/View;->getY()F

    move-result v7

    const/high16 v8, 0x41c00000    # 24.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v7, v9

    cmpg-float v6, v6, v7

    if-gez v6, :cond_b

    .line 1419
    iget-object v4, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v5, v4

    goto :goto_6

    :cond_b
    sub-int v4, v3, v4

    const/high16 v6, 0x41000000    # 8.0f

    .line 1420
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int v7, v4, v7

    if-le v5, v7, :cond_e

    .line 1421
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int v5, v4, v5

    goto :goto_6

    .line 1424
    :cond_c
    iget-boolean v4, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->inBubbleMode:Z

    if-eqz v4, :cond_d

    goto :goto_5

    :cond_d
    sget v11, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_5
    move v5, v11

    :cond_e
    :goto_6
    sub-int/2addr v3, v5

    .line 1428
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->setMaxHeight(I)V

    .line 1429
    iget-object v0, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->scrimPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    iget-object v3, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v4, 0x33

    invoke-virtual {v0, v3, v4, v2, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1430
    iget-object v0, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->scrimPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dimBehind()V

    return-void
.end method

.method private synthetic lambda$createView$6(Landroid/view/View;IFF)V
    .locals 0

    .line 1010
    invoke-direct {p0, p1, p3, p4}, Lcom/exteragram/messenger/export/ui/ChatViewer;->createMenu(Landroid/view/View;FF)Z

    return-void
.end method

.method private synthetic lambda$fillMessagesCount$0()V
    .locals 3

    .line 318
    iget-object v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    if-eqz v0, :cond_0

    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msgs count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatInfo:Lcom/exteragram/messenger/export/ui/ExportMapper$ChatInfo;

    iget v2, v2, Lcom/exteragram/messenger/export/ui/ExportMapper$ChatInfo;->msgsCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$fillMessagesCount$1()V
    .locals 1

    .line 317
    new-instance v0, Lcom/exteragram/messenger/export/ui/ChatViewer$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/exteragram/messenger/export/ui/ChatViewer$$ExternalSyntheticLambda7;-><init>(Lcom/exteragram/messenger/export/ui/ChatViewer;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadMessages$4(Ljava/util/ArrayList;)V
    .locals 11

    .line 473
    iget-object v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatListItemAnimator:Landroidx/recyclerview/widget/ChatListItemAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/ChatListItemAnimator;->setShouldAnimateEnterFromBottom(Z)V

    .line 475
    iget-object v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 476
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    check-cast v6, Lorg/telegram/messenger/MessageObject;

    .line 477
    iget-object v7, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->messagesDict:Landroidx/collection/LongSparseArray;

    iget-object v8, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v7

    if-ltz v7, :cond_0

    goto :goto_0

    .line 480
    :cond_0
    iget-wide v7, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->minEventId:J

    iget-object v3, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    int-to-long v9, v3

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->minEventId:J

    .line 482
    iget v3, v6, Lorg/telegram/messenger/MessageObject;->contentType:I

    if-gez v3, :cond_1

    goto/16 :goto_1

    .line 485
    :cond_1
    iget-object v3, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->messagesDict:Landroidx/collection/LongSparseArray;

    iget-object v7, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    int-to-long v7, v7

    invoke-virtual {v3, v7, v8, v6}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 487
    invoke-direct {p0, v6}, Lcom/exteragram/messenger/export/ui/ChatViewer;->getDateKey(Lorg/telegram/messenger/MessageObject;)Ljava/lang/String;

    move-result-object v3

    .line 488
    iget-object v7, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->messagesByDays:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    if-nez v7, :cond_2

    .line 490
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 491
    iget-object v8, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->messagesByDays:Ljava/util/HashMap;

    invoke-virtual {v8, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 493
    iget-object v7, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v7, v7

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->formatDateChat(J)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 494
    iput v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 495
    iget-object v7, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iput v7, v3, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 496
    new-instance v7, Lorg/telegram/messenger/MessageObject;

    iget v8, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-direct {v7, v8, v3, v1, v1}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    const/16 v3, 0xa

    .line 497
    iput v3, v7, Lorg/telegram/messenger/MessageObject;->type:I

    .line 498
    iput v5, v7, Lorg/telegram/messenger/MessageObject;->contentType:I

    .line 499
    iput-boolean v5, v7, Lorg/telegram/messenger/MessageObject;->isDateObject:Z

    .line 501
    iget-object v3, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    iget-object v3, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 503
    :cond_2
    iget-object v3, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v5

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    iget-boolean v3, v3, Lorg/telegram/messenger/MessageObject;->isDateObject:Z

    if-eqz v3, :cond_3

    .line 504
    iget-object v3, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v5

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    .line 505
    iget-object v7, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->messages:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v5

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 507
    iget-object v7, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->messages:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    iget-object v6, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->messages:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 510
    :cond_3
    iget-object v3, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    move v3, v5

    goto/16 :goto_0

    .line 513
    :cond_4
    iget-object p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v0

    .line 514
    iput-boolean v1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->loading:Z

    if-nez v3, :cond_5

    .line 516
    iput-boolean v5, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->endReached:Z

    .line 518
    :cond_5
    iget-object v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->progressView:Landroid/widget/FrameLayout;

    const v2, 0x3e99999a    # 0.3f

    invoke-static {v0, v1, v2, v5}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 519
    iget-object v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v2, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->emptyViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    if-eqz p1, :cond_9

    .line 522
    iget-boolean v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->endReached:Z

    if-eqz v0, :cond_6

    .line 524
    iget-object v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatAdapter:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->notifyItemRangeChanged(II)V

    move v0, v5

    goto :goto_2

    :cond_6
    move v0, v1

    .line 526
    :goto_2
    iget-object v2, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v2

    .line 527
    iget-object v3, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_7

    goto :goto_3

    .line 528
    :cond_7
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_3
    iget-object v3, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v1, v3

    sub-int v3, p1, v0

    if-lez v3, :cond_8

    xor-int/lit8 v3, v0, 0x1

    add-int/2addr v3, v5

    .line 531
    iget-object v4, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatAdapter:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    invoke-virtual {v4, v3}, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->notifyItemChanged(I)V

    .line 532
    iget-object v4, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatAdapter:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    sub-int v5, p1, v0

    invoke-virtual {v4, v3, v5}, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->notifyItemRangeInserted(II)V

    :cond_8
    const/4 v3, -0x1

    if-eq v2, v3, :cond_a

    .line 535
    iget-object v3, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    add-int/2addr v2, p1

    sub-int/2addr v2, v0

    invoke-virtual {v3, v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void

    .line 537
    :cond_9
    iget-boolean p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->endReached:Z

    if-eqz p1, :cond_a

    .line 538
    iget-object p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatAdapter:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    invoke-virtual {p1, v1}, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->notifyItemRemoved(I)V

    :cond_a
    return-void
.end method

.method private synthetic lambda$processSelectedOption$10(Lorg/telegram/ui/ChatActivity;I)V
    .locals 0

    .line 1681
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    .line 1682
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ChatActivity;->jumpToDate(I)V

    return-void
.end method

.method private synthetic lambda$showOpenUrlAlert$11(Ljava/lang/String;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 2064
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p2, p1, p3}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private loadDeleted(I)Ljava/util/ArrayList;
    .locals 11

    .line 358
    iget-object p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->lastLoadedMsgFileId:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-nez p1, :cond_0

    .line 359
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 363
    :cond_0
    iget-object p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->lastLoadedMsgFileId:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 365
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    goto :goto_1

    .line 367
    :cond_1
    new-instance p1, Ljava/io/File;

    iget-object v1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->path:Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/exteragram/messenger/export/ui/ChatViewer$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/exteragram/messenger/export/ui/ChatViewer$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p1, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    .line 368
    array-length v1, p1

    const/high16 v2, -0x80000000

    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p1, v3

    .line 369
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 370
    const-string v5, "(\\d+)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 371
    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 373
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 374
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 375
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 378
    :cond_3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->lastLoadedMsgFileId:Ljava/util/concurrent/atomic/AtomicInteger;

    move p1, v2

    .line 381
    :goto_1
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/messages"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".json"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 382
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-nez p1, :cond_4

    .line 383
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 385
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msg file size: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "exteraGram"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-static {v1}, Lcom/exteragram/messenger/export/output/FileManager;->readFileContent(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    .line 389
    new-instance v1, Lcom/exteragram/messenger/export/ui/ExportMapper;

    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    iget-object v3, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->path:Ljava/lang/String;

    iget-object v4, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatInfo:Lcom/exteragram/messenger/export/ui/ExportMapper$ChatInfo;

    invoke-direct {v1, v2, v3, v4}, Lcom/exteragram/messenger/export/ui/ExportMapper;-><init>(ILjava/lang/String;Lcom/exteragram/messenger/export/ui/ExportMapper$ChatInfo;)V

    .line 391
    sget-object v2, Lcom/exteragram/messenger/ExteraConfig;->GSON:Lcom/google/gson/Gson;

    const-class v3, [Lcom/exteragram/messenger/export/ui/ExportMapper$JsonMessage;

    invoke-virtual {v2, p1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/exteragram/messenger/export/ui/ExportMapper$JsonMessage;

    .line 392
    invoke-virtual {v1, p1}, Lcom/exteragram/messenger/export/ui/ExportMapper;->mapMessages([Lcom/exteragram/messenger/export/ui/ExportMapper$JsonMessage;)Ljava/util/ArrayList;

    move-result-object p1

    .line 394
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    .line 395
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    .line 397
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 398
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 400
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v0

    :goto_2
    if-ge v6, v5, :cond_6

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lorg/telegram/messenger/MessageObject;

    .line 401
    iget-object v8, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_2

    .line 404
    :cond_5
    iget-object v7, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v8, 0x0

    invoke-static {v7, v3, v4, v8}, Lorg/telegram/messenger/MessagesStorage;->addUsersAndChatsFromMessage(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_2

    .line 409
    :cond_6
    invoke-static {v2, v3, v4}, Lcom/exteragram/messenger/export/ui/ChatViewer;->getEntities(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/exteragram/messenger/export/ui/ChatViewer$QuadroResult;

    move-result-object v2

    .line 410
    invoke-virtual {v2}, Lcom/exteragram/messenger/export/ui/ChatViewer$QuadroResult;->getDicts()Landroidx/core/util/Pair;

    move-result-object v3

    .line 411
    invoke-virtual {v2}, Lcom/exteragram/messenger/export/ui/ChatViewer$QuadroResult;->getUsers()Ljava/util/ArrayList;

    move-result-object v4

    .line 412
    invoke-virtual {v2}, Lcom/exteragram/messenger/export/ui/ChatViewer$QuadroResult;->getChats()Ljava/util/ArrayList;

    move-result-object v2

    .line 414
    new-instance v5, Lcom/exteragram/messenger/export/ui/ChatViewer$$ExternalSyntheticLambda4;

    invoke-direct {v5, v4, v1, v2}, Lcom/exteragram/messenger/export/ui/ChatViewer$$ExternalSyntheticLambda4;-><init>(Ljava/util/ArrayList;Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;)V

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 423
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 425
    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 426
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 428
    new-instance v4, Lorg/telegram/messenger/MessageObject;

    iget v5, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    iget-object v6, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v3, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    move-object v7, v2

    check-cast v7, Landroidx/collection/LongSparseArray;

    iget-object v2, v3, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    move-object v8, v2

    check-cast v8, Landroidx/collection/LongSparseArray;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v10}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;Landroidx/collection/LongSparseArray;Landroidx/collection/LongSparseArray;ZZ)V

    .line 429
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    return-object v1
.end method

.method private loadMessages(Z)V
    .locals 3

    .line 445
    iget-boolean v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->loading:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    const-wide v1, 0x7fffffffffffffffL

    .line 449
    iput-wide v1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->minEventId:J

    .line 450
    iget-object v1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->progressView:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    const v2, 0x3e99999a    # 0.3f

    .line 451
    invoke-static {v1, v0, v2, v0}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 452
    iget-object v1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->emptyViewContainer:Landroid/widget/FrameLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 453
    iget-object v1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 455
    :cond_1
    iget-object v1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->messagesDict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->clear()V

    .line 456
    iget-object v1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 457
    iget-object v1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->messagesByDays:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 459
    invoke-direct {p0}, Lcom/exteragram/messenger/export/ui/ChatViewer;->fillMessagesCount()V

    .line 461
    :cond_2
    iput-boolean v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->loading:Z

    .line 463
    invoke-direct {p0}, Lcom/exteragram/messenger/export/ui/ChatViewer;->updateEmptyPlaceholder()V

    if-nez p1, :cond_3

    .line 466
    iget-object v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 467
    iget-wide v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->minEventId:J

    long-to-int v0, v0

    goto :goto_0

    :cond_3
    const v0, 0x7fffffff

    .line 470
    :goto_0
    invoke-direct {p0, v0}, Lcom/exteragram/messenger/export/ui/ChatViewer;->loadDeleted(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 472
    new-instance v1, Lcom/exteragram/messenger/export/ui/ChatViewer$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Lcom/exteragram/messenger/export/ui/ChatViewer$$ExternalSyntheticLambda2;-><init>(Lcom/exteragram/messenger/export/ui/ChatViewer;Ljava/util/ArrayList;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_4

    .line 541
    iget-object p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatAdapter:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    if-eqz p1, :cond_4

    .line 542
    invoke-virtual {p1}, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->notifyDataSetChanged()V

    :cond_4
    :goto_1
    return-void
.end method

.method private processSelectedOption(ILjava/util/ArrayList;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)V
    .locals 11

    .line 1478
    iget-object v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->selectedObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v1, 0x0

    const/16 v3, 0x1f4

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/16 v7, 0x1c

    .line 1481
    const-string v8, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/4 v9, 0x1

    const/4 v10, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_4

    .line 1676
    :pswitch_1
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 1677
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v9, :cond_1

    .line 1678
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v3}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1679
    instance-of v3, v1, Lorg/telegram/ui/ChatActivity;

    if-eqz v3, :cond_1

    check-cast v1, Lorg/telegram/ui/ChatActivity;

    .line 1680
    new-instance v3, Lcom/exteragram/messenger/export/ui/ChatViewer$$ExternalSyntheticLambda11;

    invoke-direct {v3, p0, v1, v0}, Lcom/exteragram/messenger/export/ui/ChatViewer$$ExternalSyntheticLambda11;-><init>(Lcom/exteragram/messenger/export/ui/ChatViewer;Lorg/telegram/ui/ChatActivity;I)V

    const-wide/16 v0, 0x12c

    invoke-static {v3, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1686
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishPreviewFragment()V

    goto/16 :goto_4

    .line 1667
    :pswitch_2
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->selectedObject:Lorg/telegram/messenger/MessageObject;

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->phone_number:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    .line 1668
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1669
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception v0

    .line 1671
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 1661
    :pswitch_3
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->phone_number:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    .line 1662
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->PhoneCopied:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createCopyBulletin(Ljava/lang/String;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto/16 :goto_4

    .line 1653
    :pswitch_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1654
    iget-object v1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->selectedObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:J

    const-string v1, "user_id"

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 1655
    iget-object v1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->selectedObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->phone_number:Ljava/lang/String;

    const-string v3, "phone"

    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1656
    const-string v1, "addContact"

    invoke-virtual {v0, v1, v9}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1657
    new-instance v1, Lorg/telegram/ui/ContactAddActivity;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ContactAddActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_4

    .line 1648
    :pswitch_5
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    .line 1649
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v3, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->selectedObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1, v3, v0}, Lorg/telegram/messenger/MessagesController;->saveGif(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;)V

    goto/16 :goto_4

    .line 1625
    :pswitch_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v7, :cond_2

    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->NO_SCOPED_STORAGE:Z

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 1626
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 1627
    iput-object v10, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->selectedObject:Lorg/telegram/messenger/MessageObject;

    return-void

    .line 1630
    :cond_3
    iget-object v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->selectedObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v0

    .line 1631
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1632
    iget-object v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->selectedObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 1634
    :cond_4
    iget-object v1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->selectedObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 1635
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 1636
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1637
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_5

    move-object v1, v10

    :cond_5
    if-eqz v1, :cond_6

    .line 1641
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_7

    .line 1642
    :cond_6
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v3, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->selectedObject:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1644
    :cond_7
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v6, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->selectedObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v6

    if-eqz v6, :cond_8

    move v4, v5

    :cond_8
    iget-object v5, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->selectedObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->selectedObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    goto :goto_0

    :cond_9
    const-string v5, ""

    :goto_0
    invoke-static {v1, v3, v4, v0, v5}, Lorg/telegram/messenger/MediaController;->saveFile(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1621
    :pswitch_7
    new-instance v0, Lorg/telegram/ui/Components/StickersAlert;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->selectedObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getInputStickerSet()Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/StickersAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$InputStickerSet;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;Z)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_4

    .line 1602
    :pswitch_8
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 1603
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_a

    .line 1604
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1605
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_a

    move-object v0, v10

    :cond_a
    if-eqz v0, :cond_b

    .line 1609
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_c

    .line 1610
    :cond_b
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v3, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->selectedObject:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1612
    :cond_c
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v3, v7, :cond_d

    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->NO_SCOPED_STORAGE:Z

    if-eqz v3, :cond_e

    :cond_d
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_e

    .line 1613
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 1614
    iput-object v10, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->selectedObject:Lorg/telegram/messenger/MessageObject;

    return-void

    .line 1617
    :cond_e
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v0, v3, v1, v10, v10}, Lorg/telegram/messenger/MediaController;->saveFile(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1572
    :pswitch_9
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 1573
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_f

    .line 1574
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1575
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_f

    move-object v0, v10

    :cond_f
    if-eqz v0, :cond_10

    .line 1579
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_11

    .line 1580
    :cond_10
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->selectedObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1582
    :cond_11
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1583
    iget-object v4, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->selectedObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1584
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    const-string v6, "android.intent.extra.STREAM"

    if-lt v4, v5, :cond_12

    .line 1586
    :try_start_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getApplicationId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".provider"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5, v7}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1587
    invoke-virtual {v1, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1589
    :catch_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1

    .line 1592
    :cond_12
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1595
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    sget v4, Lorg/telegram/messenger/R$string;->ShareFile:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_4

    .line 1510
    :pswitch_a
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_13

    .line 1511
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->selectedObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1512
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_2

    :cond_13
    move-object v0, v10

    :goto_2
    if-nez v0, :cond_14

    .line 1517
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v3, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->selectedObject:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v1

    .line 1518
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_14

    move-object v0, v1

    :cond_14
    if-eqz v0, :cond_24

    .line 1523
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "attheme"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1524
    iget-object v1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v3, -0x1

    if-eqz v1, :cond_17

    .line 1525
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    .line 1526
    iget-object v4, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v4

    sub-int/2addr v4, v9

    if-ge v1, v4, :cond_16

    .line 1527
    iget-object v1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    iput v1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->scrollToPositionOnRecreate:I

    .line 1528
    iget-object v4, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    if-eqz v1, :cond_15

    .line 1530
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->scrollToOffsetOnRecreate:I

    goto :goto_3

    .line 1532
    :cond_15
    iput v3, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->scrollToPositionOnRecreate:I

    goto :goto_3

    .line 1535
    :cond_16
    iput v3, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->scrollToPositionOnRecreate:I

    .line 1538
    :cond_17
    :goto_3
    iget-object v1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->selectedObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDocumentName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v10, v9}, Lorg/telegram/ui/ActionBar/Theme;->applyThemeFile(Ljava/io/File;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_theme;Z)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 1540
    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ThemePreviewActivity;-><init>(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_4

    .line 1542
    :cond_18
    iput v3, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->scrollToPositionOnRecreate:I

    .line 1543
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_19

    .line 1544
    iput-object v10, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->selectedObject:Lorg/telegram/messenger/MessageObject;

    return-void

    .line 1547
    :cond_19
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1548
    sget v1, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1549
    sget v1, Lorg/telegram/messenger/R$string;->IncorrectTheme:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1550
    sget v1, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v10}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1551
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_4

    .line 1554
    :cond_1a
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    iget v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-virtual {v1, v0, v3}, Lorg/telegram/messenger/LocaleController;->applyLanguageFile(Ljava/io/File;I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1555
    new-instance v0, Lorg/telegram/ui/LanguageSelectActivity;

    invoke-direct {v0}, Lorg/telegram/ui/LanguageSelectActivity;-><init>()V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_4

    .line 1557
    :cond_1b
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 1558
    iput-object v10, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->selectedObject:Lorg/telegram/messenger/MessageObject;

    return-void

    .line 1561
    :cond_1c
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1562
    sget v1, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1563
    sget v1, Lorg/telegram/messenger/R$string;->IncorrectLocalization:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1564
    sget v1, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v10}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1565
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_4

    .line 1488
    :pswitch_b
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v0, :cond_1d

    .line 1489
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1d

    .line 1490
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1491
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1d

    move-object v0, v10

    :cond_1d
    if-eqz v0, :cond_1e

    .line 1495
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1f

    .line 1496
    :cond_1e
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v3, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->selectedObject:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1498
    :cond_1f
    iget-object v3, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->selectedObject:Lorg/telegram/messenger/MessageObject;

    iget v3, v3, Lorg/telegram/messenger/MessageObject;->type:I

    if-eq v3, v5, :cond_20

    if-ne v3, v9, :cond_24

    .line 1499
    :cond_20
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v3, v7, :cond_21

    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->NO_SCOPED_STORAGE:Z

    if-eqz v3, :cond_22

    :cond_21
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_22

    .line 1500
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 1501
    iput-object v10, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->selectedObject:Lorg/telegram/messenger/MessageObject;

    return-void

    .line 1504
    :cond_22
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->selectedObject:Lorg/telegram/messenger/MessageObject;

    iget v4, v4, Lorg/telegram/messenger/MessageObject;->type:I

    if-ne v4, v5, :cond_23

    move v1, v9

    :cond_23
    invoke-static {v0, v3, v1, v10, v10}, Lorg/telegram/messenger/MediaController;->saveFile(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1483
    :pswitch_c
    invoke-static {}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getInstance()Lcom/exteragram/messenger/utils/chats/ChatUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->selectedObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v1, v10}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getMessageText(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    .line 1484
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->MessageCopied:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createCopyBulletin(Ljava/lang/String;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :catch_2
    :cond_24
    :goto_4
    const/16 v0, 0xcc

    if-eq p1, v0, :cond_25

    .line 1691
    invoke-direct {p0}, Lcom/exteragram/messenger/export/ui/ChatViewer;->closeMenu()V

    .line 1692
    iput-object v10, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->selectedObject:Lorg/telegram/messenger/MessageObject;

    :cond_25
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private updateEmptyPlaceholder()V
    .locals 5

    .line 347
    iget-object v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->emptyView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v1, 0x41000000    # 8.0f

    .line 351
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 352
    iget-object v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->emptyView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->NoResult:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateMessageAnimatedInternal(Lorg/telegram/messenger/MessageObject;Z)V
    .locals 3

    .line 2072
    iget-object v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatAdapter:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2075
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-nez v0, :cond_1

    goto :goto_0

    .line 2078
    :cond_1
    iget-object v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->messagesDict:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    .line 2080
    iput-boolean v1, p1, Lorg/telegram/messenger/MessageObject;->forceUpdate:Z

    .line 2081
    iput-boolean v1, p1, Lorg/telegram/messenger/MessageObject;->reactionsChanged:Z

    .line 2083
    :cond_2
    iget-object p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_3

    .line 2085
    iget-object p2, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatAdapter:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatAdapter:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    invoke-static {v2}, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->-$$Nest$fgetmessagesStartRow(Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;)I

    move-result v2

    sub-int/2addr p1, v2

    sub-int/2addr v0, p1

    sub-int/2addr v0, v1

    invoke-virtual {p2, v0}, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->notifyItemChanged(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private updateMessagesVisiblePart()V
    .locals 28

    move-object/from16 v0, p0

    .line 1845
    iget-object v1, v0, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-nez v1, :cond_0

    return-void

    .line 1848
    :cond_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 1849
    iget-object v2, v0, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const v3, 0x7fffffff

    const/4 v5, 0x0

    move v6, v3

    move v7, v5

    move v8, v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    const/high16 v12, 0x3f800000    # 1.0f

    if-ge v7, v1, :cond_c

    .line 1857
    iget-object v14, v0, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v14, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 1858
    instance-of v15, v14, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v15, :cond_3

    move-object/from16 v16, v14

    check-cast v16, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 1859
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v15

    .line 1860
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    if-ltz v15, :cond_1

    move/from16 v17, v5

    goto :goto_1

    :cond_1
    neg-int v4, v15

    move/from16 v17, v4

    .line 1862
    :goto_1
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-le v4, v2, :cond_2

    add-int v4, v17, v2

    :cond_2
    sub-int v18, v4, v17

    .line 1866
    iget-object v4, v0, Lcom/exteragram/messenger/export/ui/ChatViewer;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getHeightWithKeyboard()I

    move-result v4

    iget-object v13, v0, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v13

    sub-int v19, v4, v13

    invoke-virtual {v14}, Landroid/view/View;->getY()F

    move-result v4

    iget-object v13, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v4, v13

    iget-object v13, v0, Lcom/exteragram/messenger/export/ui/ChatViewer;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v13}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getBackgroundTranslationY()I

    move-result v13

    int-to-float v13, v13

    sub-float v21, v4, v13

    iget-object v4, v0, Lcom/exteragram/messenger/export/ui/ChatViewer;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v22

    iget-object v4, v0, Lcom/exteragram/messenger/export/ui/ChatViewer;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getBackgroundSizeY()I

    move-result v23

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v20, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v16 .. v26}, Lorg/telegram/ui/Cells/ChatMessageCell;->setVisiblePart(IIIFFIIIII)V

    .line 1869
    invoke-virtual/range {v16 .. v16}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    .line 1871
    invoke-virtual/range {v16 .. v16}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    .line 1872
    iget-object v13, v0, Lcom/exteragram/messenger/export/ui/ChatViewer;->roundVideoContainer:Landroid/widget/FrameLayout;

    if-eqz v13, :cond_4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v13

    invoke-virtual {v13, v4}, Lorg/telegram/messenger/MediaController;->isPlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1873
    invoke-virtual/range {v16 .. v16}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v4

    .line 1874
    iget-object v8, v0, Lcom/exteragram/messenger/export/ui/ChatViewer;->roundVideoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v13

    invoke-virtual {v8, v13}, Landroid/view/View;->setTranslationX(F)V

    .line 1875
    iget-object v8, v0, Lcom/exteragram/messenger/export/ui/ChatViewer;->roundVideoContainer:Landroid/widget/FrameLayout;

    iget-object v13, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getPaddingTop()I

    move-result v13

    add-int/2addr v13, v15

    int-to-float v13, v13

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v4

    add-float/2addr v13, v4

    invoke-virtual {v8, v13}, Landroid/view/View;->setTranslationY(F)V

    .line 1876
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 1877
    iget-object v4, v0, Lcom/exteragram/messenger/export/ui/ChatViewer;->roundVideoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    const/4 v8, 0x1

    goto :goto_2

    .line 1880
    :cond_3
    instance-of v4, v14, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v4, :cond_4

    move-object v4, v14

    check-cast v4, Lorg/telegram/ui/Cells/ChatActionCell;

    .line 1881
    invoke-virtual {v14}, Landroid/view/View;->getY()F

    move-result v13

    iget-object v15, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    int-to-float v15, v15

    add-float/2addr v13, v15

    iget-object v15, v0, Lcom/exteragram/messenger/export/ui/ChatViewer;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v15}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getBackgroundTranslationY()I

    move-result v15

    int-to-float v15, v15

    sub-float/2addr v13, v15

    iget-object v15, v0, Lcom/exteragram/messenger/export/ui/ChatViewer;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v15}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getBackgroundSizeY()I

    move-result v15

    invoke-virtual {v4, v13, v15}, Lorg/telegram/ui/Cells/ChatActionCell;->setVisiblePart(FI)V

    .line 1882
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatActionCell;->hasGradientService()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1883
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatActionCell;->invalidate()V

    .line 1886
    :cond_4
    :goto_2
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v4

    iget-object v13, v0, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v13}, Landroid/view/View;->getPaddingTop()I

    move-result v13

    if-gt v4, v13, :cond_5

    goto :goto_3

    .line 1889
    :cond_5
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v4

    if-ge v4, v3, :cond_8

    .line 1892
    instance-of v3, v14, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-nez v3, :cond_6

    instance-of v3, v14, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v3, :cond_7

    :cond_6
    move-object v9, v14

    :cond_7
    move v3, v4

    move-object v11, v14

    .line 1897
    :cond_8
    iget-object v13, v0, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatListItemAnimator:Landroidx/recyclerview/widget/ChatListItemAnimator;

    if-eqz v13, :cond_9

    invoke-virtual {v13, v14}, Landroidx/recyclerview/widget/ChatListItemAnimator;->willRemoved(Landroid/view/View;)Z

    move-result v13

    if-nez v13, :cond_b

    iget-object v13, v0, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatListItemAnimator:Landroidx/recyclerview/widget/ChatListItemAnimator;

    invoke-virtual {v13, v14}, Landroidx/recyclerview/widget/ChatListItemAnimator;->willAddedFromAlpha(Landroid/view/View;)Z

    move-result v13

    if-nez v13, :cond_b

    .line 1898
    :cond_9
    instance-of v13, v14, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v13, :cond_b

    move-object v13, v14

    check-cast v13, Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v13}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v13

    iget-boolean v13, v13, Lorg/telegram/messenger/MessageObject;->isDateObject:Z

    if-eqz v13, :cond_b

    .line 1899
    invoke-virtual {v14}, Landroid/view/View;->getAlpha()F

    move-result v13

    cmpl-float v13, v13, v12

    if-eqz v13, :cond_a

    .line 1900
    invoke-virtual {v14, v12}, Landroid/view/View;->setAlpha(F)V

    :cond_a
    if-ge v4, v6, :cond_b

    move v6, v4

    move-object v10, v14

    :cond_b
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 1909
    :cond_c
    iget-object v1, v0, Lcom/exteragram/messenger/export/ui/ChatViewer;->roundVideoContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_e

    if-nez v8, :cond_d

    .line 1911
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->roundMessageSize:I

    neg-int v2, v2

    add-int/lit8 v2, v2, -0x64

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 1912
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 1913
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 1914
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-boolean v1, v0, Lcom/exteragram/messenger/export/ui/ChatViewer;->checkTextureViewPosition:Z

    if-eqz v1, :cond_e

    .line 1915
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1, v5}, Lorg/telegram/messenger/MediaController;->setCurrentVideoVisible(Z)V

    goto :goto_4

    .line 1918
    :cond_d
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MediaController;->setCurrentVideoVisible(Z)V

    :cond_e
    :goto_4
    if-eqz v9, :cond_10

    .line 1923
    instance-of v1, v9, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v1, :cond_f

    .line 1924
    check-cast v9, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    goto :goto_5

    .line 1926
    :cond_f
    check-cast v9, Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    .line 1928
    :goto_5
    iget-object v2, v0, Lcom/exteragram/messenger/export/ui/ChatViewer;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v5, v3}, Lorg/telegram/ui/Cells/ChatActionCell;->setCustomDate(IZZ)V

    .line 1930
    :cond_10
    iput-boolean v5, v0, Lcom/exteragram/messenger/export/ui/ChatViewer;->currentFloatingDateOnScreen:Z

    .line 1931
    instance-of v1, v11, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-nez v1, :cond_11

    instance-of v1, v11, Lorg/telegram/ui/Cells/ChatActionCell;

    if-nez v1, :cond_11

    const/4 v5, 0x1

    :cond_11
    iput-boolean v5, v0, Lcom/exteragram/messenger/export/ui/ChatViewer;->currentFloatingTopIsNotMessage:Z

    const/4 v1, 0x0

    if-eqz v10, :cond_1a

    .line 1933
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, v0, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    if-gt v2, v3, :cond_12

    iget-boolean v2, v0, Lcom/exteragram/messenger/export/ui/ChatViewer;->currentFloatingTopIsNotMessage:Z

    if-eqz v2, :cond_13

    :cond_12
    const/4 v2, 0x1

    goto :goto_6

    .line 1939
    :cond_13
    invoke-virtual {v10}, Landroid/view/View;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_14

    .line 1940
    invoke-virtual {v10, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1942
    :cond_14
    iget-object v2, v0, Lcom/exteragram/messenger/export/ui/ChatViewer;->floatingDateAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_15

    .line 1943
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v2, 0x0

    .line 1944
    iput-object v2, v0, Lcom/exteragram/messenger/export/ui/ChatViewer;->floatingDateAnimation:Landroid/animation/AnimatorSet;

    .line 1946
    :cond_15
    iget-object v2, v0, Lcom/exteragram/messenger/export/ui/ChatViewer;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_16

    .line 1947
    iget-object v2, v0, Lcom/exteragram/messenger/export/ui/ChatViewer;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    const/16 v27, 0x1

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1949
    :cond_16
    iget-object v2, v0, Lcom/exteragram/messenger/export/ui/ChatViewer;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v12

    if-eqz v2, :cond_17

    .line 1950
    iget-object v2, v0, Lcom/exteragram/messenger/export/ui/ChatViewer;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v2, v12}, Landroid/view/View;->setAlpha(F)V

    :cond_17
    const/4 v2, 0x1

    .line 1952
    iput-boolean v2, v0, Lcom/exteragram/messenger/export/ui/ChatViewer;->currentFloatingDateOnScreen:Z

    goto :goto_7

    .line 1934
    :goto_6
    invoke-virtual {v10}, Landroid/view/View;->getAlpha()F

    move-result v3

    cmpl-float v3, v3, v12

    if-eqz v3, :cond_18

    .line 1935
    invoke-virtual {v10, v12}, Landroid/view/View;->setAlpha(F)V

    .line 1937
    :cond_18
    iget-boolean v3, v0, Lcom/exteragram/messenger/export/ui/ChatViewer;->currentFloatingTopIsNotMessage:Z

    xor-int/2addr v2, v3

    invoke-direct {v0, v2}, Lcom/exteragram/messenger/export/ui/ChatViewer;->hideFloatingDateView(Z)V

    .line 1954
    :goto_7
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v2

    iget-object v3, v0, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1955
    iget-object v3, v0, Lcom/exteragram/messenger/export/ui/ChatViewer;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-le v2, v3, :cond_19

    iget-object v3, v0, Lcom/exteragram/messenger/export/ui/ChatViewer;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    if-ge v2, v3, :cond_19

    .line 1956
    iget-object v1, v0, Lcom/exteragram/messenger/export/ui/ChatViewer;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    neg-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    int-to-float v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    return-void

    .line 1958
    :cond_19
    iget-object v2, v0, Lcom/exteragram/messenger/export/ui/ChatViewer;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void

    :cond_1a
    const/4 v2, 0x1

    .line 1961
    invoke-direct {v0, v2}, Lcom/exteragram/messenger/export/ui/ChatViewer;->hideFloatingDateView(Z)V

    .line 1962
    iget-object v2, v0, Lcom/exteragram/messenger/export/ui/ChatViewer;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private updateTextureViewPosition()V
    .locals 7

    .line 1812
    iget-object v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1

    .line 1814
    iget-object v4, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1815
    instance-of v5, v4, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v5, :cond_0

    check-cast v4, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 1816
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    .line 1817
    iget-object v6, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->roundVideoContainer:Landroid/widget/FrameLayout;

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/telegram/messenger/MediaController;->isPlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1818
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    .line 1819
    iget-object v2, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->roundVideoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 1820
    iget-object v2, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->roundVideoContainer:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    add-int/2addr v5, v4

    int-to-float v4, v5

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v0

    add-float/2addr v4, v0

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 1821
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1822
    iget-object v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->roundVideoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    move v0, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1828
    :goto_1
    iget-object v2, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->roundVideoContainer:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_4

    .line 1829
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    if-nez v0, :cond_3

    .line 1831
    iget-object v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->roundVideoContainer:Landroid/widget/FrameLayout;

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->roundMessageSize:I

    neg-int v3, v3

    add-int/lit8 v3, v3, -0x64

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 1832
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    if-eqz v2, :cond_4

    .line 1833
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1834
    iget-boolean v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->checkTextureViewPosition:Z

    if-nez v0, :cond_2

    invoke-static {}, Lorg/telegram/ui/Components/PipRoundVideoView;->getInstance()Lorg/telegram/ui/Components/PipRoundVideoView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1835
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaController;->setCurrentVideoVisible(Z)V

    return-void

    .line 1839
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MediaController;->setCurrentVideoVisible(Z)V

    :cond_4
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 636
    new-instance v0, Lorg/telegram/messenger/ChatMessageSharedResources;

    invoke-direct {v0, v2}, Lorg/telegram/messenger/ChatMessageSharedResources;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->sharedResources:Lorg/telegram/messenger/ChatMessageSharedResources;

    .line 638
    iget-object v0, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatMessageCellsCache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    move v0, v6

    :goto_0
    const/16 v3, 0x8

    if-ge v0, v3, :cond_0

    .line 640
    iget-object v3, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatMessageCellsCache:Ljava/util/ArrayList;

    new-instance v4, Lorg/telegram/ui/Cells/ChatMessageCell;

    iget v5, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-direct {v4, v2, v5}, Lorg/telegram/ui/Cells/ChatMessageCell;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 644
    :cond_0
    iput-boolean v6, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->searchWas:Z

    const/4 v7, 0x1

    .line 645
    iput-boolean v7, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->hasOwnBackground:Z

    .line 647
    invoke-static {v2, v6}, Lorg/telegram/ui/ActionBar/Theme;->createChatResources(Landroid/content/Context;Z)V

    .line 649
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setAddToContainer(Z)V

    .line 650
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    xor-int/2addr v3, v7

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 651
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-direct {v3, v6}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 652
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lcom/exteragram/messenger/export/ui/ChatViewer$2;

    invoke-direct {v3, v1}, Lcom/exteragram/messenger/export/ui/ChatViewer$2;-><init>(Lcom/exteragram/messenger/export/ui/ChatViewer;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 661
    new-instance v0, Lcom/exteragram/messenger/export/ui/ChatViewer$3;

    const/4 v4, 0x0

    iget-object v5, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->theme:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/exteragram/messenger/export/ui/ChatViewer$3;-><init>(Lcom/exteragram/messenger/export/ui/ChatViewer;Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    .line 674
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    xor-int/2addr v3, v7

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setOccupyStatusBar(Z)V

    .line 675
    iget-object v0, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v0, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 676
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v3, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    const/high16 v13, 0x42200000    # 40.0f

    const/4 v14, 0x0

    const/4 v8, -0x2

    const/high16 v9, -0x40800000    # -1.0f

    const/16 v10, 0x33

    const/high16 v11, 0x42600000    # 56.0f

    const/4 v12, 0x0

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 707
    iget-object v0, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatInfo:Lcom/exteragram/messenger/export/ui/ExportMapper$ChatInfo;

    iget-wide v3, v0, Lcom/exteragram/messenger/export/ui/ExportMapper$ChatInfo;->id:J

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3, v4, v0, v7}, Lcom/exteragram/messenger/export/ui/ChatViewer;->getDialogInAnyWay(JLjava/lang/Integer;Z)Lorg/telegram/tgnet/TLObject;

    move-result-object v0

    .line 709
    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v3, :cond_1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    .line 710
    iget-object v3, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    iget-object v4, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatInfo:Lcom/exteragram/messenger/export/ui/ExportMapper$ChatInfo;

    iget-object v4, v4, Lcom/exteragram/messenger/export/ui/ExportMapper$ChatInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setTitle(Ljava/lang/CharSequence;)V

    .line 711
    invoke-direct {v1}, Lcom/exteragram/messenger/export/ui/ChatViewer;->fillMessagesCount()V

    .line 712
    iget-object v3, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setUserAvatar(Lorg/telegram/tgnet/TLRPC$User;)V

    goto :goto_1

    .line 713
    :cond_1
    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v3, :cond_2

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 714
    iget-object v3, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    iget-object v4, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatInfo:Lcom/exteragram/messenger/export/ui/ExportMapper$ChatInfo;

    iget-object v4, v4, Lcom/exteragram/messenger/export/ui/ExportMapper$ChatInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setTitle(Ljava/lang/CharSequence;)V

    .line 715
    invoke-direct {v1}, Lcom/exteragram/messenger/export/ui/ChatViewer;->fillMessagesCount()V

    .line 716
    iget-object v3, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setChatAvatar(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 719
    :cond_2
    :goto_1
    new-instance v0, Lcom/exteragram/messenger/export/ui/ChatViewer$4;

    invoke-direct {v0, v1, v2}, Lcom/exteragram/messenger/export/ui/ChatViewer$4;-><init>(Lcom/exteragram/messenger/export/ui/ChatViewer;Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 870
    check-cast v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iput-object v0, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    .line 872
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    xor-int/2addr v3, v7

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setOccupyStatusBar(Z)V

    .line 874
    iget-object v0, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCachedWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isWallpaperMotion()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setBackgroundImage(Landroid/graphics/drawable/Drawable;Z)V

    .line 876
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->emptyViewContainer:Landroid/widget/FrameLayout;

    const/4 v3, 0x4

    .line 877
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 878
    iget-object v0, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v4, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->emptyViewContainer:Landroid/widget/FrameLayout;

    const/4 v5, -0x2

    const/4 v8, -0x1

    const/16 v9, 0x11

    invoke-static {v8, v5, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 879
    iget-object v0, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->emptyViewContainer:Landroid/widget/FrameLayout;

    new-instance v4, Lcom/exteragram/messenger/export/ui/ChatViewer$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/exteragram/messenger/export/ui/ChatViewer$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 881
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->emptyView:Landroid/widget/TextView;

    const/high16 v4, 0x41600000    # 14.0f

    .line 882
    invoke-virtual {v0, v7, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 883
    iget-object v0, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 884
    iget-object v0, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->emptyView:Landroid/widget/TextView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceText:I

    invoke-virtual {v1, v4}, Lcom/exteragram/messenger/export/ui/ChatViewer;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 885
    iget-object v0, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->emptyView:Landroid/widget/TextView;

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iget-object v10, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->emptyView:Landroid/widget/TextView;

    iget-object v11, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v5, v10, v11}, Lorg/telegram/ui/ActionBar/Theme;->createServiceDrawable(ILandroid/view/View;Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 886
    iget-object v0, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->emptyView:Landroid/widget/TextView;

    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v0, v10, v11, v12, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 887
    iget-object v0, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->emptyViewContainer:Landroid/widget/FrameLayout;

    iget-object v5, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->emptyView:Landroid/widget/TextView;

    const/high16 v15, 0x41800000    # 16.0f

    const/16 v16, 0x0

    const/4 v10, -0x2

    const/high16 v11, -0x40000000    # -2.0f

    const/16 v12, 0x11

    const/high16 v13, 0x41800000    # 16.0f

    const/4 v14, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v0, v5, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 889
    new-instance v0, Lcom/exteragram/messenger/export/ui/ChatViewer$5;

    iget-object v5, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->theme:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-direct {v0, v1, v2, v5}, Lcom/exteragram/messenger/export/ui/ChatViewer$5;-><init>(Lcom/exteragram/messenger/export/ui/ChatViewer;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 1010
    new-instance v5, Lcom/exteragram/messenger/export/ui/ChatViewer$$ExternalSyntheticLambda1;

    invoke-direct {v5, v1}, Lcom/exteragram/messenger/export/ui/ChatViewer$$ExternalSyntheticLambda1;-><init>(Lcom/exteragram/messenger/export/ui/ChatViewer;)V

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    .line 1011
    iget-object v0, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1012
    iget-object v0, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 1013
    iget-object v0, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    invoke-direct {v5, v1, v2}, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;-><init>(Lcom/exteragram/messenger/export/ui/ChatViewer;Landroid/content/Context;)V

    iput-object v5, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatAdapter:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1014
    iget-object v0, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 1015
    iget-object v0, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v10, 0x40400000    # 3.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-virtual {v0, v6, v5, v6, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 1016
    iget-object v0, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lcom/exteragram/messenger/export/ui/ChatViewer$6;

    iget-object v10, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v11, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->theme:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    const/4 v12, 0x0

    invoke-direct {v5, v1, v12, v10, v11}, Lcom/exteragram/messenger/export/ui/ChatViewer$6;-><init>(Lcom/exteragram/messenger/export/ui/ChatViewer;Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Components/RecyclerListView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v5, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatListItemAnimator:Landroidx/recyclerview/widget/ChatListItemAnimator;

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 1054
    iget-object v0, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatListItemAnimator:Landroidx/recyclerview/widget/ChatListItemAnimator;

    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/ChatListItemAnimator;->setReversePositions(Z)V

    .line 1055
    iget-object v0, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 1056
    new-instance v0, Lcom/exteragram/messenger/export/ui/ChatViewer$7;

    invoke-direct {v0, v1, v2}, Lcom/exteragram/messenger/export/ui/ChatViewer$7;-><init>(Lcom/exteragram/messenger/export/ui/ChatViewer;Landroid/content/Context;)V

    iput-object v0, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 1069
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 1070
    iget-object v0, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    .line 1071
    iget-object v0, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v5, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1072
    iget-object v0, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v5, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v10, -0x40800000    # -1.0f

    invoke-static {v8, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v0, v5, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1073
    iget-object v0, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lcom/exteragram/messenger/export/ui/ChatViewer$8;

    invoke-direct {v5, v1}, Lcom/exteragram/messenger/export/ui/ChatViewer$8;-><init>(Lcom/exteragram/messenger/export/ui/ChatViewer;)V

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 1113
    iget v0, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->scrollToPositionOnRecreate:I

    if-eq v0, v8, :cond_3

    .line 1114
    iget-object v5, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget v10, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->scrollToOffsetOnRecreate:I

    invoke-virtual {v5, v0, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 1115
    iput v8, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->scrollToPositionOnRecreate:I

    .line 1118
    :cond_3
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->progressView:Landroid/widget/FrameLayout;

    .line 1119
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1120
    iget-object v0, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v3, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->progressView:Landroid/widget/FrameLayout;

    const/16 v5, 0x33

    invoke-static {v8, v8, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1122
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->progressView2:Landroid/view/View;

    const/high16 v3, 0x41900000    # 18.0f

    .line 1123
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iget-object v5, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->progressView2:Landroid/view/View;

    iget-object v8, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v3, v5, v8}, Lorg/telegram/ui/ActionBar/Theme;->createServiceDrawable(ILandroid/view/View;Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1124
    iget-object v0, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->progressView:Landroid/widget/FrameLayout;

    iget-object v3, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->progressView2:Landroid/view/View;

    const/16 v5, 0x24

    invoke-static {v5, v5, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1126
    new-instance v0, Lorg/telegram/ui/Components/RadialProgressView;

    iget-object v3, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->theme:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    const/high16 v3, 0x41e00000    # 28.0f

    .line 1127
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RadialProgressView;->setSize(I)V

    .line 1128
    iget-object v0, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v1, v4}, Lcom/exteragram/messenger/export/ui/ChatViewer;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    .line 1129
    iget-object v0, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->progressView:Landroid/widget/FrameLayout;

    iget-object v3, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 v4, 0x20

    invoke-static {v4, v4, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1131
    new-instance v0, Lorg/telegram/ui/Cells/ChatActionCell;

    iget-object v3, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->theme:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-direct {v0, v2, v6, v3}, Lorg/telegram/ui/Cells/ChatActionCell;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    const/4 v3, 0x0

    .line 1132
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1133
    iget-object v0, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1134
    iget-object v0, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v3, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v13, -0x2

    const/high16 v14, -0x40000000    # -2.0f

    const/16 v15, 0x31

    const/16 v16, 0x0

    const/high16 v17, 0x40800000    # 4.0f

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1136
    iget-object v0, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v3, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1138
    iget-object v0, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatAdapter:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    invoke-virtual {v0}, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->updateRows()V

    .line 1139
    iget-boolean v0, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->loading:Z

    const v3, 0x3e99999a    # 0.3f

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1140
    iget-object v0, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->progressView:Landroid/widget/FrameLayout;

    invoke-static {v0, v7, v3, v7}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 1141
    iget-object v0, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v12}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_2

    .line 1143
    :cond_4
    iget-object v0, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->progressView:Landroid/widget/FrameLayout;

    invoke-static {v0, v6, v3, v7}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 1144
    iget-object v0, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v3, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->emptyViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 1146
    :goto_2
    iget-object v0, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v7, v7}, Lorg/telegram/ui/Components/RecyclerListView;->setAnimateEmptyView(ZI)V

    .line 1148
    new-instance v0, Lorg/telegram/ui/Components/UndoView;

    iget-object v3, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->theme:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-direct {v0, v2, v12, v6, v3}, Lorg/telegram/ui/Components/UndoView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->undoView:Lorg/telegram/ui/Components/UndoView;

    .line 1149
    iget-object v2, v1, Lcom/exteragram/messenger/export/ui/ChatViewer;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    const/high16 v8, 0x41000000    # 8.0f

    const/high16 v9, 0x41000000    # 8.0f

    const/4 v3, -0x1

    const/high16 v4, -0x40000000    # -2.0f

    const/16 v5, 0x53

    const/high16 v6, 0x41000000    # 8.0f

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1151
    invoke-direct {v1}, Lcom/exteragram/messenger/export/ui/ChatViewer;->updateEmptyPlaceholder()V

    .line 1153
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 6

    .line 548
    sget p2, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    if-ne p1, p2, :cond_0

    .line 549
    iget-object p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p1, :cond_e

    .line 550
    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    return-void

    .line 552
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p2, :cond_5

    .line 553
    aget-object p1, p3, v2

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    .line 555
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 556
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-direct {p0, v1}, Lcom/exteragram/messenger/export/ui/ChatViewer;->createTextureView(Z)Landroid/view/TextureView;

    move-result-object p2

    iget-object p3, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object v3, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->roundVideoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2, p3, v3, v1}, Lorg/telegram/messenger/MediaController;->setTextureView(Landroid/view/TextureView;Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;Landroid/widget/FrameLayout;Z)V

    .line 557
    invoke-direct {p0}, Lcom/exteragram/messenger/export/ui/ChatViewer;->updateTextureViewPosition()V

    .line 560
    :cond_1
    iget-object p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p1, :cond_e

    .line 561
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    move p2, v2

    :goto_0
    if-ge p2, p1, :cond_e

    .line 563
    iget-object p3, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 564
    instance-of v3, p3, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v3, :cond_4

    check-cast p3, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 565
    invoke-virtual {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 567
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 569
    :cond_2
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 570
    invoke-virtual {p3, v2, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->checkVideoPlayback(ZLandroid/graphics/Bitmap;)V

    .line 571
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/MediaController;->isPlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 572
    iget v4, v3, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_4

    .line 573
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->resetPlayingProgress()V

    .line 574
    invoke-virtual {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    goto :goto_2

    .line 568
    :cond_3
    :goto_1
    invoke-virtual {p3, v2, v1, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->updateButtonState(ZZZ)V

    :cond_4
    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 582
    :cond_5
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    if-eq p1, p2, :cond_a

    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    if-ne p1, p2, :cond_6

    goto/16 :goto_4

    .line 601
    :cond_6
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingProgressDidChanged:I

    if-ne p1, p2, :cond_8

    .line 602
    aget-object p1, p3, v2

    check-cast p1, Ljava/lang/Integer;

    .line 603
    iget-object p2, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p2, :cond_e

    .line 604
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    :goto_3
    if-ge v2, p2, :cond_e

    .line 606
    iget-object p3, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 607
    instance-of v0, p3, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v0, :cond_7

    check-cast p3, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 608
    invoke-virtual {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 609
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v1, v3, :cond_7

    .line 610
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 612
    iget p2, p1, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    iput p2, v0, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    .line 613
    iget p2, p1, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    iput p2, v0, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    .line 614
    iget p1, p1, Lorg/telegram/messenger/MessageObject;->audioPlayerDuration:I

    iput p1, v0, Lorg/telegram/messenger/MessageObject;->audioPlayerDuration:I

    .line 615
    invoke-virtual {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->updatePlayingMessageProgress()V

    return-void

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 622
    :cond_8
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didSetNewWallpapper:I

    if-ne p1, p2, :cond_e

    .line 623
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-eqz p1, :cond_e

    .line 624
    iget-object p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCachedWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isWallpaperMotion()Z

    move-result p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setBackgroundImage(Landroid/graphics/drawable/Drawable;Z)V

    .line 625
    iget-object p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->progressView2:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 626
    iget-object p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->emptyView:Landroid/widget/TextView;

    if-eqz p1, :cond_9

    .line 627
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 629
    :cond_9
    iget-object p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    return-void

    .line 583
    :cond_a
    :goto_4
    iget-object p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p1, :cond_e

    .line 584
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    move p2, v2

    :goto_5
    if-ge p2, p1, :cond_e

    .line 586
    iget-object p3, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 587
    instance-of v3, p3, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v3, :cond_d

    check-cast p3, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 588
    invoke-virtual {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 590
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v4

    if-nez v4, :cond_c

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v4

    if-eqz v4, :cond_b

    goto :goto_6

    .line 592
    :cond_b
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 593
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/MediaController;->isPlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 594
    invoke-virtual {p3, v1, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->checkVideoPlayback(ZLandroid/graphics/Bitmap;)V

    goto :goto_7

    .line 591
    :cond_c
    :goto_6
    invoke-virtual {p3, v2, v1, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->updateButtonState(ZZZ)V

    :cond_d
    :goto_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_e
    return-void
.end method

.method public getNavigationBarColor()I
    .locals 1

    .line 331
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelBackground:I

    invoke-virtual {p0, v0}, Lcom/exteragram/messenger/export/ui/ChatViewer;->getThemedColor(I)I

    move-result v0

    return v0
.end method

.method public getThemedColor(I)I
    .locals 0

    .line 326
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    return p1
.end method

.method public onBecomeFullyHidden()V
    .locals 3

    .line 2015
    iget-object v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->undoView:Lorg/telegram/ui/Components/UndoView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2016
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/UndoView;->hide(ZI)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 2037
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    instance-of v0, p1, Landroid/app/DatePickerDialog;

    if-eqz v0, :cond_0

    .line 2038
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 2

    .line 295
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 296
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 297
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 298
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 299
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 300
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingProgressDidChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 301
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetNewWallpapper:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    const/4 v0, 0x1

    .line 302
    invoke-direct {p0, v0}, Lcom/exteragram/messenger/export/ui/ChatViewer;->loadMessages(Z)V

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 336
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 337
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 338
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 339
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 340
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 341
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingProgressDidChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 342
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetNewWallpapper:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 343
    iget-object v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {v0}, Lorg/telegram/messenger/AnimationNotificationsLocker;->unlock()V

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 1999
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 2000
    iget-object v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz v0, :cond_0

    .line 2001
    invoke-virtual {v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onPause()V

    .line 2003
    :cond_0
    iget-object v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->undoView:Lorg/telegram/ui/Components/UndoView;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 2004
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/UndoView;->hide(ZI)V

    .line 2006
    :cond_1
    iput-boolean v1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->paused:Z

    .line 2007
    iput-boolean v1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->wasPaused:Z

    .line 2008
    invoke-static {}, Lorg/telegram/ui/AvatarPreviewer;->hasVisibleInstance()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2009
    invoke-static {}, Lorg/telegram/ui/AvatarPreviewer;->getInstance()Lorg/telegram/ui/AvatarPreviewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/AvatarPreviewer;->close()V

    :cond_2
    return-void
.end method

.method public onRemoveFromParent()V
    .locals 4

    .line 1761
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-object v1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->videoTextureView:Landroid/view/TextureView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v2, v3}, Lorg/telegram/messenger/MediaController;->setTextureView(Landroid/view/TextureView;Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;Landroid/widget/FrameLayout;Z)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1982
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 1984
    iget-object v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz v0, :cond_0

    .line 1985
    invoke-virtual {v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onResume()V

    :cond_0
    const/4 v0, 0x0

    .line 1987
    iput-boolean v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->paused:Z

    .line 1988
    invoke-direct {p0, v0}, Lcom/exteragram/messenger/export/ui/ChatViewer;->checkScrollForLoad(Z)V

    .line 1989
    iget-boolean v1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->wasPaused:Z

    if-eqz v1, :cond_1

    .line 1990
    iput-boolean v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->wasPaused:Z

    .line 1991
    iget-object v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->chatAdapter:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    if-eqz v0, :cond_1

    .line 1992
    invoke-virtual {v0}, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1976
    iget-object p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {p1}, Lorg/telegram/messenger/AnimationNotificationsLocker;->unlock()V

    :cond_0
    return-void
.end method

.method public onTransitionAnimationStart(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1969
    iget-object p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {p1}, Lorg/telegram/messenger/AnimationNotificationsLocker;->lock()V

    :cond_0
    return-void
.end method

.method public openVCard(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 2022
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getSharingDirectory()Ljava/io/File;

    move-result-object v0

    .line 2023
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 2024
    new-instance v6, Ljava/io/File;

    const-string v1, "vcard.vcf"

    invoke-direct {v6, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2025
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 2026
    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2027
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 2028
    new-instance v1, Lorg/telegram/ui/Components/PhonebookShareAlert;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v7, p3

    move-object v8, p4

    :try_start_1
    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/Components/PhonebookShareAlert;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/ContactsController$Contact;Lorg/telegram/tgnet/TLRPC$User;Landroid/net/Uri;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    :goto_0
    move-object p1, v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v2, p0

    goto :goto_0

    .line 2031
    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public showOpenUrlAlert(Ljava/lang/String;Z)V
    .locals 4

    const/4 v0, 0x0

    .line 2058
    invoke-static {p1, v0}, Lorg/telegram/messenger/browser/Browser;->isInternalUrl(Ljava/lang/String;[Z)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 2061
    :cond_0
    new-instance p2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2062
    sget v1, Lorg/telegram/messenger/R$string;->OpenUrlTitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2063
    sget v1, Lorg/telegram/messenger/R$string;->OpenUrlAlert2:I

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2064
    sget v1, Lorg/telegram/messenger/R$string;->Open:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/exteragram/messenger/export/ui/ChatViewer$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, p1}, Lcom/exteragram/messenger/export/ui/ChatViewer$$ExternalSyntheticLambda8;-><init>(Lcom/exteragram/messenger/export/ui/ChatViewer;Ljava/lang/String;)V

    invoke-virtual {p2, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2065
    sget p1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2066
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    .line 2059
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2, p1, v2}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method
