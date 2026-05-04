.class Lorg/telegram/ui/Components/SearchTagsList$1;
.super Landroid/widget/TextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/SearchTagsList;->createPremiumLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final bounds:Landroid/graphics/RectF;

.field private final paint:Landroid/graphics/Paint;

.field private final path:Landroid/graphics/Path;

.field final synthetic this$0:Lorg/telegram/ui/Components/SearchTagsList;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/SearchTagsList;Landroid/content/Context;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lorg/telegram/ui/Components/SearchTagsList$1;->this$0:Lorg/telegram/ui/Components/SearchTagsList;

    invoke-direct {p0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 144
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SearchTagsList$1;->path:Landroid/graphics/Path;

    .line 145
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SearchTagsList$1;->bounds:Landroid/graphics/RectF;

    .line 146
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SearchTagsList$1;->paint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 149
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchTagsList$1;->paint:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText2:I

    iget-object v2, p0, Lorg/telegram/ui/Components/SearchTagsList$1;->this$0:Lorg/telegram/ui/Components/SearchTagsList;

    invoke-static {v2}, Lorg/telegram/ui/Components/SearchTagsList;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/SearchTagsList;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    const v2, 0x3dcccccd    # 0.1f

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 150
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchTagsList$1;->bounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 151
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchTagsList$1;->bounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/Components/SearchTagsList$1;->path:Landroid/graphics/Path;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->fillTagPath(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 152
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchTagsList$1;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/Components/SearchTagsList$1;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 153
    invoke-super {p0, p1}, Landroid/widget/TextView;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 158
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    move-object p1, p0

    .line 159
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    const/4 p3, 0x0

    move p4, p3

    .line 160
    :goto_0
    iget-object p5, p1, Lorg/telegram/ui/Components/SearchTagsList$1;->this$0:Lorg/telegram/ui/Components/SearchTagsList;

    invoke-virtual {p5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p5

    if-ge p3, p5, :cond_0

    .line 161
    iget-object p5, p1, Lorg/telegram/ui/Components/SearchTagsList$1;->this$0:Lorg/telegram/ui/Components/SearchTagsList;

    invoke-virtual {p5, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getLeft()I

    move-result p5

    invoke-static {p2, p5}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 162
    iget-object p5, p1, Lorg/telegram/ui/Components/SearchTagsList$1;->this$0:Lorg/telegram/ui/Components/SearchTagsList;

    invoke-virtual {p5, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getRight()I

    move-result p5

    invoke-static {p4, p5}, Ljava/lang/Math;->max(II)I

    move-result p4

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr p2, p4

    int-to-float p2, p2

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    .line 164
    invoke-virtual {p0, p2}, Landroid/view/View;->setPivotX(F)V

    return-void
.end method
