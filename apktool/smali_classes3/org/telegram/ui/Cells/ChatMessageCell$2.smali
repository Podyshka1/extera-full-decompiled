.class Lorg/telegram/ui/Cells/ChatMessageCell$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Cells/ChatMessageCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/ChatMessageCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    .line 1726
    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$2;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1729
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$2;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$mcheckLocationExpired(Lorg/telegram/ui/Cells/ChatMessageCell;)V

    .line 1730
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$2;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetlocationExpired(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1731
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$2;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    .line 1732
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$2;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fputscheduledInvalidate(Lorg/telegram/ui/Cells/ChatMessageCell;Z)V

    return-void

    .line 1734
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$2;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetrect(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0x5

    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$2;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetrect(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    add-int/lit8 v2, v2, -0x5

    iget-object v3, p0, Lorg/telegram/ui/Cells/ChatMessageCell$2;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetrect(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    add-int/lit8 v3, v3, 0x5

    iget-object v4, p0, Lorg/telegram/ui/Cells/ChatMessageCell$2;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetrect(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    add-int/lit8 v4, v4, 0x5

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate(IIII)V

    .line 1735
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$2;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetscheduledInvalidate(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1736
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$2;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetinvalidateRunnable(Lorg/telegram/ui/Cells/ChatMessageCell;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method
