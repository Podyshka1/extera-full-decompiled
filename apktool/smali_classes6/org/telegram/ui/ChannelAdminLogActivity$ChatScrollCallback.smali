.class public Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;
.super Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimationCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChannelAdminLogActivity;
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

.field final synthetic this$0:Lorg/telegram/ui/ChannelAdminLogActivity;


# direct methods
.method public static synthetic $r8$lambda$ntd3D5M6c6TSucXagEufNe1lsgg(Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;->lambda$onEndAnimation$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fputbottom(Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;->bottom:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastBottom(Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;->lastBottom:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastItemOffset(Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;->lastItemOffset:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputoffset(Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;->offset:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputposition(Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;->position:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputscrollTo(Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;->scrollTo:Lorg/telegram/messenger/MessageObject;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ChannelAdminLogActivity;)V
    .locals 1

    .line 4122
    iput-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimationCallback;-><init>()V

    const/4 p1, 0x0

    .line 4125
    iput p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;->position:I

    const/4 v0, 0x1

    .line 4126
    iput-boolean v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;->bottom:Z

    .line 4127
    iput p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;->offset:I

    return-void
.end method

.method private synthetic lambda$onEndAnimation$0()V
    .locals 2

    .line 4159
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetscrollCallbackAnimationIndex(Lorg/telegram/ui/ChannelAdminLogActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/NotificationCenter;->onAnimationFinish(I)V

    return-void
.end method


# virtual methods
.method public onEndAnimation()V
    .locals 4

    .line 4143
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;->scrollTo:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    .line 4145
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetchatAdapter(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->-$$Nest$fgetmessagesStartRow(Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetfilteredMessages(Lorg/telegram/ui/ChannelAdminLogActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;->scrollTo:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    if-ltz v0, :cond_1

    .line 4147
    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetchatLayoutManager(Lorg/telegram/ui/ChannelAdminLogActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;->lastItemOffset:I

    iget v3, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;->lastPadding:I

    add-int/2addr v2, v3

    iget-boolean v3, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;->lastBottom:Z

    invoke-virtual {v1, v0, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(IIZ)V

    goto :goto_0

    .line 4151
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetchatLayoutManager(Lorg/telegram/ui/ChannelAdminLogActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;->position:I

    iget v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;->offset:I

    iget-boolean v3, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;->bottom:Z

    invoke-virtual {v0, v1, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(IIZ)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 4153
    iput-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;->scrollTo:Lorg/telegram/messenger/MessageObject;

    .line 4154
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fputcheckTextureViewPosition(Lorg/telegram/ui/ChannelAdminLogActivity;Z)V

    .line 4157
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$mupdateVisibleRows(Lorg/telegram/ui/ChannelAdminLogActivity;)V

    .line 4159
    new-instance v0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStartAnimation()V
    .locals 4

    .line 4134
    invoke-super {p0}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimationCallback;->onStartAnimation()V

    .line 4135
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetscrollCallbackAnimationIndex(Lorg/telegram/ui/ChannelAdminLogActivity;)I

    move-result v2

    invoke-static {}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$sfgetallowedNotificationsDuringChatListAnimations()[I

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->setAnimationInProgress(I[I)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fputscrollCallbackAnimationIndex(Lorg/telegram/ui/ChannelAdminLogActivity;I)V

    return-void
.end method

.method public recycleView(Landroid/view/View;)V
    .locals 1

    .line 4164
    instance-of v0, p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v0, :cond_0

    .line 4165
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetchatMessageCellsCache(Lorg/telegram/ui/ChannelAdminLogActivity;)Ljava/util/ArrayList;

    move-result-object v0

    check-cast p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
