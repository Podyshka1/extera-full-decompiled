.class public Lme/vkryl/android/animator/ReplaceAnimator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/vkryl/android/animator/ReplaceAnimator$Callback;
    }
.end annotation


# instance fields
.field private final list:Lme/vkryl/android/animator/ListAnimator;


# direct methods
.method public constructor <init>(Lme/vkryl/android/animator/ReplaceAnimator$Callback;Landroid/view/animation/Interpolator;J)V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lme/vkryl/android/animator/ListAnimator;

    new-instance v1, Lme/vkryl/android/animator/ReplaceAnimator$1;

    invoke-direct {v1, p0, p1}, Lme/vkryl/android/animator/ReplaceAnimator$1;-><init>(Lme/vkryl/android/animator/ReplaceAnimator;Lme/vkryl/android/animator/ReplaceAnimator$Callback;)V

    invoke-direct {v0, v1, p2, p3, p4}, Lme/vkryl/android/animator/ListAnimator;-><init>(Lme/vkryl/android/animator/ListAnimator$Callback;Landroid/view/animation/Interpolator;J)V

    iput-object v0, p0, Lme/vkryl/android/animator/ReplaceAnimator;->list:Lme/vkryl/android/animator/ListAnimator;

    return-void
.end method


# virtual methods
.method public clear(Z)V
    .locals 1

    .line 122
    iget-object v0, p0, Lme/vkryl/android/animator/ReplaceAnimator;->list:Lme/vkryl/android/animator/ListAnimator;

    invoke-virtual {v0, p1}, Lme/vkryl/android/animator/ListAnimator;->clear(Z)V

    return-void
.end method

.method public getMetadata()Lme/vkryl/android/animator/ListAnimator$Metadata;
    .locals 1

    .line 110
    iget-object v0, p0, Lme/vkryl/android/animator/ReplaceAnimator;->list:Lme/vkryl/android/animator/ListAnimator;

    invoke-virtual {v0}, Lme/vkryl/android/animator/ListAnimator;->getMetadata()Lme/vkryl/android/animator/ListAnimator$Metadata;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 132
    iget-object v0, p0, Lme/vkryl/android/animator/ReplaceAnimator;->list:Lme/vkryl/android/animator/ListAnimator;

    invoke-virtual {v0}, Lme/vkryl/android/animator/ListAnimator;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/Object;Z)V
    .locals 1

    .line 83
    iget-object v0, p0, Lme/vkryl/android/animator/ReplaceAnimator;->list:Lme/vkryl/android/animator/ListAnimator;

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1, p2}, Lme/vkryl/android/animator/ListAnimator;->reset(Ljava/util/List;Z)V

    return-void
.end method
