.class public final synthetic Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/PhotoViewer;

.field public final synthetic f$1:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

.field public final synthetic f$2:Landroid/animation/AnimatorSet;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda6;->f$0:Lorg/telegram/ui/PhotoViewer;

    iput-object p2, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda6;->f$1:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    iput-object p3, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda6;->f$2:Landroid/animation/AnimatorSet;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda6;->f$0:Lorg/telegram/ui/PhotoViewer;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda6;->f$1:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda6;->f$2:Landroid/animation/AnimatorSet;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer;->$r8$lambda$6Zz3qeeQXJpJCA4pG_-A7gmKF1s(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;Landroid/animation/AnimatorSet;)V

    return-void
.end method
