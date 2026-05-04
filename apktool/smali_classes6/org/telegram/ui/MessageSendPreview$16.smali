.class Lorg/telegram/ui/MessageSendPreview$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/MessageSendPreview;->allowEffectSelector(Lorg/telegram/ui/ActionBar/BaseFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/MessageSendPreview;

.field final synthetic val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;


# direct methods
.method public static synthetic $r8$lambda$cVCKSFzvSggwf7yrw0zWbUvzbvc(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 3

    .line 1342
    new-instance v0, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;

    invoke-direct {v0}, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;-><init>()V

    const/4 v1, 0x1

    .line 1343
    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->transitionFromLeft:Z

    const/4 v1, 0x0

    .line 1344
    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->allowNestedScroll:Z

    .line 1345
    new-instance v1, Lorg/telegram/ui/PremiumPreviewFragment;

    const-string v2, "effect"

    invoke-direct {v1, v2}, Lorg/telegram/ui/PremiumPreviewFragment;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;)[Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/MessageSendPreview;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .line 1259
    iput-object p1, p0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    iput-object p2, p0, Lorg/telegram/ui/MessageSendPreview$16;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

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
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    if-eqz v1, :cond_19

    .line 1262
    iget-object v2, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v2}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteffectSelector(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/ReactionsContainerLayout;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_c

    .line 1264
    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    iget v2, v2, Lorg/telegram/ui/MessageSendPreview;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    iget-boolean v2, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->premium:Z

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    .line 1265
    :goto_0
    iget-object v5, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v5}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetmainMessageCell(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v5

    const-wide/16 v7, 0x0

    if-eqz v5, :cond_c

    .line 1266
    iget-object v5, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v5}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetmainMessageCell(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v10

    if-nez v10, :cond_2

    goto/16 :goto_c

    .line 1269
    :cond_2
    iget-object v5, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v11, v5, Lorg/telegram/tgnet/TLRPC$Message;->effect:J

    .line 1271
    iget-wide v13, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->effectId:J

    cmp-long v9, v13, v11

    if-nez v9, :cond_3

    .line 1272
    iget v9, v5, Lorg/telegram/tgnet/TLRPC$Message;->flags2:I

    and-int/lit8 v9, v9, -0x5

    iput v9, v5, Lorg/telegram/tgnet/TLRPC$Message;->flags2:I

    .line 1273
    iput-wide v7, v5, Lorg/telegram/tgnet/TLRPC$Message;->effect:J

    move v5, v3

    goto :goto_1

    .line 1276
    :cond_3
    iget v9, v5, Lorg/telegram/tgnet/TLRPC$Message;->flags2:I

    or-int/lit8 v9, v9, 0x4

    iput v9, v5, Lorg/telegram/tgnet/TLRPC$Message;->flags2:I

    .line 1277
    iput-wide v13, v5, Lorg/telegram/tgnet/TLRPC$Message;->effect:J

    move v5, v4

    :goto_1
    if-nez v2, :cond_7

    .line 1280
    iget-object v9, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v9}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetmainMessageCell(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v9

    iget-object v13, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v13, v10}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$mgetValidGroupedMessage(Lorg/telegram/ui/MessageSendPreview;Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v13

    iget-object v14, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v14}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetmessageObjects(Lorg/telegram/ui/MessageSendPreview;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-le v14, v3, :cond_4

    :goto_2
    move-wide v14, v11

    move-object v11, v13

    goto :goto_3

    :cond_4
    move v3, v4

    goto :goto_2

    :goto_3
    const/4 v13, 0x0

    move-wide v15, v14

    const/4 v14, 0x0

    move v12, v3

    move-wide/from16 p3, v7

    move-wide v6, v15

    invoke-virtual/range {v9 .. v14}, Lorg/telegram/ui/Cells/ChatMessageCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;ZZZ)V

    .line 1281
    iget-object v3, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v3}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteffectSelector(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/ReactionsContainerLayout;

    move-result-object v3

    if-eqz v5, :cond_5

    const/4 v8, 0x0

    goto :goto_4

    :cond_5
    move-object v8, v1

    :goto_4
    invoke-virtual {v3, v8}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setSelectedReactionAnimated(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    .line 1282
    iget-object v3, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v3}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteffectSelector(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/ReactionsContainerLayout;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v3, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v3}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteffectSelector(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/ReactionsContainerLayout;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->getSelectAnimatedEmojiDialog()Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 1283
    iget-object v3, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v3}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteffectSelector(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/ReactionsContainerLayout;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->getSelectAnimatedEmojiDialog()Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    move-result-object v3

    if-eqz v5, :cond_6

    const/4 v1, 0x0

    :cond_6
    invoke-virtual {v3, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setSelectedReaction(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    .line 1284
    iget-object v1, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v1}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteffectSelector(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/ReactionsContainerLayout;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->invalidate()V

    goto :goto_5

    :cond_7
    move-wide/from16 p3, v7

    move-wide v6, v11

    .line 1287
    :cond_8
    :goto_5
    iget-object v1, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v1}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteffectOverlay(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/EmojiAnimationsOverlay;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/EmojiAnimationsOverlay;->clear()V

    if-nez v5, :cond_9

    .line 1289
    iget-object v1, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v1}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteffectOverlay(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/EmojiAnimationsOverlay;

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v3}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetmainMessageCell(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v3

    invoke-virtual {v1, v3, v4, v4, v4}, Lorg/telegram/ui/EmojiAnimationsOverlay;->showAnimationForCell(Lorg/telegram/ui/Cells/ChatMessageCell;IZZ)Z

    :cond_9
    if-eqz v2, :cond_a

    .line 1292
    iget-object v1, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iput-wide v6, v1, Lorg/telegram/tgnet/TLRPC$Message;->effect:J

    cmp-long v3, v6, p3

    if-nez v3, :cond_a

    .line 1294
    iget v3, v1, Lorg/telegram/tgnet/TLRPC$Message;->flags2:I

    and-int/lit8 v3, v3, -0x5

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$Message;->flags2:I

    .line 1297
    :cond_a
    iget-object v1, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v1}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetsendButton(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 1298
    iget-object v1, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v1}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetsendButton(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    move-result-object v1

    iget-object v3, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->effect:J

    invoke-virtual {v1, v3, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->setEffect(J)V

    .line 1300
    :cond_b
    iget-object v1, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    iget-object v3, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->effect:J

    invoke-virtual {v1, v3, v4}, Lorg/telegram/ui/MessageSendPreview;->onEffectChange(J)V

    goto/16 :goto_b

    :cond_c
    move-wide/from16 p3, v7

    .line 1301
    iget-object v5, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v5}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetcameraRect(Lorg/telegram/ui/MessageSendPreview;)Landroid/graphics/RectF;

    move-result-object v5

    if-eqz v5, :cond_17

    .line 1303
    iget-wide v5, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->effectId:J

    iget-object v7, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v7}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteffectId(Lorg/telegram/ui/MessageSendPreview;)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_d

    .line 1304
    iget-object v5, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    move-wide/from16 v6, p3

    invoke-static {v5, v6, v7}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fputeffectId(Lorg/telegram/ui/MessageSendPreview;J)V

    move v5, v3

    goto :goto_6

    .line 1307
    :cond_d
    iget-object v5, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    iget-wide v6, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->effectId:J

    invoke-static {v5, v6, v7}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fputeffectId(Lorg/telegram/ui/MessageSendPreview;J)V

    move v5, v4

    .line 1309
    :goto_6
    iget-object v6, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v6}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetsendButton(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    move-result-object v6

    if-eqz v6, :cond_e

    .line 1310
    iget-object v6, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v6}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetsendButton(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v7}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteffectId(Lorg/telegram/ui/MessageSendPreview;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->setEffect(J)V

    .line 1312
    :cond_e
    iget-object v6, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v6}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteffectId(Lorg/telegram/ui/MessageSendPreview;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lorg/telegram/ui/MessageSendPreview;->onEffectChange(J)V

    if-nez v2, :cond_15

    .line 1314
    iget-object v6, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v6}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteffectId(Lorg/telegram/ui/MessageSendPreview;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_f

    const/4 v6, 0x0

    goto :goto_7

    :cond_f
    iget-object v6, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    iget v6, v6, Lorg/telegram/ui/MessageSendPreview;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v7}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteffectId(Lorg/telegram/ui/MessageSendPreview;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lorg/telegram/messenger/MessagesController;->getEffect(J)Lorg/telegram/tgnet/TLRPC$TL_availableEffect;

    move-result-object v6

    .line 1315
    :goto_7
    iget-object v7, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v7}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteffectDrawable(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v7

    if-eqz v7, :cond_11

    .line 1316
    iget-object v7, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v7}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteffectId(Lorg/telegram/ui/MessageSendPreview;)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_12

    if-nez v6, :cond_10

    goto :goto_8

    .line 1319
    :cond_10
    iget-object v7, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v7}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteffectDrawable(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v7

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_availableEffect;->emoticon:Ljava/lang/String;

    invoke-static {v6}, Lorg/telegram/messenger/Emoji;->getEmojiDrawable(Ljava/lang/CharSequence;)Lorg/telegram/messenger/Emoji$EmojiDrawable;

    move-result-object v6

    invoke-virtual {v7, v6, v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    :cond_11
    const/4 v7, 0x0

    goto :goto_9

    .line 1317
    :cond_12
    :goto_8
    iget-object v6, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v6}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteffectDrawable(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    .line 1322
    :goto_9
    iget-object v3, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v3}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteffectSelector(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/ReactionsContainerLayout;

    move-result-object v3

    if-eqz v5, :cond_13

    move-object v6, v7

    goto :goto_a

    :cond_13
    move-object v6, v1

    :goto_a
    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setSelectedReactionAnimated(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    .line 1323
    iget-object v3, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v3}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteffectSelector(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/ReactionsContainerLayout;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v3

    if-eqz v3, :cond_15

    iget-object v3, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v3}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteffectSelector(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/ReactionsContainerLayout;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->getSelectAnimatedEmojiDialog()Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 1324
    iget-object v3, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v3}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteffectSelector(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/ReactionsContainerLayout;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->getSelectAnimatedEmojiDialog()Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    move-result-object v3

    if-eqz v5, :cond_14

    move-object v1, v7

    :cond_14
    invoke-virtual {v3, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setSelectedReaction(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    .line 1325
    iget-object v1, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v1}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteffectSelector(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/ReactionsContainerLayout;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->invalidate()V

    .line 1328
    :cond_15
    iget-object v1, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v1}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteffectOverlay(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/EmojiAnimationsOverlay;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/EmojiAnimationsOverlay;->clear()V

    if-nez v5, :cond_17

    .line 1330
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 1331
    iget-object v3, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v3}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteffectId(Lorg/telegram/ui/MessageSendPreview;)J

    move-result-wide v5

    iput-wide v5, v1, Lorg/telegram/tgnet/TLRPC$Message;->effect:J

    .line 1332
    iget-object v3, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v3}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteffectId(Lorg/telegram/ui/MessageSendPreview;)J

    move-result-wide v5

    const-wide/16 v8, 0x0

    cmp-long v3, v5, v8

    if-eqz v3, :cond_16

    .line 1333
    iget v3, v1, Lorg/telegram/tgnet/TLRPC$Message;->flags2:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$Message;->flags2:I

    .line 1335
    :cond_16
    new-instance v9, Lorg/telegram/messenger/MessageObject;

    iget-object v3, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    iget v3, v3, Lorg/telegram/ui/MessageSendPreview;->currentAccount:I

    invoke-direct {v9, v3, v1, v4, v4}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 1336
    iget-object v1, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v1}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteffectOverlay(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/EmojiAnimationsOverlay;

    move-result-object v5

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v5 .. v15}, Lorg/telegram/ui/EmojiAnimationsOverlay;->createDrawingObject(Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/MessageObject;IZZFFZ)Z

    :cond_17
    :goto_b
    if-eqz v2, :cond_18

    .line 1339
    iget-object v1, v0, Lorg/telegram/ui/MessageSendPreview$16;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v1, :cond_18

    .line 1340
    iget-object v1, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v1}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/MessageSendPreview;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    iget-object v2, v2, Lorg/telegram/ui/MessageSendPreview;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$raw;->star_premium_2:I

    sget v3, Lorg/telegram/messenger/R$string;->AnimatedEffectPremium:I

    .line 1341
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/MessageSendPreview$16;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance v5, Lorg/telegram/ui/MessageSendPreview$16$$ExternalSyntheticLambda0;

    invoke-direct {v5, v4}, Lorg/telegram/ui/MessageSendPreview$16$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-static {v3, v5}, Lorg/telegram/messenger/AndroidUtilities;->premiumText(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v1

    .line 1347
    invoke-virtual {v1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 1349
    :cond_18
    iget-object v1, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v1}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteffectsView(Lorg/telegram/ui/MessageSendPreview;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :cond_19
    :goto_c
    return-void
.end method
