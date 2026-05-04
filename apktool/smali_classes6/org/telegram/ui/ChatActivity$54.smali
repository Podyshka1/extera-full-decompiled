.class Lorg/telegram/ui/ChatActivity$54;
.super Lorg/telegram/ui/Components/SearchTagsList;
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
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V
    .locals 0

    .line 9129
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$54;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object p1, p0

    invoke-direct/range {p1 .. p9}, Lorg/telegram/ui/Components/SearchTagsList;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V

    return-void
.end method


# virtual methods
.method protected onShownUpdate(Z)V
    .locals 3

    .line 9155
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$54;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getBackgroundColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/SearchTagsList;->setBackgroundColor(I)V

    .line 9156
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$54;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgettagSelector(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ReactionsContainerLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9157
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$54;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgettagSelector(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ReactionsContainerLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$54;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetcontentPanTranslation(Lorg/telegram/ui/ChatActivity;)F

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SearchTagsList;->getCurrentHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    if-eqz p1, :cond_1

    .line 9160
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$54;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputinvalidateChatListViewTopPadding(Lorg/telegram/ui/ChatActivity;Z)V

    .line 9161
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$54;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mupdateChatListViewTopPadding(Lorg/telegram/ui/ChatActivity;)V

    :cond_1
    return-void
.end method

.method protected setFilter(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)Z
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 9132
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$54;->this$0:Lorg/telegram/ui/ChatActivity;

    iput-object v1, v2, Lorg/telegram/ui/ChatActivity;->searchingReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    .line 9133
    :goto_0
    invoke-static {v2, v5}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputsearchingFiltered(Lorg/telegram/ui/ChatActivity;Z)V

    if-nez v1, :cond_1

    .line 9135
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$54;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaDataController;->clearFoundMessageObjects()V

    .line 9136
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$54;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1, v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$msetFilterMessages(Lorg/telegram/ui/ChatActivity;Z)V

    .line 9137
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$54;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v2, -0x1

    invoke-static {v1, v3, v3, v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mupdateSearchButtons(Lorg/telegram/ui/ChatActivity;III)V

    .line 9139
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$54;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1, v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mupdateSearchUpDownButtonVisibility(Lorg/telegram/ui/ChatActivity;Z)V

    .line 9140
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$54;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1, v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mupdatePagedownButtonVisibility(Lorg/telegram/ui/ChatActivity;Z)V

    .line 9141
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$54;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputsearchingQuery(Lorg/telegram/ui/ChatActivity;Ljava/lang/String;)V

    .line 9142
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$54;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v5

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$54;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchingQuery(Lorg/telegram/ui/ChatActivity;)Ljava/lang/String;

    move-result-object v6

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$54;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v7

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$54;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmergeDialogId(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v9

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$54;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$6000(Lorg/telegram/ui/ChatActivity;)I

    move-result v11

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$54;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetthreadMessageId(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v13

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$54;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchingUserMessages(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v16

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$54;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchingChatMessages(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v17

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$54;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchingQuery(Lorg/telegram/ui/ChatActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$54;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->searchingReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move/from16 v18, v3

    goto :goto_2

    :cond_3
    :goto_1
    move/from16 v18, v4

    :goto_2
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$54;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->searchingReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    const/4 v12, 0x0

    const/4 v15, 0x0

    move-object/from16 v19, v1

    invoke-virtual/range {v5 .. v19}, Lorg/telegram/messenger/MediaDataController;->searchMessagesInChat(Ljava/lang/String;JJIIJZLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ZLorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    .line 9143
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$54;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    return v4
.end method

.method public updateTags(Z)V
    .locals 0

    .line 9149
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/SearchTagsList;->updateTags(Z)V

    .line 9150
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$54;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->isSearchFieldVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SearchTagsList;->hasFilters()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$54;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchingHashtag(Lorg/telegram/ui/ChatActivity;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/SearchTagsList;->show(Z)V

    return-void
.end method
