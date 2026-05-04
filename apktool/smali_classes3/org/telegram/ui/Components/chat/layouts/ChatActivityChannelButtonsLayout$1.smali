.class Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout$1;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout$1;->this$0:Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    const/high16 p1, 0x41c00000    # 24.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float v5, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method
