.class public Lcom/exteragram/messenger/plugins/ui/components/PluginRequirementsView;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# static fields
.field private static final REQUIREMENT_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final itemSpacing:I

.field private final lineSpacing:I

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# direct methods
.method public static synthetic $r8$lambda$tBwulZF64Z1HaAbOaU1yUBxB-YA(Lcom/exteragram/messenger/plugins/ui/components/PluginRequirementsView;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/exteragram/messenger/plugins/ui/components/PluginRequirementsView;->lambda$setRequirements$0(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-string v0, "^([a-zA-Z0-9_\\-.]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/ui/components/PluginRequirementsView;->REQUIREMENT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/exteragram/messenger/plugins/ui/components/PluginRequirementsView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    .line 44
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x40800000    # 4.0f

    .line 35
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginRequirementsView;->itemSpacing:I

    .line 36
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginRequirementsView;->lineSpacing:I

    .line 45
    iput-object p2, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginRequirementsView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-void
.end method

.method private getThemedColor(I)I
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginRequirementsView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private synthetic lambda$setRequirements$0(Ljava/lang/String;Landroid/view/View;)V
    .locals 2

    .line 69
    sget-object p2, Lcom/exteragram/messenger/plugins/ui/components/PluginRequirementsView;->REQUIREMENT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 70
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 71
    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    .line 72
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://pypi.org/project/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 6

    sub-int/2addr p4, p2

    .line 119
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    .line 120
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    const/4 p3, 0x0

    move p5, p3

    move v0, p5

    .line 123
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge p5, v1, :cond_2

    .line 124
    invoke-virtual {p0, p5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 125
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    goto :goto_1

    .line 127
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 128
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v4, p1, v2

    .line 130
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int v5, p4, v5

    if-le v4, v5, :cond_1

    .line 131
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    .line 132
    iget v4, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginRequirementsView;->lineSpacing:I

    add-int/2addr v0, v4

    add-int/2addr p2, v0

    move v0, p3

    :cond_1
    add-int v4, p1, v2

    add-int v5, p2, v3

    .line 136
    invoke-virtual {v1, p1, p2, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 137
    iget v1, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginRequirementsView;->itemSpacing:I

    add-int/2addr v2, v1

    add-int/2addr p1, v2

    .line 138
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_1
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12

    .line 83
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 84
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 86
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int v2, v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 88
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v7

    .line 92
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-ge v5, v9, :cond_2

    .line 93
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 94
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_0

    goto :goto_1

    .line 96
    :cond_0
    invoke-virtual {p0, v9, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 97
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 98
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int v11, v8, v10

    if-le v11, v2, :cond_1

    .line 102
    iget v8, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginRequirementsView;->lineSpacing:I

    add-int/2addr v6, v8

    add-int/2addr v3, v6

    move v6, v4

    move v8, v6

    .line 106
    :cond_1
    iget v11, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginRequirementsView;->itemSpacing:I

    add-int/2addr v10, v11

    add-int/2addr v8, v10

    .line 107
    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 108
    iget v9, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginRequirementsView;->itemSpacing:I

    sub-int v9, v8, v9

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 111
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    add-int/2addr v6, p1

    add-int/2addr v3, v6

    const/high16 p1, 0x40000000    # 2.0f

    if-ne v1, p1, :cond_3

    goto :goto_2

    .line 113
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p1

    add-int/2addr v7, p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    add-int v0, v7, p1

    :goto_2
    invoke-virtual {p0, v0, v3}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setRequirements(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    if-eqz p1, :cond_2

    .line 50
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 54
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 56
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 57
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 58
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x1

    const/high16 v3, 0x41400000    # 12.0f

    .line 59
    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 61
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-direct {p0, v2}, Lcom/exteragram/messenger/plugins/ui/components/PluginRequirementsView;->getThemedColor(I)I

    move-result v2

    .line 62
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 63
    const-string v3, "fonts/rregular.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v3, 0x40c00000    # 6.0f

    .line 64
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/16 v5, 0x1e

    invoke-static {v2, v5}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    invoke-static {v4, v2}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 65
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 67
    invoke-static {v1}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    .line 68
    new-instance v2, Lcom/exteragram/messenger/plugins/ui/components/PluginRequirementsView$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/exteragram/messenger/plugins/ui/components/PluginRequirementsView$$ExternalSyntheticLambda0;-><init>(Lcom/exteragram/messenger/plugins/ui/components/PluginRequirementsView;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void

    :cond_2
    :goto_1
    const/16 p1, 0x8

    .line 51
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
