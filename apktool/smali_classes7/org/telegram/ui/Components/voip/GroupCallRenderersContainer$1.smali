.class Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 122
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->canHideUI()Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->hideUiRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->hideUiRunnableIsScheduled:Z

    .line 127
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->-$$Nest$msetUiVisible(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Z)V

    return-void
.end method
