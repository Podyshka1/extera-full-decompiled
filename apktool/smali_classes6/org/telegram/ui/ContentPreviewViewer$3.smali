.class Lorg/telegram/ui/ContentPreviewViewer$3;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ContentPreviewViewer;->setParentActivity(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ContentPreviewViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ContentPreviewViewer;Landroid/content/Context;)V
    .locals 0

    .line 1503
    iput-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$3;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 1506
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1507
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$3;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetisStickerEditor(Lorg/telegram/ui/ContentPreviewViewer;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$3;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetmenuVisible(Lorg/telegram/ui/ContentPreviewViewer;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1510
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$3;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-virtual {p1}, Lorg/telegram/ui/ContentPreviewViewer;->close()V

    goto :goto_1

    .line 1508
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$3;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-virtual {p1}, Lorg/telegram/ui/ContentPreviewViewer;->closeWithMenu()V

    :goto_1
    return v1

    .line 1514
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
