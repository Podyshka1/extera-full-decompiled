.class Lorg/telegram/ui/GroupCallActivity$55;
.super Lorg/telegram/ui/Components/ShareAlert;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupCallActivity;->openShareAlert(ZLjava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/GroupCallActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupCallActivity;Landroid/content/Context;Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    .line 6722
    iput-object p1, p0, Lorg/telegram/ui/GroupCallActivity$55;->this$0:Lorg/telegram/ui/GroupCallActivity;

    move-object p1, p0

    invoke-direct/range {p1 .. p11}, Lorg/telegram/ui/Components/ShareAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method protected onSend(Landroidx/collection/LongSparseArray;ILorg/telegram/tgnet/TLRPC$TL_forumTopic;Z)V
    .locals 8

    if-nez p4, :cond_0

    return-void

    .line 6726
    :cond_0
    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result p3

    const/4 p4, 0x1

    if-ne p3, p4, :cond_1

    .line 6727
    iget-object p3, p0, Lorg/telegram/ui/GroupCallActivity$55;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-virtual {p3}, Lorg/telegram/ui/GroupCallActivity;->getUndoView()Lorg/telegram/ui/Components/UndoView;

    move-result-object p3

    const/4 p4, 0x0

    invoke-virtual {p1, p4}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Dialog;

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    const/16 p1, 0x29

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, v0, v1, p1, p2}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Object;)V

    return-void

    .line 6729
    :cond_1
    iget-object p3, p0, Lorg/telegram/ui/GroupCallActivity$55;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-virtual {p3}, Lorg/telegram/ui/GroupCallActivity;->getUndoView()Lorg/telegram/ui/Components/UndoView;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v1, 0x0

    const/16 v3, 0x29

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method
