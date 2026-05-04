.class Lcom/exteragram/messenger/export/ui/ChatViewer$11;
.super Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/export/ui/ChatViewer;->createMenu(Landroid/view/View;FF)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;


# direct methods
.method constructor <init>(Lcom/exteragram/messenger/export/ui/ChatViewer;Landroid/view/View;II)V
    .locals 0

    .line 1372
    iput-object p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$11;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;-><init>(Landroid/view/View;II)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 1375
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    .line 1376
    iget-object v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$11;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-static {v0}, Lcom/exteragram/messenger/export/ui/ChatViewer;->-$$Nest$fgetscrimPopupWindow(Lcom/exteragram/messenger/export/ui/ChatViewer;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object v0

    if-eq v0, p0, :cond_0

    return-void

    .line 1379
    :cond_0
    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->hideVisible()V

    .line 1380
    iget-object v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$11;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/exteragram/messenger/export/ui/ChatViewer;->-$$Nest$fputscrimPopupWindow(Lcom/exteragram/messenger/export/ui/ChatViewer;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)V

    return-void
.end method
