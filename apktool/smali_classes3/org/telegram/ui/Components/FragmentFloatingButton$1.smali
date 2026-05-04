.class Lorg/telegram/ui/Components/FragmentFloatingButton$1;
.super Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProviderThemed;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/FragmentFloatingButton;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/FragmentFloatingButton;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/FragmentFloatingButton;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V
    .locals 0

    .line 86
    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentFloatingButton$1;->this$0:Lorg/telegram/ui/Components/FragmentFloatingButton;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProviderThemed;-><init>(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    return-void
.end method


# virtual methods
.method public getShadowColor()I
    .locals 1

    .line 99
    invoke-virtual {p0}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProviderThemed;->isDark()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x4ffffff

    return v0

    :cond_0
    const/high16 v0, 0x20000000

    return v0
.end method

.method public getStrokeColorBottom()I
    .locals 1

    .line 94
    invoke-virtual {p0}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProviderThemed;->isDark()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x11ffffff

    return v0

    :cond_0
    const/high16 v0, 0x20000000

    return v0
.end method

.method public getStrokeColorTop()I
    .locals 1

    .line 89
    invoke-virtual {p0}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProviderThemed;->isDark()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x6ffffff

    return v0

    :cond_0
    const/high16 v0, 0x11000000

    return v0
.end method
