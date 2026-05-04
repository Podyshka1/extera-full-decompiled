.class Lorg/telegram/ui/ArticleViewer$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/PinchToZoomHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer;->setParentActivity(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer;)V
    .locals 0

    .line 4642
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$20;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic getCurrentTextureView()Landroid/view/TextureView;
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/PinchToZoomHelper$Callback$-CC;->$default$getCurrentTextureView(Lorg/telegram/ui/PinchToZoomHelper$Callback;)Landroid/view/TextureView;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onZoomFinished(Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/PinchToZoomHelper$Callback$-CC;->$default$onZoomFinished(Lorg/telegram/ui/PinchToZoomHelper$Callback;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public onZoomStarted(Lorg/telegram/messenger/MessageObject;)V
    .locals 1

    .line 4645
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$20;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    if-eqz p1, :cond_0

    .line 4646
    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer$PageLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->cancelClickRunnables(Z)V

    :cond_0
    return-void
.end method
