.class Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$2;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

.field final synthetic val$this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method public static synthetic $r8$lambda$9K8vdO-f1q48vPIaqt-Wqchgh8Y(Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$2;->lambda$onShowCustomView$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;Lorg/telegram/ui/ArticleViewer;)V
    .locals 0

    .line 8391
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$2;->this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$2;->val$this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method private synthetic lambda$onShowCustomView$0()V
    .locals 4

    .line 8407
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$2;->this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetcustomView(Lorg/telegram/ui/ArticleViewer;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8408
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$2;->this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetfullscreenVideoContainer(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$2;->this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetcustomView(Lorg/telegram/ui/ArticleViewer;)Landroid/view/View;

    move-result-object v1

    const/4 v2, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8409
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$2;->this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetfullscreenVideoContainer(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 2

    const/16 v0, 0x32

    .line 8430
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public onHideCustomView()V
    .locals 2

    .line 8416
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    .line 8417
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$2;->this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetcustomView(Lorg/telegram/ui/ArticleViewer;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 8420
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$2;->this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetfullscreenVideoContainer(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8421
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$2;->this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetfullscreenVideoContainer(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$2;->this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetcustomView(Lorg/telegram/ui/ArticleViewer;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 8422
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$2;->this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetcustomViewCallback(Lorg/telegram/ui/ArticleViewer;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$2;->this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetcustomViewCallback(Lorg/telegram/ui/ArticleViewer;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".chromium."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8423
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$2;->this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetcustomViewCallback(Lorg/telegram/ui/ArticleViewer;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 8425
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$2;->this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fputcustomView(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;)V

    return-void
.end method

.method public onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0

    .line 8395
    invoke-virtual {p0, p1, p3}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$2;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2

    .line 8400
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$2;->this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetcustomView(Lorg/telegram/ui/ArticleViewer;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8401
    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    return-void

    .line 8404
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$2;->this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0, p1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fputcustomView(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;)V

    .line 8405
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$2;->this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1, p2}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fputcustomViewCallback(Lorg/telegram/ui/ArticleViewer;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 8406
    new-instance p1, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$2$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$2$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$2;)V

    const-wide/16 v0, 0x64

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method
