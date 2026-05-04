.class Lorg/telegram/ui/Stories/PeerStoriesView$23;
.super Lorg/telegram/ui/Components/ChatAttachAlert;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/PeerStoriesView;->createChatAttachView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/PeerStoriesView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 3732
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$23;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Lorg/telegram/ui/Components/ChatAttachAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method public onDismissAnimationStart()V
    .locals 2

    .line 3735
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$23;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetchatAttachAlert(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/ChatAttachAlert;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3736
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$23;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetchatAttachAlert(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/ChatAttachAlert;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setFocusable(Z)V

    .line 3738
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$23;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3739
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$23;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_1
    return-void
.end method
