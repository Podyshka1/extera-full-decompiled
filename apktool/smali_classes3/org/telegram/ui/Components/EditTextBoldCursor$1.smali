.class Lorg/telegram/ui/Components/EditTextBoldCursor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/EditTextBoldCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/EditTextBoldCursor;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EditTextBoldCursor;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor$1;->this$0:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 100
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor$1;->this$0:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 101
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor$1;->this$0:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->-$$Nest$fgetattachedToWindow(Lorg/telegram/ui/Components/EditTextBoldCursor;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1f4

    .line 102
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method
