.class public abstract Landroidx/core/view/ViewGroupCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/ViewGroupCompat$Api21Impl;
    }
.end annotation


# static fields
.field private static final CONSUMED:Landroid/view/WindowInsets;

.field static sCompatInsetsDispatchInstalled:Z


# direct methods
.method public static synthetic $r8$lambda$Lnvt8czxDhWTdEYEcOIJD_YU-AE([Landroid/view/WindowInsets;Landroid/view/View$OnApplyWindowInsetsListener;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    if-eqz p1, :cond_0

    .line 247
    invoke-interface {p1, p2, p3}, Landroid/view/View$OnApplyWindowInsetsListener;->onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    goto :goto_0

    .line 248
    :cond_0
    invoke-virtual {p2, p3}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    :goto_0
    const/4 p2, 0x0

    aput-object p1, p0, p2

    .line 251
    sget-object p0, Landroidx/core/view/ViewGroupCompat;->CONSUMED:Landroid/view/WindowInsets;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 52
    sget-object v0, Landroidx/core/view/WindowInsetsCompat;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    sput-object v0, Landroidx/core/view/ViewGroupCompat;->CONSUMED:Landroid/view/WindowInsets;

    const/4 v0, 0x0

    .line 54
    sput-boolean v0, Landroidx/core/view/ViewGroupCompat;->sCompatInsetsDispatchInstalled:Z

    return-void
.end method

.method static dispatchApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5

    .line 232
    sget v0, Landroidx/core/R$id;->tag_on_apply_window_listener:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 233
    sget v1, Landroidx/core/R$id;->tag_window_insets_animation_callback:I

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 235
    instance-of v2, v0, Landroid/view/View$OnApplyWindowInsetsListener;

    if-eqz v2, :cond_0

    .line 236
    check-cast v0, Landroid/view/View$OnApplyWindowInsetsListener;

    goto :goto_0

    .line 237
    :cond_0
    instance-of v0, v1, Landroid/view/View$OnApplyWindowInsetsListener;

    if-eqz v0, :cond_1

    .line 238
    move-object v0, v1

    check-cast v0, Landroid/view/View$OnApplyWindowInsetsListener;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    .line 244
    new-array v1, v1, [Landroid/view/WindowInsets;

    sget-object v2, Landroidx/core/view/ViewGroupCompat;->CONSUMED:Landroid/view/WindowInsets;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 245
    new-instance v2, Landroidx/core/view/ViewGroupCompat$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, v0}, Landroidx/core/view/ViewGroupCompat$$ExternalSyntheticLambda0;-><init>([Landroid/view/WindowInsets;Landroid/view/View$OnApplyWindowInsetsListener;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 256
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 259
    sget p1, Landroidx/core/R$id;->tag_compat_insets_dispatch:I

    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    .line 261
    instance-of v2, p1, Landroid/view/View$OnApplyWindowInsetsListener;

    if-eqz v2, :cond_2

    .line 262
    move-object v0, p1

    check-cast v0, Landroid/view/View$OnApplyWindowInsetsListener;

    .line 260
    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 265
    aget-object p1, v1, v3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result p1

    if-nez p1, :cond_3

    instance-of p1, p0, Landroid/view/ViewGroup;

    if-eqz p1, :cond_3

    .line 266
    check-cast p0, Landroid/view/ViewGroup;

    .line 267
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    move v0, v3

    :goto_1
    if-ge v0, p1, :cond_3

    .line 269
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    aget-object v4, v1, v3

    invoke-static {v2, v4}, Landroidx/core/view/ViewGroupCompat;->dispatchApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 272
    :cond_3
    aget-object p0, v1, v3

    if-eqz p0, :cond_4

    return-object p0

    :cond_4
    sget-object p0, Landroidx/core/view/ViewGroupCompat;->CONSUMED:Landroid/view/WindowInsets;

    return-object p0
.end method

.method public static isTransitionGroup(Landroid/view/ViewGroup;)Z
    .locals 0

    .line 170
    invoke-static {p0}, Landroidx/core/view/ViewGroupCompat$Api21Impl;->isTransitionGroup(Landroid/view/ViewGroup;)Z

    move-result p0

    return p0
.end method
