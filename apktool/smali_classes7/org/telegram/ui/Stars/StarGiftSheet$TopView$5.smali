.class Lorg/telegram/ui/Stars/StarGiftSheet$TopView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->setPreviewAttributes(Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Attributes;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stars/StarGiftSheet$TopView;)V
    .locals 0

    .line 2656
    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView$5;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 2659
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView$5;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->-$$Nest$fgettoggled(Lorg/telegram/ui/Stars/StarGiftSheet$TopView;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->-$$Nest$fputtoggleBackdrop(Lorg/telegram/ui/Stars/StarGiftSheet$TopView;F)V

    .line 2660
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView$5;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->-$$Nest$fgetcurrentPage(Lorg/telegram/ui/Stars/StarGiftSheet$TopView;)Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->onSwitchPage(Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;)V

    return-void
.end method
