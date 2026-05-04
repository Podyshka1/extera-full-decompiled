.class Lorg/telegram/ui/Components/SharedMediaLayout$49;
.super Lorg/telegram/ui/Components/ShareAlert;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/SharedMediaLayout;->addStoryAlbumShareItemOptions(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/ui/ActionBar/BaseFragment;JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

.field final synthetic val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;


# direct methods
.method public static synthetic $r8$lambda$0qOsK9f50hyRtTCq1LI-TSRnuc0(Lorg/telegram/ui/ActionBar/BaseFragment;Landroidx/collection/LongSparseArray;I)V
    .locals 8

    .line 11658
    instance-of v0, p0, Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_0

    .line 11659
    check-cast p0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity;->getUndoView()Lorg/telegram/ui/Components/UndoView;

    move-result-object p0

    :goto_0
    move-object v0, p0

    goto :goto_1

    .line 11660
    :cond_0
    instance-of v0, p0, Lorg/telegram/ui/ProfileActivity;

    if-eqz v0, :cond_1

    .line 11661
    check-cast p0, Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p0}, Lorg/telegram/ui/ProfileActivity;->getUndoView()Lorg/telegram/ui/Components/UndoView;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0

    :goto_1
    if-eqz v0, :cond_3

    .line 11666
    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_2

    const/4 p0, 0x0

    .line 11667
    invoke-virtual {p1, p0}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$Dialog;

    iget-wide p0, p0, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    const/16 v1, 0x35

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p0, p1, v1, p2}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Object;)V

    return-void

    .line 11669
    :cond_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v1, 0x0

    const/16 v3, 0x35

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .line 11653
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$49;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iput-object p9, p0, Lorg/telegram/ui/Components/SharedMediaLayout$49;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Lorg/telegram/ui/Components/ShareAlert;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected onSend(Landroidx/collection/LongSparseArray;ILorg/telegram/tgnet/TLRPC$TL_forumTopic;Z)V
    .locals 0

    .line 11656
    iget-object p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$49;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance p4, Lorg/telegram/ui/Components/SharedMediaLayout$49$$ExternalSyntheticLambda0;

    invoke-direct {p4, p3, p1, p2}, Lorg/telegram/ui/Components/SharedMediaLayout$49$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroidx/collection/LongSparseArray;I)V

    const-wide/16 p1, 0x64

    invoke-static {p4, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method
