.class Lorg/telegram/ui/QrActivity$ThemeResourcesProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/QrActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThemeResourcesProvider"
.end annotation


# instance fields
.field private colors:Landroid/util/SparseIntArray;

.field final synthetic this$0:Lorg/telegram/ui/QrActivity;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/QrActivity;)V
    .locals 0

    .line 865
    iput-object p1, p0, Lorg/telegram/ui/QrActivity$ThemeResourcesProvider;->this$0:Lorg/telegram/ui/QrActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/QrActivity;Lorg/telegram/ui/QrActivity-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/QrActivity$ThemeResourcesProvider;-><init>(Lorg/telegram/ui/QrActivity;)V

    return-void
.end method


# virtual methods
.method public synthetic applyServiceShaderMatrix(IIFF)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider$-CC;->$default$applyServiceShaderMatrix(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;IIFF)V

    return-void
.end method

.method public synthetic getAnimatedEmojiColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider$-CC;->$default$getAnimatedEmojiColorFilter(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public getColor(I)I
    .locals 1

    .line 875
    iget-object v0, p0, Lorg/telegram/ui/QrActivity$ThemeResourcesProvider;->colors:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    return p1

    :cond_0
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    return p1
.end method

.method public synthetic getColorOrDefault(I)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider$-CC;->$default$getColorOrDefault(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)I

    move-result p1

    return p1
.end method

.method public synthetic getCurrentColor(I)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider$-CC;->$default$getCurrentColor(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)I

    move-result p1

    return p1
.end method

.method public synthetic getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider$-CC;->$default$getDrawable(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getPaint(Ljava/lang/String;)Landroid/graphics/Paint;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider$-CC;->$default$getPaint(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object p1

    return-object p1
.end method

.method public synthetic hasGradientService()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider$-CC;->$default$hasGradientService(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Z

    move-result v0

    return v0
.end method

.method initColors(Lorg/telegram/ui/ActionBar/EmojiThemes;Z)V
    .locals 1

    .line 870
    iget-object v0, p0, Lorg/telegram/ui/QrActivity$ThemeResourcesProvider;->this$0:Lorg/telegram/ui/QrActivity;

    invoke-static {v0}, Lorg/telegram/ui/QrActivity;->access$000(Lorg/telegram/ui/QrActivity;)I

    move-result v0

    invoke-virtual {p1, v0, p2}, Lorg/telegram/ui/ActionBar/EmojiThemes;->createColors(II)Landroid/util/SparseIntArray;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/QrActivity$ThemeResourcesProvider;->colors:Landroid/util/SparseIntArray;

    return-void
.end method

.method public synthetic isDark()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider$-CC;->$default$isDark(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Z

    move-result v0

    return v0
.end method

.method public synthetic setAnimatedColor(II)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider$-CC;->$default$setAnimatedColor(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;II)V

    return-void
.end method
