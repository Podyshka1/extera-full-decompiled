.class Lorg/telegram/ui/Cells/DialogCell$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/DialogCell;->update(IZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/DialogCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/DialogCell;)V
    .locals 0

    .line 3472
    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogCell$4;->this$0:Lorg/telegram/ui/Cells/DialogCell;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 3475
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogCell$4;->this$0:Lorg/telegram/ui/Cells/DialogCell;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lorg/telegram/ui/Cells/DialogCell;->-$$Nest$fputcountChangeProgress(Lorg/telegram/ui/Cells/DialogCell;F)V

    .line 3476
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogCell$4;->this$0:Lorg/telegram/ui/Cells/DialogCell;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Cells/DialogCell;->-$$Nest$fputcountOldLayout(Lorg/telegram/ui/Cells/DialogCell;Landroid/text/StaticLayout;)V

    .line 3477
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogCell$4;->this$0:Lorg/telegram/ui/Cells/DialogCell;

    invoke-static {p1, v0}, Lorg/telegram/ui/Cells/DialogCell;->-$$Nest$fputcountAnimationStableLayout(Lorg/telegram/ui/Cells/DialogCell;Landroid/text/StaticLayout;)V

    .line 3478
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogCell$4;->this$0:Lorg/telegram/ui/Cells/DialogCell;

    invoke-static {p1, v0}, Lorg/telegram/ui/Cells/DialogCell;->-$$Nest$fputcountAnimationInLayout(Lorg/telegram/ui/Cells/DialogCell;Landroid/text/StaticLayout;)V

    .line 3479
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogCell$4;->this$0:Lorg/telegram/ui/Cells/DialogCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/DialogCell;->invalidate()V

    return-void
.end method
