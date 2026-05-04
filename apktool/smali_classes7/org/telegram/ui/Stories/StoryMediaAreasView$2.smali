.class Lorg/telegram/ui/Stories/StoryMediaAreasView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/style/LineHeightSpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/StoryMediaAreasView;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/StoryMediaAreasView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/StoryMediaAreasView;)V
    .locals 0

    .line 344
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView$2;->this$0:Lorg/telegram/ui/Stories/StoryMediaAreasView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V
    .locals 0

    .line 347
    iget p1, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    sub-int/2addr p1, p3

    iput p1, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 348
    iget p1, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    return-void
.end method
