.class public Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextState"
.end annotation


# instance fields
.field private final clickDetector:Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;

.field firstLayout:Landroid/text/StaticLayout;

.field private firstLayoutEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

.field fullLayout:Landroid/text/StaticLayout;

.field private fullLayoutEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

.field private final links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

.field private final loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

.field private loadingPath:Landroid/graphics/Path;

.field nextLinesLayouts:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;

.field final patchedLayout:Ljava/util/concurrent/atomic/AtomicReference;

.field private pressedEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

.field private pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

.field public reply:Lorg/telegram/ui/Stories/StoryCaptionView$Reply;

.field protected final spoilers:Ljava/util/List;

.field private final spoilersPool:Ljava/util/Stack;

.field text:Ljava/lang/CharSequence;

.field textHeight:I

.field final synthetic this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

.field public final translateT:Lorg/telegram/ui/Components/AnimatedFloat;

.field public translating:Z


# direct methods
.method public static synthetic $r8$lambda$8MzfPd-xtI5HsgKqpJrWPwM3yNg(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;Lorg/telegram/ui/Components/spoilers/SpoilerEffect;FF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->lambda$new$2(Lorg/telegram/ui/Components/spoilers/SpoilerEffect;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$V4ugOCRAZ53poSsNf7ISk7SaAlg(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$Zq5ARveuje14XhQrLtPZC6TPGJY(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->lambda$setup$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$aZhyFXaeujkL3ZITv0n-L106QEM(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;Lorg/telegram/ui/Components/LinkSpanDrawable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->lambda$touch$4(Lorg/telegram/ui/Components/LinkSpanDrawable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oucM0H_VjXnvak5mdIcy-Dcusv8(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->lambda$new$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetclickDetector(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;)Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->clickDetector:Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlinks(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;)Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetloadingDrawable(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;)Lorg/telegram/ui/Components/LoadingDrawable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputpressedLink(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;Lorg/telegram/ui/Components/LinkSpanDrawable;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;)V
    .locals 9

    .line 838
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 801
    new-instance v0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    .line 809
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->spoilers:Ljava/util/List;

    .line 810
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->spoilersPool:Ljava/util/Stack;

    .line 814
    const-string v1, ""

    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->text:Ljava/lang/CharSequence;

    .line 818
    new-instance v2, Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v3, p1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->this$0:Lorg/telegram/ui/Stories/StoryCaptionView;

    const-wide/16 v6, 0x190

    sget-object v8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v4, 0x0

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v2, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->translateT:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 821
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->loadingPath:Landroid/graphics/Path;

    .line 1108
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->patchedLayout:Ljava/util/concurrent/atomic/AtomicReference;

    .line 839
    new-instance v1, Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;

    new-instance v2, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;)V

    invoke-direct {v1, p1, v0, v2}, Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;-><init>(Landroid/view/View;Ljava/util/List;Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector$OnSpoilerClickedListener;)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->clickDetector:Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;

    .line 852
    new-instance v0, Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/LoadingDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    .line 853
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->loadingPath:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/LoadingDrawable;->usePath(Landroid/graphics/Path;)V

    const/high16 v1, 0x40800000    # 4.0f

    .line 854
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/LoadingDrawable;->setRadiiDp(F)V

    const v1, 0x3e99999a    # 0.3f

    const/4 v2, -0x1

    .line 856
    invoke-static {v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    const v3, 0x3dcccccd    # 0.1f

    .line 857
    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v3

    const v4, 0x3e4ccccd    # 0.2f

    .line 858
    invoke-static {v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v4

    const v5, 0x3f333333    # 0.7f

    .line 859
    invoke-static {v2, v5}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    .line 855
    invoke-virtual {v0, v1, v3, v4, v2}, Lorg/telegram/ui/Components/LoadingDrawable;->setColors(IIII)V

    .line 861
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void
.end method

.method private drawInternal(Landroid/graphics/Canvas;F)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1012
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->reply:Lorg/telegram/ui/Stories/StoryCaptionView$Reply;

    const/4 v11, 0x0

    if-eqz v2, :cond_0

    .line 1013
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 1014
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget v3, v2, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->horizontalPadding:I

    int-to-float v3, v3

    iget v2, v2, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->verticalPadding:I

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1015
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->reply:Lorg/telegram/ui/Stories/StoryCaptionView$Reply;

    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget v4, v4, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->horizontalPadding:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v2, v1, v3}, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->draw(Landroid/graphics/Canvas;F)V

    .line 1016
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->reply:Lorg/telegram/ui/Stories/StoryCaptionView$Reply;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->height()I

    move-result v2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    .line 1017
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    move v12, v2

    goto :goto_0

    :cond_0
    move v12, v11

    .line 1020
    :goto_0
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 1021
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget v3, v2, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->horizontalPadding:I

    int-to-float v3, v3

    iget v2, v2, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->verticalPadding:I

    add-int/2addr v2, v12

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1022
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1023
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 1025
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    const/4 v13, 0x0

    cmpl-float v2, p2, v13

    const/4 v14, 0x1

    if-lez v2, :cond_2

    move v15, v14

    goto :goto_1

    :cond_2
    move v15, v11

    .line 1028
    :goto_1
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->loadingPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    .line 1030
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->spoilers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->firstLayout:Landroid/text/StaticLayout;

    if-nez v2, :cond_3

    goto/16 :goto_6

    .line 1047
    :cond_3
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->this$0:Lorg/telegram/ui/Stories/StoryCaptionView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryCaptionView;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1048
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 1049
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget v3, v2, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->horizontalPadding:I

    int-to-float v3, v3

    iget v2, v2, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->verticalPadding:I

    add-int/2addr v2, v12

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1050
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->this$0:Lorg/telegram/ui/Stories/StoryCaptionView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryCaptionView;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;->draw(Landroid/graphics/Canvas;)V

    .line 1051
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 1053
    :cond_4
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->firstLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_5

    .line 1054
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 1055
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget v3, v2, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->horizontalPadding:I

    int-to-float v3, v3

    iget v2, v2, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->verticalPadding:I

    add-int/2addr v2, v12

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1056
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->firstLayout:Landroid/text/StaticLayout;

    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->spoilers:Ljava/util/List;

    invoke-direct {v0, v2, v1, v3}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->drawLayout(Landroid/text/StaticLayout;Landroid/graphics/Canvas;Ljava/util/List;)V

    .line 1057
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->firstLayoutEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->firstLayout:Landroid/text/StaticLayout;

    new-array v5, v14, [Landroid/text/Layout;

    aput-object v4, v5, v11

    invoke-static {v11, v2, v3, v5}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->firstLayoutEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 1058
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->firstLayout:Landroid/text/StaticLayout;

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->spoilers:Ljava/util/List;

    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-static {v4}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->-$$Nest$fgetemojiColorFilter(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v10

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static/range {v1 .. v10}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFFLandroid/graphics/ColorFilter;)V

    .line 1059
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    if-eqz v15, :cond_5

    .line 1062
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->firstLayout:Landroid/text/StaticLayout;

    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget v4, v3, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->horizontalPadding:I

    int-to-float v4, v4

    iget v3, v3, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->verticalPadding:I

    add-int/2addr v3, v12

    int-to-float v3, v3

    invoke-direct {v0, v2, v4, v3}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->putLayoutRects(Landroid/text/Layout;FF)V

    .line 1066
    :cond_5
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->nextLinesLayouts:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;

    if-eqz v2, :cond_d

    move v8, v11

    .line 1067
    :goto_2
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->nextLinesLayouts:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;

    array-length v3, v2

    if-ge v8, v3, :cond_d

    .line 1068
    aget-object v9, v2, v8

    if-nez v9, :cond_6

    :goto_3
    move/from16 v16, v8

    goto/16 :goto_5

    .line 1072
    :cond_6
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 1073
    iget v2, v9, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->collapsedX:F

    iget v3, v9, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->finalX:F

    cmpl-float v4, v2, v3

    if-nez v4, :cond_9

    .line 1074
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget v4, v2, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->progressToExpand:F

    cmpl-float v4, v4, v13

    if-nez v4, :cond_7

    goto :goto_3

    .line 1077
    :cond_7
    iget v4, v2, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->horizontalPadding:I

    int-to-float v4, v4

    add-float/2addr v4, v3

    iget v2, v2, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->verticalPadding:I

    add-int/2addr v2, v12

    int-to-float v2, v2

    iget v3, v9, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->finalY:F

    add-float/2addr v2, v3

    invoke-virtual {v1, v4, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1078
    iget-object v2, v9, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->staticLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    int-to-float v4, v2

    iget-object v2, v9, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->staticLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    int-to-float v5, v2

    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget v2, v2, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->progressToExpand:F

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v6, v2

    const/16 v7, 0x1f

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 1079
    iget-object v2, v9, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->staticLayout:Landroid/text/StaticLayout;

    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->spoilers:Ljava/util/List;

    invoke-direct {v0, v2, v1, v3}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->drawLayout(Landroid/text/StaticLayout;Landroid/graphics/Canvas;Ljava/util/List;)V

    if-eqz v15, :cond_8

    .line 1082
    iget-object v2, v9, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->staticLayout:Landroid/text/StaticLayout;

    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget v4, v3, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->horizontalPadding:I

    int-to-float v4, v4

    iget v5, v9, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->finalX:F

    add-float/2addr v4, v5

    iget v3, v3, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->verticalPadding:I

    add-int/2addr v3, v12

    int-to-float v3, v3

    iget v5, v9, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->finalY:F

    add-float/2addr v3, v5

    invoke-direct {v0, v2, v4, v3}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->putLayoutRects(Landroid/text/Layout;FF)V

    .line 1085
    :cond_8
    iget-object v2, v9, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->staticLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 1086
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-object v3, v9, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->layoutEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    iget-object v4, v9, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->staticLayout:Landroid/text/StaticLayout;

    new-array v5, v14, [Landroid/text/Layout;

    aput-object v4, v5, v11

    invoke-static {v11, v2, v3, v5}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v3

    iput-object v3, v9, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->layoutEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 1087
    iget-object v2, v9, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->staticLayout:Landroid/text/StaticLayout;

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->spoilers:Ljava/util/List;

    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget v9, v4, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->progressToExpand:F

    invoke-static {v4}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->-$$Nest$fgetemojiColorFilter(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v10

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v16, v8

    const/4 v8, 0x0

    invoke-static/range {v1 .. v10}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFFLandroid/graphics/ColorFilter;)V

    .line 1088
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_4

    :cond_9
    move/from16 v16, v8

    .line 1091
    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget v4, v4, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->progressToExpand:F

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    .line 1092
    iget v3, v9, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->collapsedY:F

    iget v4, v9, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->finalY:F

    sget-object v5, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget-object v6, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget v6, v6, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->progressToExpand:F

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v5

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    .line 1093
    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget v5, v4, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->horizontalPadding:I

    int-to-float v5, v5

    add-float/2addr v5, v2

    iget v4, v4, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->verticalPadding:I

    add-int/2addr v4, v12

    int-to-float v4, v4

    add-float/2addr v4, v3

    invoke-virtual {v1, v5, v4}, Landroid/graphics/Canvas;->translate(FF)V

    if-eqz v15, :cond_a

    .line 1096
    iget-object v4, v9, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->staticLayout:Landroid/text/StaticLayout;

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget v6, v5, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->horizontalPadding:I

    int-to-float v6, v6

    add-float/2addr v6, v2

    iget v2, v5, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->verticalPadding:I

    add-int/2addr v2, v12

    int-to-float v2, v2

    add-float/2addr v2, v3

    invoke-direct {v0, v4, v6, v2}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->putLayoutRects(Landroid/text/Layout;FF)V

    .line 1098
    :cond_a
    iget-object v2, v9, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->staticLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 1099
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-object v3, v9, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->layoutEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    iget-object v4, v9, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->staticLayout:Landroid/text/StaticLayout;

    new-array v5, v14, [Landroid/text/Layout;

    aput-object v4, v5, v11

    invoke-static {v11, v2, v3, v5}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v3

    iput-object v3, v9, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->layoutEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 1100
    iget-object v2, v9, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->staticLayout:Landroid/text/StaticLayout;

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->spoilers:Ljava/util/List;

    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-static {v4}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->-$$Nest$fgetemojiColorFilter(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v10

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static/range {v1 .. v10}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFFLandroid/graphics/ColorFilter;)V

    .line 1102
    :goto_4
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :goto_5
    add-int/lit8 v8, v16, 0x1

    goto/16 :goto_2

    .line 1031
    :cond_b
    :goto_6
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->fullLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_d

    .line 1032
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 1033
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget v3, v2, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->horizontalPadding:I

    int-to-float v3, v3

    iget v2, v2, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->verticalPadding:I

    add-int/2addr v2, v12

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1034
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->this$0:Lorg/telegram/ui/Stories/StoryCaptionView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryCaptionView;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1035
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->this$0:Lorg/telegram/ui/Stories/StoryCaptionView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryCaptionView;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;->draw(Landroid/graphics/Canvas;)V

    .line 1037
    :cond_c
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->fullLayout:Landroid/text/StaticLayout;

    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->spoilers:Ljava/util/List;

    invoke-direct {v0, v2, v1, v3}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->drawLayout(Landroid/text/StaticLayout;Landroid/graphics/Canvas;Ljava/util/List;)V

    .line 1038
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->fullLayoutEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->fullLayout:Landroid/text/StaticLayout;

    new-array v5, v14, [Landroid/text/Layout;

    aput-object v4, v5, v11

    invoke-static {v11, v2, v3, v5}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->fullLayoutEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 1039
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->fullLayout:Landroid/text/StaticLayout;

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->spoilers:Ljava/util/List;

    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-static {v4}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->-$$Nest$fgetemojiColorFilter(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v10

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static/range {v1 .. v10}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFFLandroid/graphics/ColorFilter;)V

    .line 1040
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    if-eqz v15, :cond_d

    .line 1043
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->fullLayout:Landroid/text/StaticLayout;

    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget v3, v2, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->horizontalPadding:I

    int-to-float v3, v3

    iget v2, v2, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->verticalPadding:I

    add-int/2addr v2, v12

    int-to-float v2, v2

    invoke-direct {v0, v1, v3, v2}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->putLayoutRects(Landroid/text/Layout;FF)V

    :cond_d
    return-void
.end method

.method private drawLayout(Landroid/text/StaticLayout;Landroid/graphics/Canvas;Ljava/util/List;)V
    .locals 11

    .line 1111
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1112
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-object v5, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->patchedLayout:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object v7, p1

    move-object v9, p2

    move-object v8, p3

    invoke-static/range {v1 .. v10}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->renderWithRipple(Landroid/view/View;ZIILjava/util/concurrent/atomic/AtomicReference;ILandroid/text/Layout;Ljava/util/List;Landroid/graphics/Canvas;Z)V

    return-void

    :cond_0
    move-object v7, p1

    move-object v9, p2

    .line 1114
    invoke-virtual {v7, v9}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    .line 843
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->-$$Nest$fputisSpoilersRevealed(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;Z)V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 2

    .line 842
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    new-instance v1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$new$2(Lorg/telegram/ui/Components/spoilers/SpoilerEffect;FF)V
    .locals 6

    .line 840
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->-$$Nest$fgetisSpoilersRevealed(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 842
    :cond_0
    new-instance v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setOnRippleEndCallback(Ljava/lang/Runnable;)V

    .line 847
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-double v4, p1

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    .line 848
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->spoilers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    .line 849
    invoke-virtual {v1, p2, p3, p1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->startRipple(FFF)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private synthetic lambda$setup$3()V
    .locals 2

    .line 869
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    const/4 v1, 0x0

    iput v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->sizeCached:I

    .line 870
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 871
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->this$0:Lorg/telegram/ui/Stories/StoryCaptionView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryCaptionView;->updateTopMargin()V

    .line 872
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->this$0:Lorg/telegram/ui/Stories/StoryCaptionView;

    invoke-virtual {v0}, Landroidx/core/widget/NestedScrollView;->requestLayout()V

    return-void
.end method

.method private synthetic lambda$touch$4(Lorg/telegram/ui/Components/LinkSpanDrawable;)V
    .locals 4

    .line 1162
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    if-ne p1, v0, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object p1

    instance-of p1, p1, Landroid/text/style/URLSpan;

    if-eqz p1, :cond_0

    .line 1163
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->this$0:Lorg/telegram/ui/Stories/StoryCaptionView;

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object v0

    check-cast v0, Landroid/text/style/URLSpan;

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-static {v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState$$ExternalSyntheticLambda3;

    invoke-direct {v3, v2}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;)V

    invoke-virtual {p1, v0, v1, v3}, Lorg/telegram/ui/Stories/StoryCaptionView;->onLinkLongPress(Landroid/text/style/URLSpan;Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 1164
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    :cond_0
    return-void
.end method

.method private putLayoutRects(Landroid/text/Layout;FF)V
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 995
    :goto_0
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 996
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget v3, v3, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->horizontalPadding:I

    int-to-float v3, v3

    const/high16 v4, 0x40400000    # 3.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 997
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v3

    iget-object v5, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget v5, v5, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->horizontalPadding:I

    int-to-float v5, v5

    div-float/2addr v5, v4

    add-float/2addr v3, v5

    if-nez v1, :cond_0

    .line 999
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v5, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget v5, v5, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->verticalPadding:I

    int-to-float v5, v5

    div-float/2addr v5, v4

    sub-float/2addr v0, v5

    .line 1001
    :cond_0
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v5

    int-to-float v5, v5

    .line 1002
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-lt v1, v6, :cond_1

    .line 1003
    iget-object v6, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget v6, v6, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->verticalPadding:I

    int-to-float v6, v6

    div-float/2addr v6, v4

    add-float/2addr v5, v6

    .line 1005
    :cond_1
    iget-object v6, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->loadingPath:Landroid/graphics/Path;

    add-float v7, p2, v2

    add-float v8, p3, v0

    add-float v9, p2, v3

    add-float v10, p3, v5

    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    add-int/lit8 v1, v1, 0x1

    move v0, v5

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public collapsedTextHeight(I)I
    .locals 4

    .line 824
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->reply:Lorg/telegram/ui/Stories/StoryCaptionView$Reply;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->height()I

    move-result v0

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 825
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->fullLayout:Landroid/text/StaticLayout;

    if-nez v1, :cond_1

    .line 826
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget v0, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->verticalPadding:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->textHeight:I

    :goto_1
    add-int/2addr v0, v1

    :goto_2
    sub-int/2addr p1, v0

    return p1

    .line 829
    :cond_1
    invoke-virtual {v1}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    .line 830
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-boolean v3, v2, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->shouldCollapse:Z

    if-nez v3, :cond_2

    .line 831
    iget v0, v2, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->verticalPadding:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->textHeight:I

    goto :goto_1

    :cond_2
    const/4 v2, 0x3

    .line 833
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 834
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->textPaint:Landroid/text/TextPaint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v2, v1

    sub-int/2addr p1, v2

    goto :goto_2
.end method

.method public detach()V
    .locals 3

    .line 1201
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->fullLayoutEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    .line 1202
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->firstLayoutEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    .line 1203
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->nextLinesLayouts:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1204
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->nextLinesLayouts:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 1205
    aget-object v1, v1, v0

    if-nez v1, :cond_0

    goto :goto_1

    .line 1208
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->layoutEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {v2, v1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;F)V
    .locals 11

    .line 972
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->translateT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->translating:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v2, p2, v1

    if-gtz v2, :cond_0

    goto :goto_1

    :cond_0
    const v2, 0x3f333333    # 0.7f

    mul-float/2addr v2, p2

    .line 977
    invoke-static {p2, v2, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    if-ltz v2, :cond_1

    .line 979
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->drawInternal(Landroid/graphics/Canvas;F)V

    move-object v4, p1

    goto :goto_0

    .line 981
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->this$0:Lorg/telegram/ui/Stories/StoryCaptionView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v7, v2

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->this$0:Lorg/telegram/ui/Stories/StoryCaptionView;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v8, v2

    mul-float v2, p2, v3

    float-to-int v9, v2

    const/16 v10, 0x1f

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 982
    invoke-direct {p0, v4, v0}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->drawInternal(Landroid/graphics/Canvas;F)V

    .line 983
    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    :goto_0
    cmpl-float p1, v0, v1

    if-gtz p1, :cond_3

    .line 986
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->translating:Z

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    return-void

    .line 987
    :cond_3
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    mul-float/2addr v0, v3

    mul-float/2addr v0, p2

    float-to-int p2, v0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/LoadingDrawable;->setAlpha(I)V

    .line 988
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {p1, v4}, Lorg/telegram/ui/Components/LoadingDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 989
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public measure(I)V
    .locals 10

    .line 880
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->text:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 881
    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->fullLayout:Landroid/text/StaticLayout;

    .line 882
    iput v2, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->textHeight:I

    .line 883
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->reply:Lorg/telegram/ui/Stories/StoryCaptionView$Reply;

    if-eqz p1, :cond_0

    .line 884
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->height()I

    move-result p1

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->textHeight:I

    .line 886
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-object v0, p1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->state:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;

    aget-object v0, v0, v2

    if-ne p0, v0, :cond_1

    .line 887
    iput-object v1, p1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMore:Landroid/text/StaticLayout;

    .line 889
    :cond_1
    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->firstLayout:Landroid/text/StaticLayout;

    .line 890
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->spoilersPool:Ljava/util/Stack;

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->spoilers:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 891
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->spoilers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void

    .line 894
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->textPaint:Landroid/text/TextPaint;

    iget-object v4, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->text:Ljava/lang/CharSequence;

    invoke-static {v0, v3, v4, p1}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->-$$Nest$mmakeTextLayout(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;Landroid/text/TextPaint;Ljava/lang/CharSequence;I)Landroid/text/StaticLayout;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->fullLayout:Landroid/text/StaticLayout;

    .line 895
    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->textHeight:I

    .line 897
    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->reply:Lorg/telegram/ui/Stories/StoryCaptionView$Reply;

    if-eqz v3, :cond_3

    .line 898
    invoke-virtual {v3}, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->height()I

    move-result v3

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    iput v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->textHeight:I

    goto :goto_0

    :cond_3
    move v3, v2

    .line 900
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->textPaint:Landroid/text/TextPaint;

    const-string v4, " "

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 901
    iget-object v4, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-object v5, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->fullLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v5

    const/4 v6, 0x3

    if-le v5, v6, :cond_4

    const/4 v5, 0x1

    goto :goto_1

    :cond_4
    move v5, v2

    :goto_1
    iput-boolean v5, v4, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->shouldCollapse:Z

    .line 902
    iget-object v4, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-boolean v4, v4, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->shouldCollapse:Z

    const/4 v5, 0x2

    if-eqz v4, :cond_5

    iget-object v4, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->fullLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v4

    const/4 v7, 0x4

    if-ne v4, v7, :cond_5

    .line 903
    iget-object v4, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->fullLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, v5}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v4

    .line 904
    iget-object v7, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->fullLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7, v5}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v7

    .line 905
    iget-object v8, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->text:Ljava/lang/CharSequence;

    invoke-interface {v8, v4, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v4

    if-nez v4, :cond_5

    .line 906
    iget-object v4, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iput-boolean v2, v4, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->shouldCollapse:Z

    .line 909
    :cond_5
    iget-object v4, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-boolean v7, v4, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->shouldCollapse:Z

    if-eqz v7, :cond_b

    .line 910
    iget-object v4, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->fullLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, v5}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v4

    iget-object v7, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->fullLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7}, Landroid/text/StaticLayout;->getTopPadding()I

    move-result v7

    add-int/2addr v4, v7

    int-to-float v4, v4

    .line 911
    iget-object v7, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-object v7, v7, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->state:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;

    aget-object v7, v7, v2

    if-ne p0, v7, :cond_6

    .line 912
    sget v7, Lorg/telegram/messenger/R$string;->ShowMore:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 913
    iget-object v8, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-object v9, v8, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMorePaint:Landroid/text/TextPaint;

    invoke-static {v8, v9, v7, p1}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->-$$Nest$mmakeTextLayout(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;Landroid/text/TextPaint;Ljava/lang/CharSequence;I)Landroid/text/StaticLayout;

    move-result-object v9

    iput-object v9, v8, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMore:Landroid/text/StaticLayout;

    .line 915
    iget-object v8, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget v9, v8, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->verticalPadding:I

    add-int/2addr v9, v3

    int-to-float v3, v9

    add-float/2addr v3, v4

    const v9, 0x3e99999a    # 0.3f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v9

    sub-float/2addr v3, v9

    iput v3, v8, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMoreY:F

    .line 916
    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget v8, v3, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->horizontalPadding:I

    add-int/2addr v8, p1

    int-to-float v8, v8

    iget-object v9, v3, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMorePaint:Landroid/text/TextPaint;

    invoke-virtual {v9, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    sub-float/2addr v8, v7

    iput v8, v3, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMoreX:F

    .line 919
    :cond_6
    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-object v7, v3, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->textPaint:Landroid/text/TextPaint;

    iget-object v8, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->text:Ljava/lang/CharSequence;

    iget-object v9, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->fullLayout:Landroid/text/StaticLayout;

    invoke-virtual {v9, v5}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v9

    invoke-interface {v8, v2, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v3, v7, v8, p1}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->-$$Nest$mmakeTextLayout(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;Landroid/text/TextPaint;Ljava/lang/CharSequence;I)Landroid/text/StaticLayout;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->firstLayout:Landroid/text/StaticLayout;

    .line 920
    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->spoilersPool:Ljava/util/Stack;

    iget-object v7, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->spoilers:Ljava/util/List;

    invoke-virtual {v3, v7}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 921
    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->spoilers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 922
    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->this$0:Lorg/telegram/ui/Stories/StoryCaptionView;

    iget-object v7, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->fullLayout:Landroid/text/StaticLayout;

    iget-object v8, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->spoilersPool:Ljava/util/Stack;

    iget-object v9, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->spoilers:Ljava/util/List;

    invoke-static {v3, v7, v8, v9}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->addSpoilers(Landroid/view/View;Landroid/text/Layout;Ljava/util/Stack;Ljava/util/List;)V

    .line 924
    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->fullLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v5}, Landroid/text/Layout;->getLineRight(I)F

    move-result v3

    add-float/2addr v3, v0

    .line 925
    iget-object v5, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->nextLinesLayouts:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;

    if-eqz v5, :cond_8

    move v5, v2

    .line 926
    :goto_2
    iget-object v7, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->nextLinesLayouts:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;

    array-length v8, v7

    if-ge v5, v8, :cond_8

    .line 927
    aget-object v7, v7, v5

    if-nez v7, :cond_7

    goto :goto_3

    .line 930
    :cond_7
    iget-object v8, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-object v8, v8, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->this$0:Lorg/telegram/ui/Stories/StoryCaptionView;

    iget-object v7, v7, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->layoutEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {v8, v7}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 933
    :cond_8
    iget-object v5, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->fullLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v5

    sub-int/2addr v5, v6

    new-array v5, v5, [Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;

    iput-object v5, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->nextLinesLayouts:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;

    .line 935
    iget-object v5, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->spoilers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 936
    :goto_4
    iget-object v5, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->fullLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v5

    if-ge v6, v5, :cond_d

    .line 937
    iget-object v5, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->fullLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5, v6}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v5

    iget-object v7, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->fullLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7, v6}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v7

    .line 938
    iget-object v8, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->text:Ljava/lang/CharSequence;

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-interface {v8, v9, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 939
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 940
    iget-object v5, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->nextLinesLayouts:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;

    add-int/lit8 v7, v6, -0x3

    aput-object v1, v5, v7

    goto :goto_5

    .line 943
    :cond_9
    iget-object v7, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-object v8, v7, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->textPaint:Landroid/text/TextPaint;

    invoke-static {v7, v8, v5, p1}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->-$$Nest$mmakeTextLayout(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;Landroid/text/TextPaint;Ljava/lang/CharSequence;I)Landroid/text/StaticLayout;

    move-result-object v5

    .line 944
    new-instance v7, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;

    iget-object v8, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-direct {v7, v8}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;-><init>(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;)V

    .line 945
    iget-object v8, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->nextLinesLayouts:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;

    add-int/lit8 v9, v6, -0x3

    aput-object v7, v8, v9

    .line 946
    iput-object v5, v7, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->staticLayout:Landroid/text/StaticLayout;

    .line 947
    iget-object v8, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->fullLayout:Landroid/text/StaticLayout;

    invoke-virtual {v8, v6}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v8

    iput v8, v7, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->finalX:F

    .line 948
    iget-object v8, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->fullLayout:Landroid/text/StaticLayout;

    invoke-virtual {v8, v6}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v8

    iget-object v9, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->fullLayout:Landroid/text/StaticLayout;

    invoke-virtual {v9}, Landroid/text/StaticLayout;->getTopPadding()I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    iput v8, v7, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->finalY:F

    .line 949
    iget-object v8, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget v8, v8, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMoreX:F

    const/high16 v9, 0x41800000    # 16.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    cmpg-float v8, v3, v8

    if-gez v8, :cond_a

    .line 950
    iput v4, v7, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->collapsedY:F

    .line 951
    iput v3, v7, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->collapsedX:F

    .line 952
    invoke-virtual {v5, v2}, Landroid/text/Layout;->getLineRight(I)F

    move-result v7

    invoke-virtual {v5, v2}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v5

    sub-float/2addr v7, v5

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v5

    add-float/2addr v5, v0

    add-float/2addr v3, v5

    goto :goto_5

    .line 954
    :cond_a
    iget v5, v7, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->finalY:F

    iput v5, v7, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->collapsedY:F

    .line 955
    iget v5, v7, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->finalX:F

    iput v5, v7, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->collapsedX:F

    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4

    .line 960
    :cond_b
    iget-object p1, v4, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->state:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;

    aget-object p1, p1, v2

    if-ne p0, p1, :cond_c

    .line 961
    iput-object v1, v4, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMore:Landroid/text/StaticLayout;

    .line 963
    :cond_c
    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->firstLayout:Landroid/text/StaticLayout;

    .line 964
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->spoilersPool:Ljava/util/Stack;

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->spoilers:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 965
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->spoilers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 966
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->fullLayout:Landroid/text/StaticLayout;

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->spoilersPool:Ljava/util/Stack;

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->spoilers:Ljava/util/List;

    invoke-static {p1, v0, v1, v2}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->addSpoilers(Landroid/view/View;Landroid/text/Layout;Ljava/util/Stack;Ljava/util/List;)V

    .line 968
    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->clickDetector:Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->horizontalPadding:I

    iget v0, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->verticalPadding:I

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;->setAdditionalOffsets(II)V

    return-void
.end method

.method public setup(Ljava/lang/CharSequence;Lorg/telegram/ui/Stories/StoryCaptionView$Reply;)V
    .locals 1

    .line 865
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->text:Ljava/lang/CharSequence;

    .line 866
    iput-object p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->reply:Lorg/telegram/ui/Stories/StoryCaptionView$Reply;

    if-eqz p2, :cond_0

    .line 868
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    new-instance v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;)V

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->listen(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 875
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    const/4 p2, 0x0

    iput p2, p1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->sizeCached:I

    .line 876
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public touch(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 1120
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMore:Landroid/text/StaticLayout;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 1121
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v5, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMoreX:F

    iget v0, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMoreY:F

    invoke-virtual {v1}, Landroid/text/Layout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v5

    iget-object v6, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget v7, v6, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMoreY:F

    iget-object v6, v6, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMore:Landroid/text/StaticLayout;

    invoke-virtual {v6}, Landroid/text/Layout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v7, v6

    invoke-virtual {v4, v5, v0, v1, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1122
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {v4, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1127
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->pressedEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-eqz v0, :cond_f

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_f

    .line 1128
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->reply:Lorg/telegram/ui/Stories/StoryCaptionView$Reply;

    if-nez v0, :cond_4

    move v0, v2

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->height()I

    move-result v0

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v0, v4

    .line 1129
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget v5, v5, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->horizontalPadding:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    .line 1130
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget v6, v6, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->verticalPadding:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    int-to-float v0, v0

    sub-float/2addr v5, v0

    float-to-int v0, v5

    .line 1131
    iget-object v5, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->fullLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5, v0}, Landroid/text/StaticLayout;->getLineForVertical(I)I

    move-result v5

    .line 1132
    iget-object v6, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->fullLayout:Landroid/text/StaticLayout;

    int-to-float v4, v4

    invoke-virtual {v6, v5, v4}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v6

    .line 1133
    iget-object v7, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->fullLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7, v5}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v7

    cmpg-float v8, v7, v4

    if-gtz v8, :cond_b

    .line 1137
    iget-object v8, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->fullLayout:Landroid/text/StaticLayout;

    invoke-virtual {v8, v5}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v5

    add-float/2addr v7, v5

    cmpl-float v4, v7, v4

    if-ltz v4, :cond_b

    if-ltz v0, :cond_b

    iget-object v4, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->fullLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/Layout;->getHeight()I

    move-result v4

    if-gt v0, v4, :cond_b

    .line 1138
    new-instance v0, Landroid/text/SpannableString;

    iget-object v4, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->text:Ljava/lang/CharSequence;

    invoke-direct {v0, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1139
    const-class v4, Landroid/text/style/ClickableSpan;

    invoke-interface {v0, v6, v6, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/CharacterStyle;

    if-eqz v4, :cond_5

    .line 1140
    array-length v5, v4

    if-nez v5, :cond_6

    .line 1141
    :cond_5
    const-class v4, Lorg/telegram/ui/Components/URLSpanMono;

    invoke-interface {v0, v6, v6, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/CharacterStyle;

    :cond_6
    if-eqz v4, :cond_8

    .line 1143
    array-length v5, v4

    if-eqz v5, :cond_8

    .line 1144
    aget-object v5, v4, v2

    .line 1145
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_7

    .line 1147
    iget-object v7, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->clear()V

    .line 1148
    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->pressedEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    .line 1149
    new-instance v7, Lorg/telegram/ui/Components/LinkSpanDrawable;

    aget-object v4, v4, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-direct {v7, v4, v1, v8, v9}, Lorg/telegram/ui/Components/LinkSpanDrawable;-><init>(Landroid/text/style/CharacterStyle;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;FF)V

    iput-object v7, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    const/4 v4, -0x1

    const v8, 0x3e4ccccd    # 0.2f

    .line 1150
    invoke-static {v4, v8}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v4

    invoke-virtual {v7, v4}, Lorg/telegram/ui/Components/LinkSpanDrawable;->setColor(I)V

    .line 1151
    iget-object v4, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    iget-object v7, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {v4, v7}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->addLink(Lorg/telegram/ui/Components/LinkSpanDrawable;)V

    .line 1152
    iget-object v4, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 1153
    iget-object v7, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object v7

    invoke-interface {v0, v7}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    .line 1154
    iget-object v8, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/LinkSpanDrawable;->obtainNewPath()Lorg/telegram/ui/Components/LinkPath;

    move-result-object v8

    .line 1155
    iget-object v9, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->fullLayout:Landroid/text/StaticLayout;

    iget-object v10, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-virtual {v10}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v8, v9, v4, v10}, Lorg/telegram/ui/Components/LinkPath;->setCurrentLayout(Landroid/text/Layout;IF)V

    .line 1156
    iget-object v9, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->fullLayout:Landroid/text/StaticLayout;

    invoke-virtual {v9, v4, v7, v8}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 1158
    iget-object v4, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    .line 1159
    iget-object v7, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-object v7, v7, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->this$0:Lorg/telegram/ui/Stories/StoryCaptionView;

    iget-object v7, v7, Lorg/telegram/ui/Stories/StoryCaptionView;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    invoke-virtual {v7}, Lorg/telegram/ui/Cells/TextSelectionHelper;->clear()V

    .line 1160
    iget-object v7, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    new-instance v8, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState$$ExternalSyntheticLambda1;

    invoke-direct {v8, p0, v4}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;Lorg/telegram/ui/Components/LinkSpanDrawable;)V

    .line 1166
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v4

    int-to-long v9, v4

    .line 1160
    invoke-virtual {v7, v8, v9, v10}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    move v4, v3

    goto :goto_3

    :cond_7
    :goto_2
    move v4, v2

    goto :goto_3

    :cond_8
    move-object v5, v1

    goto :goto_2

    .line 1169
    :goto_3
    iget-object v7, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    if-nez v7, :cond_a

    if-nez v4, :cond_a

    .line 1170
    const-class v7, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-interface {v0, v6, v6, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-eqz v0, :cond_a

    .line 1171
    array-length v6, v0

    if-eqz v6, :cond_a

    .line 1172
    aget-object v6, v0, v2

    .line 1173
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_9

    .line 1175
    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    .line 1176
    aget-object v0, v0, v2

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->pressedEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    move v2, v3

    goto :goto_5

    :cond_9
    :goto_4
    move v2, v4

    goto :goto_5

    :cond_a
    move-object v6, v1

    goto :goto_4

    :cond_b
    move-object v5, v1

    move-object v6, v5

    .line 1181
    :goto_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v3, :cond_e

    .line 1182
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->clear()V

    .line 1183
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object p1

    if-ne p1, v5, :cond_c

    .line 1184
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->this$0:Lorg/telegram/ui/Stories/StoryCaptionView;

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->this$0:Lorg/telegram/ui/Stories/StoryCaptionView;

    invoke-virtual {p1, v0, v2}, Lorg/telegram/ui/Stories/StoryCaptionView;->onLinkClick(Landroid/text/style/CharacterStyle;Landroid/view/View;)V

    goto :goto_6

    .line 1185
    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->pressedEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-eqz p1, :cond_d

    if-ne p1, v6, :cond_d

    .line 1186
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->this$0:Lorg/telegram/ui/Stories/StoryCaptionView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/StoryCaptionView;->onEmojiClick(Lorg/telegram/ui/Components/AnimatedEmojiSpan;)V

    .line 1188
    :cond_d
    :goto_6
    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    .line 1189
    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->pressedEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    return v3

    :cond_e
    return v2

    .line 1192
    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_10

    .line 1193
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->-$$Nest$mclearPressedLinks(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;)V

    .line 1194
    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->pressedEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    return v3

    :cond_10
    return v2
.end method
