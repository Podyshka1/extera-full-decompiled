.class Lcom/exteragram/messenger/drawer/DrawerAccountPickerView$AddAccountView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/exteragram/messenger/drawer/DrawerAccountPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AddAccountView"
.end annotation


# instance fields
.field private final circleDrawable:Landroid/graphics/drawable/Drawable;

.field private final plusDrawable:Landroid/graphics/drawable/Drawable;

.field private final textView:Lorg/telegram/ui/ActionBar/SimpleTextView;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 11

    .line 768
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 769
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v0, 0x10

    .line 770
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 771
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/high16 v1, 0x42300000    # 44.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 773
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 774
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 776
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->poll_add_circle:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/exteragram/messenger/drawer/DrawerAccountPickerView$AddAccountView;->circleDrawable:Landroid/graphics/drawable/Drawable;

    .line 777
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/R$drawable;->poll_add_plus:I

    invoke-static {v2, v4, v3}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/exteragram/messenger/drawer/DrawerAccountPickerView$AddAccountView;->plusDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 779
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    :cond_0
    if-eqz v2, :cond_1

    .line 780
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 782
    :cond_1
    new-instance v3, Lcom/exteragram/messenger/drawer/DrawerAccountPickerView$AddAccountView$1;

    invoke-direct {v3, p0, v1, v2}, Lcom/exteragram/messenger/drawer/DrawerAccountPickerView$AddAccountView$1;-><init>(Lcom/exteragram/messenger/drawer/DrawerAccountPickerView$AddAccountView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/high16 v1, 0x41c00000    # 24.0f

    .line 787
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v3, v2, v1}, Lorg/telegram/ui/Components/CombinedDrawable;->setCustomSize(II)V

    .line 788
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v4, 0x22

    const/16 v5, 0x22

    const/16 v6, 0x10

    const/16 v7, 0x8

    const/4 v8, 0x0

    .line 790
    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 792
    new-instance v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/exteragram/messenger/drawer/DrawerAccountPickerView$AddAccountView;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 p1, 0xf

    .line 793
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 794
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 p1, 0x13

    .line 795
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 796
    sget p1, Lorg/telegram/messenger/R$string;->AddAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v1, -0x2

    const/4 v2, -0x1

    const/16 v3, 0x10

    const/16 v4, 0xc

    const/4 v5, 0x0

    .line 797
    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 799
    invoke-virtual {p0}, Lcom/exteragram/messenger/drawer/DrawerAccountPickerView$AddAccountView;->updateColors()V

    return-void
.end method


# virtual methods
.method updateColors()V
    .locals 4

    .line 803
    invoke-static {}, Lcom/exteragram/messenger/drawer/DrawerAccountPickerView;->-$$Nest$smcreateAccountItemRippleDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 805
    iget-object v0, p0, Lcom/exteragram/messenger/drawer/DrawerAccountPickerView$AddAccountView;->circleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 806
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {}, Lcom/exteragram/messenger/drawer/DrawerAccountPickerView;->-$$Nest$sfgetCOLOR_KEY_ACCENT()I

    move-result v2

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 808
    :cond_0
    iget-object v0, p0, Lcom/exteragram/messenger/drawer/DrawerAccountPickerView$AddAccountView;->plusDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 809
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {}, Lcom/exteragram/messenger/drawer/DrawerAccountPickerView;->-$$Nest$sfgetCOLOR_KEY_ADD_ICON()I

    move-result v2

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 812
    :cond_1
    iget-object v0, p0, Lcom/exteragram/messenger/drawer/DrawerAccountPickerView$AddAccountView;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {}, Lcom/exteragram/messenger/drawer/DrawerAccountPickerView;->-$$Nest$sfgetCOLOR_KEY_TEXT()I

    move-result v1

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    return-void
.end method
