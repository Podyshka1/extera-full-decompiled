.class public final synthetic Lorg/telegram/ui/Components/AnimatedLinearLayout$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lme/vkryl/android/animator/ListAnimator$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/AnimatedLinearLayout;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/AnimatedLinearLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedLinearLayout$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/Components/AnimatedLinearLayout;

    return-void
.end method


# virtual methods
.method public synthetic hasChanges(Lme/vkryl/android/animator/ListAnimator;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lme/vkryl/android/animator/ListAnimator$MetadataCallback$-CC;->$default$hasChanges(Lme/vkryl/android/animator/ListAnimator$MetadataCallback;Lme/vkryl/android/animator/ListAnimator;)Z

    move-result p1

    return p1
.end method

.method public synthetic onApplyMetadataAnimation(Lme/vkryl/android/animator/ListAnimator;F)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lme/vkryl/android/animator/ListAnimator$MetadataCallback$-CC;->$default$onApplyMetadataAnimation(Lme/vkryl/android/animator/ListAnimator$MetadataCallback;Lme/vkryl/android/animator/ListAnimator;F)Z

    move-result p1

    return p1
.end method

.method public synthetic onFinishMetadataAnimation(Lme/vkryl/android/animator/ListAnimator;Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lme/vkryl/android/animator/ListAnimator$MetadataCallback$-CC;->$default$onFinishMetadataAnimation(Lme/vkryl/android/animator/ListAnimator$MetadataCallback;Lme/vkryl/android/animator/ListAnimator;Z)V

    return-void
.end method

.method public synthetic onForceApplyChanges(Lme/vkryl/android/animator/ListAnimator;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lme/vkryl/android/animator/ListAnimator$MetadataCallback$-CC;->$default$onForceApplyChanges(Lme/vkryl/android/animator/ListAnimator$MetadataCallback;Lme/vkryl/android/animator/ListAnimator;)V

    return-void
.end method

.method public final onItemsChanged(Lme/vkryl/android/animator/ListAnimator;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedLinearLayout$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/Components/AnimatedLinearLayout;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/AnimatedLinearLayout;->$r8$lambda$dv9EgLjAtJ_7fZUjlR4p9jhEXfM(Lorg/telegram/ui/Components/AnimatedLinearLayout;Lme/vkryl/android/animator/ListAnimator;)V

    return-void
.end method

.method public synthetic onPrepareMetadataAnimation(Lme/vkryl/android/animator/ListAnimator;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lme/vkryl/android/animator/ListAnimator$MetadataCallback$-CC;->$default$onPrepareMetadataAnimation(Lme/vkryl/android/animator/ListAnimator$MetadataCallback;Lme/vkryl/android/animator/ListAnimator;)V

    return-void
.end method
