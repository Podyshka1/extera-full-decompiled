.class public final synthetic Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda37;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/DialogsActivity;

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/DialogsActivity;F)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda37;->f$0:Lorg/telegram/ui/DialogsActivity;

    iput p2, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda37;->f$1:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda37;->f$0:Lorg/telegram/ui/DialogsActivity;

    iget v1, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda37;->f$1:F

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/DialogsActivity;->$r8$lambda$U9z1LYCIFVEv4FK5MWrfB5TZDIA(Lorg/telegram/ui/DialogsActivity;FLandroid/animation/ValueAnimator;)V

    return-void
.end method
