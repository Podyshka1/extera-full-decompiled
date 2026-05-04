.class Lorg/telegram/ui/ChatActivity$41;
.super Lorg/telegram/ui/Components/ChatActivityEnterTopView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;)V
    .locals 0

    .line 8253
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$41;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/ChatActivityEnterTopView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setTranslationY(F)V
    .locals 2

    .line 8256
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 8257
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$41;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_0

    .line 8258
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 8260
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    .line 8261
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$41;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mhideHints(Lorg/telegram/ui/ChatActivity;Z)V

    .line 8262
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$41;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    .line 8265
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$41;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetprogressView(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8266
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$41;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetprogressView(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 8268
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$41;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$minvalidateChatListViewTopPadding(Lorg/telegram/ui/ChatActivity;)V

    .line 8269
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$41;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->invalidateMessagesVisiblePart()V

    .line 8270
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$41;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 8271
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 8283
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 8285
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$41;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    .line 8288
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$41;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetprogressView(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 8289
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$41;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetprogressView(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method
