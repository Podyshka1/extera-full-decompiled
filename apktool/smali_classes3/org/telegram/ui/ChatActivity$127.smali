.class Lorg/telegram/ui/ChatActivity$127;
.super Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createMenu(Landroid/view/View;ZZFFZZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;

.field final synthetic val$finalReactionsLayout1:Lorg/telegram/ui/Components/ReactionsContainerLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/view/View;IILorg/telegram/ui/Components/ReactionsContainerLayout;)V
    .locals 0

    .line 31899
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$127;->this$0:Lorg/telegram/ui/ChatActivity;

    iput-object p5, p0, Lorg/telegram/ui/ChatActivity$127;->val$finalReactionsLayout1:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;-><init>(Landroid/view/View;II)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .line 31902
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    .line 31903
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$127;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->scrimPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eq v0, p0, :cond_0

    goto :goto_1

    .line 31906
    :cond_0
    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->getVisibleBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$127;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->messageSeenPrivacyBulletin:Lorg/telegram/ui/Components/Bulletin;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    if-eqz v1, :cond_1

    .line 31907
    invoke-virtual {v1}, Lorg/telegram/ui/Components/Bulletin;->hide()V

    .line 31908
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$127;->this$0:Lorg/telegram/ui/ChatActivity;

    iput-object v2, v0, Lorg/telegram/ui/ChatActivity;->messageSeenPrivacyBulletin:Lorg/telegram/ui/Components/Bulletin;

    .line 31910
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$127;->this$0:Lorg/telegram/ui/ChatActivity;

    iput-object v2, v0, Lorg/telegram/ui/ChatActivity;->scrimPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    .line 31911
    invoke-static {v0, v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputmenuDeleteItem(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)V

    .line 31912
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$127;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputscrimPopupWindowItems(Lorg/telegram/ui/ChatActivity;[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)V

    .line 31913
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$127;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatLayoutManager(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/GridLayoutManagerFixed;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManagerFixed;->setCanScrollVertically(Z)V

    .line 31914
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$127;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimPopupWindowHideDimOnDismiss(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31915
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$127;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ChatActivity;->dimBehindView(Z)V

    goto :goto_0

    .line 31917
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$127;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputscrimPopupWindowHideDimOnDismiss(Lorg/telegram/ui/ChatActivity;Z)V

    .line 31919
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$127;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 31920
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$127;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setAllowDrawCursor(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public dismiss(Z)V
    .locals 1

    .line 31926
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss(Z)V

    .line 31927
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$127;->val$finalReactionsLayout1:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-eqz v0, :cond_0

    .line 31928
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->dismissParent(Z)V

    :cond_0
    return-void
.end method
