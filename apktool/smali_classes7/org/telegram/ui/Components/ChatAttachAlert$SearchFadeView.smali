.class public Lorg/telegram/ui/Components/ChatAttachAlert$SearchFadeView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatAttachAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchFadeView"
.end annotation


# instance fields
.field private final gradientProtectionDrawable:Lorg/telegram/messenger/utils/GradientProtectionDrawable;

.field private final gradientProtectionDrawable2:Lorg/telegram/messenger/utils/GradientProtectionDrawable;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    .line 6603
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 6599
    new-instance p1, Lorg/telegram/messenger/utils/GradientProtectionDrawable;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Lorg/telegram/messenger/utils/GradientProtectionDrawable;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$SearchFadeView;->gradientProtectionDrawable:Lorg/telegram/messenger/utils/GradientProtectionDrawable;

    .line 6600
    new-instance p1, Lorg/telegram/messenger/utils/GradientProtectionDrawable;

    invoke-direct {p1, v0}, Lorg/telegram/messenger/utils/GradientProtectionDrawable;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$SearchFadeView;->gradientProtectionDrawable2:Lorg/telegram/messenger/utils/GradientProtectionDrawable;

    .line 6604
    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$SearchFadeView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 6620
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$SearchFadeView;->gradientProtectionDrawable:Lorg/telegram/messenger/utils/GradientProtectionDrawable;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$SearchFadeView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/utils/GradientProtectionDrawable;->setColor(I)V

    .line 6621
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$SearchFadeView;->gradientProtectionDrawable:Lorg/telegram/messenger/utils/GradientProtectionDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/utils/GradientProtectionDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 6622
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$SearchFadeView;->gradientProtectionDrawable2:Lorg/telegram/messenger/utils/GradientProtectionDrawable;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$SearchFadeView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    const v2, 0x3f733333    # 0.95f

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/utils/GradientProtectionDrawable;->setColor(I)V

    .line 6623
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$SearchFadeView;->gradientProtectionDrawable2:Lorg/telegram/messenger/utils/GradientProtectionDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/utils/GradientProtectionDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .line 6609
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 6611
    sget p2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    .line 6612
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$SearchFadeView;->gradientProtectionDrawable:Lorg/telegram/messenger/utils/GradientProtectionDrawable;

    const/high16 p4, 0x41400000    # 12.0f

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    add-int/2addr p4, p2

    const/4 v0, 0x0

    invoke-virtual {p3, v0, p4, v0, v0}, Lorg/telegram/messenger/utils/GradientProtectionDrawable;->setInsets(IIII)V

    .line 6613
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$SearchFadeView;->gradientProtectionDrawable:Lorg/telegram/messenger/utils/GradientProtectionDrawable;

    const/high16 p4, 0x42500000    # 52.0f

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    add-int/2addr p4, p2

    invoke-virtual {p3, v0, v0, p1, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 6614
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$SearchFadeView;->gradientProtectionDrawable2:Lorg/telegram/messenger/utils/GradientProtectionDrawable;

    div-int/lit8 p4, p2, 0x3

    invoke-virtual {p3, v0, p4, v0, v0}, Lorg/telegram/messenger/utils/GradientProtectionDrawable;->setInsets(IIII)V

    .line 6615
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$SearchFadeView;->gradientProtectionDrawable2:Lorg/telegram/messenger/utils/GradientProtectionDrawable;

    invoke-virtual {p3, v0, v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method
