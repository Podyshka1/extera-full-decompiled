.class Lorg/telegram/ui/PhotoViewer$54;
.super Lorg/telegram/ui/Components/VideoSeekPreviewImage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->createVideoControlsInterface()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;Lorg/telegram/ui/Components/VideoSeekPreviewImage$VideoSeekPreviewImageDelegate;)V
    .locals 0

    .line 9981
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$54;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/VideoSeekPreviewImage;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/VideoSeekPreviewImage$VideoSeekPreviewImageDelegate;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .line 9984
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    move-object p1, p0

    .line 9985
    iget-object p2, p1, Lorg/telegram/ui/PhotoViewer$54;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mupdateVideoSeekPreviewPosition(Lorg/telegram/ui/PhotoViewer;)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 9990
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_0

    .line 9992
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$54;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mupdateVideoSeekPreviewPosition(Lorg/telegram/ui/PhotoViewer;)V

    :cond_0
    return-void
.end method
