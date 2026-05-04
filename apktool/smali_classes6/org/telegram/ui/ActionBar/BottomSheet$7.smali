.class Lorg/telegram/ui/ActionBar/BottomSheet$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/BottomSheet;->dismissWithButtonClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

.field final synthetic val$item:I


# direct methods
.method public static synthetic $r8$lambda$YLqon77yhb8UUbghQf2qtKqQAbM(Lorg/telegram/ui/ActionBar/BottomSheet$7;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BottomSheet$7;->lambda$onAnimationEnd$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ActionBar/BottomSheet;I)V
    .locals 0

    .line 1844
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$7;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iput p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$7;->val$item:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method private synthetic lambda$onAnimationEnd$0()V
    .locals 2

    .line 1854
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$7;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fgetonHideListener(Lorg/telegram/ui/ActionBar/BottomSheet;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1855
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$7;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fgetonHideListener(Lorg/telegram/ui/ActionBar/BottomSheet;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$7;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-interface {v0, v1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 1858
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$7;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissInternal()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1860
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1869
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$7;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1870
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$7;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    const/4 v0, 0x0

    .line 1871
    iput v0, p1, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimationType:I

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 1847
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$7;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1848
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$7;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    .line 1849
    iput v1, p1, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimationType:I

    .line 1850
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fgetonClickListener(Lorg/telegram/ui/ActionBar/BottomSheet;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1851
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$7;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fgetonClickListener(Lorg/telegram/ui/ActionBar/BottomSheet;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$7;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$7;->val$item:I

    invoke-interface {p1, v0, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 1853
    :cond_0
    new-instance p1, Lorg/telegram/ui/ActionBar/BottomSheet$7$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ActionBar/BottomSheet$7$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet$7;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1864
    :cond_1
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
