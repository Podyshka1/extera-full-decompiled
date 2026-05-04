.class Lorg/telegram/ui/MessageSendPreview$3;
.super Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/MessageSendPreview;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private backgroundPaint:Landroid/graphics/Paint;

.field chatListViewTy:I

.field private clip:Lorg/telegram/ui/GradientClip;

.field final destCellPos:[I

.field private destCellY:Lorg/telegram/ui/Components/AnimatedFloat;

.field final pos:[I

.field final pos2:[I

.field final synthetic this$0:Lorg/telegram/ui/MessageSendPreview;

.field final synthetic val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# direct methods
.method public static synthetic $r8$lambda$desRCj69fA14s0_rkP3OkQ-C62I(Lorg/telegram/ui/MessageSendPreview$3;Landroid/graphics/Canvas;F)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/MessageSendPreview$3;->lambda$dispatchDraw$0(Landroid/graphics/Canvas;F)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lorg/telegram/ui/MessageSendPreview;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 6

    .line 203
    iput-object p1, p0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    iput-object p3, p0, Lorg/telegram/ui/MessageSendPreview$3;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x2

    .line 204
    new-array p2, p1, [I

    iput-object p2, p0, Lorg/telegram/ui/MessageSendPreview$3;->pos:[I

    .line 205
    new-array p2, p1, [I

    iput-object p2, p0, Lorg/telegram/ui/MessageSendPreview$3;->pos2:[I

    const/4 p2, 0x0

    .line 206
    iput p2, p0, Lorg/telegram/ui/MessageSendPreview$3;->chatListViewTy:I

    .line 208
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/telegram/ui/MessageSendPreview$3;->destCellPos:[I

    .line 209
    new-instance p1, Lorg/telegram/ui/GradientClip;

    invoke-direct {p1}, Lorg/telegram/ui/GradientClip;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/MessageSendPreview$3;->clip:Lorg/telegram/ui/GradientClip;

    .line 210
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v3, 0x64

    sget-object v5, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v1, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/MessageSendPreview$3;->destCellY:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 211
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/MessageSendPreview$3;->backgroundPaint:Landroid/graphics/Paint;

    return-void
.end method

.method private synthetic lambda$dispatchDraw$0(Landroid/graphics/Canvas;F)Ljava/lang/Boolean;
    .locals 3

    .line 280
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 281
    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v0}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteditText(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v1}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteditText(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v2}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteditText(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 282
    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v0}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteditText(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    div-float/2addr p2, v0

    .line 283
    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v0}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteditText(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v1}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteditText(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, p2, p2, v0, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 284
    iget-object p2, p0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {p2}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteditText(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 285
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 286
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 27

    move-object/from16 v0, p0

    .line 214
    iget-object v1, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v1}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetopenInProgress(Lorg/telegram/ui/MessageSendPreview;)Z

    move-result v1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v1, :cond_16

    iget-object v1, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v1}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetmainMessageCell(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v1

    if-eqz v1, :cond_16

    iget-object v1, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v1}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetmainMessageCell(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v1

    if-nez v1, :cond_16

    .line 215
    iget-object v1, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v1}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetfirstOpenFrame(Lorg/telegram/ui/MessageSendPreview;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 216
    iget-object v1, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v1}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteditText(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 217
    iget-object v1, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v1}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteditText(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/view/View;->setAlpha(F)V

    .line 219
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v1, v9}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fputfirstOpenFrame(Lorg/telegram/ui/MessageSendPreview;Z)V

    .line 222
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v1}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetmainMessageCell(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v1}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetmainMessageCell(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    iget v1, v1, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v2, 0xf

    if-ne v1, v2, :cond_2

    move v1, v11

    goto :goto_0

    :cond_2
    move v1, v9

    .line 223
    :goto_0
    iget-object v2, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v2}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetmainMessageCell(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v2

    if-eqz v1, :cond_3

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v2

    :goto_1
    move v12, v2

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTextX()I

    move-result v2

    int-to-float v2, v2

    goto :goto_1

    :goto_2
    if-eqz v1, :cond_4

    .line 224
    iget-object v1, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v1}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetmainMessageCell(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v1

    :goto_3
    move v13, v1

    goto :goto_4

    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v1}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetmainMessageCell(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTextY()I

    move-result v1

    int-to-float v1, v1

    goto :goto_3

    .line 225
    :goto_4
    iget-object v1, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v1}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetchatListView(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v2}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetmainMessageCell(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    add-float/2addr v1, v2

    add-float/2addr v1, v12

    .line 226
    iget-object v2, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v2}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetchatListView(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v3}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetmainMessageCell(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    add-float/2addr v2, v3

    add-float/2addr v2, v13

    .line 227
    iget-object v3, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v3}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetmainMessageCell(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v3}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetmainMessageCell(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v3

    goto :goto_5

    :cond_5
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    :goto_5
    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    move-result v14

    .line 231
    iget-object v3, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v3}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteditText(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 232
    iget-object v3, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v3}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteditText(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/MessageSendPreview$3;->pos:[I

    invoke-virtual {v3, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 233
    iget-object v3, v0, Lorg/telegram/ui/MessageSendPreview$3;->pos:[I

    aget v3, v3, v9

    iget-object v4, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v4}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteditText(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    .line 234
    iget-object v4, v0, Lorg/telegram/ui/MessageSendPreview$3;->pos:[I

    aget v4, v4, v11

    iget-object v5, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v5}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteditText(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v5}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteditText(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getScrollY()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 235
    iget-object v5, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v5}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteditText(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getTextSize()F

    move-result v5

    .line 237
    iget-object v6, v0, Lorg/telegram/ui/MessageSendPreview$3;->pos:[I

    aget v6, v6, v11

    int-to-float v7, v6

    .line 238
    iget-object v15, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v15}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteditText(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v6, v15

    int-to-float v6, v6

    .line 239
    iget-object v15, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v15}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetopenProgress(Lorg/telegram/ui/MessageSendPreview;)F

    move-result v15

    invoke-static {v3, v1, v15}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    .line 240
    iget-object v3, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v3}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetopenProgress(Lorg/telegram/ui/MessageSendPreview;)F

    move-result v3

    invoke-static {v4, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    .line 241
    iget-object v3, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v3}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetopenProgress(Lorg/telegram/ui/MessageSendPreview;)F

    move-result v3

    invoke-static {v5, v14, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    :goto_6
    move v15, v1

    goto :goto_7

    .line 244
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v6, v3

    move v7, v10

    move v3, v14

    goto :goto_6

    .line 249
    :goto_7
    iget-object v1, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v1}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetopenProgress(Lorg/telegram/ui/MessageSendPreview;)F

    move-result v16

    .line 251
    iget-object v1, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v1}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetdestCell(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v1}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetdestClipTop(Lorg/telegram/ui/MessageSendPreview;)F

    move-result v7

    :cond_7
    iget-object v1, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v1}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetchatListView(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    iget-object v4, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v4}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetchatListView(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v5}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetchatListView(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getScaleY()F

    move-result v5

    const/high16 v17, 0x437f0000    # 255.0f

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v5, v8, v5

    mul-float/2addr v4, v5

    add-float/2addr v1, v4

    iget-object v4, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v4}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetopenProgress(Lorg/telegram/ui/MessageSendPreview;)F

    move-result v4

    invoke-static {v7, v1, v4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    .line 252
    iget-object v4, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v4}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetchatListView(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->canScrollVertically(I)Z

    move-result v4

    if-eqz v4, :cond_8

    move v4, v8

    goto :goto_8

    :cond_8
    move v4, v10

    :goto_8
    iget-object v5, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v5}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetopenProgress(Lorg/telegram/ui/MessageSendPreview;)F

    move-result v5

    invoke-static {v10, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    .line 253
    iget-object v5, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v5}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetdestCell(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v5

    if-eqz v5, :cond_9

    iget-object v5, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v5}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetdestClipBottom(Lorg/telegram/ui/MessageSendPreview;)F

    move-result v6

    :cond_9
    iget-object v5, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v5}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetchatListView(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v5

    iget-object v7, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v7}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetchatListView(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v5, v7

    iget-object v7, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v7}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetopenProgress(Lorg/telegram/ui/MessageSendPreview;)F

    move-result v7

    invoke-static {v6, v5, v7}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v5

    .line 254
    iget-object v6, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v6}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetchatListView(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v6

    invoke-virtual {v6, v11}, Lorg/telegram/ui/Components/RecyclerListView;->canScrollVertically(I)Z

    move-result v6

    if-eqz v6, :cond_a

    move v6, v8

    goto :goto_9

    :cond_a
    move v6, v10

    :goto_9
    iget-object v7, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v7}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetopenProgress(Lorg/telegram/ui/MessageSendPreview;)F

    move-result v7

    invoke-static {v10, v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v6

    move v7, v3

    add-float v3, v1, v8

    move/from16 v18, v9

    .line 256
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    move/from16 v19, v5

    sub-float v5, v19, v8

    move/from16 v20, v6

    const/16 v6, 0xff

    move/from16 v21, v7

    const/16 v7, 0x1f

    move/from16 v22, v2

    const/4 v2, 0x0

    move/from16 v23, v1

    move/from16 v24, v4

    move v4, v9

    move/from16 v25, v19

    move/from16 v26, v20

    move/from16 v11, v21

    move/from16 v9, v22

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 258
    iget-object v1, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v1}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteditText(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 259
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v5, v1

    sub-float v1, v8, v16

    mul-float v1, v1, v17

    float-to-int v6, v1

    const/16 v7, 0x1f

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 260
    invoke-virtual {v1, v15, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 261
    iget-object v2, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v2}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteditText(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    neg-float v2, v2

    iget-object v3, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v3}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteditText(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v3}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteditText(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    neg-float v3, v3

    iget-object v4, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v4}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteditText(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v4}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteditText(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 262
    iget-object v2, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v2}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteditText(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    .line 263
    iget-object v3, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v3}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteditText(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setAlpha(F)V

    .line 264
    iget-object v3, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v3}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetopenProgress(Lorg/telegram/ui/MessageSendPreview;)F

    move-result v3

    const v4, 0x3a83126f    # 0.001f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_c

    .line 265
    iget-object v3, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v3}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetdrawEditTextBackground(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/messenger/Utilities$Callback;

    move-result-object v3

    const v4, 0x3dcccccd    # 0.1f

    if-eqz v3, :cond_b

    .line 266
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 267
    iget-object v3, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v3}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteditText(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    invoke-virtual {v1, v10, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 268
    iget-object v3, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v3}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteditText(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    iget-object v5, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v5}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteditText(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v3, v5

    iget-object v5, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v5}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteditText(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v6}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteditText(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget-object v6, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v6}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteditText(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget-object v6, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v6}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteditText(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v6}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteditText(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v7}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetopenProgress(Lorg/telegram/ui/MessageSendPreview;)F

    move-result v7

    div-float/2addr v7, v4

    sub-float v4, v8, v7

    mul-float v4, v4, v17

    float-to-int v4, v4

    const/16 v7, 0x1f

    move/from16 v20, v2

    move v2, v3

    const/4 v3, 0x0

    move v10, v6

    move v6, v4

    move v4, v5

    move v5, v10

    move/from16 v10, v20

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 269
    iget-object v2, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v2}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetdrawEditTextBackground(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/messenger/Utilities$Callback;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    .line 270
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 271
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_a

    :cond_b
    move v10, v2

    .line 273
    iget-object v2, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v2}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteditTextBackgroundPaint(Lorg/telegram/ui/MessageSendPreview;)Landroid/graphics/Paint;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelBackground:I

    iget-object v5, v0, Lorg/telegram/ui/MessageSendPreview$3;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 274
    iget-object v2, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v2}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteditTextBackgroundPaint(Lorg/telegram/ui/MessageSendPreview;)Landroid/graphics/Paint;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v3}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteditTextBackgroundPaint(Lorg/telegram/ui/MessageSendPreview;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    int-to-float v3, v3

    iget-object v5, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v5}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetopenProgress(Lorg/telegram/ui/MessageSendPreview;)F

    move-result v5

    div-float/2addr v5, v4

    sub-float v4, v8, v5

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 275
    iget-object v2, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v2}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteditText(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v3}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteditText(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v4}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteditText(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v5}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteditText(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget-object v5, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v5}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteditText(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget-object v5, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v5}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteditText(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v5}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteditText(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v6}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteditText(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget-object v6, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v6}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteditTextBackgroundPaint(Lorg/telegram/ui/MessageSendPreview;)Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_a

    :cond_c
    move v10, v2

    .line 278
    :goto_a
    iget-object v2, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v2}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetdrawEditText(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/messenger/Utilities$Callback2;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 279
    iget-object v2, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v2}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetdrawEditText(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/messenger/Utilities$Callback2;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/MessageSendPreview$3$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v1, v11}, Lorg/telegram/ui/MessageSendPreview$3$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/MessageSendPreview$3;Landroid/graphics/Canvas;F)V

    invoke-interface {v2, v1, v3}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 289
    :cond_d
    iget-object v2, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v2}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteditText(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/view/View;->setAlpha(F)V

    .line 290
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_b

    :cond_e
    move-object/from16 v1, p1

    .line 293
    :goto_b
    iget-object v2, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v2}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetmainMessageCell(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->ignoreAlpha:Z

    .line 294
    iget-object v2, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v2}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetdestCell(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v2

    if-nez v2, :cond_10

    .line 295
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v4, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v5, v2

    mul-float v2, v16, v17

    float-to-int v6, v2

    const/16 v7, 0x1f

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 296
    invoke-virtual {v1, v15, v9}, Landroid/graphics/Canvas;->translate(FF)V

    neg-float v2, v12

    neg-float v3, v13

    .line 297
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 298
    iget-object v2, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v2}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetchatListView(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v3}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetopenProgress(Lorg/telegram/ui/MessageSendPreview;)F

    move-result v3

    invoke-static {v8, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    .line 299
    iget-object v3, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v3}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetmainMessageCell(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    neg-float v3, v3

    iget-object v4, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v4}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetchatListView(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v4}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetmainMessageCell(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    neg-float v4, v4

    iget-object v5, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v5}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetchatListView(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v1, v2, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    div-float v3, v11, v14

    .line 301
    invoke-virtual {v1, v3, v3, v12, v13}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 302
    iget-object v2, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v2}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetmainMessageCell(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawBackgroundInParent()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 303
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 304
    iget-object v2, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v2}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetmainMessageCell(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 305
    iget-object v2, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v2}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetmainMessageCell(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawBackgroundInternal(Landroid/graphics/Canvas;Z)V

    .line 306
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 308
    :cond_f
    iget-object v2, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v2}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetmainMessageCell(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Cells/BaseCell;->draw(Landroid/graphics/Canvas;)V

    .line 309
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_e

    .line 311
    :cond_10
    iget-object v2, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v2}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetdestCell(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/MessageSendPreview$3;->pos2:[I

    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 312
    iget-object v2, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v2}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetdestCell(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_11

    iget-object v2, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v2}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetdestCell(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    float-to-int v2, v2

    goto :goto_c

    :cond_11
    move/from16 v2, v18

    .line 313
    :goto_c
    iget v3, v0, Lorg/telegram/ui/MessageSendPreview$3;->chatListViewTy:I

    if-le v3, v2, :cond_12

    iget-object v4, v0, Lorg/telegram/ui/MessageSendPreview$3;->destCellPos:[I

    const/16 v19, 0x1

    aget v4, v4, v19

    iget-object v5, v0, Lorg/telegram/ui/MessageSendPreview$3;->pos2:[I

    aget v5, v5, v19

    sub-int/2addr v4, v5

    if-le v4, v3, :cond_13

    goto :goto_d

    :cond_12
    const/16 v19, 0x1

    .line 316
    :cond_13
    iget-object v3, v0, Lorg/telegram/ui/MessageSendPreview$3;->destCellPos:[I

    iget-object v4, v0, Lorg/telegram/ui/MessageSendPreview$3;->pos2:[I

    aget v5, v4, v18

    aput v5, v3, v18

    .line 317
    aget v4, v4, v19

    aput v4, v3, v19

    .line 319
    :goto_d
    iput v2, v0, Lorg/telegram/ui/MessageSendPreview$3;->chatListViewTy:I

    .line 320
    iget-object v2, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v2}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetchatListView(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v3}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetmainMessageCell(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, v0, Lorg/telegram/ui/MessageSendPreview$3;->destCellPos:[I

    aget v3, v3, v18

    int-to-float v3, v3

    iget-object v4, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v4}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetopenProgress(Lorg/telegram/ui/MessageSendPreview;)F

    move-result v4

    sub-float v4, v8, v4

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    .line 321
    iget-object v3, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v3}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetchatListView(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v4}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetmainMessageCell(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, v0, Lorg/telegram/ui/MessageSendPreview$3;->destCellPos:[I

    const/16 v19, 0x1

    aget v4, v4, v19

    int-to-float v4, v4

    iget-object v5, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v5}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetopenProgress(Lorg/telegram/ui/MessageSendPreview;)F

    move-result v5

    sub-float v5, v8, v5

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    .line 322
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 323
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 324
    iget-object v2, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v2}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetchatListView(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v3}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetopenProgress(Lorg/telegram/ui/MessageSendPreview;)F

    move-result v3

    invoke-static {v8, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    .line 325
    iget-object v3, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v3}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetmainMessageCell(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    neg-float v3, v3

    iget-object v4, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v4}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetchatListView(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v4}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetmainMessageCell(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    neg-float v4, v4

    iget-object v5, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v5}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetchatListView(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v1, v2, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 326
    iget-object v2, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v2}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetmainMessageCell(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v3}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetopenProgress(Lorg/telegram/ui/MessageSendPreview;)F

    move-result v3

    sub-float v3, v8, v3

    iput v3, v2, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateChangeProgress:F

    .line 327
    iget-object v2, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v2}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetmainMessageCell(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v3}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetcellDelta(Lorg/telegram/ui/MessageSendPreview;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget-object v4, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v4}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetopenProgress(Lorg/telegram/ui/MessageSendPreview;)F

    move-result v4

    mul-float/2addr v3, v4

    iput v3, v2, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->deltaLeft:F

    .line 328
    iget-object v2, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v2}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetmainMessageCell(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v3}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetcellDelta(Lorg/telegram/ui/MessageSendPreview;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget-object v4, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v4}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetopenProgress(Lorg/telegram/ui/MessageSendPreview;)F

    move-result v4

    mul-float/2addr v3, v4

    iput v3, v2, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->deltaTop:F

    .line 329
    iget-object v2, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v2}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetmainMessageCell(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v3}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetcellDelta(Lorg/telegram/ui/MessageSendPreview;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v4}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetopenProgress(Lorg/telegram/ui/MessageSendPreview;)F

    move-result v4

    mul-float/2addr v3, v4

    iput v3, v2, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->deltaRight:F

    .line 330
    iget-object v2, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v2}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetmainMessageCell(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v3}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetcellDelta(Lorg/telegram/ui/MessageSendPreview;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    iget-object v4, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v4}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetopenProgress(Lorg/telegram/ui/MessageSendPreview;)F

    move-result v4

    mul-float/2addr v3, v4

    iput v3, v2, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->deltaBottom:F

    .line 331
    iget-object v2, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v2}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetmainMessageCell(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v3}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetopenProgress(Lorg/telegram/ui/MessageSendPreview;)F

    move-result v3

    sub-float v3, v8, v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->setTimeAlpha(F)V

    .line 332
    iget-object v2, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v2}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetmainMessageCell(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawBackgroundInParent()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 333
    iget-object v2, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v2}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetdestCell(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v4, v2

    iget-object v2, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v2}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetdestCell(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v5, v2

    iget-object v2, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v2}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetopenProgress(Lorg/telegram/ui/MessageSendPreview;)F

    move-result v2

    mul-float v2, v2, v17

    float-to-int v6, v2

    const/16 v7, 0x1f

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 334
    iget-object v2, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v2}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetmainMessageCell(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 335
    iget-object v2, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v2}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetmainMessageCell(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawBackgroundInternal(Landroid/graphics/Canvas;Z)V

    .line 336
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 337
    iget-object v2, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v2}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetdestCell(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v4, v2

    iget-object v2, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v2}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetdestCell(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v5, v2

    iget-object v2, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v2}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetopenProgress(Lorg/telegram/ui/MessageSendPreview;)F

    move-result v2

    sub-float v2, v8, v2

    mul-float v2, v2, v17

    float-to-int v6, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 338
    iget-object v2, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v2}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetdestCell(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 339
    iget-object v2, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v2}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetdestCell(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawBackgroundInternal(Landroid/graphics/Canvas;Z)V

    .line 340
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 342
    :cond_14
    iget-object v2, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v2}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetmainMessageCell(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Cells/BaseCell;->draw(Landroid/graphics/Canvas;)V

    .line 343
    iget-object v2, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v2}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetmainMessageCell(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateBackgroundBoundsInner:Z

    if-eqz v2, :cond_15

    .line 344
    iget-object v2, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v2}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetmainMessageCell(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v2

    invoke-virtual {v2, v1, v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawNamesLayout(Landroid/graphics/Canvas;F)V

    .line 345
    iget-object v2, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v2}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetmainMessageCell(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v3}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetopenProgress(Lorg/telegram/ui/MessageSendPreview;)F

    move-result v3

    sub-float/2addr v8, v3

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v8, v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawTime(Landroid/graphics/Canvas;FZ)V

    .line 347
    :cond_15
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 350
    :goto_e
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 351
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    move/from16 v6, v23

    add-float/2addr v5, v6

    const/4 v7, 0x0

    invoke-virtual {v2, v7, v6, v3, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 352
    iget-object v3, v0, Lorg/telegram/ui/MessageSendPreview$3;->clip:Lorg/telegram/ui/GradientClip;

    move/from16 v5, v24

    const/4 v6, 0x1

    invoke-virtual {v3, v1, v2, v6, v5}, Lorg/telegram/ui/GradientClip;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;ZF)V

    .line 353
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    move/from16 v4, v25

    sub-float v5, v4, v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v7, v5, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 354
    iget-object v3, v0, Lorg/telegram/ui/MessageSendPreview$3;->clip:Lorg/telegram/ui/GradientClip;

    move/from16 v5, v18

    move/from16 v4, v26

    invoke-virtual {v3, v1, v2, v5, v4}, Lorg/telegram/ui/GradientClip;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;ZF)V

    .line 355
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 357
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_f

    :cond_16
    move-object/from16 v1, p1

    const/high16 v17, 0x437f0000    # 255.0f

    .line 359
    :goto_f
    iget-object v2, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v2}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetopenInProgress(Lorg/telegram/ui/MessageSendPreview;)Z

    move-result v2

    const/high16 v8, 0x40c00000    # 6.0f

    if-eqz v2, :cond_1b

    .line 360
    iget-object v2, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v2}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetfirstOpenFrame2(Lorg/telegram/ui/MessageSendPreview;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 361
    iget-object v2, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v2}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetanchorSendButton(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 362
    iget-object v2, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v2}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetanchorSendButton(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 364
    :cond_17
    iget-object v2, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    const/4 v5, 0x0

    invoke-static {v2, v5}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fputfirstOpenFrame2(Lorg/telegram/ui/MessageSendPreview;Z)V

    goto :goto_10

    :cond_18
    const/4 v5, 0x0

    .line 366
    :goto_10
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 367
    iget-object v2, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v2}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetsendButtonInitialPosition(Lorg/telegram/ui/MessageSendPreview;)[I

    move-result-object v2

    aget v2, v2, v5

    iget-object v3, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v3}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetsendButton(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    move-result-object v3

    .line 368
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v4}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetsendButton(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v5}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetsendButton(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->width(I)I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v3}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetsendButton(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v4}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetopenProgress(Lorg/telegram/ui/MessageSendPreview;)F

    move-result v4

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v3}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetsendButtonInitialPosition(Lorg/telegram/ui/MessageSendPreview;)[I

    move-result-object v3

    const/16 v19, 0x1

    aget v3, v3, v19

    int-to-float v3, v3

    iget-object v4, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v4}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetsendButton(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    move-result-object v4

    .line 369
    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v5}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetopenProgress(Lorg/telegram/ui/MessageSendPreview;)F

    move-result v5

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    .line 367
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 371
    iget-object v2, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v2}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetclosing(Lorg/telegram/ui/MessageSendPreview;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v2}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetsent(Lorg/telegram/ui/MessageSendPreview;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 372
    iget-object v2, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v2}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetsendButton(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v4, v2

    iget-object v2, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v2}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetsendButton(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v5, v2

    iget-object v2, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v2}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetopenProgress(Lorg/telegram/ui/MessageSendPreview;)F

    move-result v2

    mul-float v2, v2, v17

    float-to-int v6, v2

    const/16 v7, 0x1f

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 374
    :cond_19
    iget-object v2, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v2}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetsendButton(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 375
    iget-object v2, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v2}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetclosing(Lorg/telegram/ui/MessageSendPreview;)Z

    move-result v2

    if-eqz v2, :cond_1a

    iget-object v2, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v2}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetsent(Lorg/telegram/ui/MessageSendPreview;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 376
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 378
    :cond_1a
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 380
    :cond_1b
    invoke-super/range {p0 .. p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 381
    iget-object v2, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v2}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetcameraRect(Lorg/telegram/ui/MessageSendPreview;)Landroid/graphics/RectF;

    move-result-object v2

    if-eqz v2, :cond_1d

    .line 382
    iget-object v2, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v2}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteffectDrawable(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v2

    const/high16 v3, 0x41c00000    # 24.0f

    if-nez v2, :cond_1c

    .line 383
    iget-object v2, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    new-instance v4, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/16 v6, 0x17

    invoke-direct {v4, v0, v5, v6}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;-><init>(Landroid/view/View;II)V

    invoke-static {v2, v4}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fputeffectDrawable(Lorg/telegram/ui/MessageSendPreview;Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;)V

    .line 385
    :cond_1c
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    iget-object v4, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v4}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetcameraRect(Lorg/telegram/ui/MessageSendPreview;)Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->right:F

    const/high16 v5, 0x41400000    # 12.0f

    .line 386
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v4, v6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v4, v6

    float-to-int v4, v4

    iget-object v6, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v6}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetcameraRect(Lorg/telegram/ui/MessageSendPreview;)Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    .line 387
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v6, v3

    float-to-int v3, v6

    iget-object v6, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v6}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetcameraRect(Lorg/telegram/ui/MessageSendPreview;)Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->right:F

    .line 388
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    float-to-int v6, v6

    iget-object v7, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v7}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetcameraRect(Lorg/telegram/ui/MessageSendPreview;)Landroid/graphics/RectF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    .line 389
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v7, v9

    float-to-int v7, v7

    .line 385
    invoke-virtual {v2, v4, v3, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 391
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {v3, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 392
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 393
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 394
    iget-object v5, v0, Lorg/telegram/ui/MessageSendPreview$3;->backgroundPaint:Landroid/graphics/Paint;

    const/high16 v6, 0x1e000000

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 395
    iget-object v5, v0, Lorg/telegram/ui/MessageSendPreview$3;->backgroundPaint:Landroid/graphics/Paint;

    iget-object v6, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v6}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteffectDrawable(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->isNotEmpty()F

    move-result v6

    const/high16 v7, 0x41f00000    # 30.0f

    mul-float/2addr v6, v7

    iget-object v7, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v7}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetopenProgress(Lorg/telegram/ui/MessageSendPreview;)F

    move-result v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 396
    iget-object v5, v0, Lorg/telegram/ui/MessageSendPreview$3;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 397
    iget-object v3, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v3}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteffectDrawable(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 398
    iget-object v2, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v2}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteffectDrawable(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v3}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetopenProgress(Lorg/telegram/ui/MessageSendPreview;)F

    move-result v3

    mul-float v3, v3, v17

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setAlpha(I)V

    .line 399
    iget-object v2, v0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v2}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgeteffectDrawable(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1d
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    .line 405
    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v0}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetopenInProgress(Lorg/telegram/ui/MessageSendPreview;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v0}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetsendButton(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    move-result-object v0

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v0}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetmainMessageCell(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v0

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v0}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetmainMessageCell(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview$3;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v0}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetmainMessageCell(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 407
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method
