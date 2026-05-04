.class Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;)V
    .locals 0

    .line 5305
    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter$4;->this$1:Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyServiceShaderMatrix(IIFF)V
    .locals 1

    .line 5358
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter$4;->this$1:Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    iget-object v0, v0, Lorg/telegram/ui/ThemePreviewActivity;->themeDelegate:Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;

    if-eqz v0, :cond_0

    .line 5359
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;->applyServiceShaderMatrix(IIFF)V

    return-void

    .line 5361
    :cond_0
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

    .line 5308
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter$4;->this$1:Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    iget-object v0, v0, Lorg/telegram/ui/ThemePreviewActivity;->themeDelegate:Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;->getColor(I)I

    move-result p1

    return p1
.end method

.method public getColorOrDefault(I)I
    .locals 1

    .line 5343
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter$4;->this$1:Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    iget-object v0, v0, Lorg/telegram/ui/ThemePreviewActivity;->themeDelegate:Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;->getColorOrDefault(I)I

    move-result p1

    return p1
.end method

.method public getCurrentColor(I)I
    .locals 1

    .line 5338
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter$4;->this$1:Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    iget-object v0, v0, Lorg/telegram/ui/ThemePreviewActivity;->themeDelegate:Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;->getCurrentColor(I)I

    move-result p1

    return p1
.end method

.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 5313
    const-string v0, "drawableMsgOut"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5314
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter$4;->this$1:Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;

    iget-object p1, p1, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    iget-object p1, p1, Lorg/telegram/ui/ThemePreviewActivity;->msgOutDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    return-object p1

    .line 5316
    :cond_0
    const-string v0, "drawableMsgOutSelected"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5317
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter$4;->this$1:Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;

    iget-object p1, p1, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    iget-object p1, p1, Lorg/telegram/ui/ThemePreviewActivity;->msgOutDrawableSelected:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    return-object p1

    .line 5319
    :cond_1
    const-string v0, "drawableMsgOutMedia"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5320
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter$4;->this$1:Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;

    iget-object p1, p1, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    iget-object p1, p1, Lorg/telegram/ui/ThemePreviewActivity;->msgOutMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    return-object p1

    .line 5322
    :cond_2
    const-string v0, "drawableMsgOutMediaSelected"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5323
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter$4;->this$1:Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;

    iget-object p1, p1, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    iget-object p1, p1, Lorg/telegram/ui/ThemePreviewActivity;->msgOutMediaDrawableSelected:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    return-object p1

    .line 5325
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter$4;->this$1:Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    iget-object v0, v0, Lorg/telegram/ui/ThemePreviewActivity;->themeDelegate:Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;

    if-eqz v0, :cond_4

    .line 5326
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 5328
    :cond_4
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getThemeDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getPaint(Ljava/lang/String;)Landroid/graphics/Paint;
    .locals 1

    .line 5348
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter$4;->this$1:Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    iget-object v0, v0, Lorg/telegram/ui/ThemePreviewActivity;->themeDelegate:Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;->getPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object p1

    return-object p1
.end method

.method public hasGradientService()Z
    .locals 1

    .line 5353
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter$4;->this$1:Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    iget-object v0, v0, Lorg/telegram/ui/ThemePreviewActivity;->themeDelegate:Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;

    invoke-virtual {v0}, Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;->hasGradientService()Z

    move-result v0

    return v0
.end method

.method public isDark()Z
    .locals 1

    .line 5333
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter$4;->this$1:Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    iget-object v0, v0, Lorg/telegram/ui/ThemePreviewActivity;->themeDelegate:Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;

    invoke-virtual {v0}, Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;->isDark()Z

    move-result v0

    return v0
.end method

.method public synthetic setAnimatedColor(II)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider$-CC;->$default$setAnimatedColor(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;II)V

    return-void
.end method
