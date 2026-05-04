.class Lorg/telegram/ui/ChatActivity$59;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->showTagSelector()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    .line 10495
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$59;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic allowLongPress()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate$-CC;->$default$allowLongPress(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic drawBackground()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate$-CC;->$default$drawBackground(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFFIZ)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p7}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate$-CC;->$default$drawRoundRect(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;Landroid/graphics/Canvas;Landroid/graphics/RectF;FFFIZ)V

    return-void
.end method

.method public synthetic needEnterText()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate$-CC;->$default$needEnterText(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic onEmojiWindowDismissed()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate$-CC;->$default$onEmojiWindowDismissed(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;)V

    return-void
.end method

.method public onReactionClicked(Landroid/view/View;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;ZZ)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v8, p2

    .line 10498
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$59;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgettagSelector(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ReactionsContainerLayout;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_8

    .line 10499
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$59;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v1

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$59;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-nez v1, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$59;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v1

    if-nez v1, :cond_1

    .line 10500
    new-instance v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$59;->this$0:Lorg/telegram/ui/ChatActivity;

    const/16 v3, 0x18

    invoke-direct {v1, v2, v3, v14}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->show()V

    .line 10501
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$59;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1, v13}, Lorg/telegram/ui/ChatActivity;->clearSelectionMode(Z)V

    return-void

    .line 10506
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$59;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgettagSelector(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ReactionsContainerLayout;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getSelectedReactions()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    .line 10507
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    move v2, v13

    move v3, v2

    move v4, v3

    move v5, v4

    .line 10509
    :goto_0
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$59;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetselectedMessagesIds(Lorg/telegram/ui/ChatActivity;)[Lorg/telegram/ui/ChatActivity$SparseArrayWithTouch;

    move-result-object v6

    array-length v6, v6

    if-ge v2, v6, :cond_e

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    move v3, v13

    .line 10510
    :goto_1
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$59;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetselectedMessagesIds(Lorg/telegram/ui/ChatActivity;)[Lorg/telegram/ui/ChatActivity$SparseArrayWithTouch;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_d

    .line 10511
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$59;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetselectedMessagesIds(Lorg/telegram/ui/ChatActivity;)[Lorg/telegram/ui/ChatActivity$SparseArrayWithTouch;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    .line 10512
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->hasValidGroupId()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 10513
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$59;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v5, v4}, Lorg/telegram/ui/ChatActivity;->getValidGroupedMessage(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 10514
    iget-wide v5, v4, Lorg/telegram/messenger/MessageObject$GroupedMessages;->groupId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    .line 10516
    :cond_2
    iget-wide v5, v4, Lorg/telegram/messenger/MessageObject$GroupedMessages;->groupId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 10517
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->findPrimaryMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    if-nez v4, :cond_4

    :cond_3
    :goto_2
    move-object/from16 v20, v1

    move/from16 v21, v2

    move/from16 v19, v3

    goto/16 :goto_6

    .line 10520
    :cond_4
    invoke-virtual {v4, v8}, Lorg/telegram/messenger/MessageObject;->hasReaction(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)Z

    move-result v5

    if-ne v5, v15, :cond_5

    move-object v5, v1

    .line 10521
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$59;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    invoke-virtual {v1, v6, v13}, Lorg/telegram/ui/ChatActivity;->findMessageCell(IZ)Lorg/telegram/ui/Cells/BaseCell;

    move-result-object v6

    const/4 v11, 0x0

    const/4 v12, 0x1

    move v7, v3

    move-object v3, v4

    const/4 v4, 0x0

    move-object v9, v5

    const/4 v5, 0x0

    move v10, v2

    move-object v2, v6

    const/4 v6, 0x0

    move/from16 v19, v7

    const/4 v7, 0x0

    move-object/from16 v20, v9

    const/4 v9, 0x0

    move/from16 v21, v10

    const/4 v10, 0x0

    invoke-virtual/range {v1 .. v12}, Lorg/telegram/ui/ChatActivity;->selectReaction(Landroid/view/View;Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Components/ReactionsContainerLayout;Landroid/view/View;FFLorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;ZZZZ)V

    if-nez v15, :cond_6

    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    :cond_5
    move-object/from16 v20, v1

    move/from16 v21, v2

    move/from16 v19, v3

    move-object v3, v4

    .line 10526
    :cond_6
    :goto_3
    iget-object v1, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v1, :cond_8

    .line 10527
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$59;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatAdapter(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->isFiltered:Z

    if-eqz v1, :cond_7

    .line 10528
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$59;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmessagesDict(Lorg/telegram/ui/ChatActivity;)[Landroid/util/SparseArray;

    move-result-object v1

    aget-object v1, v1, v13

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_8

    .line 10529
    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v1, :cond_8

    .line 10530
    iget-object v2, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    goto :goto_4

    .line 10532
    :cond_7
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$59;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatAdapter(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->isFiltered:Z

    if-nez v1, :cond_8

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$59;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->searchingReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    if-eqz v1, :cond_8

    move/from16 v16, v14

    .line 10536
    :cond_8
    :goto_4
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$59;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatAdapter(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->isFiltered:Z

    if-eqz v1, :cond_c

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$59;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->searchingReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-virtual {v3, v1}, Lorg/telegram/messenger/MessageObject;->hasReaction(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 10538
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$59;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ChatActivity;->getValidGroupedMessage(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v1

    if-eqz v1, :cond_9

    move v2, v13

    .line 10540
    :goto_5
    iget-object v3, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_a

    .line 10541
    iget-object v3, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    .line 10542
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$59;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v4

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/MediaDataController;->removeMessageFromResults(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 10545
    :cond_9
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$59;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MediaDataController;->removeMessageFromResults(I)V

    .line 10547
    :cond_a
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$59;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmessagesSearchAdapter(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MessagesSearchAdapter;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 10548
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$59;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmessagesSearchAdapter(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MessagesSearchAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->notifyDataSetChanged()V

    :cond_b
    move/from16 v16, v14

    move/from16 v17, v16

    :cond_c
    :goto_6
    add-int/lit8 v3, v19, 0x1

    move-object/from16 v1, v20

    move/from16 v2, v21

    goto/16 :goto_1

    :cond_d
    move-object/from16 v20, v1

    move/from16 v21, v2

    add-int/lit8 v2, v21, 0x1

    move/from16 v3, v16

    move/from16 v4, v17

    move/from16 v5, v18

    goto/16 :goto_0

    :cond_e
    if-eqz v3, :cond_f

    .line 10556
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$59;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1, v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mupdateFilteredMessages(Lorg/telegram/ui/ChatActivity;Z)V

    .line 10558
    :cond_f
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$59;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1, v14}, Lorg/telegram/ui/ChatActivity;->clearSelectionMode(Z)V

    if-lez v5, :cond_13

    .line 10562
    iget-wide v1, v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_11

    .line 10563
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaDataController;->getReactionsMap()Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    if-nez v1, :cond_10

    goto :goto_8

    .line 10567
    :cond_10
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->activate_animation:Lorg/telegram/tgnet/TLRPC$Document;

    goto :goto_7

    .line 10569
    :cond_11
    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v3, v1, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findDocument(IJ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    :goto_7
    if-nez v1, :cond_12

    goto :goto_8

    .line 10576
    :cond_12
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$59;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v5, v1, v3}, Lorg/telegram/ui/Components/BulletinFactory;->createMessagesTaggedBulletin(ILorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v1

    invoke-virtual {v1, v14}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    :cond_13
    :goto_8
    return-void
.end method
