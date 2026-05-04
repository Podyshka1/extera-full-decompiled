.class Lorg/telegram/ui/DialogsActivity$13;
.super Lorg/telegram/ui/Components/DialogsItemAnimator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;

.field final synthetic val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/Components/RecyclerListView;Lorg/telegram/ui/DialogsActivity$ViewPage;)V
    .locals 0

    .line 4270
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    iput-object p3, p0, Lorg/telegram/ui/DialogsActivity$13;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/DialogsItemAnimator;-><init>(Lorg/telegram/ui/Components/RecyclerListView;)V

    return-void
.end method


# virtual methods
.method public onRemoveStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 4273
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->onRemoveStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 4274
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$13;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetlayoutManager(Lorg/telegram/ui/DialogsActivity$ViewPage;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    if-nez p1, :cond_2

    .line 4275
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$13;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetlayoutManager(Lorg/telegram/ui/DialogsActivity$ViewPage;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4277
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 4279
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$13;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetarchivePullViewState(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 4280
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$13;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fputarchivePullViewState(Lorg/telegram/ui/DialogsActivity$ViewPage;I)V

    .line 4282
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$13;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetpullForegroundDrawable(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/PullForegroundDrawable;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4283
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$13;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetpullForegroundDrawable(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/PullForegroundDrawable;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/PullForegroundDrawable;->doNotShow()V

    :cond_2
    return-void
.end method
