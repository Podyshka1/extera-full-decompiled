.class Lorg/telegram/ui/GroupCallActivity$56;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/ShareAlert$ShareAlertDelegate;


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
.method constructor <init>(Lorg/telegram/ui/GroupCallActivity;)V
    .locals 0

    .line 6733
    iput-object p1, p0, Lorg/telegram/ui/GroupCallActivity$56;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didCopy()Z
    .locals 9

    .line 6736
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->shouldShowClipboardToast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6737
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$56;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/GroupCallActivity;->getUndoView()Lorg/telegram/ui/Components/UndoView;

    move-result-object v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v2, 0x0

    const/16 v4, 0x21

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic didShare()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ShareAlert$ShareAlertDelegate$-CC;->$default$didShare(Lorg/telegram/ui/Components/ShareAlert$ShareAlertDelegate;)V

    return-void
.end method
