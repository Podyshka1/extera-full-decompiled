.class public Lorg/telegram/ui/ChatActivity$ChatScrollCallback;
.super Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimationCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChatScrollCallback"
.end annotation


# instance fields
.field private bottom:Z

.field private lastBottom:Z

.field private lastItemOffset:I

.field private lastPadding:I

.field private offset:I

.field private position:I

.field private scrollTo:Lorg/telegram/messenger/MessageObject;

.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method public static synthetic $r8$lambda$lR4CQuuLf0kXiOkoUxjXavOjFxs(Lorg/telegram/ui/ChatActivity$ChatScrollCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->lambda$onEndAnimation$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fputbottom(Lorg/telegram/ui/ChatActivity$ChatScrollCallback;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->bottom:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastBottom(Lorg/telegram/ui/ChatActivity$ChatScrollCallback;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->lastBottom:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastItemOffset(Lorg/telegram/ui/ChatActivity$ChatScrollCallback;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->lastItemOffset:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastPadding(Lorg/telegram/ui/ChatActivity$ChatScrollCallback;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->lastPadding:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputoffset(Lorg/telegram/ui/ChatActivity$ChatScrollCallback;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->offset:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputposition(Lorg/telegram/ui/ChatActivity$ChatScrollCallback;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->position:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputscrollTo(Lorg/telegram/ui/ChatActivity$ChatScrollCallback;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->scrollTo:Lorg/telegram/messenger/MessageObject;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .locals 1

    .line 41702
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimationCallback;-><init>()V

    const/4 p1, 0x0

    .line 41705
    iput p1, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->position:I

    const/4 v0, 0x1

    .line 41706
    iput-boolean v0, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->bottom:Z

    .line 41707
    iput p1, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->offset:I

    return-void
.end method

.method private synthetic lambda$onEndAnimation$0()V
    .locals 2

    .line 41739
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrollCallbackAnimationIndex(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/NotificationCenter;->onAnimationFinish(I)V

    return-void
.end method


# virtual methods
.method public onEndAnimation()V
    .locals 4

    .line 41723
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->scrollTo:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    .line 41724
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatAdapter(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->updateRowsSafe()V

    .line 41725
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatAdapter(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    move-result-object v0

    iget v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->scrollTo:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    if-ltz v0, :cond_1

    .line 41727
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatLayoutManager(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/GridLayoutManagerFixed;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->lastItemOffset:I

    iget v3, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->lastPadding:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v3, v3, Lorg/telegram/ui/ChatActivity;->chatListViewPaddingTop:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iget-boolean v3, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->lastBottom:Z

    invoke-virtual {v1, v0, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(IIZ)V

    goto :goto_0

    .line 41730
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatAdapter(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->updateRowsSafe()V

    .line 41731
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatLayoutManager(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/GridLayoutManagerFixed;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->position:I

    iget v2, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->offset:I

    iget-boolean v3, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->bottom:Z

    invoke-virtual {v0, v1, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(IIZ)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 41733
    iput-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->scrollTo:Lorg/telegram/messenger/MessageObject;

    .line 41734
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputcheckTextureViewPosition(Lorg/telegram/ui/ChatActivity;Z)V

    .line 41737
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->updateVisibleRows()V

    .line 41739
    new-instance v0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ChatActivity$ChatScrollCallback$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatActivity$ChatScrollCallback;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStartAnimation()V
    .locals 4

    .line 41714
    invoke-super {p0}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimationCallback;->onStartAnimation()V

    .line 41715
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrollCallbackAnimationIndex(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    invoke-static {}, Lorg/telegram/ui/ChatActivity;->-$$Nest$sfgetallowedNotificationsDuringChatListAnimations()[I

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->setAnimationInProgress(I[I)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputscrollCallbackAnimationIndex(Lorg/telegram/ui/ChatActivity;I)V

    .line 41716
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpinchToZoomHelper(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/PinchToZoomHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PinchToZoomHelper;->isInOverlayMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41717
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpinchToZoomHelper(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/PinchToZoomHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PinchToZoomHelper;->finishZoom()V

    :cond_0
    return-void
.end method

.method public recycleView(Landroid/view/View;)V
    .locals 4

    .line 41744
    instance-of v0, p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v0, :cond_1

    .line 41745
    check-cast p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v0, 0x0

    .line 41746
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->setDelegate(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;)V

    .line 41748
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatMessageCellsCache(Lorg/telegram/ui/ChatActivity;)Landroidx/collection/LongSparseArray;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$22600(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 41750
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatMessageCellsCache(Lorg/telegram/ui/ChatActivity;)Landroidx/collection/LongSparseArray;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$22700(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    int-to-long v1, v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    move-object v0, v3

    .line 41752
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
