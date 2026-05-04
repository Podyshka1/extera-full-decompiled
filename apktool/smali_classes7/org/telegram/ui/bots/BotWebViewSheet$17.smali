.class Lorg/telegram/ui/bots/BotWebViewSheet$17;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/bots/BotWebViewSheet;->setActionBarColor(IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

.field final synthetic val$actionBarColorsAnimating:Lorg/telegram/ui/bots/BotWebViewMenuContainer$ActionBarColorsAnimating;

.field final synthetic val$from:I

.field final synthetic val$to:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/bots/BotWebViewSheet;IILorg/telegram/ui/bots/BotWebViewMenuContainer$ActionBarColorsAnimating;)V
    .locals 0

    .line 2385
    iput-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$17;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    iput p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet$17;->val$from:I

    iput p3, p0, Lorg/telegram/ui/bots/BotWebViewSheet$17;->val$to:I

    iput-object p4, p0, Lorg/telegram/ui/bots/BotWebViewSheet$17;->val$actionBarColorsAnimating:Lorg/telegram/ui/bots/BotWebViewMenuContainer$ActionBarColorsAnimating;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 2389
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$17;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    iget v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$17;->val$from:I

    iget v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$17;->val$to:I

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fputactionBarColor(Lorg/telegram/ui/bots/BotWebViewSheet;I)V

    .line 2391
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$17;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->checkNavBarColor()V

    .line 2392
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$17;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetwindowView(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 2393
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$17;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetactionBar(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$17;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetactionBarColor(Lorg/telegram/ui/bots/BotWebViewSheet;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 2395
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$17;->val$actionBarColorsAnimating:Lorg/telegram/ui/bots/BotWebViewMenuContainer$ActionBarColorsAnimating;

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$17;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetactionBar(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lorg/telegram/ui/bots/BotWebViewMenuContainer$ActionBarColorsAnimating;->updateActionBar(Lorg/telegram/ui/ActionBar/ActionBar;F)V

    .line 2396
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$17;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$17;->val$actionBarColorsAnimating:Lorg/telegram/ui/bots/BotWebViewMenuContainer$ActionBarColorsAnimating;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_sheet_scrollUp:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/bots/BotWebViewMenuContainer$ActionBarColorsAnimating;->getColor(I)I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fputlineColor(Lorg/telegram/ui/bots/BotWebViewSheet;I)V

    .line 2398
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$17;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetwindowView(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
