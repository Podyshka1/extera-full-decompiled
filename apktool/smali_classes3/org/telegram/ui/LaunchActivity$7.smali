.class Lorg/telegram/ui/LaunchActivity$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LaunchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LaunchActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LaunchActivity;)V
    .locals 0

    .line 720
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$7;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 723
    iget-object p1, p0, Lorg/telegram/ui/LaunchActivity$7;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$7;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->-$$Nest$fgetblurListener(Lorg/telegram/ui/LaunchActivity;)Ljava/util/function/Consumer;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/WindowManager;->addCrossWindowBlurEnabledListener(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 728
    iget-object p1, p0, Lorg/telegram/ui/LaunchActivity$7;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$7;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->-$$Nest$fgetblurListener(Lorg/telegram/ui/LaunchActivity;)Ljava/util/function/Consumer;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeCrossWindowBlurEnabledListener(Ljava/util/function/Consumer;)V

    return-void
.end method
