.class Lorg/telegram/ui/ChatActivity$70;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ChatActivity$ChatActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->openPinnedMessagesList(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method public static synthetic $r8$lambda$RGbfK5uMfzm8HwPwU1ZCfY_-ITc(Lorg/telegram/ui/ChatActivity$70;ZI)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatActivity$70;->lambda$onUnpin$1(ZI)V

    return-void
.end method

.method public static synthetic $r8$lambda$iH9o_kAmFOHkCYzB3lhYV5sa0Hk(Lorg/telegram/ui/ChatActivity$70;ZLjava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/ChatActivity$70;->lambda$onUnpin$0(ZLjava/util/ArrayList;Ljava/util/ArrayList;II)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    .line 11809
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$70;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onUnpin$0(ZLjava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 11845
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$70;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$6800(Lorg/telegram/ui/ChatActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 11846
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "pin_"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$70;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 11847
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$70;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mupdatePinnedMessageView(Lorg/telegram/ui/ChatActivity;Z)V

    goto :goto_0

    .line 11849
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$70;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didLoadPinnedMessages:I

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$70;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$70;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpinnedEndReached(Lorg/telegram/ui/ChatActivity;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/16 v7, 0x8

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v4

    aput-object p2, v7, v1

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x2

    aput-object p2, v7, v1

    const/4 p2, 0x3

    aput-object p3, v7, p2

    const/4 p2, 0x4

    aput-object v0, v7, p2

    const/4 p2, 0x5

    aput-object v5, v7, p2

    const/4 p2, 0x6

    aput-object p4, v7, p2

    const/4 p2, 0x7

    aput-object v6, v7, p2

    invoke-virtual {p1, v2, v7}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 11851
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$70;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpinBullerinTag(Lorg/telegram/ui/ChatActivity;)I

    move-result p1

    if-ne p5, p1, :cond_1

    .line 11852
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$70;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputpinBulletin(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Components/Bulletin;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onUnpin$1(ZI)V
    .locals 8

    if-nez p1, :cond_1

    .line 11857
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$70;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-boolean v0, p1, Lorg/telegram/ui/ChatActivity;->isTopic:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 11858
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$70;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpinnedMessageIds(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 11859
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$70;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$70;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpinnedMessageIds(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/MessagesController;->pinMessage(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$User;IZZZ)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 11862
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$70;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {p1, v1, v0}, Lorg/telegram/messenger/MessagesController;->unpinAllMessages(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$User;)V

    .line 11865
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$70;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpinBullerinTag(Lorg/telegram/ui/ChatActivity;)I

    move-result p1

    if-ne p2, p1, :cond_2

    .line 11866
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$70;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputpinBulletin(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Components/Bulletin;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public onUnpin(ZZ)V
    .locals 10

    const/4 v0, 0x0

    .line 11834
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz p1, :cond_3

    .line 11823
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$70;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpinnedMessageIds(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 11824
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$70;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpinnedMessageObjects(Lorg/telegram/ui/ChatActivity;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v5, 0x1

    if-eqz p2, :cond_1

    .line 11826
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$70;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6700(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 11827
    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$70;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpinnedMessageIds(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    const-string v7, "pin_"

    if-eqz v6, :cond_0

    .line 11828
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$70;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 11830
    :cond_0
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$70;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$70;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpinnedMessageIds(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v2, v6, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 11832
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$70;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v5}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mupdatePinnedMessageView(Lorg/telegram/ui/ChatActivity;Z)V

    goto :goto_1

    .line 11834
    :cond_1
    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$70;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/NotificationCenter;->didLoadPinnedMessages:I

    iget-object v8, p0, Lorg/telegram/ui/ChatActivity$70;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v9, 0x8

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v8, v9, v0

    aput-object v3, v9, v5

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v8, 0x2

    aput-object v0, v9, v8

    const/4 v0, 0x3

    const/4 v8, 0x0

    aput-object v8, v9, v0

    const/4 v0, 0x4

    aput-object v8, v9, v0

    const/4 v0, 0x5

    aput-object v2, v9, v0

    const/4 v0, 0x6

    aput-object v2, v9, v0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x7

    aput-object v0, v9, v2

    invoke-virtual {v6, v7, v9}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 11836
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$70;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpinBulletin(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 11837
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$70;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpinBulletin(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->hide()V

    .line 11839
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$70;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v5}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputshowPinBulletin(Lorg/telegram/ui/ChatActivity;Z)V

    .line 11840
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$70;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpinBullerinTag(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    add-int/lit8 v6, v2, 0x1

    invoke-static {v0, v6}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputpinBullerinTag(Lorg/telegram/ui/ChatActivity;I)V

    .line 11841
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$70;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mgetPinnedMessagesCount(Lorg/telegram/ui/ChatActivity;)I

    move-result v5

    .line 11842
    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$70;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v0, Lorg/telegram/ui/ChatActivity$70$$ExternalSyntheticLambda0;

    move-object v1, p0

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ChatActivity$70$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatActivity$70;ZLjava/util/ArrayList;Ljava/util/ArrayList;II)V

    move-object v3, v0

    move v1, v5

    move v0, v6

    new-instance v4, Lorg/telegram/ui/ChatActivity$70$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, p2, v0}, Lorg/telegram/ui/ChatActivity$70$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChatActivity$70;ZI)V

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$70;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    move-object v0, v7

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/BulletinFactory;->createUnpinAllMessagesBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;IZLjava/lang/Runnable;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputpinBulletin(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Components/Bulletin;)V

    return-void

    .line 11870
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$70;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpinnedMessageObjects(Lorg/telegram/ui/ChatActivity;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$70;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetcurrentPinnedMessageId(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    if-nez v1, :cond_4

    .line 11872
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$70;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmessagesDict(Lorg/telegram/ui/ChatActivity;)[Landroid/util/SparseArray;

    move-result-object v1

    aget-object v0, v1, v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$70;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetcurrentPinnedMessageId(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    .line 11874
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$70;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$munpinMessage(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public openHashtagSearch(Ljava/lang/String;)V
    .locals 1

    .line 11817
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$70;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ChatActivity;->openHashtagSearch(Ljava/lang/String;)V

    return-void
.end method

.method public openReplyMessage(I)V
    .locals 7

    .line 11812
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$70;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    move v1, p1

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/ChatActivity;->scrollToMessageId(IIZIZI)V

    return-void
.end method
