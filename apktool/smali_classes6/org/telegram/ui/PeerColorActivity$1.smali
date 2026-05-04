.class Lorg/telegram/ui/PeerColorActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PeerColorActivity;-><init>(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PeerColorActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PeerColorActivity;)V
    .locals 0

    .line 1412
    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity$1;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 1415
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$1;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeerColorActivity;->-$$Nest$fgetcurrentColors(Lorg/telegram/ui/PeerColorActivity;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 1417
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$1;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {p1}, Lorg/telegram/ui/PeerColorActivity;->-$$Nest$fgetcurrentColors(Lorg/telegram/ui/PeerColorActivity;)Landroid/util/SparseIntArray;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p1

    return p1

    .line 1419
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$1;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeerColorActivity;->-$$Nest$fgetparentResourcesProvider(Lorg/telegram/ui/PeerColorActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1420
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$1;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeerColorActivity;->-$$Nest$fgetparentResourcesProvider(Lorg/telegram/ui/PeerColorActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(I)I

    move-result p1

    return p1

    .line 1422
    :cond_1
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

.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1427
    const-string v0, "drawableMsgIn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1428
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$1;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {p1}, Lorg/telegram/ui/PeerColorActivity;->-$$Nest$fgetmsgInDrawable(Lorg/telegram/ui/PeerColorActivity;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    move-result-object p1

    return-object p1

    .line 1430
    :cond_0
    const-string v0, "drawableMsgInSelected"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1431
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$1;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {p1}, Lorg/telegram/ui/PeerColorActivity;->-$$Nest$fgetmsgInDrawableSelected(Lorg/telegram/ui/PeerColorActivity;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    move-result-object p1

    return-object p1

    .line 1433
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$1;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeerColorActivity;->-$$Nest$fgetparentResourcesProvider(Lorg/telegram/ui/PeerColorActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1434
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$1;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeerColorActivity;->-$$Nest$fgetparentResourcesProvider(Lorg/telegram/ui/PeerColorActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 1436
    :cond_2
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getThemeDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getPaint(Ljava/lang/String;)Landroid/graphics/Paint;
    .locals 0

    .line 1441
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

.method public isDark()Z
    .locals 1

    .line 1446
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$1;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeerColorActivity;->-$$Nest$fgetisDark(Lorg/telegram/ui/PeerColorActivity;)Z

    move-result v0

    return v0
.end method

.method public synthetic setAnimatedColor(II)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider$-CC;->$default$setAnimatedColor(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;II)V

    return-void
.end method
