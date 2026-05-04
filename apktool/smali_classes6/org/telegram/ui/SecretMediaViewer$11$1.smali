.class Lorg/telegram/ui/SecretMediaViewer$11$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SecretMediaViewer$11;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/SecretMediaViewer$11;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SecretMediaViewer$11;)V
    .locals 0

    .line 1092
    iput-object p1, p0, Lorg/telegram/ui/SecretMediaViewer$11$1;->this$1:Lorg/telegram/ui/SecretMediaViewer$11;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1095
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer$11$1;->this$1:Lorg/telegram/ui/SecretMediaViewer$11;

    iget-object p1, p1, Lorg/telegram/ui/SecretMediaViewer$11;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {p1}, Lorg/telegram/ui/SecretMediaViewer;->-$$Nest$fgetcaptionScrollView(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/PhotoViewer$CaptionScrollView;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->backgroundAlpha:F

    return-void
.end method
