.class Lorg/telegram/ui/ChatActivity$18;
.super Lorg/telegram/ui/Components/ChatAvatarContainer;
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
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 4337
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/telegram/ui/Components/ChatAvatarContainer;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected canSearch()Z
    .locals 2

    .line 4345
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-boolean v1, v0, Lorg/telegram/ui/ChatActivity;->isInsideContainer:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->isInPreviewMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3800(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v1, :cond_1

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearching(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->isThreadChat()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-boolean v0, v0, Lorg/telegram/ui/ChatActivity;->isTopic:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected openSearch()V
    .locals 2

    .line 4350
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->isInPreviewMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-boolean v1, v0, Lorg/telegram/ui/ChatActivity;->isComments:Z

    if-nez v1, :cond_1

    .line 4351
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$misSupportedTags(Lorg/telegram/ui/ChatActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChatActivity;->openSearchWithText(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4352
    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_1
    return-void
.end method

.method protected useAnimatedSubtitle()Z
    .locals 2

    .line 4340
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatMode(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
