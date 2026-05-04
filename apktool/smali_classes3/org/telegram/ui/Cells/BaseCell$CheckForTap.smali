.class final Lorg/telegram/ui/Cells/BaseCell$CheckForTap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Cells/BaseCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CheckForTap"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/BaseCell;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Cells/BaseCell;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lorg/telegram/ui/Cells/BaseCell$CheckForTap;->this$0:Lorg/telegram/ui/Cells/BaseCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Cells/BaseCell;Lorg/telegram/ui/Cells/BaseCell-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/BaseCell$CheckForTap;-><init>(Lorg/telegram/ui/Cells/BaseCell;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 35
    iget-object v0, p0, Lorg/telegram/ui/Cells/BaseCell$CheckForTap;->this$0:Lorg/telegram/ui/Cells/BaseCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/BaseCell;->-$$Nest$fgetpendingCheckForLongPress(Lorg/telegram/ui/Cells/BaseCell;)Lorg/telegram/ui/Cells/BaseCell$CheckForLongPress;

    move-result-object v0

    if-nez v0, :cond_0

    .line 36
    iget-object v0, p0, Lorg/telegram/ui/Cells/BaseCell$CheckForTap;->this$0:Lorg/telegram/ui/Cells/BaseCell;

    new-instance v1, Lorg/telegram/ui/Cells/BaseCell$CheckForLongPress;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Cells/BaseCell$CheckForLongPress;-><init>(Lorg/telegram/ui/Cells/BaseCell;)V

    invoke-static {v0, v1}, Lorg/telegram/ui/Cells/BaseCell;->-$$Nest$fputpendingCheckForLongPress(Lorg/telegram/ui/Cells/BaseCell;Lorg/telegram/ui/Cells/BaseCell$CheckForLongPress;)V

    .line 38
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/BaseCell$CheckForTap;->this$0:Lorg/telegram/ui/Cells/BaseCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/BaseCell;->-$$Nest$fgetpendingCheckForLongPress(Lorg/telegram/ui/Cells/BaseCell;)Lorg/telegram/ui/Cells/BaseCell$CheckForLongPress;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/BaseCell$CheckForTap;->this$0:Lorg/telegram/ui/Cells/BaseCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/BaseCell;->-$$Nest$fgetpressCount(Lorg/telegram/ui/Cells/BaseCell;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lorg/telegram/ui/Cells/BaseCell;->-$$Nest$fputpressCount(Lorg/telegram/ui/Cells/BaseCell;I)V

    iput v2, v0, Lorg/telegram/ui/Cells/BaseCell$CheckForLongPress;->currentPressCount:I

    .line 39
    iget-object v0, p0, Lorg/telegram/ui/Cells/BaseCell$CheckForTap;->this$0:Lorg/telegram/ui/Cells/BaseCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/BaseCell;->-$$Nest$fgetpendingCheckForLongPress(Lorg/telegram/ui/Cells/BaseCell;)Lorg/telegram/ui/Cells/BaseCell$CheckForLongPress;

    move-result-object v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
