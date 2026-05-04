.class abstract Landroidx/transition/ViewUtilsApi19;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/ViewUtilsApi19$Api29Impl;
    }
.end annotation


# static fields
.field private static sTryHiddenTransitionAlpha:Z = true

.field private static sViewFlagsField:Ljava/lang/reflect/Field;

.field private static sViewFlagsFieldFetched:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearNonTransitionAlpha(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public getTransitionAlpha(Landroid/view/View;)F
    .locals 1

    .line 67
    sget-boolean v0, Landroidx/transition/ViewUtilsApi19;->sTryHiddenTransitionAlpha:Z

    if-eqz v0, :cond_0

    .line 71
    :try_start_0
    invoke-static {p1}, Landroidx/transition/ViewUtilsApi19$Api29Impl;->getTransitionAlpha(Landroid/view/View;)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 v0, 0x0

    .line 73
    sput-boolean v0, Landroidx/transition/ViewUtilsApi19;->sTryHiddenTransitionAlpha:Z

    .line 76
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    return p1
.end method

.method public saveNonTransitionAlpha(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public abstract setLeftTopRightBottom(Landroid/view/View;IIII)V
.end method

.method public setTransitionAlpha(Landroid/view/View;F)V
    .locals 1

    .line 52
    sget-boolean v0, Landroidx/transition/ViewUtilsApi19;->sTryHiddenTransitionAlpha:Z

    if-eqz v0, :cond_0

    .line 56
    :try_start_0
    invoke-static {p1, p2}, Landroidx/transition/ViewUtilsApi19$Api29Impl;->setTransitionAlpha(Landroid/view/View;F)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 v0, 0x0

    .line 59
    sput-boolean v0, Landroidx/transition/ViewUtilsApi19;->sTryHiddenTransitionAlpha:Z

    .line 62
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public setTransitionVisibility(Landroid/view/View;I)V
    .locals 3

    .line 167
    sget-boolean v0, Landroidx/transition/ViewUtilsApi19;->sViewFlagsFieldFetched:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 169
    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v2, "mViewFlags"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroidx/transition/ViewUtilsApi19;->sViewFlagsField:Ljava/lang/reflect/Field;

    .line 170
    invoke-virtual {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 172
    :catch_0
    const-string v1, "ViewUtilsApi19"

    const-string v2, "fetchViewFlagsField: "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :goto_0
    sput-boolean v0, Landroidx/transition/ViewUtilsApi19;->sViewFlagsFieldFetched:Z

    .line 176
    :cond_0
    sget-object v0, Landroidx/transition/ViewUtilsApi19;->sViewFlagsField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    .line 178
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 179
    sget-object v1, Landroidx/transition/ViewUtilsApi19;->sViewFlagsField:Ljava/lang/reflect/Field;

    and-int/lit8 v0, v0, -0xd

    or-int/2addr p2, v0

    invoke-virtual {v1, p1, p2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    return-void
.end method

.method public abstract transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V
.end method

.method public abstract transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V
.end method
