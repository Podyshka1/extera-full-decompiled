.class Lorg/telegram/ui/Stories/PeerStoriesView$17;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/PeerStoriesView;->fragmentForLimit()Lorg/telegram/ui/ActionBar/BaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/PeerStoriesView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 2850
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$17;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getParentActivity()Landroid/app/Activity;
    .locals 1

    .line 2858
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$17;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$mfindActivity(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 2

    .line 2863
    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$17$1;

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$17;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$17$1;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$17;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-object v0
.end method

.method public isLightStatusBar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z
    .locals 1

    .line 2874
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$17;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetstoryViewer(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2875
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$17;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetstoryViewer(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 1

    .line 2882
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$17;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetstoryViewer(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2883
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$17;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetstoryViewer(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->showDialog(Landroid/app/Dialog;)Z

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    .line 2885
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-object p1
.end method
