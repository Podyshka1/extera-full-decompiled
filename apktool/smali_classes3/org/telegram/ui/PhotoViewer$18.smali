.class Lorg/telegram/ui/PhotoViewer$18;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->setParentActivity(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;

.field final synthetic val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# direct methods
.method public static synthetic $r8$lambda$2_AWr8LVhTcZAKG9RU1H4ilkQ_U(Lorg/telegram/ui/PhotoViewer$18;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer$18;->lambda$onItemClick$13(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4-lhf1Ww99Kswn4k1vr3jxPHvWE(Lorg/telegram/ui/PhotoViewer$18;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer$18;->lambda$onItemClick$16()V

    return-void
.end method

.method public static synthetic $r8$lambda$7jesGk4pVEjotuS0jc0DW6dr-3c(Lorg/telegram/ui/PhotoViewer$18;[ZLorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PhotoViewer$18;->lambda$onItemClick$12([ZLorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$AUvKwAqL3z0KwMLmGS0jO5c_BEQ(Lorg/telegram/ui/PhotoViewer$18;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/UserConfig;Lorg/telegram/tgnet/TLRPC$Photo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PhotoViewer$18;->lambda$onItemClick$14(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/UserConfig;Lorg/telegram/tgnet/TLRPC$Photo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ay6LoxlKmFTe-uCh4EBoicpKGqw(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 5388
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$C-VVnmf37rQCqqU82H9XPWd5ny0(Lorg/telegram/ui/PhotoViewer$18;Lorg/telegram/messenger/UserConfig;Lorg/telegram/tgnet/TLRPC$Photo;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/PhotoViewer$18;->lambda$onItemClick$15(Lorg/telegram/messenger/UserConfig;Lorg/telegram/tgnet/TLRPC$Photo;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$C6-F63b5SDNueq2HDJQJYb4hCxQ(Lorg/telegram/ui/PhotoViewer$18;ZLjava/util/ArrayList;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/PhotoViewer$18;->lambda$onItemClick$5(ZLjava/util/ArrayList;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$DByPMEWOKVqRs7eXFuuu9y8_HOs(Lorg/telegram/ui/PhotoViewer$18;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer$18;->lambda$onItemClick$17(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public static synthetic $r8$lambda$I8UTJjhjsglflEO_u3Ukoheb75I([ZLandroid/view/View;)V
    .locals 3

    .line 5539
    check-cast p1, Lorg/telegram/ui/Cells/CheckBoxCell;

    const/4 v0, 0x0

    .line 5540
    aget-boolean v1, p0, v0

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    aput-boolean v1, p0, v0

    .line 5541
    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$MK0Q8uaOgPyRf7tuud0VT9wx-iQ(Lorg/telegram/ui/PhotoViewer$18;Ljava/util/ArrayList;ZLorg/telegram/ui/ChatActivity;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZZIILorg/telegram/ui/TopicsFragment;)Z
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p11}, Lorg/telegram/ui/PhotoViewer$18;->lambda$onItemClick$10(Ljava/util/ArrayList;ZLorg/telegram/ui/ChatActivity;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZZIILorg/telegram/ui/TopicsFragment;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$T796cqY_kN5uNFOTH8K1nkAlVoY(Ljava/lang/Runnable;Landroid/net/Uri;)V
    .locals 0

    .line 5231
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XXCFPgaCn26pxYPbFJeTqo6FE8M(Lorg/telegram/ui/PhotoViewer$18;ZLandroid/net/Uri;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PhotoViewer$18;->lambda$onItemClick$0(ZLandroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z_8Lg9HONe3IilhOh2TXIDPo0h0(Lorg/telegram/ui/PhotoViewer$18;ZLorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PhotoViewer$18;->lambda$onItemClick$7(ZLorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$g3vaG-3NVDV0sV3aF_kzlaGvYgY(Lorg/telegram/ui/PhotoViewer$18;Ljava/util/ArrayList;ZLorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/PhotoViewer$18;->lambda$onItemClick$8(Ljava/util/ArrayList;ZLorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$n5aQCRhkGXBrQBK6azRhUWsAzAo(Lorg/telegram/ui/PhotoViewer$18;[I[IZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PhotoViewer$18;->lambda$onItemClick$3([I[IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$souyLzXov1UL_7I1-GM8QfmMsX8(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 5236
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$tgFxdJIe2JSoZJZRWrUHg1Eq_sw(Lorg/telegram/ui/PhotoViewer$18;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer$18;->lambda$onItemClick$19()V

    return-void
.end method

.method public static synthetic $r8$lambda$uvhM1O-kqsnZQsqwcsLNDQuBwlM(Lorg/telegram/ui/PhotoViewer$18;ZLandroid/net/Uri;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PhotoViewer$18;->lambda$onItemClick$1(ZLandroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y_YYT4fG15cEWFLezNJRGMnfgBU(Lorg/telegram/ui/PhotoViewer$18;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer$18;->lambda$onItemClick$18()V

    return-void
.end method

.method public static synthetic $r8$lambda$yd86Z8mI5URggreQ5_0MdktsEWo(Lorg/telegram/ui/PhotoViewer$18;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PhotoViewer$18;->lambda$onItemClick$2(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$zzh5MiVvSnD2U0PstL_vsVaCvfM(Lorg/telegram/ui/PhotoViewer;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mupdateCaptionTranslated(Lorg/telegram/ui/PhotoViewer;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 5109
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    iput-object p2, p0, Lorg/telegram/ui/PhotoViewer$18;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method

.method private synthetic lambda$onItemClick$0(ZLandroid/net/Uri;)V
    .locals 2

    .line 5170
    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object p2

    const v0, -0x6ddddde

    const/4 v1, -0x1

    invoke-static {p2, p1, v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createSaveToGalleryBulletin(Landroid/widget/FrameLayout;ZII)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$onItemClick$1(ZLandroid/net/Uri;)V
    .locals 2

    .line 5201
    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object p2

    const v0, -0x6ddddde

    const/4 v1, -0x1

    invoke-static {p2, p1, v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createSaveToGalleryBulletin(Landroid/widget/FrameLayout;ZII)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$onItemClick$10(Ljava/util/ArrayList;ZLorg/telegram/ui/ChatActivity;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZZIILorg/telegram/ui/TopicsFragment;)Z
    .locals 30

    move-object/from16 v0, p0

    move/from16 v5, p2

    move-object/from16 v11, p5

    .line 5412
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-gt v1, v13, :cond_0

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessagesStorage$TopicKey;

    iget-wide v1, v1, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/PhotoViewer;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    if-eqz p6, :cond_1

    :cond_0
    move-object/from16 v1, p1

    goto :goto_1

    .line 5432
    :cond_1
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessagesStorage$TopicKey;

    .line 5433
    iget-wide v2, v1, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    .line 5434
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 5435
    const-string/jumbo v6, "scrollToTopOnResume"

    invoke-virtual {v4, v6, v13}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5436
    invoke-static {v2, v3}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 5437
    const-string v6, "enc_id"

    invoke-static {v2, v3}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v2

    invoke-virtual {v4, v6, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 5438
    :cond_2
    invoke-static {v2, v3}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 5439
    const-string/jumbo v6, "user_id"

    invoke-virtual {v4, v6, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 5441
    :cond_3
    const-string v6, "chat_id"

    neg-long v2, v2

    invoke-virtual {v4, v6, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 5443
    :goto_0
    const-string v2, "forward_noquote"

    invoke-virtual {v4, v2, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5444
    new-instance v2, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v2, v4}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 5445
    iget-wide v3, v1, Lorg/telegram/messenger/MessagesStorage$TopicKey;->topicId:J

    const-wide/16 v6, 0x0

    cmp-long v3, v3, v6

    if-eqz v3, :cond_4

    .line 5446
    invoke-static {v2, v1}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->applyTopic(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessagesStorage$TopicKey;)V

    .line 5448
    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentActivity(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v1, v2, v13, v12}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5449
    invoke-virtual {v2, v5}, Lorg/telegram/ui/ChatActivity;->setForwardParams(Z)V

    move-object/from16 v1, p1

    .line 5450
    invoke-virtual {v2, v13, v1}, Lorg/telegram/ui/ChatActivity;->showFieldPanelForForward(ZLjava/util/ArrayList;)V

    goto/16 :goto_4

    .line 5452
    :cond_5
    invoke-virtual/range {p4 .. p4}, Lorg/telegram/ui/DialogsActivity;->finishFragment()V

    goto/16 :goto_4

    :goto_1
    move v14, v12

    .line 5413
    :goto_2
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v14, v2, :cond_7

    .line 5414
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessagesStorage$TopicKey;

    iget-wide v3, v2, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    if-eqz p6, :cond_6

    .line 5416
    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v2

    invoke-interface/range {p6 .. p6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-wide/from16 v16, v3

    invoke-static/range {v15 .. v29}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZIILorg/telegram/messenger/MessageObject$SendAnimationData;Z)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)V

    goto :goto_3

    :cond_6
    move-wide/from16 v16, v3

    .line 5418
    :goto_3
    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v2

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    move-wide/from16 v3, v16

    invoke-virtual/range {v1 .. v10}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/util/ArrayList;JZZZIJ)I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p1

    move/from16 v5, p2

    goto :goto_2

    .line 5420
    :cond_7
    invoke-virtual/range {p4 .. p4}, Lorg/telegram/ui/DialogsActivity;->finishFragment()V

    if-eqz p3, :cond_9

    .line 5422
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/ui/ChatActivity;->getUndoView()Lorg/telegram/ui/Components/UndoView;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 5424
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v13, :cond_8

    .line 5425
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessagesStorage$TopicKey;

    iget-wide v2, v2, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x35

    invoke-virtual {v1, v2, v3, v5, v4}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Object;)V

    goto :goto_4

    .line 5427
    :cond_8
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/16 v8, 0x35

    move-object/from16 p1, v1

    move-object/from16 p5, v2

    move-object/from16 p6, v3

    move-object/from16 p7, v4

    move-object/from16 p8, v5

    move-wide/from16 p2, v6

    move/from16 p4, v8

    invoke-virtual/range {p1 .. p8}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    :cond_9
    :goto_4
    return v13
.end method

.method private synthetic lambda$onItemClick$12([ZLorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 16

    move-object/from16 v0, p0

    .line 5551
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetplaceProvider(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentIndex(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    invoke-interface {v1, v2}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->onDeletePhoto(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 5552
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-virtual {v1, v2, v2}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    return-void

    .line 5555
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetimagesArr(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    if-nez v1, :cond_4

    .line 5556
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentIndex(Lorg/telegram/ui/PhotoViewer;)I

    move-result v1

    if-ltz v1, :cond_12

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentIndex(Lorg/telegram/ui/PhotoViewer;)I

    move-result v1

    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetimagesArr(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v1, v6, :cond_1

    goto/16 :goto_4

    .line 5559
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetimagesArr(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentIndex(Lorg/telegram/ui/PhotoViewer;)I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    .line 5560
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isSent()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 5561
    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-virtual {v6, v2, v2}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    .line 5562
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 5563
    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetslideshowMessageId(Lorg/telegram/ui/PhotoViewer;)I

    move-result v6

    if-eqz v6, :cond_2

    .line 5564
    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetslideshowMessageId(Lorg/telegram/ui/PhotoViewer;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5566
    :cond_2
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5571
    :goto_0
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    cmp-long v3, v6, v3

    if-eqz v3, :cond_3

    .line 5572
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 5573
    iget-object v3, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5574
    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/PhotoViewer;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v3

    move-object v10, v3

    move-object v9, v5

    goto :goto_1

    :cond_3
    move-object v9, v5

    move-object v10, v9

    .line 5577
    :goto_1
    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/PhotoViewer;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v11

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getQuickReplyId()I

    move-result v13

    aget-boolean v14, p1, v2

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getChatMode()I

    move-result v15

    invoke-virtual/range {v7 .. v15}, Lorg/telegram/messenger/MessagesController;->deleteMessages(Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$EncryptedChat;JIZI)V

    return-void

    .line 5579
    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetavatarsArr(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v6, -0x1

    if-nez v1, :cond_e

    .line 5580
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentIndex(Lorg/telegram/ui/PhotoViewer;)I

    move-result v1

    if-ltz v1, :cond_12

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentIndex(Lorg/telegram/ui/PhotoViewer;)I

    move-result v1

    iget-object v7, v0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v7}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetavatarsArr(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v1, v7, :cond_5

    goto/16 :goto_4

    .line 5583
    :cond_5
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetimagesArrMessages(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v7, v0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v7}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentIndex(Lorg/telegram/ui/PhotoViewer;)I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v1, :cond_6

    .line 5585
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 5586
    iget v7, v1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5587
    iget-object v7, v0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v7}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/PhotoViewer;)I

    move-result v7

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->getDialogId(Lorg/telegram/tgnet/TLRPC$Message;)J

    move-result-wide v11

    iget v13, v1, Lorg/telegram/tgnet/TLRPC$Message;->quick_reply_shortcut_id:I

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v7 .. v15}, Lorg/telegram/messenger/MessagesController;->deleteMessages(Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$EncryptedChat;JIZI)V

    .line 5588
    iget-object v7, v0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v7}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/PhotoViewer;)I

    move-result v7

    invoke-static {v7}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v7

    sget v8, Lorg/telegram/messenger/NotificationCenter;->reloadDialogPhotos:I

    new-array v9, v2, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 5590
    :cond_6
    iget-object v7, v0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v7}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$misCurrentAvatarSet(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 5591
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetavatarsDialogId(Lorg/telegram/ui/PhotoViewer;)J

    move-result-wide v6

    cmp-long v1, v6, v3

    if-lez v1, :cond_7

    .line 5592
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/PhotoViewer;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, v5}, Lorg/telegram/messenger/MessagesController;->deleteUserPhoto(Lorg/telegram/tgnet/TLRPC$InputPhoto;)V

    goto :goto_2

    .line 5594
    :cond_7
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/PhotoViewer;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetavatarsDialogId(Lorg/telegram/ui/PhotoViewer;)J

    move-result-wide v4

    neg-long v4, v4

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v3 .. v15}, Lorg/telegram/messenger/MessagesController;->changeChatAvatar(JLorg/telegram/tgnet/TLRPC$TL_inputChatPhoto;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$VideoSize;DLjava/lang/String;Lorg/telegram/tgnet/TLRPC$FileLocation;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/Runnable;)V

    .line 5596
    :goto_2
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-virtual {v1, v2, v2}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    return-void

    .line 5598
    :cond_8
    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetavatarsArr(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v7, v0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v7}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentIndex(Lorg/telegram/ui/PhotoViewer;)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Photo;

    if-nez v5, :cond_9

    goto/16 :goto_4

    .line 5602
    :cond_9
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_inputPhoto;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoto;-><init>()V

    .line 5603
    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$InputPhoto;->id:J

    .line 5604
    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$Photo;->access_hash:J

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$InputPhoto;->access_hash:J

    .line 5605
    iget-object v8, v5, Lorg/telegram/tgnet/TLRPC$Photo;->file_reference:[B

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$InputPhoto;->file_reference:[B

    if-nez v8, :cond_a

    .line 5607
    new-array v8, v2, [B

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$InputPhoto;->file_reference:[B

    .line 5609
    :cond_a
    iget-object v8, v0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v8}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetavatarsDialogId(Lorg/telegram/ui/PhotoViewer;)J

    move-result-wide v8

    cmp-long v3, v8, v3

    if-lez v3, :cond_b

    .line 5610
    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/PhotoViewer;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3, v7}, Lorg/telegram/messenger/MessagesController;->deleteUserPhoto(Lorg/telegram/tgnet/TLRPC$InputPhoto;)V

    .line 5612
    :cond_b
    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/PhotoViewer;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v4}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetavatarsDialogId(Lorg/telegram/ui/PhotoViewer;)J

    move-result-wide v7

    iget-wide v4, v5, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    invoke-virtual {v3, v7, v8, v4, v5}, Lorg/telegram/messenger/MessagesStorage;->clearUserPhoto(JJ)V

    .line 5613
    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetimagesArrLocations(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v4}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentIndex(Lorg/telegram/ui/PhotoViewer;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5614
    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetimagesArrLocationsSizes(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v4}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentIndex(Lorg/telegram/ui/PhotoViewer;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5615
    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetimagesArrLocationsVideo(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v4}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentIndex(Lorg/telegram/ui/PhotoViewer;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5616
    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetimagesArrMessages(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v4}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentIndex(Lorg/telegram/ui/PhotoViewer;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5617
    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetavatarsArr(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v4}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentIndex(Lorg/telegram/ui/PhotoViewer;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5618
    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetimagesArrLocations(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 5619
    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-virtual {v3, v2, v2}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    goto :goto_3

    .line 5621
    :cond_c
    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentIndex(Lorg/telegram/ui/PhotoViewer;)I

    move-result v3

    .line 5622
    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v4}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetavatarsArr(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_d

    .line 5623
    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetavatarsArr(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 5625
    :cond_d
    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v4, v6}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputcurrentIndex(Lorg/telegram/ui/PhotoViewer;I)V

    .line 5626
    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v4, v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$msetImageIndex(Lorg/telegram/ui/PhotoViewer;I)V

    :goto_3
    if-nez v1, :cond_12

    .line 5629
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/PhotoViewer;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/NotificationCenter;->reloadDialogPhotos:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void

    .line 5632
    :cond_e
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetsecureDocuments(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    .line 5633
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetplaceProvider(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-result-object v1

    if-nez v1, :cond_f

    goto :goto_4

    .line 5636
    :cond_f
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetsecureDocuments(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentIndex(Lorg/telegram/ui/PhotoViewer;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5637
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetplaceProvider(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentIndex(Lorg/telegram/ui/PhotoViewer;)I

    move-result v3

    invoke-interface {v1, v3}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->deleteImageAtIndex(I)V

    .line 5638
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetsecureDocuments(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 5639
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-virtual {v1, v2, v2}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    return-void

    .line 5641
    :cond_10
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentIndex(Lorg/telegram/ui/PhotoViewer;)I

    move-result v1

    .line 5642
    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetsecureDocuments(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_11

    .line 5643
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetsecureDocuments(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 5645
    :cond_11
    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2, v6}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputcurrentIndex(Lorg/telegram/ui/PhotoViewer;I)V

    .line 5646
    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2, v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$msetImageIndex(Lorg/telegram/ui/PhotoViewer;I)V

    :cond_12
    :goto_4
    return-void
.end method

.method private synthetic lambda$onItemClick$13(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 2

    .line 5742
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->FrameCopied:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createCopyBulletin(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$onItemClick$14(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/UserConfig;Lorg/telegram/tgnet/TLRPC$Photo;)V
    .locals 3

    .line 5781
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_photos_photo;

    if-eqz v0, :cond_1

    .line 5782
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_photos_photo;

    .line 5783
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_photos_photo;->users:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 5784
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p2, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 5785
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_photos_photo;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_photo;

    if-eqz v1, :cond_1

    .line 5786
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetavatarsArr(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p3

    if-ltz p3, :cond_0

    .line 5788
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetavatarsArr(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_photos_photo;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {v1, p3, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz v0, :cond_1

    .line 5791
    iget-object p3, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_photos_photo;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    iput-wide v1, p3, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_id:J

    .line 5792
    invoke-virtual {p2, v0}, Lorg/telegram/messenger/UserConfig;->setCurrentUser(Lorg/telegram/tgnet/TLRPC$User;)V

    const/4 p1, 0x1

    .line 5793
    invoke-virtual {p2, p1}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onItemClick$15(Lorg/telegram/messenger/UserConfig;Lorg/telegram/tgnet/TLRPC$Photo;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 5780
    new-instance p4, Lorg/telegram/ui/PhotoViewer$18$$ExternalSyntheticLambda17;

    invoke-direct {p4, p0, p3, p1, p2}, Lorg/telegram/ui/PhotoViewer$18$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/PhotoViewer$18;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/UserConfig;Lorg/telegram/tgnet/TLRPC$Photo;)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onItemClick$16()V
    .locals 2

    .line 5852
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetmenuItem(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 5855
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetmenuItem(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    return-void
.end method

.method private synthetic lambda$onItemClick$17(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 2

    .line 5871
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->PhotoCopied:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createCopyBulletin(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$onItemClick$18()V
    .locals 2

    .line 5882
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetmenuItem(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 5883
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetmenuItem(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    return-void
.end method

.method private synthetic lambda$onItemClick$19()V
    .locals 2

    .line 5890
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetmenuItem(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 5891
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetmenuItem(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    return-void
.end method

.method private synthetic lambda$onItemClick$2(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 6

    .line 5187
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 5192
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez p1, :cond_1

    .line 5193
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentIndex(Lorg/telegram/ui/PhotoViewer;)I

    move-result p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mgetFileLocation(Lorg/telegram/ui/PhotoViewer;I[J)Lorg/telegram/tgnet/TLObject;

    move-result-object p1

    .line 5194
    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/PhotoViewer;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object p1

    goto :goto_0

    .line 5196
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/PhotoViewer;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object p1

    .line 5198
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v2

    if-eqz p1, :cond_2

    .line 5200
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 5201
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentActivity(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;

    move-result-object v1

    new-instance v5, Lorg/telegram/ui/PhotoViewer$18$$ExternalSyntheticLambda18;

    invoke-direct {v5, p0, v2}, Lorg/telegram/ui/PhotoViewer$18$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/PhotoViewer$18;Z)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/MediaController;->saveFile(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void

    .line 5203
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mshowDownloadAlert(Lorg/telegram/ui/PhotoViewer;)V

    return-void
.end method

.method private synthetic lambda$onItemClick$3([I[IZ)V
    .locals 2

    const/4 v0, 0x0

    .line 5210
    aget v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p1, v0

    .line 5211
    aget p1, p2, v0

    if-ne v1, p1, :cond_0

    .line 5212
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object p1

    aget p2, p2, v0

    const v0, -0x6ddddde

    const/4 v1, -0x1

    invoke-static {p1, p2, p3, v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createSaveToGalleryBulletin(Landroid/widget/FrameLayout;IZII)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_0
    return-void
.end method

.method private synthetic lambda$onItemClick$5(ZLjava/util/ArrayList;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 10

    const/4 p3, 0x1

    .line 5207
    new-array p4, p3, [I

    .line 5208
    new-array v0, p3, [I

    .line 5209
    new-instance v1, Lorg/telegram/ui/PhotoViewer$18$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0, v0, p4, p1}, Lorg/telegram/ui/PhotoViewer$18$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/PhotoViewer$18;[I[IZ)V

    const/4 p1, 0x0

    move v0, p1

    .line 5215
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 5216
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    if-nez v2, :cond_0

    goto :goto_2

    .line 5222
    :cond_0
    iget-object v3, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v3

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v3, :cond_1

    .line 5223
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/PhotoViewer;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v4}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentIndex(Lorg/telegram/ui/PhotoViewer;)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mgetFileLocation(Lorg/telegram/ui/PhotoViewer;I[J)Lorg/telegram/tgnet/TLObject;

    move-result-object v4

    invoke-virtual {v3, v4, p3}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v3

    goto :goto_1

    .line 5225
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/PhotoViewer;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    iget-object v4, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v3

    .line 5227
    :goto_1
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v6

    if-eqz v3, :cond_2

    .line 5229
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5230
    aget v2, p4, p1

    add-int/2addr v2, p3

    aput v2, p4, p1

    .line 5231
    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentActivity(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;

    move-result-object v5

    new-instance v9, Lorg/telegram/ui/PhotoViewer$18$$ExternalSyntheticLambda20;

    invoke-direct {v9, v1}, Lorg/telegram/ui/PhotoViewer$18$$ExternalSyntheticLambda20;-><init>(Ljava/lang/Runnable;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v4 .. v9}, Lorg/telegram/messenger/MediaController;->saveFile(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method private synthetic lambda$onItemClick$7(ZLorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 5380
    new-instance p2, Ljava/util/ArrayList;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 5381
    iget-object p3, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5382
    iget-object p3, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p3, p2, p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mshowShareAlert(Lorg/telegram/ui/PhotoViewer;Ljava/util/ArrayList;Z)V

    return-void
.end method

.method private synthetic lambda$onItemClick$8(Ljava/util/ArrayList;ZLorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 5385
    iget-object p3, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p3, p1, p2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mshowShareAlert(Lorg/telegram/ui/PhotoViewer;Ljava/util/ArrayList;Z)V

    return-void
.end method


# virtual methods
.method public canOpenMenu()Z
    .locals 9

    .line 5916
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentSecureDocument(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/SecureDocument;

    move-result-object v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 5918
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentFileLocationVideo(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 5919
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentFileLocationVideo(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->getFileLocation(Lorg/telegram/messenger/ImageLocation;)Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v4}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentFileLocationVideo(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/ui/PhotoViewer;->getFileLocationExt(Lorg/telegram/messenger/ImageLocation;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentFileLocationVideo(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->getFileLocationExt(Lorg/telegram/messenger/ImageLocation;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "mp4"

    invoke-static {v5, v6}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetavatarsDialogId(Lorg/telegram/ui/PhotoViewer;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    :cond_1
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetisEvent(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    move v5, v1

    goto :goto_0

    :cond_3
    move v5, v2

    :goto_0
    invoke-virtual {v0, v3, v4, v5}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    .line 5920
    new-instance v3, Ljava/io/File;

    const/4 v4, 0x4

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5921
    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v4}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/PhotoViewer;)I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentFileLocationVideo(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->getFileLocation(Lorg/telegram/messenger/ImageLocation;)Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentFileLocationVideo(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->getFileLocationExt(Lorg/telegram/messenger/ImageLocation;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v4

    .line 5922
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    return v2

    :cond_5
    :goto_1
    return v1

    .line 5923
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetpageBlocksAdapter(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PageBlocksAdapter;

    move-result-object v0

    if-eqz v0, :cond_7

    return v1

    :cond_7
    return v2

    :cond_8
    :goto_2
    return v1
.end method

.method public onItemClick(I)V
    .locals 25

    move-object/from16 v1, p0

    move/from16 v0, p1

    const/4 v2, 0x1

    .line 5732
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-ne v0, v5, :cond_2

    .line 5113
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetphotoPaintView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetphotoPaintView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2e

    .line 5116
    :cond_0
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$misCaptionOpen(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5117
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, v4}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mcloseCaptionEnter(Lorg/telegram/ui/PhotoViewer;Z)V

    return-void

    .line 5120
    :cond_1
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-virtual {v0, v2, v4}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    return-void

    :cond_2
    const/4 v6, -0x3

    .line 5121
    const-string v7, "AllNMedia"

    const-string v8, "AllNPhotos"

    const-string v9, "ThisMedia"

    const-string v10, "ThisPhoto"

    const/4 v13, 0x2

    const-string v14, "Cancel"

    const/4 v15, 0x4

    const-wide/16 v16, 0x0

    const/4 v11, 0x0

    if-ne v0, v13, :cond_1b

    .line 5122
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-le v0, v3, :cond_3

    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->NO_SCOPED_STORAGE:Z

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentActivity(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;

    move-result-object v0

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    .line 5123
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentActivity(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;

    move-result-object v0

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v15}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 5127
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 5128
    iget-object v3, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentChatActivity(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentChatActivity(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v3

    iget-object v5, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getGroupId()J

    move-result-wide v12

    invoke-virtual {v3, v12, v13}, Lorg/telegram/ui/ChatActivity;->getGroup(J)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v3

    goto :goto_0

    :cond_5
    move-object v3, v11

    :goto_0
    if-eqz v3, :cond_6

    .line 5130
    iget-object v3, v3, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 5132
    :cond_6
    iget-object v3, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5135
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v3, v2, :cond_15

    .line 5138
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 5139
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v0, :cond_8

    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v0, :cond_8

    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v0, :cond_8

    .line 5140
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentIndex(Lorg/telegram/ui/PhotoViewer;)I

    move-result v3

    invoke-static {v0, v3, v11}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mgetFileLocation(Lorg/telegram/ui/PhotoViewer;I[J)Lorg/telegram/tgnet/TLObject;

    move-result-object v0

    .line 5141
    iget-object v3, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/PhotoViewer;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v0

    .line 5142
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_7

    .line 5143
    new-instance v2, Ljava/io/File;

    invoke-static {v15}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v2

    :cond_7
    :goto_2
    move-object v11, v0

    goto :goto_3

    .line 5146
    :cond_8
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v0

    goto :goto_2

    .line 5148
    :goto_3
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v4

    :cond_9
    :goto_4
    move v7, v4

    goto/16 :goto_7

    .line 5149
    :cond_a
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentFileLocationVideo(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 5150
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentFileLocationVideo(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->getFileLocationExt(Lorg/telegram/messenger/ImageLocation;)Ljava/lang/String;

    move-result-object v0

    .line 5151
    iget-object v3, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/PhotoViewer;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    iget-object v5, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentFileLocationVideo(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->getFileLocation(Lorg/telegram/messenger/ImageLocation;)Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-result-object v5

    iget-object v6, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentFileLocationVideo(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->getFileLocationExt(Lorg/telegram/messenger/ImageLocation;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "mp4"

    invoke-static {v6, v7}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetavatarsDialogId(Lorg/telegram/ui/PhotoViewer;)J

    move-result-wide v8

    cmp-long v6, v8, v16

    if-nez v6, :cond_c

    :cond_b
    iget-object v6, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetisEvent(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v6

    if-eqz v6, :cond_d

    :cond_c
    move v6, v2

    goto :goto_5

    :cond_d
    move v6, v4

    :goto_5
    invoke-virtual {v3, v5, v0, v6}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 5152
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_e

    .line 5153
    iget-object v3, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/PhotoViewer;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    iget-object v5, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentFileLocationVideo(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->getFileLocation(Lorg/telegram/messenger/ImageLocation;)Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-result-object v5

    invoke-virtual {v3, v5, v0, v4}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v3

    :cond_e
    move-object v11, v3

    if-eqz v0, :cond_f

    .line 5156
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :cond_f
    if-eqz v0, :cond_10

    .line 5158
    const-string/jumbo v3, "webm"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string v3, "gif"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_6

    :cond_10
    move v2, v4

    :cond_11
    :goto_6
    move v7, v2

    goto :goto_7

    .line 5159
    :cond_12
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetpageBlocksAdapter(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PageBlocksAdapter;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 5160
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetpageBlocksAdapter(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PageBlocksAdapter;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentIndex(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    invoke-interface {v0, v2}, Lorg/telegram/ui/PhotoViewer$PageBlocksAdapter;->getFile(I)Ljava/io/File;

    move-result-object v11

    .line 5161
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetpageBlocksAdapter(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PageBlocksAdapter;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentIndex(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    invoke-interface {v0, v2}, Lorg/telegram/ui/PhotoViewer$PageBlocksAdapter;->isVideo(I)Z

    move-result v4

    goto/16 :goto_4

    :goto_7
    if-eqz v11, :cond_13

    .line 5165
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_13

    .line 5166
    new-instance v0, Ljava/io/File;

    invoke-static {v15}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v11, v0

    :cond_13
    if-eqz v11, :cond_14

    .line 5169
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 5170
    invoke-virtual {v11}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentActivity(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;

    move-result-object v6

    new-instance v10, Lorg/telegram/ui/PhotoViewer$18$$ExternalSyntheticLambda0;

    invoke-direct {v10, v1, v7}, Lorg/telegram/ui/PhotoViewer$18$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PhotoViewer$18;Z)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v5 .. v10}, Lorg/telegram/messenger/MediaController;->saveFile(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void

    .line 5172
    :cond_14
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mshowDownloadAlert(Lorg/telegram/ui/PhotoViewer;)V

    return-void

    :cond_15
    move v3, v4

    move v5, v3

    .line 5176
    :goto_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v3, v11, :cond_17

    if-nez v5, :cond_17

    .line 5177
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v11

    if-eqz v11, :cond_16

    move v5, v2

    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 5182
    :cond_17
    new-instance v3, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v11, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v11}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentActivity(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;

    move-result-object v11

    iget-object v12, v1, Lorg/telegram/ui/PhotoViewer$18;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v3, v11, v12}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const-string v11, "SaveGroupMedia"

    sget v12, Lorg/telegram/messenger/R$string;->SaveGroupMedia:I

    .line 5183
    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v3

    const-string v11, "SaveGroupMediaMessage"

    sget v12, Lorg/telegram/messenger/R$string;->SaveGroupMediaMessage:I

    .line 5184
    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v3

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_listeningText:I

    .line 5185
    invoke-virtual {v3, v11}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setDialogButtonColorKey(I)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v3

    if-nez v5, :cond_18

    .line 5186
    sget v9, Lorg/telegram/messenger/R$string;->ThisPhoto:I

    invoke-static {v10, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    goto :goto_9

    :cond_18
    sget v10, Lorg/telegram/messenger/R$string;->ThisMedia:I

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    :goto_9
    new-instance v10, Lorg/telegram/ui/PhotoViewer$18$$ExternalSyntheticLambda8;

    invoke-direct {v10, v1}, Lorg/telegram/ui/PhotoViewer$18$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/PhotoViewer$18;)V

    invoke-virtual {v3, v9, v10}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v3

    if-nez v5, :cond_19

    .line 5206
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v8, v7, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_a

    :cond_19
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v7, v8, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_a
    new-instance v7, Lorg/telegram/ui/PhotoViewer$18$$ExternalSyntheticLambda9;

    invoke-direct {v7, v1, v5, v0}, Lorg/telegram/ui/PhotoViewer$18$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/PhotoViewer$18;ZLjava/util/ArrayList;)V

    invoke-virtual {v3, v4, v7}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/R$string;->Cancel:I

    .line 5235
    invoke-static {v14, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/PhotoViewer$18$$ExternalSyntheticLambda10;

    invoke-direct {v4}, Lorg/telegram/ui/PhotoViewer$18$$ExternalSyntheticLambda10;-><init>()V

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    .line 5237
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    .line 5238
    iget-object v3, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_dialogBackground:I

    invoke-static {v3, v4}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mgetThemedColor(Lorg/telegram/ui/PhotoViewer;I)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->setBackgroundColor(I)V

    .line 5239
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    .line 5240
    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v3

    .line 5241
    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_1a

    .line 5242
    move-object v4, v3

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v5, v6}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mgetThemedColor(Lorg/telegram/ui/PhotoViewer;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5243
    iget-object v4, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v4, v6}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mgetThemedColor(Lorg/telegram/ui/PhotoViewer;I)I

    move-result v4

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getRoundRectSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 5244
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButtonsLayout()Landroid/view/ViewGroup;

    move-result-object v4

    instance-of v4, v4, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_1a

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButtonsLayout()Landroid/view/ViewGroup;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v4

    if-ne v4, v2, :cond_1a

    .line 5245
    invoke-virtual {v3}, Landroid/view/View;->bringToFront()V

    .line 5248
    :cond_1a
    iget-object v2, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_actionBarItems:I

    invoke-static {v2, v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mgetThemedColor(Lorg/telegram/ui/PhotoViewer;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->setTextColor(I)V

    return-void

    :cond_1b
    const/16 v12, 0x18

    if-ne v0, v12, :cond_1c

    .line 5251
    invoke-static {}, Lorg/telegram/messenger/chromecast/ChromecastController;->getInstance()Lorg/telegram/messenger/chromecast/ChromecastController;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mgetCurrentChromecastMedia(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/chromecast/ChromecastMediaVariations;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/chromecast/ChromecastController;->setCurrentMediaAndCastIfNeeded(Lorg/telegram/messenger/chromecast/ChromecastMediaVariations;)V

    .line 5252
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcastItemButton(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/CastMediaRouteButton;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/mediarouter/app/MediaRouteButton;->performClick()Z

    return-void

    :cond_1c
    const/4 v12, 0x3

    if-ne v0, v12, :cond_1e

    .line 5254
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentDialogId(Lorg/telegram/ui/PhotoViewer;)J

    move-result-wide v5

    cmp-long v0, v5, v16

    if-eqz v0, :cond_87

    .line 5255
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputdisableShowCheck(Lorg/telegram/ui/PhotoViewer;Z)V

    .line 5256
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5257
    iget-object v3, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentDialogId(Lorg/telegram/ui/PhotoViewer;)J

    move-result-wide v5

    const-string v3, "dialog_id"

    invoke-virtual {v0, v3, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 5258
    new-instance v3, Lorg/telegram/ui/Components/MediaActivity;

    invoke-direct {v3, v0, v11}, Lorg/telegram/ui/Components/MediaActivity;-><init>(Landroid/os/Bundle;Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;)V

    .line 5259
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentChatActivity(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 5260
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentChatActivity(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentChatInfo()Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/MediaActivity;->setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 5262
    :cond_1d
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-virtual {v0, v4, v4}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    .line 5263
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentActivity(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/LaunchActivity;

    if-eqz v0, :cond_87

    .line 5264
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentActivity(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v0, v3, v4, v2}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)Z

    return-void

    :cond_1e
    const/4 v12, 0x5

    const/16 v6, 0x15

    if-eq v0, v12, :cond_7d

    if-ne v0, v6, :cond_1f

    goto/16 :goto_2a

    :cond_1f
    const/16 v6, 0x19

    if-ne v0, v6, :cond_26

    .line 5305
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_87

    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetplaceProvider(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-result-object v0

    if-nez v0, :cond_20

    goto/16 :goto_2e

    .line 5306
    :cond_20
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_87

    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-nez v0, :cond_21

    goto/16 :goto_2e

    .line 5308
    :cond_21
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 5309
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 5310
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_22

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_23

    :cond_22
    move-object v0, v11

    .line 5314
    :cond_23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 5315
    iget-object v3, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/PhotoViewer;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    iget-object v5, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v3, v5, v2}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;Z)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_24

    .line 5316
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 5317
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :cond_24
    move-object/from16 v17, v0

    .line 5320
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_25

    goto/16 :goto_2e

    .line 5322
    :cond_25
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetplaceProvider(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    .line 5323
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 5324
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentChatActivity(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v24

    .line 5326
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5327
    new-instance v12, Lorg/telegram/messenger/MediaController$PhotoEntry;

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v12 .. v23}, Lorg/telegram/messenger/MediaController$PhotoEntry;-><init>(IIJLjava/lang/String;IZIIJ)V

    .line 5328
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5329
    iget-object v2, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$18$1;

    invoke-direct {v3, v1}, Lorg/telegram/ui/PhotoViewer$18$1;-><init>(Lorg/telegram/ui/PhotoViewer$18;)V

    const/16 v21, 0xb

    const/16 v22, 0x0

    move-object/from16 v19, v0

    move-object/from16 v18, v2

    move-object/from16 v23, v3

    invoke-virtual/range {v18 .. v24}, Lorg/telegram/ui/PhotoViewer;->openPhotoForSelect(Ljava/util/ArrayList;IIZLorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Lorg/telegram/ui/ChatActivity;)Z

    .line 5339
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-virtual {v0, v11, v11, v4, v11}, Lorg/telegram/ui/PhotoViewer;->enableStickerMode(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$Document;ZLorg/telegram/messenger/Utilities$Callback2;)V

    .line 5340
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->prepareSegmentImage()V

    .line 5341
    invoke-static {}, Lorg/telegram/ui/ContentPreviewViewer;->getInstance()Lorg/telegram/ui/ContentPreviewViewer;

    move-result-object v0

    invoke-virtual {v0, v11}, Lorg/telegram/ui/ContentPreviewViewer;->setStickerSetForCustomSticker(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    return-void

    :cond_26
    const/16 v6, 0x35

    if-eq v0, v15, :cond_6f

    const/16 v12, 0x34

    if-eq v0, v12, :cond_6f

    if-ne v0, v6, :cond_27

    goto/16 :goto_21

    :cond_27
    const/16 v6, 0x12

    if-eq v0, v6, :cond_6e

    const/16 v6, 0x31

    if-ne v0, v6, :cond_28

    goto/16 :goto_20

    :cond_28
    const/4 v6, 0x7

    const/16 v7, 0x9

    if-ne v0, v6, :cond_3f

    .line 5463
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentActivity(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_87

    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetplaceProvider(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-result-object v0

    if-nez v0, :cond_29

    goto/16 :goto_2e

    .line 5467
    :cond_29
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_2a

    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/MessageObject;->scheduled:Z

    if-nez v0, :cond_2a

    .line 5468
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v8

    .line 5469
    invoke-static {v8, v9}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 5470
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    goto :goto_b

    :cond_2a
    move v0, v4

    .line 5473
    :goto_b
    new-instance v3, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v6, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentActivity(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;

    move-result-object v6

    iget-object v8, v1, Lorg/telegram/ui/PhotoViewer$18;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v3, v6, v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 5474
    iget-object v6, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetplaceProvider(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-result-object v6

    invoke-interface {v6}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->getDeleteMessageString()Ljava/lang/String;

    move-result-object v6

    .line 5475
    const-string v8, "AreYouSureDeletePhotoTitle"

    if-eqz v6, :cond_2b

    .line 5476
    sget v0, Lorg/telegram/messenger/R$string;->AreYouSureDeletePhotoTitle:I

    invoke-static {v8, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 5477
    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto/16 :goto_d

    .line 5478
    :cond_2b
    iget-object v6, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetisEmbedVideo(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v6

    if-nez v6, :cond_31

    iget-object v6, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentFileLocationVideo(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v6

    if-eqz v6, :cond_2c

    iget-object v6, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentFileLocationVideo(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v6

    iget-object v9, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v9}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentFileLocation(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v9

    if-ne v6, v9, :cond_31

    :cond_2c
    iget-object v6, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    if-eqz v6, :cond_2d

    iget-object v6, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v6

    if-eqz v6, :cond_2d

    goto :goto_c

    .line 5485
    :cond_2d
    iget-object v6, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    if-eqz v6, :cond_2f

    iget-object v6, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isGif()Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 5486
    const-string v6, "AreYouSureDeleteGIFTitle"

    sget v8, Lorg/telegram/messenger/R$string;->AreYouSureDeleteGIFTitle:I

    invoke-static {v6, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    if-eqz v0, :cond_2e

    .line 5488
    sget v0, Lorg/telegram/messenger/R$string;->AreYouSureDeleteGIFEveryone:I

    new-array v6, v4, [Ljava/lang/Object;

    const-string v8, "AreYouSureDeleteGIFEveryone"

    invoke-static {v8, v0, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_d

    .line 5490
    :cond_2e
    sget v0, Lorg/telegram/messenger/R$string;->AreYouSureDeleteGIF:I

    new-array v6, v4, [Ljava/lang/Object;

    const-string v8, "AreYouSureDeleteGIF"

    invoke-static {v8, v0, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_d

    .line 5493
    :cond_2f
    sget v6, Lorg/telegram/messenger/R$string;->AreYouSureDeletePhotoTitle:I

    invoke-static {v8, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    if-eqz v0, :cond_30

    .line 5495
    sget v0, Lorg/telegram/messenger/R$string;->AreYouSureDeletePhotoEveryone:I

    new-array v6, v4, [Ljava/lang/Object;

    const-string v8, "AreYouSureDeletePhotoEveryone"

    invoke-static {v8, v0, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_d

    .line 5497
    :cond_30
    sget v0, Lorg/telegram/messenger/R$string;->AreYouSureDeletePhoto:I

    new-array v6, v4, [Ljava/lang/Object;

    const-string v8, "AreYouSureDeletePhoto"

    invoke-static {v8, v0, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_d

    .line 5479
    :cond_31
    :goto_c
    const-string v6, "AreYouSureDeleteVideoTitle"

    sget v8, Lorg/telegram/messenger/R$string;->AreYouSureDeleteVideoTitle:I

    invoke-static {v6, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    if-eqz v0, :cond_32

    .line 5481
    sget v0, Lorg/telegram/messenger/R$string;->AreYouSureDeleteVideoEveryone:I

    new-array v6, v4, [Ljava/lang/Object;

    const-string v8, "AreYouSureDeleteVideoEveryone"

    invoke-static {v8, v0, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_d

    .line 5483
    :cond_32
    sget v0, Lorg/telegram/messenger/R$string;->AreYouSureDeleteVideo:I

    new-array v6, v4, [Ljava/lang/Object;

    const-string v8, "AreYouSureDeleteVideo"

    invoke-static {v8, v0, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 5501
    :goto_d
    new-array v0, v2, [Z

    aput-boolean v2, v0, v4

    .line 5502
    iget-object v6, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    if-eqz v6, :cond_3e

    iget-object v6, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    iget-boolean v6, v6, Lorg/telegram/messenger/MessageObject;->scheduled:Z

    if-nez v6, :cond_3e

    .line 5503
    iget-object v6, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v8

    .line 5504
    invoke-static {v8, v9}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v6

    if-nez v6, :cond_3e

    .line 5507
    invoke-static {v8, v9}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 5508
    iget-object v6, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/PhotoViewer;)I

    move-result v6

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    move-object v8, v11

    goto :goto_e

    .line 5512
    :cond_33
    iget-object v6, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/PhotoViewer;)I

    move-result v6

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    neg-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    move-object v8, v6

    move-object v6, v11

    :goto_e
    if-nez v6, :cond_34

    .line 5514
    invoke-static {v8}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v9

    if-nez v9, :cond_3e

    .line 5516
    :cond_34
    iget-object v9, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v9}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/PhotoViewer;)I

    move-result v9

    invoke-static {v9}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v9

    if-eqz v6, :cond_35

    .line 5520
    iget-object v10, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v10}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/PhotoViewer;)I

    move-result v10

    invoke-static {v10}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    iget v10, v10, Lorg/telegram/messenger/MessagesController;->revokeTimePmLimit:I

    goto :goto_f

    .line 5522
    :cond_35
    iget-object v10, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v10}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/PhotoViewer;)I

    move-result v10

    invoke-static {v10}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    iget v10, v10, Lorg/telegram/messenger/MessagesController;->revokeTimeLimit:I

    :goto_f
    if-eqz v6, :cond_36

    .line 5525
    iget-wide v12, v6, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-object v15, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v15}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/PhotoViewer;)I

    move-result v15

    invoke-static {v15}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v15

    invoke-virtual {v15}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v15

    cmp-long v12, v12, v15

    if-nez v12, :cond_37

    :cond_36
    if-eqz v8, :cond_3e

    :cond_37
    if-eqz v6, :cond_38

    .line 5526
    iget-object v12, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v12}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/PhotoViewer;)I

    move-result v12

    invoke-static {v12}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    iget-boolean v12, v12, Lorg/telegram/messenger/MessagesController;->canRevokePmInbox:Z

    if-eqz v12, :cond_38

    move v12, v2

    goto :goto_10

    :cond_38
    move v12, v4

    .line 5527
    :goto_10
    iget-object v13, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v13}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v13

    iget-object v13, v13, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    if-eqz v13, :cond_39

    iget-object v13, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v13}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v13

    iget-object v13, v13, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v13, v13, Lorg/telegram/tgnet/TLRPC$TL_messageActionEmpty;

    if-eqz v13, :cond_3e

    :cond_39
    iget-object v13, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v13}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v13

    invoke-virtual {v13}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v13

    if-nez v13, :cond_3a

    if-nez v12, :cond_3a

    invoke-static {v8}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v12

    if-eqz v12, :cond_3e

    :cond_3a
    iget-object v12, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v12}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v12

    iget-object v12, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v12, v12, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    sub-int/2addr v9, v12

    if-gt v9, v10, :cond_3e

    .line 5528
    new-instance v9, Landroid/widget/FrameLayout;

    iget-object v10, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v10}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentActivity(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 5529
    new-instance v10, Lorg/telegram/ui/Cells/CheckBoxCell;

    iget-object v12, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v12}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentActivity(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;

    move-result-object v12

    iget-object v13, v1, Lorg/telegram/ui/PhotoViewer$18;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v10, v12, v2, v13}, Lorg/telegram/ui/Cells/CheckBoxCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 5530
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5531
    const-string v12, ""

    if-eqz v8, :cond_3b

    .line 5532
    const-string v2, "DeleteForAll"

    sget v6, Lorg/telegram/messenger/R$string;->DeleteForAll:I

    invoke-static {v2, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2, v12, v4, v4}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)V

    goto :goto_11

    .line 5534
    :cond_3b
    sget v8, Lorg/telegram/messenger/R$string;->DeleteForUser:I

    invoke-static {v6}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v6

    new-array v13, v2, [Ljava/lang/Object;

    aput-object v6, v13, v4

    const-string v6, "DeleteForUser"

    invoke-static {v6, v8, v13}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6, v12, v2, v4}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)V

    .line 5536
    :goto_11
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v6, 0x41000000    # 8.0f

    const/high16 v8, 0x41800000    # 16.0f

    if-eqz v2, :cond_3c

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    goto :goto_12

    :cond_3c
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    :goto_12
    sget-boolean v12, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v12, :cond_3d

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    goto :goto_13

    :cond_3d
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    :goto_13
    invoke-virtual {v10, v2, v4, v6, v4}, Landroid/view/View;->setPadding(IIII)V

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v15, -0x1

    const/high16 v16, 0x42400000    # 48.0f

    const/16 v17, 0x33

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 5537
    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v9, v10, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5538
    new-instance v2, Lorg/telegram/ui/PhotoViewer$18$$ExternalSyntheticLambda15;

    invoke-direct {v2, v0}, Lorg/telegram/ui/PhotoViewer$18$$ExternalSyntheticLambda15;-><init>([Z)V

    invoke-virtual {v10, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5543
    invoke-virtual {v3, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 5544
    invoke-virtual {v3, v7}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setCustomViewOffset(I)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 5550
    :cond_3e
    const-string v2, "Delete"

    sget v4, Lorg/telegram/messenger/R$string;->Delete:I

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lorg/telegram/ui/PhotoViewer$18$$ExternalSyntheticLambda16;

    invoke-direct {v4, v1, v0}, Lorg/telegram/ui/PhotoViewer$18$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/PhotoViewer$18;[Z)V

    invoke-virtual {v3, v2, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 5650
    sget v0, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v14, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v11}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 5651
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    .line 5652
    iget-object v2, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/PhotoViewer;->showAlertDialog(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;)V

    .line 5653
    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_87

    .line 5655
    iget-object v2, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v2, v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mgetThemedColor(Lorg/telegram/ui/PhotoViewer;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_3f
    if-eq v0, v7, :cond_6d

    const/16 v6, 0x10

    if-ne v0, v6, :cond_40

    goto/16 :goto_1f

    :cond_40
    const/16 v6, 0xa

    if-ne v0, v6, :cond_47

    .line 5661
    :try_start_0
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetisEmbedVideo(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 5662
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentActivity(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    .line 5663
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-virtual {v0, v4, v4}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    return-void

    :catch_0
    move-exception v0

    goto/16 :goto_15

    .line 5664
    :cond_41
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 5665
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget-object v3, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentActivity(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;

    move-result-object v3

    iget-object v5, v1, Lorg/telegram/ui/PhotoViewer$18;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget-object v6, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v6

    if-nez v6, :cond_43

    iget-object v6, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isPhoto()Z

    move-result v6

    if-nez v6, :cond_43

    iget-object v6, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isSticker()Z

    move-result v6

    if-eqz v6, :cond_42

    goto :goto_14

    :cond_42
    move v2, v4

    :cond_43
    :goto_14
    invoke-static {v0, v3, v5, v2}, Lorg/telegram/messenger/AndroidUtilities;->openForView(Lorg/telegram/messenger/MessageObject;Landroid/app/Activity;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 5666
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-virtual {v0, v4, v4}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    return-void

    .line 5668
    :cond_44
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mshowDownloadAlert(Lorg/telegram/ui/PhotoViewer;)V

    return-void

    .line 5670
    :cond_45
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetpageBlocksAdapter(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PageBlocksAdapter;

    move-result-object v0

    if-eqz v0, :cond_87

    .line 5671
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetpageBlocksAdapter(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PageBlocksAdapter;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentIndex(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    invoke-interface {v0, v2}, Lorg/telegram/ui/PhotoViewer$PageBlocksAdapter;->getMedia(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentActivity(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/telegram/messenger/AndroidUtilities;->openForView(Lorg/telegram/tgnet/TLObject;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 5672
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-virtual {v0, v4, v4}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    return-void

    .line 5674
    :cond_46
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mshowDownloadAlert(Lorg/telegram/ui/PhotoViewer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 5678
    :goto_15
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void

    :cond_47
    const/16 v6, 0xb

    if-eq v0, v6, :cond_6a

    const/16 v6, 0xd

    if-ne v0, v6, :cond_48

    goto/16 :goto_1c

    :cond_48
    const/4 v6, 0x6

    if-ne v0, v6, :cond_4d

    .line 5703
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetmenuItem(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->isSubItemVisible(I)Z

    move-result v0

    if-nez v0, :cond_49

    goto/16 :goto_2e

    .line 5706
    :cond_49
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetisEmbedVideo(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 5707
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetphotoViewerWebView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerWebView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerWebView;->openInPip()Z

    move-result v0

    if-eqz v0, :cond_87

    .line 5708
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$sfgetPipInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    if-eqz v0, :cond_4a

    .line 5709
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$sfgetPipInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->destroyPhotoViewer()V

    .line 5711
    :cond_4a
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputisInline(Lorg/telegram/ui/PhotoViewer;Z)V

    .line 5712
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$sfgetInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$sfputPipInstance(Lorg/telegram/ui/PhotoViewer;)V

    .line 5713
    invoke-static {v11}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$sfputInstance(Lorg/telegram/ui/PhotoViewer;)V

    .line 5714
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, v4}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputisVisible(Lorg/telegram/ui/PhotoViewer;Z)V

    .line 5715
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, v4}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputisVisibleOrAnimating(Lorg/telegram/ui/PhotoViewer;Z)V

    .line 5716
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentPlaceObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    move-result-object v0

    if-eqz v0, :cond_4b

    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentPlaceObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getVisible()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 5717
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentPlaceObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v2, v2}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 5719
    :cond_4b
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputclippingImageProgress(Lorg/telegram/ui/PhotoViewer;F)V

    .line 5720
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 5721
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mdismissInternal(Lorg/telegram/ui/PhotoViewer;)V

    return-void

    .line 5724
    :cond_4c
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, v4}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mswitchToPip(Lorg/telegram/ui/PhotoViewer;Z)V

    return-void

    :cond_4d
    const/16 v6, 0x8

    if-ne v0, v6, :cond_4f

    .line 5727
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-nez v0, :cond_4e

    goto/16 :goto_2e

    .line 5730
    :cond_4e
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 5731
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, v4}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mreleasePlayer(Lorg/telegram/ui/PhotoViewer;Z)V

    .line 5732
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetbottomLayout(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 5733
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetbottomLayout(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_4f
    const/16 v6, 0x33

    if-ne v0, v6, :cond_51

    .line 5735
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mgetFrameAsFile(Lorg/telegram/ui/PhotoViewer;)Ljava/io/File;

    move-result-object v0

    .line 5736
    iget-object v2, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object v2

    invoke-static {v2, v11}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->FrameCopied:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lorg/telegram/ui/PhotoViewer$18;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/BulletinFactory;->createCopyBulletin(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    if-nez v0, :cond_50

    goto/16 :goto_2e

    .line 5741
    :cond_50
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_87

    .line 5742
    iget-object v2, v1, Lorg/telegram/ui/PhotoViewer$18;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$18$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1, v2}, Lorg/telegram/ui/PhotoViewer$18$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/PhotoViewer$18;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-static {v0, v3}, Lcom/exteragram/messenger/utils/system/SystemUtils;->addFileToClipboard(Ljava/io/File;Ljava/lang/Runnable;)V

    return-void

    :cond_51
    const/16 v6, 0xc

    if-ne v0, v6, :cond_55

    .line 5745
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    const-wide/16 v3, 0x3e8

    if-eqz v0, :cond_53

    .line 5746
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    .line 5747
    iget-object v5, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentChatActivity(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v5

    if-eqz v5, :cond_52

    iget-object v5, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentChatActivity(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v5, :cond_52

    .line 5748
    iget-object v2, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentChatActivity(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->addRecentGif(Lorg/telegram/tgnet/TLRPC$Document;)V

    goto :goto_16

    .line 5750
    :cond_52
    iget-object v5, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/PhotoViewer;)I

    move-result v5

    invoke-static {v5}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    div-long/2addr v6, v3

    long-to-int v3, v6

    invoke-virtual {v5, v0, v3, v2}, Lorg/telegram/messenger/MediaDataController;->addRecentGif(Lorg/telegram/tgnet/TLRPC$Document;IZ)V

    .line 5752
    :goto_16
    iget-object v2, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lorg/telegram/messenger/MessagesController;->saveGif(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;)V

    goto :goto_17

    .line 5753
    :cond_53
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetpageBlocksAdapter(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PageBlocksAdapter;

    move-result-object v0

    if-eqz v0, :cond_87

    .line 5754
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetpageBlocksAdapter(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PageBlocksAdapter;

    move-result-object v0

    iget-object v5, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentIndex(Lorg/telegram/ui/PhotoViewer;)I

    move-result v5

    invoke-interface {v0, v5}, Lorg/telegram/ui/PhotoViewer$PageBlocksAdapter;->getMedia(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v0

    .line 5755
    instance-of v5, v0, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v5, :cond_54

    .line 5756
    check-cast v0, Lorg/telegram/tgnet/TLRPC$Document;

    .line 5757
    iget-object v5, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/PhotoViewer;)I

    move-result v5

    invoke-static {v5}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    div-long/2addr v6, v3

    long-to-int v3, v6

    invoke-virtual {v5, v0, v3, v2}, Lorg/telegram/messenger/MediaDataController;->addRecentGif(Lorg/telegram/tgnet/TLRPC$Document;IZ)V

    .line 5758
    iget-object v2, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetpageBlocksAdapter(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PageBlocksAdapter;

    move-result-object v3

    invoke-interface {v3}, Lorg/telegram/ui/PhotoViewer$PageBlocksAdapter;->getParentObject()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lorg/telegram/messenger/MessagesController;->saveGif(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 5763
    :cond_54
    :goto_17
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object v0

    if-eqz v0, :cond_87

    .line 5764
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/PhotoViewer$18;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget-object v2, Lorg/telegram/ui/Components/BulletinFactory$FileType;->GIF:Lorg/telegram/ui/Components/BulletinFactory$FileType;

    iget-object v3, v1, Lorg/telegram/ui/PhotoViewer$18;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/BulletinFactory;->createDownloadBulletin(Lorg/telegram/ui/Components/BulletinFactory$FileType;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    :cond_55
    const/16 v6, 0xe

    const/16 v7, 0x16

    if-ne v0, v6, :cond_5b

    .line 5767
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetavatarsArr(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v6, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentIndex(Lorg/telegram/ui/PhotoViewer;)I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v0, :cond_87

    .line 5768
    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_56

    goto/16 :goto_2e

    .line 5771
    :cond_56
    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    const/16 v8, 0x320

    invoke-static {v6, v8}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v6

    .line 5772
    iget-object v8, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    const/16 v9, 0x5a

    invoke-static {v8, v9}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v8

    .line 5773
    iget-object v9, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v9}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/PhotoViewer;)I

    move-result v9

    invoke-static {v9}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v9

    .line 5774
    iget-object v10, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v10}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetavatarsDialogId(Lorg/telegram/ui/PhotoViewer;)J

    move-result-wide v12

    iget-wide v14, v9, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long v10, v12, v14

    if-nez v10, :cond_57

    .line 5775
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_photos_updateProfilePhoto;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_photos_updateProfilePhoto;-><init>()V

    .line 5776
    new-instance v12, Lorg/telegram/tgnet/TLRPC$TL_inputPhoto;

    invoke-direct {v12}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoto;-><init>()V

    iput-object v12, v10, Lorg/telegram/tgnet/TLRPC$TL_photos_updateProfilePhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    .line 5777
    iget-wide v13, v0, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    iput-wide v13, v12, Lorg/telegram/tgnet/TLRPC$InputPhoto;->id:J

    .line 5778
    iget-wide v13, v0, Lorg/telegram/tgnet/TLRPC$Photo;->access_hash:J

    iput-wide v13, v12, Lorg/telegram/tgnet/TLRPC$InputPhoto;->access_hash:J

    .line 5779
    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Photo;->file_reference:[B

    iput-object v13, v12, Lorg/telegram/tgnet/TLRPC$InputPhoto;->file_reference:[B

    .line 5780
    iget-object v12, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v12}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/PhotoViewer;)I

    move-result v12

    invoke-static {v12}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v12

    new-instance v13, Lorg/telegram/ui/PhotoViewer$18$$ExternalSyntheticLambda2;

    invoke-direct {v13, v1, v9, v0}, Lorg/telegram/ui/PhotoViewer$18$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/PhotoViewer$18;Lorg/telegram/messenger/UserConfig;Lorg/telegram/tgnet/TLRPC$Photo;)V

    invoke-virtual {v12, v10, v13}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 5799
    iget-object v10, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v10}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/PhotoViewer;)I

    move-result v10

    invoke-static {v10}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    iget-wide v12, v9, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v12}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v10

    if-eqz v10, :cond_59

    .line 5801
    iget-object v12, v10, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-wide v13, v0, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    iput-wide v13, v12, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_id:J

    .line 5802
    iget v13, v0, Lorg/telegram/tgnet/TLRPC$Photo;->dc_id:I

    iput v13, v12, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->dc_id:I

    .line 5803
    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v8, v12, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 5804
    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v8, v12, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 5805
    invoke-virtual {v9, v10}, Lorg/telegram/messenger/UserConfig;->setCurrentUser(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 5806
    invoke-virtual {v9, v2}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 5807
    iget-object v2, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v8, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    new-array v9, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v8, v9}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_18

    .line 5810
    :cond_57
    iget-object v9, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v9}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/PhotoViewer;)I

    move-result v9

    invoke-static {v9}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget-object v10, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v10}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetavatarsDialogId(Lorg/telegram/ui/PhotoViewer;)J

    move-result-wide v12

    neg-long v12, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v9

    if-nez v9, :cond_58

    goto/16 :goto_2e

    .line 5814
    :cond_58
    new-instance v15, Lorg/telegram/tgnet/TLRPC$TL_inputChatPhoto;

    invoke-direct {v15}, Lorg/telegram/tgnet/TLRPC$TL_inputChatPhoto;-><init>()V

    .line 5815
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_inputPhoto;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoto;-><init>()V

    iput-object v10, v15, Lorg/telegram/tgnet/TLRPC$TL_inputChatPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    .line 5816
    iget-wide v12, v0, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    iput-wide v12, v10, Lorg/telegram/tgnet/TLRPC$InputPhoto;->id:J

    .line 5817
    iget-wide v12, v0, Lorg/telegram/tgnet/TLRPC$Photo;->access_hash:J

    iput-wide v12, v10, Lorg/telegram/tgnet/TLRPC$InputPhoto;->access_hash:J

    .line 5818
    iget-object v12, v0, Lorg/telegram/tgnet/TLRPC$Photo;->file_reference:[B

    iput-object v12, v10, Lorg/telegram/tgnet/TLRPC$InputPhoto;->file_reference:[B

    .line 5819
    iget-object v10, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v10}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/PhotoViewer;)I

    move-result v10

    invoke-static {v10}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    iget-object v10, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v10}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetavatarsDialogId(Lorg/telegram/ui/PhotoViewer;)J

    move-result-wide v13

    neg-long v13, v13

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v12 .. v24}, Lorg/telegram/messenger/MessagesController;->changeChatAvatar(JLorg/telegram/tgnet/TLRPC$TL_inputChatPhoto;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$VideoSize;DLjava/lang/String;Lorg/telegram/tgnet/TLRPC$FileLocation;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/Runnable;)V

    .line 5820
    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget v10, v0, Lorg/telegram/tgnet/TLRPC$Photo;->dc_id:I

    iput v10, v9, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->dc_id:I

    .line 5821
    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v8, v9, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 5822
    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v8, v9, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 5823
    iget-object v8, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v8}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/PhotoViewer;)I

    move-result v8

    invoke-static {v8}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    sget v10, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_AVATAR:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v10, v2, v4

    invoke-virtual {v8, v9, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 5825
    :cond_59
    :goto_18
    iget-object v2, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6, v0}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v6

    invoke-static {v2, v6}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputcurrentAvatarLocation(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/messenger/ImageLocation;)V

    .line 5826
    iget-object v2, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetavatarsArr(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v6, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentIndex(Lorg/telegram/ui/PhotoViewer;)I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5827
    iget-object v2, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetavatarsArr(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5829
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetimagesArrLocations(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentIndex(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/ImageLocation;

    .line 5830
    iget-object v2, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetimagesArrLocations(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v6, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentIndex(Lorg/telegram/ui/PhotoViewer;)I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5831
    iget-object v2, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetimagesArrLocations(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5833
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetimagesArrLocationsVideo(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentIndex(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/ImageLocation;

    .line 5834
    iget-object v2, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetimagesArrLocationsVideo(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v6, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentIndex(Lorg/telegram/ui/PhotoViewer;)I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5835
    iget-object v2, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetimagesArrLocationsVideo(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5837
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetimagesArrLocationsSizes(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentIndex(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 5838
    iget-object v2, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetimagesArrLocationsSizes(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v6, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentIndex(Lorg/telegram/ui/PhotoViewer;)I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5839
    iget-object v2, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetimagesArrLocationsSizes(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5841
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetimagesArrMessages(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentIndex(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Message;

    .line 5842
    iget-object v2, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetimagesArrMessages(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v6, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentIndex(Lorg/telegram/ui/PhotoViewer;)I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5843
    iget-object v2, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetimagesArrMessages(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5845
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, v5}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputcurrentIndex(Lorg/telegram/ui/PhotoViewer;I)V

    .line 5846
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, v4}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$msetImageIndex(Lorg/telegram/ui/PhotoViewer;I)V

    .line 5848
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetgroupedPhotosListView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/GroupedPhotosListView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/GroupedPhotosListView;->clear()V

    .line 5849
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetgroupedPhotosListView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/GroupedPhotosListView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/GroupedPhotosListView;->fillList()V

    .line 5850
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgethintView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/UndoView;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetavatarsDialogId(Lorg/telegram/ui/PhotoViewer;)J

    move-result-wide v4

    iget-object v2, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentFileLocationVideo(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    iget-object v6, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentFileLocation(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v6

    if-ne v2, v6, :cond_5a

    move-object v3, v11

    :cond_5a
    invoke-virtual {v0, v4, v5, v7, v3}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Object;)V

    .line 5851
    new-instance v0, Lorg/telegram/ui/PhotoViewer$18$$ExternalSyntheticLambda3;

    invoke-direct {v0, v1}, Lorg/telegram/ui/PhotoViewer$18$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/PhotoViewer$18;)V

    const-wide/16 v2, 0x12c

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    :cond_5b
    const/16 v3, 0xf

    if-ne v0, v3, :cond_5e

    .line 5858
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v3, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentFileLocationVideo(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->getFileLocation(Lorg/telegram/messenger/ImageLocation;)Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-result-object v3

    iget-object v5, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentFileLocationVideo(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->getFileLocationExt(Lorg/telegram/messenger/ImageLocation;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5, v2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    .line 5859
    iget-object v3, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentFileLocationVideo(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    iget v3, v3, Lorg/telegram/messenger/ImageLocation;->imageType:I

    if-ne v3, v13, :cond_5c

    move v4, v2

    :cond_5c
    if-eqz v4, :cond_5d

    .line 5862
    iget-object v3, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/PhotoViewer;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    iget-object v5, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentFileLocation(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->getFileLocation(Lorg/telegram/messenger/ImageLocation;)Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-result-object v5

    iget-object v6, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentFileLocation(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->getFileLocationExt(Lorg/telegram/messenger/ImageLocation;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6, v2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    .line 5866
    :cond_5d
    iget-object v2, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetplaceProvider(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v11, v4}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->openPhotoForEdit(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_5e
    const/16 v3, 0x32

    if-ne v0, v3, :cond_60

    .line 5868
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mgetPhoto(Lorg/telegram/ui/PhotoViewer;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_5f

    .line 5870
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 5871
    iget-object v2, v1, Lorg/telegram/ui/PhotoViewer$18;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$18$$ExternalSyntheticLambda4;

    invoke-direct {v3, v1, v2}, Lorg/telegram/ui/PhotoViewer$18$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/PhotoViewer$18;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-static {v0, v3}, Lcom/exteragram/messenger/utils/system/SystemUtils;->addFileToClipboard(Ljava/io/File;Ljava/lang/Runnable;)V

    return-void

    .line 5873
    :cond_5f
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mshowDownloadAlert(Lorg/telegram/ui/PhotoViewer;)V

    return-void

    :cond_60
    const/16 v3, 0x13

    const-wide/16 v8, 0x20

    if-ne v0, v3, :cond_62

    .line 5876
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetswitchingToIndex(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    if-ltz v0, :cond_87

    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetswitchingToIndex(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    iget-object v3, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetimagesArr(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_61

    goto/16 :goto_2e

    .line 5879
    :cond_61
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetimagesArr(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetswitchingToIndex(Lorg/telegram/ui/PhotoViewer;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    .line 5880
    iget-object v3, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3, v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputcaptionTranslated(Lorg/telegram/ui/PhotoViewer;Z)V

    .line 5881
    new-instance v2, Lorg/telegram/ui/PhotoViewer$18$$ExternalSyntheticLambda5;

    invoke-direct {v2, v1}, Lorg/telegram/ui/PhotoViewer$18$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/PhotoViewer$18;)V

    invoke-static {v2, v8, v9}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 5885
    iget-object v2, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mupdateCaptionTranslated(Lorg/telegram/ui/PhotoViewer;)V

    .line 5886
    iget-object v2, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesController;->getTranslateController()Lorg/telegram/messenger/TranslateController;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    new-instance v4, Lorg/telegram/ui/PhotoViewer$18$$ExternalSyntheticLambda6;

    invoke-direct {v4, v3}, Lorg/telegram/ui/PhotoViewer$18$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v0, v4}, Lorg/telegram/messenger/TranslateController;->translatePhoto(Lorg/telegram/messenger/MessageObject;Ljava/lang/Runnable;)V

    return-void

    :cond_62
    const/16 v3, 0x14

    if-ne v0, v3, :cond_63

    .line 5888
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, v4}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputcaptionTranslated(Lorg/telegram/ui/PhotoViewer;Z)V

    .line 5889
    new-instance v0, Lorg/telegram/ui/PhotoViewer$18$$ExternalSyntheticLambda7;

    invoke-direct {v0, v1}, Lorg/telegram/ui/PhotoViewer$18$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/PhotoViewer$18;)V

    invoke-static {v0, v8, v9}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 5893
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mupdateCaptionTranslated(Lorg/telegram/ui/PhotoViewer;)V

    return-void

    :cond_63
    if-ne v0, v7, :cond_66

    .line 5895
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetplayerLooping(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v3

    xor-int/2addr v2, v3

    invoke-static {v0, v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputplayerLooping(Lorg/telegram/ui/PhotoViewer;Z)V

    .line 5896
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetplayerLooping(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    iget-object v2, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/VideoPlayer;->saveLooping(ZLorg/telegram/messenger/MessageObject;)V

    .line 5897
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayer(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_64

    .line 5898
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayer(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetplayerLooping(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/VideoPlayer;->setLooping(Z)V

    .line 5900
    :cond_64
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetloopItem(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetplayerLooping(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v2

    const v3, -0x8c4b14

    invoke-virtual {v0, v2, v5, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setEnabledByColor(ZII)V

    .line 5901
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetloopItem(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetplayerLooping(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v2

    if-eqz v2, :cond_65

    const v2, 0xf73b4ec

    goto :goto_19

    :cond_65
    const v2, 0xfffffff

    :goto_19
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    return-void

    :cond_66
    const/16 v2, 0x17

    if-ne v0, v2, :cond_87

    .line 5904
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentFileLocation(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v0

    if-eqz v0, :cond_68

    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentFileLocation(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLocation;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v0, :cond_68

    .line 5905
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentFileLocation(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v0

    iget-object v11, v0, Lorg/telegram/messenger/ImageLocation;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    :cond_67
    :goto_1a
    move-object v6, v11

    goto :goto_1b

    .line 5906
    :cond_68
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentFileLocationVideo(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v0

    if-eqz v0, :cond_67

    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentFileLocationVideo(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLocation;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v0, :cond_67

    .line 5907
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentFileLocationVideo(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v0

    iget-object v11, v0, Lorg/telegram/messenger/ImageLocation;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    goto :goto_1a

    :goto_1b
    if-nez v6, :cond_69

    goto/16 :goto_2e

    .line 5910
    :cond_69
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentActivity(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;

    move-result-object v3

    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetavatarsDialogId(Lorg/telegram/ui/PhotoViewer;)J

    move-result-wide v4

    new-instance v7, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;

    invoke-direct {v7}, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;-><init>()V

    invoke-static/range {v2 .. v7}, Lorg/telegram/ui/Components/AlertsCreator;->createReportPhotoAlert(ILandroid/content/Context;JLorg/telegram/tgnet/TLRPC$Photo;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void

    .line 5681
    :cond_6a
    :goto_1c
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentActivity(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_87

    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-nez v0, :cond_6b

    goto/16 :goto_2e

    .line 5685
    :cond_6b
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v0, :cond_6c

    .line 5686
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    :goto_1d
    move-object v4, v0

    goto :goto_1e

    .line 5687
    :cond_6c
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v0, :cond_87

    .line 5688
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    goto :goto_1d

    .line 5692
    :goto_1e
    iget-object v6, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    new-instance v0, Lorg/telegram/ui/PhotoViewer$18$2;

    iget-object v2, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentActivity(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    iget-object v5, v1, Lorg/telegram/ui/PhotoViewer$18;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/PhotoViewer$18$2;-><init>(Lorg/telegram/ui/PhotoViewer$18;Landroid/content/Context;Ljava/lang/Object;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-static {v6, v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputmasksAlert(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/Components/StickersAlert;)V

    .line 5701
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetmasksAlert(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/StickersAlert;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StickersAlert;->show()V

    return-void

    .line 5658
    :cond_6d
    :goto_1f
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$monSharePressed(Lorg/telegram/ui/PhotoViewer;)V

    return-void

    .line 5461
    :cond_6e
    :goto_20
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mopenCurrentPhotoInPaintModeForSelect(Lorg/telegram/ui/PhotoViewer;)V

    return-void

    :cond_6f
    :goto_21
    if-ne v0, v6, :cond_70

    move v0, v2

    goto :goto_22

    :cond_70
    move v0, v4

    .line 5344
    :goto_22
    iget-object v3, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    if-eqz v3, :cond_87

    iget-object v3, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentActivity(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lorg/telegram/ui/LaunchActivity;

    if-nez v3, :cond_71

    goto/16 :goto_2e

    .line 5348
    :cond_71
    iget-object v3, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/messenger/MessageObject;->scheduled:Z

    if-nez v3, :cond_72

    .line 5349
    iget-object v3, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v5

    .line 5350
    invoke-static {v5, v6}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v3

    if-eqz v3, :cond_72

    .line 5351
    iget-object v3, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/PhotoViewer;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    neg-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    .line 5352
    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    goto :goto_23

    :cond_72
    move v3, v4

    .line 5355
    :goto_23
    iget-object v5, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentActivity(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/LaunchActivity;

    iget-object v6, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    iget v6, v6, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-virtual {v5, v6, v2}, Lorg/telegram/ui/LaunchActivity;->switchToAccount(IZ)V

    .line 5356
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 5357
    iget-object v6, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentChatActivity(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v6

    if-eqz v6, :cond_73

    iget-object v6, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentChatActivity(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v6

    iget-object v11, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v11}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->getGroupId()J

    move-result-wide v11

    invoke-virtual {v6, v11, v12}, Lorg/telegram/ui/ChatActivity;->getGroup(J)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v11

    :cond_73
    if-eqz v11, :cond_74

    .line 5359
    iget-object v6, v11, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_24

    .line 5361
    :cond_74
    iget-object v6, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_24
    if-eqz v3, :cond_75

    .line 5364
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v3, v2, :cond_75

    .line 5365
    iget-object v2, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2, v5, v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mshowShareAlert(Lorg/telegram/ui/PhotoViewer;Ljava/util/ArrayList;Z)V

    return-void

    .line 5366
    :cond_75
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v2, :cond_7c

    move v3, v4

    .line 5368
    :goto_25
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_78

    .line 5369
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isPhoto()Z

    move-result v6

    if-eqz v6, :cond_77

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v6

    if-eqz v6, :cond_76

    goto :goto_26

    :cond_76
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    :cond_77
    :goto_26
    move v3, v4

    goto :goto_27

    :cond_78
    move v3, v2

    .line 5375
    :goto_27
    new-instance v6, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v11, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v11}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentActivity(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;

    move-result-object v11

    iget-object v12, v1, Lorg/telegram/ui/PhotoViewer$18;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v6, v11, v12}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const-string v11, "ForwardGroupMedia"

    sget v12, Lorg/telegram/messenger/R$string;->ForwardGroupMedia:I

    .line 5376
    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v6

    const-string v11, "ForwardGroupMediaMessage"

    sget v12, Lorg/telegram/messenger/R$string;->ForwardGroupMediaMessage:I

    .line 5377
    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v6

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_listeningText:I

    .line 5378
    invoke-virtual {v6, v11}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setDialogButtonColorKey(I)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v6

    if-eqz v3, :cond_79

    .line 5379
    sget v9, Lorg/telegram/messenger/R$string;->ThisPhoto:I

    invoke-static {v10, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    goto :goto_28

    :cond_79
    sget v10, Lorg/telegram/messenger/R$string;->ThisMedia:I

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    :goto_28
    new-instance v10, Lorg/telegram/ui/PhotoViewer$18$$ExternalSyntheticLambda11;

    invoke-direct {v10, v1, v0}, Lorg/telegram/ui/PhotoViewer$18$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/PhotoViewer$18;Z)V

    invoke-virtual {v6, v9, v10}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v6

    if-eqz v3, :cond_7a

    .line 5384
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v8, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_29

    :cond_7a
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v7, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_29
    new-instance v4, Lorg/telegram/ui/PhotoViewer$18$$ExternalSyntheticLambda12;

    invoke-direct {v4, v1, v5, v0}, Lorg/telegram/ui/PhotoViewer$18$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/PhotoViewer$18;Ljava/util/ArrayList;Z)V

    invoke-virtual {v6, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/R$string;->Cancel:I

    .line 5387
    invoke-static {v14, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/PhotoViewer$18$$ExternalSyntheticLambda13;

    invoke-direct {v4}, Lorg/telegram/ui/PhotoViewer$18$$ExternalSyntheticLambda13;-><init>()V

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    .line 5389
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    .line 5390
    iget-object v3, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_dialogBackground:I

    invoke-static {v3, v4}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mgetThemedColor(Lorg/telegram/ui/PhotoViewer;I)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->setBackgroundColor(I)V

    .line 5391
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    const/4 v3, -0x3

    .line 5392
    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v3

    .line 5393
    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_7b

    .line 5394
    move-object v4, v3

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v5, v6}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mgetThemedColor(Lorg/telegram/ui/PhotoViewer;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5395
    iget-object v4, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v4, v6}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mgetThemedColor(Lorg/telegram/ui/PhotoViewer;I)I

    move-result v4

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getRoundRectSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 5396
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButtonsLayout()Landroid/view/ViewGroup;

    move-result-object v4

    instance-of v4, v4, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_7b

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButtonsLayout()Landroid/view/ViewGroup;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v4

    if-ne v4, v2, :cond_7b

    .line 5397
    invoke-virtual {v3}, Landroid/view/View;->bringToFront()V

    .line 5400
    :cond_7b
    iget-object v2, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_actionBarItems:I

    invoke-static {v2, v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mgetThemedColor(Lorg/telegram/ui/PhotoViewer;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->setTextColor(I)V

    return-void

    .line 5402
    :cond_7c
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 5403
    const-string v5, "onlySelect"

    invoke-virtual {v3, v5, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5404
    const-string v5, "canSelectTopics"

    invoke-virtual {v3, v5, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5405
    const-string v5, "dialogsType"

    const/4 v6, 0x3

    invoke-virtual {v3, v5, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 5406
    const-string v5, "forward_noquote"

    invoke-virtual {v3, v5, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5407
    new-instance v5, Lorg/telegram/ui/DialogsActivity;

    invoke-direct {v5, v3}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 5408
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5409
    iget-object v6, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5410
    iget-object v6, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentChatActivity(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v6

    .line 5411
    new-instance v7, Lorg/telegram/ui/PhotoViewer$18$$ExternalSyntheticLambda14;

    invoke-direct {v7, v1, v3, v0, v6}, Lorg/telegram/ui/PhotoViewer$18$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/PhotoViewer$18;Ljava/util/ArrayList;ZLorg/telegram/ui/ChatActivity;)V

    invoke-virtual {v5, v7}, Lorg/telegram/ui/DialogsActivity;->setDelegate(Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;)V

    .line 5457
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentActivity(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v0, v5, v4, v2}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)Z

    .line 5458
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-virtual {v0, v4, v4}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    return-void

    .line 5268
    :cond_7d
    :goto_2a
    iget-object v3, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    if-nez v3, :cond_7e

    goto/16 :goto_2e

    .line 5271
    :cond_7e
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 5272
    iget-object v5, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentDialogId(Lorg/telegram/ui/PhotoViewer;)J

    move-result-wide v7

    .line 5273
    iget-object v5, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    if-eqz v5, :cond_7f

    .line 5274
    iget-object v5, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v7

    .line 5276
    :cond_7f
    invoke-static {v7, v8}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v5

    if-eqz v5, :cond_80

    .line 5277
    const-string v5, "enc_id"

    invoke-static {v7, v8}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v7

    invoke-virtual {v3, v5, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2b

    .line 5278
    :cond_80
    invoke-static {v7, v8}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v5

    if-eqz v5, :cond_81

    .line 5279
    const-string/jumbo v5, "user_id"

    invoke-virtual {v3, v5, v7, v8}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_2b

    .line 5281
    :cond_81
    iget-object v5, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/PhotoViewer;)I

    move-result v5

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    neg-long v9, v7

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v5, v9}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    if-eqz v5, :cond_82

    .line 5282
    iget-object v9, v5, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    if-eqz v9, :cond_82

    .line 5283
    const-string v9, "migrated_to"

    invoke-virtual {v3, v9, v7, v8}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 5284
    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    iget-wide v7, v5, Lorg/telegram/tgnet/TLRPC$InputChannel;->channel_id:J

    neg-long v7, v7

    .line 5286
    :cond_82
    const-string v5, "chat_id"

    neg-long v7, v7

    invoke-virtual {v3, v5, v7, v8}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 5288
    :goto_2b
    iget-object v5, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    const-string v7, "message_id"

    invoke-virtual {v3, v7, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    if-ne v0, v6, :cond_83

    .line 5290
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    const-string v5, "reply_to"

    invoke-virtual {v3, v5, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 5292
    :cond_83
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v5, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v5, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 5293
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentActivity(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/LaunchActivity;

    if-eqz v0, :cond_86

    .line 5294
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentActivity(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/LaunchActivity;

    .line 5295
    invoke-virtual {v0}, Lorg/telegram/ui/LaunchActivity;->getMainFragmentsCount()I

    move-result v5

    if-gt v5, v2, :cond_85

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_84

    goto :goto_2c

    :cond_84
    move v5, v4

    goto :goto_2d

    :cond_85
    :goto_2c
    move v5, v2

    .line 5296
    :goto_2d
    new-instance v6, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v6, v3}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v6, v5, v2}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)Z

    .line 5298
    :cond_86
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-virtual {v0, v4, v4}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    .line 5299
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, v11}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputcurrentMessageObject(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/messenger/MessageObject;)V

    .line 5300
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetads(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/video/VideoAds;

    move-result-object v0

    if-eqz v0, :cond_87

    .line 5301
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetads(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/video/VideoAds;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/video/VideoAds;->stop()V

    .line 5302
    iget-object v0, v1, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, v11}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputads(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/messenger/video/VideoAds;)V

    :cond_87
    :goto_2e
    return-void
.end method
