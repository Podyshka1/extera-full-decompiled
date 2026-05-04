.class Lorg/telegram/ui/ChatActivity$142;
.super Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->didPressReaction(Landroid/view/View;Lorg/telegram/tgnet/TLRPC$ReactionCount;ZFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/view/View;II)V
    .locals 0

    .line 44688
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$142;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;-><init>(Landroid/view/View;II)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .line 44691
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    .line 44692
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$142;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity;->scrimPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eq v1, p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 44695
    iput-object v1, v0, Lorg/telegram/ui/ChatActivity;->scrimPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    .line 44696
    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputmenuDeleteItem(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)V

    .line 44697
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$142;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputscrimPopupWindowItems(Lorg/telegram/ui/ChatActivity;[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)V

    .line 44698
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$142;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatLayoutManager(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/GridLayoutManagerFixed;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManagerFixed;->setCanScrollVertically(Z)V

    .line 44699
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$142;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimPopupWindowHideDimOnDismiss(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44700
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$142;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ChatActivity;->dimBehindView(Z)V

    goto :goto_0

    .line 44702
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$142;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputscrimPopupWindowHideDimOnDismiss(Lorg/telegram/ui/ChatActivity;Z)V

    .line 44704
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$142;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 44705
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$142;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setAllowDrawCursor(Z)V

    :cond_2
    :goto_1
    return-void
.end method
