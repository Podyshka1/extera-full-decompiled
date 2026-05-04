.class Lorg/telegram/ui/Components/ProximitySheet$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ProximitySheet;->startOpenAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ProximitySheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ProximitySheet;)V
    .locals 0

    .line 567
    iput-object p1, p0, Lorg/telegram/ui/Components/ProximitySheet$5;->this$0:Lorg/telegram/ui/Components/ProximitySheet;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 582
    iget-object v0, p0, Lorg/telegram/ui/Components/ProximitySheet$5;->this$0:Lorg/telegram/ui/Components/ProximitySheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/ProximitySheet;->-$$Nest$fgetcurrentSheetAnimation(Lorg/telegram/ui/Components/ProximitySheet;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ProximitySheet$5;->this$0:Lorg/telegram/ui/Components/ProximitySheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/ProximitySheet;->-$$Nest$fgetcurrentSheetAnimation(Lorg/telegram/ui/Components/ProximitySheet;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 583
    iget-object p1, p0, Lorg/telegram/ui/Components/ProximitySheet$5;->this$0:Lorg/telegram/ui/Components/ProximitySheet;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ProximitySheet;->-$$Nest$fputcurrentSheetAnimation(Lorg/telegram/ui/Components/ProximitySheet;Landroid/animation/AnimatorSet;)V

    .line 584
    iget-object p1, p0, Lorg/telegram/ui/Components/ProximitySheet$5;->this$0:Lorg/telegram/ui/Components/ProximitySheet;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ProximitySheet;->-$$Nest$fputcurrentSheetAnimationType(Lorg/telegram/ui/Components/ProximitySheet;I)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 570
    iget-object v0, p0, Lorg/telegram/ui/Components/ProximitySheet$5;->this$0:Lorg/telegram/ui/Components/ProximitySheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/ProximitySheet;->-$$Nest$fgetcurrentSheetAnimation(Lorg/telegram/ui/Components/ProximitySheet;)Landroid/animation/AnimatorSet;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ProximitySheet$5;->this$0:Lorg/telegram/ui/Components/ProximitySheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/ProximitySheet;->-$$Nest$fgetcurrentSheetAnimation(Lorg/telegram/ui/Components/ProximitySheet;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 571
    iget-object p1, p0, Lorg/telegram/ui/Components/ProximitySheet$5;->this$0:Lorg/telegram/ui/Components/ProximitySheet;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ProximitySheet;->-$$Nest$fputcurrentSheetAnimation(Lorg/telegram/ui/Components/ProximitySheet;Landroid/animation/AnimatorSet;)V

    .line 572
    iget-object p1, p0, Lorg/telegram/ui/Components/ProximitySheet$5;->this$0:Lorg/telegram/ui/Components/ProximitySheet;

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/ProximitySheet;->-$$Nest$fputcurrentSheetAnimationType(Lorg/telegram/ui/Components/ProximitySheet;I)V

    .line 573
    iget-object p1, p0, Lorg/telegram/ui/Components/ProximitySheet$5;->this$0:Lorg/telegram/ui/Components/ProximitySheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/ProximitySheet;->-$$Nest$fgetuseHardwareLayer(Lorg/telegram/ui/Components/ProximitySheet;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 574
    iget-object p1, p0, Lorg/telegram/ui/Components/ProximitySheet$5;->this$0:Lorg/telegram/ui/Components/ProximitySheet;

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 577
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->startAllHeavyOperations:I

    const/16 v2, 0x200

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v1

    invoke-virtual {p1, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method
