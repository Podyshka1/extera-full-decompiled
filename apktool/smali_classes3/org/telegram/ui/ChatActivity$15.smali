.class Lorg/telegram/ui/ChatActivity$15;
.super Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProviderThemed;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V
    .locals 0

    .line 3782
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$15;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProviderThemed;-><init>(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    return-void
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 2

    .line 3785
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$15;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$2500(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$15;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/blur3/drawable/color/impl/BlurredBackgroundProviderImpl;->checkBlurEnabled(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3786
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$15;->this$0:Lorg/telegram/ui/ChatActivity;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    const/16 v1, 0xff

    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    return v0

    .line 3789
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$15;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isDark()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3791
    invoke-super {p0}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProviderThemed;->getBackgroundColor()I

    move-result v0

    const/16 v1, 0xd8

    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    return v0

    .line 3793
    :cond_1
    invoke-super {p0}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProviderThemed;->getBackgroundColor()I

    move-result v0

    return v0
.end method
