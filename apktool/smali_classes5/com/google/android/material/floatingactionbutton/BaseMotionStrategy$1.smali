.class Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy$1;
.super Landroid/util/Property;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;->createAnimator(Lcom/google/android/material/animation/MotionSpec;)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;


# direct methods
.method constructor <init>(Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy$1;->this$0:Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;

    invoke-direct {p0, p2, p3}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Ljava/lang/Float;
    .locals 1

    .line 161
    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getCurrentOriginalTextColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 162
    invoke-virtual {p1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p1

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    if-eqz v0, :cond_0

    int-to-float p1, p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 163
    :goto_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 157
    check-cast p1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy$1;->get(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public set(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Ljava/lang/Float;)V
    .locals 3

    .line 176
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 177
    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getOriginalTextColor()Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->silentlyUpdateTextColor(Landroid/content/res/ColorStateList;)V

    return-void

    .line 179
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getCurrentOriginalTextColor()I

    move-result v0

    .line 185
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const/4 v2, 0x0

    invoke-static {v2, v1, p2}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 187
    invoke-static {v0, p2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p2

    .line 189
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 190
    invoke-virtual {p1, p2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->silentlyUpdateTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 157
    check-cast p1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy$1;->set(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Ljava/lang/Float;)V

    return-void
.end method
