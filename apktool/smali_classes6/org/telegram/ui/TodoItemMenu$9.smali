.class Lorg/telegram/ui/TodoItemMenu$9;
.super Lorg/telegram/ui/Cells/ChatMessageCell;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TodoItemMenu;->setCell(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Cells/ChatMessageCell;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/TodoItemMenu;

.field final synthetic val$finalHeight:I

.field final synthetic val$finalWidth:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/TodoItemMenu;Landroid/content/Context;IZLorg/telegram/messenger/ChatMessageSharedResources;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;II)V
    .locals 0

    .line 415
    iput-object p1, p0, Lorg/telegram/ui/TodoItemMenu$9;->this$0:Lorg/telegram/ui/TodoItemMenu;

    iput p7, p0, Lorg/telegram/ui/TodoItemMenu$9;->val$finalWidth:I

    iput p8, p0, Lorg/telegram/ui/TodoItemMenu$9;->val$finalHeight:I

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lorg/telegram/ui/Cells/ChatMessageCell;-><init>(Landroid/content/Context;IZLorg/telegram/messenger/ChatMessageSharedResources;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method public drawOverlays(Landroid/graphics/Canvas;)V
    .locals 1

    const/4 v0, 0x0

    .line 426
    iput v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell;->firstVisiblePollButton:I

    .line 427
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell;->pollButtons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell;->lastVisiblePollButton:I

    .line 428
    invoke-super {p0, p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawOverlays(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 421
    iget p1, p0, Lorg/telegram/ui/TodoItemMenu$9;->val$finalWidth:I

    iget p2, p0, Lorg/telegram/ui/TodoItemMenu$9;->val$finalHeight:I

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setPressed(Z)V
    .locals 0

    return-void
.end method
