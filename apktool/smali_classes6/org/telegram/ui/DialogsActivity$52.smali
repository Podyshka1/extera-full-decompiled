.class Lorg/telegram/ui/DialogsActivity$52;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Stories/recorder/StoryRecorder$ClosingViewProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->openStoriesRecorder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;)V
    .locals 0

    .line 13407
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$52;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getView(J)Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;
    .locals 1

    .line 13434
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$52;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->dialogStoriesCell:Lorg/telegram/ui/Stories/DialogStoriesCell;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Stories/DialogStoriesCell;->findStoryCell(J)Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->fromStoryCell(Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    move-result-object p1

    return-object p1
.end method

.method public preLayout(JLjava/lang/Runnable;)V
    .locals 4

    .line 13410
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$52;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity;->dialogStoriesCell:Lorg/telegram/ui/Stories/DialogStoriesCell;

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 13411
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/DialogsActivity;->scrollToTop(ZZ)V

    .line 13412
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$52;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, v2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputinvalidateScrollY(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 13413
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$52;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-eqz v0, :cond_1

    .line 13414
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$52;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    cmp-long v0, p1, v2

    if-nez v0, :cond_0

    goto :goto_0

    .line 13417
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$52;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->dialogStoriesCell:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Stories/DialogStoriesCell;->scrollTo(J)Z

    goto :goto_1

    .line 13415
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$52;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity;->dialogStoriesCell:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/DialogStoriesCell;->scrollToFirstCell()V

    .line 13419
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$52;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v1

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/DialogsActivity$52$1;

    invoke-direct {p2, p0, p3}, Lorg/telegram/ui/DialogsActivity$52$1;-><init>(Lorg/telegram/ui/DialogsActivity$52;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void

    .line 13428
    :cond_2
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void
.end method
