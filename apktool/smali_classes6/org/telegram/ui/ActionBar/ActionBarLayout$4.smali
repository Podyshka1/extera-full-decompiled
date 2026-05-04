.class Lorg/telegram/ui/ActionBar/ActionBarLayout$4;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

.field final synthetic val$isSupportEdgeToEdge:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;Z)V
    .locals 0

    .line 2265
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$4;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iput-boolean p2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$4;->val$isSupportEdgeToEdge:Z

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 7

    .line 2269
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$4;->val$isSupportEdgeToEdge:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    move v3, v0

    goto :goto_1

    :cond_0
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_0

    .line 2270
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    const/high16 p1, 0x40c00000    # 6.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float v6, p1

    const/4 v2, 0x0

    move-object v1, p2

    .line 2268
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method
