.class public abstract Landroidx/core/widget/CheckedTextViewCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/widget/CheckedTextViewCompat$Api21Impl;
    }
.end annotation


# direct methods
.method public static getCheckMarkDrawable(Landroid/widget/CheckedTextView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 121
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getCheckMarkDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static setCheckMarkTintList(Landroid/widget/CheckedTextView;Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 55
    invoke-static {p0, p1}, Landroidx/core/widget/CheckedTextViewCompat$Api21Impl;->setCheckMarkTintList(Landroid/widget/CheckedTextView;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public static setCheckMarkTintMode(Landroid/widget/CheckedTextView;Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 90
    invoke-static {p0, p1}, Landroidx/core/widget/CheckedTextViewCompat$Api21Impl;->setCheckMarkTintMode(Landroid/widget/CheckedTextView;Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method
