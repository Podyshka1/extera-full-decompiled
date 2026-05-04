.class Lorg/telegram/ui/bots/BotWebViewSheet$9;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/bots/BotWebViewSheet;->requestWebView(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/bots/WebViewRequestProps;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/bots/BotWebViewSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V
    .locals 0

    .line 1376
    iput-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$9;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1379
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1380
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1381
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$9;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    iget-object v0, v0, Lorg/telegram/ui/bots/BotWebViewSheet;->verifiedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1382
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$9;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    iget-object v0, v0, Lorg/telegram/ui/bots/BotWebViewSheet;->verifiedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1383
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    const/high16 v0, 0x41a00000    # 20.0f

    .line 1400
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    const/high16 v0, 0x41a00000    # 20.0f

    .line 1405
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1387
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$9;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    iget-object v0, v0, Lorg/telegram/ui/bots/BotWebViewSheet;->verifiedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1391
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$9;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    iget-object v0, v0, Lorg/telegram/ui/bots/BotWebViewSheet;->verifiedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method
