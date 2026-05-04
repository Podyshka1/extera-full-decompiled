.class Lorg/telegram/ui/MainTabsActivity$2;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/MainTabsActivity;->createContentView(Landroid/content/Context;)Landroid/widget/FrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/MainTabsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/MainTabsActivity;Landroid/content/Context;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lorg/telegram/ui/MainTabsActivity$2;->this$0:Lorg/telegram/ui/MainTabsActivity;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 234
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 235
    iget-object p1, p0, Lorg/telegram/ui/MainTabsActivity$2;->this$0:Lorg/telegram/ui/MainTabsActivity;

    invoke-static {p1}, Lorg/telegram/ui/MainTabsActivity;->-$$Nest$mblur3_invalidateBlur(Lorg/telegram/ui/MainTabsActivity;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 227
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    move-object p1, p0

    .line 228
    iget-object p2, p1, Lorg/telegram/ui/MainTabsActivity$2;->this$0:Lorg/telegram/ui/MainTabsActivity;

    invoke-static {p2}, Lorg/telegram/ui/MainTabsActivity;->-$$Nest$mcheckUi_tabsPosition(Lorg/telegram/ui/MainTabsActivity;)V

    .line 229
    iget-object p2, p1, Lorg/telegram/ui/MainTabsActivity$2;->this$0:Lorg/telegram/ui/MainTabsActivity;

    invoke-static {p2}, Lorg/telegram/ui/MainTabsActivity;->-$$Nest$mcheckUi_fadeView(Lorg/telegram/ui/MainTabsActivity;)V

    return-void
.end method
