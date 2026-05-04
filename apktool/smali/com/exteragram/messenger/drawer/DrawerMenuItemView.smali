.class public Lcom/exteragram/messenger/drawer/DrawerMenuItemView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field private static final COLOR_KEY_ICON:I

.field private static final COLOR_KEY_SELECTOR:I

.field private static final COLOR_KEY_TEXT:I


# instance fields
.field private final archiveBadge:Lcom/exteragram/messenger/drawer/DrawerArchiveUnreadBadge;

.field private final iconView:Landroid/widget/ImageView;

.field private layoutButtonId:I

.field private final textView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    sput v0, Lcom/exteragram/messenger/drawer/DrawerMenuItemView;->COLOR_KEY_SELECTOR:I

    .line 37
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    sput v0, Lcom/exteragram/messenger/drawer/DrawerMenuItemView;->COLOR_KEY_ICON:I

    .line 38
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    sput v0, Lcom/exteragram/messenger/drawer/DrawerMenuItemView;->COLOR_KEY_TEXT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    .line 46
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x80000000

    .line 43
    iput v0, p0, Lcom/exteragram/messenger/drawer/DrawerMenuItemView;->layoutButtonId:I

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 48
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    invoke-static {}, Lcom/exteragram/messenger/drawer/DrawerMenuItemView;->createSelectorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v6, 0x3d23d70a    # 0.04f

    const/high16 v7, 0x3fc00000    # 1.5f

    const/high16 v2, 0x41800000    # 16.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v1, p0

    .line 50
    invoke-static/range {v1 .. v7}, Lcom/exteragram/messenger/utils/ui/UIUtil;->applyScaleStateListAnimator(Landroid/view/View;FZZIFF)V

    .line 52
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/exteragram/messenger/drawer/DrawerMenuItemView;->iconView:Landroid/widget/ImageView;

    .line 53
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 54
    invoke-static {}, Lcom/exteragram/messenger/drawer/DrawerMenuItemView;->createIconColorFilter()Landroid/graphics/PorterDuffColorFilter;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v3, 0x18

    const/high16 v4, 0x41c00000    # 24.0f

    const/16 v5, 0x13

    const/high16 v6, 0x41a00000    # 20.0f

    const/4 v7, 0x0

    .line 55
    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/exteragram/messenger/drawer/DrawerMenuItemView;->textView:Landroid/widget/TextView;

    const/high16 p1, 0x41700000    # 15.0f

    const/4 v2, 0x1

    .line 58
    invoke-virtual {v0, v2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 59
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 60
    sget p1, Lcom/exteragram/messenger/drawer/DrawerMenuItemView;->COLOR_KEY_TEXT:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p1, 0x13

    .line 61
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 62
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 63
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/high16 v7, 0x41800000    # 16.0f

    const/4 v2, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    const/16 v4, 0x13

    const/high16 v5, 0x42880000    # 68.0f

    const/4 v6, 0x0

    .line 64
    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    new-instance p1, Lcom/exteragram/messenger/drawer/DrawerArchiveUnreadBadge;

    invoke-direct {p1}, Lcom/exteragram/messenger/drawer/DrawerArchiveUnreadBadge;-><init>()V

    iput-object p1, v1, Lcom/exteragram/messenger/drawer/DrawerMenuItemView;->archiveBadge:Lcom/exteragram/messenger/drawer/DrawerArchiveUnreadBadge;

    return-void
.end method

.method private static createIconColorFilter()Landroid/graphics/PorterDuffColorFilter;
    .locals 3

    .line 103
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget v1, Lcom/exteragram/messenger/drawer/DrawerMenuItemView;->COLOR_KEY_ICON:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object v0
.end method

.method private static createSelectorDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 95
    sget v0, Lcom/exteragram/messenger/drawer/DrawerMenuItemView;->COLOR_KEY_SELECTOR:I

    .line 96
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    const/16 v1, 0xc

    .line 95
    invoke-static {v0, v1, v1}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 90
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 91
    iget-object v0, p0, Lcom/exteragram/messenger/drawer/DrawerMenuItemView;->archiveBadge:Lcom/exteragram/messenger/drawer/DrawerArchiveUnreadBadge;

    invoke-virtual {v0, p0, p1}, Lcom/exteragram/messenger/drawer/DrawerArchiveUnreadBadge;->draw(Landroid/view/View;Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setMenuItem(IIILjava/lang/CharSequence;)V
    .locals 0

    .line 70
    iput p1, p0, Lcom/exteragram/messenger/drawer/DrawerMenuItemView;->layoutButtonId:I

    .line 71
    iget-object p1, p0, Lcom/exteragram/messenger/drawer/DrawerMenuItemView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 72
    iget-object p1, p0, Lcom/exteragram/messenger/drawer/DrawerMenuItemView;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {p0, p2}, Lcom/exteragram/messenger/drawer/DrawerMenuItemView;->updateUnreadCounter(I)V

    return-void
.end method

.method public updateColors()V
    .locals 2

    .line 82
    invoke-static {}, Lcom/exteragram/messenger/drawer/DrawerMenuItemView;->createSelectorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 83
    iget-object v0, p0, Lcom/exteragram/messenger/drawer/DrawerMenuItemView;->iconView:Landroid/widget/ImageView;

    invoke-static {}, Lcom/exteragram/messenger/drawer/DrawerMenuItemView;->createIconColorFilter()Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 84
    iget-object v0, p0, Lcom/exteragram/messenger/drawer/DrawerMenuItemView;->textView:Landroid/widget/TextView;

    sget v1, Lcom/exteragram/messenger/drawer/DrawerMenuItemView;->COLOR_KEY_TEXT:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public updateUnreadCounter(I)V
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/exteragram/messenger/drawer/DrawerMenuItemView;->archiveBadge:Lcom/exteragram/messenger/drawer/DrawerArchiveUnreadBadge;

    iget v1, p0, Lcom/exteragram/messenger/drawer/DrawerMenuItemView;->layoutButtonId:I

    sget-object v2, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->ARCHIVE:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    iget v2, v2, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->id:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/exteragram/messenger/drawer/DrawerMenuItemView;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v1, p1, v2}, Lcom/exteragram/messenger/drawer/DrawerArchiveUnreadBadge;->bind(ZILandroid/widget/TextView;)V

    .line 78
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
