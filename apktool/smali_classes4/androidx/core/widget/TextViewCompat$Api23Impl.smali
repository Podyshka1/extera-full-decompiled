.class abstract Landroidx/core/widget/TextViewCompat$Api23Impl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/TextViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api23Impl"
.end annotation


# direct methods
.method static getBreakStrategy(Landroid/widget/TextView;)I
    .locals 0

    .line 1090
    invoke-virtual {p0}, Landroid/widget/TextView;->getBreakStrategy()I

    move-result p0

    return p0
.end method

.method static getHyphenationFrequency(Landroid/widget/TextView;)I
    .locals 0

    .line 1098
    invoke-virtual {p0}, Landroid/widget/TextView;->getHyphenationFrequency()I

    move-result p0

    return p0
.end method

.method static setBreakStrategy(Landroid/widget/TextView;I)V
    .locals 0

    .line 1094
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setBreakStrategy(I)V

    return-void
.end method

.method static setCompoundDrawableTintList(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1114
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method static setCompoundDrawableTintMode(Landroid/widget/TextView;Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 1118
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setCompoundDrawableTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method static setHyphenationFrequency(Landroid/widget/TextView;I)V
    .locals 0

    .line 1102
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setHyphenationFrequency(I)V

    return-void
.end method
