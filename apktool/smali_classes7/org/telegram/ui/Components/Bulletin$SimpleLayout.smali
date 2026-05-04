.class public Lorg/telegram/ui/Components/Bulletin$SimpleLayout;
.super Lorg/telegram/ui/Components/Bulletin$ButtonLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Bulletin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleLayout"
.end annotation


# instance fields
.field public final imageView:Landroid/widget/ImageView;

.field public final textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 10

    .line 1336
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1338
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_undo_infoColor:I

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/Bulletin$Layout;->getThemedColor(I)I

    move-result p2

    .line 1340
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Bulletin$SimpleLayout;->imageView:Landroid/widget/ImageView;

    .line 1341
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p2, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/high16 v8, 0x41800000    # 16.0f

    const/high16 v9, 0x41400000    # 12.0f

    const/high16 v3, 0x41c00000    # 24.0f

    const/high16 v4, 0x41c00000    # 24.0f

    const v5, 0x800013

    const/high16 v6, 0x41800000    # 16.0f

    const/high16 v7, 0x41400000    # 12.0f

    .line 1342
    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1344
    new-instance v0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Bulletin$SimpleLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/4 p1, 0x1

    .line 1345
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->setDisablePaddingsOffsetY(Z)V

    .line 1346
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 1347
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1348
    const-string p2, "fonts/rregular.ttf"

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 p2, 0x41700000    # 15.0f

    .line 1349
    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v7, 0x0

    const/high16 v1, -0x40000000    # -2.0f

    const/high16 v2, -0x40000000    # -2.0f

    const v3, 0x800013

    const/high16 v4, 0x42600000    # 56.0f

    const/4 v5, 0x0

    .line 1350
    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getAccessibilityText()Ljava/lang/CharSequence;
    .locals 1

    .line 1354
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$SimpleLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
