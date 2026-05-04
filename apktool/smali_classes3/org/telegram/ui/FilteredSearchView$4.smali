.class Lorg/telegram/ui/FilteredSearchView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListenerExtended;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/FilteredSearchView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/FilteredSearchView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/FilteredSearchView;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lorg/telegram/ui/FilteredSearchView$4;->this$0:Lorg/telegram/ui/FilteredSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;IFF)Z
    .locals 2

    .line 337
    instance-of p2, p1, Lorg/telegram/ui/Cells/SharedDocumentCell;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 338
    iget-object p2, p0, Lorg/telegram/ui/FilteredSearchView$4;->this$0:Lorg/telegram/ui/FilteredSearchView;

    move-object p3, p1

    check-cast p3, Lorg/telegram/ui/Cells/SharedDocumentCell;

    invoke-virtual {p3}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object p3

    invoke-static {p2, p3, p1, v1}, Lorg/telegram/ui/FilteredSearchView;->-$$Nest$monItemLongClick(Lorg/telegram/ui/FilteredSearchView;Lorg/telegram/messenger/MessageObject;Landroid/view/View;I)Z

    goto :goto_0

    .line 339
    :cond_0
    instance-of p2, p1, Lorg/telegram/ui/Cells/SharedLinkCell;

    if-eqz p2, :cond_1

    .line 340
    iget-object p2, p0, Lorg/telegram/ui/FilteredSearchView$4;->this$0:Lorg/telegram/ui/FilteredSearchView;

    move-object p3, p1

    check-cast p3, Lorg/telegram/ui/Cells/SharedLinkCell;

    invoke-virtual {p3}, Lorg/telegram/ui/Cells/SharedLinkCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object p3

    invoke-static {p2, p3, p1, v1}, Lorg/telegram/ui/FilteredSearchView;->-$$Nest$monItemLongClick(Lorg/telegram/ui/FilteredSearchView;Lorg/telegram/messenger/MessageObject;Landroid/view/View;I)Z

    goto :goto_0

    .line 341
    :cond_1
    instance-of p2, p1, Lorg/telegram/ui/Cells/SharedAudioCell;

    if-eqz p2, :cond_2

    .line 342
    iget-object p2, p0, Lorg/telegram/ui/FilteredSearchView$4;->this$0:Lorg/telegram/ui/FilteredSearchView;

    move-object p3, p1

    check-cast p3, Lorg/telegram/ui/Cells/SharedAudioCell;

    invoke-virtual {p3}, Lorg/telegram/ui/Cells/SharedAudioCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object p3

    invoke-static {p2, p3, p1, v1}, Lorg/telegram/ui/FilteredSearchView;->-$$Nest$monItemLongClick(Lorg/telegram/ui/FilteredSearchView;Lorg/telegram/messenger/MessageObject;Landroid/view/View;I)Z

    goto :goto_0

    .line 343
    :cond_2
    instance-of p2, p1, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz p2, :cond_3

    .line 344
    iget-object p2, p0, Lorg/telegram/ui/FilteredSearchView$4;->this$0:Lorg/telegram/ui/FilteredSearchView;

    move-object p3, p1

    check-cast p3, Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-virtual {p3}, Lorg/telegram/ui/Cells/ContextLinkCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p3

    invoke-static {p2, p3, p1, v1}, Lorg/telegram/ui/FilteredSearchView;->-$$Nest$monItemLongClick(Lorg/telegram/ui/FilteredSearchView;Lorg/telegram/messenger/MessageObject;Landroid/view/View;I)Z

    goto :goto_0

    .line 345
    :cond_3
    instance-of p2, p1, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz p2, :cond_5

    .line 346
    iget-object p2, p0, Lorg/telegram/ui/FilteredSearchView$4;->this$0:Lorg/telegram/ui/FilteredSearchView;

    invoke-static {p2}, Lorg/telegram/ui/FilteredSearchView;->-$$Nest$fgetuiCallback(Lorg/telegram/ui/FilteredSearchView;)Lorg/telegram/ui/FilteredSearchView$UiCallback;

    move-result-object p2

    invoke-interface {p2}, Lorg/telegram/ui/FilteredSearchView$UiCallback;->actionModeShowing()Z

    move-result p2

    if-nez p2, :cond_4

    .line 347
    move-object p2, p1

    check-cast p2, Lorg/telegram/ui/Cells/DialogCell;

    invoke-virtual {p2, p3, p4}, Lorg/telegram/ui/Cells/DialogCell;->isPointInsideAvatar(FF)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 348
    iget-object p1, p0, Lorg/telegram/ui/FilteredSearchView$4;->this$0:Lorg/telegram/ui/FilteredSearchView;

    invoke-static {p1}, Lorg/telegram/ui/FilteredSearchView;->-$$Nest$fgetchatPreviewDelegate(Lorg/telegram/ui/FilteredSearchView;)Lorg/telegram/ui/Components/SearchViewPager$ChatPreviewDelegate;

    move-result-object p1

    iget-object p3, p0, Lorg/telegram/ui/FilteredSearchView$4;->this$0:Lorg/telegram/ui/FilteredSearchView;

    iget-object p3, p3, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-interface {p1, p3, p2}, Lorg/telegram/ui/Components/SearchViewPager$ChatPreviewDelegate;->startChatPreview(Lorg/telegram/ui/Components/RecyclerListView;Lorg/telegram/ui/Cells/DialogCell;)V

    return v0

    .line 352
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/FilteredSearchView$4;->this$0:Lorg/telegram/ui/FilteredSearchView;

    move-object p3, p1

    check-cast p3, Lorg/telegram/ui/Cells/DialogCell;

    invoke-virtual {p3}, Lorg/telegram/ui/Cells/DialogCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object p3

    invoke-static {p2, p3, p1, v1}, Lorg/telegram/ui/FilteredSearchView;->-$$Nest$monItemLongClick(Lorg/telegram/ui/FilteredSearchView;Lorg/telegram/messenger/MessageObject;Landroid/view/View;I)Z

    :cond_5
    :goto_0
    return v0
.end method

.method public onLongClickRelease()V
    .locals 1

    .line 364
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView$4;->this$0:Lorg/telegram/ui/FilteredSearchView;

    invoke-static {v0}, Lorg/telegram/ui/FilteredSearchView;->-$$Nest$fgetchatPreviewDelegate(Lorg/telegram/ui/FilteredSearchView;)Lorg/telegram/ui/Components/SearchViewPager$ChatPreviewDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/Components/SearchViewPager$ChatPreviewDelegate;->finish()V

    return-void
.end method

.method public onMove(FF)V
    .locals 0

    .line 359
    iget-object p1, p0, Lorg/telegram/ui/FilteredSearchView$4;->this$0:Lorg/telegram/ui/FilteredSearchView;

    invoke-static {p1}, Lorg/telegram/ui/FilteredSearchView;->-$$Nest$fgetchatPreviewDelegate(Lorg/telegram/ui/FilteredSearchView;)Lorg/telegram/ui/Components/SearchViewPager$ChatPreviewDelegate;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/telegram/ui/Components/SearchViewPager$ChatPreviewDelegate;->move(F)V

    return-void
.end method
