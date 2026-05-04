.class Lorg/telegram/ui/StatisticActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/StatisticActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/StatisticActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/StatisticActivity;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lorg/telegram/ui/StatisticActivity$1;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 249
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$1;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->-$$Nest$fgetprogressLayout(Lorg/telegram/ui/StatisticActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xe6

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
