.class Lorg/telegram/ui/DialogsActivity$50;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListenerExtended;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->createSearchViewPager()V
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

    .line 13115
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$50;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;IFF)Z
    .locals 8

    .line 13118
    instance-of v0, p1, Lorg/telegram/ui/Cells/ProfileSearchCell;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Cells/ProfileSearchCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ProfileSearchCell;->isBlocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13119
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$50;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ProfileSearchCell;->getDialogId()J

    move-result-wide p3

    invoke-static {p2, p1, p3, p4}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$mshowPremiumBlockedToast(Lorg/telegram/ui/DialogsActivity;Landroid/view/View;J)V

    const/4 p1, 0x1

    return p1

    .line 13122
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$50;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchViewPager(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Components/SearchViewPager;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$50;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchViewPager(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v2

    iget-object v7, v2, Lorg/telegram/ui/Components/SearchViewPager;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    const/4 v6, -0x1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$monItemLongClick(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/Components/RecyclerListView;Landroid/view/View;IFFILandroidx/recyclerview/widget/RecyclerView$Adapter;)Z

    move-result p1

    return p1
.end method

.method public onLongClickRelease()V
    .locals 2

    .line 13134
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-le v1, v0, :cond_0

    .line 13135
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$50;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishPreviewFragment()V

    :cond_0
    return-void
.end method

.method public onMove(FF)V
    .locals 1

    .line 13127
    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    if-le v0, p1, :cond_0

    .line 13128
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$50;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->movePreviewFragment(F)V

    :cond_0
    return-void
.end method
