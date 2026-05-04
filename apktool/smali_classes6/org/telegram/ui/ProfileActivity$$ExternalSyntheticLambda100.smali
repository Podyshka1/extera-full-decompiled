.class public final synthetic Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda100;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ProfileActivity;

.field public final synthetic f$1:Landroid/animation/ValueAnimator;

.field public final synthetic f$2:F

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ProfileActivity;Landroid/animation/ValueAnimator;FZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda100;->f$0:Lorg/telegram/ui/ProfileActivity;

    iput-object p2, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda100;->f$1:Landroid/animation/ValueAnimator;

    iput p3, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda100;->f$2:F

    iput-boolean p4, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda100;->f$3:Z

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda100;->f$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda100;->f$1:Landroid/animation/ValueAnimator;

    iget v2, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda100;->f$2:F

    iget-boolean v3, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda100;->f$3:Z

    invoke-static {v0, v1, v2, v3, p1}, Lorg/telegram/ui/ProfileActivity;->$r8$lambda$yX5QnTG_Yhh64G-FNZf9fsxDrnY(Lorg/telegram/ui/ProfileActivity;Landroid/animation/ValueAnimator;FZLandroid/animation/ValueAnimator;)V

    return-void
.end method
