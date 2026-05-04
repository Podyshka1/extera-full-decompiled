.class public Lorg/telegram/ui/Components/ForegroundColorSpanThemable;
.super Landroid/text/style/CharacterStyle;
.source "SourceFile"

# interfaces
.implements Landroid/text/style/UpdateAppearance;


# instance fields
.field private color:I

.field private colorKey:I

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;-><init>(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 22
    iput p1, p0, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;->colorKey:I

    .line 23
    iput-object p2, p0, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2

    .line 28
    iget v0, p0, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;->colorKey:I

    iget-object v1, p0, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;->color:I

    .line 29
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;->color:I

    if-eq v0, v1, :cond_0

    .line 30
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method
