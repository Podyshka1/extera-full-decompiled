.class public Lorg/telegram/ui/ChannelColorActivity$ThemeDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChannelColorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ThemeDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelColorActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ChannelColorActivity;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeDelegate;->this$0:Lorg/telegram/ui/ChannelColorActivity;

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

    .line 199
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeDelegate;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelColorActivity;->-$$Nest$fgetcurrentColors(Lorg/telegram/ui/ChannelColorActivity;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 201
    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeDelegate;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChannelColorActivity;->-$$Nest$fgetcurrentColors(Lorg/telegram/ui/ChannelColorActivity;)Landroid/util/SparseIntArray;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p1

    return p1

    .line 203
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeDelegate;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelColorActivity;->-$$Nest$fgetparentResourcesProvider(Lorg/telegram/ui/ChannelColorActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeDelegate;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelColorActivity;->-$$Nest$fgetparentResourcesProvider(Lorg/telegram/ui/ChannelColorActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(I)I

    move-result p1

    return p1

    .line 206
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
    .locals 2

    .line 211
    const-string v0, "drawableMsgIn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeDelegate;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChannelColorActivity;->-$$Nest$fgetmsgInDrawable(Lorg/telegram/ui/ChannelColorActivity;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    move-result-object p1

    return-object p1

    .line 214
    :cond_0
    const-string v0, "drawableMsgInSelected"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeDelegate;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChannelColorActivity;->-$$Nest$fgetmsgInDrawableSelected(Lorg/telegram/ui/ChannelColorActivity;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    move-result-object p1

    return-object p1

    .line 217
    :cond_1
    const-string v0, "drawableMsgOut"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 218
    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeDelegate;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChannelColorActivity;->-$$Nest$fgetmsgOutDrawable(Lorg/telegram/ui/ChannelColorActivity;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    move-result-object p1

    return-object p1

    .line 220
    :cond_2
    const-string v0, "drawableMsgOutSelected"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 221
    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeDelegate;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChannelColorActivity;->-$$Nest$fgetmsgOutDrawableSelected(Lorg/telegram/ui/ChannelColorActivity;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    move-result-object p1

    return-object p1

    .line 223
    :cond_3
    const-string v0, "drawableMsgOutCheckRead"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 224
    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeDelegate;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChannelColorActivity;->-$$Nest$fgetmsgOutCheckReadDrawable(Lorg/telegram/ui/ChannelColorActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outSentCheckRead:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ChannelColorActivity$ThemeDelegate;->getColor(I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 225
    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeDelegate;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChannelColorActivity;->-$$Nest$fgetmsgOutCheckReadDrawable(Lorg/telegram/ui/ChannelColorActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 227
    :cond_4
    const-string v0, "drawableMsgOutHalfCheck"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 228
    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeDelegate;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChannelColorActivity;->-$$Nest$fgetmsgOutHalfCheckDrawable(Lorg/telegram/ui/ChannelColorActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outSentCheckRead:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ChannelColorActivity$ThemeDelegate;->getColor(I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 229
    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeDelegate;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChannelColorActivity;->-$$Nest$fgetmsgOutHalfCheckDrawable(Lorg/telegram/ui/ChannelColorActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 231
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeDelegate;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelColorActivity;->-$$Nest$fgetparentResourcesProvider(Lorg/telegram/ui/ChannelColorActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 232
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeDelegate;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelColorActivity;->-$$Nest$fgetparentResourcesProvider(Lorg/telegram/ui/ChannelColorActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 234
    :cond_6
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getThemeDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getPaint(Ljava/lang/String;)Landroid/graphics/Paint;
    .locals 1

    .line 239
    const-string v0, "paintDivider"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeDelegate;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChannelColorActivity;->-$$Nest$fgetdividerPaint(Lorg/telegram/ui/ChannelColorActivity;)Landroid/graphics/Paint;

    move-result-object p1

    return-object p1

    .line 242
    :cond_0
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

    .line 247
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeDelegate;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelColorActivity;->-$$Nest$fgetisDark(Lorg/telegram/ui/ChannelColorActivity;)Z

    move-result v0

    return v0
.end method

.method public synthetic setAnimatedColor(II)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider$-CC;->$default$setAnimatedColor(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;II)V

    return-void
.end method

.method public toggle()V
    .locals 2

    .line 251
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeDelegate;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelColorActivity;->-$$Nest$fgetisDark(Lorg/telegram/ui/ChannelColorActivity;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/ChannelColorActivity;->-$$Nest$fputisDark(Lorg/telegram/ui/ChannelColorActivity;Z)V

    .line 252
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeDelegate;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChannelColorActivity;->updateThemeColors()V

    .line 253
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeDelegate;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChannelColorActivity;->updateColors(Z)V

    return-void
.end method
