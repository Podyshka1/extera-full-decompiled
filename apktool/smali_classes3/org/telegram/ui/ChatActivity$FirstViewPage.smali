.class public Lorg/telegram/ui/ChatActivity$FirstViewPage;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FirstViewPage"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;

.field private final views:Ljava/util/ArrayList;

.field private final viewsToMakeVisible:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;)V
    .locals 0

    .line 44396
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$FirstViewPage;->this$0:Lorg/telegram/ui/ChatActivity;

    .line 44397
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 44393
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$FirstViewPage;->views:Ljava/util/ArrayList;

    .line 44394
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$FirstViewPage;->viewsToMakeVisible:Ljava/util/ArrayList;

    return-void
.end method

.method private updateViews()V
    .locals 2

    .line 44401
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$FirstViewPage;->views:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 44402
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$FirstViewPage;->views:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$FirstViewPage;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgettopChatPanelView(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44403
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$FirstViewPage;->views:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$FirstViewPage;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44404
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$FirstViewPage;->views:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$FirstViewPage;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmessagesSearchListContainer(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44405
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$FirstViewPage;->views:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$FirstViewPage;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmentionContainer(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/MentionsContainerView;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44406
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$FirstViewPage;->views:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$FirstViewPage;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetfloatingDateView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatActionCell;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44407
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$FirstViewPage;->views:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$FirstViewPage;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44408
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$FirstViewPage;->views:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$FirstViewPage;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsideControlsButtonsLayout(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44409
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$FirstViewPage;->views:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$FirstViewPage;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatInputViewsContainer(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/chat/ChatInputViewsContainer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44411
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$FirstViewPage;->views:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .line 44427
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 44428
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$FirstViewPage;->viewsToMakeVisible:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Landroid/view/View;

    .line 44429
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 44431
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$FirstViewPage;->viewsToMakeVisible:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 5

    .line 44436
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 44437
    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$FirstViewPage;->updateViews()V

    .line 44438
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$FirstViewPage;->views:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Landroid/view/View;

    .line 44439
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    const/16 v4, 0x8

    .line 44440
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 44441
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$FirstViewPage;->viewsToMakeVisible:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setTranslationX(F)V
    .locals 4

    .line 44416
    invoke-super {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 44417
    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$FirstViewPage;->updateViews()V

    .line 44418
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$FirstViewPage;->views:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 44420
    invoke-virtual {v3, p1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    :cond_1
    return-void
.end method
