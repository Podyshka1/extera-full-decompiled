.class public final synthetic Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lme/vkryl/android/animator/ReplaceAnimator$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/FragmentContextView;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/FragmentContextView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda13;->f$0:Lorg/telegram/ui/Components/FragmentContextView;

    return-void
.end method


# virtual methods
.method public synthetic hasChanges(Lme/vkryl/android/animator/ReplaceAnimator;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lme/vkryl/android/animator/ReplaceAnimator$Callback$-CC;->$default$hasChanges(Lme/vkryl/android/animator/ReplaceAnimator$Callback;Lme/vkryl/android/animator/ReplaceAnimator;)Z

    move-result p1

    return p1
.end method

.method public synthetic onApplyMetadataAnimation(Lme/vkryl/android/animator/ReplaceAnimator;F)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lme/vkryl/android/animator/ReplaceAnimator$Callback$-CC;->$default$onApplyMetadataAnimation(Lme/vkryl/android/animator/ReplaceAnimator$Callback;Lme/vkryl/android/animator/ReplaceAnimator;F)Z

    move-result p1

    return p1
.end method

.method public synthetic onFinishMetadataAnimation(Lme/vkryl/android/animator/ReplaceAnimator;Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lme/vkryl/android/animator/ReplaceAnimator$Callback$-CC;->$default$onFinishMetadataAnimation(Lme/vkryl/android/animator/ReplaceAnimator$Callback;Lme/vkryl/android/animator/ReplaceAnimator;Z)V

    return-void
.end method

.method public synthetic onForceApplyChanges(Lme/vkryl/android/animator/ReplaceAnimator;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lme/vkryl/android/animator/ReplaceAnimator$Callback$-CC;->$default$onForceApplyChanges(Lme/vkryl/android/animator/ReplaceAnimator$Callback;Lme/vkryl/android/animator/ReplaceAnimator;)V

    return-void
.end method

.method public final onItemChanged(Lme/vkryl/android/animator/ReplaceAnimator;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda13;->f$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/FragmentContextView;->$r8$lambda$O9FlCVEqNc3fR8iLxkBmuAIJsGA(Lorg/telegram/ui/Components/FragmentContextView;Lme/vkryl/android/animator/ReplaceAnimator;)V

    return-void
.end method

.method public synthetic onPrepareMetadataAnimation(Lme/vkryl/android/animator/ReplaceAnimator;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lme/vkryl/android/animator/ReplaceAnimator$Callback$-CC;->$default$onPrepareMetadataAnimation(Lme/vkryl/android/animator/ReplaceAnimator$Callback;Lme/vkryl/android/animator/ReplaceAnimator;)V

    return-void
.end method
