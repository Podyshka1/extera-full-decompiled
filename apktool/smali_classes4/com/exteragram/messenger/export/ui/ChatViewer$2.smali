.class Lcom/exteragram/messenger/export/ui/ChatViewer$2;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/export/ui/ChatViewer;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;


# direct methods
.method constructor <init>(Lcom/exteragram/messenger/export/ui/ChatViewer;)V
    .locals 0

    .line 652
    iput-object p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$2;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 656
    iget-object p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$2;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :cond_0
    return-void
.end method
