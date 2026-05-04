.class Lorg/telegram/ui/ContentPreviewViewer$1$3;
.super Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ContentPreviewViewer$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ContentPreviewViewer$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ContentPreviewViewer$1;Landroid/view/View;II)V
    .locals 0

    .line 791
    iput-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$1$3;->this$1:Lorg/telegram/ui/ContentPreviewViewer$1;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;-><init>(Landroid/view/View;II)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 794
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    .line 795
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$1$3;->this$1:Lorg/telegram/ui/ContentPreviewViewer$1;

    iget-object v0, v0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v1, 0x0

    .line 796
    invoke-static {v0, v1}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fputmenuVisible(Lorg/telegram/ui/ContentPreviewViewer;Z)V

    .line 797
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$1$3;->this$1:Lorg/telegram/ui/ContentPreviewViewer$1;

    iget-object v0, v0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcloseOnDismiss(Lorg/telegram/ui/ContentPreviewViewer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 798
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$1$3;->this$1:Lorg/telegram/ui/ContentPreviewViewer$1;

    iget-object v0, v0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-virtual {v0}, Lorg/telegram/ui/ContentPreviewViewer;->close()V

    :cond_0
    return-void
.end method
