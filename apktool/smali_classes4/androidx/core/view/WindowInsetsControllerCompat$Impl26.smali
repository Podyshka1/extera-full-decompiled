.class Landroidx/core/view/WindowInsetsControllerCompat$Impl26;
.super Landroidx/core/view/WindowInsetsControllerCompat$Impl23;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl26"
.end annotation


# direct methods
.method constructor <init>(Landroid/view/Window;Landroidx/core/view/SoftwareKeyboardControllerCompat;)V
    .locals 0

    .line 602
    invoke-direct {p0, p1, p2}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/core/view/SoftwareKeyboardControllerCompat;)V

    return-void
.end method


# virtual methods
.method public setAppearanceLightNavigationBars(Z)V
    .locals 1

    const/16 v0, 0x10

    if-eqz p1, :cond_0

    const/high16 p1, 0x8000000

    .line 614
    invoke-virtual {p0, p1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->unsetWindowFlag(I)V

    const/high16 p1, -0x80000000

    .line 615
    invoke-virtual {p0, p1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->setWindowFlag(I)V

    .line 616
    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->setSystemUiFlag(I)V

    return-void

    .line 618
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->unsetSystemUiFlag(I)V

    return-void
.end method
