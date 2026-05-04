.class Lorg/telegram/ui/Stories/recorder/PaintView$28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/recorder/PaintView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/PaintView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V
    .locals 0

    .line 4988
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView$28;->this$0:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 4991
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView$28;->this$0:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->-$$Nest$fgetcurrentEntityView(Lorg/telegram/ui/Stories/recorder/PaintView;)Lorg/telegram/ui/Components/Paint/Views/EntityView;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 4994
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView$28;->this$0:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->-$$Nest$fgetcurrentEntityView(Lorg/telegram/ui/Stories/recorder/PaintView;)Lorg/telegram/ui/Components/Paint/Views/EntityView;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getEditText()Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    move-result-object v0

    .line 4995
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView$28;->this$0:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->-$$Nest$fgetdestroyed(Lorg/telegram/ui/Stories/recorder/PaintView;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView$28;->this$0:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->-$$Nest$fgetwaitingForKeyboardOpen(Lorg/telegram/ui/Stories/recorder/PaintView;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView$28;->this$0:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->-$$Nest$fgetkeyboardVisible(Lorg/telegram/ui/Stories/recorder/PaintView;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lorg/telegram/messenger/AndroidUtilities;->usingHardwareInput:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v1, :cond_1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4996
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 4997
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    .line 4998
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView$28;->this$0:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->-$$Nest$fgetopenKeyboardRunnable(Lorg/telegram/ui/Stories/recorder/PaintView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 4999
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView$28;->this$0:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->-$$Nest$fgetopenKeyboardRunnable(Lorg/telegram/ui/Stories/recorder/PaintView;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_1
    :goto_0
    return-void
.end method
