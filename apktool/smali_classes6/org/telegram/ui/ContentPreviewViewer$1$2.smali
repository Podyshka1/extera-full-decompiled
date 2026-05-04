.class Lorg/telegram/ui/ContentPreviewViewer$1$2;
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

    .line 636
    iput-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$1$2;->this$1:Lorg/telegram/ui/ContentPreviewViewer$1;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;-><init>(Landroid/view/View;II)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .line 639
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    .line 640
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$1$2;->this$1:Lorg/telegram/ui/ContentPreviewViewer$1;

    iget-object v0, v0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v2, 0x0

    .line 641
    invoke-static {v0, v2}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fputmenuVisible(Lorg/telegram/ui/ContentPreviewViewer;Z)V

    .line 642
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$1$2;->this$1:Lorg/telegram/ui/ContentPreviewViewer$1;

    iget-object v0, v0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcloseOnDismiss(Lorg/telegram/ui/ContentPreviewViewer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$1$2;->this$1:Lorg/telegram/ui/ContentPreviewViewer$1;

    iget-object v0, v0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-virtual {v0}, Lorg/telegram/ui/ContentPreviewViewer;->close()V

    .line 645
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$1$2;->this$1:Lorg/telegram/ui/ContentPreviewViewer$1;

    iget-object v0, v0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcurrentPreviewCell(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 646
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$1$2;->this$1:Lorg/telegram/ui/ContentPreviewViewer$1;

    iget-object v0, v0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcurrentPreviewCell(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Cells/StickerEmojiCell;

    if-eqz v0, :cond_1

    .line 647
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$1$2;->this$1:Lorg/telegram/ui/ContentPreviewViewer$1;

    iget-object v0, v0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcurrentPreviewCell(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Cells/StickerEmojiCell;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/StickerEmojiCell;->setScaled(Z)V

    goto :goto_0

    .line 648
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$1$2;->this$1:Lorg/telegram/ui/ContentPreviewViewer$1;

    iget-object v0, v0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcurrentPreviewCell(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Cells/StickerCell;

    if-eqz v0, :cond_2

    .line 649
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$1$2;->this$1:Lorg/telegram/ui/ContentPreviewViewer$1;

    iget-object v0, v0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcurrentPreviewCell(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Cells/StickerCell;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/StickerCell;->setScaled(Z)V

    goto :goto_0

    .line 650
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$1$2;->this$1:Lorg/telegram/ui/ContentPreviewViewer$1;

    iget-object v0, v0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcurrentPreviewCell(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz v0, :cond_3

    .line 651
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$1$2;->this$1:Lorg/telegram/ui/ContentPreviewViewer$1;

    iget-object v0, v0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcurrentPreviewCell(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/ContextLinkCell;->setScaled(Z)V

    .line 653
    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$1$2;->this$1:Lorg/telegram/ui/ContentPreviewViewer$1;

    iget-object v0, v0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0, v1}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fputcurrentPreviewCell(Lorg/telegram/ui/ContentPreviewViewer;Landroid/view/View;)V

    :cond_4
    return-void
.end method
