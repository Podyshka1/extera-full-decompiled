.class Lorg/telegram/ui/PhotoViewer$76$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer$76;->createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PhotoViewer$76;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer$76;)V
    .locals 0

    .line 16601
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$76$2;->this$1:Lorg/telegram/ui/PhotoViewer$76;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 16604
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$76$2;->this$1:Lorg/telegram/ui/PhotoViewer$76;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$76;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcaptionTextViewSwitcher(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;->setTranslationY(F)V

    return-void
.end method
