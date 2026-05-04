.class Lorg/telegram/ui/Components/AudioPlayerAlert$4;
.super Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AudioPlayerAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V
    .locals 0

    .line 491
    iput-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$4;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearchCollapse()V
    .locals 2

    .line 494
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$4;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetsearching(Lorg/telegram/ui/Components/AudioPlayerAlert;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$4;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fputsearchWas(Lorg/telegram/ui/Components/AudioPlayerAlert;Z)V

    .line 496
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$4;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fputsearching(Lorg/telegram/ui/Components/AudioPlayerAlert;Z)V

    .line 497
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$4;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setAllowNestedScroll(Z)V

    .line 498
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$4;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->search(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSearchExpand()V
    .locals 3

    .line 504
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$4;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetlayoutManager(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fputsearchOpenPosition(Lorg/telegram/ui/Components/AudioPlayerAlert;I)V

    .line 505
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$4;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetlayoutManager(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$4;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetsearchOpenPosition(Lorg/telegram/ui/Components/AudioPlayerAlert;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 506
    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$4;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    :goto_0
    invoke-static {v1, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fputsearchOpenOffset(Lorg/telegram/ui/Components/AudioPlayerAlert;I)V

    .line 507
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$4;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fputsearching(Lorg/telegram/ui/Components/AudioPlayerAlert;Z)V

    .line 508
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$4;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->setAllowNestedScroll(Z)V

    .line 509
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$4;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onTextChanged(Landroid/widget/EditText;)V
    .locals 1

    .line 514
    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 515
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$4;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->search(Ljava/lang/String;)V

    return-void

    .line 517
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$4;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fputsearchWas(Lorg/telegram/ui/Components/AudioPlayerAlert;Z)V

    .line 518
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$4;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->search(Ljava/lang/String;)V

    return-void
.end method
